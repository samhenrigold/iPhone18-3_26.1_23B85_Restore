uint64_t MessageCenter.register(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenter.register(_:), v2);
}

uint64_t MessageCenter.register(_:)()
{
  OUTLINED_FUNCTION_43();
  v16 = v0;
  *(v0 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork23MessageCenterMessagable_pXpMd, &_s11SiriNetwork23MessageCenterMessagable_pXpMR);
  v1 = String.init<A>(describing:)();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_15_1(v5))
  {
    v6 = OUTLINED_FUNCTION_55();
    v7 = OUTLINED_FUNCTION_54();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v15);
    _os_log_impl(&dword_223515000, v4, v5, "Registering message of type: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  v11 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_registeredMessages;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v9 + v11);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v8, v1, v3, isUniquelyReferenced_nonNull_native);
  *(v9 + v11) = v15;

  swift_endAccess();
  OUTLINED_FUNCTION_6_3();

  return v13();
}

uint64_t MessageCenter.sendMessage(_:to:timeout:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[104] = v0;
  v1[103] = v2;
  v1[102] = v3;
  v1[101] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  OUTLINED_FUNCTION_11_1(v5);
  v1[105] = OUTLINED_FUNCTION_68();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  OUTLINED_FUNCTION_11_1(v6);
  v1[106] = OUTLINED_FUNCTION_68();
  v7 = type metadata accessor for MessageCenterEvent(0);
  v1[107] = v7;
  OUTLINED_FUNCTION_11_1(v7);
  v1[108] = OUTLINED_FUNCTION_68();
  v8 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_11_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 880) = v0;

  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0((v0 + 712));
  outlined destroy of MessageCenterDevice(v0 + 16);

  OUTLINED_FUNCTION_26_4();

  return v1();
}

{
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0((v0 + 712));
  outlined destroy of MessageCenterDevice(v0 + 16);

  OUTLINED_FUNCTION_6_3();

  return v1();
}

uint64_t MessageCenter.sendMessage(_:to:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_82_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_105_0();
  a22 = v24;
  outlined init with copy of UMUserPersonProtocol(*(v24 + 816), v24 + 592);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork27MessageCenterDeviceProtocol_pMd, &_s11SiriNetwork27MessageCenterDeviceProtocol_pMR);
  if (swift_dynamicCast())
  {
    memcpy((v24 + 16), (v24 + 160), 0x90uLL);
    outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v24 + 80, v24 + 752, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
    if (*(v24 + 776))
    {
      v27 = *(v24 + 808);
      outlined init with take of RPCOspreyConnectionProtocol((v24 + 752), v24 + 712);
      outlined init with copy of MessageCenterDevice(v24 + 16, v24 + 304);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = *(v24 + 808);
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_105();
        *v27 = 136315394;
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v30 + 16), *(v30 + 24), &a10);
        OUTLINED_FUNCTION_81_0(v31);
        outlined init with copy of MessageCenterDevice(v24 + 304, v24 + 448);
        OUTLINED_FUNCTION_65_2();

        OUTLINED_FUNCTION_29_4();
        MEMORY[0x223DE2180](*(v24 + 448), *(v24 + 456));
        OUTLINED_FUNCTION_41_4();
        v32 = *(v24 + 472);
        *(v24 + 792) = *(v24 + 464);
        *(v24 + 800) = v32;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v33 = String.init<A>(describing:)();
        MEMORY[0x223DE2180](v33);

        OUTLINED_FUNCTION_101_0();
        v34 = a11;
        outlined destroy of MessageCenterDevice(v24 + 304);
        v35 = outlined destroy of MessageCenterDevice(v24 + 448);
        OUTLINED_FUNCTION_67_0(v35, v36);
        OUTLINED_FUNCTION_68_2();
        *(v27 + 14) = v34;
        OUTLINED_FUNCTION_62_1(&dword_223515000, v37, v38, "Sending %s to %s");
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_7_13();
        OUTLINED_FUNCTION_42_0();
      }

      else
      {

        outlined destroy of MessageCenterDevice(v24 + 304);
      }

      v89 = swift_task_alloc();
      *(v24 + 872) = v89;
      *v89 = v24;
      v89[1] = MessageCenter.sendMessage(_:to:timeout:);
      OUTLINED_FUNCTION_90(*(v24 + 808));
      OUTLINED_FUNCTION_56_2();

      return MessageCenter.sendMessage(_:to:for:timeout:)();
    }

    outlined destroy of MessageCenterDevice(v24 + 16);
    v39 = &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd;
    v40 = &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR;
    v41 = v24 + 752;
  }

  else
  {
    bzero((v24 + 160), 0x90uLL);
    v39 = &_s11SiriNetwork19MessageCenterDeviceVSgMd;
    v40 = &_s11SiriNetwork19MessageCenterDeviceVSgMR;
    v41 = v24 + 160;
  }

  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v41, v39, v40);
  outlined init with copy of UMUserPersonProtocol(*(v24 + 816), v24 + 632);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_15_1(v43))
  {
    v44 = OUTLINED_FUNCTION_55();
    a11 = OUTLINED_FUNCTION_54();
    *v44 = 136315138;
    v45 = *(v24 + 656);
    v46 = __swift_project_boxed_opaque_existential_1((v24 + 632), v45);
    v47 = *(v45 - 8);
    OUTLINED_FUNCTION_68();
    (*(v47 + 16))();
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_11_2();

    __swift_destroy_boxed_opaque_existential_0((v24 + 632));
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &a11);

    *(v44 + 4) = v48;
    OUTLINED_FUNCTION_51_3();
    _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v24 + 632));
  }

  v54 = *(v24 + 864);
  v55 = *(v24 + 856);
  v56 = *(v24 + 832);
  v57 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
  OUTLINED_FUNCTION_38_2();
  v58 = swift_allocError();
  OUTLINED_FUNCTION_18_0(v59, 20);
  OUTLINED_FUNCTION_0_32();
  v62 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v60, v61);
  v91 = v57;
  OUTLINED_FUNCTION_38_2();
  v63 = swift_allocError();
  OUTLINED_FUNCTION_50_3(v63, v64);
  v65 = v58;

  Date.init()();
  v66 = v55[10];
  *(v54 + v66) = mach_absolute_time();
  OUTLINED_FUNCTION_49_4();
  *v67 = v56;
  v67[1] = v62;
  *(v54 + v55[8]) = v63;
  OUTLINED_FUNCTION_31_4(v54 + v55[9]);
  OUTLINED_FUNCTION_124(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR, OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  OUTLINED_FUNCTION_22_5(v68);
  if (v69)
  {
    v70 = *(v24 + 840);

    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v70, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  }

  else
  {
    *(v24 + 696) = *(v24 + 856);
    *(v24 + 704) = &protocol witness table for MessageCenterEvent;
    __swift_allocate_boxed_opaque_existential_1((v24 + 672));
    v71 = OUTLINED_FUNCTION_53_2();
    outlined init with copy of MessageCenterEvent(v71, v72);

    OUTLINED_FUNCTION_69_1(v24 + 672);
    OUTLINED_FUNCTION_13_4();
    v73 = OUTLINED_FUNCTION_18();
    v74(v73);
  }

  v75 = *(v24 + 864);
  v76 = *(v24 + 848);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
  OUTLINED_FUNCTION_64_1(v77);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v76, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  v78 = OUTLINED_FUNCTION_60(&type metadata for MessageCenterError, v91);
  OUTLINED_FUNCTION_50_3(v78, v79);
  swift_willThrow();
  outlined destroy of MessageCenterEvent(v75);

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_56_2();

  return v81(v80, v81, v82, v83, v84, v85, v86, v87, v91, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[98] = v0;
  v1[97] = v2;
  v1[96] = v3;
  v1[95] = v4;
  v1[99] = type metadata accessor for TimeoutError();
  OUTLINED_FUNCTION_57_0();
  v1[100] = v5;
  v1[101] = OUTLINED_FUNCTION_68();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  OUTLINED_FUNCTION_11_1(v6);
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  OUTLINED_FUNCTION_11_1(v7);
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v8 = type metadata accessor for MessageCenterEvent(0);
  v1[108] = v8;
  OUTLINED_FUNCTION_11_1(v8);
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  v1[112] = type metadata accessor for UUID();
  OUTLINED_FUNCTION_57_0();
  v1[113] = v9;
  v1[114] = OUTLINED_FUNCTION_68();
  v10 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_114_0();
  v1 = v0[95];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[92] = v1;
  type metadata accessor for MessageCenterMessage();
  lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(&lazy protocol witness table cache variable for type MessageCenterMessage and conformance MessageCenterMessage, type metadata accessor for MessageCenterMessage);
  v0[115] = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v0[116] = v2;
  v3 = v0[98];
  v4 = v0[95];

  v0[93] = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork013MessageCenterC0CmMd, &_s11SiriNetwork013MessageCenterC0CmMR);
  v0[117] = String.init<A>(describing:)();
  v0[118] = v5;
  v0[119] = *(v3 + 120);
  OUTLINED_FUNCTION_54_2();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_61_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_29();
  v1 = MessageCenterActorListenerPublisher.localIDSIdentifier.getter();
  v3 = v2;
  swift_unknownObjectRelease();
  *(v0 + 960) = v1;
  *(v0 + 968) = v3;
  v4 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_7_0();
  *(v0 + 976) = *(*(v0 + 784) + 120);
  OUTLINED_FUNCTION_54_2();
  swift_unknownObjectRetain();
  v1 = OUTLINED_FUNCTION_14_5();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_29();
  v1 = MessageCenterActorListenerPublisher.deviceModel.getter();
  v3 = v2;
  swift_unknownObjectRelease();
  *(v0 + 984) = v1;
  *(v0 + 992) = v3;
  v4 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  v20 = *(v0 + 984);
  v21 = *(v0 + 992);
  v19 = *(v0 + 960);
  v3 = *(v0 + 944);
  v4 = *(v0 + 936);
  v5 = *(v0 + 928);
  v6 = *(v0 + 920);
  v7 = *(v0 + 912);
  v8 = *(v0 + 904);
  v9 = *(v0 + 896);
  v18 = *(v0 + 784);
  outlined copy of Data._Representation(v6, v5);
  UUID.init()();
  UUID.uuidString.getter();
  OUTLINED_FUNCTION_11_2();
  (*(v8 + 8))(v7, v9);
  v10 = specialized Collection.prefix(_:)(5, v1, v2);
  v11 = MEMORY[0x223DE2130](v10);
  v13 = v12;

  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v6;
  *(v0 + 40) = v5;
  *(v0 + 48) = v19;
  *(v0 + 64) = v20;
  *(v0 + 72) = v21;
  *(v0 + 80) = v11;
  *(v0 + 88) = v13;
  *(v0 + 1000) = *(v18 + 120);
  OUTLINED_FUNCTION_54_2();
  swift_unknownObjectRetain();
  v14 = OUTLINED_FUNCTION_14_5();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

{
  OUTLINED_FUNCTION_7_0();
  MessageCenterActorListenerPublisher.sourceActor.getter(v0 + 376);
  swift_unknownObjectRelease();
  v1 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 1032) = v0;

  if (v0)
  {
    v7 = *(v3 + 784);
    v8 = MessageCenter.sendMessage(_:to:for:timeout:);
  }

  else
  {
    v9 = *(v3 + 784);

    v8 = MessageCenter.sendMessage(_:to:for:timeout:);
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_11_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1056) = v0;

  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  *(v10 + 1008) = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_logger;
  outlined init with copy of MessageCenterActorMessage(v10 + 16, v10 + 96);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  outlined destroy of MessageCenterActorMessage(v10 + 16);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_105();
    *v14 = 136315138;
    outlined init with copy of MessageCenterActorMessage(v10 + 16, v10 + 256);
    v15 = MessageCenterActorMessage.description.getter();
    v16 = outlined destroy of MessageCenterActorMessage(v10 + 16);
    OUTLINED_FUNCTION_67_0(v16, v17);
    OUTLINED_FUNCTION_68_2();
    *(v14 + 4) = v15;
    _os_log_impl(&dword_223515000, v12, v13, "Sending %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_11();
  }

  v18 = *(v10 + 784);
  v19 = *(v10 + 760);
  outlined init with copy of UMUserPersonProtocol(*(v10 + 768), v10 + 416);
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v10 + 376, v10 + 456, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  v20 = swift_allocObject();
  *(v10 + 1016) = v20;
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  outlined init with take of RPCOspreyConnectionProtocol((v10 + 416), v20 + 32);
  memcpy((v20 + 72), (v10 + 16), 0x50uLL);
  v21 = *(v10 + 472);
  *(v20 + 152) = *(v10 + 456);
  *(v20 + 168) = v21;
  *(v20 + 184) = *(v10 + 488);
  outlined init with copy of MessageCenterActorMessage(v10 + 16, v10 + 176);

  v22 = swift_task_alloc();
  *(v10 + 1024) = v22;
  *v22 = v10;
  v22[1] = MessageCenter.sendMessage(_:to:for:timeout:);
  OUTLINED_FUNCTION_26_3();

  return MEMORY[0x2821C8618](v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_105_0();
  v17 = v16[116];
  v18 = v16[115];
  v28 = v16[104];
  v29 = v16[103];
  v30 = v16[102];
  v31 = v16[101];
  outlined destroy of MessageCenterActorMessage((v16 + 2));
  outlined consume of Data._Representation(v18, v17);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?((v16 + 47), &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_56_2();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, v29, v30, v31, a14, a15, a16);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_82_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_105_0();
  a22 = v24;
  v27 = *(v24 + 1032);

  *(v24 + 752) = v27;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    if ((*(*(v24 + 800) + 88))(*(v24 + 808), *(v24 + 792)) == *MEMORY[0x277D61CE8])
    {
      v29 = *(v24 + 880);
      v30 = *(v24 + 864);
      v31 = *(v24 + 824);
      v32 = *(v24 + 784);
      v33 = *(v24 + 760);

      OUTLINED_FUNCTION_0_32();
      v36 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v34, v35);
      v37 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
      *(v24 + 1040) = v37;
      v38 = OUTLINED_FUNCTION_60(&type metadata for MessageCenterError, v37);
      OUTLINED_FUNCTION_18_0(v39, 17);

      Date.init()();
      v40 = v30[10];
      *(v29 + v40) = mach_absolute_time();
      *v29 = v33;
      *(v29 + 8) = 1;
      v41 = (v29 + v30[7]);
      *v41 = v32;
      v41[1] = v36;
      *(v29 + v30[8]) = v38;
      v42 = v29 + v30[9];
      *v42 = 0;
      *(v42 + 8) = 1;
      outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v32 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation, v31, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
      v44 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_66_2(v44, v45, v43);
      if (v46)
      {
        v47 = *(v24 + 824);

        outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v47, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
        v108 = 1;
      }

      else
      {
        *(v24 + 720) = *(v24 + 864);
        *(v24 + 728) = &protocol witness table for MessageCenterEvent;
        __swift_allocate_boxed_opaque_existential_1((v24 + 696));
        v104 = OUTLINED_FUNCTION_53_2();
        outlined init with copy of MessageCenterEvent(v104, v105);

        OUTLINED_FUNCTION_93_0(v24 + 696);
        OUTLINED_FUNCTION_13_4();
        v106 = OUTLINED_FUNCTION_88_0();
        v107(v106);
        v108 = 0;
      }

      v109 = *(v24 + 848);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
      __swift_storeEnumTagSinglePayload(v109, v108, 1, v110);
      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v109, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
      v111 = swift_task_alloc();
      *(v24 + 1048) = v111;
      *v111 = v24;
      v111[1] = MessageCenter.sendMessage(_:to:for:timeout:);
      OUTLINED_FUNCTION_90(*(v24 + 768));
      OUTLINED_FUNCTION_56_2();

      return MessageCenter.invalidateActor(_:)(v112);
    }

    (*(*(v24 + 800) + 8))(*(v24 + 808), *(v24 + 792));
  }

  v48 = *(v24 + 1032);
  v49 = *(v24 + 872);
  v50 = *(v24 + 864);
  v51 = *(v24 + 784);
  v52 = *(v24 + 760);

  OUTLINED_FUNCTION_0_32();
  v55 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v53, v54);
  v115 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
  v56 = OUTLINED_FUNCTION_60(&type metadata for MessageCenterError, v115);
  OUTLINED_FUNCTION_73_0(v56, v57);
  v58 = v48;

  v59 = v48;
  Date.init()();
  v60 = v50[10];
  *(v49 + v60) = mach_absolute_time();
  *v49 = v52;
  *(v49 + 8) = 1;
  v61 = (v49 + v50[7]);
  *v61 = v51;
  v61[1] = v55;
  *(v49 + v50[8]) = v56;
  v62 = v49 + v50[9];
  *v62 = 0;
  *(v62 + 8) = 1;
  OUTLINED_FUNCTION_124(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR, OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  OUTLINED_FUNCTION_22_5(v63);
  if (v46)
  {
    v64 = *(v24 + 816);

    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v64, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  }

  else
  {
    *(v24 + 600) = *(v24 + 864);
    *(v24 + 608) = &protocol witness table for MessageCenterEvent;
    __swift_allocate_boxed_opaque_existential_1((v24 + 576));
    v65 = OUTLINED_FUNCTION_53_2();
    outlined init with copy of MessageCenterEvent(v65, v66);

    OUTLINED_FUNCTION_69_1(v24 + 576);
    OUTLINED_FUNCTION_13_4();
    v67 = OUTLINED_FUNCTION_18();
    v68(v67);
  }

  v69 = *(v24 + 1032);
  v70 = *(v24 + 840);
  v71 = *(v24 + 768);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
  OUTLINED_FUNCTION_64_1(v72);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v70, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  outlined init with copy of UMUserPersonProtocol(v71, v24 + 496);
  v73 = v69;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = *(v24 + 1032);
    v77 = OUTLINED_FUNCTION_89();
    v78 = swift_slowAlloc();
    v79 = OUTLINED_FUNCTION_54();
    a12 = v79;
    *v77 = 136315394;
    outlined init with copy of UMUserPersonProtocol(v24 + 496, v24 + 536);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
    v80 = String.init<A>(describing:)();
    v82 = v81;
    __swift_destroy_boxed_opaque_existential_0((v24 + 496));
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, &a12);

    *(v77 + 4) = v83;
    *(v77 + 12) = 2112;
    v84 = v115;
    v85 = OUTLINED_FUNCTION_60(&type metadata for MessageCenterError, v115);
    OUTLINED_FUNCTION_73_0(v85, v86);
    v87 = v76;
    v88 = _swift_stdlib_bridgeErrorToNSError();
    *(v77 + 14) = v88;
    *v78 = v88;
    _os_log_impl(&dword_223515000, v74, v75, "Message send to actor %s failed with error %@", v77, 0x16u);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v78, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_12();
    __swift_destroy_boxed_opaque_existential_0(v79);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_11();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v24 + 496));
    v84 = v115;
  }

  v89 = *(v24 + 1032);
  v90 = *(v24 + 928);
  v91 = *(v24 + 920);
  v92 = *(v24 + 872);
  v116 = OUTLINED_FUNCTION_60(&type metadata for MessageCenterError, v84);
  OUTLINED_FUNCTION_73_0(v116, v93);
  swift_willThrow();

  outlined destroy of MessageCenterActorMessage(v24 + 16);
  outlined consume of Data._Representation(v91, v90);
  outlined destroy of MessageCenterEvent(v92);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v24 + 376, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  OUTLINED_FUNCTION_3_15();
  v114 = v94;

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_56_2();

  return v96(v95, v96, v97, v98, v99, v100, v101, v102, a9, v114, v116, a12, a13, a14, a15, a16);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_82_0();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_105_0();
  a22 = v24;
  outlined init with copy of UMUserPersonProtocol(*(v24 + 768), v24 + 616);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_15_1(v30))
  {
    v31 = OUTLINED_FUNCTION_55();
    a12 = OUTLINED_FUNCTION_54();
    *v31 = 136315138;
    outlined init with copy of UMUserPersonProtocol(v24 + 616, v24 + 656);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_11_2();
    __swift_destroy_boxed_opaque_existential_0((v24 + 616));
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &a12);

    *(v31 + 4) = v32;
    OUTLINED_FUNCTION_51_3();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v24 + 616));
  }

  v38 = *(v24 + 880);
  v53 = OUTLINED_FUNCTION_60(&type metadata for MessageCenterError, *(v24 + 1040));
  OUTLINED_FUNCTION_18_0(v39, 17);
  swift_willThrow();
  outlined destroy of MessageCenterActorMessage(v24 + 16);
  v40 = OUTLINED_FUNCTION_88_0();
  outlined consume of Data._Representation(v40, v41);
  outlined destroy of MessageCenterEvent(v38);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v24 + 376, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);

  OUTLINED_FUNCTION_3_15();
  v52 = v42;

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_56_2();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, v53, a12, a13, a14, a15, a16);
}

uint64_t MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_114_0();
  v15 = *(v14 + 880);
  outlined destroy of MessageCenterActorMessage(v14 + 16);
  v16 = OUTLINED_FUNCTION_14_3();
  outlined consume of Data._Representation(v16, v17);
  outlined destroy of MessageCenterEvent(v15);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v14 + 376, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);

  OUTLINED_FUNCTION_3_15();
  v29 = v18;
  v30 = v19;

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_61_1();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, a12, a13, a14);
}

uint64_t MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[11] = v0;
  v1[10] = v2;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  OUTLINED_FUNCTION_11_1(v6);
  v1[12] = OUTLINED_FUNCTION_68();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  OUTLINED_FUNCTION_11_1(v7);
  v1[13] = OUTLINED_FUNCTION_68();
  v8 = type metadata accessor for MessageCenterEvent(0);
  v1[14] = v8;
  OUTLINED_FUNCTION_11_1(v8);
  v1[15] = OUTLINED_FUNCTION_68();
  v9 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_7_0();
  *(v0 + 128) = *(*(v0 + 88) + 112);
  OUTLINED_FUNCTION_54_2();

  v1 = OUTLINED_FUNCTION_14_5();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_7_0();
  *(v0 + 136) = *(*(v0 + 128) + 120);

  v1 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    v7 = *(v3 + 88);

    return MEMORY[0x2822009F8](MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:), v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_26_4();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_6_3();

  return v0();
}

void MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_114_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = 0;
  v26 = v22[17];
  OUTLINED_FUNCTION_19_4();
  if (v31 != v32)
  {
    v29 = ~v30;
  }

  v33 = v29 & v27;
  v34 = (63 - v28) >> 6;
  while (v33)
  {
LABEL_10:
    v36 = v22[8];
    v37 = v22[9];
    v38 = (*(v26 + 48) + ((v25 << 11) | (32 * __clz(__rbit64(v33)))));
    v39 = *v38;
    v40 = v38[1];
    v22[18] = v40;
    v41 = v38[2];
    v42 = v38[3];
    v22[19] = v42;
    v43 = v39 == v36 && v40 == v37;
    if (!v43)
    {
      v33 &= v33 - 1;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v22[8];
      v93 = v22[9];
      v47 = v22[7];
      v48 = OUTLINED_FUNCTION_54();
      a10 = swift_slowAlloc();
      *v48 = 136315650;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v47 + 16), *(v47 + 24), &a10);
      *(v48 + 12) = 2080;

      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &a10);

      *(v48 + 14) = v49;
      *(v48 + 22) = 2080;
      *(v48 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v93, &a10);
      _os_log_impl(&dword_223515000, v44, v45, "Sending %s to persona %s for sharedSiriIdentifier %s", v48, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_7_13();
    }

    v50 = swift_task_alloc();
    v22[20] = v50;
    *v50 = v22;
    v50[1] = MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:);
    OUTLINED_FUNCTION_90(v22[7]);
    OUTLINED_FUNCTION_61_1();

    MessageCenter.sendMessage(_:toPersona:timeout:)();
    return;
  }

  while (1)
  {
    v35 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return;
    }

    if (v35 >= v34)
    {
      break;
    }

    v33 = *(v26 + 56 + 8 * v35);
    ++v25;
    if (v33)
    {
      v25 = v35;
      goto LABEL_10;
    }
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v55 = v22[8];
    v54 = v22[9];
    v56 = OUTLINED_FUNCTION_55();
    v57 = OUTLINED_FUNCTION_54();
    a10 = v57;
    *v56 = 136315138;
    *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &a10);
    _os_log_impl(&dword_223515000, v52, v53, "No device found for SharedSiriIdentifier %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_13();
  }

  v59 = v22[14];
  v58 = v22[15];
  v60 = v22[11];
  v61 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
  OUTLINED_FUNCTION_38_2();
  v62 = swift_allocError();
  OUTLINED_FUNCTION_18_0(v63, 21);
  OUTLINED_FUNCTION_0_32();
  v66 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v64, v65);
  v94 = v61;
  OUTLINED_FUNCTION_38_2();
  v67 = swift_allocError();
  OUTLINED_FUNCTION_50_3(v67, v68);
  v69 = v62;

  Date.init()();
  v70 = v59[10];
  *(v58 + v70) = mach_absolute_time();
  OUTLINED_FUNCTION_49_4();
  *v71 = v60;
  v71[1] = v66;
  *(v58 + v59[8]) = v67;
  OUTLINED_FUNCTION_31_4(v58 + v59[9]);
  OUTLINED_FUNCTION_124(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR, OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  OUTLINED_FUNCTION_22_5(v72);
  if (v43)
  {
    v73 = v22[12];

    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v73, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
    v80 = OUTLINED_FUNCTION_44_0();
  }

  else
  {
    v74 = v22[13];
    v22[5] = v22[14];
    v22[6] = &protocol witness table for MessageCenterEvent;
    __swift_allocate_boxed_opaque_existential_1(v22 + 2);
    v75 = OUTLINED_FUNCTION_53_2();
    outlined init with copy of MessageCenterEvent(v75, v76);

    OUTLINED_FUNCTION_69_1((v22 + 2));
    OUTLINED_FUNCTION_13_4();
    v77 = OUTLINED_FUNCTION_18();
    v78(v77);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
    v80 = v74;
    v81 = 0;
  }

  __swift_storeEnumTagSinglePayload(v80, v81, 1, v79);
  v82 = v22[15];
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v22[13], &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  v83 = OUTLINED_FUNCTION_60(&type metadata for MessageCenterError, v94);
  OUTLINED_FUNCTION_50_3(v83, v84);
  swift_willThrow();
  outlined destroy of MessageCenterEvent(v82);

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_61_1();

  v86(v85, v86, v87, v88, v89, v90, v91, v92, v94, a10, a11, a12, a13, a14);
}

uint64_t MessageCenter.sendMessage(_:toPersona:timeout:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[21] = v0;
  v1[20] = v2;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  OUTLINED_FUNCTION_11_1(v6);
  v1[22] = OUTLINED_FUNCTION_68();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  OUTLINED_FUNCTION_11_1(v7);
  v1[23] = OUTLINED_FUNCTION_68();
  v8 = type metadata accessor for MessageCenterEvent(0);
  v1[24] = v8;
  OUTLINED_FUNCTION_11_1(v8);
  v1[25] = OUTLINED_FUNCTION_68();
  v9 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_7_0();
  v0[26] = *(v0[21] + 112);

  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = MessageCenter.sendMessage(_:toPersona:timeout:);

  return MessageCenterActorBrowser.createActorIfNeeded(for:)();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    v7 = *(v3 + 168);
    v8 = MessageCenter.sendMessage(_:toPersona:timeout:);
  }

  else
  {
    v9 = *(v3 + 168);

    v8 = MessageCenter.sendMessage(_:toPersona:timeout:);
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  outlined init with take of RPCOspreyConnectionProtocol((v0 + 56), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = MessageCenter.sendMessage(_:toPersona:timeout:);
  OUTLINED_FUNCTION_90(*(v0 + 136));

  return MessageCenter.sendMessage(_:to:for:timeout:)();
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_11_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_26_4();

  return v1();
}

{
  OUTLINED_FUNCTION_43();
  v44 = v0;
  v1 = v0[28];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v7 = v0[18];
    v6 = v0[19];
    v8 = OUTLINED_FUNCTION_89();
    v9 = swift_slowAlloc();
    v43 = OUTLINED_FUNCTION_54();
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v43);
    *(v8 + 12) = 2112;
    v10 = v5;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_51_3();
    _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_12();
  }

  v17 = v0[28];
  v19 = v0[24];
  v18 = v0[25];
  v21 = v0[21];
  v20 = v0[22];
  v22 = v0[17];
  OUTLINED_FUNCTION_0_32();
  v25 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v23, v24);
  v26 = v17;

  Date.init()();
  v27 = v19[10];
  *(v18 + v27) = mach_absolute_time();
  *v18 = v22;
  *(v18 + 8) = 0;
  v28 = (v18 + v19[7]);
  *v28 = v21;
  v28[1] = v25;
  *(v18 + v19[8]) = v17;
  OUTLINED_FUNCTION_31_4(v18 + v19[9]);
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v21 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation, v20, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  v30 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_66_2(v30, v31, v29);
  if (v32)
  {
    v33 = v0[22];

    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v33, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  }

  else
  {
    v0[15] = v0[24];
    v0[16] = &protocol witness table for MessageCenterEvent;
    __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    v34 = OUTLINED_FUNCTION_53_2();
    outlined init with copy of MessageCenterEvent(v34, v35);

    OUTLINED_FUNCTION_93_0((v0 + 12));
    OUTLINED_FUNCTION_13_4();
    v36 = OUTLINED_FUNCTION_88_0();
    v37(v36);
  }

  v38 = v0[25];
  v39 = v0[23];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
  OUTLINED_FUNCTION_35_2(v40);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v39, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  swift_willThrow();
  outlined destroy of MessageCenterEvent(v38);

  OUTLINED_FUNCTION_6_3();

  return v41();
}

{
  OUTLINED_FUNCTION_29();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_6_3();

  return v1();
}

uint64_t closure #1 in MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = type metadata accessor for MessageCenterEvent(0);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MessageCenter.sendMessage(_:to:for:timeout:), 0, 0);
}

uint64_t closure #1 in MessageCenter.sendMessage(_:to:for:timeout:)()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[12];
  v4 = v0[13];
  OUTLINED_FUNCTION_0_32();
  v8 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v6, v7);
  v0[24] = v8;

  Date.init()();
  v9 = v2[10];
  *(v1 + v9) = mach_absolute_time();
  *v1 = v5;
  *(v1 + 8) = 0;
  v10 = (v1 + v2[7]);
  *v10 = v4;
  v10[1] = v8;
  *(v1 + v2[8]) = 0;
  OUTLINED_FUNCTION_31_4(v1 + v2[9]);
  v11 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation;
  v0[25] = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation;
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v4 + v11, v3, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
  v0[26] = v12;
  v13 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_66_2(v13, v14, v12);
  if (v15)
  {
    v16 = v0[18];

    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v16, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
    v23 = OUTLINED_FUNCTION_44_0();
  }

  else
  {
    v17 = v0[20];
    v0[10] = v0[21];
    v0[11] = &protocol witness table for MessageCenterEvent;
    __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    v18 = OUTLINED_FUNCTION_53_2();
    outlined init with copy of MessageCenterEvent(v18, v19);

    OUTLINED_FUNCTION_93_0((v0 + 7));
    OUTLINED_FUNCTION_13_4();
    v20 = OUTLINED_FUNCTION_88_0();
    v21(v20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
    v23 = v17;
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
  v25 = v0[14];
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v0[20], &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  OUTLINED_FUNCTION_10_6();
  v30 = (v26 + *v26);
  v27 = swift_task_alloc();
  v0[27] = v27;
  *v27 = v0;
  v27[1] = closure #1 in MessageCenter.sendMessage(_:to:for:timeout:);
  v28 = OUTLINED_FUNCTION_90(v0[15]);

  return v30(v28);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 224) = v0;

  if (v0)
  {
    v5 = closure #1 in MessageCenter.sendMessage(_:to:for:timeout:);
  }

  else
  {
    v5 = closure #1 in MessageCenter.sendMessage(_:to:for:timeout:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_40_3();
  outlined destroy of MessageCenterEvent(*(v0 + 184));

  OUTLINED_FUNCTION_6_3();

  return v1();
}

uint64_t closure #1 in MessageCenter.sendMessage(_:to:for:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_43();
  v14 = v12[25];
  v13 = v12[26];
  v15 = v12[24];
  v17 = v12[21];
  v16 = v12[22];
  v18 = v12[17];
  v20 = v12[12];
  v19 = v12[13];

  Date.init()();
  v21 = v17[10];
  *(v16 + v21) = mach_absolute_time();
  *v16 = v20;
  *(v16 + 8) = 1;
  v22 = (v16 + v17[7]);
  *v22 = v19;
  v22[1] = v15;
  *(v16 + v17[8]) = 0;
  v23 = v16 + v17[9];
  *v23 = 0;
  *(v23 + 8) = 1;
  outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v19 + v14, v18, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  OUTLINED_FUNCTION_66_2(v18, 1, v13);
  if (v24)
  {
    v25 = v12[22];
    v26 = v12[23];
    v27 = v12[17];

    outlined destroy of MessageCenterEvent(v25);
    outlined destroy of MessageCenterEvent(v26);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v27, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  }

  else
  {
    v28 = v12[26];
    v30 = v12[22];
    v29 = v12[23];
    v31 = v12[17];
    v12[5] = v12[21];
    v12[6] = &protocol witness table for MessageCenterEvent;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12 + 2);
    outlined init with copy of MessageCenterEvent(v30, boxed_opaque_existential_1);

    AsyncStream.Continuation.yield(_:)();
    outlined destroy of MessageCenterEvent(v30);
    outlined destroy of MessageCenterEvent(v29);
    OUTLINED_FUNCTION_13_4();
    (*(v33 + 8))(v31, v28);
  }

  v34 = v12[19];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
  OUTLINED_FUNCTION_64_1(v35);
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v34, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_63_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t MessageCenter.invalidateActor(_:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_1_0(MessageCenter.invalidateActor(_:), v1);
}

uint64_t MessageCenter.invalidateActor(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_38_1();
  a17 = v21;
  a18 = v22;
  OUTLINED_FUNCTION_21();
  a16 = v18;
  outlined init with copy of UMUserPersonProtocol(*(v18 + 96), v18 + 16);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_15_1(v24))
  {
    v25 = OUTLINED_FUNCTION_55();
    a10 = OUTLINED_FUNCTION_54();
    *v25 = 136315138;
    outlined init with copy of UMUserPersonProtocol(v18 + 16, v18 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_11_2();
    __swift_destroy_boxed_opaque_existential_0((v18 + 16));
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &a10);

    *(v25 + 4) = v26;
    OUTLINED_FUNCTION_51_3();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_12();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v18 + 16));
  }

  if (one-time initialization token for actorSystem != -1)
  {
    swift_once();
  }

  v32 = *(v18 + 96);
  __swift_project_boxed_opaque_existential_1(static MessageCenter.actorSystem, qword_281327350);
  specialized MessageCenterNWActorSystemProtocol.invalidateMessageCenterActor(_:)(v32);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_26_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t MessageCenter.reset()()
{
  *(v1 + 320) = v0;
  return OUTLINED_FUNCTION_1_0(MessageCenter.reset(), v0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_57_1(v2))
  {
    v3 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v3);
    OUTLINED_FUNCTION_32_3(&dword_223515000, v4, v5, "Message Center Reset");
    OUTLINED_FUNCTION_42_0();
  }

  v6 = v0[40];

  v0[41] = *(v6 + 112);

  v7 = swift_task_alloc();
  v0[42] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_33(v7);

  return MessageCenterActorBrowser.getActiveActorsDevices()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;
  *(v4 + 344) = v3;

  v5 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_112_0();
  OUTLINED_FUNCTION_11_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 376) = v0;

  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_7_0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 200));
  OUTLINED_FUNCTION_6_3();

  return v1();
}

void MessageCenter.reset()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_43();
  v13 = *(v12 + 344);
  v14 = *(v13 + 32);
  *(v12 + 384) = v14;
  v15 = 1 << v14;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v13 + 64);

  v18 = 0;
  if (v17)
  {
    while (1)
    {
      v19 = *(v12 + 344);
LABEL_10:
      *(v12 + 352) = v17;
      *(v12 + 360) = v18;
      outlined init with copy of UMUserPersonProtocol(*(v19 + 56) + 40 * (__clz(__rbit64(v17)) | (v18 << 6)), v12 + 160);
      outlined init with take of RPCOspreyConnectionProtocol((v12 + 160), v12 + 280);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork27MessageCenterDeviceProtocol_pMd, &_s11SiriNetwork27MessageCenterDeviceProtocol_pMR);
      if (OUTLINED_FUNCTION_94_0(v21))
      {
        OUTLINED_FUNCTION_115_0();
        outlined destroy of MessageCenterDevice(v12 + 16);
        if (*(v12 + 264))
        {
          outlined init with take of RPCOspreyConnectionProtocol((v12 + 240), v12 + 200);
          v30 = swift_task_alloc();
          *(v12 + 368) = v30;
          *v30 = v12;
          OUTLINED_FUNCTION_30_5(v30);
          OUTLINED_FUNCTION_63_0();

          MessageCenter.invalidateActor(_:)(v31);
          return;
        }
      }

      else
      {
        bzero((v12 + 16), 0x90uLL);
        outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v12 + 16, &_s11SiriNetwork19MessageCenterDeviceVSgMd, &_s11SiriNetwork19MessageCenterDeviceVSgMR);
        *(v12 + 240) = 0u;
        *(v12 + 256) = 0u;
        *(v12 + 272) = 0;
      }

      OUTLINED_FUNCTION_98_0();
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return;
    }

    v19 = *(v12 + 344);
    if (v20 >= (((1 << *(v12 + 384)) + 63) >> 6))
    {
      break;
    }

    v17 = *(v19 + 8 * v20 + 64);
    ++v18;
    if (v17)
    {
      v18 = v20;
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_63_0();

  v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t MessageCenter.reset()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_43();
  result = __swift_destroy_boxed_opaque_existential_0((v12 + 200));
  v14 = *(v12 + 360);
  v15 = (*(v12 + 352) - 1) & *(v12 + 352);
  if (v15)
  {
    while (1)
    {
      v16 = *(v12 + 344);
LABEL_7:
      *(v12 + 352) = v15;
      *(v12 + 360) = v14;
      outlined init with copy of UMUserPersonProtocol(*(v16 + 56) + 40 * (__clz(__rbit64(v15)) | (v14 << 6)), v12 + 160);
      outlined init with take of RPCOspreyConnectionProtocol((v12 + 160), v12 + 280);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork27MessageCenterDeviceProtocol_pMd, &_s11SiriNetwork27MessageCenterDeviceProtocol_pMR);
      if (OUTLINED_FUNCTION_94_0(v18))
      {
        OUTLINED_FUNCTION_115_0();
        outlined destroy of MessageCenterDevice(v12 + 16);
        if (*(v12 + 264))
        {
          outlined init with take of RPCOspreyConnectionProtocol((v12 + 240), v12 + 200);
          v27 = swift_task_alloc();
          *(v12 + 368) = v27;
          *v27 = v12;
          OUTLINED_FUNCTION_30_5(v27);
          OUTLINED_FUNCTION_63_0();

          return MessageCenter.invalidateActor(_:)(v28);
        }
      }

      else
      {
        bzero((v12 + 16), 0x90uLL);
        outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v12 + 16, &_s11SiriNetwork19MessageCenterDeviceVSgMd, &_s11SiriNetwork19MessageCenterDeviceVSgMR);
        *(v12 + 240) = 0u;
        *(v12 + 256) = 0u;
        *(v12 + 272) = 0;
      }

      OUTLINED_FUNCTION_98_0();
    }
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    v16 = *(v12 + 344);
    if (v17 >= (((1 << *(v12 + 384)) + 63) >> 6))
    {
      break;
    }

    v15 = *(v16 + 8 * v17 + 64);
    ++v14;
    if (v15)
    {
      v14 = v17;
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_63_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t MessageCenter.didFindDevice(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[42] = a3;
  v4[43] = v3;
  v4[40] = a1;
  v4[41] = a2;
  return OUTLINED_FUNCTION_1_0(MessageCenter.didFindDevice(_:for:), v3);
}

uint64_t MessageCenter.didFindDevice(_:for:)()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[42];
  outlined init with copy of MessageCenterDevice(v0[40], (v0 + 2));

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_105();
    v6 = OUTLINED_FUNCTION_122_0(4.8151e-34, v4, v5);
    OUTLINED_FUNCTION_81_0(v6);
    outlined init with copy of MessageCenterDevice((v0 + 2), (v0 + 20));
    OUTLINED_FUNCTION_65_2();

    OUTLINED_FUNCTION_29_4();
    MEMORY[0x223DE2180](v0[20], v0[21]);
    OUTLINED_FUNCTION_41_4();
    v7 = v0[23];
    v0[38] = v0[22];
    v0[39] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x223DE2180](v8);

    OUTLINED_FUNCTION_101_0();
    outlined destroy of MessageCenterDevice((v0 + 2));
    v9 = outlined destroy of MessageCenterDevice((v0 + 20));
    OUTLINED_FUNCTION_67_0(v9, v10);
    OUTLINED_FUNCTION_68_2();
    *(v1 + 14) = v22;
    OUTLINED_FUNCTION_62_1(&dword_223515000, v11, v12, "message center found device for persona %s %s");
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    outlined destroy of MessageCenterDevice((v0 + 2));
  }

  v13 = v0[43];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[44] = Strong;
  v0[45] = *(v13 + 144);
  if (!Strong)
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v0[46] = *(v0[43] + 112);
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_120_0();

  v0 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void MessageCenter.didFindDevice(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_43();
  v19 = 0;
  v20 = v12[47] + 56;
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_109_0();
  while (v17)
  {
LABEL_7:
    OUTLINED_FUNCTION_47_2();
    v24 = v24 && v13 == v23;
    if (v24)
    {
      v15 = v22;
LABEL_15:
      OUTLINED_FUNCTION_96_0();

      outlined init with copy of MessageCenterDevice(v17, (v12 + 2));
      outlined consume of MessageCenterUser?(v12[6], v12[7]);
      v12[6] = v18;
      v12[7] = v14;
      v12[8] = v15;
      v12[9] = v13;
      swift_getObjectType();
      OUTLINED_FUNCTION_0_32();
      lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v25, v26);
      v12[23] = &type metadata for MessageCenterDevice;
      v12[24] = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
      OUTLINED_FUNCTION_107_0();
      v27 = swift_allocObject();
      OUTLINED_FUNCTION_121_0(v27);
      v28 = OUTLINED_FUNCTION_84_0();
      v29(v28);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v12 + 20);
      outlined destroy of MessageCenterDevice((v12 + 2));
LABEL_16:
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_63_0();

      v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
      return;
    }

    v17 &= v17 - 1;
    OUTLINED_FUNCTION_18();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v16)
    {

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v17 = *(v20 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t MessageCenter.didLoseDevice(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[42] = a3;
  v4[43] = v3;
  v4[40] = a1;
  v4[41] = a2;
  return OUTLINED_FUNCTION_1_0(MessageCenter.didLoseDevice(_:for:), v3);
}

uint64_t MessageCenter.didLoseDevice(_:for:)()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[42];
  outlined init with copy of MessageCenterDevice(v0[40], (v0 + 2));

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_89();
    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_105();
    v6 = OUTLINED_FUNCTION_122_0(4.8151e-34, v4, v5);
    OUTLINED_FUNCTION_81_0(v6);
    outlined init with copy of MessageCenterDevice((v0 + 2), (v0 + 20));
    OUTLINED_FUNCTION_65_2();

    OUTLINED_FUNCTION_29_4();
    MEMORY[0x223DE2180](v0[20], v0[21]);
    OUTLINED_FUNCTION_41_4();
    v7 = v0[23];
    v0[38] = v0[22];
    v0[39] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x223DE2180](v8);

    OUTLINED_FUNCTION_101_0();
    outlined destroy of MessageCenterDevice((v0 + 2));
    v9 = outlined destroy of MessageCenterDevice((v0 + 20));
    OUTLINED_FUNCTION_67_0(v9, v10);
    OUTLINED_FUNCTION_68_2();
    *(v1 + 14) = v22;
    OUTLINED_FUNCTION_62_1(&dword_223515000, v11, v12, "message center lost device for persona %s %s");
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {

    outlined destroy of MessageCenterDevice((v0 + 2));
  }

  v13 = v0[43];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[44] = Strong;
  v0[45] = *(v13 + 144);
  if (!Strong)
  {
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_117();

    __asm { BRAA            X1, X16 }
  }

  v0[46] = *(v0[43] + 112);
  OUTLINED_FUNCTION_54_2();

  OUTLINED_FUNCTION_14_5();
  OUTLINED_FUNCTION_117();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_120_0();

  v0 = OUTLINED_FUNCTION_3_14();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void MessageCenter.didLoseDevice(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_43();
  v19 = 0;
  v20 = v12[47] + 56;
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_109_0();
  while (v17)
  {
LABEL_7:
    OUTLINED_FUNCTION_47_2();
    v24 = v24 && v13 == v23;
    if (v24)
    {
      v15 = v22;
LABEL_15:
      OUTLINED_FUNCTION_96_0();

      outlined init with copy of MessageCenterDevice(v17, (v12 + 2));
      outlined consume of MessageCenterUser?(v12[6], v12[7]);
      v12[6] = v18;
      v12[7] = v14;
      v12[8] = v15;
      v12[9] = v13;
      swift_getObjectType();
      OUTLINED_FUNCTION_0_32();
      lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v25, v26);
      v12[23] = &type metadata for MessageCenterDevice;
      v12[24] = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
      OUTLINED_FUNCTION_107_0();
      v27 = swift_allocObject();
      OUTLINED_FUNCTION_121_0(v27);
      v28 = OUTLINED_FUNCTION_84_0();
      v29(v28);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v12 + 20);
      outlined destroy of MessageCenterDevice((v12 + 2));
LABEL_16:
      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_63_0();

      v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
      return;
    }

    v17 &= v17 - 1;
    OUTLINED_FUNCTION_18();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v16)
    {

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v17 = *(v20 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void MessageCenter.didReceiveMessage(_:from:)()
{
  OUTLINED_FUNCTION_46();
  v1 = v0;
  v89 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
  v6 = OUTLINED_FUNCTION_11_1(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v11);
  v86 = &v84 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
  v14 = OUTLINED_FUNCTION_11_1(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v16);
  v87 = (&v84 - v17);
  v18 = type metadata accessor for MessageCenterEvent(0);
  OUTLINED_FUNCTION_13_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  v24 = OBJC_IVAR____TtC11SiriNetwork13MessageCenter_logger;
  outlined init with copy of MessageCenterActorMessage(v4, v103);
  v98 = v24;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  outlined destroy of MessageCenterActorMessage(v4);
  v27 = os_log_type_enabled(v25, v26);
  v88 = v23;
  v93 = v9;
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_89();
    v103[0] = swift_slowAlloc();
    *v28 = 136315394;
    v29 = MessageCenterActorMessage.description.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v103);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    *(v28 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v4, v4[1], v103);
    _os_log_impl(&dword_223515000, v25, v26, "message Center Received message %s of type %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_13();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v96 = v18;
    v97 = Strong;
    v85 = *(v1 + 168);
    v33 = MEMORY[0x223DE13E0](v4[2], v4[3]);
    v35 = *v4;
    v34 = v4[1];
    swift_beginAccess();
    v36 = OUTLINED_FUNCTION_18();
    v39 = specialized Dictionary.subscript.getter(v36, v37, v38);
    if (v39)
    {
      v41 = v39;
      v42 = v40;
      v92 = v33;
      swift_endAccess();
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      v104 = v41;
      v105 = v42;
      __swift_allocate_boxed_opaque_existential_1(v103);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      outlined init with copy of UMUserPersonProtocol(v103, v100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork23MessageCenterMessagable_pMd, &_s11SiriNetwork23MessageCenterMessagable_pMR);
      type metadata accessor for MessageCenterMessage();
      v59 = swift_dynamicCast();
      v60 = v96;
      if (v59)
      {
        v61 = v99;
      }

      else
      {
        swift_allocObject();
        v61 = MessageCenterMessage.init()();
      }

      v70 = v88;
      v71 = v86;
      v72 = v92;
      OUTLINED_FUNCTION_0_32();
      v75 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v73, v74);

      Date.init()();
      v76 = v60[10];
      *(v70 + v76) = mach_absolute_time();
      *v70 = v61;
      *(v70 + 8) = 2;
      v77 = (v70 + v60[7]);
      *v77 = v1;
      v77[1] = v75;
      *(v70 + v60[8]) = 0;
      v78 = v70 + v60[9];
      *v78 = v72;
      *(v78 + 8) = 0;
      outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v1 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation, v71, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
      OUTLINED_FUNCTION_66_2(v71, 1, v79);
      if (v58)
      {
        outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v71, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
        v60 = v87;
      }

      else
      {
        v101 = v60;
        v102 = &protocol witness table for MessageCenterEvent;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
        outlined init with copy of MessageCenterEvent(v70, boxed_opaque_existential_1);
        OUTLINED_FUNCTION_80_1();
        AsyncStream.Continuation.yield(_:)();
        OUTLINED_FUNCTION_13_4();
        (*(v81 + 8))(v71, v79);
      }

      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
      OUTLINED_FUNCTION_35_2(v82);
      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v60, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
      ObjectType = swift_getObjectType();
      v101 = &type metadata for MessageCenterDevice;
      v102 = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
      OUTLINED_FUNCTION_107_0();
      v100[0] = swift_allocObject();
      outlined init with copy of MessageCenterDevice(v89, v100[0] + 16);
      (*(v85 + 8))(v1, v75, v103, v100, ObjectType);
      swift_unknownObjectRelease();
      outlined destroy of MessageCenterEvent(v70);
      __swift_destroy_boxed_opaque_existential_0(v100);
      __swift_destroy_boxed_opaque_existential_0(v103);
    }

    else
    {
      v94 = v34;
      v95 = v35;
      swift_endAccess();
      type metadata accessor for MessageCenterMessage();
      swift_allocObject();
      v43 = MessageCenterMessage.init()();
      OUTLINED_FUNCTION_0_32();
      v46 = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(v44, v45);
      v47 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
      v48 = OUTLINED_FUNCTION_60(&type metadata for MessageCenterError, v47);
      OUTLINED_FUNCTION_18_0(v49, 1);
      OUTLINED_FUNCTION_116_0();
      v50 = v90;
      Date.init()();
      v51 = v34[10];
      *(v50 + v51) = mach_absolute_time();
      *v50 = v43;
      *(v50 + 8) = 2;
      v52 = (v50 + v34[7]);
      *v52 = v1;
      v52[1] = v46;
      *(v50 + v34[8]) = v48;
      v53 = v50 + v34[9];
      *v53 = v33;
      *(v53 + 8) = 0;
      v54 = v91;
      outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(v1 + OBJC_IVAR____TtC11SiriNetwork13MessageCenter_continuation, v91, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
      v56 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_66_2(v56, v57, v55);
      if (v58)
      {
        outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v54, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GSgMR);
        v34 = v92;
      }

      else
      {
        v104 = v34;
        v105 = &protocol witness table for MessageCenterEvent;
        v62 = __swift_allocate_boxed_opaque_existential_1(v103);
        outlined init with copy of MessageCenterEvent(v50, v62);
        OUTLINED_FUNCTION_80_1();
        AsyncStream.Continuation.yield(_:)();
        OUTLINED_FUNCTION_13_4();
        (*(v63 + 8))(v54, v55);
      }

      v64 = v95;
      v65 = v94;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GMR);
      OUTLINED_FUNCTION_35_2(v66);
      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v34, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMd, &_sScS12ContinuationV11YieldResultOy11SiriNetwork26MessageCenterEventProtocol_p__GSgMR);
      outlined init with copy of MessageCenterActorMessage(v4, v103);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      outlined destroy of MessageCenterActorMessage(v4);
      if (os_log_type_enabled(v67, v68))
      {
        v69 = OUTLINED_FUNCTION_55();
        v103[0] = OUTLINED_FUNCTION_54();
        *v69 = 136315138;
        *(v69 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, v103);
        _os_log_impl(&dword_223515000, v67, v68, "Received unknown type: %s", v69, 0xCu);
        OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_12();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      outlined destroy of MessageCenterEvent(v50);
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t (*protocol witness for MessageCenterProtocol.messageDelegate.modify in conformance MessageCenter(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 168);
  v3[3] = Strong;
  v3[4] = v5;
  return protocol witness for MessageCenterProtocol.messageDelegate.modify in conformance MessageCenter;
}

void MessageCenter.messageDelegate.modify()
{
  OUTLINED_FUNCTION_87_0();
  *(v2 + 168) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t (*protocol witness for MessageCenterProtocol.errorDelegate.modify in conformance MessageCenter(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 184);
  v3[3] = Strong;
  v3[4] = v5;
  return protocol witness for MessageCenterProtocol.errorDelegate.modify in conformance MessageCenter;
}

void MessageCenter.errorDelegate.modify()
{
  OUTLINED_FUNCTION_87_0();
  *(v2 + 184) = v3;
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

uint64_t protocol witness for MessageCenterProtocol.getActiveDevices() in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for MessageCenterProtocol.getActiveDevices() in conformance MessageCenter;

  return MessageCenter.getActiveDevices()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74_1();

  return v4(v3);
}

uint64_t protocol witness for MessageCenterProtocol.start() in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.start()();
}

uint64_t protocol witness for MessageCenterProtocol.register(_:) in conformance MessageCenter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.register(_:)(a1, a2);
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:) in conformance MessageCenter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return specialized MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:)(a1, a2, a3);
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:timeout:) in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return MessageCenter.sendMessage(_:toSiriSharedUserId:timeout:)();
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:toPersona:) in conformance MessageCenter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return specialized MessageCenterProtocol.sendMessage(_:toPersona:)(a1, a2, a3);
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:toPersona:timeout:) in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.sendMessage(_:toPersona:timeout:)();
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:to:) in conformance MessageCenter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return specialized MessageCenterProtocol.sendMessage(_:to:)(a1, a2);
}

uint64_t protocol witness for MessageCenterProtocol.sendMessage(_:to:timeout:) in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.sendMessage(_:to:timeout:)();
}

uint64_t protocol witness for MessageCenterProtocol.reset() in conformance MessageCenter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenter.reset()();
}

uint64_t protocol witness for MessageCenterProtocol.setMessageDelegate(_:) in conformance MessageCenter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return MessageCenter.setMessageDelegate(_:)(a1, a2);
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v3 = String.subscript.getter();

    return v3;
  }

  return result;
}

uint64_t specialized MessageCenterNWActorSystemProtocol.invalidateMessageCenterActor(_:)(uint64_t a1)
{
  outlined init with copy of UMUserPersonProtocol(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
  type metadata accessor for MessageCenterActor(0);
  result = swift_dynamicCast();
  if (result)
  {
    lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor);
    NWActorSystem.invalidateActor<A>(_:)();
  }

  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
}

{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void closure #1 in OSLogArguments.append(_:)()
{
  OUTLINED_FUNCTION_13_3();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_2_19();
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys11AnyHashableVypGMd, &_ss17_NativeDictionaryVys11AnyHashableVypGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_16_8();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  v16 = *v4;
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_0((v16[7] + 32 * v12));
    v17 = OUTLINED_FUNCTION_14_3();

    return outlined init with take of Any(v17, v18);
  }

  else
  {
    outlined init with copy of AnyHashable(a2, v20);
    return specialized _NativeDictionary._insert(at:key:value:)(v12, v20, a1, v16);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_13_3();
  specialized __RawDictionaryStorage.find<A>(_:)(v9);
  OUTLINED_FUNCTION_2_19();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt32VySbcGMd, &_ss17_NativeDictionaryVys6UInt32VySbcGMR);
  if (OUTLINED_FUNCTION_28_4())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a3);
    OUTLINED_FUNCTION_16_8();
    if (!v12)
    {
      goto LABEL_14;
    }

    v7 = v11;
  }

  if (v6)
  {
    v13 = (*(*v4 + 56) + 16 * v7);
    *v13 = v5;
    v13[1] = v3;
    OUTLINED_FUNCTION_106_0();
  }

  else
  {
    OUTLINED_FUNCTION_106_0();

    return specialized _NativeDictionary._insert(at:key:value:)(v16, v17, v18, v19, v20);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = OUTLINED_FUNCTION_78_0(a1, a2, a3);
  specialized __RawDictionaryStorage.find<A>(_:)(v14, v15, v16, v17);
  OUTLINED_FUNCTION_2_19();
  if (v20)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v18;
  v22 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy11SiriNetwork17MessageCenterUserVAC0eF22EndpointBrowseProtocol_pGMd, &_ss17_NativeDictionaryVy11SiriNetwork17MessageCenterUserVAC0eF22EndpointBrowseProtocol_pGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a7 & 1, v7))
  {
    goto LABEL_5;
  }

  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5, a6);
  if ((v22 & 1) != (v24 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v21 = v23;
LABEL_5:
  v25 = *v7;
  if (v22)
  {
    v26 = (v25[7] + 16 * v21);
    *v26 = a1;
    v26[1] = a2;

    swift_unknownObjectRelease();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v21, a3, a4, a5, a6, a1, a2, v25);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS11SiriNetwork23MessageCenterMessagable_pXpGMd, &_ss17_NativeDictionaryVySS11SiriNetwork23MessageCenterMessagable_pXpGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v20;
LABEL_5:
  v22 = *v6;
  if (v19)
  {
    v23 = (v22[7] + 16 * v18);
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v18, a3, a4, a1, a2, v22);
  }
}

uint64_t type metadata accessor for MessageCenter(uint64_t a1)
{
  result = type metadata singleton initialization cache for MessageCenter;
  if (!type metadata singleton initialization cache for MessageCenter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of MessageCenterEvent(uint64_t a1)
{
  v2 = type metadata accessor for MessageCenterEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of MessageCenterEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageCenterEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AsyncStream<MessageCenterEventProtocol>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13_4();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MessageCenter.MessageCenterApplicationType and conformance MessageCenter.MessageCenterApplicationType()
{
  result = lazy protocol witness table cache variable for type MessageCenter.MessageCenterApplicationType and conformance MessageCenter.MessageCenterApplicationType;
  if (!lazy protocol witness table cache variable for type MessageCenter.MessageCenterApplicationType and conformance MessageCenter.MessageCenterApplicationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenter.MessageCenterApplicationType and conformance MessageCenter.MessageCenterApplicationType);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for MessageCenter(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(&lazy protocol witness table cache variable for type MessageCenter and conformance MessageCenter, type metadata accessor for MessageCenter);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of MessageCenterProtocol.getActiveDevices()()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_10_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_33(v1);
  v3 = OUTLINED_FUNCTION_75_1();

  return v4(v3);
}

uint64_t dispatch thunk of MessageCenterProtocol.start()()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_10_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_33(v1);
  v3 = OUTLINED_FUNCTION_75_1();

  return v4(v3);
}

uint64_t dispatch thunk of MessageCenterProtocol.register(_:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_10_6();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_34(v4);
  *v5 = v6;
  v5[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  v7 = OUTLINED_FUNCTION_7_14();

  return v8(v7);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:)()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_9();
  v18 = OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4) + 96;
  OUTLINED_FUNCTION_57_0();
  v19 = v5 + *v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_34(v6);
  *v7 = v8;
  v7[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_26_3();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:toSiriSharedUserId:timeout:)()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_10_6();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_34(v5);
  *v6 = v7;
  v6[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_8_11();
  v9.n128_f64[0] = OUTLINED_FUNCTION_83_0();

  return v8(v9);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:toPersona:)()
{
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_9();
  v18 = OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4) + 112;
  OUTLINED_FUNCTION_57_0();
  v19 = v5 + *v5;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_34(v6);
  *v7 = v8;
  v7[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_26_3();

  return v14(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:toPersona:timeout:)()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_70_1(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_10_6();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_34(v5);
  *v6 = v7;
  v6[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  OUTLINED_FUNCTION_8_11();
  v9.n128_f64[0] = OUTLINED_FUNCTION_83_0();

  return v8(v9);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:to:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_10_6();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_34(v4);
  *v5 = v6;
  v5[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);
  v7 = OUTLINED_FUNCTION_7_14();

  return v8(v7);
}

uint64_t dispatch thunk of MessageCenterProtocol.sendMessage(_:to:timeout:)()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_57_0();
  v16 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_34(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_33(v12);
  v14.n128_u64[0] = v7;

  return v16(v9, v5, v3, v1, v14);
}

uint64_t dispatch thunk of MessageCenterProtocol.reset()()
{
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_10_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_33(v1);
  v3 = OUTLINED_FUNCTION_75_1();

  return v4(v3);
}

uint64_t dispatch thunk of MessageCenterProtocol.setMessageDelegate(_:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_5(v0, v1, v2, v3);
  OUTLINED_FUNCTION_10_6();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_34(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();
  v7 = OUTLINED_FUNCTION_7_14();

  return v8(v7);
}

void type metadata completion function for MessageCenter(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AsyncStream<MessageCenterEventProtocol>?(319, &lazy cache variable for type metadata for AsyncStream<MessageCenterEventProtocol>?, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AsyncStream<MessageCenterEventProtocol>?(319, &lazy cache variable for type metadata for AsyncStream<MessageCenterEventProtocol>.Continuation?, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMd, &_sScS12ContinuationVy11SiriNetwork26MessageCenterEventProtocol_p_GMR);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for AsyncStream<MessageCenterEventProtocol>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_53_2();
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MessageCenter.MessageCenterApplicationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  OUTLINED_FUNCTION_2_19();
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_91_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_28_4())
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    OUTLINED_FUNCTION_16_8();
    if (!v11)
    {
      goto LABEL_14;
    }

    v5 = v10;
  }

  v12 = *v3;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_0((v12[7] + 32 * v5));
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_106_0();

    outlined init with take of Any(v13, v14);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v5, a2, a3, a1, v12);
    OUTLINED_FUNCTION_106_0();
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 4 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 32 * result);
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v8[3] = a5;
  v9 = (a8[7] + 16 * result);
  *v9 = a6;
  v9[1] = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x223DE38F0);
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t partial apply for closure #1 in MessageCenter.sendMessage(_:to:for:timeout:)()
{
  OUTLINED_FUNCTION_29();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_34(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return closure #1 in MessageCenter.sendMessage(_:to:for:timeout:)(v2, v3, v4, v0 + 32, v0 + 72, v0 + 152);
}

uint64_t lazy protocol witness table accessor for type MessageCenter and conformance MessageCenter(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_53_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of AsyncStream<MessageCenterEventProtocol>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_14_3();
  v6(v5);
  return a2;
}

uint64_t outlined init with take of (stream: AsyncStream<MessageCenterEventProtocol>, continuation: AsyncStream<MessageCenterEventProtocol>.Continuation)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMd, &_sScSy11SiriNetwork26MessageCenterEventProtocol_pG6stream_ScS12ContinuationVyAaB_p_G12continuationtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_69_1(uint64_t a1)
{

  return AsyncStream.Continuation.yield(_:)();
}

uint64_t OUTLINED_FUNCTION_94_0(uint64_t a1)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_95_0()
{

  return specialized __RawDictionaryStorage.find<A>(_:)(v1, v0);
}

double OUTLINED_FUNCTION_96_0()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_98_0()
{

  return outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v0 + 240, v1, v2);
}

uint64_t OUTLINED_FUNCTION_121_0(uint64_t a1)
{
  *(v1 + 160) = a1;

  return outlined init with copy of MessageCenterDevice(v1 + 16, a1 + 16);
}

unint64_t OUTLINED_FUNCTION_122_0(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v4 = a1;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v3, va);
}

uint64_t MessageCenterActorMessage.description.getter()
{
  v1 = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  MEMORY[0x223DE2180](0xD000000000000022, 0x80000002235F83E0);
  MEMORY[0x223DE2180](*v0, v0[1]);
  MEMORY[0x223DE2180](0x30203A444958202CLL, 0xE900000000000078);
  v2 = v0[9];
  if (v2)
  {
    v3 = v0[8];
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v1 = v0[9];
  }

  MEMORY[0x223DE2180](v3, v1);

  MEMORY[0x223DE2180](0x203A657A6973202CLL, 0xE800000000000000);
  MEMORY[0x223DE13E0](v0[2], v0[3]);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223DE2180](v4);

  MEMORY[0x223DE2180](0x3E736574796220, 0xE700000000000000);
  return 0;
}

uint64_t MessageCenterActorMessage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1635017060 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000002235F8410 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F4D656372756F73 && a2 == 0xEB000000006C6564;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 6580600 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

Swift::Int MessageCenterActorMessage.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE2980](a1);
  return Hasher._finalize()();
}

unint64_t MessageCenterActorMessage.CodingKeys.stringValue.getter(char a1)
{
  result = 0x546567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 1635017060;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x6F4D656372756F73;
      break;
    case 4:
      result = 6580600;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MessageCenterActorMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11SiriNetwork018MessageCenterActorF0V10CodingKeys33_D9C04E9CC21025E21BD60B12D3E19094LLOGMd, &_ss22KeyedEncodingContainerVy11SiriNetwork018MessageCenterActorF0V10CodingKeys33_D9C04E9CC21025E21BD60B12D3E19094LLOGMR);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  OUTLINED_FUNCTION_6_17();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v15 = v14;
    v13[23] = 1;
    outlined init with copy of Data(&v15, v13);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v14, *(&v14 + 1));
    LOBYTE(v14) = 2;
    OUTLINED_FUNCTION_6_17();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 3;
    OUTLINED_FUNCTION_6_17();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 4;
    OUTLINED_FUNCTION_6_17();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void *MessageCenterActorMessage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11SiriNetwork018MessageCenterActorF0V10CodingKeys33_D9C04E9CC21025E21BD60B12D3E19094LLOGMd, &_ss22KeyedDecodingContainerVy11SiriNetwork018MessageCenterActorF0V10CodingKeys33_D9C04E9CC21025E21BD60B12D3E19094LLOGMR);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34) = 0;
  OUTLINED_FUNCTION_19_5();
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v12;
  LOBYTE(__src[0]) = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v34;
  v31 = v35;
  LOBYTE(v34) = 2;
  OUTLINED_FUNCTION_19_5();
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v13;
  LOBYTE(v34) = 3;
  OUTLINED_FUNCTION_19_5();
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v14;
  v44 = 4;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v7 + 8))(v10, v5);
  __src[0] = v11;
  __src[1] = v32;
  v18 = v30;
  v19 = v31;
  __src[2] = v30;
  __src[3] = v31;
  v20 = v29;
  __src[4] = v27;
  __src[5] = v29;
  OUTLINED_FUNCTION_22_6();
  __src[6] = v22;
  __src[7] = v21;
  __src[8] = v15;
  __src[9] = v17;
  outlined init with copy of MessageCenterActorMessage(__src, &v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34 = v11;
  v35 = v32;
  v36 = v18;
  v37 = v19;
  v38 = v27;
  v39 = v20;
  OUTLINED_FUNCTION_22_6();
  v40 = v24;
  v41 = v23;
  v42 = v15;
  v43 = v17;
  outlined destroy of MessageCenterActorMessage(&v34);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageCenterActorMessage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageCenterActorMessage.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MessageCenterActorMessage.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = MessageCenterActorMessage.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageCenterActorMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageCenterActorMessage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance MessageCenterActorMessage@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = MessageCenterActorMessage.init(from:)(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

uint64_t MessageCenterActorWrapper.sendMessage(_:from:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenterActorWrapper.sendMessage(_:from:), 0);
}

uint64_t MessageCenterActorWrapper.sendMessage(_:from:)()
{
  v1 = v0[9];
  v2 = type metadata accessor for MessageCenterActorWrapper(0);
  outlined init with copy of MessageCenterActorProtocol?(v1 + *(v2 + 20), (v0 + 2));
  if (v0[5])
  {
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v8 = (*(v3 + 16) + **(v3 + 16));
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = MessageCenterActorWrapper.sendMessage(_:from:);
    v5 = OUTLINED_FUNCTION_90(v0[7]);

    return v8(v5);
  }

  else
  {
    outlined destroy of MessageCenterActorProtocol?((v0 + 2));
    OUTLINED_FUNCTION_26_4();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = MessageCenterActorWrapper.sendMessage(_:from:);
  }

  else
  {
    v7 = MessageCenterActorWrapper.sendMessage(_:from:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_26_4();

  return v1();
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_6_3();

  return v1();
}

uint64_t MessageCenterActorWrapper.hash(into:)(uint64_t a1)
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_3_16();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v1, v2, MEMORY[0x277CC9600]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int MessageCenterActorWrapper.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_3_16();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v0, v1, MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for MessageCenterActorProtocol.sendMessage(_:from:) in conformance MessageCenterActorWrapper(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return MessageCenterActorWrapper.sendMessage(_:from:)(a1, a2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterActorWrapper(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_3_16();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v1, v2, MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MessageCenterActor.init(actorSystem:handler:)(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = type metadata accessor for NWActorID();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_actorSystem;
  *(v2 + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_actorSystem) = a1;
  type metadata accessor for MessageCenterActor(0);
  v18 = a1;
  type metadata accessor for NWActorSystem();
  OUTLINED_FUNCTION_2_20();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v10, v11, MEMORY[0x277CD8E38]);
  OUTLINED_FUNCTION_0_33();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v12, v13, &protocol conformance descriptor for MessageCenterActor);

  OUTLINED_FUNCTION_21_5();
  dispatch thunk of DistributedActorSystem.assignID<A>(_:)();
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_id, v8, v16);
  *(v2 + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_handler) = v17;
  v18 = *(v2 + v9);

  OUTLINED_FUNCTION_21_5();
  dispatch thunk of DistributedActorSystem.actorReady<A>(_:)();

  return v2;
}

uint64_t MessageCenterActor.sendMessage(_:from:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = type metadata accessor for RemoteCallTarget();
  v1[26] = v4;
  OUTLINED_FUNCTION_15(v4);
  v1[27] = v5;
  v1[28] = OUTLINED_FUNCTION_68();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Distributed18RemoteCallArgumentVy11SiriNetwork18MessageCenterActorCGMd, &_s11Distributed18RemoteCallArgumentVy11SiriNetwork18MessageCenterActorCGMR);
  v1[29] = v6;
  OUTLINED_FUNCTION_15(v6);
  v1[30] = v7;
  v1[31] = OUTLINED_FUNCTION_68();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Distributed18RemoteCallArgumentVy11SiriNetwork018MessageCenterActorG0VGMd, &_s11Distributed18RemoteCallArgumentVy11SiriNetwork018MessageCenterActorG0VGMR);
  v1[32] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[33] = v9;
  v1[34] = OUTLINED_FUNCTION_68();
  v10 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[35] = v10;
  OUTLINED_FUNCTION_15(v10);
  v1[36] = v11;
  v1[37] = OUTLINED_FUNCTION_68();

  return MEMORY[0x2822009F8](MessageCenterActor.sendMessage(_:from:), 0, 0);
}

{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[23];
    NWActorSystem.makeInvocationEncoder()();
    memcpy(v0 + 2, v1, 0x50uLL);
    outlined init with copy of MessageCenterActorMessage(v1, (v0 + 12));
    RemoteCallArgument.init(label:name:value:)();
    lazy protocol witness table accessor for type MessageCenterActorMessage and conformance MessageCenterActorMessage();
    lazy protocol witness table accessor for type MessageCenterActorMessage and conformance MessageCenterActorMessage();
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v0[22] = v0[24];
    type metadata accessor for MessageCenterActor(0);

    RemoteCallArgument.init(label:name:value:)();
    lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor, &protocol conformance descriptor for MessageCenterActor);
    lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor, &protocol conformance descriptor for MessageCenterActor);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v7)
    {
      v9 = v0[33];
      v8 = v0[34];
      v10 = v0[32];
      (*(v0[30] + 8))(v0[31], v0[29]);
      (*(v9 + 8))(v8, v10);
      v11 = OUTLINED_FUNCTION_41_0();
      v12(v11);

      OUTLINED_FUNCTION_6_3();
      OUTLINED_FUNCTION_25_4();

      __asm { BRAA            X1, X16 }
    }

    MEMORY[0x223DE15D0](0xD000000000000046, 0x80000002235F2D60);
    v15 = swift_task_alloc();
    v0[38] = v15;
    OUTLINED_FUNCTION_0_33();
    lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v16, v17, &protocol conformance descriptor for MessageCenterActor);
    *v15 = v0;
    v15[1] = MessageCenterActor.sendMessage(_:from:);
    OUTLINED_FUNCTION_25_4();

    return MEMORY[0x282125BC8]();
  }

  else
  {
    v2 = swift_task_alloc();
    v0[40] = v2;
    *v2 = v0;
    v2[1] = MessageCenterActor.sendMessage(_:from:);
    OUTLINED_FUNCTION_90(v0[23]);
    OUTLINED_FUNCTION_25_4();

    return MessageCenterActor.sendMessage(_:from:)(v3, v4);
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 312) = v0;

  if (v0)
  {
    v7 = MessageCenterActor.sendMessage(_:from:);
  }

  else
  {
    v7 = MessageCenterActor.sendMessage(_:from:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

{
  OUTLINED_FUNCTION_7_0();
  v0[5] = *(v0[4] + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_handler);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = MessageCenterActor.sendMessage(_:from:);
  v2 = OUTLINED_FUNCTION_90(v0[2]);

  return MessageCenterActorHandler.handleMessage(_:from:)(v2, v3);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_7();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = *(v3 + 32);

    return MEMORY[0x2822009F8](MessageCenterActor.sendMessage(_:from:), v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_6_3();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_6_3();

  return v0();
}

{
  outlined init with copy of MessageCenterActorProtocol?(v0[9], (v0 + 2));
  if (v0[5])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
    type metadata accessor for MessageCenterActor(0);
    if (swift_dynamicCast())
    {
      v0[11] = v0[7];
      v1 = swift_task_alloc();
      v0[12] = v1;
      *v1 = v0;
      v1[1] = MessageCenterActor.sendMessage(_:from:);
      OUTLINED_FUNCTION_90(v0[8]);

      return MessageCenterActor.sendMessage(_:from:)();
    }
  }

  else
  {
    outlined destroy of MessageCenterActorProtocol?((v0 + 2));
  }

  lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
  swift_allocError();
  *v3 = 1;
  *(v3 + 8) = 8;
  swift_willThrow();
  OUTLINED_FUNCTION_6_3();

  return v4();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    v7 = MessageCenterActor.sendMessage(_:from:);
  }

  else
  {
    v7 = MessageCenterActor.sendMessage(_:from:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_26_4();

  return v0();
}

{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_6_3();

  return v0();
}

uint64_t MessageCenterActor.sendMessage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_63();
  v18 = OUTLINED_FUNCTION_17_7();
  v19(v18);
  (*(v17 + 8))(v14, v15);
  (*(v16 + 8))(v12, v13);
  v20 = OUTLINED_FUNCTION_41_0();
  v21(v20);

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_63_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_63();
  v18 = OUTLINED_FUNCTION_17_7();
  v19(v18);
  (*(v17 + 8))(v14, v15);
  (*(v16 + 8))(v12, v13);
  v20 = OUTLINED_FUNCTION_41_0();
  v21(v20);

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_63_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_11_0();
  v14 = v13[7];
  v15 = v13[6];
  v16 = v13[5];
  v17 = v13[4];
  v18 = v13[3];
  v19 = v13[2];
  v20 = *v12;
  OUTLINED_FUNCTION_5_1();
  *v21 = v20;

  (*(v18 + 8))(v17, v19);
  (*(v15 + 8))(v14, v16);

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_63_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t MessageCenterActor.sendMessage(_:from:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = MessageCenterActor.sendMessage(_:from:);

  return MessageCenterActor.sendMessage(_:from:)();
}

uint64_t MessageCenterActor.sendMessage(_:from:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenterActor.sendMessage(_:from:), v2);
}

{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenterActor.sendMessage(_:from:), 0);
}

unint64_t lazy protocol witness table accessor for type MessageCenterActorMessage and conformance MessageCenterActorMessage()
{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage and conformance MessageCenterActorMessage);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of MessageCenterActorDelegate.didReceiveMesage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_6(a1, a2, a3, a4);
  v7 = swift_task_alloc();
  *(v4 + 88) = v6;
  *(v4 + 96) = v7;
  *(v4 + 16) = v14;
  *(v4 + 32) = v13;
  *(v4 + 48) = v12;
  *(v4 + 64) = v11;
  *(v4 + 80) = v5;
  *v7 = v4;
  v8 = OUTLINED_FUNCTION_16_9(v7, v4 + 16);

  return v9(v8);
}

uint64_t dispatch thunk of MessageCenterActorDelegate.didReceiveMesage(_:from:)()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  OUTLINED_FUNCTION_6_3();

  return v3();
}

uint64_t dispatch thunk of MessageCenterActorProtocol.sendMessage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_6(a1, a2, a3, a4);
  v7 = swift_task_alloc();
  *(v4 + 88) = v6;
  *(v4 + 96) = v7;
  *(v4 + 16) = v14;
  *(v4 + 32) = v13;
  *(v4 + 48) = v12;
  *(v4 + 64) = v11;
  *(v4 + 80) = v5;
  *v7 = v4;
  v8 = OUTLINED_FUNCTION_16_9(v7, v4 + 16);

  return v9(v8);
}

uint64_t static MessageCenterActor.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MessageCenterActor(0);
  type metadata accessor for NWActorSystem();
  OUTLINED_FUNCTION_2_20();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v5, v6, MEMORY[0x277CD8E38]);
  OUTLINED_FUNCTION_0_33();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v7, v8, &protocol conformance descriptor for MessageCenterActor);
  v9 = dispatch thunk of DistributedActorSystem.resolve<A>(id:as:)();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_id;
    type metadata accessor for NWActorID();
    OUTLINED_FUNCTION_71();
    (*(v12 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_actorSystem) = a2;
  }

  return v10;
}

uint64_t MessageCenterActor.deinit()
{
  v1 = OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_id;
  type metadata accessor for NWActorSystem();
  OUTLINED_FUNCTION_2_20();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v2, v3, MEMORY[0x277CD8E38]);
  dispatch thunk of DistributedActorSystem.resignID(_:)();
  type metadata accessor for NWActorID();
  OUTLINED_FUNCTION_71();
  (*(v4 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterActor.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_id;
    type metadata accessor for NWActorID();
    OUTLINED_FUNCTION_71();
    (*(v2 + 8))(v0 + v1);

    swift_defaultActor_destroy();
  }

  else
  {
    MessageCenterActor.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata completion function for MessageCenterActor(uint64_t a1)
{
  result = type metadata accessor for NWActorID();
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

Swift::Int MessageCenterActor.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for MessageCenterActor(0);
  OUTLINED_FUNCTION_0_33();
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v0, v1, &protocol conformance descriptor for MessageCenterActor);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MessageCenterActor.unownedExecutor.getter()
{
  if ((__isLocalActor(_:)() & 1) == 0)
  {
    type metadata accessor for MessageCenterActor(0);
    OUTLINED_FUNCTION_0_33();
    lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v1, v2, &protocol conformance descriptor for MessageCenterActor);
    OUTLINED_FUNCTION_41_0();
    return buildDefaultDistributedRemoteActorExecutor<A>(_:)();
  }

  return v0;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MessageCenterActor@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MessageCenterActor(0);
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor, &protocol conformance descriptor for MessageCenterActor);
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type NWActorID and conformance NWActorID, MEMORY[0x277CD9070], MEMORY[0x277CD9088]);
  result = DistributedActor<>.init(from:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MessageCenterActor(uint64_t a1)
{
  type metadata accessor for MessageCenterActor(0);
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor, &protocol conformance descriptor for MessageCenterActor);
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type NWActorID and conformance NWActorID, MEMORY[0x277CD9070], MEMORY[0x277CD9078]);
  return DistributedActor<>.encode(to:)();
}

uint64_t protocol witness for MessageCenterActorProtocol.sendMessage(_:from:) in conformance MessageCenterActor(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return MessageCenterActor.sendMessage(_:from:)(a1, a2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MessageCenterActor(uint64_t a1)
{
  type metadata accessor for MessageCenterActor(0);
  lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor, &protocol conformance descriptor for MessageCenterActor);
  return DistributedActor.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MessageCenterActor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  type metadata accessor for MessageCenterActor(0);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance MessageCenterActor@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11SiriNetwork18MessageCenterActor_id;
  v5 = type metadata accessor for NWActorID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MessageCenterActor(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for MessageCenterActor(0);
  v5 = lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor, &protocol conformance descriptor for MessageCenterActor);

  return MEMORY[0x2821FF4E0](v2, v3, v4, v5);
}

uint64_t MessageCenterActorHandler.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  swift_defaultActor_initialize();
  *(v3 + 120) = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorHandler_logger;
  if (one-time initialization token for messageCenterActor != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = __swift_project_value_buffer(v9, static Logger.messageCenterActor);
  (*(*(v9 - 8) + 16))(v3 + v8, v10, v9);
  *(v3 + 120) = a2;
  swift_unknownObjectWeakAssign();
  v11 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v11);
  type metadata accessor for AsyncSequentialExecutor(0);
  swift_allocObject();
  v12 = AsyncSequentialExecutor.init(label:priority:)(0xD000000000000012, 0x80000002235F2E20, v7);
  swift_unknownObjectRelease();
  *(v3 + 128) = v12;
  return v3;
}

uint64_t MessageCenterActorHandler.handleMessage(_:from:)(uint64_t a1, uint64_t a2)
{
  v3[51] = a2;
  v3[52] = v2;
  v3[50] = a1;
  return OUTLINED_FUNCTION_1_0(MessageCenterActorHandler.handleMessage(_:from:), v2);
}

void MessageCenterActorHandler.handleMessage(_:from:)()
{
  v1 = *(v0 + 400);
  outlined init with copy of MessageCenterActorMessage(v1, v0 + 16);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of MessageCenterActorMessage(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 400);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    v7 = MessageCenterActorMessage.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v22);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 32), *(v4 + 40), &v22);
    _os_log_impl(&dword_223515000, v2, v3, "actor received %s from IDS %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE38F0](v6, -1, -1);
    MEMORY[0x223DE38F0](v5, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(v0 + 408);
    v13 = *(v0 + 400);
    v14 = *(*(v0 + 416) + 120);
    *(v0 + 184) = type metadata accessor for MessageCenterActor(0);
    OUTLINED_FUNCTION_0_33();
    v17 = lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(v15, v16, &protocol conformance descriptor for MessageCenterActor);
    *(v0 + 80) = 0u;
    *(v0 + 192) = v17;
    *(v0 + 160) = v12;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 384) = *(v13 + 32);
    *(v0 + 16) = *(v13 + 32);
    v18 = *(v13 + 56);
    *(v0 + 32) = *(v13 + 48);
    *(v0 + 40) = v18;

    outlined init with copy of String(v0 + 384, v0 + 304);

    outlined destroy of MessageCenterActorProtocol?(v0 + 80);
    outlined init with take of MessageCenterDeviceProtocol((v0 + 160), v0 + 80);
    outlined init with copy of MessageCenterDevice(v0 + 16, v0 + 160);
    v19 = swift_allocObject();
    v19[2] = v11;
    v19[3] = v14;
    memcpy(v19 + 4, v13, 0x50uLL);
    memcpy(v19 + 14, (v0 + 160), 0x90uLL);
    outlined init with copy of MessageCenterActorMessage(v13, v0 + 304);
    swift_unknownObjectRetain();
    AsyncSequentialExecutor.submit(taskName:task:)(0x6F6D796E6F6E613CLL, 0xEB000000003E7375, &async function pointer to partial apply for closure #1 in MessageCenterActorHandler.handleMessage(_:from:), v19);

    swift_unknownObjectRelease();
    outlined destroy of MessageCenterDevice(v0 + 16);
  }

  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_25_4();

  __asm { BRAA            X1, X16 }
}

uint64_t closure #1 in MessageCenterActorHandler.handleMessage(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in MessageCenterActorHandler.handleMessage(_:from:), a1, 0);
}

uint64_t closure #1 in MessageCenterActorHandler.handleMessage(_:from:)()
{
  OUTLINED_FUNCTION_7_0();
  MessageCenter.didReceiveMessage(_:from:)();
  OUTLINED_FUNCTION_26_4();

  return v0();
}

uint64_t MessageCenterActorHandler.deinit()
{
  outlined destroy of weak ConnectionProviderDelegate?(v0 + 112);

  v1 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorHandler_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_71();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterActorHandler.__deallocating_deinit()
{
  MessageCenterActorHandler.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata completion function for MessageCenterActorHandler(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void type metadata completion function for MessageCenterActorWrapper(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MessageCenterActorProtocol?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for MessageCenterActorProtocol?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MessageCenterActorProtocol?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for MessageCenterActorProtocol?);
    }
  }
}

uint64_t getEnumTagSinglePayload for MessageCenterActorMessage(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for MessageCenterActorMessage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for MessageCenterActorWrapper(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActorWrapper and conformance MessageCenterActorWrapper, type metadata accessor for MessageCenterActorWrapper, &protocol conformance descriptor for MessageCenterActorWrapper);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MessageCenterActor(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MessageCenterActor and conformance MessageCenterActor(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor, &protocol conformance descriptor for MessageCenterActor);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys;
  if (!lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorMessage.CodingKeys and conformance MessageCenterActorMessage.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined init with copy of MessageCenterActorProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MessageCenterActorProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in MessageCenterActorHandler.handleMessage(_:from:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return closure #1 in MessageCenterActorHandler.handleMessage(_:from:)(v2, v3, v0 + 32, v0 + 112);
}

uint64_t getEnumTagSinglePayload for MessageCenterActorMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessageCenterActorMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of MessageCenterActorListenerPublisherDelegate.didReceiveMessage(_:from:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1[1];
  v17 = *a1;
  v14 = a1[3];
  v15 = a1[2];
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  OUTLINED_FUNCTION_57_0();
  v18 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v4 + 88) = v9;
  *(v4 + 96) = v11;
  *(v4 + 16) = v17;
  *(v4 + 32) = v16;
  *(v4 + 48) = v15;
  *(v4 + 64) = v14;
  *(v4 + 80) = v8;
  *v11 = v4;
  OUTLINED_FUNCTION_33(v11);

  return v18(v12, a2, a3, a4);
}

uint64_t dispatch thunk of MessageCenterActorListenerPublisherProtocol.publish()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_57_0();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_34(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_33(v6);

  return v9(a1, a2);
}

uint64_t dispatch thunk of MessageCenterActorListenerPublisherProtocol.setDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_57_0();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_34(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_33(v10);

  return v13(a1, a2, a3, a4);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    OUTLINED_FUNCTION_13_4();
    (*(v13 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = OUTLINED_FUNCTION_10_8();

      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(a3, &_sScPSgMd, &_sScPSgMR);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return OUTLINED_FUNCTION_10_8();
}

void closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.deviceModelProvider()
{
  v0 = MEMORY[0x223DE2070](0x536C65646F4D5748, 0xEA00000000007274);
  v1 = MGGetStringAnswer();

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void *closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.idsIdentifierProvider()
{
  result = IDSCopyLocalDeviceUniqueID();
  if (result)
  {
    v1 = result;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.nwSystemProvider@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for actorSystem != -1)
  {
    swift_once();
  }

  return outlined init with copy of UMUserPersonProtocol(static MessageCenter.actorSystem, a1);
}

double MessageCenterActorListenerPublisher.sourceActor.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[14];
  if (v4)
  {
    v5 = v1[15];

    v4(v6);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v4, v5);
  }

  else
  {
    v8 = v1[20];

    v8(v21, v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork34MessageCenterNWActorSystemProtocol_pMd, &_s11SiriNetwork34MessageCenterNWActorSystemProtocol_pMR);
    type metadata accessor for NWActorSystem();
    if (swift_dynamicCast())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v11 = v2[23];
      type metadata accessor for MessageCenterActorHandler(0);
      swift_allocObject();
      v12 = MessageCenterActorHandler.init(delegate:)(Strong, v11);
      v13 = type metadata accessor for MessageCenterActor(0);
      swift_allocObject();

      v14 = MessageCenterActor.init(actorSystem:handler:)(v20, v12);
      v15 = swift_allocObject();
      *(v15 + 16) = partial apply for closure #1 in MessageCenterActorListenerPublisher.sourceActor.getter;
      *(v15 + 24) = v14;
      v16 = v2[14];
      v17 = v2[15];
      v2[14] = partial apply for thunk for @escaping @callee_guaranteed () -> (@owned MessageCenterActor);
      v2[15] = v15;
      swift_retain_n();
      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v16, v17);
      *(a1 + 24) = v13;
      OUTLINED_FUNCTION_0_34();
      *(a1 + 32) = lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(v18, v19, &protocol conformance descriptor for MessageCenterActor);

      *a1 = v14;
    }

    else
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@owned MessageCenterActor)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1();
  a2[3] = type metadata accessor for MessageCenterActor(0);
  result = lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(&lazy protocol witness table cache variable for type MessageCenterActor and conformance MessageCenterActor, type metadata accessor for MessageCenterActor, &protocol conformance descriptor for MessageCenterActor);
  a2[4] = result;
  *a2 = v3;
  return result;
}

uint64_t MessageCenterActorListenerPublisher.deviceModel.getter()
{
  v1 = *(v0 + 128);

  v3 = v1(v2);

  return v3;
}

uint64_t MessageCenterActorListenerPublisher.localIDSIdentifier.getter()
{
  v1 = *(v0 + 144);

  v3 = v1(v2);

  return v3;
}

uint64_t MessageCenterActorListenerPublisher.nwActorSystem.getter()
{
  v1 = *(v0 + 160);

  v1(v2);
}

uint64_t MessageCenterActorListenerPublisher.publish()()
{
  OUTLINED_FUNCTION_7_0();
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](MessageCenterActorListenerPublisher.publish(), v0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(&lazy protocol witness table cache variable for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher, type metadata accessor for MessageCenterActorListenerPublisher, &protocol conformance descriptor for MessageCenterActorListenerPublisher);
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in MessageCenterActorListenerPublisher.publish(), v5);

  OUTLINED_FUNCTION_6_3();

  return v6();
}

uint64_t closure #1 in MessageCenterActorListenerPublisher.publish()(uint64_t a1)
{
  v15 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x80000002235F81F0, &v14);
    _os_log_impl(&dword_223515000, v2, v3, "publishing actor with service name %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DE38F0](v5, -1, -1);
    MEMORY[0x223DE38F0](v4, -1, -1);
  }

  MessageCenterActorListenerPublisher.sourceActor.getter(v1 + 56);
  if (*(v1 + 80))
  {
    outlined init with take of MessageCenterDeviceProtocol((v1 + 56), v1 + 16);
    MessageCenterActorListenerPublisher.nwActorSystem.getter();
    __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
    v6 = swift_task_alloc();
    *(v1 + 144) = v6;
    *v6 = v1;
    v6[1] = closure #1 in MessageCenterActorListenerPublisher.publish();

    return NWActorSystem.publishActor(_:)(v1 + 16);
  }

  else
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v1 + 56, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_223515000, v8, v9, "no source actor", v10, 2u);
      MEMORY[0x223DE38F0](v10, -1, -1);
    }

    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    v11 = swift_allocError();
    OUTLINED_FUNCTION_4_17(v11, v12);
    OUTLINED_FUNCTION_6_3();

    return v13();
  }
}

uint64_t closure #1 in MessageCenterActorListenerPublisher.publish()()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = closure #1 in MessageCenterActorListenerPublisher.publish();
  }

  else
  {
    v4 = closure #1 in MessageCenterActorListenerPublisher.publish();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  OUTLINED_FUNCTION_6_3();

  return v1();
}

{
  OUTLINED_FUNCTION_7_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  OUTLINED_FUNCTION_6_3();

  return v1();
}

uint64_t MessageCenterActorListenerPublisher.deinit()
{
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(*(v0 + 112), *(v0 + 120));

  outlined destroy of weak ConnectionProviderDelegate?(v0 + 176);
  v1 = OBJC_IVAR____TtC11SiriNetwork35MessageCenterActorListenerPublisher_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_4();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterActorListenerPublisher.__deallocating_deinit()
{
  MessageCenterActorListenerPublisher.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MessageCenterActorListenerPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for MessageCenterActorListenerPublisher;
  if (!type metadata singleton initialization cache for MessageCenterActorListenerPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MessageCenterActorListenerPublisher(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MessageCenterNWActorSystemProtocol.publishActor(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_57_0();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_34(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_33(v8);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MessageCenterNWActorSystemProtocol.publish<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_57_0();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_34(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_33(v12);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t instantiation function for generic protocol witness table for MessageCenterActorListenerPublisher(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(&lazy protocol witness table cache variable for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher, type metadata accessor for MessageCenterActorListenerPublisher, &protocol conformance descriptor for MessageCenterActorListenerPublisher);
  *(a1 + 8) = result;
  return result;
}

char *MessageCenterActorListenerPublisher.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 14) = 0;
  *(v0 + 15) = 0;
  *(v0 + 16) = closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.deviceModelProvider;
  *(v0 + 17) = 0;
  *(v0 + 18) = closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.idsIdentifierProvider;
  *(v0 + 19) = 0;
  *(v0 + 20) = closure #1 in variable initialization expression of MessageCenterActorListenerPublisher.nwSystemProvider;
  *(v0 + 21) = 0;
  *(v0 + 23) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC11SiriNetwork35MessageCenterActorListenerPublisher_logger;
  if (one-time initialization token for messageCenterActor != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.messageCenterActor);
  OUTLINED_FUNCTION_13_4();
  (*(v3 + 16))(&v0[v1]);
  return v0;
}

uint64_t partial apply for closure #1 in MessageCenterActorListenerPublisher.publish()(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_34(v6);
  *v7 = v8;
  v7[1] = dispatch thunk of MessageCenterEndpointBrowseDelegate.browser(_:didLoseEndpoint:);

  return closure #1 in MessageCenterActorListenerPublisher.publish()(a1, v3, v4, v5);
}

uint64_t NWActorSystem.publishActor(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](NWActorSystem.publishActor(_:), 0, 0);
}

uint64_t NWActorSystem.publishActor(_:)()
{
  outlined init with copy of UMUserPersonProtocol(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork26MessageCenterActorProtocol_pMd, &_s11SiriNetwork26MessageCenterActorProtocol_pMR);
  v1 = type metadata accessor for MessageCenterActor(0);
  if (swift_dynamicCast())
  {
    v2 = v0[7];
    v0[10] = v2;
    v3 = swift_task_alloc();
    v0[11] = v3;
    OUTLINED_FUNCTION_0_34();
    v6 = lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(v4, v5, &protocol conformance descriptor for MessageCenterActor);
    *v3 = v0;
    v3[1] = NWActorSystem.publishActor(_:);

    return MEMORY[0x282125BF8](v2, v1, v6);
  }

  else
  {
    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_4_17(v7, v8);
    OUTLINED_FUNCTION_6_3();

    return v9();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 96) = v0;

  if (v0)
  {
    v5 = NWActorSystem.publishActor(_:);
  }

  else
  {
    v5 = NWActorSystem.publishActor(_:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_6_3();

  return v0();
}

{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_6_3();

  return v0();
}

uint64_t lazy protocol witness table accessor for type MessageCenterActorListenerPublisher and conformance MessageCenterActorListenerPublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of MessageCenterActorBrowseDelegate.didFindDevice(_:for:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_28(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_57_0();
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_33(v7);
  v8 = OUTLINED_FUNCTION_15_6();

  return v10(v8);
}

uint64_t dispatch thunk of MessageCenterActorBrowseDelegate.didLoseDevice(_:for:)()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_28(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_57_0();
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_33(v7);
  v8 = OUTLINED_FUNCTION_15_6();

  return v10(v8);
}

SiriNetwork::MessageCenterActorBrowserType_optional __swiftcall MessageCenterActorBrowserType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MessageCenterActorBrowserType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriNetwork_MessageCenterActorBrowserType_universalBrowser;
  }

  else
  {
    v4.value = SiriNetwork_MessageCenterActorBrowserType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t MessageCenterActorBrowserType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6563697665444941;
  }
}

SiriNetwork::MessageCenterActorBrowserType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance MessageCenterActorBrowserType@<W0>(Swift::String *a1@<X0>, SiriNetwork::MessageCenterActorBrowserType_optional *a2@<X8>)
{
  result.value = MessageCenterActorBrowserType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MessageCenterActorBrowserType@<X0>(uint64_t *a1@<X8>)
{
  result = MessageCenterActorBrowserType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t MessageCenterActorBrowser.init(browserType:usePersona:)(char a1, char a2)
{
  swift_defaultActor_initialize();
  type metadata accessor for MessageCenterUserManager();
  swift_allocObject();
  v5 = MessageCenterUserManager.init(userProvider:)(0, 0);
  v6 = MEMORY[0x277D84FA0];
  *(v2 + 112) = v5;
  *(v2 + 120) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork35MessageCenterEndpointBrowseProtocol_pMd, &_s11SiriNetwork35MessageCenterEndpointBrowseProtocol_pMR);
  lazy protocol witness table accessor for type MessageCenterUser and conformance MessageCenterUser();
  *(v2 + 128) = Dictionary.init(dictionaryLiteral:)();
  *(v2 + 144) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;
  if (one-time initialization token for messageCenterActor != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.messageCenterActor);
  OUTLINED_FUNCTION_13_4();
  (*(v9 + 16))(v2 + v7);
  *(v2 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_started) = 0;
  v10 = (v2 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_networkDeviceBrowserProvider);
  *v10 = 0;
  v10[1] = 0;
  *(v2 + 152) = a1 & 1;
  *(v2 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_usePersona) = a2 & 1;
  v11 = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints) = MEMORY[0x277D84F98];
  *(v2 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeIneligibleEndpoints) = v11;
  *(v2 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors) = v11;
  return v2;
}

uint64_t MessageCenterActorBrowser.addActiveEndpoint(_:to:)()
{
  OUTLINED_FUNCTION_41_5();
  v2 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;
  OUTLINED_FUNCTION_57_3();

  OUTLINED_FUNCTION_2_13();
  v3 = specialized Dictionary.subscript.getter();

  if (v3)
  {
    outlined init with copy of MessageCenterEndpoint(v1, v75);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_37_3(isUniquelyReferenced_nonNull_native, v5, v6, v7, v8, v9, v10, v11, v49, v53, v57, v61, v65, v69, v71, v73);
    v12 = outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v76, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    OUTLINED_FUNCTION_22_7(v12, v13, v14, v15, v16, v17, v18, v19, v50, v54, v58, v62, v66);

    v20 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_8_12(v20);
    OUTLINED_FUNCTION_36_4(v21, v22, v23, v24, v25, v26, v27, v28, v51, v55, v59, v63, v67, v70, v72, v74, v75[0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork21MessageCenterEndpointVGtGMd, &_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork21MessageCenterEndpointVGtGMR);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_53_3(inited, xmmword_2235EFCB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11SiriNetwork21MessageCenterEndpointVGMd, &_sShy11SiriNetwork21MessageCenterEndpointVGMR);
    *(v0 + v2) = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21MessageCenterEndpointVGMR);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_2235EFCB0;
    outlined init with copy of MessageCenterEndpoint(v1, v31 + 32);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork21MessageCenterEndpointV_Tt0g5(v31);
    OUTLINED_FUNCTION_22_7(v32, v33, v34, v35, v36, v37, v38, v39, v49, v53, v57, v61, v65);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_8_12(v40);
    return OUTLINED_FUNCTION_36_4(v41, v42, v43, v44, v45, v46, v47, v48, v52, v56, v60, v64, v68, v69, v71, v73, v75[0]);
  }
}

uint64_t MessageCenterActorBrowser.addActiveIneligibleEndpoint(_:to:)()
{
  OUTLINED_FUNCTION_41_5();
  v2 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeIneligibleEndpoints;
  OUTLINED_FUNCTION_57_3();

  OUTLINED_FUNCTION_2_13();
  v3 = specialized Dictionary.subscript.getter();

  if (v3)
  {
    outlined init with copy of MessageCenterEndpoint(v1, v45);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_37_3(isUniquelyReferenced_nonNull_native, v5, v6, v7, v8, v9, v10, v11, v32, v34, v36, v38, v40, v42, v43, v44);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v46, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork21MessageCenterEndpointVGtGMd, &_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork21MessageCenterEndpointVGtGMR);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_53_3(inited, xmmword_2235EFCB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11SiriNetwork21MessageCenterEndpointVGMd, &_sShy11SiriNetwork21MessageCenterEndpointVGMR);
    *(v0 + v2) = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork21MessageCenterEndpointVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork21MessageCenterEndpointVGMR);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_2235EFCB0;
    outlined init with copy of MessageCenterEndpoint(v1, v14 + 32);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork21MessageCenterEndpointV_Tt0g5(v14);
    OUTLINED_FUNCTION_22_7(v15, v16, v17, v18, v19, v20, v21, v22, v32, v34, v36, v38, v40);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_8_12(v23);
    return OUTLINED_FUNCTION_36_4(v24, v25, v26, v27, v28, v29, v30, v31, v33, v35, v37, v39, v41, v42, v43, v44, v45[0]);
  }
}

uint64_t MessageCenterActorBrowser.addActiveActor(_:to:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v1[29] = type metadata accessor for MessageCenterActorWrapper(0);
  OUTLINED_FUNCTION_57_0();
  v1[30] = v5;
  v1[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork25MessageCenterActorWrapperVSgMd, &_s11SiriNetwork25MessageCenterActorWrapperVSgMR);
  v1[32] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t MessageCenterActorBrowser.addActiveActor(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_43();
  v13 = *(v12 + 216);
  v14 = *(v12 + 224);
  v15 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors;
  swift_beginAccess();

  OUTLINED_FUNCTION_14_3();
  specialized Dictionary.subscript.getter();
  OUTLINED_FUNCTION_52();

  if (v13)
  {
    v17 = *(v12 + 248);
    v16 = *(v12 + 256);
    v18 = *(v12 + 232);
    v20 = *(v12 + 208);
    v19 = *(v12 + 216);
    outlined init with copy of UMUserPersonProtocol(*(v12 + 200), v12 + 112);
    UUID.init()();
    v21 = v17 + *(v18 + 20);
    *(v21 + 32) = 0;
    *v21 = 0u;
    *(v21 + 16) = 0u;
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v21, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
    outlined init with take of RPCOspreyConnectionProtocol((v12 + 112), v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v13;
    specialized _NativeSet.update(with:isUnique:)(v17, isUniquelyReferenced_nonNull_native, v16);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v16, &_s11SiriNetwork25MessageCenterActorWrapperVSgMd, &_s11SiriNetwork25MessageCenterActorWrapperVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork25MessageCenterActorWrapperVGtGMd, &_ss23_ContiguousArrayStorageCySS_Shy11SiriNetwork25MessageCenterActorWrapperVGtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2235EFCB0;
    *(inited + 32) = v20;
    *(inited + 40) = v19;
    *(inited + 48) = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy11SiriNetwork25MessageCenterActorWrapperVGMd, &_sShy11SiriNetwork25MessageCenterActorWrapperVGMR);
    *(v14 + v15) = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v25 = *(v12 + 232);
    v24 = *(v12 + 240);
    v26 = *(v12 + 216);
    v27 = *(v12 + 200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriNetwork25MessageCenterActorWrapperVGMd, &_ss23_ContiguousArrayStorageCy11SiriNetwork25MessageCenterActorWrapperVGMR);
    v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2235EFCB0;
    v30 = v29 + v28;
    outlined init with copy of UMUserPersonProtocol(v27, v12 + 72);
    UUID.init()();
    v31 = v30 + *(v25 + 20);
    *(v31 + 32) = 0;
    *v31 = 0u;
    *(v31 + 16) = 0u;
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v31, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
    outlined init with take of RPCOspreyConnectionProtocol((v12 + 72), v31);
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11SiriNetwork25MessageCenterActorWrapperV_Tt0g5();
    OUTLINED_FUNCTION_27_3(v14 + v15, v12 + 176);
    swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v14 + v15);
    v32 = OUTLINED_FUNCTION_5_2();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v33, v26, v34);
    *(v14 + v15) = v44;
    swift_endAccess();
  }

  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_31_5();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v44, a11, a12);
}

uint64_t MessageCenterActorBrowser.start()()
{
  *(v1 + 16) = v0;
  return OUTLINED_FUNCTION_1_0(MessageCenterActorBrowser.start(), v0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_started) == 1)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_57_1(v3))
    {
      v4 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_85(v4);
      OUTLINED_FUNCTION_32_3(&dword_223515000, v5, v6, "ActorBrowser has already been started");
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_6_3();

    return v7();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_started) = 1;
    v9 = (v1 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_networkDeviceBrowserProvider);
    if (!*v9)
    {
      v10 = *(v0 + 16);
      v11 = v9[1];
      *v9 = partial apply for closure #1 in MessageCenterActorBrowser.start();
      v9[1] = v10;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(0, v11);
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_57_1(v13))
    {
      v14 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_85(v14);
      OUTLINED_FUNCTION_32_3(&dword_223515000, v15, v16, "setting up user manager");
      OUTLINED_FUNCTION_12();
    }

    v17 = *(v0 + 16);

    *(v0 + 24) = *(v17 + 112);

    v18 = OUTLINED_FUNCTION_14_3();

    return MEMORY[0x2822009F8](v18, v19, 0);
  }
}

{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 16);
  *(*(v0 + 24) + 136) = &protocol witness table for MessageCenterActorBrowser;
  swift_unknownObjectWeakAssign();

  return MEMORY[0x2822009F8](MessageCenterActorBrowser.start(), v1, 0);
}

{
  OUTLINED_FUNCTION_7_0();
  v0[4] = *(v0[2] + 112);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_33(v1);

  return MessageCenterUserManager.start()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  OUTLINED_FUNCTION_6_3();

  return v3();
}

uint64_t closure #1 in MessageCenterActorBrowser.start()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MessageCenterEndpointBrowser(0);
  v6 = swift_allocObject();

  v7 = specialized MessageCenterEndpointBrowser.init(persona:delegate:usePersona:browserProvider:)(a1, a2, a3, 1, 0, 0, v6);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type MessageCenterEndpointBrowser and conformance MessageCenterEndpointBrowser, type metadata accessor for MessageCenterEndpointBrowser, &protocol conformance descriptor for MessageCenterEndpointBrowser);
  return v7;
}

uint64_t closure #1 in MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:)(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 24))(v4, v5);
  if (v7)
  {
    if (v2 == v6 && v7 == v3)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t MessageCenterActorBrowser.didUpdateUsers()()
{
  *(v1 + 80) = v0;
  return OUTLINED_FUNCTION_1_0(MessageCenterActorBrowser.didUpdateUsers(), v0);
}

{
  OUTLINED_FUNCTION_29();
  v0[11] = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_57_1(v2))
  {
    v3 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_85(v3);
    OUTLINED_FUNCTION_32_3(&dword_223515000, v4, v5, "Users updated. Re-fetching list");
    OUTLINED_FUNCTION_12();
  }

  v6 = v0[10];

  v0[12] = *(v6 + 112);

  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_33(v7);

  return MessageCenterUserManager.allUsers()();
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v2 = v1;
  *(v1 + 112) = v3;
  *(v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = MessageCenterActorBrowser.didUpdateUsers();
  }

  else
  {
    v6 = *(v2 + 80);

    v5 = MessageCenterActorBrowser.didUpdateUsers();
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 112);
  v2 = *(*(v0 + 80) + 120);

  v4 = specialized Set.subtracting(_:)(v3, v1);
  *(v0 + 128) = v4;

  v5 = *(v4 + 32);
  *(v0 + 224) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 56);
  if (v8)
  {
    v9 = 0;
    v10 = *(v0 + 128);
LABEL_8:
    *(v0 + 136) = v8;
    *(v0 + 144) = v9;
    v13 = OUTLINED_FUNCTION_5_16(v10, v9);
    OUTLINED_FUNCTION_18_6(v13, v14);

    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v16 = OUTLINED_FUNCTION_3_17(v15);

    return MessageCenterActorBrowser.startDeviceBrowserForUser(_:)(v16);
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v7) >> 6) - 1;
    v10 = *(v0 + 128);
    while (v12 != v11)
    {
      v9 = v11 + 1;
      v8 = *(v10 + 8 * v11++ + 64);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_38_3(v10);
    v18 = *(v2 + 120);

    v19 = OUTLINED_FUNCTION_41_0();
    v21 = specialized Set.subtracting(_:)(v19, v20);
    *(v0 + 176) = v21;
    *(v0 + 225) = *(v21 + 32);
    OUTLINED_FUNCTION_7_15();
    v24 = v23 & v22;
    if (v24)
    {
      v25 = 0;
LABEL_16:
      *(v0 + 184) = v24;
      *(v0 + 192) = v25;
      OUTLINED_FUNCTION_2_21((v25 << 11) | (32 * __clz(__rbit64(v24))));

      v29 = swift_task_alloc();
      *(v0 + 216) = v29;
      *v29 = v0;
      v30 = OUTLINED_FUNCTION_1_17(v29);

      return MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)(v30);
    }

    else
    {
      OUTLINED_FUNCTION_34_4();
      while (v28 != v27)
      {
        OUTLINED_FUNCTION_52_4();
        if (v24)
        {
          goto LABEL_16;
        }
      }

      OUTLINED_FUNCTION_38_3(v26);
      *(v18 + 120) = v4;

      OUTLINED_FUNCTION_6_3();

      return v31();
    }
  }
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  return MEMORY[0x2822009F8](MessageCenterActorBrowser.didUpdateUsers(), v2, 0);
}

{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_0();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  return MEMORY[0x2822009F8](MessageCenterActorBrowser.didUpdateUsers(), v2, 0);
}

{
  v1 = *(v0 + 120);

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 120);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_55();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_223515000, v3, v4, "Failed to re-fetch users %@", v7, 0xCu);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_11();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_3();

  return v11();
}

void MessageCenterActorBrowser.didUpdateUsers()()
{
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 144);
  v4 = (*(v2 + 136) - 1) & *(v2 + 136);
  if (v4)
  {
    v5 = *(v2 + 128);
LABEL_7:
    *(v2 + 136) = v4;
    *(v2 + 144) = v3;
    v7 = OUTLINED_FUNCTION_5_16(v5, v3);
    OUTLINED_FUNCTION_18_6(v7, v8);

    v9 = swift_task_alloc();
    *(v2 + 168) = v9;
    *v9 = v2;
    v10 = OUTLINED_FUNCTION_3_17(v9);

    MessageCenterActorBrowser.startDeviceBrowserForUser(_:)(v10);
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return;
      }

      v5 = *(v2 + 128);
      if (v6 >= (((1 << *(v2 + 224)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 56);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_38_3(v5);
    v11 = *(v0 + 120);

    v12 = OUTLINED_FUNCTION_41_0();
    v14 = specialized Set.subtracting(_:)(v12, v13);
    *(v2 + 176) = v14;
    *(v2 + 225) = *(v14 + 32);
    OUTLINED_FUNCTION_7_15();
    v17 = v16 & v15;
    if (v17)
    {
      v18 = 0;
LABEL_15:
      *(v2 + 184) = v17;
      *(v2 + 192) = v18;
      OUTLINED_FUNCTION_2_21((v18 << 11) | (32 * __clz(__rbit64(v17))));

      v22 = swift_task_alloc();
      *(v2 + 216) = v22;
      *v22 = v2;
      v23 = OUTLINED_FUNCTION_1_17(v22);

      MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)(v23);
    }

    else
    {
      OUTLINED_FUNCTION_34_4();
      while (v21 != v20)
      {
        OUTLINED_FUNCTION_52_4();
        if (v17)
        {
          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_38_3(v19);
      *(v11 + 120) = v1;

      OUTLINED_FUNCTION_6_3();

      v24();
    }
  }
}

{
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 192);
  v4 = (*(v2 + 184) - 1) & *(v2 + 184);
  if (v4)
  {
LABEL_6:
    *(v2 + 184) = v4;
    *(v2 + 192) = v3;
    OUTLINED_FUNCTION_2_21((v3 << 11) | (32 * __clz(__rbit64(v4))));

    v7 = swift_task_alloc();
    *(v2 + 216) = v7;
    *v7 = v2;
    v8 = OUTLINED_FUNCTION_1_17(v7);

    MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)(v8);
  }

  else
  {
    while (1)
    {
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        return;
      }

      v6 = *(v2 + 176);
      if (v5 >= (((1 << *(v2 + 225)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v6 + 8 * v5 + 56);
      ++v3;
      if (v4)
      {
        v3 = v5;
        goto LABEL_6;
      }
    }

    OUTLINED_FUNCTION_38_3(v6);
    *(v0 + 120) = v1;

    OUTLINED_FUNCTION_6_3();

    v9();
  }
}

Swift::Int specialized Set.subtracting(_:)(uint64_t a1, Swift::Int a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    specialized Set._subtract<A>(_:)(a1);
    return a2;
  }

  else
  {

    return specialized _NativeSet.subtracting<A>(_:)(a1, a2);
  }
}

uint64_t MessageCenterActorBrowser.startDeviceBrowserForUser(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  *(v2 + 56) = *(a1 + 1);
  *(v2 + 72) = a1[3];
  return OUTLINED_FUNCTION_1_0(MessageCenterActorBrowser.startDeviceBrowserForUser(_:), v1);
}

uint64_t MessageCenterActorBrowser.startDeviceBrowserForUser(_:)()
{
  v32 = v0;
  v0[10] = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[9];
    v28 = v0[8];
    v5 = v0[6];
    v4 = v0[7];
    v6 = OUTLINED_FUNCTION_55();
    v7 = OUTLINED_FUNCTION_54();
    v29 = v7;
    *v6 = 136315138;

    _StringGuts.grow(_:)(30);

    OUTLINED_FUNCTION_40_4();
    v30 = v8;
    v31 = 0xEE00203A44496972;
    MEMORY[0x223DE2180](v5, v4);
    v9 = OUTLINED_FUNCTION_4_18();
    MEMORY[0x223DE2180](v9);
    MEMORY[0x223DE2180](v28, v3);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, 0xEE00203A44496972, &v29);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_21_6(&dword_223515000, v11, v12, "Starting device browser for user %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_11();
  }

  v13 = v0[5] + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_networkDeviceBrowserProvider;
  v14 = *v13;
  if (*v13)
  {
    v16 = v0[8];
    v15 = v0[9];
    v17 = *(v13 + 8);

    v0[11] = v14(v16, v15);
    v0[12] = v18;
    outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v14, v17);
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](MessageCenterActorBrowser.startDeviceBrowserForUser(_:), v20, v19);
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_57_1(v22))
    {
      v23 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_85(v23);
      OUTLINED_FUNCTION_32_3(&dword_223515000, v24, v25, "Failed to start a device browser because we're missing a browser provider");
      OUTLINED_FUNCTION_12();
    }

    OUTLINED_FUNCTION_6_3();

    return v26();
  }
}

{
  OUTLINED_FUNCTION_29();
  MessageCenterEndpointBrowser.start()();
  *(v0 + 104) = v1;
  v2 = *(v0 + 40);
  if (v1)
  {
    v3 = MessageCenterActorBrowser.startDeviceBrowserForUser(_:);
  }

  else
  {
    v3 = MessageCenterActorBrowser.startDeviceBrowserForUser(_:);
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t MessageCenterActorBrowser.startDeviceBrowserForUser(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_43();
  v14 = v12[11];
  v13 = v12[12];
  v16 = v12[8];
  v15 = v12[9];
  v18 = v12[6];
  v17 = v12[7];
  v19 = v12[5];
  OUTLINED_FUNCTION_27_3(v19 + 128, (v12 + 2));
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v19 + 128);
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v13, v18, v17, v16, v15, isUniquelyReferenced_nonNull_native);
  *(v19 + 128) = v30;
  swift_endAccess();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_31_5();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, a11, a12);
}

uint64_t MessageCenterActorBrowser.startDeviceBrowserForUser(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_43();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v12 + 104);
  if (v15)
  {
    v17 = OUTLINED_FUNCTION_55();
    a10 = OUTLINED_FUNCTION_54();
    *(v17 + 4) = OUTLINED_FUNCTION_55_2(4.8149e-34, a10, v18);
    OUTLINED_FUNCTION_54_3(&dword_223515000, v19, v20, "Failed to start device browser for person %s");
    __swift_destroy_boxed_opaque_existential_0(a10);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_31_5();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = *(a1 + 1);
  *(v2 + 96) = a1[3];
  return OUTLINED_FUNCTION_1_0(MessageCenterActorBrowser.stopDeviceBrowserForUser(_:), v1);
}

uint64_t MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)()
{
  v41 = v0;
  v0[13] = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  os_log_type_enabled(v2, v3);
  OUTLINED_FUNCTION_43_3();
  if (v4)
  {
    v5 = v0[12];
    v6 = v0[10];
    v36 = v0[9];
    v37 = v0[11];
    v7 = OUTLINED_FUNCTION_55();
    v8 = OUTLINED_FUNCTION_54();
    v39 = v8;
    OUTLINED_FUNCTION_56_3(4.8149e-34);

    v1 = 0x6953646572616853;
    _StringGuts.grow(_:)(30);

    qmemcpy(v40, "SharedSiSharedSi", sizeof(v40));
    OUTLINED_FUNCTION_43_3();
    MEMORY[0x223DE2180](v36, v6);
    v9 = OUTLINED_FUNCTION_4_18();
    MEMORY[0x223DE2180](v9);
    MEMORY[0x223DE2180](v37, v5);

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6953646572616853, 0x6953646572616853uLL, &v39);

    *(v7 + 4) = v10;
    OUTLINED_FUNCTION_21_6(&dword_223515000, v11, v12, "Stopping device browser for user %s");
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_11();
  }

  v13 = v0[11];
  v14 = v0[12];
  v15 = v0[8];
  OUTLINED_FUNCTION_40_1(v15 + 128, (v0 + 2));
  v16 = *(v15 + 128);

  v17 = OUTLINED_FUNCTION_5_2();
  v19 = specialized Dictionary.subscript.getter(v17, v18, v13, v14, v16);

  v0[14] = v19;
  if (v19)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](MessageCenterActorBrowser.stopDeviceBrowserForUser(_:), v21, v20);
  }

  else
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[12];
      v38 = v0[11];
      v26 = v0[9];
      v25 = v0[10];
      v27 = OUTLINED_FUNCTION_55();
      v28 = OUTLINED_FUNCTION_54();
      v39 = v28;
      v40[0] = 0;
      OUTLINED_FUNCTION_56_3(4.8149e-34);

      _StringGuts.grow(_:)(30);

      OUTLINED_FUNCTION_40_4();
      v40[0] = v29;
      v40[1] = v1;
      MEMORY[0x223DE2180](v26, v25);
      v30 = OUTLINED_FUNCTION_4_18();
      MEMORY[0x223DE2180](v30);
      MEMORY[0x223DE2180](v38, v24);

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40[0], v40[1], &v39);

      *(v27 + 4) = v31;
      OUTLINED_FUNCTION_21_6(&dword_223515000, v32, v33, "No browser found for user %s");
      __swift_destroy_boxed_opaque_existential_0(v28);
      OUTLINED_FUNCTION_7_13();
      OUTLINED_FUNCTION_11();
    }

    OUTLINED_FUNCTION_6_3();

    return v34();
  }
}

{
  OUTLINED_FUNCTION_29();
  MessageCenterEndpointBrowser.stop()();
  *(v0 + 120) = v1;
  v2 = *(v0 + 64);
  if (v1)
  {
    v3 = MessageCenterActorBrowser.stopDeviceBrowserForUser(_:);
  }

  else
  {
    v3 = MessageCenterActorBrowser.stopDeviceBrowserForUser(_:);
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

{
  OUTLINED_FUNCTION_27_3(*(v0 + 64) + 128, v0 + 40);
  v1 = OUTLINED_FUNCTION_15_6();
  specialized Dictionary._Variant.removeValue(forKey:)(v1, v2, v3, v4);
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_6_3();

  return v5();
}

uint64_t MessageCenterActorBrowser.stopDeviceBrowserForUser(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_43();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v12 + 120);
  if (v15)
  {
    v17 = OUTLINED_FUNCTION_55();
    a10 = OUTLINED_FUNCTION_54();
    *(v17 + 4) = OUTLINED_FUNCTION_55_2(4.8149e-34, a10, v18);
    OUTLINED_FUNCTION_54_3(&dword_223515000, v19, v20, "Failed to stop device browser for person %s");
    __swift_destroy_boxed_opaque_existential_0(a10);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();
  }

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_31_5();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t MessageCenterActorBrowser.createActorIfNeeded(for:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[58] = v2;
  v1[59] = v0;
  v1[56] = v3;
  v1[57] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork25MessageCenterActorWrapperVSgMd, &_s11SiriNetwork25MessageCenterActorWrapperVSgMR);
  v1[60] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

{
  OUTLINED_FUNCTION_21();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_55();
    v10 = OUTLINED_FUNCTION_54();
    *v3 = 136315138;
    v4 = OUTLINED_FUNCTION_5_2();
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, v6);
    OUTLINED_FUNCTION_51_2(&dword_223515000, v7, v2, "Actor device created for persona %s");
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_13();
  }

  outlined destroy of MessageCenterEndpoint(v0 + 56);
  outlined init with take of RPCOspreyConnectionProtocol((v0 + 296), *(v0 + 448));

  OUTLINED_FUNCTION_6_3();

  return v8();
}

void MessageCenterActorBrowser.createActorIfNeeded(for:)()
{
  v52 = v3;
  OUTLINED_FUNCTION_46_3();
  v4 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors;
  OUTLINED_FUNCTION_40_1(v2 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors, v3 + 376);
  v5 = *(v2 + v4);

  OUTLINED_FUNCTION_14_3();
  specialized Dictionary.subscript.getter();
  OUTLINED_FUNCTION_52();

  if (!v1)
  {
    goto LABEL_4;
  }

  v5 = *(v3 + 480);
  specialized Collection.randomElement()(v1, v5);

  v0 = type metadata accessor for MessageCenterActorWrapper(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v0);
  v1 = *(v3 + 480);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(*(v3 + 480), &_s11SiriNetwork25MessageCenterActorWrapperVSgMd, &_s11SiriNetwork25MessageCenterActorWrapperVSgMR);
LABEL_4:
    *(v3 + 48) = 0;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    goto LABEL_5;
  }

  outlined init with copy of MessageCenterActorProtocol?(v1 + *(v0 + 20), v3 + 16);
  outlined destroy of MessageCenterActorWrapper(v1);
  if (*(v3 + 40))
  {
    outlined init with take of RPCOspreyConnectionProtocol((v3 + 16), *(v3 + 448));

    OUTLINED_FUNCTION_6_3();
    goto LABEL_28;
  }

LABEL_5:
  OUTLINED_FUNCTION_46_3();
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v3 + 16, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMd, &_s11SiriNetwork26MessageCenterActorProtocol_pSgMR);
  v7 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;
  OUTLINED_FUNCTION_40_1(v5 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints, v3 + 400);
  v8 = *(v5 + v7);

  OUTLINED_FUNCTION_14_3();
  specialized Dictionary.subscript.getter();
  OUTLINED_FUNCTION_52();

  if (v1)
  {
    specialized Collection.randomElement()(v1, v3 + 96);

    if (*(v3 + 120))
    {
      OUTLINED_FUNCTION_46_3();
      v9 = *(v3 + 112);
      *(v3 + 56) = *(v3 + 96);
      *(v3 + 72) = v9;
      *(v3 + 88) = *(v3 + 128);
      v10 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = v0;
      v11[4] = v1;
      v12 = *(v3 + 88);
      __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
      v13 = *(v12 + 56);

      v14 = OUTLINED_FUNCTION_14_3();
      v13(v14);

      v36 = swift_task_alloc();
      *(v3 + 488) = v36;
      *v36 = v3;
      v36[1] = MessageCenterActorBrowser.createActorIfNeeded(for:);

      MessageCenterActorBrowser.addActiveActor(_:to:)();
      return;
    }
  }

  else
  {
    *(v3 + 128) = 0;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  OUTLINED_FUNCTION_46_3();
  outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v3 + 96, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
  OUTLINED_FUNCTION_40_1(v8 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeIneligibleEndpoints, v3 + 424);

  OUTLINED_FUNCTION_14_3();
  v16 = specialized Dictionary.subscript.getter();

  if (v16)
  {
    OUTLINED_FUNCTION_7_15();
    v19 = v18 & v17;
    v21 = (63 - v20) >> 6;

    v22 = 0;
    if (!v19)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v23 = v22;
LABEL_17:
      outlined init with copy of MessageCenterEndpoint(*(v16 + 48) + 40 * (__clz(__rbit64(v19)) | (v23 << 6)), v3 + 216);
      v24 = *(v3 + 232);
      v25 = *(v3 + 248);
      *(v3 + 288) = v25;
      *(v3 + 256) = *(v3 + 216);
      *(v3 + 272) = v24;
      v26 = v25;
      __swift_project_boxed_opaque_existential_1((v3 + 256), *(v3 + 280));
      v27 = OUTLINED_FUNCTION_52();
      if (v28(v27, v26))
      {
        break;
      }

      v19 &= v19 - 1;
      outlined destroy of MessageCenterEndpoint(v3 + 256);
      v22 = v23;
      if (!v19)
      {
LABEL_14:
        while (1)
        {
          v23 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v23 >= v21)
          {

            *(v3 + 208) = 0;
            *(v3 + 176) = 0u;
            *(v3 + 192) = 0u;

            goto LABEL_22;
          }

          v19 = *(v16 + 56 + 8 * v23);
          ++v22;
          if (v19)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        return;
      }
    }

    v37 = *(v3 + 272);
    *(v3 + 176) = *(v3 + 256);
    *(v3 + 192) = v37;
    *(v3 + 208) = *(v3 + 288);

    if (!*(v3 + 200))
    {
      goto LABEL_22;
    }

    v38 = *(v3 + 192);
    *(v3 + 136) = *(v3 + 176);
    *(v3 + 152) = v38;
    *(v3 + 168) = *(v3 + 208);
    v39 = *(v3 + 160);
    v40 = *(v3 + 168);
    __swift_project_boxed_opaque_existential_1((v3 + 136), v39);
    (*(v40 + 48))(&v51, v39, v40);
    if (v51 != 2 && (v51 & 1) != 0)
    {
      outlined destroy of MessageCenterEndpoint(v3 + 136);
      goto LABEL_23;
    }

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_55();
      v44 = OUTLINED_FUNCTION_54();
      v51 = v44;
      *v43 = 136315138;
      v45 = OUTLINED_FUNCTION_5_2();
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v47);
      OUTLINED_FUNCTION_51_2(&dword_223515000, v48, v42, "Active ineligible endpoint found for persona %s with no AI capability");
      __swift_destroy_boxed_opaque_existential_0(v44);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_7_13();
    }

    v49 = lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    OUTLINED_FUNCTION_60(&type metadata for MessageCenterError, v49);
    OUTLINED_FUNCTION_18_0(v50, 11);
    swift_willThrow();
    outlined destroy of MessageCenterEndpoint(v3 + 136);
  }

  else
  {
    *(v3 + 208) = 0;
    *(v3 + 176) = 0u;
    *(v3 + 192) = 0u;
LABEL_22:
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v3 + 176, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
LABEL_23:
    lazy protocol witness table accessor for type MessageCenterError and conformance MessageCenterError();
    v29 = OUTLINED_FUNCTION_14_3();
    v31 = OUTLINED_FUNCTION_60(v29, v30);
    OUTLINED_FUNCTION_18_0(v32, 18);
    v33 = OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_60(v33, v34);
    *v35 = v31;
    *(v35 + 8) = 4;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_6_3();
LABEL_28:

  v15();
}

uint64_t specialized Collection.randomElement()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = specialized RandomNumberGenerator.next<A>(upperBound:)(v4);
    v6 = specialized Set.startIndex.getter();
    v8 = v7;
    v10 = v9;
    v11 = specialized Collection.index(_:offsetBy:)(v6, v7, v9 & 1, v5, a1);
    v13 = v12;
    v15 = v14;
    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v6, v8, v10 & 1);
    specialized Set.subscript.getter(v11, v13, a1, a2);
    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v11, v13, v15 & 1);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = type metadata accessor for MessageCenterActorWrapper(0);

  return __swift_storeEnumTagSinglePayload(a2, v16, 1, v17);
}

double specialized Collection.randomElement()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = specialized RandomNumberGenerator.next<A>(upperBound:)(v4);
    v6 = specialized Set.startIndex.getter();
    v8 = v7;
    v10 = v9;
    v11 = specialized Collection.index(_:offsetBy:)(v6, v7, v9 & 1, v5, a1);
    v13 = v12;
    v15 = v14;
    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v6, v8, v10 & 1);
    specialized Set.subscript.getter(v11, v13, a1, a2);

    outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v11, v13, v15 & 1);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a1;
  v12[6] = a3;
  v12[7] = a4;

  v13 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:), v12);
}

uint64_t closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:), 0, 0);
}

uint64_t closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:)()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_40_1(*(v0 + 48) + 16, v0 + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);

    return MessageCenterActorBrowser.handleActorInvalidation(error:for:)(v5, v3, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_6_3();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:), 0, 0);
}

{
  **(v0 + 40) = *(v0 + 80) == 0;
  OUTLINED_FUNCTION_6_3();
  return v1();
}

uint64_t closure #1 in MessageCenterActorBrowser.handleEndpointLost(_:on:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  if (v7)
  {
    if (v11)
    {
      if (v5 == v10 && v7 == v11)
      {

        v13 = 1;
      }

      else
      {
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if (!v11)
    {
      v13 = 1;
      return v13 & 1;
    }

    v13 = 0;
  }

  return v13 & 1;
}

uint64_t MessageCenterActorBrowser.handleActorInvalidation(error:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return OUTLINED_FUNCTION_1_0(MessageCenterActorBrowser.handleActorInvalidation(error:for:), v3);
}

uint64_t MessageCenterActorBrowser.handleActorInvalidation(error:for:)()
{
  OUTLINED_FUNCTION_43();
  v19 = v0;
  v1 = v0[5];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_54();
    v18 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v18);
    *(v8 + 12) = 2112;
    if (v7)
    {
      v11 = v1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v8 + 14) = v12;
    *v9 = v13;
    _os_log_impl(&dword_223515000, v3, v4, "Actor for persona %s) was invalidated with error %@", v8, 0x16u);
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_12();
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_12();
  }

  v14 = v0[7];
  v15 = v0[6];
  OUTLINED_FUNCTION_27_3(v0[8] + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors, (v0 + 2));
  specialized Dictionary._Variant.removeValue(forKey:)(v15, v14, &_ss17_NativeDictionaryVySSShy11SiriNetwork25MessageCenterActorWrapperVGGMd, &_ss17_NativeDictionaryVySSShy11SiriNetwork25MessageCenterActorWrapperVGGMR);
  swift_endAccess();

  OUTLINED_FUNCTION_6_3();

  return v16();
}

void MessageCenterActorBrowser.getActiveEndpointsDevices()()
{
  v43 = v0;
  v1 = *(v0 + 448);
  v2 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;
  OUTLINED_FUNCTION_40_1(v1 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints, v0 + 424);
  v3 = *(v1 + v2) + 64;
  OUTLINED_FUNCTION_7_15();
  v6 = v5 & v4;
  v8 = (63 - v7) >> 6;

  v10 = 0;
  v37 = MEMORY[0x277D84F98];
  v39 = v9;
  while (v6)
  {
LABEL_7:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v10 << 6);
    v14 = *(*(v9 + 56) + 8 * v13);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (*(v9 + 48) + 16 * v13);
      v17 = v16[1];
      v38 = *v16;
      *(v0 + 160) = 0;

      MEMORY[0x223DE3910](v0 + 160, 8);
      v18 = *(v0 + 160);
      v19 = (v18 * v15) >> 64;
      if (v15 > v18 * v15)
      {
        v20 = -v15 % v15;
        if (v20 > v18 * v15)
        {
          do
          {
            *(v0 + 160) = 0;
            MEMORY[0x223DE3910](v0 + 160, 8);
            v21 = *(v0 + 160);
          }

          while (v20 > v21 * v15);
          v19 = (v21 * v15) >> 64;
        }
      }

      v22 = 0;
      v23 = 1 << *(v14 + 32);
      v24 = (v23 + 63) >> 6;
      v25 = 56;
      if (v24)
      {
        while (1)
        {
          v26 = *(v14 + v25);
          if (v26)
          {
            break;
          }

          v22 -= 64;
          v25 += 8;
          if (!--v24)
          {
            goto LABEL_15;
          }
        }

        v27 = __clz(__rbit64(v26)) - v22;
      }

      else
      {
LABEL_15:
        v27 = 1 << *(v14 + 32);
      }

      v28 = specialized Collection.index(_:offsetBy:)(v27, *(v14 + 36), 0, v19, v14);
      if (v28 < 0 || v28 >= v23)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_42_1();
      v31 = !v31 || v30 == 0;
      if (v31)
      {
        goto LABEL_29;
      }

      outlined init with copy of MessageCenterEndpoint(*(v14 + 48) + 40 * v29, v0 + 16);

      v32 = *(v0 + 32);
      *(v0 + 304) = *(v0 + 16);
      *(v0 + 320) = v32;
      *(v0 + 336) = *(v0 + 48);
      v41 = 0;
      memset(v40, 0, sizeof(v40));
      v42[3] = &type metadata for MessageCenterEndpoint;
      v42[4] = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
      v42[0] = swift_allocObject();
      outlined init with copy of MessageCenterEndpoint(v0 + 304, v42[0] + 16);
      MessageCenterDevice.init(actor:endpoint:)(v40, v42, v0 + 160);
      memcpy((v0 + 16), (v0 + 160), 0x90uLL);
      *(v0 + 368) = &type metadata for MessageCenterDevice;
      *(v0 + 376) = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
      v33 = swift_allocObject();
      *(v0 + 344) = v33;
      outlined init with copy of MessageCenterDevice(v0 + 16, v33 + 16);
      outlined init with take of RPCOspreyConnectionProtocol((v0 + 344), v0 + 384);
      v34 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 384, *(v0 + 408));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42[0] = v37;
      outlined init with copy of MessageCenterDevice(v34, v0 + 160);
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 160), v38, v17, isUniquelyReferenced_nonNull_native, v42);

      outlined destroy of MessageCenterDevice(v0 + 16);
      outlined destroy of MessageCenterEndpoint(v0 + 304);
      v37 = v42[0];
      __swift_destroy_boxed_opaque_existential_0((v0 + 384));
      v9 = v39;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v11 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_7;
    }
  }

  v36 = *(v0 + 8);

  v36(v37);
}

uint64_t MessageCenterActorBrowser.getActiveActorsDevices()()
{
  OUTLINED_FUNCTION_7_0();
  v1[84] = v0;
  v1[85] = type metadata accessor for MessageCenterActorWrapper(0);
  OUTLINED_FUNCTION_57_0();
  v1[86] = v2;
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void MessageCenterActorBrowser.getActiveActorsDevices()()
{
  v68 = v0;
  v54 = (v0 + 488);
  v1 = (v0 + 664);
  v59 = *(v0 + 688);
  v60 = (v0 + 656);
  v58 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors;
  OUTLINED_FUNCTION_40_1(v2 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeActors, v0 + 608);
  v4 = *(v2 + v3);
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v4 + 64);
  v9 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_activeEndpoints;

  v56 = v9;
  v57 = v2;
  OUTLINED_FUNCTION_40_1(v2 + v9, v0 + 632);
  v10 = 0;
  v11 = (63 - v6) >> 6;
  v55 = MEMORY[0x277D84F98];
  v61 = v4;
  while (v8)
  {
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(v4 + 56) + 8 * v14);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (*(v4 + 48) + 16 * v14);
      v62 = *v17;
      v63 = v17[1];
      *v60 = 0;

      MEMORY[0x223DE3910](v60, 8);
      v18 = *v60 * v16;
      v19 = (*v60 * v16) >> 64;
      if (v16 > v18)
      {
        v20 = -v16 % v16;
        if (v20 > v18)
        {
          do
          {
            *v1 = 0;
            MEMORY[0x223DE3910](v0 + 664, 8);
          }

          while (v20 > *v1 * v16);
          v19 = (*v1 * v16) >> 64;
        }
      }

      v21 = 0;
      v22 = 1 << *(v15 + 32);
      v23 = (v22 + 63) >> 6;
      v24 = 56;
      if (v23)
      {
        while (1)
        {
          v25 = *(v15 + v24);
          if (v25)
          {
            break;
          }

          v21 -= 64;
          v24 += 8;
          if (!--v23)
          {
            goto LABEL_18;
          }
        }

        v26 = __clz(__rbit64(v25)) - v21;
      }

      else
      {
LABEL_18:
        v26 = 1 << *(v15 + 32);
      }

      v27 = specialized Collection.index(_:offsetBy:)(v26, *(v15 + 36), 0, v19, v15);
      if (v27 < 0 || v27 >= v22)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_42_1();
      v30 = !v30 || v29 == 0;
      if (v30)
      {
        goto LABEL_41;
      }

      v31 = *(v0 + 704);
      v32 = *(v0 + 696);
      outlined init with copy of MessageCenterActorWrapper(*(v15 + 48) + *(v59 + 72) * v28, v32);

      outlined init with take of MessageCenterActorWrapper(v32, v31, type metadata accessor for MessageCenterActorWrapper);
      outlined init with copy of MessageCenterActorProtocol?(v31 + *(v58 + 20), v0 + 448);
      v33 = *(v57 + v56);
      v34 = v63;
      if (*(v33 + 16))
      {

        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v62, v63);
        if (v36)
        {
          v37 = *(*(v33 + 56) + 8 * v35);

          v38 = *(v37 + 16);
          if (v38)
          {
            v39 = specialized RandomNumberGenerator.next<A>(upperBound:)(v38);
            v40 = _HashTable.startBucket.getter();
            v52 = specialized Collection.index(_:offsetBy:)(v40, *(v37 + 36), 0, v39, v37);
            v42 = v41;
            v44 = v43;
            v45 = v0 + 488;
            specialized Set.subscript.getter(v52, v41, v37, v54);

            v46 = v44 & 1;
            v34 = v63;
            outlined consume of Set<MessageCenterEndpoint>.Index._Variant(v52, v42, v46);
            if (*(v0 + 512))
            {
              *(&v66 + 1) = &type metadata for MessageCenterEndpoint;
              v67 = lazy protocol witness table accessor for type MessageCenterEndpoint and conformance MessageCenterEndpoint();
              v47 = swift_allocObject();
              *&v65 = v47;
              v48 = *(v0 + 504);
              *(v47 + 16) = *v54;
              *(v47 + 32) = v48;
              *(v47 + 48) = *(v0 + 520);
              goto LABEL_35;
            }
          }

          else
          {

            v45 = v0 + 488;
            *(v0 + 520) = 0;
            *v54 = 0u;
            *(v0 + 504) = 0u;
          }

          outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v45, &_s11SiriNetwork21MessageCenterEndpointVSgMd, &_s11SiriNetwork21MessageCenterEndpointVSgMR);
        }

        else
        {
        }
      }

      v67 = 0;
      v65 = 0u;
      v66 = 0u;
LABEL_35:
      MessageCenterDevice.init(actor:endpoint:)(v0 + 448, &v65, v0 + 160);
      v49 = *(v0 + 704);
      memcpy((v0 + 16), (v0 + 160), 0x90uLL);
      *(v0 + 552) = &type metadata for MessageCenterDevice;
      *(v0 + 560) = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
      v50 = swift_allocObject();
      *(v0 + 528) = v50;
      outlined init with copy of MessageCenterDevice(v0 + 16, v50 + 16);
      outlined init with take of RPCOspreyConnectionProtocol((v0 + 528), v0 + 568);
      v53 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 568, *(v0 + 592));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v65 = v55;
      outlined init with copy of MessageCenterDevice(v53, v0 + 304);
      v4 = v61;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)((v0 + 304), v62, v34, isUniquelyReferenced_nonNull_native, &v65);

      outlined destroy of MessageCenterDevice(v0 + 16);
      outlined destroy of MessageCenterActorWrapper(v49);
      v55 = v65;
      __swift_destroy_boxed_opaque_existential_0((v0 + 568));
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v12 >= v11)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v10;
    if (v8)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  v51 = *(v0 + 8);

  v51(v55);
}

uint64_t MessageCenterActorBrowser.deinit()
{

  outlined destroy of weak ConnectionProviderDelegate?(v0 + 136);
  v1 = OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_13_4();
  (*(v2 + 8))(v0 + v1);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(*(v0 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_networkDeviceBrowserProvider), *(v0 + OBJC_IVAR____TtC11SiriNetwork25MessageCenterActorBrowser_networkDeviceBrowserProvider + 8));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MessageCenterActorBrowser.__deallocating_deinit()
{
  MessageCenterActorBrowser.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MessageCenterActorBrowser(uint64_t a1)
{
  result = type metadata singleton initialization cache for MessageCenterActorBrowser;
  if (!type metadata singleton initialization cache for MessageCenterActorBrowser)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MessageCenterActorBrowser(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageCenterActorBrowserType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MessageCenterActorBrowserType and conformance MessageCenterActorBrowserType()
{
  result = lazy protocol witness table cache variable for type MessageCenterActorBrowserType and conformance MessageCenterActorBrowserType;
  if (!lazy protocol witness table cache variable for type MessageCenterActorBrowserType and conformance MessageCenterActorBrowserType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterActorBrowserType and conformance MessageCenterActorBrowserType);
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v4;
  v12 = *(*v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);

  v13 = *(*(v17 + 56) + 8 * v10);
  v14 = OUTLINED_FUNCTION_2_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  _NativeDictionary._delete(at:)();
  *v7 = v17;
  return v13;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v10 = *(*v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy11SiriNetwork17MessageCenterUserVAC0eF22EndpointBrowseProtocol_pGMd, &_ss17_NativeDictionaryVy11SiriNetwork17MessageCenterUserVAC0eF22EndpointBrowseProtocol_pGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);

  v11 = *(*(v13 + 56) + 16 * v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork35MessageCenterEndpointBrowseProtocol_pMd, &_s11SiriNetwork35MessageCenterEndpointBrowseProtocol_pMR);
  lazy protocol witness table accessor for type MessageCenterUser and conformance MessageCenterUser();
  _NativeDictionary._delete(at:)();
  *v5 = v13;
  return v11;
}

unint64_t lazy protocol witness table accessor for type MessageCenterUser and conformance MessageCenterUser()
{
  result = lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser;
  if (!lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser;
  if (!lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageCenterUser and conformance MessageCenterUser);
  }

  return result;
}

uint64_t specialized _NativeSet.update(with:isUnique:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v38 = a3;
  v37 = type metadata accessor for MessageCenterActorWrapper(0);
  v41 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v3;
  v7 = *v3;
  Hasher.init(_seed:)();
  v8 = type metadata accessor for UUID();
  v9 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v42 = a1;
  v36[1] = v9;
  v36[2] = v8;
  dispatch thunk of Hashable.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = ~(-1 << *(v7 + 32));
  v12 = 1;
  while (1)
  {
    v13 = v10 & v11;
    v14 = (v10 & v11) >> 6;
    v15 = 1 << (v10 & v11);
    v16 = v15 & *(v7 + 56 + 8 * v14);
    if (!v16)
    {
      break;
    }

    outlined init with copy of MessageCenterActorWrapper(*(v7 + 48) + *(v41 + 72) * v13, v6);
    v17 = static UUID.== infix(_:_:)();
    outlined destroy of MessageCenterActorWrapper(v6);
    if (v17)
    {
      v12 = 0;
      break;
    }

    v10 = v13 + 1;
  }

  v18 = *(v7 + 16);
  v19 = v18 + v12;
  if (__OFADD__(v18, v12))
  {
    __break(1u);
  }

  else
  {
    v20 = *(v7 + 24);
    v21 = v40;
    if (v20 < v19 || (v39 & 1) == 0)
    {
      if (v39)
      {
        specialized _NativeSet.resize(capacity:)();
        goto LABEL_16;
      }

      if (v20 < v19)
      {
        specialized _NativeSet.copyAndResize(capacity:)();
LABEL_16:
        v24 = *v21;
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v25 = Hasher._finalize()();
        v26 = ~(-1 << *(v24 + 32));
        while (1)
        {
          v13 = v25 & v26;
          v14 = (v25 & v26) >> 6;
          v15 = 1 << (v25 & v26);
          if ((v15 & *(v24 + 56 + 8 * v14)) == 0)
          {
            v21 = v40;
            if (v16)
            {
              goto LABEL_29;
            }

            v22 = *(v41 + 72);
            goto LABEL_22;
          }

          v23 = *(v41 + 72) * v13;
          outlined init with copy of MessageCenterActorWrapper(*(v24 + 48) + v23, v6);
          v27 = static UUID.== infix(_:_:)();
          outlined destroy of MessageCenterActorWrapper(v6);
          if (v27)
          {
            break;
          }

          v25 = v13 + 1;
        }

        v21 = v40;
        if (!v16)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      specialized _NativeSet.copy()();
    }

    v22 = *(v41 + 72);
    if (v16)
    {
      v23 = v22 * v13;
LABEL_25:
      v34 = *v21;
      v33 = v38;
      outlined init with take of MessageCenterActorWrapper(*(*v21 + 48) + v23, v38, type metadata accessor for MessageCenterActorWrapper);
      outlined init with take of MessageCenterActorWrapper(v42, *(v34 + 48) + v23, type metadata accessor for MessageCenterActorWrapper);
      v32 = 0;
      return __swift_storeEnumTagSinglePayload(v33, v32, 1, v37);
    }

LABEL_22:
    v28 = *v21;
    *(*v21 + 8 * v14 + 56) |= v15;
    outlined init with take of MessageCenterActorWrapper(v42, *(v28 + 48) + v22 * v13, type metadata accessor for MessageCenterActorWrapper);
    v29 = *(v28 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      *(v28 + 16) = v31;
      v32 = 1;
      v33 = v38;
      return __swift_storeEnumTagSinglePayload(v33, v32, 1, v37);
    }
  }

  __break(1u);
LABEL_29:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v7 = a2;
  v76 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57 = 0;
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v10 = -1 << *(a1 + 32);
  v62 = ~v10;
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = (63 - v10) >> 6;
  v70 = (a2 + 56);

  v15 = 0;
  v64 = v9;
  v63 = v13;
  v66 = v7;
  v65 = v14;
  if (!v12)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_60;
      }

      if (v17 >= v13)
      {
        goto LABEL_57;
      }

      v12 = *(v9 + 8 * v17);
      ++v16;
      if (v12)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = *(v14 + 48);
    v67 = v15;
    v20 = (v19 + ((v15 << 11) | (32 * v18)));
    v21 = *v20;
    v22 = v20[1];
    v6 = v20[2];
    v23 = v20[3];
    Hasher.init(_seed:)();

    v3 = v21;
    String.hash(into:)();
    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v7 + 32);
    v9 = v24 & ~v25;
    v5 = v9 >> 6;
    v4 = 1 << v9;
    if (((1 << v9) & v70[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_24:

    v7 = v66;
    v15 = v67;
    v14 = v65;
    v9 = v64;
    v13 = v63;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  v68 = ~v25;
  v69 = *(v66 + 48);
  while (1)
  {
    v26 = (v69 + 32 * v9);
    v27 = v26[2];
    v2 = v26[3];
    v28 = *v26 == v3 && v26[1] == v22;
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v29 = v27 == v6 && v2 == v23;
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }
    }

    v9 = (v9 + 1) & v68;
    v5 = v9 >> 6;
    v4 = 1 << v9;
    if ((v70[v9 >> 6] & (1 << v9)) == 0)
    {
      goto LABEL_24;
    }
  }

  v6 = v67;
  v73 = v62;
  v74 = v67;
  v75 = v12;
  v3 = v64;
  v2 = v65;
  v72[0] = v65;
  v72[1] = v64;

  v7 = v66;
  v31 = *(v66 + 32);
  v58 = ((1 << v31) + 63) >> 6;
  v13 = 8 * v58;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v59 = &v56;
    MEMORY[0x28223BE20](v30);
    v9 = &v56 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v70, v13);
    v32 = *(v9 + 8 * v5) & ~v4;
    v33 = *(v7 + 16);
    v61 = v9;
    *(v9 + 8 * v5) = v32;
    v34 = v33 - 1;
    v35 = v63;
LABEL_28:
    v60 = v34;
    while (v12)
    {
      v7 = v66;
LABEL_36:
      v37 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v38 = *(v2 + 48);
      v67 = v6;
      v39 = (v38 + ((v6 << 11) | (32 * v37)));
      v4 = *v39;
      v13 = v39[1];
      v40 = v39[2];
      v41 = v39[3];
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      v9 = v71;
      v42 = Hasher._finalize()();
      v43 = -1 << *(v7 + 32);
      v44 = v42 & ~v43;
      v5 = v44 >> 6;
      v45 = 1 << v44;
      if (((1 << v44) & v70[v44 >> 6]) != 0)
      {
        v68 = ~v43;
        v69 = *(v7 + 48);
        while (1)
        {
          v46 = (v69 + 32 * v44);
          v47 = v46[2];
          v9 = v46[3];
          v48 = *v46 == v4 && v46[1] == v13;
          if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v49 = v47 == v40 && v9 == v41;
            if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }

          v44 = (v44 + 1) & v68;
          v5 = v44 >> 6;
          v45 = 1 << v44;
          if ((v70[v44 >> 6] & (1 << v44)) == 0)
          {
            goto LABEL_49;
          }
        }

        v50 = v61[v5];
        v61[v5] = v50 & ~v45;
        v28 = (v50 & v45) == 0;
        v2 = v65;
        v3 = v64;
        v6 = v67;
        v35 = v63;
        if (!v28)
        {
          v34 = v60 - 1;
          if (__OFSUB__(v60, 1))
          {
            __break(1u);
          }

          if (v60 == 1)
          {

            v7 = MEMORY[0x277D84FA0];
            goto LABEL_55;
          }

          goto LABEL_28;
        }
      }

      else
      {
LABEL_49:

        v2 = v65;
        v3 = v64;
        v6 = v67;
        v35 = v63;
      }
    }

    v7 = v66;
    while (1)
    {
      v36 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v36 >= v35)
      {
        v7 = specialized _NativeSet.extractSubset(using:count:)(v61, v58, v60, v66);
        goto LABEL_55;
      }

      v12 = *(v3 + 8 * v36);
      ++v6;
      if (v12)
      {
        v6 = v36;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v52 = swift_slowAlloc();
  v53 = v57;
  v54 = specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(v52, v58, v70, v58, v7, v9, v72);
  if (!v53)
  {
    v55 = v54;

    MEMORY[0x223DE38F0](v52, -1, -1);
    v2 = v72[0];
    v62 = v73;
    v7 = v55;
LABEL_55:
    v14 = v2;
LABEL_57:
    outlined consume of Set<MessageCenterUser>.Iterator._Variant(v14);
    return v7;
  }

  result = MEMORY[0x223DE38F0](v52, -1, -1);
  __break(1u);
  return result;
}

Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v29 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v34 = a3 + 56;
  v30 = a5;
  while (2)
  {
    v28 = v6;
    do
    {
      while (1)
      {
        v7 = a5[3];
        v8 = a5[4];
        if (!v8)
        {
          v10 = a3;
          while (1)
          {
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              break;
            }

            if (v9 >= ((a5[2] + 64) >> 6))
            {
              a5[3] = v7;
              a5[4] = 0;

              return specialized _NativeSet.extractSubset(using:count:)(v29, a2, v28, a3);
            }

            v8 = *(a5[1] + 8 * v9);
            ++v7;
            if (v8)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v9 = a5[3];
        v10 = a3;
LABEL_9:
        v11 = (*(*a5 + 48) + ((v9 << 11) | (32 * __clz(__rbit64(v8)))));
        v12 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        v15 = v11[3];
        a5[3] = v9;
        a5[4] = (v8 - 1) & v8;
        Hasher.init(_seed:)();

        String.hash(into:)();
        String.hash(into:)();
        v16 = Hasher._finalize()();
        v17 = -1 << *(v10 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v34 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_22:

        a5 = v30;
      }

      v32 = ~v17;
      v33 = *(v10 + 48);
      while (1)
      {
        v21 = (v33 + 32 * v18);
        v22 = v21[2];
        v23 = v21[3];
        v24 = *v21 == v12 && v21[1] == v13;
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v25 = v22 == v14 && v23 == v15;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        v18 = (v18 + 1) & v32;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if ((*(v34 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
        {
          goto LABEL_22;
        }
      }

      a5 = v30;
      v26 = v29[v19];
      v29[v19] = v26 & ~v20;
    }

    while ((v26 & v20) == 0);
    v6 = v28 - 1;
    if (__OFSUB__(v28, 1))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    if (v28 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

Swift::Int specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(a1, a2, a5, a6, a7);

  return v12;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11SiriNetwork17MessageCenterUserVGMd, &_ss11_SetStorageCy11SiriNetwork17MessageCenterUserVGMR);
  result = static _SetStorage.allocate(capacity:)();
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
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 32 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    Hasher.init(_seed:)();

    String.hash(into:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 32 * v24);
    *v29 = v17;
    v29[1] = v18;
    v29[2] = v19;
    v29[3] = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    v10 = v32;
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
      v32 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of MessageCenterActorWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageCenterActorWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MessageCenterActorWrapper(uint64_t a1)
{
  v2 = type metadata accessor for MessageCenterActorWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x223DE3910](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x223DE3910](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized MessageCenterActorBrowser.checkDeviceForRemoteIntelligence(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33[3] = a3;
  v33[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  OUTLINED_FUNCTION_13_4();
  (*(v8 + 16))();
  if (*(a2 + 152))
  {
    v9 = 0x80000002235F64B0;
  }

  else
  {
    v9 = 0xEF726573776F7242;
  }

  if ((*(a2 + 152) & 1) != 0 || v9 != 0xEF726573776F7242)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  outlined init with copy of UMUserPersonProtocol(v33, v32);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_55();
    v15 = OUTLINED_FUNCTION_54();
    v31 = v15;
    *v14 = 136315138;
    outlined init with copy of UMUserPersonProtocol(v32, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_0(v32);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v31);

    *(v14 + 4) = v19;
    OUTLINED_FUNCTION_51_2(&dword_223515000, v20, v13, "checking device for remote intelligence %s");
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_7_13();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  v21 = OUTLINED_FUNCTION_2_13();
  v23 = v22(v21);
  v24 = specialized MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:)(boxed_opaque_existential_1, a2, a3, a4);
  v25 = v24;
  if (v23 & 1) != 0 && (v24)
  {
    v11 = 1;
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 67109376;
      *(v28 + 4) = v23 & 1;
      *(v28 + 8) = 1024;
      *(v28 + 10) = v25 & 1;
      _os_log_impl(&dword_223515000, v26, v27, "Device is not eligible for remote intelligence. meDevice = %{BOOL}d, supportsAI = %{BOOL}d", v28, 0xEu);
      OUTLINED_FUNCTION_12();
    }

    v11 = 0;
  }

LABEL_17:
  __swift_destroy_boxed_opaque_existential_0(v33);
  return v11;
}

uint64_t specialized MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v89[-2] - v8;
  v94 = a3;
  v95 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v93);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v12 = v94;
  v11 = v95;
  __swift_project_boxed_opaque_existential_1(v93, v94);
  (*(v11 + 48))(&v91, v12, v11);
  LOBYTE(v12) = v91;
  if (v91 == 2)
  {
    outlined init with copy of UMUserPersonProtocol(v93, &v91);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v90 = v16;
      *v15 = 136315138;
      outlined init with copy of UMUserPersonProtocol(&v91, v89);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork29MessageCenterEndpointProtocol_pMd, &_s11SiriNetwork29MessageCenterEndpointProtocol_pMR);
      v17 = String.init<A>(describing:)();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0(&v91);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v90);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_223515000, v13, v14, "Payload missing on endpoint %s. Falling back to builtin list", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DE38F0](v16, -1, -1);
      MEMORY[0x223DE38F0](v15, -1, -1);
    }

    else
    {

      v21 = __swift_destroy_boxed_opaque_existential_0(&v91);
    }

    MEMORY[0x28223BE20](v21);
    v86 = v93;
    if (specialized Sequence.contains(where:)(partial apply for closure #1 in MessageCenterActorBrowser.deviceSupportsAppleIntelligence(_:), (&v88 - 4), &outlined read-only object #0 of one-time initialization function for kSupportedDevices))
    {
      LOBYTE(v12) = 1;
      goto LABEL_30;
    }

    v25 = v94;
    v26 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v27 = (*(v26 + 24))(v25, v26);
    v12 = v28;
    if (!v28)
    {
      goto LABEL_30;
    }

    v29 = v27;
    v91 = v27;
    v92 = v28;
    strcpy(v89, "^iPhone(\\d+)");
    BYTE1(v89[3]) = 0;
    HIWORD(v89[3]) = -5120;
    v30 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v30);
    v31 = lazy protocol witness table accessor for type String and conformance String();
    v86 = v31;
    v87 = v31;
    StringProtocol.range<A>(of:options:range:locale:)();
    v33 = v32;
    outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v33)
    {
      v91 = v29;
      v92 = v12;
      strcpy(v89, "^iPad(\\d+)");
      HIBYTE(v89[2]) = 0;
      v89[3] = -369098752;
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v30);
      v86 = v31;
      v87 = v31;
      StringProtocol.range<A>(of:options:range:locale:)();
      v35 = v34;
      outlined destroy of AsyncStream<MessageCenterEventProtocol>?(v9, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if ((v35 & 1) == 0)
      {
        v58 = String.subscript.getter();
        v60 = v59;
        v62 = v61;
        v64 = v63;

        v65 = MEMORY[0x223DE2130](v58, v60, v62, v64);
        v67 = v66;

        v68 = specialized Collection.dropFirst(_:)(4uLL, v65, v67);
        v72 = v71;
        if ((v68 ^ v69) >= 0x4000)
        {
          v73 = v68;
          v74 = v69;
          v75 = v70;
          v76 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v68, v69, v70, v71, 10);
          if ((v77 & 0x100) != 0)
          {
            v78 = specialized _parseInteger<A, B>(ascii:radix:)(v73, v74, v75, v72, 10);
            v84 = v83;

            if ((v84 & 1) == 0)
            {
LABEL_26:
              v82 = v78 <= 13;
LABEL_27:
              LOBYTE(v12) = !v82;
              goto LABEL_30;
            }
          }

          else
          {
            v78 = v76;
            v79 = v77;

            if ((v79 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

LABEL_25:
          LOBYTE(v12) = 0;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v36 = String.subscript.getter();
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v43 = MEMORY[0x223DE2130](v36, v38, v40, v42);
      v45 = v44;

      v46 = specialized Collection.dropFirst(_:)(6uLL, v43, v45);
      v50 = v49;
      if ((v46 ^ v47) >= 0x4000)
      {
        v51 = v46;
        v52 = v47;
        v53 = v48;
        v54 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v46, v47, v48, v49, 10);
        if ((v55 & 0x100) != 0)
        {
          v56 = specialized _parseInteger<A, B>(ascii:radix:)(v51, v52, v53, v50, 10);
          v81 = v80;

          if (v81)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v56 = v54;
          v57 = v55;

          if (v57)
          {
            goto LABEL_25;
          }
        }

        v82 = v56 <= 15;
        goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v12 & 1;
    _os_log_impl(&dword_223515000, v22, v23, "Found endpoint with Apple Intelligence support: %{BOOL}d", v24, 8u);
    MEMORY[0x223DE38F0](v24, -1, -1);
  }

LABEL_30:
  __swift_destroy_boxed_opaque_existential_0(v93);
  return v12 & 1;
}

unint64_t specialized Collection.index(_:offsetBy:)(unint64_t result, int a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v6 = result;
  if (a4)
  {
    v7 = 0;
    while ((a3 & 1) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0 || (v8 = 1 << *(a5 + 32), v6 >= v8))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v9 = v6 >> 6;
      v10 = *(a5 + 56 + 8 * (v6 >> 6));
      if (((v10 >> v6) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_22;
      }

      v11 = v10 & (-2 << (v6 & 0x3F));
      if (v11)
      {
        v6 = __clz(__rbit64(v11)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a5 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v15 = *v14++;
          result = v15;
          v12 += 64;
          ++v13;
          if (v15)
          {
            v6 = __clz(__rbit64(result)) + v12;
            goto LABEL_16;
          }
        }

        v6 = 1 << *(a5 + 32);
      }

LABEL_16:
      a3 = 0;
      if (++v7 >= a4)
      {
        return OUTLINED_FUNCTION_41_0();
      }
    }

    goto LABEL_24;
  }

  v16 = OUTLINED_FUNCTION_41_0();
  outlined copy of Set<A>.Index._Variant<A>(v16, v17, v18);
  return OUTLINED_FUNCTION_41_0();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(const void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v29 = &type metadata for MessageCenterDevice;
  v30 = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
  *&v28 = swift_allocObject();
  memcpy((v28 + 16), a1, 0x90uLL);
  v10 = *a5;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS11SiriNetwork27MessageCenterDeviceProtocol_pGMd, &_ss17_NativeDictionaryVySS11SiriNetwork27MessageCenterDeviceProtocol_pGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *a5;
  if (v17)
  {
    v21 = (v20[7] + 40 * v16);
    __swift_destroy_boxed_opaque_existential_0(v21);
    return outlined init with take of RPCOspreyConnectionProtocol(&v28, v21);
  }

  else
  {
    v23 = __swift_mutable_project_boxed_opaque_existential_1(&v28, &type metadata for MessageCenterDevice);
    MEMORY[0x28223BE20](v23);
    v25 = &v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v25);
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, v25, v20);

    return __swift_destroy_boxed_opaque_existential_0(&v28);
  }
}

uint64_t outlined consume of Set<MessageCenterEndpoint>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double outlined copy of Set<A>.Index._Variant<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v16 = &type metadata for MessageCenterDevice;
  v17 = lazy protocol witness table accessor for type MessageCenterDevice and conformance MessageCenterDevice();
  *&v15 = swift_allocObject();
  memcpy((v15 + 16), a4, 0x90uLL);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = outlined init with take of RPCOspreyConnectionProtocol(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[6];
  v8 = v0[7];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in MessageCenterEndpointBrowser.start();

  return closure #1 in closure #2 in MessageCenterActorBrowser.createActorIfNeeded(for:)(v3, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized MessageCenterEndpointBrowser.init(persona:delegate:usePersona:browserProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a6;
  v32 = a4;
  v31 = a3;
  v26 = a1;
  v27 = a2;
  v28 = type metadata accessor for AdoptPersonaExecutionStrategy(0);
  MEMORY[0x28223BE20](v28);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v14 - 8);
  swift_defaultActor_initialize();
  v24 = type metadata accessor for OS_dispatch_queue_serial();
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 144) = 0u;
  *(a7 + 160) = 0;
  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, _sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v12, *MEMORY[0x277D85268], v25);
  *(a7 + 168) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a7 + 184) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_logger;
  if (one-time initialization token for messageCenterActor != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logger.messageCenterActor);
  v18 = *(*(v16 - 8) + 16);
  v18(a7 + v15, v17, v16);
  *(a7 + 184) = &protocol witness table for MessageCenterActorBrowser;
  swift_unknownObjectWeakAssign();
  v19 = v26;
  v20 = v27;
  *(a7 + 192) = v26;
  *(a7 + 200) = v20;
  *v9 = v19;
  v9[1] = v20;
  v21 = v28;
  v18(v9 + *(v28 + 20), v17, v16);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed SNLinkRecommendationInfo?) -> ())?(v29, v30);

  v22 = (v9 + *(v21 + 24));
  *v22 = 0;
  v22[1] = 0;
  outlined init with take of MessageCenterActorWrapper(v9, a7 + OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_executionStrategy, type metadata accessor for AdoptPersonaExecutionStrategy);
  *(a7 + 208) = 0;
  *(a7 + OBJC_IVAR____TtC11SiriNetwork28MessageCenterEndpointBrowser_usePersona) = v32 & 1;
  return a7;
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, _sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionQualityReport(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && a1[4])
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 4;
      v2 = v3 - 4;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionQualityReport(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

SiriNetwork::ConnectionQuality_optional __swiftcall ConnectionQuality.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ConnectionQuality.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t ConnectionQuality.rawValue.getter(char a1)
{
  result = 1685024615;
  switch(a1)
  {
    case 1:
      result = 6578530;
      break;
    case 2:
      result = OUTLINED_FUNCTION_4_19();
      break;
    case 3:
      result = OUTLINED_FUNCTION_3_18();
      break;
    default:
      return result;
  }

  return result;
}

SiriNetwork::ConnectionQuality_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ConnectionQuality@<W0>(Swift::String *a1@<X0>, SiriNetwork::ConnectionQuality_optional *a2@<X8>)
{
  result.value = ConnectionQuality.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ConnectionQuality@<X0>(uint64_t *a1@<X8>)
{
  result = ConnectionQuality.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ConnectionQuality(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConnectionQuality and conformance ConnectionQuality()
{
  result = lazy protocol witness table cache variable for type ConnectionQuality and conformance ConnectionQuality;
  if (!lazy protocol witness table cache variable for type ConnectionQuality and conformance ConnectionQuality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConnectionQuality and conformance ConnectionQuality);
  }

  return result;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for NetworkWiFiManager()) init];
  static NetworkWiFiManager.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for NetworkActivityTracing()) init];
  static NetworkActivityTracing.shared = result;
  return result;
}

id NetworkWiFiManager.init()()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_1();
  v4 = v3 - v2;
  type metadata accessor for OS_dispatch_queue.Attributes();
  OUTLINED_FUNCTION_71();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_1();
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_0_1();
  v13 = OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiManager;
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiManager] = 0;
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiDevice] = 0;
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiClientType] = 0;
  v7 = OBJC_IVAR___SNNetworkWiFiManagerInternal_interface;
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_interface] = 0;
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_queueGroup] = 0;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v12);
  *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = [objc_allocWithZone(MEMORY[0x277D02B18]) initWithServiceType_];
  v9 = *&v0[v7];
  *&v0[v7] = v8;

  v10 = *&v0[v7];
  if (v10)
  {
    [v10 resume];
  }

  *&v0[v13] = WiFiManagerClientCreate();
  v14.receiver = v0;
  v14.super_class = type metadata accessor for NetworkWiFiManager();
  return objc_msgSendSuper2(&v14, sel_init);
}

id NetworkWiFiManager.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_interface];
  if (v1)
  {
    [v1 invalidate];
  }

  if (*&v0[OBJC_IVAR___SNNetworkWiFiManagerInternal_wifiManager])
  {
    swift_unknownObjectRelease();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for NetworkWiFiManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id NetworkWiFiManager.getWiFiRecordRepresentation()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriNetwork10WiFiRecordVSgMd, &_s11SiriNetwork10WiFiRecordVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for WiFiRecord(0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_1();
  v7 = (v6 - v5);
  NetworkWiFiManager.getWiFiRecord()(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    outlined destroy of WiFiRecord?(v2);
    return 0;
  }

  else
  {
    outlined init with take of WiFiRecord(v2, v7);
    type metadata accessor for WiFiRecordRepresentation(0);
    v8 = static WiFiRecordRepresentation.wiFiRecordRepresentation(from:)(v7);
    outlined destroy of WiFiRecord(v7);
  }

  return v8;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t ConnectionNetworkReport.init(ospreyConnectionMetrics:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = 1;
  v25 = 1;
  v24 = 1;
  v23 = 1;
  v22 = 1;
  [a1 fetchStartToFirstByteTime];
  v5 = v4;
  [a1 fetchStartToDomainLookupStartTime];
  if (Double.milliseconds.getter(v6) < 1)
  {
    v9 = 0;
  }

  else
  {
    [a1 fetchStartToDomainLookupStartTime];
    result = Double.milliseconds.getter(v7);
    if (result < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    v9 = result;
    v25 = 0;
  }

  [a1 dnsResolutionTime];
  if (Double.milliseconds.getter(v10) >= 1)
  {
    [a1 dnsResolutionTime];
    result = Double.milliseconds.getter(v11);
    if ((result & 0x8000000000000000) == 0)
    {
      v12 = result;
      v26 = 0;
      goto LABEL_9;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = 0;
LABEL_9:
  [a1 tcpConnectTime];
  if (Double.milliseconds.getter(v13) >= 1)
  {
    [a1 tcpConnectTime];
    result = Double.milliseconds.getter(v14);
    if ((result & 0x8000000000000000) == 0)
    {
      v15 = result;
      v23 = 0;
      goto LABEL_13;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = 0;
LABEL_13:
  [a1 connectionEstablishmentTime];
  if (Double.milliseconds.getter(v16) < 1)
  {
    v18 = 0;
    goto LABEL_17;
  }

  [a1 connectionEstablishmentTime];
  result = Double.milliseconds.getter(v17);
  if (result < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = result;
  v24 = 0;
LABEL_17:
  [a1 secureConnectionTime];
  if (Double.milliseconds.getter(v19) < 1)
  {

    result = 0;
    goto LABEL_21;
  }

  [a1 secureConnectionTime];
  v21 = v20;

  result = Double.milliseconds.getter(v21);
  if ((result & 0x8000000000000000) == 0)
  {
    v22 = 0;
LABEL_21:
    *a2 = 0;
    *(a2 + 4) = 1;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a2 + 32) = 1;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0;
    *(a2 + 92) = 1;
    *(a2 + 96) = 0;
    *(a2 + 100) = 1;
    *(a2 + 104) = MEMORY[0x277D84F98];
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 128) = v12;
    *(a2 + 136) = v26;
    *(a2 + 144) = v9;
    *(a2 + 152) = v25;
    *(a2 + 160) = v18;
    *(a2 + 168) = v24;
    *(a2 + 176) = 0;
    *(a2 + 184) = 1;
    *(a2 + 192) = v15;
    *(a2 + 200) = v23;
    *(a2 + 208) = result;
    *(a2 + 216) = v22;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a2 + 248) = 1;
    *(a2 + 256) = v5;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 280) = 1;
    *(a2 + 288) = 0;
    *(a2 + 296) = 1;
    *(a2 + 304) = 0;
    *(a2 + 312) = 1;
    return result;
  }

LABEL_26:
  __break(1u);
  return result;
}

size_t static AceSerialization.aceDataForSpeechPacket(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Data.Deallocator();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_1();
  v10 = (v9 - v8);
  v11 = (a1 + OBJC_IVAR___SNSpeechPacketInternal_internalRefId);
  swift_beginAccess();
  v12 = v11[1];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = *v11;

  v14 = MEMORY[0x223DE2070](v13, v12);

  v12 = [v14 UTF8String];
  v15 = v14;
  if (!v12)
  {
    goto LABEL_6;
  }

  v16 = strlen(v12);
  if (v16 > 127)
  {
LABEL_9:
    v23 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
    OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v23);
    *v24 = xmmword_2235EF700;
    OUTLINED_FUNCTION_5_19(v24, 2);
    return v2;
  }

  v17 = v16;
  if (v16 < -128)
  {
    __break(1u);
LABEL_6:
    v17 = 0;
  }

  v18 = OBJC_IVAR___SNSpeechPacketInternal_packetNumber;
  swift_beginAccess();
  v19 = *(a1 + v18);
  if (v19 != v19)
  {
    goto LABEL_9;
  }

  v20 = OBJC_IVAR___SNSpeechPacketInternal_packets;
  swift_beginAccess();
  v21 = *(a1 + v20);
  v22 = specialized Array.count.getter(v21);
  if (v22 >= 0x8000)
  {
    goto LABEL_9;
  }

  v57 = v17;
  if (v22 < 0xC000000000000000)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v17 = 2 * v22;
  if (v22 < -32768 || v17 < 0xFFFFFFFF80000000)
  {
    goto LABEL_62;
  }

  v52 = v10;
  v53 = v22;
  if (v17 > 0x7FFFFFFF)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v27 = specialized Array.count.getter(v21);
  v10 = v27;
  v20 = &off_2784DD000;
  v51 = v4;
  v50 = v6;
  v55 = v12;
  if (v27)
  {
    if (v27 < 1)
    {
      goto LABEL_71;
    }

    v2 = 0;
    v12 = 0xFFFFFFFF80000000;
    while (1)
    {
      v28 = (v21 & 0xC000000000000001) != 0 ? MEMORY[0x223DE2730](v2, v21) : *(v21 + 8 * v2 + 32);
      v4 = v28;
      v20 = [v28 *(v20 + 3888)];

      if (v20 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v20 > 0x7FFFFFFF)
      {
        goto LABEL_55;
      }

      v29 = __OFADD__(v17, v20);
      v17 = (v17 + v20);
      if (v29)
      {
        goto LABEL_56;
      }

      ++v2;
      v20 = 0x2784DD000;
      if (v10 == v2)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_29:
  v30 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    goto LABEL_64;
  }

  LOWORD(v20) = v55;
  v29 = __OFADD__(v30, v57);
  v31 = v30 + v57;
  v4 = v19;
  if (v29)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v2 = (v31 + 4);
  if (__OFADD__(v31, 4))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v12 = v2;
  v32 = swift_slowAlloc();
  if ((v2 & 0x80000000) != 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    swift_once();
    goto LABEL_36;
  }

  v17 = v32;
  v59 = static AceDataHeader.createHeaderData(forType:lengthOrIdentifier:)(6, v2);
  v60 = v33;
  *v17 = v57;
  v2 = v17 + 1;
  if (v57 >= 1)
  {
    memmove((v17 + 1), v55, v57);
    v2 += v57;
  }

  LOWORD(v20) = v53;
  if (one-time initialization token for htons != -1)
  {
    goto LABEL_68;
  }

LABEL_36:
  v54 = v17;
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_70;
  }

  v49 = v12;
  v34 = v20;
  v35 = static Endian.htons;
  v12 = *algn_2813272A8;
  *v2 = static Endian.htons(v4);
  if ((v34 & 0x80000000) != 0)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  v56 = v35;
  v36 = 0;
  *(v2 + 2) = (v35)(v34);
  v17 = v2 + 4;
  v58 = v21 & 0xC000000000000001;
  v20 = v21 & 0xFFFFFFFFFFFFFF8;
  while (v10 != v36)
  {
    if (v58)
    {
      v37 = MEMORY[0x223DE2730](v36, v21);
    }

    else
    {
      if (v36 >= *(v20 + 16))
      {
        goto LABEL_58;
      }

      v37 = *(v21 + 8 * v36 + 32);
    }

    v38 = v37;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_57;
    }

    v4 = v21;
    v21 = v10;
    v10 = &off_2784DD000;
    v39 = [v37 length];
    if (v39 >= 0x10000)
    {

      v45 = lazy protocol witness table accessor for type AceSerializationError and conformance AceSerializationError();
      OUTLINED_FUNCTION_60(&type metadata for AceSerializationError, v45);
      *v46 = xmmword_2235EF700;
      OUTLINED_FUNCTION_5_19(v46, 2);

      outlined consume of Data?(v59, v60);
      return v2;
    }

    v2 = v39;
    v40 = [v38 length];
    if ((v40 & 0x8000000000000000) != 0)
    {
      goto LABEL_59;
    }

    if (v40 >> 16)
    {
      goto LABEL_60;
    }

    *v17 = v56();
    v41 = (v17 + 2);
    memmove(v41, [v38 bytes], v2);

    v17 = v41 + v2;
    ++v36;
    v10 = v21;
    v21 = v4;
  }

  (*(v50 + 104))(v52, *MEMORY[0x277CC92A0], v51);
  MEMORY[0x223DE1380](v54, v49, v52);
  v42 = v60;
  if (v60 >> 60 == 15)
  {
    v43 = OUTLINED_FUNCTION_0_36();
    outlined consume of Data._Representation(v43, v44);
  }

  else
  {
    OUTLINED_FUNCTION_0_36();
    Data.append(_:)();
    v47 = OUTLINED_FUNCTION_0_36();
    outlined consume of Data._Representation(v47, v48);
    v42 = v60;
  }

  v2 = v59;
  outlined copy of Data?(v59, v42);
  outlined consume of Data?(v59, v42);
  return v2;
}