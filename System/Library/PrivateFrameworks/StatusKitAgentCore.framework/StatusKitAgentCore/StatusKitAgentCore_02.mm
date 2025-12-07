uint64_t closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:), a4, 0);
}

uint64_t closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:)()
{
  SKALocalStatusServer.takeTransactionForLaunchOnDemand()();

  return MEMORY[0x2822009F8](closure #1 in closure #8 in SKALocalStatusServer.init(idsDeviceProvider:), 0, 0);
}

{
  specialized static SKALocalStatusServer.replyToWakeEvent(event:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SKALocalStatusServer.takeTransactionForLaunchOnDemand()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  result = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction;
  if (!*(v0 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction))
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, log);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_220099000, v8, v9, "Taking transaction out for 30 seconds due to launch on demand", v10, 2u);
      MEMORY[0x223D77FF0](v10, -1, -1);
    }

    *(v1 + v6) = os_transaction_create();
    swift_unknownObjectRelease();
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer, &protocol conformance descriptor for SKALocalStatusServer);
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = v12;
    v13[4] = v1;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand(), v13);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t SKALocalStatusServer.publish(_:for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR);
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v10 = type metadata accessor for LSKTargetDeviceFlags();
  v7[28] = v10;
  v7[29] = *(v10 - 8);
  v7[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v7[31] = v11;
  v7[32] = *(v11 - 8);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](SKALocalStatusServer.publish(_:for:options:), v6, 0);
}

uint64_t SKALocalStatusServer.publish(_:for:options:)()
{
  v135 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 120);
  v5 = type metadata accessor for Logger();
  *(v0 + 288) = __swift_project_value_buffer(v5, log);
  v6 = *(v2 + 16);
  *(v0 + 296) = v6;
  *(v0 + 304) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v127 = v6;
  v6(v1, v4, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 280);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v133 = v130;
    *v13 = 136315138;
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24370]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v133);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_220099000, v7, v8, "Publish START {key: %s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v130);
    MEMORY[0x223D77FF0](v130, -1, -1);
    MEMORY[0x223D77FF0](v13, -1, -1);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  *(v0 + 312) = v17;
  v19 = *(v0 + 240);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v22 = *(v0 + 104);
  v23 = [*(*(v0 + 136) + 168) newBackgroundContext];
  *(v0 + 320) = v23;
  LSKStatusOptions.targetDeviceFlags.getter(v19);
  v24 = SKALocalStatusServer.add(_:for:to:targeting:)(v22, v21, v20, v23, v19);
  if ((v24 & 1) == 0)
  {
    v32 = *(v0 + 136);
    v33 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
    swift_beginAccess();
    v34 = *(v32 + v33);
    if (!*(v34 + 16) || (v35 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 120)), (v36 & 1) == 0))
    {
      v50 = *(v0 + 200);
      v51 = *(v0 + 120);
      swift_endAccess();
      SKALocalStatusServer.currentStatus(for:in:)(v51, v23, v50);
      v52 = *(v0 + 96);
      (*(*(v0 + 192) + 32))(*(v0 + 216), *(v0 + 200), *(v0 + 184));
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
LABEL_24:
      (*(v0 + 296))(*(v0 + 264), *(v0 + 120), *(v0 + 248));
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 312);
      v64 = *(v0 + 264);
      v65 = *(v0 + 240);
      v66 = *(v0 + 248);
      v68 = *(v0 + 224);
      v67 = *(v0 + 232);
      if (v62)
      {
        v128 = *(v0 + 320);
        v131 = *(v0 + 224);
        v69 = swift_slowAlloc();
        v124 = v61;
        v70 = swift_slowAlloc();
        v133 = v70;
        *v69 = 136315138;
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24370]);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v63;
        v73 = v71;
        v125 = v65;
        v75 = v74;
        v72(v64, v66);
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v133);

        *(v69 + 4) = v76;
        _os_log_impl(&dword_220099000, v60, v124, "Publish END {key: %s}", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x223D77FF0](v70, -1, -1);
        MEMORY[0x223D77FF0](v69, -1, -1);

        (*(v67 + 8))(v125, v131);
      }

      else
      {

        v63(v64, v66);
        (*(v67 + 8))(v65, v68);
      }

      (*(*(v0 + 192) + 32))(*(v0 + 88), *(v0 + 216), *(v0 + 184));

      v77 = *(v0 + 8);
      goto LABEL_7;
    }

    v37 = *(v0 + 208);
    v38 = *(v0 + 184);
    v39 = *(v0 + 192);
    v40 = *(*(v34 + 56) + 8 * v35);
    swift_endAccess();

    CurrentValueSubject.value.getter();
    CurrentValueSubject.value.getter();
    v41 = LSKPublishedStatus.devices.getter();
    (*(v39 + 8))(v37, v38);
    v42 = *(v41 + 16);

    v43 = *(v0 + 168);
    if (v42)
    {
      v45 = *(v0 + 152);
      v44 = *(v0 + 160);
      v46 = *(v0 + 144);
      *(v0 + 64) = v40;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
      v48 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<LSKPublishedStatus<Data>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR, MEMORY[0x277CBCE48]);
      MEMORY[0x223D769B0](v47, v48);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<LSKPublishedStatus<Data>, Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR, MEMORY[0x277CBCDE0]);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, MEMORY[0x277D24268]);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, MEMORY[0x277D24260]);
      AsyncSequence<>.xpc.getter();

      (*(v45 + 8))(v44, v46);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v49 - 8) + 56))(v43, 0, 1, v49);
    }

    else
    {

      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v58 - 8) + 56))(v43, 1, 1, v58);
    }

    v59 = *(v0 + 168);
LABEL_23:
    outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v59, *(v0 + 96), &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    goto LABEL_24;
  }

  v123 = v17;
  v27 = *(v0 + 248);
  v26 = *(v0 + 256);
  v28 = *(v0 + 120);
  SKALocalStatusServer.resetDeliverySubject(for:)(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGGMR);
  v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2201A7280;
  v127(v30 + v29, v28, v27);
  SKALocalStatusServer.reconcilePendingStatusesOnDevices(resetting:in:resetDiscoverySource:)(v30, v23, 0);
  v31 = *(v0 + 248);
  swift_setDeallocating();
  v123(v30 + v29, v31);
  swift_deallocClassInstance();
  SKALocalStatusServer.stopBrowserTask()();
  v133 = 0x5B6873696C627550;
  v134 = 0xE800000000000000;
  *(v0 + 328) = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24370]);
  v54 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D76B90](v54);

  MEMORY[0x223D76B90](93, 0xE100000000000000);
  SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(v23, v133, v134);
  *(v0 + 336) = v55;
  v56 = v55;

  if (v56)
  {
    v57 = swift_task_alloc();
    *(v0 + 344) = v57;
    *v57 = v0;
    v57[1] = SKALocalStatusServer.publish(_:for:options:);

    return MEMORY[0x282200460]();
  }

  v78 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000017, 0x80000002201AC600);
  if (v78 >> 62)
  {
    v79 = __CocoaSet.count.getter();
  }

  else
  {
    v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = *(v0 + 272);
  v81 = *(v0 + 248);
  v82 = *(v0 + 120);

  v127(v80, v82, v81);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  v85 = os_log_type_enabled(v83, v84);
  v86 = *(v0 + 272);
  v87 = *(v0 + 248);
  if (v85)
  {
    v88 = swift_slowAlloc();
    v132 = v79;
    v133 = swift_slowAlloc();
    v89 = v133;
    *v88 = 136315394;
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v92 = v91;
    v123(v86, v87);
    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v92, &v133);

    *(v88 + 4) = v93;
    *(v88 + 12) = 2080;
    *(v0 + 80) = v132;
    v94 = dispatch thunk of CustomStringConvertible.description.getter();
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, &v133);

    *(v88 + 14) = v96;
    _os_log_impl(&dword_220099000, v83, v84, "No delivery task for publish. No IDS devices? {key: %s, idsDevices.count: %s}", v88, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D77FF0](v89, -1, -1);
    MEMORY[0x223D77FF0](v88, -1, -1);
  }

  else
  {

    v123(v86, v87);
  }

  v97 = *(v0 + 136);
  v98 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  swift_beginAccess();
  v99 = *(v97 + v98);
  if (*(v99 + 16))
  {
    v100 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 120));
    if (v101)
    {
      v102 = *(v0 + 208);
      v103 = *(v0 + 184);
      v104 = *(v0 + 192);
      v105 = *(*(v99 + 56) + 8 * v100);
      swift_endAccess();

      CurrentValueSubject.value.getter();
      CurrentValueSubject.value.getter();
      v106 = LSKPublishedStatus.devices.getter();
      (*(v104 + 8))(v102, v103);
      v107 = *(v106 + 16);

      v108 = *(v0 + 176);
      if (v107)
      {
        v110 = *(v0 + 152);
        v109 = *(v0 + 160);
        v111 = *(v0 + 144);
        *(v0 + 72) = v105;
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
        v113 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<LSKPublishedStatus<Data>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR, MEMORY[0x277CBCE48]);
        MEMORY[0x223D769B0](v112, v113);
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<LSKPublishedStatus<Data>, Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR, MEMORY[0x277CBCDE0]);
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, MEMORY[0x277D24268]);
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, MEMORY[0x277D24260]);
        AsyncSequence<>.xpc.getter();

        (*(v110 + 8))(v109, v111);
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
        (*(*(v114 - 8) + 56))(v108, 0, 1, v114);
      }

      else
      {

        v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
        (*(*(v122 - 8) + 56))(v108, 1, 1, v122);
      }

      v59 = *(v0 + 176);
      goto LABEL_23;
    }
  }

  v115 = *(v0 + 320);
  v116 = *(v0 + 232);
  v126 = *(v0 + 224);
  v129 = *(v0 + 240);
  swift_endAccess();
  v117 = type metadata accessor for LSKError();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
  swift_allocError();
  v133 = 0;
  v119 = v118;
  v134 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v133 = 0xD000000000000014;
  v134 = 0x80000002201AC620;
  v120 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D76B90](v120);

  v121 = v134;
  *v119 = v133;
  v119[1] = v121;
  (*(*(v117 - 8) + 104))(v119, *MEMORY[0x277D24378], v117);
  swift_willThrow();

  (*(v116 + 8))(v129, v126);

  v77 = *(v0 + 8);
LABEL_7:

  return v77();
}

{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](SKALocalStatusServer.publish(_:for:options:), v1, 0);
}

{
  v52 = v0;

  v1 = *(v0 + 136);
  v2 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 120)), (v5 & 1) != 0))
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    v9 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();

    CurrentValueSubject.value.getter();
    CurrentValueSubject.value.getter();
    v10 = LSKPublishedStatus.devices.getter();
    (*(v8 + 8))(v6, v7);
    v11 = *(v10 + 16);

    v12 = *(v0 + 176);
    if (v11)
    {
      v14 = *(v0 + 152);
      v13 = *(v0 + 160);
      v15 = *(v0 + 144);
      *(v0 + 72) = v9;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
      v17 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<LSKPublishedStatus<Data>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR, MEMORY[0x277CBCE48]);
      MEMORY[0x223D769B0](v16, v17);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<LSKPublishedStatus<Data>, Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR, MEMORY[0x277CBCDE0]);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, MEMORY[0x277D24268]);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, MEMORY[0x277D24260]);
      AsyncSequence<>.xpc.getter();

      (*(v14 + 8))(v13, v15);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    }

    else
    {

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    }

    outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(*(v0 + 176), *(v0 + 96), &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
    (*(v0 + 296))(*(v0 + 264), *(v0 + 120), *(v0 + 248));
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 312);
    v31 = *(v0 + 264);
    v32 = *(v0 + 240);
    v33 = *(v0 + 248);
    v35 = *(v0 + 224);
    v34 = *(v0 + 232);
    if (v29)
    {
      v48 = *(v0 + 320);
      v50 = *(v0 + 224);
      v36 = swift_slowAlloc();
      v45 = v28;
      v37 = swift_slowAlloc();
      v51[0] = v37;
      *v36 = 136315138;
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24370]);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v30;
      v40 = v38;
      v46 = v32;
      v42 = v41;
      v39(v31, v33);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v51);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_220099000, v27, v45, "Publish END {key: %s}", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x223D77FF0](v37, -1, -1);
      MEMORY[0x223D77FF0](v36, -1, -1);

      (*(v34 + 8))(v46, v50);
    }

    else
    {

      v30(v31, v33);
      (*(v34 + 8))(v32, v35);
    }

    (*(*(v0 + 192) + 32))(*(v0 + 88), *(v0 + 216), *(v0 + 184));

    v25 = *(v0 + 8);
  }

  else
  {
    v19 = *(v0 + 320);
    v20 = *(v0 + 232);
    v47 = *(v0 + 224);
    v49 = *(v0 + 240);
    swift_endAccess();
    v21 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    v23 = v22;
    _StringGuts.grow(_:)(22);

    v51[0] = 0xD000000000000014;
    v51[1] = 0x80000002201AC620;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D76B90](v24);

    *v23 = 0xD000000000000014;
    v23[1] = 0x80000002201AC620;
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D24378], v21);
    swift_willThrow();

    (*(v20 + 8))(v49, v47);

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t LSKStatusOptions.targetDeviceFlags.getter@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMd, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMR);
  v1 = MEMORY[0x28223BE20](v132);
  v104 = v100 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v100 - v4;
  v6 = MEMORY[0x28223BE20](v3);
  v107 = v100 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v122 = v100 - v9;
  MEMORY[0x28223BE20](v8);
  v112 = v100 - v10;
  v11 = type metadata accessor for LSKTargetDeviceFlags();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v124 = v100 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v114 = v100 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v123 = v100 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v100 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v106 = v100 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v121 = v100 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v111 = v100 - v30;
  MEMORY[0x28223BE20](v29);
  v110 = v100 - v31;
  v127 = type metadata accessor for LSKStatusOptions.DeviceType();
  v32 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v126 = v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKTargetDeviceFlagsVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKTargetDeviceFlagsVGMR);
  v34 = v12;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_2201A7280;
  static LSKTargetDeviceFlags.none.getter();
  v133 = v35;
  v36 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags, MEMORY[0x277D24340], MEMORY[0x277D24350]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14LocalStatusKit20LSKTargetDeviceFlagsVGMd, &_sSay14LocalStatusKit20LSKTargetDeviceFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [LSKTargetDeviceFlags] and conformance [A], &_sSay14LocalStatusKit20LSKTargetDeviceFlagsVGMd, &_sSay14LocalStatusKit20LSKTargetDeviceFlagsVGMR, MEMORY[0x277D83970]);
  v37 = v11;
  v130 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = LSKStatusOptions.publishToDeviceTypes.getter();
  v39 = *(v38 + 16);
  if (v39)
  {
    v103 = v5;
    v41 = *(v32 + 16);
    v40 = v32 + 16;
    v119 = v41;
    v42 = (*(v40 + 64) + 32) & ~*(v40 + 64);
    v100[1] = v38;
    v43 = (v38 + v42);
    v44 = *(v40 + 56);
    v117 = (v40 + 72);
    v118 = v44;
    v116 = *MEMORY[0x277D242F8];
    v109 = *MEMORY[0x277D242F0];
    v125 = (v34 + 16);
    v115 = (v34 + 8);
    v108 = (v34 + 32);
    v105 = *MEMORY[0x277D242E8];
    v101 = (v40 - 8);
    v45 = v112;
    v102 = v15;
    v47 = v123;
    v46 = v124;
    v48 = v24;
    v113 = v24;
    v49 = v114;
    v120 = v40;
    do
    {
      v52 = v126;
      v51 = v127;
      v119(v126, v43, v127);
      v53 = (*v117)(v52, v51);
      if (v53 == v116)
      {
        v128 = v43;
        v129 = v39;
        v54 = v110;
        static LSKTargetDeviceFlags.visionDevice.getter();
        v55 = v37;
        v56 = *v125;
        v57 = v121;
        (*v125)(v121, v131, v55);
        v58 = v111;
        v59 = v45;
        dispatch thunk of SetAlgebra.intersection(_:)();
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags, MEMORY[0x277D24340], MEMORY[0x277D24348]);
        v60 = dispatch thunk of static Equatable.== infix(_:_:)();
        v61 = *(v132 + 48);
        *v59 = (v60 & 1) == 0;
        v62 = *v115;
        if (v60)
        {
          (v62)(v54, v55);
          (*v108)(&v59[v61], v58, v55);
        }

        else
        {
          (v62)(v58, v55);
          v56(&v59[v61], v54, v55);
          v56(v57, v54, v55);
          dispatch thunk of SetAlgebra.formUnion(_:)();
          (v62)(v54, v55);
        }

        v45 = v59;
        v39 = v129;
        v50 = v122;
        outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v59, v122, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMd, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMR);
        v37 = v55;
        (v62)(v50 + *(v132 + 48), v55);
        v48 = v113;
        v49 = v114;
        v47 = v123;
        v43 = v128;
      }

      else
      {
        v63 = v37;
        if (v53 == v109)
        {
          v128 = v43;
          v129 = v39;
          v64 = v106;
          static LSKTargetDeviceFlags.mac.getter();
          v65 = v107;
          v66 = v48;
          v67 = v121;
          v68 = *v125;
          v69 = v63;
          (*v125)(v121, v131, v63);
          dispatch thunk of SetAlgebra.intersection(_:)();
          lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags, MEMORY[0x277D24340], MEMORY[0x277D24348]);
          v70 = dispatch thunk of static Equatable.== infix(_:_:)();
          v71 = *(v132 + 48);
          *v65 = (v70 & 1) == 0;
          v72 = *v115;
          if (v70)
          {
            (v72)(v64, v69);
            (*v108)(&v65[v71], v66, v69);
          }

          else
          {
            (v72)(v66, v69);
            v68(&v65[v71], v64, v69);
            v68(v67, v64, v69);
            dispatch thunk of SetAlgebra.formUnion(_:)();
            (v72)(v64, v69);
          }

          v43 = v128;
          v39 = v129;
          v83 = v69;
          v48 = v66;
          v84 = v122;
          outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v65, v122, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMd, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMR);
          v37 = v83;
          (v72)(v84 + *(v132 + 48), v83);
          v45 = v112;
          v49 = v114;
          v47 = v123;
        }

        else
        {
          v73 = v125;
          v74 = v121;
          if (v53 == v105)
          {
            static LSKTargetDeviceFlags.tv.getter();
            v75 = v37;
            v129 = *v73;
            (v129)(v74, v131, v37);
            dispatch thunk of SetAlgebra.intersection(_:)();
            lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags, MEMORY[0x277D24340], MEMORY[0x277D24348]);
            v76 = dispatch thunk of static Equatable.== infix(_:_:)();
            v77 = *(v132 + 48);
            v78 = v74;
            v79 = v47;
            v80 = v103;
            *v103 = (v76 & 1) == 0;
            v81 = *v115;
            if (v76)
            {
              v82 = *v115;
              (v81)(v79, v37);
              (*v108)((v80 + v77), v49, v37);
            }

            else
            {
              v128 = *v115;
              (v81)(v49, v37);
              v93 = v129;
              (v129)(v80 + v77, v79, v75);
              (v93)(v78, v79, v75);
              dispatch thunk of SetAlgebra.formUnion(_:)();
              v82 = v128;
              (v128)(v79, v75);
            }

            v94 = v122;
            outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v80, v122, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMd, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMR);
            v37 = v75;
            (v82)(v94 + *(v132 + 48), v75);
            v45 = v112;
          }

          else
          {
            static LSKTargetDeviceFlags.none.getter();
            v85 = v37;
            v129 = *v73;
            (v129)(v74, v131, v37);
            v86 = v102;
            dispatch thunk of SetAlgebra.intersection(_:)();
            lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKTargetDeviceFlags and conformance LSKTargetDeviceFlags, MEMORY[0x277D24340], MEMORY[0x277D24348]);
            v87 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88 = *(v132 + 48);
            v89 = v104;
            *v104 = (v87 & 1) == 0;
            v90 = *v115;
            if (v87)
            {
              v91 = v46;
              v92 = *v115;
              (v90)(v91, v85);
              (*v108)((v89 + v88), v86, v85);
            }

            else
            {
              v95 = *v115;
              (v90)(v86, v85);
              v96 = v129;
              (v129)(v89 + v88, v46, v85);
              (v96)(v74, v46, v85);
              dispatch thunk of SetAlgebra.formUnion(_:)();
              v97 = v46;
              v92 = v95;
              (v95)(v97, v85);
            }

            v98 = v122;
            outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v89, v122, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMd, &_sSb8inserted_14LocalStatusKit20LSKTargetDeviceFlagsV17memberAfterInserttMR);
            v37 = v85;
            (v92)(v98 + *(v132 + 48), v85);
            (*v101)(v126, v127);
            v45 = v112;
            v49 = v114;
          }

          v47 = v123;
          v48 = v113;
        }
      }

      v43 += v118;
      --v39;
      v46 = v124;
    }

    while (v39);
  }
}

uint64_t SKALocalStatusServer.add(_:for:to:targeting:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v130 = a5;
  v136[1] = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for LSKDomain();
  v128 = *(v10 - 8);
  v129 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v125 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v123 = &v114 - v13;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v132 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v131 = &v114 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v127 = &v114 - v21;
  MEMORY[0x28223BE20](v20);
  v126 = &v114 - v22;
  v23 = *(v5 + 176);
  v136[0] = 0;
  v24 = [v23 allPublishedLocalStatusesInDatabaseContext:a4 error:v136];
  v25 = v136[0];
  if (v24)
  {
    v26 = v24;
    v115 = a1;
    v118 = v15;
    v120 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v25;

    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
    v117 = a3;
    v29 = LSKKey.id.getter();
    v133 = v30;
    v134 = v29;
    v121 = v23;
    v122 = a4;
    v119 = v14;
    v124 = a2;
    if (v27 >> 62)
    {
LABEL_43:
      v25 = __CocoaSet.count.getter();
      if (v25)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v25 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_4:
        v31 = 0;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x223D77050](v31, v27);
            v33 = (v31 + 1);
            if (__OFADD__(v31, 1))
            {
LABEL_17:
              __break(1u);
              goto LABEL_18;
            }
          }

          else
          {
            if (v31 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_43;
            }

            v32 = *(v27 + 8 * v31 + 32);
            v33 = (v31 + 1);
            if (__OFADD__(v31, 1))
            {
              goto LABEL_17;
            }
          }

          v135 = v32;
          v34 = [v32 identifier];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          if (v35 == v134 && v37 == v133)
          {
            break;
          }

          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v39)
          {
            goto LABEL_20;
          }

          ++v31;
          if (v33 == v25)
          {
            goto LABEL_44;
          }
        }

LABEL_20:

        v41 = v135;
        v42 = [v135 payload];
        v43 = v124;
        v44 = (v124 >> 60);
        v45 = v115;
        if (v42)
        {
          v46 = v42;
          v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;

          if (v49 >> 60 != 15)
          {
            if (v43 >> 60 != 15)
            {
              outlined copy of Data?(v45, v43);
              outlined copy of Data?(v47, v49);
              v50 = specialized static Data.== infix(_:_:)(v47, v49, v45, v43);
              outlined consume of Data?(v47, v49);
              outlined consume of Data?(v45, v43);
              outlined consume of Data?(v47, v49);
              if (!v50)
              {
                goto LABEL_31;
              }

LABEL_28:
              v51 = [v41 targetDevicesFlags];
              if (v51 == LSKTargetDeviceFlags.rawValue.getter())
              {

                LOBYTE(v40) = 0;

                return v40 & 1;
              }

              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        else
        {
          v47 = 0;
          v49 = 0xF000000000000000;
        }

        if (v43 >> 60 == 15)
        {
          outlined copy of Data?(v45, v43);
          outlined consume of Data?(v47, v49);
          goto LABEL_28;
        }

LABEL_30:
        outlined copy of Data?(v45, v43);
        outlined consume of Data?(v47, v49);
        outlined consume of Data?(v45, v43);
LABEL_31:
        v52 = [v41 creationDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        static Date.now.getter();
        v53 = v123;
        v54 = LSKKey.domain.getter();
        v55 = MEMORY[0x223D76900](v54);
        v131 = v44;
        v57 = v56;
        (*(v128 + 8))(v53, v129);
        v58 = LSKKey.name.getter();
        v60 = v59;
        v132 = LSKTargetDeviceFlags.rawValue.getter();
        v61 = MEMORY[0x223D76B00](v134, v133);
        v62.super.isa = Date._bridgeToObjectiveC()().super.isa;
        v63.super.isa = Date._bridgeToObjectiveC()().super.isa;
        v64 = MEMORY[0x223D76B00](v55, v57);

        v65 = MEMORY[0x223D76B00](v58, v60);

        if (v131 <= 0xE)
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          isa = 0;
        }

        v67 = v119;
        v68 = objc_allocWithZone(SKADatabasePublishedLocalStatus);
        v69 = [v68 initWithIdentifier:v61 creationDate:v62.super.isa modificationDate:v63.super.isa keyDomain:v64 keyName:v65 payload:isa targetDevicesFlags:v132];

        v70 = *(v118 + 8);
        v70(v127, v67);
        v70(v126, v67);
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        __swift_project_value_buffer(v71, log);
        v72 = v133;

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v136[0] = v76;
          *v75 = 136315138;
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v72, v136);

          *(v75 + 4) = v77;
          _os_log_impl(&dword_220099000, v73, v74, "Updating local status {identifier: %s}", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v76);
          MEMORY[0x223D77FF0](v76, -1, -1);
          MEMORY[0x223D77FF0](v75, -1, -1);
        }

        else
        {
        }

        v79 = v121;
        v78 = v122;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_2201A7710;
        *(v80 + 32) = v69;
        v40 = v69;
        v81 = Array._bridgeToObjectiveC()().super.isa;

        v136[0] = 0;
        LODWORD(v78) = [v79 createOrUpdatePublishedLocalStatuses:v81 databaseContext:v78 error:v136];

        v82 = v135;
        if (v78)
        {
          v83 = v136[0];

          LOBYTE(v40) = 1;
          return v40 & 1;
        }

        v84 = v136[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_54;
      }
    }

LABEL_44:

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, log);
    v86 = v133;

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v136[0] = v90;
      *v89 = 136315138;
      *(v89 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v86, v136);
      _os_log_impl(&dword_220099000, v87, v88, "Creating local status {identifier: %s}", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x223D77FF0](v90, -1, -1);
      MEMORY[0x223D77FF0](v89, -1, -1);
    }

    static Date.now.getter();
    static Date.now.getter();
    v91 = v125;
    v92 = LSKKey.domain.getter();
    v127 = MEMORY[0x223D76900](v92);
    v94 = v93;
    (*(v128 + 8))(v91, v129);
    v95 = LSKKey.name.getter();
    v97 = v96;
    v135 = LSKTargetDeviceFlags.rawValue.getter();
    v40 = MEMORY[0x223D76B00](v134, v86);

    v98.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v99.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v100 = MEMORY[0x223D76B00](v127, v94);

    v101 = MEMORY[0x223D76B00](v95, v97);

    if (v124 >> 60 == 15)
    {
      v102 = 0;
    }

    else
    {
      v102 = Data._bridgeToObjectiveC()().super.isa;
    }

    v103 = v118;
    v104 = objc_allocWithZone(SKADatabasePublishedLocalStatus);
    v105 = [v104 initWithIdentifier:v40 creationDate:v98.super.isa modificationDate:v99.super.isa keyDomain:v100 keyName:v101 payload:v102 targetDevicesFlags:v135];

    v106 = *(v103 + 8);
    v107 = v119;
    v106(v132, v119);
    v106(v131, v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_2201A7710;
    *(v108 + 32) = v105;
    v82 = v105;
    v109 = Array._bridgeToObjectiveC()().super.isa;

    v136[0] = 0;
    v110 = [v121 createOrUpdatePublishedLocalStatuses:v109 databaseContext:v122 error:v136];

    LOBYTE(v40) = v136[0];
    if (!v110)
    {
      v112 = v136[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
LABEL_54:

      return v40 & 1;
    }

    v111 = v136[0];
    LOBYTE(v40) = 1;
  }

  else
  {
LABEL_18:
    v40 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v40 & 1;
}

uint64_t SKALocalStatusServer.resetDeliverySubject(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-v9];
  v11 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  swift_beginAccess();
  if (*(*(v1 + v11) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v12)
    {
      swift_endAccess();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, log);
      v32 = *(v5 + 16);
      v32(v10, a1, v4);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v29 = a1;
        v17 = v16;
        v30 = swift_slowAlloc();
        v33[0] = v30;
        *v17 = 136315138;
        lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24370]);
        v28 = v15;
        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v5 + 16;
        v20 = v19;
        (*(v5 + 8))(v10, v4);
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v33);

        v22 = v17;
        a1 = v29;
        *(v22 + 1) = v21;
        v23 = v22;
        _os_log_impl(&dword_220099000, v14, v28, "Resetting subject for %s", v22, 0xCu);
        v24 = v30;
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x223D77FF0](v24, -1, -1);
        MEMORY[0x223D77FF0](v23, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v10, v4);
      }

      swift_beginAccess();
      if (*(*(v2 + v11) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v25 & 1) != 0))
      {
        swift_endAccess();
        LOBYTE(v33[0]) = 1;

        CurrentValueSubject.send(completion:)();
      }

      else
      {
        swift_endAccess();
      }

      v32(v8, a1, v4);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(0, v8);
    }
  }

  return swift_endAccess();
}

uint64_t SKALocalStatusServer.reconcilePendingStatusesOnDevices(resetting:in:resetDiscoverySource:)(uint64_t a1, uint64_t a2, int a3)
{
  v520 = a3;
  v527 = a2;
  v521 = a1;
  v579 = *MEMORY[0x277D85DE8];
  v552 = type metadata accessor for Date();
  v518 = *(v552 - 8);
  v3 = MEMORY[0x28223BE20](v552);
  v551 = &v513 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v550 = &v513 - v5;
  v570 = type metadata accessor for LSKTargetDeviceFlags();
  v566 = *(v570 - 1);
  MEMORY[0x28223BE20](v570);
  v569 = &v513 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v523 = *(v556 - 8);
  MEMORY[0x28223BE20](v556);
  v555 = &v513 - v7;
  if (one-time initialization token for log != -1)
  {
    goto LABEL_399;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    v559 = __swift_project_value_buffer(v8, log);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_220099000, v9, v10, "reconcilePendingStatusesOnDevices START", v11, 2u);
      MEMORY[0x223D77FF0](v11, -1, -1);
    }

    v12 = v557;
    v13 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000045, 0x80000002201AC7D0);
    v14 = v12[22];
    v577 = 0;
    v522 = v14;
    v15 = [v14 allPublishedLocalStatusDevicesInDatabaseContext:v527 error:&v577];
    v16 = v577;
    if (!v15)
    {
      v71 = v577;

      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }

    v17 = v15;
    v530 = v13;
    v517 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatusDevice, off_27843D3B8);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v16;

    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So37SKADatabasePublishedLocalStatusDeviceCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v21 = v18;
    v22 = v20;
    v553 = v18;
    v564 = v18 >> 62;
    if (v18 >> 62)
    {
      goto LABEL_402;
    }

    v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v543 = v23;
    if (!v23)
    {
      break;
    }

    v24 = 0;
    v25 = v21 & 0xC000000000000001;
    v571 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v25)
      {
        v30 = v22;
        v31 = MEMORY[0x223D77050](v24);
      }

      else
      {
        if (v24 >= *(v571 + 16))
        {
          goto LABEL_394;
        }

        v30 = v22;
        v31 = *(v21 + 8 * v24 + 32);
      }

      v32 = v31;
      v33 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_386;
      }

      v34 = [v31 idsIdentifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = v32;
      v39 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v577 = v30;
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37);
      v43 = v30[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        break;
      }

      v47 = v42;
      if (v39[3] < v46)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
        v41 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v37);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_461;
        }

LABEL_21:
        if (v47)
        {
          goto LABEL_9;
        }

        goto LABEL_22;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v52 = v41;
      specialized _NativeDictionary.copy()();
      v41 = v52;
      if (v47)
      {
LABEL_9:
        v26 = v41;

        v27 = v577;
        v28 = *(v577 + 7);
        v29 = *(v28 + 8 * v26);
        *(v28 + 8 * v26) = v38;
        v22 = v27;

        goto LABEL_10;
      }

LABEL_22:
      v22 = v577;
      *(v577 + (v41 >> 6) + 8) |= 1 << v41;
      v49 = (v22[6] + 16 * v41);
      *v49 = v35;
      v49[1] = v37;
      *(v22[7] + v41) = v38;

      v50 = v22[2];
      v45 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v45)
      {
        goto LABEL_391;
      }

      v22[2] = v51;
LABEL_10:
      ++v24;
      v21 = v553;
      if (v33 == v543)
      {
        goto LABEL_26;
      }
    }

LABEL_387:
    __break(1u);
LABEL_388:
    __break(1u);
LABEL_389:
    __break(1u);
LABEL_390:
    __break(1u);
LABEL_391:
    __break(1u);
LABEL_392:
    __break(1u);
LABEL_393:
    __break(1u);
LABEL_394:
    __break(1u);
LABEL_395:
    __break(1u);
LABEL_396:
    __break(1u);
LABEL_397:
    __break(1u);
LABEL_398:
    __break(1u);
LABEL_399:
    swift_once();
  }

LABEL_26:
  v528 = v22;
  v577 = 0;
  v53 = [v522 allPublishedLocalStatusesInDatabaseContext:v527 error:{&v577, v513, v514}];
  v54 = v577;
  if (!v53)
  {
    v73 = v577;

    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v55 = v53;
  v539 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
  v565 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v54;

  KeyPath = swift_getKeyPath();
  v58 = v521;
  v59 = *(v521 + 16);
  v531 = v59;
  if (v59)
  {
    v576 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)(v59);
    v60 = *(v523 + 16);
    v61 = v58 + ((*(v523 + 80) + 32) & ~*(v523 + 80));
    v567 = *(v523 + 72);
    v568 = v60;
    v62 = (v523 + 8);
    v63 = v576;
    v571 = KeyPath;
    do
    {
      v64 = v555;
      v65 = v556;
      (v568)(v555, v61, v556);
      swift_getAtKeyPath();
      (*v62)(v64, v65);
      v67 = v577;
      v66 = v578;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 16) + 1, 1);
        v63 = v576;
      }

      v69 = *(v63 + 16);
      v68 = *(v63 + 24);
      if (v69 >= v68 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
        v63 = v576;
      }

      *(v63 + 16) = v69 + 1;
      v70 = v63 + 16 * v69;
      *(v70 + 32) = v67;
      *(v70 + 40) = v66;
      v61 += v567;
      --v59;
    }

    while (v59);
  }

  else
  {

    v63 = MEMORY[0x277D84F90];
  }

  v571 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v63);

  v576 = MEMORY[0x277D84F90];
  if (v564)
  {
    v74 = __CocoaSet.count.getter();
  }

  else
  {
    v74 = *((v553 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = MEMORY[0x277D84F90];
  if (v74)
  {
    v577 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)(v74);
    if ((v74 & 0x8000000000000000) == 0)
    {
      v76 = 0;
      v77 = v553;
      v78 = v553 & 0xC000000000000001;
      do
      {
        if (v78)
        {
          v79 = MEMORY[0x223D77050](v76);
        }

        else
        {
          v79 = *(v77 + 8 * v76 + 32);
        }

        v80 = v79;
        v81 = [v80 idsIdentifier];
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;

        v75 = v577;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75[2] + 1, 1);
          v75 = v577;
        }

        v77 = v553;
        v86 = v75[2];
        v85 = v75[3];
        if (v86 >= v85 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
          v77 = v553;
          v75 = v577;
        }

        ++v76;
        v75[2] = v86 + 1;
        v87 = &v75[2 * v86];
        *(v87 + 4) = v82;
        *(v87 + 5) = v84;
      }

      while (v74 != v76);
      goto LABEL_52;
    }

    __break(1u);
LABEL_410:
    v440 = __CocoaSet.count.getter();
    goto LABEL_322;
  }

LABEL_52:
  v88 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v75);

  v575 = v88;
  v90 = v530;
  if (v530 >> 62)
  {
    goto LABEL_406;
  }

  v91 = *((v530 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_54:
  v92 = MEMORY[0x277D84F90];
  if (!v91)
  {
    v96 = MEMORY[0x277D84F90];
LABEL_260:
    v541 = v96;

    if (v543)
    {
      v376 = 0;
      v377 = v553 & 0xC000000000000001;
      v563 = v553 & 0xFFFFFFFFFFFFFF8;
      v562 = (v553 + 32);
      v378 = v571 + 56;
      v561 = v553 & 0xC000000000000001;
      do
      {
        if (v377)
        {
          v379 = MEMORY[0x223D77050](v376);
          v45 = __OFADD__(v376++, 1);
          if (v45)
          {
            goto LABEL_392;
          }
        }

        else
        {
          if (v376 >= *(v563 + 16))
          {
            goto LABEL_395;
          }

          v379 = v562[v376];
          v45 = __OFADD__(v376++, 1);
          if (v45)
          {
            goto LABEL_392;
          }
        }

        v380 = v379;
        if ([v379 discoverySource] == 2)
        {
          v565 = v380;
          if (v531)
          {
            v381 = v565;
            v382 = [v565 pendingStatuses];
            v383 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v566 = v383;
            v573 = v92;
            v574 = v383;
            v384 = [v381 deliveredStatuses];
            v385 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v569 = v385;
            if (v385 >> 62)
            {
              v386 = __CocoaSet.count.getter();
            }

            else
            {
              v386 = *((v385 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v564 = v376;
            v387 = v92;
            if (v386)
            {
              v388 = 0;
              v570 = (v569 & 0xC000000000000001);
              v567 = v569 + 32;
              v568 = v569 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (v570)
                {
                  v389 = MEMORY[0x223D77050](v388, v569);
                }

                else
                {
                  if (v388 >= *(v568 + 16))
                  {
                    goto LABEL_388;
                  }

                  v389 = *(v567 + 8 * v388);
                }

                v390 = v389;
                v45 = __OFADD__(v388++, 1);
                if (v45)
                {
                  break;
                }

                v391 = [v389 identifier];
                v392 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v394 = v393;

                if (*(v571 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v395 = Hasher._finalize()(), v396 = v571, v397 = -1 << *(v571 + 32), v398 = v395 & ~v397, ((*(v378 + ((v398 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v398) & 1) != 0))
                {
                  v399 = v387;
                  v400 = ~v397;
                  while (1)
                  {
                    v401 = (*(v396 + 48) + 16 * v398);
                    v402 = *v401 == v392 && v401[1] == v394;
                    if (v402 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {
                      break;
                    }

                    v398 = (v398 + 1) & v400;
                    v396 = v571;
                    if (((*(v378 + ((v398 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v398) & 1) == 0)
                    {
                      goto LABEL_290;
                    }
                  }

                  v404 = v390;
                  MEMORY[0x223D76BD0]();
                  if (*((v574 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v574 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v566 = v574;
                  v387 = v399;
                  if (v388 == v386)
                  {
                    goto LABEL_297;
                  }
                }

                else
                {
LABEL_290:

                  v403 = v390;
                  MEMORY[0x223D76BD0]();
                  if (*((v573 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v573 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v387 = v573;
                  if (v388 == v386)
                  {
                    goto LABEL_297;
                  }
                }
              }

              __break(1u);
LABEL_380:
              __break(1u);
LABEL_381:
              __break(1u);
LABEL_382:
              __break(1u);
LABEL_383:
              __break(1u);
LABEL_384:
              __break(1u);
LABEL_385:
              __break(1u);
LABEL_386:
              __break(1u);
              goto LABEL_387;
            }

LABEL_297:

            v405 = [v565 idsIdentifier];
            if (!v405)
            {
              v406 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v405 = MEMORY[0x223D76B00](v406);
            }

            v407 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v409 = Array._bridgeToObjectiveC()().super.isa;

            [v407 initWithIDSIdentifier:v405 pendingStatuses:isa deliveredStatuses:v409 discoverySource:2];

            MEMORY[0x223D76BD0]();
            v92 = MEMORY[0x277D84F90];
            v377 = v561;
            if (*((v576 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v576 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v541 = v576;
            v376 = v564;
          }

          v410 = v565;
          v411 = [v565 idsIdentifier];
          v412 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v414 = v413;

          specialized Set._Variant.remove(_:)(v412, v414);
        }

        else
        {
        }
      }

      while (v376 != v543);
    }

    v561 = v541 >> 62;
    if (v541 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_314;
      }
    }

    else if (!*((v541 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_314;
    }

    v415 = Logger.logObject.getter();
    v416 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v415, v416))
    {
      v417 = swift_slowAlloc();
      *v417 = 134217984;
      if (v561)
      {
        v418 = __CocoaSet.count.getter();
      }

      else
      {
        v418 = *((v541 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v417 + 4) = v418;

      _os_log_impl(&dword_220099000, v415, v416, "reconcilePendingStatusesOnDevices inserting new devices {devicesToSave.count: %ld}", v417, 0xCu);
      MEMORY[0x223D77FF0](v417, -1, -1);
    }

    else
    {
    }

    v419 = Array._bridgeToObjectiveC()().super.isa;
    v577 = 0;
    v420 = [v522 createOrUpdatePublishedLocalStatusDevices:v419 databaseContext:v527 error:&v577];

    if (!v420)
    {
      goto LABEL_355;
    }

    v421 = v577;
LABEL_314:
    v422 = v575;
    if (!*(v575 + 16))
    {
LABEL_319:
      v560 = v422;
      v574 = v92;
      v577 = 0;
      v435 = [v522 allPublishedLocalStatusDevicesInDatabaseContext:v527 error:&v577];
      v436 = v577;
      if (!v435)
      {
        v469 = v577;
        v470 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v471 = v470;
        v472 = Logger.logObject.getter();
        v473 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v472, v473))
        {
          goto LABEL_449;
        }

        v474 = swift_slowAlloc();
        v475 = swift_slowAlloc();
        *v474 = 138412290;
        v476 = v470;
        v477 = _swift_stdlib_bridgeErrorToNSError();
        *(v474 + 4) = v477;
        *v475 = v477;
        _os_log_impl(&dword_220099000, v472, v473, "Failed to fetch all published local status devices while evaluating recent statuses: %@", v474, 0xCu);
        outlined destroy of UUID?(v475, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223D77FF0](v475, -1, -1);
        MEMORY[0x223D77FF0](v474, -1, -1);

        goto LABEL_450;
      }

      v437 = v435;
      v438 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v439 = v436;

      v573 = v92;
      v558 = v438;
      if (v438 >> 62)
      {
        goto LABEL_410;
      }

      v440 = *((v438 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_322:
      v22 = v557;
      v441 = MEMORY[0x277D84F90];
      if (!v440)
      {
        v478 = MEMORY[0x277D84F90];
        goto LABEL_362;
      }

      v442 = 0;
      v566 = v558 & 0xC000000000000001;
      v565 = v558 & 0xFFFFFFFFFFFFFF8;
      v563 = v558 + 32;
      v564 = "re/SKALocalStatusServer.swift";
      v562 = v440;
      while (1)
      {
        if (v566)
        {
          v443 = MEMORY[0x223D77050](v442, v558);
        }

        else
        {
          if (*(v565 + 16) <= v442)
          {
            goto LABEL_401;
          }

          v443 = *(v563 + 8 * v442);
        }

        v444 = v443;
        v45 = __OFADD__(v442, 1);
        v445 = v442 + 1;
        if (v45)
        {
          __break(1u);
LABEL_401:
          __break(1u);
LABEL_402:
          v23 = __CocoaSet.count.getter();
          v21 = v553;
          goto LABEL_7;
        }

        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v570 = v444;
        v446 = [v444 idsIdentifier];
        v568 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v569 = v447;

        v448 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000025, v564 | 0x8000000000000000);
        v449 = v448;
        v450 = v448 & 0xFFFFFFFFFFFFFF8;
        if (v448 >> 62)
        {
          v451 = __CocoaSet.count.getter();
          v571 = v445;
          if (v451)
          {
LABEL_334:
            v452 = 0;
            v453 = MEMORY[0x277D84F90];
            do
            {
              v454 = v452;
              while (1)
              {
                if ((v449 & 0xC000000000000001) != 0)
                {
                  v455 = MEMORY[0x223D77050](v454, v449);
                }

                else
                {
                  if (v454 >= *(v450 + 16))
                  {
                    goto LABEL_382;
                  }

                  v455 = *(v449 + 8 * v454 + 32);
                }

                v456 = v455;
                v452 = v454 + 1;
                if (__OFADD__(v454, 1))
                {
                  goto LABEL_381;
                }

                v457 = [v455 uniqueID];
                if (v457)
                {
                  break;
                }

                ++v454;
                if (v452 == v451)
                {
                  goto LABEL_353;
                }
              }

              v458 = v457;
              v459 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v567 = v460;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v453 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v453 + 2) + 1, 1, v453);
              }

              v462 = *(v453 + 2);
              v461 = *(v453 + 3);
              if (v462 >= v461 >> 1)
              {
                v453 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v461 > 1), v462 + 1, 1, v453);
              }

              *(v453 + 2) = v462 + 1;
              v463 = &v453[16 * v462];
              v464 = v567;
              *(v463 + 4) = v459;
              *(v463 + 5) = v464;
            }

            while (v452 != v451);
            goto LABEL_353;
          }
        }

        else
        {
          v451 = *((v448 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v571 = v445;
          if (v451)
          {
            goto LABEL_334;
          }
        }

        v453 = MEMORY[0x277D84F90];
LABEL_353:

        v577 = v568;
        v578 = v569;
        MEMORY[0x28223BE20](v465);
        *(&v513 - 2) = &v577;
        v466 = v526;
        v467 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v513 - 4), v453);
        v526 = v466;

        if (v467)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v22 = v557;
        v442 = v571;
        if (v571 == v562)
        {
          goto LABEL_360;
        }
      }
    }

    v423 = Logger.logObject.getter();
    v424 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v423, v424))
    {
      v425 = swift_slowAlloc();
      v426 = swift_slowAlloc();
      v577 = v426;
      *v425 = 136315138;

      v427 = Set.description.getter();
      v429 = v428;

      v430 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v427, v429, &v577);

      *(v425 + 4) = v430;
      _os_log_impl(&dword_220099000, v423, v424, "reconcilePendingStatusesOnDevices removing ids lost devices {deviceIDsToRemove: %s}", v425, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v426);
      MEMORY[0x223D77FF0](v426, -1, -1);
      MEMORY[0x223D77FF0](v425, -1, -1);
    }

    _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v431);
    v432 = Array._bridgeToObjectiveC()().super.isa;

    v577 = 0;
    v433 = [v522 deletePublishedLocalStatusDevices:v432 databaseContext:v527 error:&v577];

    if (v433)
    {
      v434 = v577;
      goto LABEL_319;
    }

LABEL_355:
    v468 = v577;

    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v93 = 0;
  v533 = v90 & 0xC000000000000001;
  v525 = v90 & 0xFFFFFFFFFFFFFF8;
  v524 = v90 + 32;
  v94 = v565 & 0xFFFFFFFFFFFFFF8;
  v554 = v565 & 0xFFFFFFFFFFFFFF8;
  if (v565 < 0)
  {
    v94 = v565;
  }

  v514 = v94;
  v568 = v565 & 0xC000000000000001;
  v549 = (v565 + 32);
  v567 = v566 + 8;
  v547 = v523 + 16;
  v546 = (v523 + 8);
  v95 = MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8;
  v519 = MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8;
  if (MEMORY[0x277D84F90] < 0)
  {
    v95 = MEMORY[0x277D84F90];
  }

  v513 = v95;
  *&v89 = 136315138;
  v516 = v89;
  *&v89 = 136315394;
  v542 = v89;
  *&v89 = 138412290;
  v515 = v89;
  v96 = MEMORY[0x277D84F90];
  v532 = v91;
  while (1)
  {
    v541 = v96;
    if (v533)
    {
      v97 = v93;
      v98 = MEMORY[0x223D77050](v93, v530);
    }

    else
    {
      if (v93 >= *(v525 + 16))
      {
        goto LABEL_396;
      }

      v97 = v93;
      v98 = *(v524 + 8 * v93);
    }

    v99 = v98;
    v45 = __OFADD__(v97, 1);
    v100 = v97 + 1;
    if (v45)
    {
      goto LABEL_393;
    }

    v540 = v100;
    v101 = [v98 uniqueID];
    if (!v101)
    {
      goto LABEL_61;
    }

    v22 = v101;
    v534 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v538 = v102;
    v574 = v92;
    v103 = v565 >> 62 ? __CocoaSet.count.getter() : *(v554 + 16);
    v537 = v22;
    if (v103)
    {
      break;
    }

    v566 = v92;
LABEL_91:
    if (v566 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_134:

        v181 = v537;
        goto LABEL_62;
      }
    }

    else if (!*((v566 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_134;
    }

    v115 = v534;
    v116 = v538;
    specialized Set._Variant.remove(_:)(v534, v538);

    v117 = specialized Dictionary.subscript.getter(v115, v116, v528);
    v118 = v537;

    if (!v117)
    {

      v154 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
      v155 = Array._bridgeToObjectiveC()().super.isa;

      v156 = Array._bridgeToObjectiveC()().super.isa;
      v157 = [v154 initWithIDSIdentifier:v118 pendingStatuses:v155 deliveredStatuses:v156 discoverySource:1];

      v158 = v157;
      MEMORY[0x223D76BD0]();
      if (*((v576 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v576 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_258;
    }

    v119 = [v117 discoverySource];
    v529 = v117;
    if (v119 != 1)
    {
      if ((v520 & 1) == 0)
      {

        v174 = v529;
        v175 = v529;
        v176 = Logger.logObject.getter();
        v177 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v176, v177))
        {
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          *v178 = v515;
          *(v178 + 4) = v175;
          *v179 = v174;
          v180 = v175;
          _os_log_impl(&dword_220099000, v176, v177, "Skipping unexpected found status device %@", v178, 0xCu);
          outlined destroy of UUID?(v179, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x223D77FF0](v179, -1, -1);
          MEMORY[0x223D77FF0](v178, -1, -1);
          v175 = v176;
          v176 = v180;
        }

LABEL_61:
        goto LABEL_62;
      }

      v120 = v538;

      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v564 = swift_slowAlloc();
        v577 = v564;
        *v123 = v516;

        v125 = specialized Collection.prefix(_:)(8, v534, v120, v124);
        v127 = v126;
        v129 = v128;
        v131 = v130;

        v132 = MEMORY[0x223D76B60](v125, v127, v129, v131);
        v134 = v133;
        v92 = MEMORY[0x277D84F90];

        v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v577);

        *(v123 + 4) = v135;
        _os_log_impl(&dword_220099000, v121, v122, "Modifying existing device discovery source to IDS device: {device: %s}", v123, 0xCu);
        v136 = v564;
        __swift_destroy_boxed_opaque_existential_0(v564);
        MEMORY[0x223D77FF0](v136, -1, -1);
        MEMORY[0x223D77FF0](v123, -1, -1);
      }

      v117 = v529;
    }

    v137 = [v117 pendingStatuses];
    v138 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v138 >> 62)
    {
      v139 = __CocoaSet.count.getter();
    }

    else
    {
      v139 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v562 = v99;
    if (v139)
    {
      v577 = v92;
      specialized ContiguousArray.reserveCapacity(_:)(v139);
      if (v139 < 0)
      {
        __break(1u);
LABEL_404:
        __break(1u);
LABEL_405:
        __break(1u);
LABEL_406:
        v91 = __CocoaSet.count.getter();
        v90 = v530;
        goto LABEL_54;
      }

      v140 = 0;
      v141 = v138;
      v564 = v138 & 0xC000000000000001;
      v142 = v138;
      v143 = v139;
      do
      {
        if (v564)
        {
          v144 = MEMORY[0x223D77050](v140, v141);
        }

        else
        {
          v144 = *(v141 + 8 * v140 + 32);
        }

        v145 = v144;
        v146 = [v145 identifier];
        v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v149 = v148;

        v150 = v577;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v150[2] + 1, 1);
          v150 = v577;
        }

        v152 = v150[2];
        v151 = v150[3];
        if (v152 >= v151 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v151 > 1), v152 + 1, 1);
          v150 = v577;
        }

        ++v140;
        v150[2] = v152 + 1;
        v153 = &v150[2 * v152];
        v153[4] = v147;
        v153[5] = v149;
        v92 = MEMORY[0x277D84F90];
        v141 = v142;
      }

      while (v143 != v140);
    }

    else
    {

      v150 = v92;
    }

    v159 = [v529 deliveredStatuses];
    v160 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v160 >> 62)
    {
      v161 = __CocoaSet.count.getter();
      if (!v161)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v161 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v161)
      {
        goto LABEL_137;
      }
    }

    v577 = v92;
    specialized ContiguousArray.reserveCapacity(_:)(v161);
    if (v161 < 0)
    {
      goto LABEL_404;
    }

    v162 = 0;
    v163 = v160;
    v563 = v160 & 0xC000000000000001;
    v564 = v160;
    v164 = v161;
    do
    {
      if (v563)
      {
        v165 = MEMORY[0x223D77050](v162, v163);
      }

      else
      {
        v165 = *(v163 + 8 * v162 + 32);
      }

      v166 = v165;
      v167 = [v166 identifier];
      v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v170 = v169;

      v92 = v577;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v92 + 16) + 1, 1);
        v92 = v577;
      }

      v172 = *(v92 + 16);
      v171 = *(v92 + 24);
      if (v172 >= v171 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v171 > 1), v172 + 1, 1);
        v92 = v577;
      }

      ++v162;
      *(v92 + 16) = v172 + 1;
      v173 = (v92 + 16 * v172);
      v173[4] = v168;
      v173[5] = v170;
      v163 = v564;
    }

    while (v164 != v162);
LABEL_137:

    v577 = v150;
    specialized Array.append<A>(contentsOf:)(v92);
    v182 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v577);

    v183 = swift_getKeyPath();
    v184 = v531;
    v564 = v182;
    if (v531)
    {
      v573 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)(v531);
      v185 = v521 + ((*(v523 + 80) + 32) & ~*(v523 + 80));
      v563 = *(v523 + 72);
      v186 = *(v523 + 16);
      v187 = v573;
      do
      {
        v188 = v555;
        v189 = v556;
        v186(v555, v185, v556);
        v190 = v183;
        swift_getAtKeyPath();
        (*v546)(v188, v189);
        v191 = v577;
        v192 = v578;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v187 + 16) + 1, 1);
          v187 = v573;
        }

        v194 = *(v187 + 16);
        v193 = *(v187 + 24);
        if (v194 >= v193 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v193 > 1), v194 + 1, 1);
          v187 = v573;
        }

        *(v187 + 16) = v194 + 1;
        v195 = v187 + 16 * v194;
        *(v195 + 32) = v191;
        *(v195 + 40) = v192;
        v185 += v563;
        --v184;
        v183 = v190;
      }

      while (v184);

      v92 = MEMORY[0x277D84F90];
      v182 = v564;
    }

    else
    {

      v92 = MEMORY[0x277D84F90];
      v187 = MEMORY[0x277D84F90];
    }

    v196 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v187);

    v197 = v566;
    v560 = v196;
    v544 = v566 >> 62;
    if (v566 >> 62)
    {
      v198 = __CocoaSet.count.getter();
      v99 = v562;
      if (!v198)
      {
LABEL_160:

        v207 = v92;
        goto LABEL_161;
      }
    }

    else
    {
      v198 = *((v566 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v99 = v562;
      if (!v198)
      {
        goto LABEL_160;
      }
    }

    v577 = v92;

    specialized ContiguousArray.reserveCapacity(_:)(v198);
    if (v198 < 0)
    {
      goto LABEL_405;
    }

    v199 = 0;
    v200 = v197 & 0xC000000000000001;
    do
    {
      if (v200)
      {
        v201 = MEMORY[0x223D77050](v199, v566);
      }

      else
      {
        v201 = *(v566 + 8 * v199 + 32);
      }

      v202 = v201;
      v203 = [v202 identifier];
      v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v206 = v205;

      v207 = v577;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v207[2] + 1, 1);
        v207 = v577;
      }

      v209 = v207[2];
      v208 = v207[3];
      if (v209 >= v208 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v208 > 1), v209 + 1, 1);
        v207 = v577;
      }

      ++v199;
      v207[2] = v209 + 1;
      v210 = &v207[2 * v209];
      *(v210 + 4) = v204;
      *(v210 + 5) = v206;
      v196 = v560;
      v182 = v564;
    }

    while (v198 != v199);
    v92 = MEMORY[0x277D84F90];
LABEL_161:
    v211 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v207);

    v573 = v92;
    v212 = [v529 pendingStatuses];
    v213 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v561 = v213;
    if (v213 >> 62)
    {
      v214 = __CocoaSet.count.getter();
      if (!v214)
      {
LABEL_186:

        v558 = v92;
        goto LABEL_187;
      }
    }

    else
    {
      v214 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v214)
      {
        goto LABEL_186;
      }
    }

    v215 = v92;
    v216 = 0;
    v563 = v561 & 0xC000000000000001;
    v548 = v561 & 0xFFFFFFFFFFFFFF8;
    v545 = (v561 + 32);
    v217 = v211 + 56;
    v558 = v215;
    do
    {
      if (v563)
      {
        v218 = MEMORY[0x223D77050](v216, v561);
      }

      else
      {
        if (v216 >= *(v548 + 16))
        {
          goto LABEL_389;
        }

        v218 = v545[v216].isa;
      }

      v219 = v218;
      v45 = __OFADD__(v216++, 1);
      if (v45)
      {
        goto LABEL_383;
      }

      v220 = [(objc_class *)v218 identifier];
      v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v223 = v222;

      if (*(v211 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v224 = Hasher._finalize()();
        v225 = -1 << *(v211 + 32);
        v226 = v224 & ~v225;
        if ((*(v217 + ((v226 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v226))
        {
          v227 = ~v225;
          while (1)
          {
            v228 = (*(v211 + 48) + 16 * v226);
            v229 = *v228 == v221 && v228[1] == v223;
            if (v229 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v226 = (v226 + 1) & v227;
            if (((*(v217 + ((v226 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v226) & 1) == 0)
            {
              goto LABEL_180;
            }
          }

          v230 = v219;
          MEMORY[0x223D76BD0]();
          v99 = v562;
          v182 = v564;
          if (*((v573 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v573 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v558 = v573;
        }

        else
        {
LABEL_180:

          v99 = v562;
          v182 = v564;
        }
      }

      else
      {

        v99 = v562;
      }
    }

    while (v216 != v214);

    v92 = MEMORY[0x277D84F90];
    v196 = v560;
LABEL_187:

    v231 = v566;

    v572 = v92;
    if (v544)
    {
      v232 = __CocoaSet.count.getter();
      if (v232)
      {
LABEL_189:
        v233 = 0;
        v545 = (v231 & 0xC000000000000001);
        v536 = v231 & 0xFFFFFFFFFFFFFF8;
        v535 = v231 + 32;
        v234 = v182 + 56;
        v544 = v232;
        v548 = v182 + 56;
        do
        {
          if (v545)
          {
            v236 = MEMORY[0x223D77050](v233, v231);
            v45 = __OFADD__(v233, 1);
            v237 = (v233 + 1);
            if (v45)
            {
              goto LABEL_384;
            }
          }

          else
          {
            if (v233 >= *(v536 + 16))
            {
              goto LABEL_390;
            }

            v236 = *(v535 + 8 * v233);
            v45 = __OFADD__(v233, 1);
            v237 = (v233 + 1);
            if (v45)
            {
              goto LABEL_384;
            }
          }

          v563 = v236;
          v238 = [v236 identifier];
          v239 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v241 = v240;

          v242 = *(v182 + 16);
          v561 = v237;
          if (v242 && (Hasher.init(_seed:)(), String.hash(into:)(), v243 = Hasher._finalize()(), v244 = -1 << *(v182 + 32), v245 = v243 & ~v244, ((*(v234 + ((v245 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v245) & 1) != 0))
          {
            v246 = ~v244;
            while (1)
            {
              v247 = (*(v182 + 48) + 16 * v245);
              v248 = *v247 == v239 && v247[1] == v241;
              if (v248 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v245 = (v245 + 1) & v246;
              if (((*(v234 + ((v245 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v245) & 1) == 0)
              {
                goto LABEL_207;
              }
            }

            v249 = v563;
          }

          else
          {
LABEL_207:

            v249 = v563;
            v250 = v563;
            v251 = v99;
            v252 = Logger.logObject.getter();
            v253 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v252, v253))
            {
              LODWORD(v558) = v253;
              v254 = swift_slowAlloc();
              v255 = swift_slowAlloc();
              v577 = v255;
              *v254 = v542;
              v256 = [v250 identifier];
              v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v259 = v258;

              v260 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v257, v259, &v577);

              *(v254 + 4) = v260;
              *(v254 + 12) = 2080;
              v261 = [v251 uniqueID];

              if (!v261)
              {
                __break(1u);
LABEL_458:
                __break(1u);
LABEL_459:
                __break(1u);
              }

              v262 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v264 = v263;

              v266 = specialized Collection.prefix(_:)(8, v262, v264, v265);
              v268 = v267;
              v270 = v269;
              v272 = v271;

              v273 = MEMORY[0x223D76B60](v266, v268, v270, v272);
              v275 = v274;

              v276 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v273, v275, &v577);

              *(v254 + 14) = v276;
              _os_log_impl(&dword_220099000, v252, v558, "Adding new pending status to database device {status: %s, device: %s}", v254, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D77FF0](v255, -1, -1);
              MEMORY[0x223D77FF0](v254, -1, -1);

              v92 = MEMORY[0x277D84F90];
              v99 = v562;
              v196 = v560;
              v182 = v564;
              v249 = v563;
            }

            else
            {
            }

            v277 = v250;
            MEMORY[0x223D76BD0]();
            v234 = v548;
            if (*((v573 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v573 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v558 = v573;
          }

          v278 = [v249 identifier];
          v279 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v281 = v280;

          LOBYTE(v278) = specialized Set.contains(_:)(v279, v281, v196);

          if (v278)
          {
            v282 = v249;
            v283 = v99;
            v284 = Logger.logObject.getter();
            v285 = static os_log_type_t.default.getter();

            v286 = os_log_type_enabled(v284, v285);
            v563 = v282;
            if (v286)
            {
              v287 = swift_slowAlloc();
              v288 = swift_slowAlloc();
              v577 = v288;
              *v287 = v542;
              v289 = [v282 identifier];
              v290 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v292 = v291;

              v293 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v290, v292, &v577);

              *(v287 + 4) = v293;
              *(v287 + 12) = 2080;
              v294 = [v283 uniqueID];

              if (!v294)
              {
                goto LABEL_458;
              }

              v295 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v297 = v296;

              v299 = specialized Collection.prefix(_:)(8, v295, v297, v298);
              v301 = v300;
              v303 = v302;
              v305 = v304;

              v306 = MEMORY[0x223D76B60](v299, v301, v303, v305);
              v308 = v307;

              v309 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v306, v308, &v577);

              *(v287 + 14) = v309;
              _os_log_impl(&dword_220099000, v284, v285, "Adding reset status to pending statuses {status: %s, device: %s", v287, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D77FF0](v288, -1, -1);
              MEMORY[0x223D77FF0](v287, -1, -1);

              v92 = MEMORY[0x277D84F90];
              v99 = v562;
              v196 = v560;
              v182 = v564;
            }

            else
            {
            }

            v235 = v544;
            MEMORY[0x223D76BD0]();
            v231 = v566;
            v234 = v548;
            if (*((v573 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v573 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              v231 = v566;
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v558 = v573;
          }

          else
          {

            v231 = v566;
            v235 = v544;
          }

          v229 = v561 == v235;
          v233 = v561;
        }

        while (!v229);
      }
    }

    else
    {
      v232 = *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v232)
      {
        goto LABEL_189;
      }
    }

    if (v92 >> 62)
    {
      v310 = __CocoaSet.count.getter();
      if (v310)
      {
LABEL_226:
        if (!(v92 >> 62))
        {
          __break(1u);
LABEL_461:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v311 = 0;
        v312 = v196 + 56;
        v313 = v92;
        v566 = v310;
        do
        {
          v314 = MEMORY[0x223D77050](v311, v92);
          v45 = __OFADD__(v311, 1);
          v311 = (v311 + 1);
          if (v45)
          {
            goto LABEL_385;
          }

          v315 = v314;
          v316 = [v314 identifier];
          v317 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v319 = v318;

          if (*(v196 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v320 = Hasher._finalize()(), v321 = -1 << *(v196 + 32), v322 = v320 & ~v321, ((*(v312 + ((v322 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v322) & 1) != 0))
          {
            v564 = v313;
            v323 = ~v321;
            while (1)
            {
              v324 = (*(v196 + 48) + 16 * v322);
              v325 = *v324 == v317 && v324[1] == v319;
              if (v325 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v322 = (v322 + 1) & v323;
              if (((*(v312 + ((v322 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v322) & 1) == 0)
              {
                goto LABEL_241;
              }
            }

            v327 = v562;
            v328 = v315;
            v329 = Logger.logObject.getter();
            v330 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v329, v330))
            {
              LODWORD(v548) = v330;
              v561 = v329;
              v331 = swift_slowAlloc();
              v332 = swift_slowAlloc();
              v577 = v332;
              *v331 = v542;
              v563 = v328;
              v333 = [v328 identifier];
              v334 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v336 = v335;

              v337 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v334, v336, &v577);

              *(v331 + 4) = v337;
              *(v331 + 12) = 2080;
              v338 = [v327 uniqueID];

              if (!v338)
              {
                goto LABEL_459;
              }

              v339 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v341 = v340;

              v343 = specialized Collection.prefix(_:)(8, v339, v341, v342);
              v345 = v344;
              v347 = v346;
              v349 = v348;

              v350 = MEMORY[0x223D76B60](v343, v345, v347, v349);
              v352 = v351;

              v353 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v350, v352, &v577);

              *(v331 + 14) = v353;
              v354 = v561;
              _os_log_impl(&dword_220099000, v561, v548, "Removing reset status from delivered statuses {status: %s, device: %s}", v331, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D77FF0](v332, -1, -1);
              MEMORY[0x223D77FF0](v331, -1, -1);

              v92 = MEMORY[0x277D84F90];
              v196 = v560;
            }

            else
            {
            }

            v313 = v564;
          }

          else
          {
LABEL_241:

            v326 = v315;
            MEMORY[0x223D76BD0]();
            if (*((v572 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v572 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v313 = v572;
          }
        }

        while (v311 != v566);

        v99 = v562;
        goto LABEL_250;
      }
    }

    else
    {
      v310 = *(v519 + 16);
      if (v310)
      {
        goto LABEL_226;
      }
    }

    v313 = v92;
LABEL_250:
    v355 = v538;
    if (v531)
    {
      v564 = v313;

      v356 = Logger.logObject.getter();
      v357 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v356, v357))
      {
        v358 = swift_slowAlloc();
        v566 = swift_slowAlloc();
        v577 = v566;
        *v358 = v516;
        v360 = specialized Collection.prefix(_:)(8, v534, v355, v359);
        v362 = v361;
        v364 = v363;
        v366 = v365;

        v367 = MEMORY[0x223D76B60](v360, v362, v364, v366);
        v369 = v368;
        v92 = MEMORY[0x277D84F90];

        v370 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v367, v369, &v577);

        *(v358 + 4) = v370;
        _os_log_impl(&dword_220099000, v356, v357, "Saving modified status to database {device: %s}", v358, 0xCu);
        v371 = v566;
        __swift_destroy_boxed_opaque_existential_0(v566);
        MEMORY[0x223D77FF0](v371, -1, -1);
        MEMORY[0x223D77FF0](v358, -1, -1);
      }

      else
      {
      }

      v372 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
      v373 = Array._bridgeToObjectiveC()().super.isa;

      v374 = Array._bridgeToObjectiveC()().super.isa;

      v375 = v537;
      [v372 initWithIDSIdentifier:v537 pendingStatuses:v373 deliveredStatuses:v374 discoverySource:1];

      MEMORY[0x223D76BD0]();
      if (*((v576 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v576 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_258:
      v96 = v576;
      goto LABEL_63;
    }

LABEL_62:
    v96 = v541;
LABEL_63:
    v93 = v540;
    if (v540 == v532)
    {
      goto LABEL_260;
    }
  }

  v104 = 0;
  v566 = v92;
  while (1)
  {
    if (v568)
    {
      v105 = MEMORY[0x223D77050](v104, v565);
    }

    else
    {
      if (v104 >= *(v554 + 16))
      {
        goto LABEL_380;
      }

      v105 = *&v549[8 * v104];
    }

    v106 = v105;
    v45 = __OFADD__(v104++, 1);
    if (v45)
    {
      break;
    }

    [v105 targetDevicesFlags];
    v22 = v569;
    LSKTargetDeviceFlags.init(rawValue:)();
    v107 = LSKTargetDeviceFlags.idsDeviceTypes.getter();
    (*v567)(v22, v570);
    v108 = [v99 deviceType];
    if (*(v107 + 16) && (v109 = v108, Hasher.init(_seed:)(), v22 = &v577, MEMORY[0x223D772F0](v109), v110 = Hasher._finalize()(), v111 = -1 << *(v107 + 32), v112 = v110 & ~v111, ((*(v107 + 56 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112) & 1) != 0))
    {
      v113 = ~v111;
      while (*(*(v107 + 48) + 8 * v112) != v109)
      {
        v112 = (v112 + 1) & v113;
        if (((*(v107 + 56 + ((v112 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v112) & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      v114 = v106;
      v22 = &v574;
      MEMORY[0x223D76BD0]();
      if (*((v574 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v574 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v566 = v574;
      if (v104 == v103)
      {
        goto LABEL_91;
      }
    }

    else
    {
LABEL_74:

      if (v104 == v103)
      {
        goto LABEL_91;
      }
    }
  }

  __break(1u);
LABEL_360:
  v478 = v573;
  v441 = MEMORY[0x277D84F90];
LABEL_362:

  v577 = v441;
  if (v478 >> 62)
  {
    v479 = __CocoaSet.count.getter();
    if (v479)
    {
      goto LABEL_364;
    }

    goto LABEL_412;
  }

  v479 = *((v478 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v479)
  {
LABEL_412:
    v487 = MEMORY[0x277D84F90];
    goto LABEL_413;
  }

LABEL_364:
  v480 = 0;
  do
  {
    if ((v478 & 0xC000000000000001) != 0)
    {
      v481 = MEMORY[0x223D77050](v480, v478);
    }

    else
    {
      if (v480 >= *(v478 + 16))
      {
        goto LABEL_398;
      }

      v481 = *(v478 + 8 * v480 + 32);
    }

    v482 = v481;
    v483 = v480 + 1;
    if (__OFADD__(v480, 1))
    {
      goto LABEL_397;
    }

    v484 = [v481 pendingStatuses];
    v485 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v485 >> 62)
    {
      v486 = __CocoaSet.count.getter();
    }

    else
    {
      v486 = *((v485 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v486)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v22 = v557;
    ++v480;
  }

  while (v483 != v479);
  v487 = v577;
LABEL_413:

  v488 = v487;
  if (v487 >> 62)
  {
    goto LABEL_441;
  }

  v489 = *((v487 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v489)
  {
LABEL_415:
    v487 = 0;
    v569 = OBJC_IVAR___SKALocalStatusServer_screenOffStatusTimeoutSeconds;
    v565 = v488 & 0xC000000000000001;
    v562 = (v488 + 32);
    v490 = (v518 + 8);
    v568 = MEMORY[0x277D84F90];
    v564 = v488;
    v563 = v489;
    while (1)
    {
      if (v565)
      {
        v491 = MEMORY[0x223D77050](v487);
        v45 = __OFADD__(v487++, 1);
        if (v45)
        {
          goto LABEL_438;
        }
      }

      else
      {
        if (v487 >= *(v488 + 16))
        {
          goto LABEL_440;
        }

        v491 = v562[v487];
        v45 = __OFADD__(v487++, 1);
        if (v45)
        {
LABEL_438:
          __break(1u);
LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          v489 = __CocoaSet.count.getter();
          v488 = v487;
          if (!v489)
          {
            break;
          }

          goto LABEL_415;
        }
      }

      v566 = v491;
      v492 = [v491 pendingStatuses];
      v493 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v567 = v487;
      if (v493 >> 62)
      {
        v494 = __CocoaSet.count.getter();
        if (!v494)
        {
          goto LABEL_416;
        }
      }

      else
      {
        v494 = *((v493 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v494)
        {
          goto LABEL_416;
        }
      }

      if (v494 < 1)
      {
        goto LABEL_439;
      }

      v495 = 0;
      v570 = (v493 & 0xC000000000000001);
      v571 = v493;
      do
      {
        if (v570)
        {
          v496 = MEMORY[0x223D77050](v495, v493);
        }

        else
        {
          v496 = *(v493 + 8 * v495 + 32);
        }

        v497 = v496;
        v498 = [v496 modificationDate];
        v499 = v551;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v500 = v550;
        Date.addingTimeInterval(_:)();
        v501 = *v490;
        v502 = v552;
        (*v490)(v499, v552);
        static Date.now.getter();
        v503 = static Date.> infix(_:_:)();
        v501(v499, v502);
        v501(v500, v502);
        if (v503)
        {
          v504 = v497;
          MEMORY[0x223D76BD0]();
          if (*((v574 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v574 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v568 = v574;
        }

        else
        {
        }

        v493 = v571;
        ++v495;
        v22 = v557;
      }

      while (v494 != v495);
LABEL_416:

      v487 = v567;
      v488 = v564;
      if (v567 == v563)
      {
        goto LABEL_443;
      }
    }
  }

  v568 = MEMORY[0x277D84F90];
LABEL_443:

  if (v568 >> 62)
  {
    v505 = __CocoaSet.count.getter();
  }

  else
  {
    v505 = *((v568 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v505)
  {
    *(v22 + OBJC_IVAR___SKALocalStatusServer_recentPendingStatus) = 0;
    v506 = *(v22 + OBJC_IVAR___SKALocalStatusServer_browseTask);
    if (v506)
    {
      v470 = v506;
      [v470 setControlFlags_];
      v472 = Logger.logObject.getter();
      v507 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v472, v507))
      {
        v508 = swift_slowAlloc();
        *v508 = 0;
        _os_log_impl(&dword_220099000, v472, v507, "Removed bleScreenOff control flag from browseCompanionLink since all pending statuses are at least 3 days old", v508, 2u);
        MEMORY[0x223D77FF0](v508, -1, -1);
      }

LABEL_449:
    }
  }

LABEL_450:

  v509 = Logger.logObject.getter();
  v510 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v509, v510))
  {
    v511 = swift_slowAlloc();
    *v511 = 134218240;
    if (v561)
    {
      v512 = __CocoaSet.count.getter();
    }

    else
    {
      v512 = *((v541 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v511 + 4) = v512;

    *(v511 + 12) = 2048;
    *(v511 + 14) = *(v560 + 16);
    _os_log_impl(&dword_220099000, v509, v510, "reconcilePendingStatusesOnDevices END {devicesToSave.count: %ld, deviceIDsToRemove.count: %ld}", v511, 0x16u);
    MEMORY[0x223D77FF0](v511, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

void SKALocalStatusServer.stopBrowserTask()()
{
  v1 = v0 + OBJC_IVAR___SKALocalStatusServer_browseTask;
  v2 = *(v0 + OBJC_IVAR___SKALocalStatusServer_browseTask);
  if (v2)
  {
    v3 = *(v1 + 24);
    v4 = one-time initialization token for log;
    v5 = v2;

    v6 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, log);
    v8 = v5;

    v9 = v6;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v13 = v33;
      *v12 = 136315138;
      v32 = v3;
      v14 = [v8 activeDevices];
      v15 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
      v31 = v8;
      v16 = v9;
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = MEMORY[0x223D76C00](v17, v15);
      v20 = v19;

      v21 = v18;
      v3 = v32;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v33);

      *(v12 + 4) = v22;
      v9 = v16;
      v8 = v31;
      _os_log_impl(&dword_220099000, v10, v11, "Stopping existing browser task {activeDevices.count: %s}", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D77FF0](v13, -1, -1);
      MEMORY[0x223D77FF0](v12, -1, -1);
    }

    [v8 invalidate];
    if (v3)
    {
      v23 = v9;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_220099000, v24, v25, "Stopping existing browser task for shared home", v26, 2u);
        MEMORY[0x223D77FF0](v26, -1, -1);
      }

      [v23 invalidate];
    }

    v27 = *v1;
    v28 = *(v1 + 8);
    v29 = *(v1 + 16);
    v30 = *(v1 + 24);
    *v1 = 0u;
    *(v1 + 16) = 0u;

    outlined consume of SKALocalStatusServer.BrowseTask?(v27, v28, v29, v30);
  }
}

void SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v131 = a2;
  v140 = a1;
  v165 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v125 = &v122 - v9;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v128 = *(v137 - 8);
  v10 = MEMORY[0x28223BE20](v137);
  v136 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v145 = &v122 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v144 = &v122 - v14;
  v143 = type metadata accessor for LSKDomain();
  v133 = *(v143 - 8);
  v15 = MEMORY[0x28223BE20](v143);
  v142 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v141 = &v122 - v17;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v130 = *(v147 - 8);
  v18 = MEMORY[0x28223BE20](v147);
  v20 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v146 = &v122 - v21;
  if (one-time initialization token for log != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v22 = type metadata accessor for Logger();
    v23 = __swift_project_value_buffer(v22, log);

    v138 = v23;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    v26 = os_log_type_enabled(v24, v25);
    v139 = v20;
    v126 = a3;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v163 = v20;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v131, a3, &v163);
      _os_log_impl(&dword_220099000, v24, v25, "deliverAllPendingStatuses START {reason: %s}", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223D77FF0](v20, -1, -1);
      MEMORY[0x223D77FF0](v27, -1, -1);
    }

    v28 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000025, 0x80000002201AC640);
    v29 = *(v6 + 176);
    v163 = 0;
    v135 = v29;
    v30 = [v29 allPublishedLocalStatusDevicesInDatabaseContext:v140 error:&v163];
    v31 = v163;
    if (!v30)
    {
      v58 = v163;
LABEL_63:

      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v32 = v30;
    v148 = v28;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatusDevice, off_27843D3B8);
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v31;

    v162 = MEMORY[0x277D84F90];
    if (v33 >> 62)
    {
      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v36 = MEMORY[0x277D84F90];
    v156 = v6;
    if (v35)
    {
      v37 = 0;
      v153 = (v33 & 0xFFFFFFFFFFFFFF8);
      v154 = v33 & 0xC000000000000001;
      v151 = v33 + 32;
      v152 = "re/SKALocalStatusServer.swift";
      v149 = v35;
      v150 = v33;
      while (1)
      {
        if (v154)
        {
          v38 = MEMORY[0x223D77050](v37, v33);
        }

        else
        {
          if (v37 >= *(v153 + 2))
          {
            goto LABEL_69;
          }

          v38 = *(v151 + 8 * v37);
        }

        v20 = v38;
        v39 = __OFADD__(v37, 1);
        v40 = v37 + 1;
        if (v39)
        {
          break;
        }

        v160 = v40;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v41 = [v20 idsIdentifier];
        v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v158 = v42;

        v43 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000025, v152 | 0x8000000000000000);
        v44 = v43;
        v45 = v43 & 0xFFFFFFFFFFFFFF8;
        if (v43 >> 62)
        {
          v46 = __CocoaSet.count.getter();
        }

        else
        {
          v46 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v159 = v20;
        v161 = v5;
        if (v46)
        {
          v47 = 0;
          v48 = MEMORY[0x277D84F90];
          while (2)
          {
            a3 = v47;
            while (1)
            {
              if ((v44 & 0xC000000000000001) != 0)
              {
                v49 = MEMORY[0x223D77050](a3, v44);
              }

              else
              {
                if (a3 >= *(v45 + 16))
                {
                  goto LABEL_65;
                }

                v49 = *(v44 + 8 * a3 + 32);
              }

              v20 = v49;
              v47 = a3 + 1;
              if (__OFADD__(a3, 1))
              {
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:

                outlined destroy of UUID?(v46, &_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
                v92 = type metadata accessor for LSKError();
                lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
                swift_allocError();
                v94 = v93;
                v163 = 0;
                v164 = 0xE000000000000000;
                _StringGuts.grow(_:)(33);

                v163 = 0xD00000000000001FLL;
                v164 = 0x80000002201AC6D0;
                v95 = [v33 keyDomain];
                v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v98 = v97;

                MEMORY[0x223D76B90](v96, v98);

                v99 = v164;
                *v94 = v163;
                v94[1] = v99;
                (*(*(v92 - 8) + 104))(v94, *MEMORY[0x277D24378], v92);
                swift_willThrow();

                return;
              }

              v50 = [v49 uniqueID];
              if (v50)
              {
                break;
              }

              ++a3;
              if (v47 == v46)
              {
                goto LABEL_37;
              }
            }

            v51 = v50;
            v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            a3 = v52;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
            }

            v33 = *(v48 + 2);
            v53 = *(v48 + 3);
            v20 = (v33 + 1);
            if (v33 >= v53 >> 1)
            {
              v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v33 + 1, 1, v48);
            }

            *(v48 + 2) = v20;
            v54 = &v48[16 * v33];
            *(v54 + 4) = v155;
            *(v54 + 5) = a3;
            if (v47 != v46)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v48 = MEMORY[0x277D84F90];
        }

LABEL_37:

        v163 = v157;
        v164 = v158;
        MEMORY[0x28223BE20](v55);
        *(&v122 - 2) = &v163;
        v56 = v161;
        v57 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v122 - 4), v48);
        v5 = v56;

        if (v57)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v6 = v156;
        v33 = v150;
        v37 = v160;
        if (v160 == v149)
        {
          v36 = v162;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

LABEL_43:
    v160 = v36;

    v163 = 0;
    v59 = [v135 allPublishedLocalStatusesInDatabaseContext:v140 error:&v163];
    v60 = v163;
    if (!v59)
    {
      v58 = v163;

      goto LABEL_63;
    }

    v61 = v59;
    v155 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
    v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v60;

    v123 = swift_allocObject();
    *(v123 + 16) = 0;
    if (!(v62 >> 62))
    {
      a3 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a3)
      {
        break;
      }

      goto LABEL_46;
    }

    a3 = __CocoaSet.count.getter();
    if (!a3)
    {
      break;
    }

LABEL_46:
    v65 = 0;
    v157 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
    v151 = v62 & 0xFFFFFFFFFFFFFF8;
    v152 = v62 & 0xC000000000000001;
    v150 = (v133 + 6);
    v135 = (v133 + 4);
    v134 = (v133 + 2);
    ++v133;
    v149 = (v130 + 1);
    v130 += 2;
    v129 = (v128 + 2);
    ++v128;
    *&v64 = 136315138;
    v124 = v64;
    v154 = v62;
    v132 = a3;
    while (1)
    {
      if (v152)
      {
        v72 = MEMORY[0x223D77050](v65, v62);
      }

      else
      {
        if (v65 >= *(v151 + 16))
        {
          goto LABEL_71;
        }

        v72 = *(v62 + 8 * v65 + 32);
      }

      v33 = v72;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      v159 = (v65 + 1);
      v73 = [v72 keyDomain];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = v144;
      LSKDomain.init(rawValue:)();
      v74 = v143;
      if ((*v150)(v46, 1, v143) == 1)
      {
        goto LABEL_66;
      }

      v161 = v5;
      v75 = v141;
      (*v135)(v141, v46, v74);
      (*v134)(v142, v75, v74);
      v158 = v33;
      v76 = [v33 keyName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v77;

      lazy protocol witness table accessor for type Data and conformance Data();
      lazy protocol witness table accessor for type Data and conformance Data();
      v78 = v146;
      LSKKey.init(domain:name:)();
      (*v133)(v75, v74);
      v79 = v157;
      swift_beginAccess();
      if (*(*&v79[v6] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v78), (v80 & 1) != 0))
      {
        swift_endAccess();

        (*v149)(v78, v147);
        v5 = v161;
        v62 = v154;
      }

      else
      {
        swift_endAccess();
        v62 = v154;
        v81 = v161;
        SKALocalStatusServer.currentStatus(for:inDatabaseStatuses:devices:idsDevices:)(v78, v154, v160, v148, v145);
        v82 = v139;
        if (v81)
        {

          (*v149)(v78, v147);

          return;
        }

        v161 = 0;
        v83 = v147;
        (*v130)(v139, v78, v147);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v163 = v127;
          *v86 = v124;
          lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24370]);
          v87 = dispatch thunk of CustomStringConvertible.description.getter();
          v89 = v88;
          v153 = *v149;
          v153(v82, v83);
          v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v163);
          v62 = v154;

          *(v86 + 4) = v90;
          _os_log_impl(&dword_220099000, v84, v85, "Adding new delivery subject {key: %s}", v86, 0xCu);
          v91 = v127;
          __swift_destroy_boxed_opaque_existential_0(v127);
          MEMORY[0x223D77FF0](v91, -1, -1);
          MEMORY[0x223D77FF0](v86, -1, -1);
        }

        else
        {

          v153 = *v149;
          v153(v82, v83);
        }

        v66 = v145;
        v20 = v137;
        (*v129)(v136, v145, v137);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
        swift_allocObject();
        v67 = CurrentValueSubject.init(_:)();
        v6 = v156;
        v68 = v157;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v162 = *&v68[v6];
        *&v68[v6] = 0x8000000000000000;
        v70 = v67;
        v71 = v146;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v146, isUniquelyReferenced_nonNull_native);
        *&v68[v6] = v162;
        swift_endAccess();

        (*v128)(v66, v20);
        v153(v71, v147);
        v5 = v161;
      }

      a3 = v132;
      ++v65;
      if (v159 == v132)
      {
        goto LABEL_75;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    swift_once();
  }

LABEL_75:

  v163 = MEMORY[0x277D84F90];
  v100 = v160;
  if (v160 < 0 || (v160 & 0x4000000000000000) != 0)
  {
    goto LABEL_94;
  }

  v101 = *(v160 + 16);
  if (v101)
  {
    do
    {
      v102 = 0;
      v6 = v100 & 0xC000000000000001;
      while (1)
      {
        if (v6)
        {
          v103 = MEMORY[0x223D77050](v102);
        }

        else
        {
          if (v102 >= *(v100 + 16))
          {
            goto LABEL_93;
          }

          v103 = *(v100 + 8 * v102 + 32);
        }

        v104 = v103;
        v105 = v102 + 1;
        if (__OFADD__(v102, 1))
        {
          break;
        }

        v106 = [v103 pendingStatuses];
        v107 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v107 >> 62)
        {
          v108 = __CocoaSet.count.getter();
        }

        else
        {
          v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v108)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v102;
        v100 = v160;
        if (v105 == v101)
        {
          v109 = v163;
          v6 = v156;
          goto LABEL_96;
        }
      }

      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      v110 = __CocoaSet.count.getter();
      v100 = v160;
      v101 = v110;
    }

    while (v110);
  }

  v109 = MEMORY[0x277D84F90];
LABEL_96:

  if ((v109 & 0x8000000000000000) != 0 || (v109 & 0x4000000000000000) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_100;
    }

LABEL_99:
    if (*(v123 + 16) == 1)
    {
      goto LABEL_100;
    }

    v119 = Logger.logObject.getter();
    v120 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_220099000, v119, v120, "deliverAllPendingStatuses SKIP. No devices with pending statuses", v121, 2u);
      MEMORY[0x223D77FF0](v121, -1, -1);
    }
  }

  else
  {
    if (!*(v109 + 16))
    {
      goto LABEL_99;
    }

LABEL_100:
    v111 = type metadata accessor for TaskPriority();
    v112 = v125;
    (*(*(v111 - 8) + 56))(v125, 1, 1, v111);
    v113 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer, &protocol conformance descriptor for SKALocalStatusServer);
    v114 = swift_allocObject();
    v114[2] = v6;
    v114[3] = v113;
    v114[4] = v109;
    v114[5] = v6;
    v115 = v126;
    v114[6] = v131;
    v114[7] = v115;
    v116 = v140;
    v117 = v123;
    v114[8] = v140;
    v114[9] = v117;
    swift_retain_n();

    v118 = v116;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v112, &async function pointer to partial apply for closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), v114);
  }
}

uint64_t SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(uint64_t a1, unint64_t a2)
{
  v5 = [*(v2 + 184) idsDevices];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSDevice, 0x277D186E0);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = SKALocalStatusServer.getRecipientDeviceTypesForAllPublishedStatuses()();
    v32 = MEMORY[0x277D84F90];
    if (v7 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v10 = 0;
      v30 = v7 + 32;
      v11 = (v8 + 7);
      v12 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x223D77050](v10, v7);
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v13 = *(v30 + 8 * v10);
        }

        v14 = v13;
        if (__OFADD__(v10++, 1))
        {
          break;
        }

        v16 = [v13 deviceType];
        if (!v8[2])
        {
          goto LABEL_15;
        }

        v17 = v16;
        Hasher.init(_seed:)();
        MEMORY[0x223D772F0](v17);
        v18 = Hasher._finalize()();
        v19 = -1 << *(v8 + 32);
        v20 = v18 & ~v19;
        if (((*&v11[(v20 >> 3) & 0xFFFFFFFFFFFFFF8] >> v20) & 1) == 0)
        {
          goto LABEL_15;
        }

        v21 = ~v19;
        while (*(v8[6] + 8 * v20) != v17)
        {
          v20 = (v20 + 1) & v21;
          if (((*&v11[(v20 >> 3) & 0xFFFFFFFFFFFFFF8] >> v20) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v22 = [v14 deviceType];
        if (v22 > 4)
        {
          if (v22 == 9)
          {
            [v14 operatingSystemVersion];
            if (v31[0] > 0)
            {
              goto LABEL_26;
            }
          }

          goto LABEL_15;
        }

        if (v22 <= 1)
        {
          if (v22 == 1)
          {
            [v14 operatingSystemVersion];
            if (v31[0] > 13)
            {
              goto LABEL_26;
            }
          }

LABEL_15:

          if (v10 == i)
          {
            goto LABEL_31;
          }
        }

        else
        {
          [v14 operatingSystemVersion];
          if (v31[0] <= 16)
          {
            goto LABEL_15;
          }

LABEL_26:
          v23 = v14;
          MEMORY[0x223D76BD0]();
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v12 = v32;
          if (v10 == i)
          {
LABEL_31:

            goto LABEL_41;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_41:
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, log);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v31);
      _os_log_impl(&dword_220099000, v25, v26, "%s FAILED - idsDeviceProviding.idsDevices is nil", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x223D77FF0](v28, -1, -1);
      MEMORY[0x223D77FF0](v27, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t SKALocalStatusServer.currentStatus(for:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v7 = [*(v3 + 184) idsDevices];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSDevice, 0x277D186E0);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = *(v3 + 176);
    v25[0] = 0;
    v11 = [v10 allPublishedLocalStatusesInDatabaseContext:a2 error:v25];
    v12 = v25[0];
    if (v11)
    {
      v13 = v11;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v12;

      v25[0] = 0;
      v16 = [v10 allPublishedLocalStatusDevicesInDatabaseContext:a2 error:v25];
      v17 = v25[0];
      if (v16)
      {
        v18 = v16;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatusDevice, off_27843D3B8);
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v17;

        SKALocalStatusServer.currentStatus(for:inDatabaseStatuses:devices:idsDevices:)(a1, v14, v19, v9, a3);
      }

      v24 = v25[0];
    }

    else
    {
      v24 = v25[0];
    }

    _convertNSErrorToError(_:)();
  }

  else
  {
    v22 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    *v23 = 0xD00000000000001DLL;
    v23[1] = 0x80000002201AC5E0;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D24380], v22);
  }

  return swift_willThrow();
}

void SKALocalStatusServer.status(for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v29 = a2;
  v27 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR);
  v26 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  swift_beginAccess();
  v15 = *(v5 + v14);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a3), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();

    CurrentValueSubject.value.getter();
    v28 = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR);
    v20 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<LSKPublishedStatus<Data>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedF0Vy10Foundation4DataVGs5NeverOGMR, MEMORY[0x277CBCE48]);
    MEMORY[0x223D769B0](v19, v20);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<LSKPublishedStatus<Data>, Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy14LocalStatusKit012LSKPublishedH0Vy10Foundation4DataVGs5NeverOGGMR, MEMORY[0x277CBCDE0]);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, MEMORY[0x277D24268]);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKPublishedStatus<Data> and conformance LSKPublishedStatus<A>, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR, MEMORY[0x277D24260]);
    v21 = v29;
    AsyncSequence<>.xpc.getter();

    (*(v26 + 8))(v13, v11);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
    (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  }

  else
  {
    swift_endAccess();
    v23 = [*(v5 + 168) newBackgroundContext];
    SKALocalStatusServer.currentStatus(for:in:)(a3, v23, v10);

    if (!v4)
    {
      (*(v8 + 32))(v27, v10, v7);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGMR);
      (*(*(v24 - 8) + 56))(v29, 1, 1, v24);
    }
  }
}

uint64_t SKALocalStatusServer.subscribe(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMR);
  v5 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - v12;
  v14 = OBJC_IVAR___SKALocalStatusServer_subscriptionSubjects;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();
    v19 = one-time initialization token for log;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, log);
    v21 = v8;
    v22 = v7;
    (*(v8 + 16))(v13, a1, v7);
    swift_retain_n();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v62[0] = v58;
      *v25 = 136315394;
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24370]);
      LODWORD(v57) = v24;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v21 + 8))(v13, v22);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v62);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2048;
      CurrentValueSubject.value.getter();
      v30 = *(v63 + 16);

      *(v25 + 14) = v30;

      _os_log_impl(&dword_220099000, v23, v57, "Subribing to existing subject {key: %s, observations.count: %ld}", v25, 0x16u);
      v31 = v58;
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x223D77FF0](v31, -1, -1);
      MEMORY[0x223D77FF0](v25, -1, -1);
    }

    else
    {

      (*(v21 + 8))(v13, v7);
    }

    v62[0] = v18;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMR);
    v51 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[LSKLocalStatusObservation<Data>], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMR, MEMORY[0x277CBCE48]);
    v52 = v60;
    MEMORY[0x223D769B0](v50, v51);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[LSKLocalStatusObservation<Data>], Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMR, MEMORY[0x277CBCDE0]);
    lazy protocol witness table accessor for type [LSKLocalStatusObservation<Data>] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKLocalStatusObservation<Data>] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance LSKLocalStatusObservation<A>, MEMORY[0x277D24290], MEMORY[0x277D83978]);
    lazy protocol witness table accessor for type [LSKLocalStatusObservation<Data>] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKLocalStatusObservation<Data>] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance LSKLocalStatusObservation<A>, MEMORY[0x277D24280], MEMORY[0x277D83948]);
    v53 = v61;
    AsyncSequence<>.xpc.getter();

    return (*(v5 + 8))(v52, v53);
  }

  else
  {
    v58 = v5;
    swift_endAccess();
    v62[0] = MEMORY[0x277D84F90];
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMR);
    swift_allocObject();
    v56 = CurrentValueSubject.init(_:)();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, log);
    v33 = *(v8 + 16);
    v57 = a1;
    v34 = v7;
    v33(v11, a1, v7);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62[0] = v54;
      *v37 = 136315138;
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR, MEMORY[0x277D24370]);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v34;
      v41 = v40;
      (*(v8 + 8))(v11, v39);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v41, v62);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_220099000, v35, v36, "Subscribing to new subject {key: %s}", v37, 0xCu);
      v43 = v54;
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x223D77FF0](v43, -1, -1);
      MEMORY[0x223D77FF0](v37, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    swift_beginAccess();
    v44 = v56;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(v3 + v14);
    *(v3 + v14) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v57, isUniquelyReferenced_nonNull_native);
    *(v3 + v14) = v63;
    swift_endAccess();
    v62[0] = v44;
    v46 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[LSKLocalStatusObservation<Data>], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalF11ObservationVy10Foundation4DataVGGs5NeverOGMR, MEMORY[0x277CBCE48]);
    v47 = v60;
    MEMORY[0x223D769B0](v55, v46);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[LSKLocalStatusObservation<Data>], Never>> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySay14LocalStatusKit08LSKLocalH11ObservationVy10Foundation4DataVGGs5NeverOGGMR, MEMORY[0x277CBCDE0]);
    lazy protocol witness table accessor for type [LSKLocalStatusObservation<Data>] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKLocalStatusObservation<Data>] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance LSKLocalStatusObservation<A>, MEMORY[0x277D24290], MEMORY[0x277D83978]);
    lazy protocol witness table accessor for type [LSKLocalStatusObservation<Data>] and conformance <A> [A](&lazy protocol witness table cache variable for type [LSKLocalStatusObservation<Data>] and conformance <A> [A], &lazy protocol witness table cache variable for type LSKLocalStatusObservation<Data> and conformance LSKLocalStatusObservation<A>, MEMORY[0x277D24280], MEMORY[0x277D83948]);
    v48 = v61;
    AsyncSequence<>.xpc.getter();

    return (v58[1])(v47, v48);
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy18StatusKitAgentCore08SKALocalE6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAM_G_10Foundation4DateVs5NeverOTg504_s18efg6Core08i2A6j31C25deliverAllPendingStatuses33_mnopqrstu23CBELL2in6reasonScTyyts5z59OGSgSo22NSManagedObjectContextC_SStKFyyYacfU1_10Foundation4y5VAC14kL10AELLVXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Date();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v26[1] = v1;
    v38 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v36 = a1 + 64;
    v37 = v38;
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v29 = v5 + 32;
    v30 = v5;
    v27 = a1 + 72;
    v28 = v8;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v36 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v14 = v32;
      outlined init with copy of SKALocalStatusServer.FailedDelivery(*(a1 + 56) + *(v33 + 72) * v10, v32, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      Date.timeIntervalSince(_:)();
      Date.addingTimeInterval(_:)();
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v14, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      v15 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      v16 = *(v37 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v15 = v38;
      }

      *(v15 + 16) = v17 + 1;
      v18 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v37 = v15;
      result = (*(v30 + 32))(v15 + v18 + *(v30 + 72) * v17, v7, v31);
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v19 = *(v36 + 8 * v13);
      if ((v19 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v10 & 0x3F));
      if (v20)
      {
        v12 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v13 << 6;
        v22 = v13 + 1;
        v23 = (v27 + 8 * v13);
        while (v22 < (v12 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = outlined consume of [SKALocalStatusServer.FailedDelivery.ID : SKALocalStatusServer.FailedDelivery].Index._Variant(v10, v35, 0);
            v12 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = outlined consume of [SKALocalStatusServer.FailedDelivery.ID : SKALocalStatusServer.FailedDelivery].Index._Variant(v10, v35, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v28)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  sub_2200A4D24(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void SKALocalStatusServer.currentStatus(for:inDatabaseStatuses:devices:idsDevices:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v195 = a4;
  v197 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v167 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v159 = &v154 - v10;
  v193 = type metadata accessor for LSKDestinationDevice.Delivery();
  v11 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v192 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for LSKDestinationDevice();
  v194 = *(v191 - 8);
  v13 = MEMORY[0x28223BE20](v191);
  v196 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v182 = &v154 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v181 = &v154 - v18;
  MEMORY[0x28223BE20](v17);
  v169 = &v154 - v19;
  v168 = type metadata accessor for Date();
  v20 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v172 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  v163 = *(v170 - 8);
  v22 = MEMORY[0x28223BE20](v170);
  v162 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v171 = &v154 - v24;
  v175 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  MEMORY[0x28223BE20](v175);
  v183 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v9;
  v178 = a1;
  v200 = LSKKey.id.getter();
  v201 = v26;
  v161 = v5;
  v160 = a5;
  v186 = v20;
  v187 = v11;
  if (a2 >> 62)
  {
    goto LABEL_45;
  }

  v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_46:
    v64 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388], MEMORY[0x277D24390]);
    swift_allocError();
    v66 = v65;
    v202 = 0x6620737574617473;
    v203 = 0xEB0000000020726FLL;
    MEMORY[0x223D76B90](v200, v201);

    v67 = v203;
    *v66 = v202;
    v66[1] = v67;
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277D24380], v64);
    swift_willThrow();
    return;
  }

LABEL_3:
  v28 = 0;
  while ((a2 & 0xC000000000000001) == 0)
  {
    if (v28 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v27 = __CocoaSet.count.getter();
      if (!v27)
      {
        goto LABEL_46;
      }

      goto LABEL_3;
    }

    v29 = *(a2 + 8 * v28 + 32);
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_16;
    }

LABEL_7:
    v198 = v29;
    v31 = [v29 identifier];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (v32 == v200 && v34 == v201)
    {
      goto LABEL_17;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_18;
    }

    ++v28;
    if (v30 == v27)
    {
      goto LABEL_46;
    }
  }

  v29 = MEMORY[0x223D77050](v28, a2);
  v30 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
LABEL_17:

LABEL_18:
  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So9IDSDeviceCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v38 = v195;
  if (v195 >> 62)
  {
    v68 = v195;
    v69 = __CocoaSet.count.getter();
    v38 = v68;
    v39 = v69;
    v40 = v197;
    if (!v69)
    {
      goto LABEL_48;
    }

LABEL_20:
    v41 = 0;
    v189 = v38 & 0xFFFFFFFFFFFFFF8;
    v190 = (v38 & 0xC000000000000001);
    while (1)
    {
      if (v190)
      {
        v44 = MEMORY[0x223D77050](v41);
      }

      else
      {
        if (v41 >= *(v189 + 16))
        {
          goto LABEL_41;
        }

        v44 = *(v38 + 8 * v41 + 32);
      }

      v45 = v44;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v199 = (v41 + 1);
      v46 = [v44 uniqueID];
      if (!v46)
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v202 = v37;
      a2 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v50);
      v54 = *(v37 + 16);
      v55 = (v53 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_42;
      }

      v57 = v53;
      if (*(v37 + 24) >= v56)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v53)
          {
            goto LABEL_21;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          if (v57)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v56, isUniquelyReferenced_nonNull_native);
        v58 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v50);
        if ((v57 & 1) != (v59 & 1))
        {
          goto LABEL_144;
        }

        a2 = v58;
        if (v57)
        {
LABEL_21:

          v37 = v202;
          v42 = *(v202 + 56);
          v43 = *(v42 + 8 * a2);
          *(v42 + 8 * a2) = v51;

          goto LABEL_22;
        }
      }

      v37 = v202;
      *(v202 + 8 * (a2 >> 6) + 64) |= 1 << a2;
      v60 = (*(v37 + 48) + 16 * a2);
      *v60 = v48;
      v60[1] = v50;
      *(*(v37 + 56) + 8 * a2) = v51;

      v61 = *(v37 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_44;
      }

      *(v37 + 16) = v63;
LABEL_22:
      ++v41;
      v40 = v197;
      v38 = v195;
      if (v199 == v39)
      {
        goto LABEL_48;
      }
    }
  }

  v39 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v40 = v197;
  if (v39)
  {
    goto LABEL_20;
  }

LABEL_48:
  if (!(v40 >> 62))
  {
    v70 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v70)
    {
      goto LABEL_50;
    }

LABEL_133:

    v149 = [v198 payload];
    if (v149)
    {
      v150 = v149;
      v151 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v153 = v152;
    }

    else
    {
      v151 = 0;
      v153 = 0xF000000000000000;
    }

    (*(v167 + 16))(v159, v178, v177);
    v202 = v151;
    v203 = v153;
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    LSKPublishedStatus.init(key:value:devices:)();

    return;
  }

  while (2)
  {
    v70 = __CocoaSet.count.getter();
    if (!v70)
    {
      goto LABEL_133;
    }

LABEL_50:
    v71 = 0;
    v166 = OBJC_IVAR___SKALocalStatusServer_failedDeliveries;
    v188 = v40 & 0xC000000000000001;
    v180 = v40 & 0xFFFFFFFFFFFFFF8;
    v179 = v40 + 32;
    v165 = (v167 + 16);
    v157 = (v186 + 16);
    v156 = *MEMORY[0x277D24320];
    v190 = v187 + 104;
    v155 = (v186 + 8);
    v189 = v194 + 32;
    v72 = MEMORY[0x277D84F90];
    v158 = *MEMORY[0x277D24328];
    v164 = *MEMORY[0x277D24330];
    LODWORD(v186) = *MEMORY[0x277D24318];
    v174 = v37;
    v173 = v70;
LABEL_53:
    if (v188)
    {
      v73 = MEMORY[0x223D77050](v71, v40);
    }

    else
    {
      if (v71 >= *(v180 + 16))
      {
        goto LABEL_131;
      }

      v73 = *(v179 + 8 * v71);
    }

    v199 = v73;
    v62 = __OFADD__(v71++, 1);
    if (v62)
    {
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      continue;
    }

    break;
  }

  v74 = [v199 idsIdentifier];
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;

  if (!*(v37 + 16))
  {

    goto LABEL_76;
  }

  v78 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v77);
  v80 = v79;

  if ((v80 & 1) == 0)
  {
LABEL_76:
    v92 = [v199 idsIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*v190)(v192, v186, v193);
    LSKDestinationDevice.init(idsIdentifier:name:model:delivery:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72[2] + 1, 1, v72, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
    }

    v94 = v72[2];
    v93 = v72[3];
    if (v94 >= v93 >> 1)
    {
      v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v72, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
    }

    v72[2] = v94 + 1;
    (*(v194 + 32))(v72 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v94, v196, v191);
LABEL_52:
    if (v71 == v70)
    {
      goto LABEL_133;
    }

    goto LABEL_53;
  }

  v184 = v71;
  v195 = v72;
  v187 = *(*(v37 + 56) + 8 * v78);
  v81 = [v199 pendingStatuses];
  v82 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v185 = v82;
  if (v37 >> 62)
  {
    v83 = __CocoaSet.count.getter();
  }

  else
  {
    v83 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = 0;
  while (1)
  {
    if (v83 == v84)
    {

      v40 = v195;
      goto LABEL_98;
    }

    if ((v37 & 0xC000000000000001) != 0)
    {
      v85 = MEMORY[0x223D77050](v84, v37);
    }

    else
    {
      if (v84 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_127;
      }

      v85 = *(v37 + 8 * v84 + 32);
    }

    v86 = v85;
    if (__OFADD__(v84, 1))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v87 = [v85 identifier];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    if (v88 == v200 && v90 == v201)
    {
      break;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v84;
    if (v40)
    {
      goto LABEL_82;
    }
  }

LABEL_82:

  v95 = v183;
  (*v165)(v183, v178, v177);
  v96 = [v199 idsIdentifier];
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v99 = v98;

  v100 = (v95 + *(v175 + 20));
  *v100 = v97;
  v100[1] = v99;
  v101 = v176;
  v102 = v166;
  swift_beginAccess();
  v103 = *(v101 + v102);
  v104 = v187;
  if (!*(v103 + 16) || (v105 = specialized __RawDictionaryStorage.find<A>(_:)(v95), (v106 & 1) == 0))
  {
    swift_endAccess();
    v121 = [v199 idsIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = [v104 name];
    if (!v122)
    {
      goto LABEL_141;
    }

    v123 = v122;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v124 = [v104 modelIdentifier];
    if (v124)
    {
      v125 = v124;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      (*v190)(v192, v158, v193);
      LSKDestinationDevice.init(idsIdentifier:name:model:delivery:)();
      v40 = v195;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1, v40, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
      }

      v126 = v183;
      v128 = *(v40 + 16);
      v127 = *(v40 + 24);
      if (v128 >= v127 >> 1)
      {
        v148 = v183;
        v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v127 > 1), v128 + 1, 1, v40, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
        v126 = v148;
      }

      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v126, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      *(v40 + 16) = v128 + 1;
      (*(v194 + 32))(v40 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v128, v181, v191);
LABEL_98:
      v195 = v40;
      v129 = [v199 deliveredStatuses];
      v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v37 >> 62)
      {
        v130 = __CocoaSet.count.getter();
      }

      else
      {
        v130 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v131 = 0;
      while (1)
      {
        if (v130 == v131)
        {

          v40 = v197;
          v37 = v174;
          v70 = v173;
          v72 = v195;
          v71 = v184;
          if (v184 != v173)
          {
            goto LABEL_53;
          }

          goto LABEL_133;
        }

        if ((v37 & 0xC000000000000001) != 0)
        {
          v132 = MEMORY[0x223D77050](v131, v37);
        }

        else
        {
          if (v131 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v132 = *(v37 + 8 * v131 + 32);
        }

        v133 = v132;
        if (__OFADD__(v131, 1))
        {
          goto LABEL_128;
        }

        v134 = [v132 identifier];
        v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v137 = v136;

        if (v135 == v200 && v137 == v201)
        {
          break;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        ++v131;
        if (v40)
        {
          goto LABEL_116;
        }
      }

LABEL_116:

      v139 = [v199 idsIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v140 = v187;
      v141 = [v187 name];
      if (!v141)
      {
        goto LABEL_139;
      }

      v142 = v141;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v143 = [v140 modelIdentifier];
      if (v143)
      {
        v144 = v143;

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        (*v190)(v192, v164, v193);
        LSKDestinationDevice.init(idsIdentifier:name:model:delivery:)();
        v72 = v195;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72[2] + 1, 1, v72, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
        }

        v40 = v197;
        v37 = v174;
        v70 = v173;
        v71 = v184;
        v146 = v72[2];
        v145 = v72[3];
        v147 = v187;
        if (v146 >= v145 >> 1)
        {
          v72 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v146 + 1, 1, v72, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
        }

        v72[2] = v146 + 1;
        (*(v194 + 32))(v72 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v146, v182, v191);
        goto LABEL_52;
      }

      goto LABEL_138;
    }

    goto LABEL_140;
  }

  v107 = v162;
  outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v103 + 56) + *(v163 + 72) * v105, v162, type metadata accessor for SKALocalStatusServer.FailedDelivery);
  outlined init with take of SKALocalStatusServer.FailedDelivery(v107, v171);
  swift_endAccess();
  Date.timeIntervalSince(_:)();
  Date.addingTimeInterval(_:)();
  v108 = [v199 idsIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = [v104 name];
  if (!v109)
  {
    goto LABEL_143;
  }

  v110 = v109;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v111 = [v104 modelIdentifier];
  if (v111)
  {
    v112 = v111;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMd, &_s10Foundation4DateV19earliestNextAttempt_SS16errorDescriptiontMR);
    v114 = v192;
    v115 = &v192[*(v113 + 48)];
    (*v157)(v192, v172, v168);
    v116 = (v171 + *(v170 + 24));
    v117 = v116[1];
    *v115 = *v116;
    *(v115 + 1) = v117;
    (*v190)(v114, v156, v193);

    LSKDestinationDevice.init(idsIdentifier:name:model:delivery:)();
    v40 = v195;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1, v40, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
    }

    v118 = v183;
    v120 = *(v40 + 16);
    v119 = *(v40 + 24);
    if (v120 >= v119 >> 1)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v40, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit20LSKDestinationDeviceVGMR, MEMORY[0x277D24338]);
    }

    (*v155)(v172, v168);
    outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v171, type metadata accessor for SKALocalStatusServer.FailedDelivery);
    outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v118, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
    *(v40 + 16) = v120 + 1;
    (*(v194 + 32))(v40 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v120, v169, v191);
    goto LABEL_98;
  }

LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id SKALocalStatusServer.getRecipientDeviceTypesForAllPublishedStatuses()()
{
  v30[1] = *MEMORY[0x277D85DE8];
  v29 = type metadata accessor for LSKTargetDeviceFlags();
  v1 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [*(v0 + 168) newBackgroundContext];
  v5 = *(v0 + 176);
  v30[0] = 0;
  v6 = [v5 allPublishedLocalStatusesInDatabaseContext:v4 error:v30];
  v7 = v30[0];
  if (!v6)
  {
    v18 = v30[0];
    v3 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for log == -1)
    {
LABEL_12:
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, log);
      v20 = v3;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = v3;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v26;
        *v24 = v26;
        _os_log_impl(&dword_220099000, v21, v22, "Filtered Device Types FAILED - error reading allPublishedLocalStatuses: %@", v23, 0xCu);
        outlined destroy of UUID?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223D77FF0](v24, -1, -1);
        MEMORY[0x223D77FF0](v23, -1, -1);
      }

      return MEMORY[0x277D84FA0];
    }

LABEL_19:
    swift_once();
    goto LABEL_12;
  }

  v8 = v6;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v7;

  v30[0] = MEMORY[0x277D84FA0];
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_16:

    return MEMORY[0x277D84FA0];
  }

  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v28 = v4;
  v12 = 0;
  v13 = (v1 + 8);
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x223D77050](v12, v9);
    }

    else
    {
      v14 = *(v9 + 8 * v12 + 32);
    }

    v15 = v14;
    ++v12;
    [v14 targetDevicesFlags];
    LSKTargetDeviceFlags.init(rawValue:)();
    v16 = LSKTargetDeviceFlags.idsDeviceTypes.getter();
    (*v13)(v3, v29);
    specialized Set.formUnion<A>(_:)(v16);
  }

  while (v11 != v12);

  return v30[0];
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
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
      result = specialized Set._Variant.insert(_:)(v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
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

uint64_t SKALocalStatusServer.shouldDeliverToDevice(idsIdentifier:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000025, 0x80000002201AC6A0);
  v4 = v3;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_22:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223D77050](v9, v4);
      }

      else
      {
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(v4 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = [v10 uniqueID];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_23;
      }
    }

    v25 = a2;
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    v18 = &v8[16 * v17];
    v19 = v24;
    a2 = v25;
    *(v18 + 4) = v14;
    *(v18 + 5) = v19;
  }

  while (v7 != v6);
LABEL_23:

  v27[0] = v26;
  v27[1] = a2;
  MEMORY[0x28223BE20](v20);
  v23[2] = v27;
  v21 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v23, v8);

  return v21 & 1;
}

void specialized Sequence.compactMap<A>(_:)(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGSgMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  v9 = MEMORY[0x28223BE20](v40 - 8);
  v37 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v31 = &v30 - v12;
  v32 = v11;
  v13 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 64);
  v17 = (v14 + 63) >> 6;
  v35 = (v11 + 32);
  v36 = (v11 + 48);

  v18 = 0;
  v41 = MEMORY[0x277D84F90];
  v33 = a3;
  if (v16)
  {
LABEL_10:
    while (1)
    {
      v42 = *(*(a3 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v16)))));
      v20 = v42;
      v38(&v42);
      if (v4)
      {
        break;
      }

      v16 &= v16 - 1;

      v21 = v40;
      if ((*v36)(v8, 1, v40) == 1)
      {
        outlined destroy of UUID?(v8, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGSgMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGSgMR);
        if (!v16)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v34 = 0;
        v22 = v8;
        v23 = *v35;
        v24 = v31;
        v25 = v22;
        (*v35)(v31);
        (v23)(v37, v24, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
        }

        v27 = v41[2];
        v26 = v41[3];
        v4 = v34;
        if (v27 >= v26 >> 1)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v41);
        }

        v28 = v40;
        v29 = v41;
        v41[2] = v27 + 1;
        (v23)(v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, v37, v28);
        a3 = v33;
        v8 = v25;
        if (!v16)
        {
          goto LABEL_6;
        }
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[67] = v4;
  v5[66] = a4;
  v5[65] = a3;
  v5[63] = a1;
  v5[64] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMR);
  v5[68] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v5[69] = v6;
  v5[70] = *(v6 - 8);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v5[73] = v7;
  v5[74] = *(v7 - 8);
  v5[75] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v5[76] = v8;
  v5[77] = *(v8 - 8);
  v5[78] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5[79] = v9;
  v5[80] = *(v9 - 8);
  v5[81] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v5[82] = v10;
  v5[83] = *(v10 - 8);
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v11 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  v5[87] = v11;
  v5[88] = *(v11 - 8);
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v5[100] = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v5[104] = v12;
  v5[105] = *(v12 - 8);
  v5[106] = swift_task_alloc();
  v5[107] = swift_task_alloc();
  v5[108] = swift_task_alloc();
  v5[109] = swift_task_alloc();

  return MEMORY[0x2822009F8](SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:), v4, 0);
}

uint64_t SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:)()
{
  v392 = v0;
  v1 = v0;
  v391[9] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for log != -1)
  {
    goto LABEL_157;
  }

LABEL_2:
  v2 = *(v1 + 504);
  v3 = type metadata accessor for Logger();
  v4 = __swift_project_value_buffer(v3, ::log);
  *(v1 + 880) = v4;

  v5 = v2;
  v386 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v389 = v1;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 520);
    v9 = *(v1 + 512);
    v10 = *(v389 + 63);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v391[0] = v13;
    *v11 = 136315394;
    v14 = v9;
    v1 = v389;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v8, v391);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v10;
    *v12 = v10;
    v15 = v10;
    _os_log_impl(&dword_220099000, v6, v7, "Send pending status START {reason: %s, clDevice: %@}", v11, 0x16u);
    outlined destroy of UUID?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223D77FF0](v13, -1, -1);
    MEMORY[0x223D77FF0](v11, -1, -1);
  }

  v16 = [*(v1 + 504) idsDeviceIdentifier];
  if (!v16)
  {
    v42 = *(v1 + 504);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = *(v1 + 504);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v45;
      *v47 = v45;
      v48 = v45;
      v49 = "Send pending status FAILED. idsIdentifier is nil {clDevice: %@}";
      goto LABEL_163;
    }

LABEL_164:

LABEL_165:
    LODWORD(v387) = 0;
    goto LABEL_166;
  }

  v17 = *(v1 + 536);
  v18 = *(v1 + 528);
  v19 = v16;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(v1 + 888) = v20;
  *(v1 + 896) = v22;
  v23 = *(v17 + 176);
  *(v1 + 904) = v23;
  *(v1 + 456) = 0;
  v24 = [v23 allPublishedLocalStatusDevicesInDatabaseContext:v18 error:v1 + 456];
  v25 = v1;
  v26 = *(v1 + 456);
  if (!v24)
  {
    v51 = v26;

    v52 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v53 = v52;
LABEL_28:
    v54 = *(v1 + 504);
    v55 = v53;
    v43 = Logger.logObject.getter();
    v56 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v43, v56))
    {
      v57 = *(v1 + 504);
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412546;
      *(v58 + 4) = v57;
      *v59 = v57;
      *(v58 + 12) = 2112;
      v60 = v57;
      v61 = v53;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v62;
      v59[1] = v62;
      _os_log_impl(&dword_220099000, v43, v56, "Send pending status FAILED. Error fetching status devices {clDevice: %@, error: %@}", v58, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v59, -1, -1);
      MEMORY[0x223D77FF0](v58, -1, -1);

      goto LABEL_164;
    }

    goto LABEL_165;
  }

  v1 = v24;
  *(v25 + 912) = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatusDevice, off_27843D3B8);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v26;

  v391[0] = MEMORY[0x277D84F90];
  if (v27 >> 62)
  {
LABEL_159:
    v29 = __CocoaSet.count.getter();
  }

  else
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = MEMORY[0x277D84F90];
  if (!v29)
  {
    v50 = MEMORY[0x277D84F90];
    goto LABEL_32;
  }

  v31 = 0;
  v387 = v27 & 0xFFFFFFFFFFFFFF8;
  v388 = v27 & 0xC000000000000001;
  do
  {
    if (v388)
    {
      v32 = MEMORY[0x223D77050](v31, v27);
    }

    else
    {
      if (v31 >= *(v387 + 16))
      {
        goto LABEL_152;
      }

      v32 = *(v27 + 8 * v31 + 32);
    }

    v33 = v32;
    v34 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      swift_once();
      goto LABEL_2;
    }

    v35 = v27;
    v1 = v22;
    v36 = [v32 idsIdentifier];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v22 = v1;
    if (v37 == v20 && v39 == v1)
    {

LABEL_11:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      goto LABEL_12;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
      goto LABEL_11;
    }

LABEL_12:
    v27 = v35;
    ++v31;
  }

  while (v34 != v29);
  v50 = v391[0];
  v30 = MEMORY[0x277D84F90];
LABEL_32:

  if ((v50 & 0x8000000000000000) == 0 && (v50 & 0x4000000000000000) == 0)
  {
    if (*(v50 + 16))
    {
      goto LABEL_35;
    }

LABEL_161:
    v267 = *(v389 + 63);

    v268 = v267;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v269 = *(v389 + 63);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v269;
      *v47 = v269;
      v270 = v269;
      v49 = "Send pending status SKIPPED. No status devices. {clDevice: %@}";
LABEL_163:
      _os_log_impl(&dword_220099000, v43, v44, v49, v46, 0xCu);
      outlined destroy of UUID?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v47, -1, -1);
      MEMORY[0x223D77FF0](v46, -1, -1);
    }

    goto LABEL_164;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_161;
  }

LABEL_35:
  v1 = specialized Sequence.flatMap<A>(_:)(v50);
  *(v389 + 115) = v1;

  v22 = v1 >> 62;
  if (v1 >> 62)
  {
    v63 = __CocoaSet.count.getter();
  }

  else
  {
    v63 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v389;
  *(v389 + 116) = v63;
  if (!v63)
  {
    v73 = *(v389 + 63);

    v74 = v73;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = *(v389 + 63);
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      *(v78 + 4) = v77;
      *v79 = v77;
      v80 = v77;
      _os_log_impl(&dword_220099000, v75, v76, "Send pending status SKIPPED. No pending statuses. {clDevice: %@}", v78, 0xCu);
      outlined destroy of UUID?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v79, -1, -1);
      MEMORY[0x223D77FF0](v78, -1, -1);
    }

    LODWORD(v387) = 0;
    goto LABEL_166;
  }

  v65 = *(v389 + 67);
  v66 = *(v389 + 63);
  v67 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  *(v389 + 117) = v67;
  [v67 setDestinationDevice_];
  [v67 setControlFlags_];
  *(v389 + 118) = *(v65 + 144);
  [v67 setDispatchQueue_];
  swift_bridgeObjectRetain_n();
  v68 = v66;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = *(v389 + 63);
    v72 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v72 = 138412546;
    *(v72 + 4) = v71;
    *v65 = v68;
    *(v72 + 12) = 2048;
    if (v22)
    {
      v68 = __CocoaSet.count.getter();
    }

    else
    {
      v68 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v389;
    v81 = *(v389 + 63);

    *(v72 + 14) = v68;

    _os_log_impl(&dword_220099000, v69, v70, "Send pending status CONTINUE {clDevice: %@, pendingStatuses.count: %ld}", v72, 0x16u);
    outlined destroy of UUID?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v65, -1, -1);
    MEMORY[0x223D77FF0](v72, -1, -1);
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  *(v64 + 464) = v30;
  if (v63 < 1)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v82 = v64;
  v83 = 0;
  aBlock = (v64 + 144);
  v84 = MEMORY[0x277D84F90];
  *(v64 + 952) = OBJC_IVAR___SKALocalStatusServer_failedDeliveries;
  v85 = v84;
  v86 = v84;
  v87 = v84;
  while (2)
  {
    v82[124] = v84;
    v82[123] = v87;
    v82[122] = v86;
    v82[121] = v85;
    v82[120] = v83;
    v97 = v82[115];
    if ((v97 & 0xC000000000000001) != 0)
    {
      v98 = MEMORY[0x223D77050]();
    }

    else
    {
      v98 = *(v97 + 8 * v83 + 32);
    }

    v99 = v98;
    v82[125] = v98;
    SKADatabasePublishedLocalStatus.key.getter(v82[109]);
    v386 = v87;
    v387 = v86;
    v100 = v82[119];
    v101 = v82[112];
    v102 = v82[111];
    v103 = v82[103];
    v104 = v82[100];
    v105 = v82[67];
    (*(v82[105] + 16))(v103, v82[109], v82[104]);
    v106 = (v103 + *(v104 + 20));
    *v106 = v102;
    v106[1] = v101;
    swift_beginAccess();
    v107 = *(v105 + v100);
    v108 = *(v107 + 16);

    if (v108 && (v109 = specialized __RawDictionaryStorage.find<A>(_:)(v82[103]), (v110 & 1) != 0))
    {
      v111 = v82[94];
      v112 = v82[93];
      outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v107 + 56) + *(v82[88] + 72) * v109, v112, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      outlined init with take of SKALocalStatusServer.FailedDelivery(v112, v111);
      swift_endAccess();
      Date.timeIntervalSince(_:)();
      Date.addingTimeInterval(_:)();
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v111, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      v113 = 0;
    }

    else
    {
      swift_endAccess();
      v113 = 1;
    }

    v114 = v82[99];
    v115 = v82[98];
    v116 = v82[83];
    v117 = v82[82];
    (*(v116 + 56))(v114, v113, 1, v117);
    outlined init with copy of (String, Sendable)(v114, v115, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((*(v116 + 48))(v115, 1, v117) == 1)
    {
      outlined destroy of UUID?(v82[98], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_144:
      v241 = v82[63];
      outlined init with copy of (String, Sendable)(v82[99], v82[97], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v242 = v241;
      v243 = v82;
      v244 = v99;
      v245 = Logger.logObject.getter();
      v246 = static os_log_type_t.default.getter();

      v247 = os_log_type_enabled(v245, v246);
      v248 = v243[97];
      if (v247)
      {
        v249 = v243[96];
        v250 = v243[63];
        v251 = swift_slowAlloc();
        v252 = swift_slowAlloc();
        v253 = swift_slowAlloc();
        v391[0] = v253;
        *v251 = 138412802;
        *(v251 + 4) = v244;
        *(v251 + 12) = 2112;
        *(v251 + 14) = v250;
        *v252 = v244;
        v252[1] = v250;
        *(v251 + 22) = 2080;
        outlined init with copy of (String, Sendable)(v248, v249, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v254 = v250;
        v255 = v244;
        v256 = String.init<A>(describing:)();
        v258 = v257;
        outlined destroy of UUID?(v248, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v259 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v256, v258, v391);

        *(v251 + 24) = v259;
        _os_log_impl(&dword_220099000, v245, v246, "Status send START {status: %@, device: %@, nextAttemptDate: %s}", v251, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v252, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v253);
        MEMORY[0x223D77FF0](v253, -1, -1);
        MEMORY[0x223D77FF0](v251, -1, -1);
      }

      else
      {

        outlined destroy of UUID?(v248, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      v390 = v243[117];
      v260 = v243[81];
      v261 = v243[80];
      v262 = v243[79];
      v243[2] = v243;
      v243[3] = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
      swift_continuation_init();
      v243[17] = v262;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v243 + 14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      CheckedContinuation.init(continuation:function:)();
      (*(v261 + 32))(boxed_opaque_existential_0, v260, v262);
      v243[10] = MEMORY[0x277D85DD0];
      v243[11] = 1107296256;
      v243[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
      v243[13] = &block_descriptor_84;
      [v390 activateWithCompletion_];
      (*(v261 + 8))(boxed_opaque_existential_0, v262);

      return MEMORY[0x282200938](v243 + 2);
    }

    v118 = v82[85];
    v119 = v82[83];
    v120 = v82[82];
    (*(v119 + 32))(v82[86], v82[98], v120);
    static Date.now.getter();
    v121 = static Date.> infix(_:_:)();
    v122 = *(v119 + 8);
    v122(v118, v120);
    if ((v121 & 1) == 0)
    {
      v122(v82[86], v82[82]);
      goto LABEL_144;
    }

    v388 = v84;
    v385 = v85;
    (*(v82[83] + 16))(v82[84], v82[86], v82[82]);

    v123 = v99;
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();

    log = v124;
    if (os_log_type_enabled(v124, v125))
    {
      v126 = v82[112];
      v342 = v82[111];
      v370 = v82[104];
      v373 = v82[109];
      v362 = v82[103];
      v366 = v82[105];
      v355 = v82[86];
      v359 = v82[99];
      v127 = v82[84];
      v128 = v82[82];
      v351 = v128;
      v129 = swift_slowAlloc();
      v349 = swift_slowAlloc();
      v391[0] = v349;
      *v129 = 136315650;
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      v132 = v131;
      v122(v127, v128);
      v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, v391);

      *(v129 + 4) = v133;
      *(v129 + 12) = 2080;
      v134 = [v123 identifier];
      v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v137 = v136;

      v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v137, v391);

      *(v129 + 14) = v138;
      *(v129 + 22) = 2080;

      v140 = specialized Collection.prefix(_:)(8, v342, v126, v139);
      v142 = v141;
      v144 = v143;
      v146 = v145;

      v147 = v142;
      v82 = v389;
      v148 = MEMORY[0x223D76B60](v140, v147, v144, v146);
      v150 = v149;

      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, v391);

      *(v129 + 24) = v151;
      _os_log_impl(&dword_220099000, log, v125, "Status send SKIP. Not enough time since latest failed attempt. {nextAttemptDate: %s, status.identifier: %s, idsIdentifier: %s}", v129, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v349, -1, -1);
      MEMORY[0x223D77FF0](v129, -1, -1);

      v122(v355, v351);
      outlined destroy of UUID?(v359, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v362, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v366 + 8))(v373, v370);
    }

    else
    {
      v372 = v82[109];
      v88 = v123;
      v89 = v82[105];
      v90 = v82[104];
      v91 = v82[103];
      v92 = *(v389 + 99);
      v93 = *(v389 + 86);
      v94 = *(v389 + 84);
      v95 = *(v389 + 82);

      v122(v94, v95);
      v122(v93, v95);
      v96 = v92;
      v82 = v389;
      outlined destroy of UUID?(v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v91, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v89 + 8))(v372, v90);
    }

    v85 = v385;
    v87 = v386;
    v86 = v387;
    v84 = v388;
    v83 = v82[120] + 1;
    if (v83 != v82[116])
    {
      continue;
    }

    break;
  }

  v152 = v82[117];
  loge = v82[113];
  v153 = v82[78];
  v154 = v82[77];
  v369 = v82[118];
  v371 = v82[76];
  v64 = v82[75];
  v155 = v82[74];
  v156 = v82[73];
  v374 = v82[66];

  v157 = swift_allocObject();
  *(v157 + 16) = v152;
  v82[22] = partial apply for closure #3 in SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
  v82[23] = v157;
  v82[18] = MEMORY[0x277D85DD0];
  v82[19] = 1107296256;
  v82[20] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v82[21] = &block_descriptor_81;
  v158 = _Block_copy(aBlock);
  v159 = v152;
  static DispatchQoS.unspecified.getter();
  *(v389 + 60) = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223D76E80](0, v153, v64, v158);
  v160 = v158;
  v1 = v389;
  _Block_release(v160);
  (*(v155 + 8))(v64, v156);
  (*(v154 + 8))(v153, v371);

  *(v389 + 61) = 0;
  v161 = [loge allPublishedLocalStatusDevicesInDatabaseContext:v374 error:v389 + 488];
  v162 = *(v389 + 61);
  if (!v161)
  {
    v238 = *(v389 + 117);
    v239 = v162;

    v240 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v53 = v240;

    goto LABEL_28;
  }

  v163 = v161;
  v65 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v164 = v162;

  v22 = v388;
  v68 = v385;
  if (!(v388 >> 62))
  {
    v27 = *((v388 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_65;
  }

LABEL_172:
  v27 = __CocoaSet.count.getter();
LABEL_65:
  v165 = v386;
  v166 = MEMORY[0x277D84F90];
  v356 = v65;
  if (v27)
  {
    v391[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      goto LABEL_211;
    }

    v167 = 0;
    v166 = v391[0];
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v168 = MEMORY[0x223D77050](v167, v22);
      }

      else
      {
        v168 = *(v22 + 8 * v167 + 32);
      }

      v169 = v168;
      v170 = [v169 identifier];
      v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v173 = v172;

      v391[0] = v166;
      v175 = *(v166 + 16);
      v174 = *(v166 + 24);
      if (v175 >= v174 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 1, 1);
        v166 = v391[0];
      }

      ++v167;
      *(v166 + 16) = v175 + 1;
      v176 = v166 + 16 * v175;
      *(v176 + 32) = v171;
      *(v176 + 40) = v173;
      v165 = v386;
    }

    while (v27 != v167);
  }

  v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v166);

  if (v65 >> 62)
  {
    v64 = __CocoaSet.count.getter();
    if (!v64)
    {
      goto LABEL_174;
    }

LABEL_76:
    v177 = 0;
    v363 = v65 & 0xC000000000000001;
    v343 = v65 + 32;
    v346 = v65 & 0xFFFFFFFFFFFFFF8;
    v20 = v1 + 56;
    v352 = v64;
    while (1)
    {
      if (v363)
      {
        v178 = MEMORY[0x223D77050](v177, v356);
      }

      else
      {
        if (v177 >= *(v346 + 16))
        {
          __break(1u);
          goto LABEL_171;
        }

        v178 = *(v343 + 8 * v177);
      }

      v65 = v178;
      v179 = __OFADD__(v177, 1);
      v180 = v177 + 1;
      if (v179)
      {
        __break(1u);
        goto LABEL_159;
      }

      v369 = v180;
      v181 = *(v389 + 63);
      v182 = [v178 idsIdentifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v184 = v183;

      v185 = [v181 idsDeviceIdentifier];
      if (v185)
      {
        break;
      }

      v165 = v386;
LABEL_78:
      v177 = v369;
      if (v369 == v64)
      {
        goto LABEL_174;
      }
    }

    v371 = v65;
    v186 = v185;
    v187 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v189 = v188;

    if (v27 == v187 && v184 == v189)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v165 = v386;
      if ((v27 & 1) == 0)
      {

LABEL_140:
        v64 = v352;
        goto LABEL_78;
      }
    }

    v190 = v65;
    v191 = [v65 pendingStatuses];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
    v192 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v192 >> 62)
    {
      v193 = __CocoaSet.count.getter();
      if (v193)
      {
LABEL_91:
        v194 = 0;
        v387 = v192 & 0xFFFFFFFFFFFFFF8;
        v388 = v192 & 0xC000000000000001;
        loga = v192;
        v195 = v192 + 32;
        while (1)
        {
          if (v388)
          {
            v196 = MEMORY[0x223D77050](v194, loga);
          }

          else
          {
            if (v194 >= *(v387 + 16))
            {
              goto LABEL_154;
            }

            v196 = *(v195 + 8 * v194);
          }

          v197 = v196;
          v179 = __OFADD__(v194++, 1);
          if (v179)
          {
            goto LABEL_153;
          }

          v198 = [v196 identifier];
          v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v201 = v200;

          if (*(v1 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v202 = Hasher._finalize()(), v203 = -1 << *(v1 + 32), v204 = v202 & ~v203, ((*(v20 + ((v204 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v204) & 1) != 0))
          {
            v205 = ~v203;
            while (1)
            {
              v206 = (*(v1 + 48) + 16 * v204);
              v207 = *v206 == v199 && v206[1] == v201;
              if (v207 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v204 = (v204 + 1) & v205;
              if (((*(v20 + ((v204 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v204) & 1) == 0)
              {
                goto LABEL_92;
              }
            }

            if (v194 == v193)
            {
LABEL_110:
              v190 = v371;
              break;
            }
          }

          else
          {
LABEL_92:

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            if (v194 == v193)
            {
              goto LABEL_110;
            }
          }
        }
      }
    }

    else
    {
      v193 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v193)
      {
        goto LABEL_91;
      }
    }

    v208 = [v190 deliveredStatuses];
    v209 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v387 = v209;
    if (v209 >> 62)
    {
      v210 = __CocoaSet.count.getter();
      v388 = v386;
      if (v210)
      {
LABEL_115:
        v211 = 0;
        v212 = v209 & 0xC000000000000001;
        logb = (v209 & 0xFFFFFFFFFFFFFF8);
        v375 = v209 + 32;
        v388 = v386;
        while (1)
        {
          if (v212)
          {
            v213 = MEMORY[0x223D77050](v211, v387);
          }

          else
          {
            if (v211 >= logb[2].isa)
            {
              goto LABEL_156;
            }

            v213 = *(v375 + 8 * v211);
          }

          v214 = v213;
          v179 = __OFADD__(v211, 1);
          v211 = (v211 + 1);
          if (v179)
          {
            goto LABEL_155;
          }

          v215 = [v213 identifier];
          v216 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v218 = v217;

          if (*(v1 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v219 = Hasher._finalize()(), v220 = -1 << *(v1 + 32), v221 = v219 & ~v220, ((*(v20 + ((v221 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v221) & 1) != 0))
          {
            v222 = ~v220;
            while (1)
            {
              v223 = (*(v1 + 48) + 16 * v221);
              v224 = *v223 == v216 && v223[1] == v218;
              if (v224 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v221 = (v221 + 1) & v222;
              if (((*(v20 + ((v221 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v221) & 1) == 0)
              {
                goto LABEL_131;
              }
            }

            if (v211 == v210)
            {
              break;
            }
          }

          else
          {
LABEL_131:

            v225 = v214;
            MEMORY[0x223D76BD0]();
            if (*((v386 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v386 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v388 = v386;
            if (v211 == v210)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      v210 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v388 = v386;
      if (v210)
      {
        goto LABEL_115;
      }
    }

    v226 = [v371 idsIdentifier];
    if (!v226)
    {
      v227 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v226 = MEMORY[0x223D76B00](v227);
    }

    v65 = v389;
    logf = *(v389 + 113);
    v387 = *(v389 + 66);
    v228 = [v371 discoverySource];
    v229 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v231 = Array._bridgeToObjectiveC()().super.isa;

    v232 = [v229 initWithIDSIdentifier:v226 pendingStatuses:isa deliveredStatuses:v231 discoverySource:v228];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v233 = swift_allocObject();
    *(v233 + 16) = xmmword_2201A7710;
    *(v233 + 32) = v232;
    v234 = v232;
    v235 = Array._bridgeToObjectiveC()().super.isa;

    *(v389 + 62) = 0;
    v27 = [logf createOrUpdatePublishedLocalStatusDevices:v235 databaseContext:v387 error:v389 + 496];

    v236 = *(v389 + 62);
    if (!v27)
    {
      v264 = *(v389 + 117);
      v265 = v236;

      v1 = v389;

      v266 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v53 = v266;

      goto LABEL_28;
    }

    v237 = v236;

    v68 = v385;
    v165 = v386;
    v22 = v386;
    goto LABEL_140;
  }

  v64 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v64)
  {
    goto LABEL_76;
  }

LABEL_174:
  v371 = *(v389 + 67);

  v1 = v389;

  v367 = v68[2];
  v369 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  LODWORD(v387) = v367 == 0;
  v388 = v22;
  if (v367)
  {
    v272 = 0;
    v360 = (*(v389 + 70) + 8);
    v364 = *(v389 + 87);
    v64 = (v68 + 6);
    do
    {
      if (v272 >= v68[2])
      {
        __break(1u);
        goto LABEL_209;
      }

      v279 = *(v1 + 864);
      v280 = *(v64 - 8);
      v281 = *v64;
      v282 = *(v64 - 16);

      SKADatabasePublishedLocalStatus.key.getter(v279);
      v283 = *(v1 + 896);
      logc = v282;
      v376 = v272;
      v284 = *(v1 + 952);
      v285 = *(v1 + 888);
      v286 = *(v1 + 864);
      v287 = *(v1 + 840);
      v288 = *(v1 + 832);
      v289 = *(v1 + 816);
      v290 = *(v1 + 800);
      v291 = *(v389 + 67);
      (*(v287 + 16))(v289, v286, v288);
      v292 = (v289 + *(v290 + 20));
      *v292 = v285;
      v292[1] = v283;
      swift_beginAccess();
      v293 = *(v291 + v284);
      v294 = *(v293 + 16);

      if (v294 && (v295 = specialized __RawDictionaryStorage.find<A>(_:)(*(v389 + 102)), (v296 & 1) != 0))
      {
        v297 = *(v389 + 119);
        v298 = *(v389 + 91);
        v299 = *(v389 + 90);
        v353 = *(v389 + 89);
        v357 = *(v389 + 102);
        v300 = *(v389 + 83);
        v344 = *(v389 + 92);
        v347 = *(v389 + 82);
        v301 = *(v389 + 67);
        outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v293 + 56) + *(*(v389 + 88) + 72) * v295, v298, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        outlined init with take of SKALocalStatusServer.FailedDelivery(v298, v344);
        swift_endAccess();
        (*(v300 + 16))(v299, v344, v347);
        v1 = v389;
        static Date.now.getter();
        v302 = (v299 + *(v364 + 24));
        *v302 = v280;
        v302[1] = v281;
        swift_beginAccess();
        outlined init with take of SKALocalStatusServer.FailedDelivery(v299, v353);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v391[0] = *(v301 + v297);
        *(v301 + v297) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v353, v357, isUniquelyReferenced_nonNull_native);
        *(v301 + v297) = v391[0];
        swift_endAccess();
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v344, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      }

      else
      {
        v304 = *(v389 + 119);
        v305 = *(v389 + 102);
        v306 = *(v389 + 90);
        v307 = *(v389 + 89);
        v308 = *(v389 + 67);
        swift_endAccess();
        static Date.now.getter();
        v1 = v389;
        static Date.now.getter();
        v309 = (v306 + *(v364 + 24));
        *v309 = v280;
        v309[1] = v281;
        swift_beginAccess();
        outlined init with take of SKALocalStatusServer.FailedDelivery(v306, v307);
        v310 = swift_isUniquelyReferenced_nonNull_native();
        v391[0] = *(v308 + v304);
        *(v308 + v304) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v307, v305, v310);
        *(v308 + v304) = v391[0];
        swift_endAccess();
      }

      SKALocalStatusServer.currentStatus(for:in:)(*(v1 + 864), *(v1 + 528), *(v1 + 576));
      swift_beginAccess();
      if (*(*&v371[v369] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(*(v1 + 864)), (v311 & 1) != 0))
      {
        swift_endAccess();

        CurrentValueSubject.send(_:)();
      }

      else
      {
        swift_endAccess();
      }

      v273 = *(v1 + 864);
      v274 = *(v1 + 840);
      v275 = *(v1 + 832);
      v276 = *(v1 + 816);
      v277 = *(v1 + 576);
      v278 = *(v1 + 552);

      (*v360)(v277, v278);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v276, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v274 + 8))(v273, v275);
      v272 = v376 + 1;
      v64 += 24;
      v165 = v386;
      v68 = v385;
    }

    while (v367 != v376 + 1);
  }

  v64 = v388;
  if (v388 >> 62)
  {
    goto LABEL_212;
  }

  for (i = *((v388 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v313 = 0;
    v354 = v64 & 0xC000000000000001;
    v350 = v64 & 0xFFFFFFFFFFFFFF8;
    aBlocka = (*(v1 + 560) + 8);
    v345 = i;
    while (1)
    {
      if (v354)
      {
        v320 = MEMORY[0x223D77050](v313, v64);
      }

      else
      {
        if (v313 >= *(v350 + 16))
        {
          goto LABEL_210;
        }

        v320 = *(v64 + 8 * v313 + 32);
      }

      v321 = v320;
      v165 = v313 + 1;
      if (__OFADD__(v313, 1))
      {
        break;
      }

      SKADatabasePublishedLocalStatus.key.getter(*(v1 + 856));
      v322 = *(v1 + 896);
      v358 = v313 + 1;
      v361 = v313;
      logd = v321;
      v323 = *(v1 + 888);
      v324 = *(v1 + 808);
      v325 = *(v1 + 800);
      v377 = *(v1 + 568);
      v326 = *(v1 + 544);
      v365 = *(v1 + 856);
      v368 = *(v1 + 528);
      v348 = *(*(v1 + 840) + 16);
      v348(v324);
      v327 = (v324 + *(v325 + 20));
      *v327 = v323;
      v327[1] = v322;
      swift_beginAccess();

      specialized Dictionary._Variant.removeValue(forKey:)(v324, v326);
      outlined destroy of UUID?(v326, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMR);
      swift_endAccess();
      SKALocalStatusServer.currentStatus(for:in:)(v365, v368, v377);
      swift_beginAccess();
      v68 = v385;
      v64 = v388;
      if (*(*&v371[v369] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(*(v1 + 856)), (v328 & 1) != 0))
      {
        swift_endAccess();

        CurrentValueSubject.send(_:)();
        v329 = *(LSKPublishedStatus.pendingDevies.getter() + 16);

        if (!v329)
        {
          v330 = *(v1 + 856);
          v331 = *(v1 + 848);
          v332 = *(v1 + 832);
          *(v1 + 1040) = 1;
          CurrentValueSubject.send(completion:)();
          (v348)(v331, v330, v332);
          swift_beginAccess();
          specialized Dictionary.subscript.setter(0, v331);
          swift_endAccess();
        }
      }

      else
      {
        swift_endAccess();
      }

      v314 = *(v1 + 856);
      v315 = *(v1 + 840);
      v316 = *(v1 + 832);
      v317 = *(v1 + 808);
      v318 = *(v1 + 568);
      v319 = *(v1 + 552);

      (*aBlocka)(v318, v319);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v317, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v315 + 8))(v314, v316);
      v313 = v361 + 1;
      v165 = v386;
      if (v358 == v345)
      {
        goto LABEL_202;
      }
    }

LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    ;
  }

LABEL_202:

  v333 = Logger.logObject.getter();
  v334 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v333, v334))
  {
    v335 = swift_slowAlloc();
    *v335 = 134218240;
    if (v165 >> 62)
    {
      v336 = __CocoaSet.count.getter();
    }

    else
    {
      v336 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v335 + 4) = v336;

    *(v335 + 12) = 2048;
    v337 = v68[2];

    *(v335 + 14) = v337;

    _os_log_impl(&dword_220099000, v333, v334, "Send pending status END {deliveredStatuses.count: %ld, failedStatuses.count: %ld}", v335, 0x16u);
    MEMORY[0x223D77FF0](v335, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v338 = *(v1 + 936);
  SKALocalStatusServer.updateBrowseTaskDeviceFilter(databaseContext:)(*(v1 + 528));

LABEL_166:

  v271 = *(v389 + 1);

  return v271(v387);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1008) = v2;
  v3 = *(v1 + 536);
  if (v2)
  {
    v4 = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
  }

  else
  {
    v4 = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[125];
  v2 = v0[117];
  v3 = v0[67];
  v4 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer, &protocol conformance descriptor for SKALocalStatusServer);
  v5 = swift_task_alloc();
  v0[127] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v2;
  v6 = swift_task_alloc();
  v0[128] = v6;
  *v6 = v0;
  v6[1] = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v3, v4, 0x743A5F28646E6573, 0xEB00000000293A6FLL, partial apply for closure #1 in SKALocalStatusServer.send(_:to:), v5, v7);
}

{
  v2 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v3 = *(v2 + 536);
    v4 = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
  }

  else
  {
    v5 = *(v2 + 536);

    v4 = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v386 = v0;
  v1 = v0;
  v385[9] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 1000);
  v3 = *(v1 + 504);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v384 = v1;
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 1000);
    v8 = *(v1 + 504);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v385[0] = v11;
    *v9 = 136315394;
    v12 = [v7 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v385);
    v1 = v384;

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    v17 = v8;
    _os_log_impl(&dword_220099000, v5, v6, "Status send END {status: %s, device: %@}", v9, 0x16u);
    outlined destroy of UUID?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D77FF0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D77FF0](v11, -1, -1);
    MEMORY[0x223D77FF0](v9, -1, -1);
  }

  MEMORY[0x223D76BD0]();
  if (*((*(v1 + 464) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 464) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_133:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v18 = *(v1 + 872);
  v19 = *(v1 + 840);
  v20 = *(v1 + 832);
  v21 = *(v1 + 824);
  v22 = *(v1 + 792);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  outlined destroy of UUID?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v21, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
  (*(v19 + 8))(v18, v20);
  v23 = *(v1 + 464);
  v351 = *(v1 + 1032);
  v24 = *(v1 + 968);
  v25 = *(v1 + 960) + 1;
  if (v25 == *(v1 + 928))
  {
    v362 = *(v1 + 968);
    v368 = *(v1 + 464);
    v369 = v368;
    v367 = v368;
    goto LABEL_46;
  }

  v26 = *(v1 + 464);
  v368 = v26;
LABEL_7:
  v367 = v26;
  v27 = v351;
  v362 = v24;
  v369 = v23;
  do
  {
    *(v1 + 992) = v23;
    *(v1 + 984) = v26;
    *(v1 + 976) = v368;
    *(v1 + 968) = v24;
    *(v1 + 960) = v25;
    v53 = *(v1 + 920);
    if ((v53 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x223D77050]();
    }

    else
    {
      v54 = *(v53 + 8 * v25 + 32);
    }

    v55 = v54;
    *(v1 + 1000) = v54;
    SKADatabasePublishedLocalStatus.key.getter(*(v1 + 872));
    if (v27)
    {
      v89 = *(v1 + 1000);
      v90 = *(v1 + 504);
      v91 = v89;
      v92 = v27;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = *(v1 + 1000);
        v96 = *(v1 + 504);
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v385[0] = v99;
        *v97 = 136315650;
        v100 = [v95 identifier];
        v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v103 = v102;

        v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v103, v385);
        v1 = v384;

        *(v97 + 4) = v104;
        *(v97 + 12) = 2112;
        v105 = v27;
        v106 = _swift_stdlib_bridgeErrorToNSError();
        *(v97 + 14) = v106;
        *(v97 + 22) = 2112;
        *(v97 + 24) = v96;
        *v98 = v106;
        v98[1] = v96;
        v107 = v96;
        _os_log_impl(&dword_220099000, v93, v94, "Status send FAILED {status: %s, error: %@, device: %@}", v97, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v98, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v99);
        MEMORY[0x223D77FF0](v99, -1, -1);
        MEMORY[0x223D77FF0](v97, -1, -1);
      }

      v108 = _convertErrorToNSError(_:)();
      v109 = [v108 userInfo];
      v110 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v110 + 16) && (v111 = specialized __RawDictionaryStorage.find<A>(_:)(0x4D726F7272457563, 0xEA00000000006773), (v112 & 1) != 0))
      {
        outlined init with copy of Any(*(v110 + 56) + 32 * v111, v1 + 192);

        if (swift_dynamicCast())
        {
          v113 = *(v1 + 440);
          v114 = *(v1 + 448);
          goto LABEL_30;
        }
      }

      else
      {
      }

      swift_getErrorValue();
      v113 = Error.localizedDescription.getter();
      v114 = v115;
LABEL_30:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = *(v1 + 968);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117[2] + 1, 1, v117);
      }

      v119 = v117[2];
      v118 = v117[3];
      if (v119 >= v118 >> 1)
      {
        v362 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v118 > 1), v119 + 1, 1, v117);
      }

      else
      {
        v362 = v117;
      }

      v120 = *(v1 + 1000);

      v351 = 0;
      v24 = v362;
      v362[2] = v119 + 1;
      v121 = &v362[3 * v119];
      v121[4] = v120;
      v121[5] = v113;
      v121[6] = v114;
      v23 = *(v1 + 992);
      v26 = *(v1 + 984);
      v368 = *(v1 + 976);
      v25 = *(v1 + 960) + 1;
      if (v25 == *(v1 + 928))
      {
        goto LABEL_130;
      }

      goto LABEL_7;
    }

    v56 = *(v1 + 952);
    v57 = *(v1 + 896);
    v58 = *(v1 + 888);
    v59 = *(v1 + 824);
    v60 = *(v1 + 800);
    v61 = *(v1 + 536);
    (*(*(v1 + 840) + 16))(v59, *(v1 + 872), *(v1 + 832));
    v62 = (v59 + *(v60 + 20));
    *v62 = v58;
    v62[1] = v57;
    swift_beginAccess();
    v63 = *(v61 + v56);
    v64 = *(v63 + 16);

    if (v64 && (v65 = specialized __RawDictionaryStorage.find<A>(_:)(*(v1 + 824)), (v66 & 1) != 0))
    {
      v67 = *(v1 + 752);
      v68 = *(v1 + 744);
      outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v63 + 56) + *(*(v1 + 704) + 72) * v65, v68, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      outlined init with take of SKALocalStatusServer.FailedDelivery(v68, v67);
      swift_endAccess();
      Date.timeIntervalSince(_:)();
      Date.addingTimeInterval(_:)();
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v67, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      v69 = 0;
    }

    else
    {
      swift_endAccess();
      v69 = 1;
    }

    v70 = *(v1 + 792);
    v71 = *(v1 + 784);
    v72 = *(v1 + 664);
    v73 = *(v1 + 656);
    (*(v72 + 56))(v70, v69, 1, v73);
    outlined init with copy of (String, Sendable)(v70, v71, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((*(v72 + 48))(v71, 1, v73) == 1)
    {
      outlined destroy of UUID?(*(v1 + 784), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_39:
      v122 = *(v1 + 504);
      outlined init with copy of (String, Sendable)(*(v1 + 792), *(v1 + 776), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v123 = v122;
      v124 = v55;
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.default.getter();

      v127 = os_log_type_enabled(v125, v126);
      v128 = *(v1 + 776);
      if (v127)
      {
        v129 = *(v384 + 768);
        v130 = *(v384 + 504);
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v385[0] = v133;
        *v131 = 138412802;
        *(v131 + 4) = v124;
        *(v131 + 12) = 2112;
        *(v131 + 14) = v130;
        *v132 = v124;
        v132[1] = v130;
        *(v131 + 22) = 2080;
        outlined init with copy of (String, Sendable)(v128, v129, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v134 = v130;
        v135 = v124;
        v136 = String.init<A>(describing:)();
        v138 = v137;
        outlined destroy of UUID?(v128, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v138, v385);
        v1 = v384;

        *(v131 + 24) = v139;
        _os_log_impl(&dword_220099000, v125, v126, "Status send START {status: %@, device: %@, nextAttemptDate: %s}", v131, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v132, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v133);
        MEMORY[0x223D77FF0](v133, -1, -1);
        MEMORY[0x223D77FF0](v131, -1, -1);
      }

      else
      {

        outlined destroy of UUID?(v128, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      v140 = *(v1 + 1000);
      v141 = *(v1 + 936);
      v142 = *(v1 + 536);
      v143 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer, &protocol conformance descriptor for SKALocalStatusServer);
      v144 = swift_task_alloc();
      *(v1 + 1016) = v144;
      v144[2] = v142;
      v144[3] = v140;
      v144[4] = v141;
      v145 = swift_task_alloc();
      *(v1 + 1024) = v145;
      *v145 = v1;
      v145[1] = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
      v146 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v145, v142, v143, 0x743A5F28646E6573, 0xEB00000000293A6FLL, partial apply for closure #1 in SKALocalStatusServer.send(_:to:), v144, v146);
    }

    v74 = *(v1 + 680);
    v75 = *(v1 + 664);
    v76 = *(v1 + 656);
    (*(v75 + 32))(*(v1 + 688), *(v1 + 784), v76);
    static Date.now.getter();
    v77 = static Date.> infix(_:_:)();
    v78 = *(v75 + 8);
    v78(v74, v76);
    if ((v77 & 1) == 0)
    {
      v78(*(v1 + 688), *(v1 + 656));
      goto LABEL_39;
    }

    (*(*(v1 + 664) + 16))(*(v1 + 672), *(v1 + 688), *(v1 + 656));

    v79 = v55;
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    v378 = v79;

    log = v80;
    if (os_log_type_enabled(v80, v81))
    {
      v28 = *(v1 + 896);
      v335 = *(v1 + 888);
      v363 = *(v1 + 872);
      v355 = *(v1 + 840);
      v358 = *(v1 + 832);
      v352 = *(v1 + 824);
      v344 = *(v1 + 688);
      v348 = *(v1 + 792);
      v29 = *(v1 + 672);
      v30 = *(v1 + 656);
      v341 = v30;
      v31 = swift_slowAlloc();
      v338 = swift_slowAlloc();
      v385[0] = v338;
      *v31 = 136315650;
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v78(v29, v30);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v385);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v36 = [v378 identifier];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v385);

      *(v31 + 14) = v40;
      *(v31 + 22) = 2080;

      v42 = specialized Collection.prefix(_:)(8, v335, v28, v41);
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v49 = MEMORY[0x223D76B60](v42, v44, v46, v48);
      v51 = v50;

      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v385);

      *(v31 + 24) = v52;
      _os_log_impl(&dword_220099000, log, v81, "Status send SKIP. Not enough time since latest failed attempt. {nextAttemptDate: %s, status.identifier: %s, idsIdentifier: %s}", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v338, -1, -1);
      MEMORY[0x223D77FF0](v31, -1, -1);

      v78(v344, v341);
      outlined destroy of UUID?(v348, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v352, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v355 + 8))(v363, v358);
    }

    else
    {
      v364 = *(v1 + 872);
      v82 = *(v1 + 840);
      v83 = *(v1 + 832);
      v84 = *(v1 + 824);
      v85 = *(v1 + 792);
      v86 = *(v1 + 688);
      v87 = *(v1 + 672);
      v88 = *(v1 + 656);

      v78(v87, v88);
      v78(v86, v88);
      outlined destroy of UUID?(v85, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v84, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v82 + 8))(v364, v83);
    }

    v27 = 0;
    v25 = *(v1 + 960) + 1;
    v24 = v362;
    v26 = v367;
    v23 = v369;
  }

  while (v25 != *(v1 + 928));
  v351 = 0;
  while (1)
  {
LABEL_46:
    v147 = (v1 + 144);
    v148 = *(v1 + 936);
    v149 = *(v1 + 904);
    v150 = *(v1 + 624);
    v151 = *(v1 + 616);
    v365 = *(v1 + 608);
    v152 = *(v1 + 600);
    v153 = *(v384 + 592);
    v154 = *(v384 + 584);
    logd = *(v384 + 528);
    v379 = v149;

    v155 = swift_allocObject();
    *(v155 + 16) = v148;
    *(v384 + 176) = partial apply for closure #3 in SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    *(v384 + 184) = v155;
    *(v384 + 144) = MEMORY[0x277D85DD0];
    *(v384 + 152) = 1107296256;
    *(v384 + 160) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(v384 + 168) = &block_descriptor_81;
    v156 = _Block_copy(v147);
    v157 = v148;
    static DispatchQoS.unspecified.getter();
    *(v384 + 480) = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v158 = &_sSay8Dispatch0A13WorkItemFlagsVGMR;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223D76E80](0, v150, v152, v156);
    _Block_release(v156);
    (*(v153 + 8))(v152, v154);
    v159 = v384;
    (*(v151 + 8))(v150, v365);

    *(v384 + 488) = 0;
    v160 = [v379 allPublishedLocalStatusDevicesInDatabaseContext:logd error:v384 + 488];
    v161 = *(v384 + 488);
    if (!v160)
    {
      v241 = *(v384 + 936);
      v242 = v161;

      v243 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v158 = v243;

LABEL_176:
      v321 = *(v159 + 504);
      v322 = v158;
      v323 = Logger.logObject.getter();
      v324 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v323, v324))
      {
        v325 = *(v159 + 504);
        v326 = swift_slowAlloc();
        v327 = swift_slowAlloc();
        *v326 = 138412546;
        *(v326 + 4) = v325;
        *v327 = v325;
        *(v326 + 12) = 2112;
        v328 = v325;
        v329 = v158;
        v330 = _swift_stdlib_bridgeErrorToNSError();
        *(v326 + 14) = v330;
        v327[1] = v330;
        _os_log_impl(&dword_220099000, v323, v324, "Send pending status FAILED. Error fetching status devices {clDevice: %@, error: %@}", v326, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v327, -1, -1);
        MEMORY[0x223D77FF0](v326, -1, -1);
      }

      else
      {
      }

      LODWORD(v348) = 0;
      goto LABEL_180;
    }

    v162 = v160;
    v163 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v164 = v161;

    v23 = v369;
    if (v369 >> 62)
    {
      v165 = __CocoaSet.count.getter();
    }

    else
    {
      v165 = *((v369 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v166 = MEMORY[0x277D84F90];
    v339 = v163;
    if (v165)
    {
      v385[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v165 & ~(v165 >> 63), 0);
      if (v165 < 0)
      {
        goto LABEL_186;
      }

      v158 = 0;
      v166 = v385[0];
      do
      {
        if ((v369 & 0xC000000000000001) != 0)
        {
          v167 = MEMORY[0x223D77050](v158, v369);
        }

        else
        {
          v167 = *(v369 + 8 * v158 + 32);
        }

        v168 = v167;
        v169 = [v168 identifier];
        v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v172 = v171;

        v385[0] = v166;
        v174 = *(v166 + 16);
        v173 = *(v166 + 24);
        if (v174 >= v173 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v173 > 1), v174 + 1, 1);
          v166 = v385[0];
        }

        v158 = (v158 + 1);
        *(v166 + 16) = v174 + 1;
        v175 = v166 + 16 * v174;
        *(v175 + 32) = v170;
        *(v175 + 40) = v172;
      }

      while (v165 != v158);
    }

    v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v166);

    if (!(v163 >> 62))
    {
      v176 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v176)
      {
        break;
      }

      goto LABEL_60;
    }

    v176 = __CocoaSet.count.getter();
    if (!v176)
    {
      break;
    }

LABEL_60:
    v177 = 0;
    v348 = v163 & 0xC000000000000001;
    v333 = v163 + 32;
    v334 = v163 & 0xFFFFFFFFFFFFFF8;
    v158 = (v1 + 56);
    v345 = v176;
    while (1)
    {
      if (v348)
      {
        v178 = MEMORY[0x223D77050](v177, v339);
      }

      else
      {
        if (v177 >= *(v334 + 16))
        {
          goto LABEL_132;
        }

        v178 = *(v333 + 8 * v177);
      }

      v179 = v178;
      v180 = __OFADD__(v177, 1);
      v181 = v177 + 1;
      if (v180)
      {
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v359 = v181;
      v182 = *(v384 + 504);
      v183 = [v178 idsIdentifier];
      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v186 = v185;

      v187 = [v182 idsDeviceIdentifier];
      if (!v187)
      {

        goto LABEL_62;
      }

      v366 = v179;
      v188 = v187;
      v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v191 = v190;

      if (v184 == v189 && v186 == v191)
      {

        v192 = v366;
      }

      else
      {
        v193 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v192 = v366;
        if ((v193 & 1) == 0)
        {

          goto LABEL_62;
        }
      }

      v194 = [v192 pendingStatuses];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
      v195 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v196 = v195;
      if (!(v195 >> 62))
      {
        v197 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v197)
        {
          break;
        }

        goto LABEL_97;
      }

      v211 = v195;
      v197 = __CocoaSet.count.getter();
      v196 = v211;
      if (v197)
      {
        break;
      }

LABEL_97:

      v212 = [v192 deliveredStatuses];
      v213 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v213 >> 62)
      {
        v214 = __CocoaSet.count.getter();
        logb = v213;
        if (v214)
        {
LABEL_99:
          v215 = 0;
          v368 = v213 + 32;
          while (1)
          {
            if ((v213 & 0xC000000000000001) != 0)
            {
              v216 = MEMORY[0x223D77050](v215, logb);
            }

            else
            {
              if (v215 >= *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_129;
              }

              v216 = *(v368 + 8 * v215);
            }

            v217 = v216;
            v180 = __OFADD__(v215++, 1);
            if (v180)
            {
              goto LABEL_128;
            }

            v218 = [v216 identifier];
            v219 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v221 = v220;

            if (*(v1 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v222 = Hasher._finalize()(), v223 = -1 << *(v1 + 32), v224 = v222 & ~v223, ((*(v158 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) != 0))
            {
              v23 = ~v223;
              while (1)
              {
                v225 = (*(v1 + 48) + 16 * v224);
                v226 = *v225 == v219 && v225[1] == v221;
                if (v226 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v224 = (v224 + 1) & v23;
                if (((*(v158 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) == 0)
                {
                  goto LABEL_115;
                }
              }

              if (v215 == v214)
              {
                break;
              }
            }

            else
            {
LABEL_115:

              v227 = v217;
              MEMORY[0x223D76BD0]();
              if (*((v367 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v367 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              if (v215 == v214)
              {
                break;
              }
            }
          }
        }
      }

      else
      {
        v214 = *((v213 & 0xFFFFFFFFFFFFFF8) + 0x10);
        logb = v213;
        if (v214)
        {
          goto LABEL_99;
        }
      }

      v228 = [v366 idsIdentifier];
      if (!v228)
      {
        v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v228 = MEMORY[0x223D76B00](v229);
      }

      loge = *(v384 + 904);
      v381 = *(v384 + 528);
      v230 = [v366 discoverySource];
      v231 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v233 = Array._bridgeToObjectiveC()().super.isa;

      v234 = [v231 initWithIDSIdentifier:v228 pendingStatuses:isa deliveredStatuses:v233 discoverySource:v230];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v235 = swift_allocObject();
      *(v235 + 16) = xmmword_2201A7710;
      *(v235 + 32) = v234;
      v236 = v234;
      v237 = Array._bridgeToObjectiveC()().super.isa;

      *(v384 + 496) = 0;
      v238 = [loge createOrUpdatePublishedLocalStatusDevices:v237 databaseContext:v381 error:v384 + 496];

      v239 = *(v384 + 496);
      if (!v238)
      {
        v244 = *(v384 + 936);
        v245 = v239;

        v159 = v384;

        v246 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v158 = v246;

        goto LABEL_176;
      }

      v240 = v239;

      v23 = v367;
LABEL_62:
      v177 = v359;
      if (v359 == v345)
      {
        goto LABEL_136;
      }
    }

    v198 = 0;
    loga = (v196 & 0xFFFFFFFFFFFFFF8);
    v380 = (v196 & 0xC000000000000001);
    v370 = v196;
    v199 = v196 + 32;
    while (1)
    {
      if (v380)
      {
        v200 = MEMORY[0x223D77050](v198, v370);
      }

      else
      {
        if (v198 >= loga[2].isa)
        {
          goto LABEL_127;
        }

        v200 = *(v199 + 8 * v198);
      }

      v23 = v200;
      v180 = __OFADD__(v198, 1);
      v198 = (v198 + 1);
      if (v180)
      {
        break;
      }

      v201 = [v200 identifier];
      v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v204 = v203;

      if (*(v1 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v205 = Hasher._finalize()(), v206 = -1 << *(v1 + 32), v207 = v205 & ~v206, ((*(v158 + ((v207 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v207) & 1) != 0))
      {
        v208 = ~v206;
        while (1)
        {
          v209 = (*(v1 + 48) + 16 * v207);
          v210 = *v209 == v202 && v209[1] == v204;
          if (v210 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v207 = (v207 + 1) & v208;
          if (((*(v158 + ((v207 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v207) & 1) == 0)
          {
            goto LABEL_76;
          }
        }

        if (v198 == v197)
        {
LABEL_94:
          v192 = v366;
          goto LABEL_97;
        }
      }

      else
      {
LABEL_76:

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v198 == v197)
        {
          goto LABEL_94;
        }
      }
    }

    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    v369 = v23;
    v367 = v26;
  }

LABEL_136:
  v368 = *(v384 + 536);

  v247 = v362;
  v248 = v362[2];
  v365 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
  LODWORD(v348) = v248 == 0;
  v369 = v23;
  v360 = v248;
  if (v248)
  {
    v249 = 0;
    v356 = *(v384 + 696);
    v349 = (*(v384 + 560) + 8);
    v250 = v362 + 6;
    v159 = v384;
    while (1)
    {
      if (v249 >= v247[2])
      {
        __break(1u);
        goto LABEL_184;
      }

      v382 = v249;
      v257 = *(v159 + 864);
      v258 = *(v250 - 1);
      v259 = *v250;
      v260 = *(v250 - 2);

      v158 = v351;
      SKADatabasePublishedLocalStatus.key.getter(v257);
      v261 = *(v159 + 896);
      if (v351)
      {
        break;
      }

      logc = v260;
      v262 = *(v159 + 952);
      v263 = *(v384 + 888);
      v264 = *(v384 + 816);
      v265 = *(v384 + 800);
      v266 = *(v384 + 536);
      (*(*(v384 + 840) + 16))(v264, *(v384 + 864), *(v384 + 832));
      v267 = (v264 + *(v265 + 20));
      *v267 = v263;
      v267[1] = v261;
      swift_beginAccess();
      v268 = *(v266 + v262);
      v269 = *(v268 + 16);

      if (v269 && (v270 = specialized __RawDictionaryStorage.find<A>(_:)(*(v384 + 816)), (v271 & 1) != 0))
      {
        v272 = *(v384 + 952);
        v353 = *(v384 + 736);
        v273 = *(v384 + 728);
        v274 = *(v384 + 720);
        v342 = *(v384 + 712);
        v346 = *(v384 + 816);
        v275 = *(v384 + 664);
        v336 = *(v384 + 656);
        v276 = *(v384 + 536);
        outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v268 + 56) + *(*(v384 + 704) + 72) * v270, v273, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        v277 = v273;
        v159 = v384;
        outlined init with take of SKALocalStatusServer.FailedDelivery(v277, v353);
        swift_endAccess();
        (*(v275 + 16))(v274, v353, v336);
        static Date.now.getter();
        v278 = (v274 + *(v356 + 24));
        *v278 = v258;
        v278[1] = v259;
        swift_beginAccess();
        outlined init with take of SKALocalStatusServer.FailedDelivery(v274, v342);
        v279 = swift_isUniquelyReferenced_nonNull_native();
        v385[0] = *(v276 + v272);
        *(v276 + v272) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v342, v346, v279);
        *(v276 + v272) = v385[0];
        swift_endAccess();
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v353, type metadata accessor for SKALocalStatusServer.FailedDelivery);
      }

      else
      {
        v280 = *(v384 + 952);
        v281 = *(v384 + 816);
        v282 = *(v384 + 720);
        v283 = *(v384 + 712);
        v284 = *(v384 + 536);
        swift_endAccess();
        static Date.now.getter();
        v159 = v384;
        static Date.now.getter();
        v285 = (v282 + *(v356 + 24));
        *v285 = v258;
        v285[1] = v259;
        swift_beginAccess();
        outlined init with take of SKALocalStatusServer.FailedDelivery(v282, v283);
        v286 = swift_isUniquelyReferenced_nonNull_native();
        v385[0] = *(v284 + v280);
        *(v284 + v280) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v283, v281, v286);
        *(v284 + v280) = v385[0];
        swift_endAccess();
      }

      SKALocalStatusServer.currentStatus(for:in:)(*(v159 + 864), *(v159 + 528), *(v159 + 576));
      v23 = v369;
      swift_beginAccess();
      if (*(*&v365[v368] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(*(v159 + 864)), (v287 & 1) != 0))
      {
        swift_endAccess();

        CurrentValueSubject.send(_:)();
      }

      else
      {
        swift_endAccess();
      }

      v249 = v382 + 1;
      v251 = *(v159 + 864);
      v252 = *(v159 + 840);
      v253 = *(v159 + 832);
      v254 = *(v159 + 816);
      v255 = *(v159 + 576);
      v256 = *(v159 + 552);

      (*v349)(v255, v256);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v254, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v252 + 8))(v251, v253);
      v351 = 0;
      v158 = 0;
      v250 += 3;
      v247 = v362;
      if (v360 == v382 + 1)
      {
        goto LABEL_150;
      }
    }

    v318 = *(v159 + 936);

LABEL_175:

    goto LABEL_176;
  }

  v158 = v351;
  v159 = v384;
LABEL_150:
  if (v23 >> 62)
  {
    goto LABEL_187;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (!i)
    {
      break;
    }

    v289 = 0;
    v350 = v23 & 0xC000000000000001;
    v347 = v23 & 0xFFFFFFFFFFFFFF8;
    v337 = (*(v159 + 560) + 8);
    v340 = i;
    while (1)
    {
      if (v350)
      {
        v296 = MEMORY[0x223D77050](v289, v23);
      }

      else
      {
        if (v289 >= *(v347 + 16))
        {
          goto LABEL_185;
        }

        v296 = *(v23 + 8 * v289 + 32);
      }

      v297 = v296;
      if (__OFADD__(v289, 1))
      {
        break;
      }

      SKADatabasePublishedLocalStatus.key.getter(*(v159 + 856));
      v298 = *(v159 + 896);
      if (v158)
      {
        v320 = *(v159 + 936);
        swift_bridgeObjectRelease_n();

        goto LABEL_175;
      }

      v383 = v297;
      v354 = v289 + 1;
      v357 = v289;
      v299 = *(v159 + 888);
      v300 = *(v159 + 856);
      v301 = *(v159 + 840);
      v302 = *(v159 + 832);
      v303 = *(v159 + 808);
      v304 = *(v159 + 800);
      logf = *(v159 + 568);
      v305 = *(v384 + 544);
      v361 = *(v384 + 528);
      v343 = *(v301 + 16);
      v343(v303, v300, v302);
      v306 = (v303 + *(v304 + 20));
      *v306 = v299;
      v306[1] = v298;
      swift_beginAccess();

      specialized Dictionary._Variant.removeValue(forKey:)(v303, v305);
      v307 = v305;
      v159 = v384;
      outlined destroy of UUID?(v307, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMR);
      swift_endAccess();
      SKALocalStatusServer.currentStatus(for:in:)(v300, v361, logf);
      swift_beginAccess();
      v23 = v369;
      if (*(*&v365[v368] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(*(v384 + 856)), (v308 & 1) != 0))
      {
        swift_endAccess();

        CurrentValueSubject.send(_:)();
        v309 = *(LSKPublishedStatus.pendingDevies.getter() + 16);

        if (!v309)
        {
          v310 = *(v384 + 856);
          v311 = *(v384 + 848);
          v312 = *(v384 + 832);
          *(v384 + 1040) = 1;
          CurrentValueSubject.send(completion:)();
          v343(v311, v310, v312);
          swift_beginAccess();
          specialized Dictionary.subscript.setter(0, v311);
          swift_endAccess();
        }
      }

      else
      {
        swift_endAccess();
      }

      v290 = *(v384 + 856);
      v291 = *(v384 + 840);
      v292 = *(v384 + 832);
      v293 = *(v384 + 808);
      v294 = *(v384 + 568);
      v295 = *(v384 + 552);

      (*v337)(v294, v295);
      outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v293, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      (*(v291 + 8))(v290, v292);
      v158 = 0;
      v289 = v357 + 1;
      if (v354 == v340)
      {
        goto LABEL_167;
      }
    }

LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    ;
  }

LABEL_167:

  v313 = Logger.logObject.getter();
  v314 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v313, v314))
  {
    v315 = swift_slowAlloc();
    *v315 = 134218240;
    if (v367 >> 62)
    {
      v316 = __CocoaSet.count.getter();
    }

    else
    {
      v316 = *((v367 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v315 + 4) = v316;

    *(v315 + 12) = 2048;
    v317 = v362[2];

    *(v315 + 14) = v317;

    _os_log_impl(&dword_220099000, v313, v314, "Send pending status END {deliveredStatuses.count: %ld, failedStatuses.count: %ld}", v315, 0x16u);
    MEMORY[0x223D77FF0](v315, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v319 = *(v159 + 936);
  SKALocalStatusServer.updateBrowseTaskDeviceFilter(databaseContext:)(*(v159 + 528));

LABEL_180:

  v331 = *(v384 + 8);

  return v331(v348);
}

{
  v365 = v0;
  v1 = v0;
  v364[9] = *MEMORY[0x277D85DE8];
  aBlock = v0 + 18;
  v2 = v0[109];
  v3 = v0[105];
  v4 = v1[104];
  v5 = v1[103];
  v6 = v1[99];

  outlined destroy of UUID?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v5, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
  (*(v3 + 8))(v2, v4);
  v7 = v1[129];
  v349 = v1;
  v8 = v1[125];
  v9 = v1[63];
  v10 = v8;
  v11 = v7;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  v346 = v7;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v1[125];
    v15 = v1[63];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v364[0] = v18;
    *v16 = 136315650;
    v19 = [v14 identifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = v20;
    v1 = v349;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v364);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2112;
    v25 = v7;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v26;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v15;
    *v17 = v26;
    v17[1] = v15;
    v27 = v15;
    _os_log_impl(&dword_220099000, v12, v13, "Status send FAILED {status: %s, error: %@, device: %@}", v16, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x223D77FF0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D77FF0](v18, -1, -1);
    MEMORY[0x223D77FF0](v16, -1, -1);
  }

  v28 = _convertErrorToNSError(_:)();
  v29 = [v28 userInfo];
  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v30 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(0x4D726F7272457563, 0xEA00000000006773), (v32 & 1) != 0))
  {
    outlined init with copy of Any(*(v30 + 56) + 32 * v31, (v1 + 24));

    if (swift_dynamicCast())
    {
      v33 = v1[55];
      v34 = v1[56];
      goto LABEL_9;
    }
  }

  else
  {
  }

  swift_getErrorValue();
  v33 = Error.localizedDescription.getter();
  v34 = v35;
LABEL_9:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v1[121];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
  }

  v39 = v37[2];
  v38 = v37[3];
  if (v39 >= v38 >> 1)
  {
    v344 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
  }

  else
  {
    v344 = v37;
  }

  v40 = v1[125];

  v41 = v344;
  v344[2] = v39 + 1;
  v42 = &v344[3 * v39];
  v42[4] = v40;
  v42[5] = v33;
  v42[6] = v34;
  v43 = v1[124];
  v44 = v1[123];
  v342 = v1[122];
  v343 = v43;
  v45 = v1[120] + 1;
  v345 = v44;
  if (v45 == v1[116])
  {
LABEL_29:
    v108 = v1[117];
    v109 = v1[113];
    v110 = v1[78];
    v111 = v1[77];
    v341 = v1[76];
    v112 = v1[75];
    v113 = v1[74];
    v114 = v349[73];
    logd = v349[66];
    v358 = v109;

    v115 = swift_allocObject();
    *(v115 + 16) = v108;
    v349[22] = partial apply for closure #3 in SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    v349[23] = v115;
    v349[18] = MEMORY[0x277D85DD0];
    v349[19] = 1107296256;
    v349[20] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v349[21] = &block_descriptor_81;
    v116 = _Block_copy(aBlock);
    v117 = v108;
    static DispatchQoS.unspecified.getter();
    v349[60] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x223D76E80](0, v110, v112, v116);
    _Block_release(v116);
    v118 = v114;
    v119 = v349;
    (*(v113 + 8))(v112, v118);
    (*(v111 + 8))(v110, v341);

    v349[61] = 0;
    v120 = [v358 allPublishedLocalStatusDevicesInDatabaseContext:logd error:v349 + 61];
    v121 = v349[61];
    if (v120)
    {
      v122 = v120;
      v123 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v124 = v121;

      v125 = v343;
      if (v343 >> 62)
      {
        goto LABEL_124;
      }

      v126 = *((v343 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_32:
      v127 = MEMORY[0x277D84F90];
      v321 = v123;
      if (v126)
      {
        v364[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126 & ~(v126 >> 63), 0);
        if (v126 < 0)
        {
          goto LABEL_170;
        }

        v128 = 0;
        v127 = v364[0];
        do
        {
          if ((v125 & 0xC000000000000001) != 0)
          {
            v129 = MEMORY[0x223D77050](v128, v125);
          }

          else
          {
            v129 = *(v125 + 8 * v128 + 32);
          }

          v130 = v129;
          v131 = [v130 identifier];
          v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v134 = v133;

          v364[0] = v127;
          v136 = *(v127 + 16);
          v135 = *(v127 + 24);
          if (v136 >= v135 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1);
            v127 = v364[0];
          }

          ++v128;
          *(v127 + 16) = v136 + 1;
          v137 = v127 + 16 * v136;
          *(v137 + 32) = v132;
          *(v137 + 40) = v134;
        }

        while (v126 != v128);
      }

      v163 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v127);

      if (v123 >> 62)
      {
        v164 = __CocoaSet.count.getter();
        if (v164)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v164 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v164)
        {
LABEL_52:
          v165 = 0;
          v329 = v123 & 0xC000000000000001;
          v315 = v123 & 0xFFFFFFFFFFFFFF8;
          v311 = v123 + 32;
          v126 = v163 + 56;
          v327 = v164;
          do
          {
            if (v329)
            {
              v166 = MEMORY[0x223D77050](v165, v123);
            }

            else
            {
              if (v165 >= *(v315 + 16))
              {
                goto LABEL_123;
              }

              v166 = *(v311 + 8 * v165);
            }

            v167 = v166;
            v168 = __OFADD__(v165, 1);
            v169 = v165 + 1;
            if (v168)
            {
LABEL_122:
              __break(1u);
LABEL_123:
              __break(1u);
LABEL_124:
              v126 = __CocoaSet.count.getter();
              goto LABEL_32;
            }

            v336 = v169;
            v170 = v349[63];
            v171 = [v166 idsIdentifier];
            v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v174 = v173;

            v175 = [v170 idsDeviceIdentifier];
            if (v175)
            {
              v341 = v167;
              v176 = v175;
              v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v179 = v178;

              if (v172 == v177 && v174 == v179)
              {

                v180 = v341;
              }

              else
              {
                v181 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v180 = v341;
                if ((v181 & 1) == 0)
                {

                  goto LABEL_54;
                }
              }

              v182 = [v180 pendingStatuses];
              type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
              v183 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v183 >> 62)
              {
                v184 = __CocoaSet.count.getter();
                if (v184)
                {
LABEL_67:
                  v185 = 0;
                  loga = (v183 & 0xFFFFFFFFFFFFFF8);
                  v359 = (v183 & 0xC000000000000001);
                  v343 = v183;
                  v123 = v183 + 32;
                  while (1)
                  {
                    if (v359)
                    {
                      v186 = MEMORY[0x223D77050](v185, v343);
                    }

                    else
                    {
                      if (v185 >= loga[2].isa)
                      {
                        goto LABEL_119;
                      }

                      v186 = *(v123 + 8 * v185);
                    }

                    v187 = v186;
                    v168 = __OFADD__(v185, 1);
                    v185 = (v185 + 1);
                    if (v168)
                    {
                      break;
                    }

                    v188 = [v186 identifier];
                    v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v190 = v189;

                    if (*(v163 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v191 = Hasher._finalize()(), v192 = -1 << *(v163 + 32), v193 = v191 & ~v192, ((*(v126 + ((v193 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v193) & 1) != 0))
                    {
                      v194 = ~v192;
                      while (1)
                      {
                        v195 = (*(v163 + 48) + 16 * v193);
                        v196 = *v195 == v125 && v195[1] == v190;
                        if (v196 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v193 = (v193 + 1) & v194;
                        if (((*(v126 + ((v193 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v193) & 1) == 0)
                        {
                          goto LABEL_68;
                        }
                      }

                      if (v185 == v184)
                      {
LABEL_86:
                        v180 = v341;
                        goto LABEL_89;
                      }
                    }

                    else
                    {
LABEL_68:

                      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      specialized ContiguousArray._endMutation()();
                      if (v185 == v184)
                      {
                        goto LABEL_86;
                      }
                    }
                  }

                  __break(1u);
LABEL_119:
                  __break(1u);
                  goto LABEL_120;
                }
              }

              else
              {
                v184 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v184)
                {
                  goto LABEL_67;
                }
              }

LABEL_89:

              v197 = [v180 deliveredStatuses];
              v198 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v198 >> 62)
              {
                v125 = __CocoaSet.count.getter();
                logb = v198;
                if (v125)
                {
LABEL_91:
                  v199 = 0;
                  v360 = (v198 & 0xC000000000000001);
                  v342 = v198 + 32;
                  v343 = v198 & 0xFFFFFFFFFFFFFF8;
                  v123 = v345;
                  while (1)
                  {
                    if (v360)
                    {
                      v200 = MEMORY[0x223D77050](v199, logb);
                    }

                    else
                    {
                      if (v199 >= *(v343 + 16))
                      {
                        goto LABEL_121;
                      }

                      v200 = *(v342 + 8 * v199);
                    }

                    v201 = v200;
                    v168 = __OFADD__(v199++, 1);
                    if (v168)
                    {
                      break;
                    }

                    v202 = [v200 identifier];
                    v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v205 = v204;

                    if (*(v163 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v206 = Hasher._finalize()(), v207 = -1 << *(v163 + 32), v208 = v206 & ~v207, ((*(v126 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v208) & 1) != 0))
                    {
                      v209 = ~v207;
                      while (1)
                      {
                        v210 = (*(v163 + 48) + 16 * v208);
                        v211 = *v210 == v203 && v210[1] == v205;
                        if (v211 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          break;
                        }

                        v208 = (v208 + 1) & v209;
                        if (((*(v126 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v208) & 1) == 0)
                        {
                          goto LABEL_107;
                        }
                      }

                      if (v199 == v125)
                      {
                        goto LABEL_112;
                      }
                    }

                    else
                    {
LABEL_107:

                      v212 = v201;
                      MEMORY[0x223D76BD0]();
                      if (*((v345 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v345 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                      v123 = v345;
                      if (v199 == v125)
                      {
                        goto LABEL_112;
                      }
                    }
                  }

LABEL_120:
                  __break(1u);
LABEL_121:
                  __break(1u);
                  goto LABEL_122;
                }
              }

              else
              {
                v125 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
                logb = v198;
                if (v125)
                {
                  goto LABEL_91;
                }
              }

LABEL_112:

              v213 = [v341 idsIdentifier];
              if (!v213)
              {
                v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v213 = MEMORY[0x223D76B00](v214);
              }

              v343 = v349[114];
              loge = v349[113];
              v361 = v349[66];
              v215 = [v341 discoverySource];
              v216 = objc_allocWithZone(SKADatabasePublishedLocalStatusDevice);
              isa = Array._bridgeToObjectiveC()().super.isa;

              v218 = Array._bridgeToObjectiveC()().super.isa;

              v219 = [v216 initWithIDSIdentifier:v213 pendingStatuses:isa deliveredStatuses:v218 discoverySource:v215];

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
              v220 = swift_allocObject();
              *(v220 + 16) = xmmword_2201A7710;
              *(v220 + 32) = v219;
              v221 = v219;
              v222 = Array._bridgeToObjectiveC()().super.isa;

              v349[62] = 0;
              v223 = [loge createOrUpdatePublishedLocalStatusDevices:v222 databaseContext:v361 error:v349 + 62];

              v224 = v349[62];
              if (!v223)
              {
                v230 = v349[117];
                v231 = v224;

                v119 = v349;

                v232 = _convertNSErrorToError(_:)();

                swift_willThrow();
                v229 = v232;

                goto LABEL_160;
              }

              v225 = v224;

              v125 = v345;
              v123 = v321;
            }

            else
            {
            }

LABEL_54:
            v165 = v336;
          }

          while (v336 != v327);
        }
      }

      v342 = v349[67];

      v233 = v344;
      v337 = v344[2];
      v341 = OBJC_IVAR___SKALocalStatusServer_deliverySubjects;
      LODWORD(v327) = v337 == 0;
      v343 = v125;
      if (v337)
      {
        v234 = 0;
        v330 = (v349[70] + 8);
        v333 = v349[87];
        v235 = (v344 + 6);
        do
        {
          if (v234 >= v233[2])
          {
            __break(1u);
            goto LABEL_168;
          }

          v241 = v349[108];
          v242 = *(v235 - 1);
          v243 = *v235;
          v244 = *(v235 - 2);

          SKADatabasePublishedLocalStatus.key.getter(v241);
          v245 = v349[112];
          logc = v244;
          v362 = v234;
          v347 = v235;
          v246 = v349[119];
          v247 = v349[111];
          v248 = v349[102];
          v249 = v349[100];
          v250 = v349[67];
          (*(v349[105] + 16))(v248, v349[108], v349[104]);
          v251 = (v248 + *(v249 + 20));
          *v251 = v247;
          v251[1] = v245;
          swift_beginAccess();
          v252 = *(v250 + v246);
          v253 = *(v252 + 16);

          if (v253 && (v254 = specialized __RawDictionaryStorage.find<A>(_:)(v349[102]), (v255 & 1) != 0))
          {
            v256 = v349[119];
            v312 = v349[92];
            v257 = v349[91];
            v258 = v349[90];
            v322 = v349[89];
            v325 = v349[102];
            v259 = v349[83];
            v316 = v349[82];
            v260 = v349[67];
            outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v252 + 56) + *(v349[88] + 72) * v254, v257, type metadata accessor for SKALocalStatusServer.FailedDelivery);
            outlined init with take of SKALocalStatusServer.FailedDelivery(v257, v312);
            swift_endAccess();
            (*(v259 + 16))(v258, v312, v316);
            static Date.now.getter();
            v261 = (v258 + *(v333 + 24));
            *v261 = v242;
            v261[1] = v243;
            swift_beginAccess();
            outlined init with take of SKALocalStatusServer.FailedDelivery(v258, v322);
            v262 = swift_isUniquelyReferenced_nonNull_native();
            v364[0] = *(v260 + v256);
            *(v260 + v256) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v322, v325, v262);
            *(v260 + v256) = v364[0];
            swift_endAccess();
            outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v312, type metadata accessor for SKALocalStatusServer.FailedDelivery);
          }

          else
          {
            v263 = v349[119];
            v264 = v349[102];
            v265 = v349[90];
            v266 = v349[89];
            v267 = v349[67];
            swift_endAccess();
            static Date.now.getter();
            static Date.now.getter();
            v268 = (v265 + *(v333 + 24));
            *v268 = v242;
            v268[1] = v243;
            swift_beginAccess();
            outlined init with take of SKALocalStatusServer.FailedDelivery(v265, v266);
            v269 = swift_isUniquelyReferenced_nonNull_native();
            v364[0] = *(v267 + v263);
            *(v267 + v263) = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v266, v264, v269);
            *(v267 + v263) = v364[0];
            swift_endAccess();
          }

          SKALocalStatusServer.currentStatus(for:in:)(v349[108], v349[66], v349[72]);
          v125 = v343;
          swift_beginAccess();
          if (*(*&v341[v342] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v349[108]), (v270 & 1) != 0))
          {
            swift_endAccess();

            CurrentValueSubject.send(_:)();
          }

          else
          {
            swift_endAccess();
          }

          v234 = v362 + 1;
          v236 = v349[108];
          v237 = v349[105];
          v126 = v349[104];
          v238 = v349[102];
          v239 = v349[72];
          v240 = v349[69];

          (*v330)(v239, v240);
          outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v238, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
          (*(v237 + 8))(v236, v126);
          v235 = v347 + 24;
          v233 = v344;
        }

        while (v337 != v362 + 1);
      }

      v126 = v345;
      if (v125 >> 62)
      {
        goto LABEL_171;
      }

      for (i = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
      {

        if (!i)
        {
          break;
        }

        v272 = 0;
        v323 = v125 & 0xFFFFFFFFFFFFFF8;
        v326 = v125 & 0xC000000000000001;
        v313 = (v349[70] + 8);
        v317 = i;
        while (1)
        {
          if (v326)
          {
            v279 = MEMORY[0x223D77050](v272, v125);
          }

          else
          {
            if (v272 >= *(v323 + 16))
            {
              goto LABEL_169;
            }

            v279 = *(v125 + 8 * v272 + 32);
          }

          v126 = v279;
          if (__OFADD__(v272, 1))
          {
            break;
          }

          SKADatabasePublishedLocalStatus.key.getter(v349[107]);
          v280 = v349[112];
          v331 = v272 + 1;
          v334 = v272;
          v363 = v126;
          v281 = v349[111];
          v338 = v349[107];
          v282 = v349[101];
          v283 = v349[100];
          logf = v349[71];
          v284 = v349[68];
          v348 = v349[66];
          v319 = *(v349[105] + 16);
          v319(v282);
          v285 = (v282 + *(v283 + 20));
          *v285 = v281;
          v285[1] = v280;
          swift_beginAccess();

          specialized Dictionary._Variant.removeValue(forKey:)(v282, v284);
          outlined destroy of UUID?(v284, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMd, &_s18StatusKitAgentCore08SKALocalA6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLVSgMR);
          swift_endAccess();
          SKALocalStatusServer.currentStatus(for:in:)(v338, v348, logf);
          swift_beginAccess();
          v125 = v343;
          if (*(*&v341[v342] + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v349[107]), (v286 & 1) != 0))
          {
            swift_endAccess();

            CurrentValueSubject.send(_:)();
            v287 = *(LSKPublishedStatus.pendingDevies.getter() + 16);

            v126 = v345;
            if (!v287)
            {
              v288 = v349[107];
              v289 = v349[106];
              v290 = v349[104];
              *(v349 + 1040) = 1;
              CurrentValueSubject.send(completion:)();
              (v319)(v289, v288, v290);
              swift_beginAccess();
              specialized Dictionary.subscript.setter(0, v289);
              swift_endAccess();
            }
          }

          else
          {
            swift_endAccess();
            v126 = v345;
          }

          v273 = v349[107];
          v274 = v349[105];
          v275 = v349[104];
          v276 = v349[101];
          v277 = v349[71];
          v278 = v349[69];

          (*v313)(v277, v278);
          outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v276, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
          (*(v274 + 8))(v273, v275);
          v272 = v334 + 1;
          if (v331 == v317)
          {
            goto LABEL_154;
          }
        }

LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        ;
      }

LABEL_154:

      v291 = Logger.logObject.getter();
      v292 = v126;
      v293 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v291, v293))
      {
        v294 = swift_slowAlloc();
        *v294 = 134218240;
        if (v292 >> 62)
        {
          v295 = __CocoaSet.count.getter();
        }

        else
        {
          v295 = *((v292 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v294 + 4) = v295;

        *(v294 + 12) = 2048;
        v296 = v344[2];

        *(v294 + 14) = v296;

        _os_log_impl(&dword_220099000, v291, v293, "Send pending status END {deliveredStatuses.count: %ld, failedStatuses.count: %ld}", v294, 0x16u);
        MEMORY[0x223D77FF0](v294, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v297 = v349[117];
      SKALocalStatusServer.updateBrowseTaskDeviceFilter(databaseContext:)(v349[66]);
    }

    else
    {
      v226 = v349[117];
      v227 = v121;

      v228 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v229 = v228;

LABEL_160:
      v298 = v119[63];
      v299 = v229;
      v300 = Logger.logObject.getter();
      v301 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v300, v301))
      {
        v302 = v119[63];
        v303 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        *v303 = 138412546;
        *(v303 + 4) = v302;
        *v304 = v302;
        *(v303 + 12) = 2112;
        v305 = v302;
        v306 = v229;
        v307 = _swift_stdlib_bridgeErrorToNSError();
        *(v303 + 14) = v307;
        v304[1] = v307;
        _os_log_impl(&dword_220099000, v300, v301, "Send pending status FAILED. Error fetching status devices {clDevice: %@, error: %@}", v303, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v304, -1, -1);
        MEMORY[0x223D77FF0](v303, -1, -1);
      }

      else
      {
      }

      LODWORD(v327) = 0;
    }

    v308 = v349[1];

    return v308(v327);
  }

  else
  {
    while (1)
    {
      v1[124] = v43;
      v1[123] = v44;
      v1[122] = v342;
      v1[121] = v41;
      v1[120] = v45;
      v72 = v1[115];
      if ((v72 & 0xC000000000000001) != 0)
      {
        v73 = MEMORY[0x223D77050]();
      }

      else
      {
        v73 = *(v72 + 8 * v45 + 32);
      }

      v74 = v73;
      v1[125] = v73;
      SKADatabasePublishedLocalStatus.key.getter(v1[109]);
      v75 = v1[119];
      v76 = v1[112];
      v77 = v1[111];
      v78 = v1[103];
      v79 = v1[100];
      v80 = v1[67];
      (*(v1[105] + 16))(v78, v1[109], v1[104]);
      v81 = (v78 + *(v79 + 20));
      *v81 = v77;
      v81[1] = v76;
      swift_beginAccess();
      v82 = *(v80 + v75);
      v83 = *(v82 + 16);

      if (v83 && (v84 = specialized __RawDictionaryStorage.find<A>(_:)(v1[103]), (v85 & 1) != 0))
      {
        v86 = v1[94];
        v87 = v1[93];
        outlined init with copy of SKALocalStatusServer.FailedDelivery(*(v82 + 56) + *(v1[88] + 72) * v84, v87, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        outlined init with take of SKALocalStatusServer.FailedDelivery(v87, v86);
        swift_endAccess();
        Date.timeIntervalSince(_:)();
        Date.addingTimeInterval(_:)();
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v86, type metadata accessor for SKALocalStatusServer.FailedDelivery);
        v88 = 0;
      }

      else
      {
        swift_endAccess();
        v88 = 1;
      }

      v89 = v1[99];
      v90 = v1[98];
      v91 = v1[83];
      v92 = v1[82];
      (*(v91 + 56))(v89, v88, 1, v92);
      outlined init with copy of (String, Sendable)(v89, v90, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if ((*(v91 + 48))(v90, 1, v92) == 1)
      {
        outlined destroy of UUID?(v1[98], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_44;
      }

      v93 = v1[85];
      v94 = v1[83];
      v95 = v1[82];
      (*(v94 + 32))(v1[86], v1[98], v95);
      static Date.now.getter();
      v96 = static Date.> infix(_:_:)();
      v97 = *(v94 + 8);
      v97(v93, v95);
      if ((v96 & 1) == 0)
      {
        break;
      }

      (*(v1[83] + 16))(v1[84], v1[86], v1[82]);

      v98 = v74;
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      v357 = v98;

      log = v99;
      if (os_log_type_enabled(v99, v100))
      {
        v46 = v1[112];
        v314 = v1[111];
        v335 = v1[104];
        v339 = v1[109];
        v328 = v1[103];
        v332 = v1[105];
        v324 = v1[86];
        v327 = v1[99];
        v47 = v1[84];
        v48 = v1[82];
        v49 = v1;
        v50 = swift_slowAlloc();
        v318 = swift_slowAlloc();
        v364[0] = v318;
        *v50 = 136315650;
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v320 = v48;
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v53 = v52;
        v97(v47, v48);
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, v364);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2080;
        v55 = [v357 identifier];
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v364);

        *(v50 + 14) = v59;
        *(v50 + 22) = 2080;

        v61 = specialized Collection.prefix(_:)(8, v314, v46, v60);
        v63 = v62;
        v65 = v64;
        v67 = v66;

        v68 = MEMORY[0x223D76B60](v61, v63, v65, v67);
        v70 = v69;

        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v364);

        *(v50 + 24) = v71;
        _os_log_impl(&dword_220099000, log, v100, "Status send SKIP. Not enough time since latest failed attempt. {nextAttemptDate: %s, status.identifier: %s, idsIdentifier: %s}", v50, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D77FF0](v318, -1, -1);
        MEMORY[0x223D77FF0](v50, -1, -1);

        v97(v324, v320);
        outlined destroy of UUID?(v327, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v328, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        (*(v332 + 8))(v339, v335);
      }

      else
      {
        v340 = v1[109];
        v101 = v1[105];
        v102 = v1[104];
        v103 = v1[103];
        v104 = v1[99];
        v49 = v1;
        v105 = v1[86];
        v106 = v49[84];
        v107 = v49[82];

        v97(v106, v107);
        v97(v105, v107);
        outlined destroy of UUID?(v104, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v103, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
        (*(v101 + 8))(v340, v102);
      }

      v45 = v49[120] + 1;
      v1 = v49;
      v41 = v344;
      v44 = v345;
      v43 = v343;
      if (v45 == v49[116])
      {
        goto LABEL_29;
      }
    }

    v97(v1[86], v1[82]);
LABEL_44:
    v138 = v1[63];
    outlined init with copy of (String, Sendable)(v1[99], v1[97], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v139 = v138;
    v140 = v74;
    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.default.getter();

    v143 = os_log_type_enabled(v141, v142);
    v144 = v1[97];
    if (v143)
    {
      v145 = v1[96];
      v146 = v1[63];
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v364[0] = v149;
      *v147 = 138412802;
      *(v147 + 4) = v140;
      *(v147 + 12) = 2112;
      *(v147 + 14) = v146;
      *v148 = v140;
      v148[1] = v146;
      *(v147 + 22) = 2080;
      outlined init with copy of (String, Sendable)(v144, v145, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v150 = v146;
      v151 = v140;
      v152 = String.init<A>(describing:)();
      v154 = v153;
      outlined destroy of UUID?(v144, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v154, v364);

      *(v147 + 24) = v155;
      _os_log_impl(&dword_220099000, v141, v142, "Status send START {status: %@, device: %@, nextAttemptDate: %s}", v147, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v148, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v149);
      MEMORY[0x223D77FF0](v149, -1, -1);
      MEMORY[0x223D77FF0](v147, -1, -1);
    }

    else
    {

      outlined destroy of UUID?(v144, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    v156 = v1[125];
    v157 = v1[117];
    v158 = v1[67];
    v159 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer, &protocol conformance descriptor for SKALocalStatusServer);
    v160 = swift_task_alloc();
    v1[127] = v160;
    v160[2] = v158;
    v160[3] = v156;
    v160[4] = v157;
    v161 = swift_task_alloc();
    v1[128] = v161;
    *v161 = v1;
    v161[1] = SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:);
    v162 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v161, v158, v159, 0x743A5F28646E6573, 0xEB00000000293A6FLL, partial apply for closure #1 in SKALocalStatusServer.send(_:to:), v160, v162);
  }
}