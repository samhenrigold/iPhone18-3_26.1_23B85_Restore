uint64_t closure #1 in PaperKitLiveStreamMessengerLink.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v10 = swift_task_alloc();
  v8[9] = v10;
  *v10 = v8;
  v10[1] = closure #1 in PaperKitLiveStreamMessengerLink.send(_:);

  return specialized static ImageThumbnailManager.generateThumbnailMessage(from:)(a4);
}

uint64_t closure #1 in PaperKitLiveStreamMessengerLink.send(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = a2;
  v3[10] = a2;

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessengerLink.send(_:), 0, 0);
}

uint64_t closure #1 in PaperKitLiveStreamMessengerLink.send(_:)()
{
  v1 = v0[10];
  if (v1 >> 60 != 15)
  {
    v2 = v0[3];
    (*(v0[8] + 32))(v2, v0[10], v0[7]);
    outlined consume of Data?(v2, v1);
  }

  OS_dispatch_semaphore.signal()();
  v3 = v0[1];

  return v3();
}

uint64_t PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v71 = a6;
  v72 = a7;
  v75 = a5;
  v62 = a4;
  v60 = a3;
  v54 = a2;
  v61 = a1;
  v73 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v67 = &v53 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = *(AssociatedTypeWitness - 8);
  v69 = AssociatedTypeWitness;
  v70 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v66 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v53 - v16;
  v56 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a8;
  v58 = a10;
  v18 = type metadata accessor for Capsule();
  v19 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v53 - v20;
  v22 = type metadata accessor for CRKeyPath();
  v63 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMd, &_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMR);
  v26 = *(v23 + 80);
  v64 = v23;
  v27 = (v26 + 32) & ~v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D405C990;
  (*(v23 + 16))(v28 + v27, v54, v22);

  CRKeyPath.init(_:)();
  v76[0] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
  lazy protocol witness table accessor for type [CRKeyPath] and conformance [A]();
  v59 = v25;
  CRKeyPath.init<A>(_:)();
  type metadata accessor for CRMulticastSyncManager();
  v29 = *(v18 - 8);
  (*(v29 + 16))(v21, v60, v18);
  (*(v29 + 56))(v21, 0, 1, v18);
  v30 = v61;
  CRKeyPath.rawValue.getter();
  (*(v55 + 16))(v53, v62, v56);
  v31 = CRMulticastSyncManager.__allocating_init(_:model:appFormat:identifier:catchup:)();
  v33 = v72;
  v32 = v73;
  v76[3] = type metadata accessor for PaperKitLiveStreamMessengerLink(0, v72, v73, v34);
  v76[4] = swift_getWitnessTable();
  v76[0] = v65;
  swift_unknownObjectRetain();
  v62 = v31;
  CRMulticastSyncManager.setLink(_:)();
  __swift_destroy_boxed_opaque_existential_0(v76);
  v61 = ObjectIdentifier.debugDescription.getter();
  v60 = v35;
  v36 = v74;
  (*(v32 + 40))(v33, v32);
  v37 = type metadata accessor for TaskPriority();
  v38 = v67;
  (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
  v39 = swift_allocObject();
  swift_weakInit();
  v41 = v68;
  v40 = v69;
  v42 = v66;
  (*(v68 + 16))(v66, v36, v69);
  type metadata accessor for MainActor();
  v43 = v71;

  v44 = static MainActor.shared.getter();
  v45 = (*(v41 + 80) + 96) & ~*(v41 + 80);
  v46 = (v70 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E85E0];
  *(v47 + 2) = v44;
  *(v47 + 3) = v48;
  v49 = v57;
  *(v47 + 4) = v72;
  *(v47 + 5) = v49;
  v50 = v58;
  *(v47 + 6) = v73;
  *(v47 + 7) = v50;
  *(v47 + 8) = v75;
  *(v47 + 9) = v43;
  v51 = v60;
  *(v47 + 10) = v61;
  *(v47 + 11) = v51;
  (*(v41 + 32))(&v47[v45], v42, v40);
  *&v47[v46] = v39;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:), v47);

  (*(v41 + 8))(v74, v40);
  (*(v64 + 8))(v59, v63);
  return v62;
}

uint64_t closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v16;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  swift_getAssociatedTypeWitness();
  v8[14] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v8[16] = *(AssociatedTypeWitness - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v10 = swift_checkMetadataState();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v8[22] = v11;
  v8[23] = *(v11 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = type metadata accessor for MainActor();
  v8[26] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[27] = v13;
  v8[28] = v12;

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:), v13, v12);
}

uint64_t closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)()
{
  v18 = v0;
  if (one-time initialization token for multipeerLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[29] = __swift_project_value_buffer(v1, multipeerLogger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[10];
    v4 = v0[11];
    v7 = v0[8];
    v6 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v17);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v17);
    _os_log_impl(&dword_1D38C4000, v2, v3, "Started forwarding %s message stream for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  (*(v0[20] + 16))(v0[21], v0[12], v0[19]);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  swift_beginAccess();
  v10 = static MainActor.shared.getter();
  v0[30] = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[31] = AssociatedConformanceWitness;
  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);
  v13 = v0[22];
  v14 = v0[18];
  v15 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 5, v10, v15, v14, v13, AssociatedConformanceWitness);
}

{
  v2 = *v1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);
  }

  else
  {
    v5 = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v35 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v0[33] = v2;
  v0[34] = v1;
  if (v1 >> 60 == 15)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[10];
      v5 = v0[11];
      v8 = v0[8];
      v7 = v0[9];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v34);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v34);
      _os_log_impl(&dword_1D38C4000, v3, v4, "Ended forwarding %s message stream for %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D0660](v10, -1, -1);
      MEMORY[0x1DA6D0660](v9, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }

  if (swift_weakLoadStrong())
  {
    if (CRMulticastSyncManager.isValidMessage(_:)())
    {

      outlined copy of Data?(v2, v1);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v13, v14))
      {
        outlined consume of Data?(v2, v1);
        goto LABEL_28;
      }

      v15 = v0[8];
      v16 = v0[9];
      v17 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v0[7] = v33;
      *v17 = 136315394;
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v0 + 7);
      *(v17 + 4) = v18;
      *(v17 + 12) = 2048;
      v24 = v1 >> 62;
      if ((v1 >> 62) > 1)
      {
        if (v24 != 2)
        {
          v25 = 0;
          goto LABEL_27;
        }

        v28 = *(v2 + 16);
        v27 = *(v2 + 24);
        v29 = __OFSUB__(v27, v28);
        v25 = v27 - v28;
        if (!v29)
        {
          goto LABEL_27;
        }

        __break(1u);
      }

      else if (!v24)
      {
        v25 = BYTE6(v1);
LABEL_27:
        *(v17 + 14) = v25;
        outlined consume of Data?(v2, v1);
        _os_log_impl(&dword_1D38C4000, v13, v14, "Receive %s data %ld", v17, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x1DA6D0660](v33, -1, -1);
        MEMORY[0x1DA6D0660](v17, -1, -1);
LABEL_28:

        CRMulticastSyncManager.receive(_:)();

        outlined consume of Data?(v0[33], v0[34]);
        v30 = static MainActor.shared.getter();
        v0[30] = v30;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v0[31] = AssociatedConformanceWitness;
        v32 = swift_task_alloc();
        v0[32] = v32;
        *v32 = v0;
        v32[1] = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);
        v22 = v0[22];
        v21 = v0[18];
        v20 = MEMORY[0x1E69E85E0];
        v18 = (v0 + 5);
        v19 = v30;
        v23 = AssociatedConformanceWitness;

        return MEMORY[0x1EEE6D8D0](v18, v19, v20, v21, v22, v23);
      }

      LODWORD(v25) = HIDWORD(v2) - v2;
      if (__OFSUB__(HIDWORD(v2), v2))
      {
        __break(1u);
        return MEMORY[0x1EEE6D8D0](v18, v19, v20, v21, v22, v23);
      }

      v25 = v25;
      goto LABEL_27;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v26 = swift_task_alloc();
  v0[35] = v26;
  *v26 = v0;
  v26[1] = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);

  return ImageThumbnailManager.receiveThumbnailMessage(_:)(v2, v1);
}

{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:), v3, v2);
}

{
  outlined consume of Data?(v0[33], v0[34]);
  v1 = static MainActor.shared.getter();
  v0[30] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[31] = AssociatedConformanceWitness;
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:);
  v4 = v0[22];
  v5 = v0[18];
  v6 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 5, v1, v6, v5, v4, AssociatedConformanceWitness);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];

  v5 = *(v4 + 32);
  v5(v2, v1, v3);
  swift_getAssociatedConformanceWitness();
  v6 = _getErrorEmbeddedNSError<A>(_:)();
  v7 = v0[17];
  if (v6)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  else
  {
    v8 = v0[15];
    swift_allocError();
    v5(v9, v7, v8);
  }

  (*(v0[23] + 8))(v0[24], v0[22]);

  v10 = v0[1];

  return v10();
}

uint64_t PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a7;
  v47 = a8;
  v49 = a5;
  v50 = a6;
  v48 = a3;
  v45 = a10;
  v43 = a4;
  v44 = a9;
  v10 = *a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - v12;
  v41 = &v39 - v12;
  v14 = (v10 + *MEMORY[0x1E6995348]);
  v15 = *v14;
  v42 = v14[1];
  type metadata accessor for Capsule();
  v16 = type metadata accessor for AsyncStream();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v23 = ObjectIdentifier.debugDescription.getter();
  v39 = v24;
  v40 = v23;
  CRMulticastSyncManager.updates.getter();
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v17 + 16))(v19, v22, v16);
  v27 = (*(v17 + 80) + 112) & ~*(v17 + 80);
  v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  v30 = v47;
  *(v29 + 4) = v46;
  *(v29 + 5) = v30;
  v31 = v44;
  v32 = v45;
  *(v29 + 6) = v15;
  *(v29 + 7) = v31;
  v33 = v42;
  v34 = v43;
  *(v29 + 8) = v32;
  *(v29 + 9) = v33;
  *(v29 + 10) = v48;
  *(v29 + 11) = v34;
  v35 = v39;
  *(v29 + 12) = v40;
  *(v29 + 13) = v35;
  (*(v17 + 32))(&v29[v27], v19, v16);
  *&v29[v28] = v26;
  v36 = &v29[(v28 + 15) & 0xFFFFFFFFFFFFFFF8];
  v37 = v50;
  *v36 = v49;
  v36[1] = v37;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v41, &async function pointer to partial apply for closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), v29);

  return (*(v17 + 8))(v22, v16);
}

uint64_t closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v15;
  *(v8 + 112) = v16;
  *(v8 + 96) = v14;
  *(v8 + 80) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  v9 = type metadata accessor for Capsule();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  type metadata accessor for Optional();
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for AsyncStream.Iterator();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), 0, 0);
}

uint64_t closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)()
{
  v15 = v0;
  if (one-time initialization token for multipeerLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[22] = __swift_project_value_buffer(v1, multipeerLogger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v14);
    *(v8 + 12) = 2080;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v14);
    _os_log_impl(&dword_1D38C4000, v2, v3, "Started merging %s multicast stream for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v9, -1, -1);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  type metadata accessor for AsyncStream();
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:);
  v11 = v0[18];
  v12 = v0[19];

  return MEMORY[0x1EEE6D9C8](v11, 0, 0, v12);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), 0, 0);
}

{
  v19 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[17], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[24] = Strong;
    if (Strong)
    {
      v5 = swift_task_alloc();
      v0[25] = v5;
      *v5 = v0;
      v5[1] = closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:);
      v7 = v0[13];
      v6 = v0[14];

      return LiveEditable.endedLiveEditing()(v7, v6);
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  (*(v0[20] + 8))(v0[21], v0[19]);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[7];
    v11 = v0[8];
    v14 = v0[5];
    v13 = v0[6];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v18);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v18);
    _os_log_impl(&dword_1D38C4000, v9, v10, "Ended merging %s multicast stream for %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v16, -1, -1);
    MEMORY[0x1DA6D0660](v15, -1, -1);
  }

  v17 = v0[1];

  return v17();
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 208) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), v2, v1);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);

  v2(v1);

  return MEMORY[0x1EEE6DFA0](closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:), 0, 0);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:);
  v5 = v0[18];
  v6 = v0[19];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v6);
}

uint64_t partial apply for closure #1 in ExtensionViewController.LiveStreamMessenger.send(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in ExtensionViewController.LiveStreamMessenger.send(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(uint64_t a1)
{
  v3 = v2;
  type metadata accessor for Capsule();
  v4 = *(type metadata accessor for AsyncStream() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v12 = v1[3];
  v13 = v1[2];
  v10 = v1[11];
  v11 = v1[10];
  v7 = v1[12];
  v6 = v1[13];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperKitLiveStreamMessenger.listenTo<A, B>(multicast:liveEditable:name:merge:)(a1, v13, v12, v11, v10, v7, v6, v1 + v5);
}

unint64_t lazy protocol witness table accessor for type [CRKeyPath] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CRKeyPath] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CRKeyPath] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9Coherence9CRKeyPathVGMd, &_sSay9Coherence9CRKeyPathVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CRKeyPath] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[3];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v12 = v1[11];
  v13 = v1[2];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in PaperKitLiveStreamMessenger.newMultipeerConnection<A>(_:id:model:catchup:name:)(a1, v13, v6, v7, v8, v9, v12, v1 + v5);
}

uint64_t type metadata instantiation function for PaperKitLiveStreamMessengerLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t partial apply for closure #1 in PaperKitLiveStreamMessengerLink.send(_:)(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for CRAsset() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + v9);
  v13 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in PaperKitLiveStreamMessengerLink.send(_:)(a1, v10, v11, v1 + v8, v12, v13, v6, v5);
}

void __swiftcall UIView.transformForConvertingFromView(_:)(CGAffineTransform *__return_ptr retstr, UIView *a2)
{
  v4 = xmmword_1D4059310;
  v5 = xmmword_1D4059320;
  v6 = 0uLL;
  if (v2 != a2)
  {
    [(UIView *)v2 convertRect:a2 fromCoordinateSpace:0.0, 0.0, 1.0, 1.0];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    v15.size.width = 1.0;
    v15.size.height = 1.0;
    v11 = CGRectEqualToRect(v14, v15);
    v6 = 0uLL;
    v5 = xmmword_1D4059320;
    v4 = xmmword_1D4059310;
    if (!v11)
    {
      CGAffineTransformMakeTranslation(&v13, x, y);
      CGAffineTransformScale(&v12, &v13, width + 0.0, height + 0.0);
      v5 = *&v12.a;
      v4 = *&v12.c;
      v6 = *&v12.tx;
    }
  }

  *&retstr->a = v5;
  *&retstr->c = v4;
  *&retstr->tx = v6;
}

char *CanvasElementPDFAnnotationAppearanceStreamView.init(annotation:)(void *a1)
{
  swift_unknownObjectWeakInit();
  [a1 bounds];
  v14 = CGRectIntegral(v13);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for CanvasElementPDFAnnotationAppearanceStreamView();
  v7 = objc_msgSendSuper2(&v12, sel_initWithFrame_, x, y, width, height);
  swift_unknownObjectWeakAssign();
  v8 = v7;
  v9 = [v8 layer];
  [v9 setGeometryFlipped_];

  v10 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];

  return v8;
}

Swift::Void __swiftcall CanvasElementPDFAnnotationAppearanceStreamView.draw(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for CanvasElementPDFAnnotationAppearanceStreamView();
  objc_msgSendSuper2(&v20, sel_drawRect_, x, y, width, height);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = UIGraphicsGetCurrentContext();
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      [v10 bounds];
      v12 = -v11;
      [v10 bounds];
      CGContextTranslateCTM(v9, v12, -v13);
      v14 = [v10 page];

      if (v14)
      {
        [v14 transformForBox_];
        v16 = *&transform.c;
        v17 = *&transform.a;
        v15 = *&transform.tx;

        *&transform.a = v17;
        *&transform.c = v16;
        *&transform.tx = v15;
        CGAffineTransformInvert(&v18, &transform);
        transform = v18;
        CGContextConcatCTM(v9, &transform);
      }

      [v10 drawWithBox:0 inContext:{v9, v15, v16, v17}];
    }

    else
    {
      v9 = v7;
    }
  }
}

id CanvasElementPDFAnnotationAppearanceStreamView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasElementPDFAnnotationAppearanceStreamView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void @objc CanvasViewTiledViewDelegate.canvasViewDidBeginDrawing(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized CanvasViewTiledViewDelegate.canvasViewDidBeginDrawing(_:)();
}

uint64_t @objc CanvasViewTiledViewDelegate.canvasView(_:beganStroke:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for PKStroke();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t @objc CanvasViewTiledViewDelegate.canvasView(_:shouldBeginDrawingWith:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = specialized CanvasViewTiledViewDelegate.canvasView(_:shouldBeginDrawingWith:)();

  return v9 & 1;
}

unint64_t CanvasViewTiledViewDelegate.tiledViewAttachmentViews()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = Strong;
  v2 = specialized Canvas.paperView.getter();

  v3 = ContainerCanvasElementView.pencilKitAttachmentViews()();
  return v3;
}

Class @objc CanvasViewTiledViewDelegate.tiledViewAttachmentViews()(void *a1)
{
  v1 = a1;
  CanvasViewTiledViewDelegate.tiledViewAttachmentViews()();

  type metadata accessor for PKAttachmentView();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t @objc CanvasViewTiledViewDelegate._canvasViewSnapshottingDisabled(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = specialized CanvasViewTiledViewDelegate._canvasViewSnapshottingDisabled(_:)();

  return a1 & 1;
}

id CanvasViewTiledViewDelegate.__deallocating_deinit()
{
  v1 = type metadata accessor for CanvasViewTiledViewDelegate(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0x50), *((*MEMORY[0x1E69E7D40] & *v0) + 0x58), *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id specialized CanvasViewTiledViewDelegate.init(canvas:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v3 = type metadata accessor for CanvasViewTiledViewDelegate(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), *((v2 & v1) + 0x60));
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_init);
}

void specialized CanvasViewTiledViewDelegate.canvasViewDidBeginDrawing(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas();
    v2 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = &v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate];
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 1);

    if (v4)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 80))(v2, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t specialized CanvasViewTiledViewDelegate.canvasView(_:shouldBeginDrawingWith:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2 && (v3 = v2, swift_getKeyPath(), lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v4 = &v3[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate], swift_beginAccess(), v5 = swift_unknownObjectWeakLoadStrong(), v6 = *(v4 + 1), v3, v5))
    {
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 72))(v1, ObjectType, v6);
      swift_unknownObjectRelease();

      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
    }
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  v12 = CanvasView.paperViewController.getter();

  if (!v12)
  {
    return 1;
  }

  v13 = [v12 pencilKitResponderState];
  v14 = [v13 _currentActiveToolPicker];

  if (!v14)
  {
    v14 = *&v12[OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_toolPicker];
  }

  [v14 _dismissPopovers];
  v15 = [v14 _isHandwritingToolSelected];

  return v15 ^ 1;
}

uint64_t specialized CanvasViewTiledViewDelegate._canvasViewSnapshottingDisabled(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = Strong;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas();
  v2 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = &v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate];
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 1);

  if (!v4)
  {

LABEL_5:
    v8 = 0;
    return v8 & 1;
  }

  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 56))(v2, ObjectType, v5);
  swift_unknownObjectRelease();

  v8 = v7 ^ 1;
  return v8 & 1;
}

id SynapseLinkItem.icon.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) linkPreviewMetadata];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    outlined copy of Data._Representation(v3, v5);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [objc_opt_self() metadataWithDataRepresentation_];

    outlined consume of Data._Representation(v3, v5);
    v8 = [v7 icon];
    if (v8 && (v9 = v8, v10 = [v8 platformImage], v9, v10) || (v11 = objc_msgSend(v7, sel_image)) != 0 && (v12 = v11, v10 = objc_msgSend(v11, sel_platformImage), v12, v10))
    {
      outlined consume of Data._Representation(v3, v5);
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, logger);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D38C4000, v20, v21, "Unarchived linkPreviewMetadata doesn't have an icon image.", v22, 2u);
        MEMORY[0x1DA6D0660](v22, -1, -1);
      }

      v10 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
      outlined consume of Data._Representation(v3, v5);
    }

    return v10;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D38C4000, v14, v15, "Synapse item's linkPreviewMetadata is nil.", v16, 2u);
      MEMORY[0x1DA6D0660](v16, -1, -1);
    }

    v17 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

    return [v17 init];
  }
}

uint64_t SynapseLinkItem.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SynapseLinkItem.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SynapseLinkItem.delegate.modify;
}

id SynapseLinkItem.init(synapseItem:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  [v8 addObserver:v7 selector:sel_linkPreviewDidFinishLoadingWithNotification_ name:*MEMORY[0x1E69D5440] object:v4];

  return v7;
}

uint64_t SynapseLinkItem.targetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) itemURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t SynapseLinkItem.title.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = &v19 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem);
  v9 = [v8 displayTitle];
  if (v9)
  {
    goto LABEL_11;
  }

  v10 = [v8 itemURL];
  if (v10)
  {
    v11 = v10;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  }

  outlined init with take of URL?(v3, v7);
  type metadata accessor for URL();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v14 = URL.host.getter();
    v16 = v15;
    (*(v13 + 8))(v7, v12);
    if (v16)
    {
      if (String.count.getter() < 31)
      {
        return v14;
      }
    }
  }

  v9 = [v8 sourceLastKnownName];
  if (v9)
  {
LABEL_11:
    v17 = v9;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v14;
  }

  if (one-time initialization token for noTitleString != -1)
  {
    swift_once();
  }

  v14 = static SynapseLinkItem.noTitleString;

  return v14;
}

uint64_t SynapseLinkItem.subtitle.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) sourceLastKnownName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SynapseLinkItem.dataRepresentation.getter()
{
  v17[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem);
  v17[0] = 0;
  v2 = [v1 dataRepresentationWithError_];
  v3 = v17[0];
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = v3;
    v6 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D38C4000, v9, v10, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA6D0660](v12, -1, -1);
      MEMORY[0x1DA6D0660](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

void SynapseLinkItem.linkPreviewDidFinishLoading(notification:)()
{
  if ([objc_opt_self() isMainThread])
  {
    Notification.object.getter();
    if (v6)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for SYContentItem, 0x1E69D53F8);
      if (swift_dynamicCast())
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        if ((static NSObject.== infix(_:_:)() & 1) != 0 && (v1 = v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate, swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
        {
          v2 = *(v1 + 8);
          ObjectType = swift_getObjectType();
          (*(v2 + 8))(v0, &protocol witness table for SynapseLinkItem, ObjectType, v2);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    else
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_sypSgMd, &_sypSgMR);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t one-time initialization function for noTitleString()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v5._object = 0x80000001D40896F0;
  v0._countAndFlagsBits = 0x656C746954206F4ELL;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v0._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000054;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v0, v1, paperKitBundle, v2, v5);
  result = v4._countAndFlagsBits;
  static SynapseLinkItem.noTitleString = v4;
  return result;
}

id SynapseLinkItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SynapseLinkItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for LinkItem.delegate.setter in conformance SynapseLinkItem(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*protocol witness for LinkItem.delegate.modify in conformance SynapseLinkItem(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return protocol witness for LinkItem.delegate.modify in conformance SynapseLinkItem;
}

uint64_t protocol witness for LinkItem.targetURL.getter in conformance SynapseLinkItem@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) itemURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t protocol witness for LinkItem.subtitle.getter in conformance SynapseLinkItem()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) sourceLastKnownName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void protocol witness for CodingKey.init(stringValue:) in conformance ReflowSpace.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D617266 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ReflowSpace.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ReflowSpace.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReflowSpace.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit11ReflowSpaceC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8PaperKit11ReflowSpaceC10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  *(v1 + 160) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    outlined consume of PaperKitPDFDocument??(*(v1 + 160));
    type metadata accessor for ReflowSpace();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 152) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0;
    *(v1 + 104) = xmmword_1D4059320;
    *(v1 + 120) = -1;
    *(v1 + 128) = 0;
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    type metadata accessor for CGRect(0);
    lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, MEMORY[0x1E695EF80]);

    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
    *(v1 + 16) = v10[0];
    *(v1 + 32) = v8;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v1;
}

uint64_t ReflowSpace.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit11ReflowSpaceC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8PaperKit11ReflowSpaceC10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = *(v2 + 32);
  v10[0] = *(v2 + 16);
  v10[1] = v8;
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, MEMORY[0x1E695EF68]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

id ReflowSpace._layer.getter()
{
  v1 = *(v0 + 160);
  v2 = v1;
  if (v1 == 1)
  {
    if (one-time initialization token for showDebugUI != -1)
    {
      swift_once();
    }

    if (static ReflowTextView.showDebugUI == 1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
      [v2 setBorderWidth_];
      v3 = [objc_opt_self() blueColor];
      v4 = [v3 colorWithAlphaComponent_];

      v5 = [v4 CGColor];
      [v2 setBorderColor_];
    }

    else
    {
      v2 = 0;
    }

    v6 = *(v0 + 160);
    *(v0 + 160) = v2;
    v7 = v2;
    outlined consume of PaperKitPDFDocument??(v6);
  }

  outlined copy of CALayer??(v1);
  return v2;
}

uint64_t ReflowSpace.debugDescription.getter()
{
  _StringGuts.grow(_:)(20);
  MEMORY[0x1DA6CD010](0x53776F6C6665523CLL, 0xEE00203A65636170);
  v0 = Double.description.getter();
  MEMORY[0x1DA6CD010](v0);

  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](62, 0xE100000000000000);
  return 0;
}

uint64_t ReflowSpace.__deallocating_deinit()
{
  outlined consume of PaperKitPDFDocument??(*(v0 + 160));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance ReflowSpace@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ReflowSpace();
  v5 = swift_allocObject();
  result = ReflowSpace.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowSpace.CodingKeys and conformance ReflowSpace.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CGRect and conformance CGRect(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3, a1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v5 = *(a1 + 8 * v3 + 32);

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_26;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D405B640;
      *(inited + 32) = v5;
      type metadata accessor for ReflowSpace();
      v8 = swift_allocObject();
      *(v8 + 160) = 1;
      *(v8 + 152) = 0;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0;
      UnknownCanvasElementView.flags.modify();
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 104) = v9;
      *(v8 + 112) = v10;
      *(v8 + 120) = -1;
      *(v8 + 128) = 0;
      *(v8 + 136) = 0;
      *(v8 + 144) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = xmmword_1D40671D0;
      *(inited + 40) = v8;
      v11 = v4 >> 62;
      if (v4 >> 62)
      {
        break;
      }

      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + 2;
      if (__OFADD__(v12, 2))
      {
        goto LABEL_25;
      }

LABEL_9:
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v11)
        {
          v14 = v4 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

LABEL_14:
        __CocoaSet.count.getter();
        goto LABEL_15;
      }

      if (v11)
      {
        goto LABEL_14;
      }

LABEL_15:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v14 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
      if (((*(v14 + 24) >> 1) - *(v14 + 16)) < 2)
      {
        goto LABEL_28;
      }

      type metadata accessor for ReflowElement();
      swift_arrayInitWithCopy();

      v15 = *(v14 + 16);
      v16 = __OFADD__(v15, 2);
      v17 = v15 + 2;
      if (v16)
      {
        goto LABEL_29;
      }

      *(v14 + 16) = v17;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    v18 = __CocoaSet.count.getter();
    v13 = v18 + 2;
    if (!__OFADD__(v18, 2))
    {
      goto LABEL_9;
    }

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
LABEL_30:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

{
  v2 = type metadata accessor for PKStroke();
  v42 = *(v2 - 1);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_54;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v40 = v2;
    v41 = v5;
    v5 = 0;
    v46 = a1 & 0xFFFFFFFFFFFFFF8;
    v47 = a1 & 0xC000000000000001;
    v44 = a1;
    v45 = a1 + 32;
    v52 = v42 + 16;
    v43 = v6;
    while (1)
    {
      if (v47)
      {
        v10 = MEMORY[0x1DA6CE0C0](v5, a1, v3);
        v11 = __OFADD__(v5++, 1);
        if (v11)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v5 >= *(v46 + 16))
        {
          goto LABEL_49;
        }

        v10 = *(v45 + 8 * v5);

        v11 = __OFADD__(v5++, 1);
        if (v11)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v6 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      v50 = v5;
      v12 = [*(v10 + 280) strokes];
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = *(v13 + 16);
      if (v14)
      {
        v49 = v10;
        v51 = v7;
        v53[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v15 = v41;
        v16 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v48 = v13;
        v17 = v13 + v16;
        v18 = *(v42 + 72);
        v19 = *(v42 + 16);
        do
        {
          v19(v15, v17, v2);
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke, 0x1E69784D8);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v17 += v18;
          --v14;
        }

        while (v14);

        v20 = v53[0];
        v7 = v51;
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
      }

      a1 = v20 >> 62;
      v21 = v20 >> 62 ? __CocoaSet.count.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22 = v7 >> 62;
      if (v7 >> 62)
      {
        v37 = __CocoaSet.count.getter();
        v24 = v37 + v21;
        if (__OFADD__(v37, v21))
        {
LABEL_46:
          __break(1u);
          return v7;
        }
      }

      else
      {
        v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v23 + v21;
        if (__OFADD__(v23, v21))
        {
          goto LABEL_46;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v22)
      {
        goto LABEL_25;
      }

LABEL_26:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v25 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v5 = *(v25 + 16);
      v26 = *(v25 + 24);
      if (a1)
      {
        v28 = v25;
        v29 = __CocoaSet.count.getter();
        v25 = v28;
        v27 = v29;
      }

      else
      {
        v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v27)
      {
        if (((v26 >> 1) - v5) < v21)
        {
          goto LABEL_51;
        }

        v51 = v7;
        v30 = v25 + 8 * v5 + 32;
        v48 = v25;
        v49 = v21;
        if (a1)
        {
          v2 = &_sSaySo8PKStrokeCGMd;
          if (v27 < 1)
          {
            goto LABEL_53;
          }

          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKStroke] and conformance [A], &_sSaySo8PKStrokeCGMd, &_sSaySo8PKStrokeCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v27; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8PKStrokeCGMd, &_sSaySo8PKStrokeCGMR);
            v32 = specialized protocol witness for Collection.subscript.read in conformance [A](v53, i, v20);
            v34 = *v33;
            (v32)(v53, 0);
            *(v30 + 8 * i) = v34;
          }
        }

        else
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke, 0x1E69784D8);
          swift_arrayInitWithCopy();
        }

        v5 = v50;
        v9 = v43;
        a1 = v44;
        v7 = v51;
        v2 = v40;
        if (v49 >= 1)
        {
          v35 = *(v48 + 16);
          v11 = __OFADD__(v35, v49);
          v36 = v35 + v49;
          if (v11)
          {
            goto LABEL_52;
          }

          *(v48 + 16) = v36;
        }
      }

      else
      {

        v8 = v21 <= 0;
        v9 = v43;
        a1 = v44;
        v5 = v50;
        if (!v8)
        {
          goto LABEL_50;
        }
      }

      if (v5 == v9)
      {
        return v7;
      }
    }

    if (!v22)
    {
      v25 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v24 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_25:
    __CocoaSet.count.getter();
    goto LABEL_26;
  }

  return v7;
}

unint64_t specialized Sequence.flatMap<A>(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[3];
  v38 = a1[2];
  v5 = a1[4];
  if (*a1 >> 62)
  {
    goto LABEL_57;
  }

  v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  swift_unknownObjectRetain();
  v31 = v3;
  if (v6)
  {
    v7 = 0;
    v36 = v3 & 0xFFFFFFFFFFFFFF8;
    v37 = v3 & 0xC000000000000001;
    v34 = v3 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    v35 = v5 >> 1;
    v33 = v6;
    while (1)
    {
      if (v37)
      {
        v3 = MEMORY[0x1DA6CE0C0](v7, v31);
        v10 = __OFADD__(v7++, 1);
        if (v10)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v7 >= *(v36 + 16))
        {
          goto LABEL_51;
        }

        v3 = *(v34 + 8 * v7);

        v10 = __OFADD__(v7++, 1);
        if (v10)
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v6 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      if (v4 == v35)
      {

        goto LABEL_47;
      }

      if (v4 >= v35)
      {
        goto LABEL_52;
      }

      v11 = *(v38 + 8 * v4);
      v42[0] = v3;
      v42[1] = v11;

      closure #3 in static ReflowLayoutManager.process(lines:in:)(v42, &v43);
      if (v2)
      {

        swift_unknownObjectRelease();

        return v8;
      }

      v12 = v43;
      v5 = v43 >> 62;
      v13 = v43 >> 62 ? __CocoaSet.count.getter() : *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v8 >> 62;
      if (v8 >> 62)
      {
        v29 = __CocoaSet.count.getter();
        v16 = v29 + v13;
        if (__OFADD__(v29, v13))
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_44;
        }
      }

      v40 = v13;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v14)
      {
        goto LABEL_23;
      }

      v17 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = v8;
        goto LABEL_25;
      }

LABEL_24:
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v17 = v39 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v5)
      {
        v20 = v17;
        v21 = __CocoaSet.count.getter();
        v17 = v20;
        v3 = v21;
      }

      else
      {
        v3 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v3)
      {
        if (((v19 >> 1) - v18) < v40)
        {
          goto LABEL_54;
        }

        v22 = v17 + 8 * v18 + 32;
        v32 = v17;
        if (v5)
        {
          if (v3 < 1)
          {
            goto LABEL_56;
          }

          v5 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [ReflowElement] and conformance [A], &_sSay8PaperKit13ReflowElementCGMd, _sSay8PaperKit13ReflowElementCGMR, MEMORY[0x1E69E6340]);
          for (i = 0; i != v3; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit13ReflowElementCGMd, _sSay8PaperKit13ReflowElementCGMR);
            v24 = specialized protocol witness for Collection.subscript.read in conformance [A](v41, i, v12);
            v26 = *v25;

            (v24)(v41, 0);
            *(v22 + 8 * i) = v26;
          }
        }

        else
        {
          v5 = v12 & 0xFFFFFFFFFFFFFF8;
          type metadata accessor for ReflowElement();
          swift_arrayInitWithCopy();
        }

        v8 = v39;
        v2 = 0;
        v9 = v33;
        if (v40 >= 1)
        {
          v27 = *(v32 + 16);
          v10 = __OFADD__(v27, v40);
          v28 = v27 + v40;
          if (v10)
          {
            goto LABEL_55;
          }

          *(v32 + 16) = v28;
        }
      }

      else
      {

        v8 = v39;
        v9 = v33;
        if (v40 > 0)
        {
          goto LABEL_53;
        }
      }

      ++v4;
      if (v7 == v9)
      {
        goto LABEL_47;
      }
    }

    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_23:
    __CocoaSet.count.getter();
    goto LABEL_24;
  }

LABEL_45:
  v8 = MEMORY[0x1E69E7CC0];
LABEL_47:
  swift_unknownObjectRelease();

  return v8;
}

BOOL specialized Ref<>.containsStrokes<A>(_:in:)(char *a1, char *a2)
{
  v54 = a2;
  v57 = a1;
  v53 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v50 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - v21;
  v23 = *(v15 + 16);
  v52 = v2;
  v23(v17, v2, v14, v20);
  v24 = v57;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953B8]);
  WeakRef.init<A>(_:)();
  v25 = specialized Set.contains(_:)(v22, v24);
  (*(v19 + 8))(v22, v18);
  if (v25)
  {
    return 1;
  }

  else
  {
    type metadata accessor for PKDrawingStruct(0);
    _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct, &protocol conformance descriptor for PKDrawingStruct);
    v27 = v49;
    v28 = v54;
    Ref.subscript.getter();
    v29 = v51;
    CRRegister.value.getter();
    (*(v50 + 8))(v27, v6);
    v30 = v29;
    v31 = v55;
    outlined init with take of TaggedStroke(v30, v55);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
      v33 = *(v32 - 8);
      v34 = v56;
      (*(v33 + 32))(v56, v31, v32);
      (*(v33 + 56))(v34, 0, 1, v32);
    }

    else
    {
      _s8PaperKit15PKDrawingStructVWOhTm_1(v31, type metadata accessor for TaggedStroke);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
      v34 = v56;
      (*(*(v35 - 8) + 56))(v56, 1, 1, v35);
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v34, 1, v36) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
      return 0;
    }

    else
    {
      v38 = v45;
      Ref.subscript.getter();
      (*(v37 + 8))(v34, v36);
      v39 = v46;
      v40 = v47;
      v41 = v38;
      v42 = v48;
      v43 = (*(v47 + 32))(v46, v41, v48);
      MEMORY[0x1EEE9AC00](v43);
      *(&v45 - 2) = v24;
      *(&v45 - 1) = v28;
      v26 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Ref<>.containsStrokes<A>(_:in:), (&v45 - 4));
      (*(v40 + 8))(v39, v42);
    }
  }

  return v26;
}

uint64_t ReflowLayoutManager.copy()()
{
  v18 = *(v0 + 48);
  v19 = *(v0 + 16);
  v15 = *(v0 + 64);
  v16 = *(v0 + 32);
  swift_beginAccess();
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v0 + 88);
  swift_beginAccess();
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 112);
  v21 = *(v0 + 152);
  v20 = *(v0 + 120);
  v17 = *(v0 + 136);
  swift_beginAccess();
  v6 = *(v0 + 176);
  v25 = *(v0 + 160);
  v26 = v6;
  v27[0] = *(v0 + 192);
  *(v27 + 11) = *(v0 + 203);
  v23 = *(v0 + 219);
  v22 = *(v0 + 224);
  type metadata accessor for ReflowLayoutManager();
  v7 = swift_allocObject();
  v8 = *(MEMORY[0x1E695F050] + 16);
  *(v7 + 120) = *MEMORY[0x1E695F050];
  v9 = MEMORY[0x1E69E7CC0];
  *(v7 + 80) = MEMORY[0x1E69E7CC0];
  *(v7 + 88) = v9;
  *(v7 + 96) = v9;
  *(v7 + 104) = v9;
  *(v7 + 112) = 100;
  *(v7 + 136) = v8;
  *(v7 + 152) = v9;
  *(v7 + 176) = 0u;
  *(v7 + 192) = 0u;
  *(v7 + 203) = 0u;
  *(v7 + 160) = 0u;
  *(v7 + 219) = 1;
  *(v7 + 224) = 0;
  *(v7 + 16) = v19;
  *(v7 + 32) = v16;
  *(v7 + 48) = v18;
  *(v7 + 64) = v15;
  swift_beginAccess();
  *(v7 + 80) = v1;
  swift_beginAccess();
  *(v7 + 88) = v2;
  swift_beginAccess();
  *(v7 + 96) = v4;
  *(v7 + 104) = v3;
  *(v7 + 112) = v5;
  *(v7 + 136) = v17;
  *(v7 + 120) = v20;
  *(v7 + 152) = v21;
  swift_beginAccess();
  v10 = *(v7 + 176);
  v11 = *(v7 + 192);
  v28[0] = *(v7 + 160);
  v28[1] = v10;
  v29[0] = v11;
  *(v29 + 11) = *(v7 + 203);
  outlined init with copy of Date?(&v25, v24, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
  outlined init with copy of Date?(&v25, v24, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
  v12 = v26;
  *(v7 + 160) = v25;
  v13 = v27[0];
  *(v7 + 176) = v12;
  *(v7 + 192) = v13;
  *(v7 + 203) = *(v27 + 11);

  outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
  outlined destroy of StocksKitCurrencyCache.Provider?(&v25, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
  *(v7 + 219) = v23;
  *(v7 + 224) = v22;
  return v7;
}

void closure #2 in static ReflowLayoutManager.process(lines:in:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X3>, double *a5@<X4>, double *a6@<X5>, void *a7@<X8>)
{
  v128 = a6;
  v127 = a5;
  v126 = a4;
  v123 = a3;
  v129 = a7;
  v9 = type metadata accessor for PKStroke();
  v10 = *(v9 - 8);
  v135 = v9;
  v136 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v131 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v124 = &v123 - v15;
  v142 = COERCE_DOUBLE(type metadata accessor for UUID());
  MaxY = *(*&v142 - 8);
  MEMORY[0x1EEE9AC00](*&v142);
  v132 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v133 = &v123 - v18;
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v139 = (&v123 - v21);
  v22 = *a1;
  v23 = [*a1 strokeIdentifiers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHStrokeIdentifier_pMd, &_sSo18CHStrokeIdentifier_pMR);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v125 = v22;
  v25 = [v22 nonTextStrokeIdentifiers];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v143 = v24;
  specialized Array.append<A>(contentsOf:)(v26);
  v27 = v143;
  if (v143 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v29 = 0;
    v137 = v27 & 0xFFFFFFFFFFFFFF8;
    v138 = v27 & 0xC000000000000001;
    v30 = (*&MaxY + 32);
    v141 = MEMORY[0x1E69E7CC0];
    while (v138)
    {
      MEMORY[0x1DA6CE0C0](v29, v27);
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      type metadata accessor for PKStrokeProviderSliceIdentifierCoherence(0);
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        v33 = a2;
        v34 = i;
        v35 = [v32 strokeUUID];
        v36 = v133;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_unknownObjectRelease();
        v37 = *v30;
        (*v30)(v139, v36, COERCE_DOUBLE(*&v142));
        v38 = v141;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v38 + 16) + 1, 1, *&v38));
        }

        v40 = *(*&v38 + 16);
        v39 = *(*&v38 + 24);
        v141 = v38;
        if (v40 >= v39 >> 1)
        {
          v141 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, *&v141));
        }

        v41 = MaxY;
        v42 = v141;
        *(*&v141 + 16) = v40 + 1;
        (v37)(*&v42 + ((*(*&v41 + 80) + 32) & ~*(*&v41 + 80)) + *(*&v41 + 72) * v40, v139, *&v142);
        i = v34;
        a2 = v33;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v29;
      if (v31 == i)
      {
        goto LABEL_21;
      }
    }

    if (v29 >= *(v137 + 16))
    {
      goto LABEL_18;
    }

    swift_unknownObjectRetain();
    v31 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v141 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v43 = *(*&v141 + 16);
  if (v43)
  {
    v44 = *(*&MaxY + 16);
    v45 = *&v141 + ((*(*&MaxY + 80) + 32) & ~*(*&MaxY + 80));
    v46 = *(*&MaxY + 72);
    v130 = v136 + 16;
    *&MaxY += 16;
    v47 = (*&MaxY - 8);
    v138 = v136 + 32;
    v139 = MEMORY[0x1E69E7CC0];
    v137 = a2;
    v48 = v132;
    v133 = v46;
    v44(v132, v45, *&v142);
    while (1)
    {
      if (*(a2 + 16) && (v49 = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v50 & 1) != 0))
      {
        v51 = *(a2 + 56);
        v52 = v135;
        v53 = v136;
        v54 = *(v136 + 72);
        v55 = v48;
        v56 = v131;
        (*(v136 + 16))(v131, v51 + v54 * v49, v135);
        (*v47)(v55, COERCE_DOUBLE(*&v142));
        v57 = *(v53 + 32);
        v57(v134, v56, v52);
        v58 = v139;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v60 = v58[2];
        v59 = v58[3];
        v139 = v58;
        v48 = v132;
        if (v60 >= v59 >> 1)
        {
          v139 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v139);
        }

        v61 = v139;
        v139[2] = v60 + 1;
        v57(&v61[((*(v136 + 80) + 32) & ~*(v136 + 80)) + v60 * v54], v134, v135);
        a2 = v137;
        v46 = v133;
      }

      else
      {
        (*v47)(v48, COERCE_DOUBLE(*&v142));
      }

      v45 += v46;
      if (!--v43)
      {
        break;
      }

      v44(v48, v45, *&v142);
    }

    v62 = v139;
  }

  else
  {

    v62 = MEMORY[0x1E69E7CC0];
  }

  specialized Array.append<A>(contentsOf:)(v63);
  v64 = type metadata accessor for PKDrawing();
  v65 = *(v64 - 8);
  v66 = v124;
  (*(v65 + 56))(v124, 1, 1, v64);
  v143 = v62;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PencilKit8PKStrokeVGMd, &_sSay9PencilKit8PKStrokeVGMR);
  v67 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v69 = 0;
  if ((*(v65 + 48))(v66, 1, v64) != 1)
  {
    PKDrawing._bridgeToObjectiveC()(v68);
    v69 = v70;
    (*(v65 + 8))(v66, v64);
  }

  v71 = [objc_allocWithZone(type metadata accessor for PKDrawingCoherence(0)) initWithStrokes:v67 fromDrawing:v69];

  swift_unknownObjectRelease();

  [v71 bounds];
  [v71 set_canvasBounds_];
  [v71 _canvasBounds];
  x = v144.origin.x;
  y = v144.origin.y;
  width = v144.size.width;
  height = v144.size.height;
  MinX = CGRectGetMinX(v144);
  v145.origin.x = x;
  v145.origin.y = y;
  v145.size.width = width;
  v145.size.height = height;
  MinY = CGRectGetMinY(v145);
  v146.origin.x = x;
  v146.origin.y = y;
  v146.size.width = width;
  v146.size.height = height;
  MaxX = CGRectGetMaxX(v146);
  v147.origin.x = x;
  v147.origin.y = y;
  v147.size.width = width;
  v147.size.height = height;
  v79 = CGRectGetMinY(v147);
  v148.origin.x = x;
  v148.origin.y = y;
  v148.size.width = width;
  v148.size.height = height;
  v141 = CGRectGetMinX(v148);
  v149.origin.x = x;
  v149.origin.y = y;
  v149.size.width = width;
  v149.size.height = height;
  MaxY = CGRectGetMaxY(v149);
  v150.origin.x = x;
  v150.origin.y = y;
  v150.size.width = width;
  v150.size.height = height;
  v142 = CGRectGetMaxX(v150);
  v151.origin.x = x;
  v151.origin.y = y;
  v151.size.width = width;
  v151.size.height = height;
  v80 = CGRectGetMaxY(v151);
  v81 = v126;
  v82 = v126[5];
  v83 = v126[6];
  v84 = v126[7] - v82;
  v85 = v126[8] - v83;
  v86 = v84 * v84 + v85 * v85;
  v87 = ((MinX - v82) * v84 + (MinY - v83) * v85) / v86;
  v88 = v84 * v87;
  v89 = v83 + v85 * v87;
  v90 = sqrt(v86);
  v91 = v85 / v90;
  v92 = MinX - (v82 + v88);
  v93 = -v84 / v90;
  v94 = v93 * (MinY - v89) + v85 / v90 * v92;
  if (v94 > -200.0 && v94 < 200.0)
  {
    v99 = v128;
    v100 = v127;
    if ((*&v94 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v96 = *v127;
      if (v94 > *v127)
      {
        v96 = v94;
      }

      *v127 = v96;
      v97 = *v99;
      if (*v99 >= v94)
      {
        v97 = v94;
      }

      *v99 = v97;
      v82 = v81[5];
      v83 = v81[6];
      v84 = v81[7] - v82;
      v85 = v81[8] - v83;
      v86 = v84 * v84 + v85 * v85;
      v98 = sqrt(v86);
      v91 = v85 / v98;
      v93 = -v84 / v98;
    }
  }

  else
  {
    v99 = v128;
    v100 = v127;
  }

  v101 = ((MaxX - v82) * v84 + (v79 - v83) * v85) / v86;
  v102 = v93 * (v79 - (v83 + v85 * v101)) + v91 * (MaxX - (v82 + v84 * v101));
  if (v102 > -200.0 && v102 < 200.0 && (*&v102 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v105 = *v100;
    if (v102 > *v100)
    {
      v105 = v102;
    }

    *v100 = v105;
    v106 = *v99;
    if (*v99 >= v102)
    {
      v106 = v102;
    }

    *v99 = v106;
    v82 = v81[5];
    v83 = v81[6];
    v84 = v81[7] - v82;
    v85 = v81[8] - v83;
    v86 = v84 * v84 + v85 * v85;
    v107 = sqrt(v86);
    v91 = v85 / v107;
    v93 = -v84 / v107;
  }

  v108 = ((v141 - v82) * v84 + (MaxY - v83) * v85) / v86;
  v109 = v93 * (MaxY - (v83 + v85 * v108)) + v91 * (v141 - (v82 + v84 * v108));
  if (v109 > -200.0 && v109 < 200.0 && (*&v109 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v112 = *v100;
    if (v109 > *v100)
    {
      v112 = v109;
    }

    *v100 = v112;
    v113 = *v99;
    if (*v99 >= v109)
    {
      v113 = v109;
    }

    *v99 = v113;
    v82 = v81[5];
    v83 = v81[6];
    v84 = v81[7] - v82;
    v85 = v81[8] - v83;
    v86 = v84 * v84 + v85 * v85;
    v114 = sqrt(v86);
    v91 = v85 / v114;
    v93 = -v84 / v114;
  }

  v115 = ((v142 - v82) * v84 + (v80 - v83) * v85) / v86;
  v116 = v93 * (v80 - (v83 + v85 * v115)) + v91 * (v142 - (v82 + v84 * v115));
  if (v116 > -200.0 && v116 < 200.0 && (*&v116 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v119 = *v100;
    if (v116 > *v100)
    {
      v119 = v116;
    }

    *v100 = v119;
    if (*v99 < v116)
    {
      v116 = *v99;
    }

    *v99 = v116;
  }

  type metadata accessor for ReflowWord();
  swift_allocObject();
  v120 = v125;
  v121 = v71;
  v122 = ReflowWord.init(reflowableTextToken:drawing:scale:image:)(v120, v121, 0, 1.0);
  ReflowWord.generateImage()();

  *v129 = v122;
}

double closure #3 in static ReflowLayoutManager.process(lines:in:)@<D0>(double **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D405B640;
  *(v5 + 32) = v3;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];

  v16.origin.x = v6;
  v16.origin.y = v7;
  v16.size.width = v8;
  v16.size.height = v9;
  MaxX = CGRectGetMaxX(v16);
  MinX = CGRectGetMinX(*(v4 + 2));
  type metadata accessor for ReflowSpace();
  v12 = swift_allocObject();
  *(v12 + 160) = 1;
  *(v12 + 152) = 0;
  UnknownCanvasElementView.flags.modify();
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0;
  *(v12 + 104) = v13;
  *(v12 + 112) = v14;
  *(v12 + 120) = -1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  result = MinX - MaxX;
  *(v12 + 16) = MaxX;
  *(v12 + 24) = 0;
  *(v12 + 32) = MinX - MaxX;
  *(v12 + 40) = 0x4000000000000000;
  *(v5 + 40) = v12;
  *a2 = v5;
  return result;
}

void ReflowLayoutManager.init(contents:frame:strokesToReflow:)(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, CGFloat a5, CGFloat a6)
{
  v9 = MEMORY[0x1E69E7CC0];
  *(v6 + 80) = MEMORY[0x1E69E7CC0];
  v10 = v6 + 80;
  *(v10 + 8) = v9;
  v11 = *(MEMORY[0x1E695F050] + 16);
  *(v10 + 40) = *MEMORY[0x1E695F050];
  *(v10 + 16) = v9;
  *(v10 + 24) = v9;
  *(v10 + 32) = 100;
  *(v10 + 56) = v11;
  *(v10 + 72) = v9;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 123) = 0u;
  *(v10 + 139) = 1;
  *(v10 + 144) = 0;
  v159 = a3.n128_f64[0];
  v160 = a4.n128_f64[0];
  *(v10 - 32) = a3.n128_u64[0];
  *(v10 - 24) = a4.n128_u64[0];
  *(v10 - 16) = a5;
  *(v10 - 8) = a6;
  *(v10 - 64) = a3.n128_u64[0];
  *(v10 - 56) = a4.n128_u64[0];
  *(v10 - 48) = a5;
  *(v10 - 40) = a6;
  specialized Sequence.flatMap<A>(_:)(a1);
  v13 = v12;
  swift_beginAccess();
  *v10 = v13;

  swift_beginAccess();
  *(v10 + 8) = a1;

  *(v10 + 24) = a2;

  v155 = (v10 + 8);
  v14 = *(v10 + 8);
  v196 = v9;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v15.f64[0] = v159;
  v16 = 0;
  v17 = v9;
  v18 = *(v14 + 16);
  v15.f64[1] = v160;
  v166 = v15;
  v19 = 32;
  while (v18 != v16)
  {
    v20 = *(v14 + v19);
    v21 = *(v14 + v19 + 32);
    *&__dst.c = *(v14 + v19 + 16);
    *&__dst.tx = v21;
    *&__dst.a = v20;
    v22 = *(v14 + v19 + 48);
    v23 = *(v14 + v19 + 64);
    v24 = *(v14 + v19 + 96);
    *&v193[32] = *(v14 + v19 + 80);
    *&v193[48] = v24;
    *v193 = v22;
    *&v193[16] = v23;
    v25 = *(v14 + v19 + 112);
    v26 = *(v14 + v19 + 128);
    v27 = *(v14 + v19 + 144);
    v195 = *(v14 + v19 + 160);
    *v194 = v26;
    *&v194[16] = v27;
    *&v193[64] = v25;
    ty = __dst.ty;
    v29 = *v193;
    v30 = *(&v25 + 1);
    v31 = *&v26;
    v171 = *&v193[8];
    v173 = *&v193[24];
    v178 = *&v193[40];
    point = *&v193[56];
    a = __dst.a;
    outlined init with copy of ReflowTextLine(&__dst, &v183);
    outlined init with copy of ReflowTextLine(&__dst, &v183);

    v33 = __dst.a;
    *&v183.a = *&__dst.c;
    v183.c = __dst.tx;
    v181 = *&v194[8];
    v182 = *&v194[24];
    v201.origin.x = v159;
    v201.origin.y = v160;
    v201.size.width = a5;
    v201.size.height = a6;
    MinX = CGRectGetMinX(v201);
    outlined destroy of ReflowTextLine(&__dst);
    v196 = v17;
    v36 = *(v17 + 16);
    v35 = *(v17 + 24);
    if (v36 >= v35 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
      v17 = v196;
    }

    v37 = sqrt((v171.x - ty) * (v171.x - ty) + (v171.y - v29) * (v171.y - v29));
    v38 = (v171.x - ty) / v37;
    v39 = (v171.y - v29) / v37;
    v40 = (MinX - ty) / v38;
    *(v17 + 16) = v36 + 1;
    v41 = v17 + 168 * v36;
    *(v41 + 32) = v33;
    *(v41 + 40) = a;
    v42 = *&v183.a;
    *(v41 + 64) = v183.c;
    *(v41 + 48) = v42;
    *(v41 + 72) = ty + v38 * v40 - v159;
    *(v41 + 80) = v29 + v39 * v40 - v160;
    *(v41 + 104) = vsubq_f64(v173, v166);
    *(v41 + 88) = vsubq_f64(v171, v166);
    *(v41 + 136) = vsubq_f64(point, v166);
    *(v41 + 120) = vsubq_f64(v178, v166);
    *(v41 + 152) = v30 - v159;
    *(v41 + 160) = v31 - v160;
    v43 = v181;
    *(v41 + 184) = v182;
    *(v41 + 192) = v16;
    *(v41 + 168) = v43;
    v19 += 168;
    if (++v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }
  }

  *v155 = v17;

  v44 = *v155;
  v156 = *(*v155 + 2);
  if (!v156)
  {

    goto LABEL_65;
  }

  v45 = 0;
  v46.f64[0] = v159;
  v46.f64[1] = v160;
  v161 = v46;
  do
  {
    if (v45 >= *(v44 + 2))
    {
      goto LABEL_114;
    }

    v47 = &v44[168 * v45 + 32];
    v48 = *v47;
    v165 = *(v47 + 48);
    v167 = *(v47 + 40);
    v49 = *(v47 + 56);
    v50 = *(v47 + 64);
    v51 = *(v47 + 160);
    if (*v47 >> 62)
    {
      v52 = __CocoaSet.count.getter();
      if (!v52)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v52 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        goto LABEL_10;
      }
    }

    if (v52 < 1)
    {
      goto LABEL_116;
    }

    v163 = v50 - v165;
    v164 = v49 - v167;
    v162 = v164 * v164 + v163 * v163;

    v53 = 0;
    do
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x1DA6CE0C0](v53, v48);
      }

      else
      {
        v54 = *(v48 + 8 * v53 + 32);
      }

      ++v53;
      *(v54 + 16) = vsubq_f64(*(v54 + 16), v161);
      *(v54 + 48) = vsubq_f64(*(v54 + 48), v161);
      *(v54 + 120) = v51;
      v197.x = (*(*v54 + 240))();
      v56 = v55;
      v58 = v57;
      v59 = *(v54 + 16);
      v60 = *(v54 + 32);
      __dst.a = *(v54 + 32);
      v174 = v60;
      v179 = vsubq_f64(v59, vmulq_f64(v60, 0));
      __dst.b = 0.0;
      __dst.c = 0.0;
      __dst.d = v60.f64[1];
      *&__dst.tx = v179;
      v61 = CGPointApplyAffineTransform(v197, &__dst);
      __dst.a = v174.f64[0];
      __dst.b = 0.0;
      __dst.c = 0.0;
      __dst.d = v174.f64[1];
      *&__dst.tx = v179;
      v198.x = v56;
      v198.y = v58;
      v62 = CGPointApplyAffineTransform(v198, &__dst);
      v63 = (v164 * (v61.x - v167) + v163 * (v61.y - v165)) / v162;
      v64 = v167 + v164 * v63;
      v65 = v165 + v163 * v63;
      v66 = (v164 * (v62.x - v167) + v163 * (v62.y - v165)) / v162;
      v172 = v167 + v164 * v66;
      __dst.a = v174.f64[0];
      __dst.b = 0.0;
      __dst.c = 0.0;
      pointb = v165 + v163 * v66;
      __dst.d = v174.f64[1];
      *&__dst.tx = v179;
      CGAffineTransformInvert(&v183, &__dst);
      v67 = v183.a;
      b = v183.b;
      c = v183.c;
      d = v183.d;
      tx = v183.tx;
      v72 = v183.ty;
      __dst = v183;
      v199.x = v64;
      v199.y = v65;
      v73 = CGPointApplyAffineTransform(v199, &__dst);
      __dst.a = v67;
      __dst.b = b;
      __dst.c = c;
      __dst.d = d;
      __dst.tx = tx;
      __dst.ty = v72;
      v200.x = v172;
      v200.y = pointb;
      v74 = CGPointApplyAffineTransform(v200, &__dst);
      (*(*v54 + 248))(v73.x, v73.y, v74.x, v74.y);
    }

    while (v52 != v53);

LABEL_10:
    ++v45;
  }

  while (v45 != v156);

  v75 = *v155;
  v76 = *(*v155 + 2);

  if (v76)
  {
    v77 = 0;
    v78 = v75 + 32;
    v79 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v175 = v79 + 24;
      v80 = 168 * v77;
      v81 = v77;
      v180 = v79;
      while (2)
      {
        if (v81 >= *(v75 + 2))
        {
          goto LABEL_117;
        }

        v82 = v75;
        v83 = *&v78[v80];
        v84 = *&v78[v80 + 32];
        *&v183.c = *&v78[v80 + 16];
        *&v183.tx = v84;
        *&v183.a = v83;
        v85 = *&v78[v80 + 48];
        v86 = *&v78[v80 + 64];
        v87 = *&v78[v80 + 96];
        v186 = *&v78[v80 + 80];
        v187 = v87;
        v184 = v85;
        v185 = v86;
        v88 = *&v78[v80 + 112];
        v89 = *&v78[v80 + 128];
        v90 = *&v78[v80 + 144];
        v191 = *&v78[v80 + 160];
        v189 = v89;
        v190 = v90;
        v188 = v88;
        memmove(&__dst, &v78[v80], 0xA8uLL);
        v91 = __dst.a;
        if (!(*&__dst.a >> 62))
        {
          if (*((*&__dst.a & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

LABEL_25:
          outlined init with copy of ReflowTextLine(&v183, &v181);
          outlined destroy of ReflowTextLine(&__dst);
LABEL_26:
          ++v81;
          v80 += 168;
          v75 = v82;
          if (v76 == v81)
          {
            goto LABEL_66;
          }

          continue;
        }

        break;
      }

      if (!__CocoaSet.count.getter())
      {
        goto LABEL_25;
      }

LABEL_30:
      if ((*&v91 & 0xC000000000000001) != 0)
      {
        outlined init with copy of ReflowTextLine(&v183, &v181);
        v93 = MEMORY[0x1DA6CE0C0](0, *&v91);
        v92 = v93;
      }

      else
      {
        if (!*((*&v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_118;
        }

        v92 = *(*&v91 + 32);
        outlined init with copy of ReflowTextLine(&v183, &v181);
      }

      v94 = (*(*v92 + 272))(v93);
      v95 = v94 * CGRectGetWidth(*(v92 + 16));
      v96 = v95 + CGRectGetMinX(*(v92 + 16)) - __dst.ty;
      if (!v81)
      {
        goto LABEL_53;
      }

      if (v81 > *(*v155 + 2))
      {
        goto LABEL_119;
      }

      v97 = *&(*v155)[v80 - 136];
      if (v97 >> 62)
      {
        v98 = __CocoaSet.count.getter();
        if (v98)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v98)
        {
LABEL_37:
          v99 = v98 - 1;
          if (__OFSUB__(v98, 1))
          {
            goto LABEL_122;
          }

          if ((v97 & 0xC000000000000001) != 0)
          {

            v100 = MEMORY[0x1DA6CE0C0](v99, v97);
          }

          else
          {
            if ((v99 & 0x8000000000000000) != 0)
            {
              goto LABEL_123;
            }

            if (v99 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_124;
            }

            v100 = *(v97 + 8 * v99 + 32);
          }

          v101 = *(v100 + 136);

          v79 = v180;
          if (v101 == 1)
          {
LABEL_53:
            outlined destroy of ReflowTextLine(&__dst);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
            }

            v105 = *(v79 + 2);
            v104 = *(v79 + 3);
            if (v105 >= v104 >> 1)
            {
              v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1, v79);
            }

            *(v79 + 2) = v105 + 1;
            *&v79[8 * v105 + 32] = v96;
LABEL_62:
            v75 = v82;
            v77 = v81 + 1;
            if (v76 - 1 != v81)
            {
              continue;
            }

            v180 = v79;
            goto LABEL_66;
          }
        }
      }

      break;
    }

    v102 = *(v79 + 2);
    outlined destroy of ReflowTextLine(&__dst);
    if (!v102)
    {
      goto LABEL_120;
    }

    v103 = *(v79 + 2);
    if (v102 > v103)
    {
      goto LABEL_121;
    }

    if (v96 < *&v175[8 * v102])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew()(v79);
      }

      if (v103 > *(v79 + 2))
      {
        goto LABEL_138;
      }

      *&v79[8 * v103 + 24] = v96;
      goto LABEL_62;
    }

    goto LABEL_26;
  }

LABEL_65:
  v180 = MEMORY[0x1E69E7CC0];
LABEL_66:

  v106 = *v155;
  v107 = *(*v155 + 2);

  if (v107)
  {
    v108 = 0;
    v109 = v106 + 32;
    v110 = v107 - 1;
    v111 = -1;
    v112 = 56;
LABEL_68:
    v113 = v112 + 168 * v108;
    do
    {
      if (v108 >= *(v106 + 2))
      {
        goto LABEL_115;
      }

      v114 = *&v109[v113 - 56];
      v115 = *&v109[v113 - 24];
      *&v183.c = *&v109[v113 - 40];
      *&v183.tx = v115;
      *&v183.a = v114;
      v116 = *&v109[v113 - 8];
      v117 = *&v109[v113 + 8];
      v118 = *&v109[v113 + 40];
      v186 = *&v109[v113 + 24];
      v187 = v118;
      v184 = v116;
      v185 = v117;
      v119 = *&v109[v113 + 56];
      v120 = *&v109[v113 + 72];
      v121 = *&v109[v113 + 88];
      v191 = *&v109[v113 + 104];
      v189 = v120;
      v190 = v121;
      v188 = v119;
      memmove(&__dst, &v109[v113 - 56], 0xA8uLL);
      v122 = __dst.a;
      if (*&__dst.a >> 62)
      {
        if (__CocoaSet.count.getter())
        {
LABEL_75:
          if ((*&v122 & 0xC000000000000001) != 0)
          {
            outlined init with copy of ReflowTextLine(&v183, &v181);
            v124 = MEMORY[0x1DA6CE0C0](0, *&v122);
            v123 = v124;
            v176 = v112;
            if (v108)
            {
              goto LABEL_78;
            }
          }

          else
          {
            if (!*((*&v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_126;
            }

            v123 = *(*&v122 + 32);
            outlined init with copy of ReflowTextLine(&v183, &v181);

            v176 = v112;
            if (v108)
            {
LABEL_78:
              if (v108 > *(*v155 + 2))
              {
                goto LABEL_129;
              }

              pointa = v111;
              v125 = *&(*v155)[v113 - 192];
              v126 = v110;
              if (v125 >> 62)
              {
                v124 = __CocoaSet.count.getter();
                if (!v124)
                {
                  goto LABEL_90;
                }

LABEL_81:
                v127 = v124 - 1;
                if (__OFSUB__(v124, 1))
                {
                  goto LABEL_135;
                }

                if ((v125 & 0xC000000000000001) != 0)
                {

                  v128 = MEMORY[0x1DA6CE0C0](v127, v125);
                }

                else
                {
                  if ((v127 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_136;
                  }

                  if (v127 >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_137;
                  }

                  v128 = *(v125 + 8 * v127 + 32);
                }

                v129 = *(v128 + 136);
              }

              else
              {
                v124 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v124)
                {
                  goto LABEL_81;
                }

LABEL_90:
                v129 = 0;
              }

              v110 = v126;
              v111 = pointa;
LABEL_92:
              v130 = (*(*v123 + 272))(v124);
              v131 = v130 * CGRectGetWidth(*(v123 + 16));
              v132 = CGRectGetMinX(*(v123 + 16));
              outlined destroy of ReflowTextLine(&__dst);
              v133 = v131 + v132 - __dst.ty;
              if (v129)
              {
                v134 = __OFADD__(v111, 1);
                v135 = v111 + 1;
                if (v134)
                {
                  goto LABEL_130;
                }

                v136 = v135;
                swift_beginAccess();
                v137 = *v155;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v155 = v137;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v137 = specialized _ArrayBuffer._consumeAndCreateNew()(v137);
                }

                if (v108 >= *(v137 + 2))
                {
                  goto LABEL_132;
                }

                *&v137[v113 - 8] = v133;
              }

              else
              {
                if ((v111 & 0x8000000000000000) != 0)
                {
                  goto LABEL_131;
                }

                if (v111 >= *(v180 + 2))
                {
                  goto LABEL_133;
                }

                v136 = v111;
                v139 = *&v180[8 * v111 + 32];
                swift_beginAccess();
                v137 = *v155;
                v140 = swift_isUniquelyReferenced_nonNull_native();
                *v155 = v137;
                if ((v140 & 1) == 0)
                {
                  v137 = specialized _ArrayBuffer._consumeAndCreateNew()(v137);
                }

                if (v108 >= *(v137 + 2))
                {
                  goto LABEL_134;
                }

                *&v137[v113 - 8] = v139;
              }

              *v155 = v137;
              swift_endAccess();
              if (v108 >= *(v137 + 2))
              {
                goto LABEL_127;
              }

              v141 = *&v137[v113 - 8];
              swift_beginAccess();
              v142 = swift_isUniquelyReferenced_nonNull_native();
              *v155 = v137;
              if ((v142 & 1) == 0)
              {
                v137 = specialized _ArrayBuffer._consumeAndCreateNew()(v137);
              }

              if (v108 < *(v137 + 2))
              {
                *&v137[v113] = v133 - v141;
                *v155 = v137;
                swift_endAccess();

                v143 = v110 == v108++;
                v111 = v136;
                v112 = v176;
                if (v143)
                {
                  break;
                }

                goto LABEL_68;
              }

              goto LABEL_128;
            }
          }

          v129 = 1;
          goto LABEL_92;
        }
      }

      else if (*((*&__dst.a & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      ++v108;
      outlined init with copy of ReflowTextLine(&v183, &v181);
      outlined destroy of ReflowTextLine(&__dst);
      v113 += 168;
    }

    while (v107 != v108);
  }

  v144 = *v155;
  v145 = *(*v155 + 2);
  if (v145)
  {
    v146 = (2 * v145) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMd, &_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMR);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_1D4058CF0;
    UnknownCanvasElementView.flags.modify();
    *(v147 + 32) = MEMORY[0x1E69E7CC0];
    *(v147 + 40) = 0u;
    *(v147 + 56) = 0u;
    *(v147 + 72) = 0u;
    *(v147 + 88) = v148;
    *(v147 + 96) = v149;
    *(v147 + 104) = 0;
    *(v147 + 112) = 0;
    *(v147 + 120) = v148;
    *(v147 + 128) = v149;
    *(v147 + 136) = 0;
    *(v147 + 144) = 0;
    *(v147 + 152) = v148;
    *(v147 + 160) = v149;
    *(v147 + 168) = 0u;
    *(v147 + 184) = 0u;
    swift_bridgeObjectRetain_n();
    __dst.a = v144;
    *&__dst.b = *&v144 + 32;
    *&__dst.c = 1;
    *&__dst.d = v146;
    specialized ArraySlice.append<A>(contentsOf:)(v147, v150);
    v151 = *&__dst.c;
    v177 = *&__dst.a;
    __dst.a = v144;
    *&__dst.b = v177;
    *&__dst.d = v151;
    _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8PaperKit14ReflowTextLineVGs10ArraySliceVyAJGG_AJs5NeverOTg503_s8f5Kit19h52LayoutManagerC8contents5frame09strokesToC0ACSayAA0C8iJ56VG_So6CGRectVSay06PencilB08PKStrokeVGtcfcA2H_AHt_tXEfU1_So0Z0VTf1cn_n(&__dst, v159, v160, a5, a6);
    v153 = v152;
    swift_unknownObjectRelease();

    *(v154 + 88) = v153;

    return;
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

void _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay8PaperKit14ReflowTextLineVGs10ArraySliceVyAJGG_AJs5NeverOTg503_s8f5Kit19h52LayoutManagerC8contents5frame09strokesToC0ACSayAA0C8iJ56VG_So6CGRectVSay06PencilB08PKStrokeVGtcfcA2H_AHt_tXEfU1_So0Z0VTf1cn_n(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v73 = a1[3];
  v116 = a1[4] >> 1;
  v6 = v116 - v73;
  if (__OFSUB__(v116, v73))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v7 = v5;
  v71 = a1[2];
  v72 = *a1;
  v12 = *(*a1 + 16);
  if (v6 >= v12)
  {
    v13 = *(*a1 + 16);
  }

  else
  {
    v13 = v116 - v73;
  }

  v115 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v14 = v115;
    v76 = v12;
    if (v13)
    {

      swift_unknownObjectRetain();
      v15 = 0;
      v16 = 0;
      v17 = 1;
      v75 = v73;
      while (1)
      {
        if (v16)
        {
          _s8PaperKit14ReflowTextLineV_ACtSgWOi0_(__src);
          memcpy(__dst, __src, sizeof(__dst));
          v16 = 1;
        }

        else
        {
          v18 = v76;
          if (v15 == v76)
          {
            goto LABEL_14;
          }

          if (v15 >= v76)
          {
            goto LABEL_45;
          }

          v19 = v72 + 32 + 168 * v15;
          v20 = *v19;
          v21 = *(v19 + 32);
          __src[1] = *(v19 + 16);
          __src[2] = v21;
          __src[0] = v20;
          v22 = *(v19 + 48);
          v23 = *(v19 + 64);
          v24 = *(v19 + 96);
          __src[5] = *(v19 + 80);
          __src[6] = v24;
          __src[3] = v22;
          __src[4] = v23;
          v25 = *(v19 + 112);
          v26 = *(v19 + 128);
          v27 = *(v19 + 144);
          *&__src[10] = *(v19 + 160);
          __src[8] = v26;
          __src[9] = v27;
          __src[7] = v25;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_46;
          }

          if (v75 == v116)
          {
LABEL_14:
            _s8PaperKit14ReflowTextLineV_ACtSgWOi0_(__src);
            memcpy(__dst, __src, sizeof(__dst));
            v16 = 1;
          }

          else
          {
            if (v75 < v73 || v75 >= v116)
            {
              goto LABEL_47;
            }

            v28 = (v71 + 168 * v75);
            v29 = *v28;
            v30 = v28[2];
            v90[1] = v28[1];
            v90[2] = v30;
            v90[0] = v29;
            v31 = v28[3];
            v32 = v28[4];
            v33 = v28[6];
            v90[5] = v28[5];
            v90[6] = v33;
            v90[3] = v31;
            v90[4] = v32;
            v34 = v28[7];
            v35 = v28[8];
            v36 = v28[9];
            *&v90[10] = *(v28 + 20);
            v90[8] = v35;
            v90[9] = v36;
            v90[7] = v34;
            ++v75;
            __dst[1] = __src[1];
            __dst[0] = __src[0];
            __dst[5] = __src[5];
            __dst[4] = __src[4];
            __dst[2] = __src[2];
            __dst[3] = __src[3];
            *&__dst[10] = *&__src[10];
            __dst[9] = __src[9];
            __dst[8] = __src[8];
            __dst[6] = __src[6];
            __dst[7] = __src[7];
            *(&__dst[18] + 8) = v35;
            *(&__dst[19] + 8) = v36;
            *(&__dst[20] + 1) = *&v90[10];
            *(&__dst[14] + 8) = v90[4];
            *(&__dst[15] + 8) = v90[5];
            *(&__dst[16] + 8) = v33;
            *(&__dst[17] + 8) = v34;
            *(&__dst[10] + 8) = v90[0];
            *(&__dst[11] + 8) = v90[1];
            *(&__dst[12] + 8) = v90[2];
            *(&__dst[13] + 8) = v90[3];
            UnknownCanvasElementView.flags.modify();
            outlined init with copy of ReflowTextLine(__src, &v92);
            outlined init with copy of ReflowTextLine(v90, &v92);
            v16 = 0;
          }

          v15 = v18;
        }

        memcpy(__src, __dst, sizeof(__src));
        if (sub_1D38E1F74(__src) == 1)
        {
          goto LABEL_50;
        }

        closure #3 in ReflowLayoutManager.init(contents:frame:strokesToReflow:)(&v104, __dst, a2, a3, a4, a5);
        if (v7)
        {
          goto LABEL_51;
        }

        v7 = 0;
        memcpy(v90, __dst, sizeof(v90));
        outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s8PaperKit14ReflowTextLineV_ACtMd, &_s8PaperKit14ReflowTextLineV_ACtMR);
        v93 = v105;
        v97 = v109;
        v96 = v108;
        v94 = v106;
        v95 = v107;
        v101 = v113;
        v100 = v112;
        v98 = v110;
        v99 = v111;
        v102 = v114;
        v38 = *(v14 + 16);
        v37 = *(v14 + 24);
        v92 = v104;
        v115 = v14;
        if (v38 >= v37 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
          v14 = v115;
        }

        *(v14 + 16) = v38 + 1;
        v39 = v14 + 168 * v38;
        v40 = v92;
        v41 = v94;
        *(v39 + 48) = v93;
        *(v39 + 64) = v41;
        *(v39 + 32) = v40;
        v42 = v95;
        v43 = v96;
        v44 = v98;
        *(v39 + 112) = v97;
        *(v39 + 128) = v44;
        *(v39 + 80) = v42;
        *(v39 + 96) = v43;
        v45 = v99;
        v46 = v100;
        v47 = v101;
        *(v39 + 192) = v102;
        *(v39 + 160) = v46;
        *(v39 + 176) = v47;
        *(v39 + 144) = v45;
        if (v13 == v17)
        {
          v12 = v76;
          if ((v16 & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_41;
        }

        if (__OFADD__(v17++, 1))
        {
          __break(1u);
          goto LABEL_42;
        }
      }
    }

    swift_unknownObjectRetain();
    v15 = 0;
    v75 = v73;
LABEL_30:
    if (v15 == v12)
    {
LABEL_41:
      swift_unknownObjectRelease();

      return;
    }

    v49 = 168 * v15 + 32;
    v50 = v75;
    v51 = (v71 + 168 * v75);
    while (v15 < v12)
    {
      v52 = *(v72 + v49);
      v53 = *(v72 + v49 + 16);
      v106 = *(v72 + v49 + 32);
      v105 = v53;
      v104 = v52;
      v54 = *(v72 + v49 + 48);
      v55 = *(v72 + v49 + 64);
      v56 = *(v72 + v49 + 80);
      v110 = *(v72 + v49 + 96);
      v109 = v56;
      v108 = v55;
      v107 = v54;
      v57 = *(v72 + v49 + 112);
      v58 = *(v72 + v49 + 128);
      v59 = *(v72 + v49 + 144);
      v114 = *(v72 + v49 + 160);
      v113 = v59;
      v112 = v58;
      v111 = v57;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_43;
      }

      if (v116 != v50)
      {
        if (v75 < v73 || v50 >= v116)
        {
          goto LABEL_44;
        }

        v74 = v15 + 1;
        v60 = *v51;
        v61 = v51[1];
        v94 = v51[2];
        v93 = v61;
        v92 = v60;
        v62 = v51[3];
        v63 = v51[4];
        v64 = v51[5];
        v98 = v51[6];
        v97 = v64;
        v96 = v63;
        v95 = v62;
        v65 = v51[7];
        v66 = v51[8];
        v67 = v51[9];
        v102 = *(v51 + 20);
        v101 = v67;
        v100 = v66;
        v99 = v65;
        __src[8] = v112;
        __src[9] = v113;
        *&__src[10] = v114;
        __src[4] = v108;
        __src[5] = v109;
        __src[6] = v110;
        __src[7] = v111;
        __src[0] = v104;
        __src[1] = v105;
        __src[2] = v106;
        __src[3] = v107;
        *(&__src[17] + 8) = v51[7];
        *(&__src[18] + 8) = v51[8];
        *(&__src[19] + 8) = v51[9];
        *(&__src[20] + 1) = *(v51 + 20);
        *(&__src[13] + 8) = v51[3];
        *(&__src[14] + 8) = v51[4];
        *(&__src[15] + 8) = v51[5];
        *(&__src[16] + 8) = v51[6];
        *(&__src[10] + 8) = *v51;
        *(&__src[11] + 8) = v51[1];
        *(&__src[12] + 8) = v51[2];
        memcpy(__dst, __src, sizeof(__dst));
        outlined init with copy of ReflowTextLine(&v104, v90);
        outlined init with copy of ReflowTextLine(&v92, v90);
        closure #3 in ReflowLayoutManager.init(contents:frame:strokesToReflow:)(v88, __dst, a2, a3, a4, a5);
        if (v7)
        {
          goto LABEL_52;
        }

        v7 = 0;
        memcpy(v90, __dst, sizeof(v90));
        outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s8PaperKit14ReflowTextLineV_ACtMd, &_s8PaperKit14ReflowTextLineV_ACtMR);
        v81 = v88[4];
        v82 = v88[5];
        v78 = v88[1];
        v79 = v88[2];
        v80 = v88[3];
        v85 = v88[8];
        v86 = v88[9];
        v83 = v88[6];
        v84 = v88[7];
        v87 = v89;
        v69 = *(v14 + 16);
        v68 = *(v14 + 24);
        v77 = v88[0];
        v115 = v14;
        if (v69 >= v68 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
          v14 = v115;
        }

        *(v14 + 16) = v69 + 1;
        v70 = v14 + 168 * v69;
        *(v70 + 48) = v78;
        *(v70 + 64) = v79;
        *(v70 + 32) = v77;
        *(v70 + 112) = v82;
        *(v70 + 128) = v83;
        *(v70 + 80) = v80;
        *(v70 + 96) = v81;
        *(v70 + 192) = v87;
        *(v70 + 160) = v85;
        *(v70 + 176) = v86;
        ++v15;
        *(v70 + 144) = v84;
        v49 += 168;
        v51 = (v51 + 168);
        ++v50;
        v12 = v76;
        if (v74 != v76)
        {
          continue;
        }
      }

      goto LABEL_41;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:

  swift_unknownObjectRelease();

  memcpy(v90, __dst, sizeof(v90));
  outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s8PaperKit14ReflowTextLineV_ACtMd, &_s8PaperKit14ReflowTextLineV_ACtMR);
  __break(1u);
LABEL_52:
  memcpy(v90, __dst, sizeof(v90));
  outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s8PaperKit14ReflowTextLineV_ACtMd, &_s8PaperKit14ReflowTextLineV_ACtMR);

  swift_unknownObjectRelease();

  __break(1u);
}

void closure #3 in ReflowLayoutManager.init(contents:frame:strokesToReflow:)(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat MaxX@<D2>, CGFloat Width@<D3>)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of Date?(__dst, &v24, &_s8PaperKit14ReflowTextLineV_ACtMd, &_s8PaperKit14ReflowTextLineV_ACtMR);
  outlined destroy of ReflowTextLine(&__dst[10] + 8);
  v11 = *&__dst[0];
  v33 = __dst[0];
  v34 = __dst[1];
  v29 = *(&__dst[6] + 8);
  v30 = *(&__dst[7] + 8);
  v31 = *(&__dst[8] + 8);
  v32 = *(&__dst[9] + 8);
  v25 = *(&__dst[2] + 8);
  v26 = *(&__dst[3] + 8);
  v27 = *(&__dst[4] + 8);
  v28 = *(&__dst[5] + 8);
  if (*&__dst[0] >> 62)
  {
    v12 = __CocoaSet.count.getter();
    v13 = 0.0;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = *((*&__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = 0.0;
    if (!v12)
    {
LABEL_17:
      v19 = v34;
      *a1 = v33;
      *(a1 + 1) = v19;
      *(a1 + 4) = v13;
      v20 = v30;
      *(a1 + 13) = v29;
      *(a1 + 15) = v20;
      v21 = v32;
      *(a1 + 17) = v31;
      *(a1 + 19) = v21;
      v22 = v26;
      *(a1 + 5) = v25;
      *(a1 + 7) = v22;
      v23 = v28;
      *(a1 + 9) = v27;
      *(a1 + 11) = v23;
      return;
    }
  }

  v14 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
LABEL_21:

    v15 = MEMORY[0x1DA6CE0C0](v14, v11);

    if (*(v15 + 136))
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v15 = *(v11 + 8 * v14 + 32);

  if (*(v15 + 136))
  {
    goto LABEL_16;
  }

LABEL_8:
  v36.origin.x = a3;
  v36.origin.y = a4;
  v36.size.width = MaxX;
  v36.size.height = Width;
  Width = CGRectGetWidth(v36);
  MaxX = CGRectGetMaxX(*(v15 + 16));
  v11 = *(&__dst[10] + 1);
  if (*(&__dst[10] + 1) >> 62)
  {
    goto LABEL_25;
  }

  if (!*((*(&__dst[10] + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1DA6CE0C0](0, v11);
    goto LABEL_13;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v11 + 32);

LABEL_13:
    v17 = Width - MaxX;
    if (CGRectGetWidth(*(v16 + 16)) + 15.0 < v17)
    {
      v18 = CGRectGetWidth(*(v16 + 16));

      v13 = v17 - (v18 * 0.5 + 15.0);
      goto LABEL_17;
    }

LABEL_16:

    goto LABEL_17;
  }

  __break(1u);
}

BOOL ReflowLayoutManager.canReplaceStrokesAtomically(_:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v38 = a1;
  if (!a1[2])
  {
    return 1;
  }

  swift_beginAccess();
  v33 = *(v1 + 80);
  v9 = v33;
  v10 = v33 & 0xFFFFFFFFFFFFFF8;
  if (v33 >> 62)
  {
LABEL_33:
    v11 = __CocoaSet.count.getter();
    v9 = v33;
  }

  else
  {
    v11 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v9 + 32;
  v41 = v9 & 0xC000000000000001;
  v12 = (v37 + 8);

  v13 = 0;
  v14 = 0;
  v35 = v11;
  v36 = v10;
  while (2)
  {
    v34 = v13;
    if (v14 != v11)
    {
      while (1)
      {
        while (1)
        {
          if (v41)
          {
            v15 = MEMORY[0x1DA6CE0C0](v14, v33);
            v16 = __OFADD__(v14++, 1);
            if (v16)
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v14 >= *(v10 + 16))
            {
              goto LABEL_32;
            }

            v15 = *(v40 + 8 * v14);

            v16 = __OFADD__(v14++, 1);
            if (v16)
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          type metadata accessor for ReflowWord();
          v17 = swift_dynamicCastClass();
          if (v17)
          {
            break;
          }

          if (v14 == v11)
          {
            goto LABEL_27;
          }
        }

        v42 = v14;
        v43 = v15;
        v18 = *(v17 + 288);
        v19 = *(v18 + 16);
        v20 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995478]);

        v21 = MEMORY[0x1DA6CD4F0](v19, v3, v20);
        v22 = v18;
        v44 = v21;
        v23 = *(v18 + 16);
        if (v23)
        {
          v24 = (*(v37 + 80) + 32) & ~*(v37 + 80);
          v39 = v22;
          v25 = v22 + v24;
          v26 = *(v37 + 72);
          v27 = *(v37 + 16);
          do
          {
            v27(v8, v25, v3);
            specialized Set._Variant.insert(_:)(v5, v8);
            (*v12)(v5, v3);
            v25 += v26;
            --v23;
          }

          while (v23);

          v21 = v44;
          v11 = v35;
          v10 = v36;
        }

        else
        {
        }

        if ((specialized Set.isDisjoint(with:)(v38, v21) & 1) == 0)
        {
          break;
        }

        v14 = v42;
        if (v42 == v11)
        {
          goto LABEL_27;
        }
      }

      specialized Set.isSubset(of:)(v38, v21);
      v29 = v28;

      if ((v29 & 1) == 0)
      {

        return 0;
      }

      v30 = v21[2];

      v16 = __OFADD__(v34, v30);
      v13 = v34 + v30;
      v14 = v42;
      if (!v16)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_27:

  return v34 == v38[2];
}

uint64_t specialized Set.isDisjoint(with:)(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v34 - v11;
  v12 = a2[2];
  if (!v12)
  {
    return 1;
  }

  v13 = a1[2];
  if (!v13)
  {
    return 1;
  }

  if (v12 >= v13)
  {
    v14 = a1;
  }

  else
  {
    v14 = a2;
  }

  if (v12 < v13)
  {
    a2 = a1;
  }

  v15 = v14 + 7;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14[7];
  v19 = (v16 + 63) >> 6;
  v43 = v5 + 16;
  v38 = v5 + 32;
  v39 = v14;
  v41 = a2 + 7;
  v20 = (v5 + 8);

  v44 = a2;

  v22 = 0;
  v35 = v19;
  v36 = v15;
  v37 = v5;
  while (v18)
  {
LABEL_18:
    v24 = v40;
    v25 = v39[6];
    v42 = *(v5 + 72);
    v26 = *(v5 + 16);
    v26(v40, v25 + v42 * (__clz(__rbit64(v18)) | (v22 << 6)), v4);
    (*(v5 + 32))(v45, v24, v4);
    if (v44[2])
    {
      v27 = v44;
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995478]);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = -1 << *(v27 + 32);
      v30 = v28 & ~v29;
      if ((*(v41 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = ~v29;
        while (1)
        {
          v26(v7, v44[6] + v30 * v42, v4);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995480]);
          v32 = dispatch thunk of static Equatable.== infix(_:_:)();
          v33 = *v20;
          (*v20)(v7, v4);
          if (v32)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v41 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v33(v45, v4);
        return 0;
      }
    }

LABEL_12:
    v18 &= v18 - 1;
    result = (*v20)(v45, v4);
    v15 = v36;
    v5 = v37;
    v19 = v35;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return 1;
    }

    v18 = v15[v23];
    ++v22;
    if (v18)
    {
      v22 = v23;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void ReflowLayoutManager.replaceStrokes(_:with:)(uint64_t a1, unint64_t a2)
{
  v134 = a1;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v118 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v117 - v5;
  v133 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR);
  v119 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v131 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v117 - v9;
  v10 = type metadata accessor for IndexSet();
  v120 = *(v10 - 8);
  v121 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = a2;

  v126 = v12;
  IndexSet.init()();
  swift_beginAccess();
  v125 = v2;
  v13 = *(v2 + 80);
  if (v13 >> 62)
  {
    goto LABEL_69;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v124 = a2;

  if (v14)
  {
    v15 = 0;
    v142 = 0;
    v137 = v13 & 0xFFFFFFFFFFFFFF8;
    v138 = (v13 & 0xC000000000000001);
    v127 = v119 + 8;
    v128 = (v119 + 16);
    v129 = v14;
    v130 = v13;
    v16 = (v119 + 8);
    while (1)
    {
      if (v138)
      {
        a2 = MEMORY[0x1DA6CE0C0](v15, v13);
        v3 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *(v137 + 16))
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          v14 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        a2 = *(v13 + 8 * v15 + 32);

        v3 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_15;
        }
      }

      type metadata accessor for ReflowWord();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        v140 = v3;
        v141 = a2;
        v19 = *(v17 + 280);
        v20 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v21 = *v128;
        v22 = v19 + v20;
        v23 = v135;
        v24 = v136;
        (*v128)(v135, v22, v136);
        v25 = v132;
        Capsule.root.getter();
        v139 = *v16;
        (v139)(v23, v24);
        v26 = *(v18 + 280);
        v27 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v28 = v26 + v27;
        v12 = v131;
        v29 = (v21)(v131, v28, v24);
        MEMORY[0x1EEE9AC00](v29);
        *(&v117 - 2) = v134;
        *(&v117 - 1) = v12;
        v30 = v142;
        LOBYTE(v26) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Ref<>.containsStrokes<A>(_:in:), (&v117 - 4));
        v142 = v30;
        _s8PaperKit15PKDrawingStructVWOhTm_1(v25, type metadata accessor for PKDrawingStruct);
        (v139)(v12, v24);
        if (v26)
        {
          IndexSet.insert(_:)(v15);
        }

        v14 = v129;
        v13 = v130;
        v3 = v140;
        a2 = v141;
      }

      ++v15;
      if (v3 == v14)
      {
        goto LABEL_17;
      }
    }
  }

  v142 = 0;
LABEL_17:

  v31 = IndexSet.isEmpty.getter();
  v32 = v124;
  if ((v31 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!(v124 >> 62))
  {
    if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

LABEL_71:
    v56 = type metadata accessor for ReflowLayoutManager.TextPosition();
    v57 = objc_allocWithZone(v56);
    *&v57[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = 0;
    v57[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = 0;
    v143.receiver = v57;
    v143.super_class = v56;
    objc_msgSendSuper2(&v143, sel_init);
LABEL_238:
    (*(v120 + 8))(v126, v121);

    return;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_71;
  }

LABEL_20:
  v33 = IndexSet.first.getter();
  if ((v34 & 1) == 0)
  {
    v35 = v33;
    v36 = IndexSet.last.getter();
    if ((v37 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v38 = v125;
  swift_beginAccess();
  v39 = *(v38 + 176);
  v152[0] = *(v38 + 160);
  v152[1] = v39;
  v153[0] = *(v38 + 192);
  *(v153 + 11) = *(v38 + 203);
  v40 = *&v152[0];
  if (!*&v152[0])
  {
    goto LABEL_59;
  }

  v3 = BYTE8(v152[0]);
  v13 = *(v38 + 80);
  v32 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
    v41 = __CocoaSet.count.getter();
  }

  else
  {
    v41 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = &_s8PaperKit23ReflowSpacingAdjustmentVSgMd;
  outlined init with copy of Date?(v152, v149, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
  outlined init with copy of Date?(v152, v149, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
  v35 = v13 & 0xC000000000000001;

  v42 = -v41;
  v14 = 4;
  while (1)
  {
    if (v42 + v14 == 4)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v152, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);

      outlined destroy of StocksKitCurrencyCache.Provider?(v152, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
LABEL_59:
      v49 = type metadata accessor for ReflowLayoutManager.TextPosition();
      v50 = objc_allocWithZone(v49);
      *&v50[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = 0;
      v50[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = 0;
      v151.receiver = v50;
      v151.super_class = v49;
      objc_msgSendSuper2(&v151, sel_init);
      goto LABEL_238;
    }

    a2 = v14 - 4;
    if (!v35)
    {
      break;
    }

    v12 = MEMORY[0x1DA6CE0C0](v14 - 4, v13);
    swift_unknownObjectRelease();
    if (v12 == v40)
    {
      goto LABEL_34;
    }

LABEL_30:
    ++v14;
    if (__OFADD__(a2, 1))
    {
      goto LABEL_68;
    }
  }

  if (a2 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_67;
  }

  if (*(v13 + 8 * v14) != v40)
  {
    goto LABEL_30;
  }

LABEL_34:
  outlined destroy of StocksKitCurrencyCache.Provider?(v152, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);

  type metadata accessor for ReflowSpace();
  v12 = swift_allocObject();
  *(v12 + 160) = 1;
  *(v12 + 152) = 0;
  UnknownCanvasElementView.flags.modify();
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0;
  *(v12 + 104) = v43;
  *(v12 + 112) = v44;
  *(v12 + 120) = -1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = xmmword_1D40671D0;
  *(v12 + 48) = 0u;
  if ((v3 & 1) == 0)
  {
    MEMORY[0x1DA6CD190]();
    if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_92;
    }

    goto LABEL_62;
  }

  if (v124 >> 62)
  {
    goto LABEL_90;
  }

LABEL_36:
  v45 = &v154;
  specialized Array.replaceSubrange<A>(_:with:)(0, 0, v12);

  v12 = *(v125 + 80);
  if ((v12 & 0xC000000000000001) == 0)
  {
    if (a2 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_39;
    }

    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  MEMORY[0x1DA6CE0C0](a2, v12);

LABEL_39:
  type metadata accessor for ReflowWord();
  v46 = swift_dynamicCastClass();
  if (v46)
  {
    *(v46 + 136) = 0;
  }

  v14 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    while (1)
    {
      v12 = v154;
      v3 = v125;
      swift_beginAccess();

      specialized Array.replaceSubrange<A>(_:with:)(v14, v14, v12);
      swift_endAccess();

      v51 = *(v3 + 176);
      v149[0] = *(v3 + 160);
      v149[1] = v51;
      v150[0] = *(v3 + 192);
      *(v150 + 11) = *(v3 + 203);
      *(v3 + 160) = 0u;
      *(v3 + 176) = 0u;
      *(v3 + 192) = 0u;
      *(v3 + 203) = 0u;
      outlined destroy of StocksKitCurrencyCache.Provider?(v149, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
      if (v12 >> 62)
      {
LABEL_86:
        v59 = __CocoaSet.count.getter();
        v53 = __OFADD__(a2, v59);
        a2 += v59;
        if (!v53)
        {
LABEL_65:
          v54 = type metadata accessor for ReflowLayoutManager.TextPosition();
          v55 = objc_allocWithZone(v54);
          *&v55[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = a2;
          v55[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = 0;
          v148.receiver = v55;
          v148.super_class = v54;
          objc_msgSendSuper2(&v148, sel_init);
          outlined destroy of StocksKitCurrencyCache.Provider?(v152, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
          goto LABEL_238;
        }
      }

      else
      {
        v52 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v53 = __OFADD__(a2, v52);
        a2 += v52;
        if (!v53)
        {
          goto LABEL_65;
        }
      }

      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_92:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_62:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = a2;
    }
  }

  __break(1u);
LABEL_44:
  v40 = v36;
  v47 = *(v125 + 80);
  if ((v47 & 0xC000000000000001) != 0)
  {

    v12 = MEMORY[0x1DA6CE0C0](v35, v47);

    goto LABEL_48;
  }

  if (v35 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v35 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_86;
    }

    v12 = *(v47 + 8 * v35 + 32);

LABEL_48:
    v3 = *(v12 + 120);

    v131 = (v32 >> 62);
    if (!(v32 >> 62))
    {
      v45 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_76;
      }

LABEL_50:
      if (v45 >= 1)
      {

        for (i = 0; i != v45; ++i)
        {
          if ((v32 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1DA6CE0C0](i, v32);
          }

          else
          {
            v12 = *(v32 + 8 * i + 32);
          }

          type metadata accessor for ReflowWord();
          if (swift_dynamicCastClass())
          {
            *(v12 + 120) = v3;
          }
        }

        v14 = v40;
        goto LABEL_99;
      }

      goto LABEL_89;
    }
  }

  v45 = __CocoaSet.count.getter();
  if (v45)
  {
    goto LABEL_50;
  }

LABEL_76:
  v14 = v40 + 1;
  if (__OFADD__(v40, 1))
  {
    goto LABEL_95;
  }

  v58 = *(v125 + 80);
  if (v58 >> 62)
  {
LABEL_96:
    if (v14 >= __CocoaSet.count.getter())
    {
      goto LABEL_97;
    }

LABEL_79:
    v12 = *(v125 + 80);
    if ((v12 & 0xC000000000000001) == 0)
    {
      if (v14 < 0)
      {
        __break(1u);
      }

      else if (v14 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v45 = *(v12 + 8 * v14 + 32);

LABEL_83:
        type metadata accessor for ReflowSpace();
        v12 = swift_dynamicCastClass();

        if (!v12)
        {
          goto LABEL_98;
        }

        v45 = v126;
        IndexSet.insert(_:)(v14);
        goto LABEL_99;
      }

      __break(1u);
      goto LABEL_254;
    }

LABEL_251:

    v45 = MEMORY[0x1DA6CE0C0](v14, v12);

    goto LABEL_83;
  }

  if (v14 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_79;
  }

LABEL_97:

LABEL_98:
  v14 = v40;
LABEL_99:
  if (v14 < v35)
  {
    goto LABEL_219;
  }

  v32 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
LABEL_220:
    __break(1u);
LABEL_221:
    if (__CocoaSet.count.getter() < v35)
    {
      goto LABEL_222;
    }

LABEL_103:
    if (v35 < 0)
    {
      goto LABEL_223;
    }

    v60 = v45 & 0xFFFFFFFFFFFFFF8;
    if (v14)
    {
      v61 = __CocoaSet.count.getter();
    }

    else
    {
      v61 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v61 < v32)
    {
      goto LABEL_224;
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_225;
    }

    if ((v45 & 0xC000000000000001) == 0)
    {
      goto LABEL_112;
    }

    if (v32 < v35)
    {
      __break(1u);
      goto LABEL_240;
    }

    if (v35 != v32)
    {
      if (v35 >= v32)
      {
        __break(1u);
LABEL_250:
        __break(1u);
        goto LABEL_251;
      }

      v12 = type metadata accessor for ReflowElement();
      swift_bridgeObjectRetain_n();
      v62 = v35;
      do
      {
        v63 = v62 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v62);
        v62 = v63;
      }

      while (v32 != v63);
    }

    else
    {
LABEL_112:
      swift_bridgeObjectRetain_n();
    }

    v132 = v40;

    if (v14)
    {
      v14 = _CocoaArrayWrapper.subscript.getter();
      v65 = v66;
      v40 = v67;
      v12 = v68;

      v64 = v14;
      v45 = v12 >> 1;
    }

    else
    {
      v64 = v45 & 0xFFFFFFFFFFFFFF8;
      v65 = (v45 & 0xFFFFFFFFFFFFFF8) + 32;
      v40 = v35;
      v45 = v32;
    }

    v137 = v32;
    v133 = v64;
    v134 = v35;
    swift_unknownObjectRetain();
    v69 = v45 - v40;
    if (v45 == v40)
    {
      v3 = MEMORY[0x1E69E7CC0];
LABEL_121:
      swift_unknownObjectRelease_n();
      v12 = *(v125 + 80);
      v60 = v12 & 0xFFFFFFFFFFFFFF8;
      v14 = v12 >> 62;
      if (v12 >> 62)
      {
        goto LABEL_226;
      }

      v70 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v71 = v134;
      if (v70 < v134)
      {
        __break(1u);
      }

      else
      {
LABEL_123:
        if (v70 >= v137)
        {
          if ((v12 & 0xC000000000000001) == 0)
          {
LABEL_127:
            swift_bridgeObjectRetain_n();
LABEL_154:

            if (v14)
            {
              v45 = _CocoaArrayWrapper.subscript.getter();
              v40 = v94;
              v35 = v95;
              v32 = v96;

              if ((v32 & 1) == 0)
              {
                goto LABEL_157;
              }
            }

            else
            {
              v45 = v12 & 0xFFFFFFFFFFFFFF8;
              v40 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
              v32 = (2 * v137) | 1;
              v35 = v71;
            }

            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v99 = swift_dynamicCastClass();
            if (!v99)
            {
              swift_unknownObjectRelease();
              v99 = MEMORY[0x1E69E7CC0];
            }

            v100 = *(v99 + 16);

            if (__OFSUB__(v32 >> 1, v35))
            {
              goto LABEL_247;
            }

            if (v100 != (v32 >> 1) - v35)
            {
              goto LABEL_248;
            }

            v32 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            v12 = v124;
            v14 = v132;
            if (v32)
            {
              goto LABEL_165;
            }

            v32 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              swift_unknownObjectRelease();
LABEL_165:
              v45 = *(v125 + 80);
              if ((v45 & 0xC000000000000001) != 0)
              {
LABEL_233:

                v40 = MEMORY[0x1DA6CE0C0](v14, v45);
              }

              else
              {
                if (v14 < 0)
                {
                  __break(1u);
LABEL_235:
                  __break(1u);
                  goto LABEL_236;
                }

                if (v14 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_235;
                }

                v40 = *(v45 + 8 * v14 + 32);
              }

              LODWORD(v14) = *(v40 + 136);

              swift_beginAccess();
              specialized Array.replaceSubrange<A>(_:with:)(v71, v137, v12);
              swift_endAccess();

              if ((v32 & 0x8000000000000000) == 0 && (v32 & 0x4000000000000000) == 0)
              {
                v45 = *(v32 + 16);
                if (!v45)
                {
                  goto LABEL_237;
                }

                goto LABEL_172;
              }

LABEL_236:
              v45 = __CocoaSet.count.getter();
              if (!v45)
              {
LABEL_237:

                v115 = type metadata accessor for ReflowLayoutManager.TextPosition();
                v116 = objc_allocWithZone(v115);
                *&v116[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = 0;
                v116[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = 0;
                v144.receiver = v116;
                v144.super_class = v115;
                objc_msgSendSuper2(&v144, sel_init);
                goto LABEL_238;
              }

LABEL_172:
              v140 = v32;
              LODWORD(v141) = v14;
              if ((v32 & 0xC000000000000001) != 0)
              {
LABEL_241:
                v14 = MEMORY[0x1DA6CE0C0](0, v32);
                if (__OFSUB__(v45, 1))
                {
                  goto LABEL_255;
                }

                v32 = MEMORY[0x1DA6CE0C0](v45 - 1, v140);
                v71 = v134;
              }

              else
              {
                v101 = *(v32 + 16);
                if (!v101)
                {
                  __break(1u);
LABEL_244:
                  __break(1u);
LABEL_245:
                  __break(1u);
                  goto LABEL_246;
                }

                v102 = v45 - 1;
                if (__OFSUB__(v45, 1))
                {
                  goto LABEL_244;
                }

                if (v102 >= v101)
                {
                  goto LABEL_245;
                }

                v14 = *(v32 + 32);
                v32 = *(v32 + 32 + 8 * v102);
              }

              v147 = 0;
              v35 = v125;
              swift_beginAccess();
              v45 = *(v35 + 96);
              v40 = *(v45 + 16);
              if (v40)
              {
                swift_beginAccess();
                v12 = 0;
                v103 = 32;
                do
                {
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v35 + 96) = v45;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
                    *(v125 + 96) = v45;
                  }

                  if (v12 >= *(v45 + 16))
                  {
                    goto LABEL_213;
                  }

                  ++v12;
                  specialized modifyLayoutLine #1 (layoutLine:) in ReflowLayoutManager.replaceStrokes(_:with:)((v45 + v103), &v147, v14, v32);
                  v35 = v125;
                  *(v125 + 96) = v45;
                  v103 += 168;
                }

                while (v40 != v12);
                swift_endAccess();
                v71 = v134;
              }

              v105 = v125;
              swift_beginAccess();
              v40 = *(v105 + 88);
              *(v105 + 88) = v45;

              if (v141)
              {
                v145 = v124;
                if (v131)
                {
                  v106 = __CocoaSet.count.getter();
                  if (!v106)
                  {
LABEL_199:
                    v71 = v134;
                    goto LABEL_203;
                  }
                }

                else
                {
                  v106 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!v106)
                  {
                    goto LABEL_199;
                  }
                }

                v107 = v124 & 0xC000000000000001;
                v12 = v124 & 0xFFFFFFFFFFFFFF8;
                v45 = v124 + 32;
                while (1)
                {
                  v53 = __OFSUB__(v106--, 1);
                  if (v53)
                  {
                    goto LABEL_216;
                  }

                  if (v107)
                  {
                    v40 = MEMORY[0x1DA6CE0C0](v106, v124);
                  }

                  else
                  {
                    if ((v106 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_217;
                    }

                    if (v106 >= *(v12 + 16))
                    {
                      goto LABEL_218;
                    }

                    v40 = *(v45 + 8 * v106);
                  }

                  type metadata accessor for ReflowWord();
                  v35 = swift_dynamicCastClass();

                  if (v35)
                  {
                    break;
                  }

                  if (!v106)
                  {
                    goto LABEL_199;
                  }
                }

                MEMORY[0x1EEE9AC00](v108);
                *(&v117 - 2) = &v145;
                v155 = v106;
                v109 = v142;
                partial apply for specialized closure #1 in BidirectionalCollection.last(where:)(&v155, &v156);
                if (v109)
                {
                  goto LABEL_256;
                }

                v71 = v134;
                if (v156)
                {
                  *(v156 + 136) = 1;
                }
              }

LABEL_203:
              _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v3);

              if (v71)
              {
                v45 = v71 - 1;
                if (!v131)
                {
                  goto LABEL_205;
                }
              }

              else
              {
                v45 = 0;
                if (!v131)
                {
LABEL_205:
                  v110 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_208;
                }
              }

              v110 = __CocoaSet.count.getter();
LABEL_208:
              v111 = v45 + v110;
              if (!__OFADD__(v45, v110))
              {
                v112 = type metadata accessor for ReflowLayoutManager.TextPosition();
                v113 = objc_allocWithZone(v112);
                *&v113[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = v111;
                v113[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = v71 != 0;
                v146.receiver = v113;
                v146.super_class = v112;
                objc_msgSendSuper2(&v146, sel_init);

                (*(v120 + 8))(v126, v121);

                return;
              }

LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              swift_unknownObjectRelease_n();
LABEL_157:
              specialized _copyCollectionToContiguousArray<A>(_:)(v45, v40, v35, v32, v97);
              v32 = v98;
              v12 = v124;
              v14 = v132;
            }
          }

          if (v137 >= v71)
          {
            if (v71 == v137)
            {
              goto LABEL_127;
            }

            if (v71 < v137)
            {
              type metadata accessor for ReflowElement();
              swift_bridgeObjectRetain_n();
              v91 = v71;
              v92 = v137;
              do
              {
                v93 = v91 + 1;
                _ArrayBuffer._typeCheckSlowPath(_:)(v91);
                v91 = v93;
              }

              while (v92 != v93);
              goto LABEL_154;
            }

            goto LABEL_250;
          }

LABEL_240:
          __break(1u);
          goto LABEL_241;
        }
      }

      __break(1u);
      goto LABEL_233;
    }

    v139 = (v119 + 8);
    v140 = (v119 + 16);
    v138 = (v118 + 8);
    if (v40 <= v45)
    {
      v72 = v45;
    }

    else
    {
      v72 = v40;
    }

    v35 = v72 - v40;
    v32 = &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd;
    v73 = v65 + 8 * v40;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (!v35)
      {
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
        goto LABEL_220;
      }

      v141 = v69;
      type metadata accessor for ReflowWord();
      v75 = swift_dynamicCastClass();
      if (v75)
      {
        v76 = *(v75 + 280);
        v77 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v78 = v76 + v77;
        v79 = v135;
        v80 = v32;
        v81 = v3;
        v82 = v136;
        (*v140)(v135, v78, v136);
        swift_getKeyPath();

        v83 = v122;
        Capsule.subscript.getter();

        v84 = v82;
        v3 = v81;
        v32 = v80;
        (*v139)(v79, v84);
        __swift_instantiateConcreteTypeFromMangledNameV2(v80, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
        v85 = v123;
        v86 = v142;
        v45 = CROrderedSet.map<A>(_:)();
        v142 = v86;

        (*v138)(v83, v85);
      }

      else
      {
        v45 = MEMORY[0x1E69E7CC0];
      }

      v40 = *(v45 + 16);
      v12 = *(v3 + 16);
      v14 = v12 + v40;
      if (__OFADD__(v12, v40))
      {
        goto LABEL_211;
      }

      v87 = swift_isUniquelyReferenced_nonNull_native();
      if (v87 && v14 <= *(v3 + 24) >> 1)
      {
        if (!*(v45 + 16))
        {
          goto LABEL_132;
        }
      }

      else
      {
        if (v12 <= v14)
        {
          v88 = v12 + v40;
        }

        else
        {
          v88 = v12;
        }

        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v87, v88, 1, v3);
        if (!*(v45 + 16))
        {
LABEL_132:

          v74 = v141;
          if (v40)
          {
            goto LABEL_212;
          }

          goto LABEL_133;
        }
      }

      v12 = *(v3 + 16);
      v14 = (*(v3 + 24) >> 1) - v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(v32, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
      if (v14 < v40)
      {
        goto LABEL_214;
      }

      swift_arrayInitWithCopy();

      v74 = v141;
      if (v40)
      {
        v89 = *(v3 + 16);
        v53 = __OFADD__(v89, v40);
        v90 = v89 + v40;
        if (v53)
        {
          goto LABEL_215;
        }

        *(v3 + 16) = v90;
      }

LABEL_133:
      --v35;
      v73 += 8;
      v69 = v74 - 1;
      if (!v69)
      {
        goto LABEL_121;
      }
    }
  }

  v45 = *(v125 + 80);
  v60 = v45 & 0xFFFFFFFFFFFFFF8;
  v14 = v45 >> 62;
  if (v45 >> 62)
  {
    goto LABEL_221;
  }

  if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v35)
  {
    goto LABEL_103;
  }

LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  if ((v12 & 0x8000000000000000) != 0)
  {
    v45 = v12;
  }

  else
  {
    v45 = v60;
  }

  v114 = __CocoaSet.count.getter();
  v71 = v134;
  if (v114 >= v134)
  {
    v70 = __CocoaSet.count.getter();
    goto LABEL_123;
  }

LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:
  __break(1u);
}

uint64_t closure #1 in closure #1 in ReflowLayoutManager.replaceStrokes(_:with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E69953B8]);
  return WeakRef.init<A>(_:)();
}

void specialized modifyLayoutLine #1 (layoutLine:) in ReflowLayoutManager.replaceStrokes(_:with:)(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_beginAccess();
  v9 = *a1;
  if (*a2)
  {
    v36[0] = a4;
    MEMORY[0x1EEE9AC00](v8);
    v34 = v36;
    v10 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v33, v9);
    if (v12)
    {

      a2 = MEMORY[0x1E69E7CC0];
      *a1 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v20 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      if (v20 < 0)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      specialized Array.replaceSubrange<A>(_:with:)(0, v11, v20);
      swift_beginAccess();
      *a2 = 0;
      a2 = *a1;
    }

    v21 = a2 >> 62;
    if (a2 >> 62)
    {
      v22 = __CocoaSet.count.getter();
      if (!v22)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_70;
      }
    }

    v23 = v22 - 1;
    if (__OFSUB__(v22, 1))
    {
      __break(1u);
    }

    else if ((a2 & 0xC000000000000001) == 0)
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v23 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_31:
        type metadata accessor for ReflowSpace();
        v24 = swift_dynamicCastClass();

        if (!v24)
        {
          goto LABEL_71;
        }

        if (v21)
        {
          v25 = __CocoaSet.count.getter();
        }

        else
        {
          v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v25)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v21 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          a2 = specialized _ArrayBuffer._consumeAndCreateNew()();
        }

        v27 = a2 & 0xFFFFFFFFFFFFFF8;
        v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_63;
        }

        __break(1u);
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_76;
    }

    MEMORY[0x1DA6CE0C0](v23, a2);
    goto LABEL_31;
  }

  if (v9 >> 62)
  {
LABEL_66:
    v8 = __CocoaSet.count.getter();
    v13 = v8;
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  while (v13 != v14)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1DA6CE0C0](v14, v9);
      v8 = swift_unknownObjectRelease();
      if (v35 == a3)
      {
LABEL_15:
        a3 = v14;
        goto LABEL_17;
      }
    }

    else
    {
      if (v14 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (*(v9 + 8 * v14 + 32) == a3)
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(v14++, 1))
    {
      goto LABEL_65;
    }
  }

  a3 = 0;
LABEL_17:
  v36[0] = a4;
  MEMORY[0x1EEE9AC00](v8);
  v34 = v36;
  v16 = specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v33, v9);
  if (v13 == v14)
  {
    goto LABEL_47;
  }

  if (v17)
  {
    if (!(v9 >> 62))
    {
      v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
      if (v19 < a3)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      specialized Array.replaceSubrange<A>(_:with:)(a3, v18, v19);
      swift_beginAccess();
      *a2 = 1;
LABEL_47:
      a2 = *a1;
      v21 = *a1 >> 62;
      if (v21)
      {
        v29 = __CocoaSet.count.getter();
        if (v29)
        {
LABEL_49:
          v23 = v29 - 1;
          if (!__OFSUB__(v29, 1))
          {
            if ((a2 & 0xC000000000000001) == 0)
            {
              if ((v23 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v23 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {

                goto LABEL_54;
              }

              __break(1u);
              goto LABEL_80;
            }

LABEL_77:

            MEMORY[0x1DA6CE0C0](v23, a2);
LABEL_54:
            type metadata accessor for ReflowSpace();
            v30 = swift_dynamicCastClass();

            if (v30)
            {
              if (v21)
              {
                v31 = __CocoaSet.count.getter();
              }

              else
              {
                v31 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v31)
              {
                v32 = swift_isUniquelyReferenced_nonNull_bridgeObject();
                if (v21 || (v32 & 1) == 0)
                {
                  a2 = specialized _ArrayBuffer._consumeAndCreateNew()();
                }

                v27 = a2 & 0xFFFFFFFFFFFFFF8;
                v28 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v28)
                {
LABEL_63:
                  *(v27 + 16) = v28 - 1;

                  goto LABEL_71;
                }

                goto LABEL_84;
              }

LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

LABEL_71:

            a1[1] = a2;
            return;
          }

LABEL_76:
          __break(1u);
          goto LABEL_77;
        }
      }

      else
      {
        v29 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
          goto LABEL_49;
        }
      }

LABEL_70:

      goto LABEL_71;
    }

LABEL_44:
    v19 = __CocoaSet.count.getter();
    goto LABEL_45;
  }

  if (v16 < a3)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (!__OFADD__(v16, 1))
  {
    specialized Array.replaceSubrange<A>(_:with:)(a3, v18, v16 + 1);
    goto LABEL_47;
  }

LABEL_87:
  __break(1u);
}

Swift::Void __swiftcall ReflowLayoutManager.layoutText(contents:lines:)(Swift::OpaquePointer contents, Swift::OpaquePointer lines)
{
  v3 = *(MEMORY[0x1E695F050] + 16);
  *(v2 + 120) = *MEMORY[0x1E695F050];
  *(v2 + 136) = v3;
  v136 = *(lines._rawValue + 2);
  if (!v136)
  {
    return;
  }

  v4 = v2;
  rawValue = lines._rawValue;
  v6 = *(lines._rawValue + 11);
  v7 = v172;
  *&v215[64] = *(lines._rawValue + 10);
  *&v215[80] = v6;
  v216 = *(lines._rawValue + 24);
  v8 = *(lines._rawValue + 7);
  *v215 = *(lines._rawValue + 6);
  *&v215[16] = v8;
  v9 = *(lines._rawValue + 9);
  *&v215[32] = *(lines._rawValue + 8);
  *&v215[48] = v9;
  v10 = *(lines._rawValue + 3);
  *v213 = *(lines._rawValue + 2);
  *&v213[16] = v10;
  v11 = *(lines._rawValue + 5);
  *&v213[32] = *(lines._rawValue + 4);
  v214 = v11;
  v12 = *&v213[32];
  swift_beginAccess();
  v13 = MEMORY[0x1E69E7CC0];
  *(v2 + 96) = MEMORY[0x1E69E7CC0];
  outlined init with copy of ReflowTextLine(v213, &v219);

  outlined init with copy of ReflowTextLine(v213, &v219);

  *&v212[112] = *&v215[64];
  *&v212[128] = *&v215[80];
  *&v212[48] = *v215;
  *&v212[64] = *&v215[16];
  *&v212[80] = *&v215[32];
  *&v212[96] = *&v215[48];
  *(&v211 + 1) = *&v213[8];
  *v212 = *&v213[16];
  *&v212[16] = *&v213[32];
  *&v212[32] = v214;
  *&v212[144] = v216;
  *&v211 = v13;
  Width = CGRectGetWidth(*(v2 + 16));
  v148 = vabdd_f64(Width, CGRectGetWidth(*(v2 + 48)));
  v15 = v12 - v148;
  v17 = *(&v214 + 1);
  v16 = *&v214;
  height = 0.0;
  if (v12 - v148 < 0.0)
  {
    v15 = 0.0;
  }

  v19 = *&v215[88];
  v20 = *v215;
  v21 = *&v213[40];
  v145 = *&v213[16];
  *&v212[16] = v15;
  v207 = *&v213[8];
  v208 = *&v213[24];
  v203 = *&v215[40];
  v204 = *&v215[56];
  v205 = *&v215[72];
  v206 = *&v215[88];
  v201 = *&v215[8];
  v202 = *&v215[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D405CEB0;
  type metadata accessor for ReflowSpace();
  v23 = swift_allocObject();
  *(v23 + 160) = 1;
  v24 = v209;
  *(v23 + 152) = 0;
  UnknownCanvasElementView.flags.modify();
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  *(v23 + 96) = 0;
  *(v23 + 104) = v25;
  *(v23 + 112) = v26;
  *(v23 + 120) = -1;
  *(v23 + 128) = 0;
  *(v23 + 136) = 0;
  *(v23 + 144) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 40) = 0x4000000000000000;
  *(v22 + 32) = v23;

  swift_beginAccess();
  v27 = *(v2 + 176);
  v209[0] = *(v2 + 160);
  *v210 = *(v2 + 192);
  *&v210[11] = *(v2 + 203);
  v209[1] = v27;
  v28 = *v210;
  v29 = *&v210[8];
  if (*&v209[0])
  {
    v220 = *(v2 + 168);
    v30 = *(v2 + 184);
    v219 = *&v209[0];
    *&v221 = v30;
    *(&v221 + 1) = *v210;
    v222 = *&v210[8];
    *&v223 = *(v2 + 208);
    *(&v223 + 7) = *(v2 + 215);
    v31 = COERCE_DOUBLE(&_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
    outlined init with copy of Date?(v209, &v190, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(&v219, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
    v33 = ReflowLayoutManager.spacingAdjustment.modify(&v190);
    if (*v32)
    {
      v31 = *&v32;
      v32[6] = specialized ReflowLayoutManager.closestLine(to:lines:)(rawValue, v28, v29);
      *(*&v31 + 56) = v34 & 1;
    }

    (v33)(&v190, 0);
  }

  else
  {
    v220 = *(v2 + 168);
    v35 = *(v2 + 184);
    v219 = 0;
    *&v221 = v35;
    *(&v221 + 1) = *v210;
    v222 = *&v210[8];
    *&v223 = *(v2 + 208);
    *(&v223 + 7) = *(v2 + 215);
    v33 = &_s8PaperKit23ReflowSpacingAdjustmentVSgMd;
    v31 = COERCE_DOUBLE(&_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
    outlined init with copy of Date?(v209, &v190, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
    outlined destroy of StocksKitCurrencyCache.Provider?(&v219, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
  }

  v36 = v17;
  if (contents._rawValue >> 62)
  {
    goto LABEL_122;
  }

  for (i = *((contents._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v38 = v21 + height;
    v16 = v16 - v19;
    v21 = v36 + height;
    v36 = v20 - v19;
    if (!i)
    {
      *&v44 = NAN;
      v28 = v38;
      v38 = v16;
      goto LABEL_110;
    }

    if (i < 1)
    {
      __break(1u);
      goto LABEL_124;
    }

    v132 = i;
    if ((contents._rawValue & 0xC000000000000001) != 0)
    {
      v39 = 0;
      v146 = MEMORY[0x1E69E7CC0];
      v28 = v38;
      v38 = v16;
      do
      {
        v31 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v39, contents._rawValue));
        type metadata accessor for ReflowWord();
        if (swift_dynamicCastClass() && (*(swift_dynamicCastClassUnconditional() + 136) & 1) != 0)
        {
          v41 = *(*&v31 + 120);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v146 + 2) + 1, 1, v146);
          }

          v43 = *(v146 + 2);
          v42 = *(v146 + 3);
          if (v43 >= v42 >> 1)
          {
            v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v146);
          }

          swift_unknownObjectRelease();
          *(v146 + 2) = v43 + 1;
          *&v146[8 * v43 + 32] = v41;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v39;
      }

      while (v132 != v39);
    }

    else
    {
      v45 = (contents._rawValue + 32);
      type metadata accessor for ReflowWord();
      v146 = MEMORY[0x1E69E7CC0];
      v46 = v132;
      v142 = v22;
      v28 = v38;
      v38 = v16;
      do
      {
        v31 = *v45;
        if (swift_dynamicCastClass() && *(swift_dynamicCastClassUnconditional() + 136) == 1)
        {
          v47 = *(*&v31 + 120);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v146 + 2) + 1, 1, v146);
          }

          v49 = *(v146 + 2);
          v48 = *(v146 + 3);
          if (v49 >= v48 >> 1)
          {
            v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v146);
          }

          *(v146 + 2) = v49 + 1;
          *&v146[8 * v49 + 32] = v47;
          v22 = v142;
        }

        ++v45;
        --v46;
      }

      while (v46);
    }

    v147 = 0;
    v33 = 0;
    v135 = rawValue + 32;
    v131 = rawValue + 352;
    *&v44 = NAN;
    v19 = 0.5;
    v40.n128_u64[0] = 0;
    v152 = v40;
    v24 = v209;
    v134 = v4;
LABEL_37:
    if ((contents._rawValue & 0xC000000000000001) == 0)
    {
      break;
    }

    *&v50 = COERCE_DOUBLE(MEMORY[0x1DA6CE0C0](v33, contents._rawValue));
    v53 = __OFADD__(v33++, 1);
    if (!v53)
    {
      goto LABEL_43;
    }

LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    ;
  }

  if (v33 >= *((contents._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_121;
  }

  v50 = *(contents._rawValue + v33 + 4);

  v53 = __OFADD__(v33++, 1);
  if (v53)
  {
    goto LABEL_120;
  }

LABEL_43:
  v130 = v33;
  v151 = v28;
  v16 = v36;
  v150 = *&v50;
  while (1)
  {
    v31 = *(v4 + 14);
    v54 = *(v4 + 11);
    v217[0] = *(v4 + 10);
    v217[1] = v54;
    v218[0] = *(v4 + 12);
    *(v218 + 11) = *(v4 + 203);
    v55 = *(v4 + 2);
    v56 = *(v4 + 3);
    v57 = *(v4 + 4);
    v58 = *(v4 + 5);
    rawValue = &_s8PaperKit23ReflowSpacingAdjustmentVSgMd;
    outlined init with copy of Date?(v217, &v190, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
    v233.origin.x = v55;
    v233.origin.y = v56;
    v233.size.width = v57;
    v233.size.height = v58;
    v59 = CGRectGetWidth(v233);
    v220 = v207;
    v221 = v208;
    v227 = v203;
    v228 = v204;
    v229 = v205;
    v225 = v201;
    v219 = v22;
    v20 = v151;
    v222 = v151;
    height = v38;
    *&v223 = v38;
    v28 = v21;
    *(&v223 + 1) = v21;
    v36 = v16;
    v224 = v16;
    v230 = v206;
    v226 = v202;
    v231 = v44;
    v60 = ReflowTextLine.add(_:textScalePercentage:spacingAdjustment:maxWidth:previousLine:adjustment:)(v50, *&v31, v217, &v219, v59, v148);
    outlined destroy of StocksKitCurrencyCache.Provider?(v217, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
    if (v60)
    {
      *&v50 = v150;
LABEL_36:
      v232 = CGRectUnion(*(v4 + 120), *(v50 + 48));
      x = v232.origin.x;
      y = v232.origin.y;
      v20 = v232.size.width;
      height = v232.size.height;

      *(v4 + 15) = x;
      *(v4 + 16) = y;
      *(v4 + 17) = v20;
      *(v4 + 18) = height;
      v33 = v130;
      v36 = v16;
      v28 = v151;
      if (v130 == v132)
      {
        goto LABEL_109;
      }

      goto LABEL_37;
    }

    v33 = v147;
    v61 = *(v146 + 2);
    v62 = (v146 + 32);
    v31 = v150;
    while (1)
    {
      rawValue = v61;
      if (!v61)
      {
        break;
      }

      v63 = *v62++;
      --v61;
      if (v63 == v147)
      {
        if (!__OFADD__(v147, 1))
        {
          v154 = *(*&v150 + 120) < v147 + 1;
          goto LABEL_51;
        }

LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }
    }

    v154 = 0;
LABEL_51:
    type metadata accessor for ReflowWord();
    v153 = swift_dynamicCastClass();
    *&v174[64] = *&v212[112];
    *&v174[80] = *&v212[128];
    *v174 = *&v212[48];
    *&v174[16] = *&v212[64];
    *&v174[32] = *&v212[80];
    *&v174[48] = *&v212[96];
    *v172 = v211;
    *&v172[16] = *v212;
    *&v172[32] = *&v212[16];
    v173 = *&v212[32];
    v177 = v207;
    v175 = *&v212[144];
    v176 = v22;
    v178 = v208;
    v179 = v151;
    v180 = v38;
    v181 = v21;
    v182 = v16;
    v185 = v203;
    v186 = v204;
    v187 = v205;
    v188 = v206;
    v183 = v201;
    v184 = v202;
    v189 = v44;
    outlined init with copy of ReflowTextLine(v172, &v190);
    outlined destroy of ReflowTextLine(&v176);
    v22 = *v172;
    v207 = *&v172[8];
    v208 = *&v172[24];
    v151 = *&v172[40];
    v21 = v173.f64[1];
    v38 = v173.f64[0];
    v16 = *v174;
    v203 = *&v174[40];
    v204 = *&v174[56];
    v205 = *&v174[72];
    v206 = *&v174[88];
    v201 = *&v174[8];
    v202 = *&v174[24];
    v64 = v175;
    v198 = *&v212[112];
    v199 = *&v212[128];
    v200 = *&v212[144];
    v194 = *&v212[48];
    v195 = *&v212[64];
    v196 = *&v212[80];
    v197 = *&v212[96];
    v190 = v211;
    v191 = *v212;
    v192 = *&v212[16];
    v193 = *&v212[32];
    swift_beginAccess();
    v31 = *(v4 + 12);
    outlined init with copy of ReflowTextLine(&v190, &v161);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 12) = v31;
    *&v149 = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v31 + 16) + 1, 1, *&v31));
      *(v4 + 12) = v31;
    }

    v44 = *(*&v31 + 16);
    v66 = *(*&v31 + 24);
    if (v44 >= v66 >> 1)
    {
      v31 = COERCE_DOUBLE(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v44 + 1, 1, *&v31));
    }

    *(*&v31 + 16) = v44 + 1;
    v67 = *&v31 + 168 * v44;
    v68 = v190;
    v69 = v192;
    *(v67 + 48) = v191;
    *(v67 + 64) = v69;
    *(v67 + 32) = v68;
    v70 = v193;
    v71 = v194;
    v72 = v196;
    *(v67 + 112) = v195;
    *(v67 + 128) = v72;
    *(v67 + 80) = v70;
    *(v67 + 96) = v71;
    v73 = v197;
    v74 = v198;
    v75 = v199;
    *(v67 + 192) = v200;
    *(v67 + 160) = v74;
    *(v67 + 176) = v75;
    *(v67 + 144) = v73;
    *(v4 + 12) = v31;
    swift_endAccess();
    v76 = v154;
    if (!v153)
    {
      v76 = 0;
    }

    if (v147 >= (v136 - 1) || v76)
    {
      break;
    }

    v77 = v147 + 1;
    *&v50 = v150;
    v78 = *(*&v150 + 120);
    v79 = v152;
    if (v147 + 1 >= v78)
    {
      v80 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v80 = MEMORY[0x1E69E7CC0];
      if (v147 < -1)
      {
        goto LABEL_118;
      }

      if (v78 - 1 >= v136)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v81 = (v131 + 168 * v147);
      v82 = ~v147 + v78;
      do
      {
        v83 = *v81;
        v81 += 21;
        v79.n128_f64[0] = v79.n128_f64[0] - v83;
        --v82;
      }

      while (v82);
      v77 = *(*&v150 + 120);
    }

    if (v77 >= v136)
    {
      __break(1u);
      goto LABEL_116;
    }

    v147 = v77;
    v88 = v135 + 168 * v77;
    v89 = *(v88 + 144);
    v158[6] = *(v88 + 128);
    v159 = v89;
    v160 = *(v88 + 160);
    v90 = *(v88 + 80);
    v158[2] = *(v88 + 64);
    v158[3] = v90;
    v91 = *(v88 + 112);
    v158[4] = *(v88 + 96);
    v158[5] = v91;
    v92 = *(v88 + 16);
    v156 = *v88;
    v157 = v92;
    v93 = *(v88 + 48);
    v158[0] = *(v88 + 32);
    v158[1] = v93;
    v152 = v79;
    v94 = *v158;
    v169 = *&v212[112];
    v170 = *&v212[128];
    v171 = *&v212[144];
    v165 = *&v212[48];
    v166 = *&v212[64];
    v167 = *&v212[80];
    v168 = *&v212[96];
    v161 = v211;
    v162 = *v212;
    v163 = *&v212[16];
    v164 = *&v212[32];
    outlined init with copy of ReflowTextLine(&v156, v155);
    outlined destroy of ReflowTextLine(&v161);

    *&v212[112] = v158[6];
    *&v212[128] = v159;
    *&v212[144] = v160;
    *&v212[48] = v158[2];
    *&v212[64] = v158[3];
    *&v212[80] = v158[4];
    *&v212[96] = v158[5];
    v211 = v156;
    *v212 = v157;
    *&v212[16] = v158[0];
    *&v212[32] = v158[1];
    v95 = 0.0;
    if (v94 - v148 >= 0.0)
    {
      v95 = v94 - v148;
    }

    *&v212[16] = v95;
    *&v211 = v80;
    v96.f64[0] = 0.0;
    *&v96.f64[1] = v152.n128_u64[0];
    *&v212[24] = vaddq_f64(v96, *(v158 + 8));
    *&v212[40] = vaddq_f64(v96, *(&v158[1] + 8));
    *&v212[56] = vaddq_f64(v96, *(&v158[2] + 8));
    *&v212[72] = vaddq_f64(v96, *(&v158[3] + 8));
    *&v212[88] = vaddq_f64(v96, *(&v158[4] + 8));
    *&v212[104] = vaddq_f64(v96, *(&v158[5] + 8));
    if (rawValue)
    {
      v145 = *&v157;
    }

    else
    {
      v97 = v145;
      if (*&v157 < v145)
      {
        v97 = *&v157;
      }

      v145 = v97;
    }

LABEL_102:
    v44 = v149;
    if (v154 && !v153)
    {
      goto LABEL_36;
    }
  }

  v143 = v22;
  v31 = *v172;
  if (!(*v172 >> 62))
  {
    v22 = *((*v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_67;
    }

LABEL_92:
    v33 = MEMORY[0x1E69E7CC0];
    v36 = *&v174[88];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      v4 = MEMORY[0x1E69E7CC0];
LABEL_94:
      v22 = v143;
      v31 = COERCE_DOUBLE(specialized Sequence<>.max()(v4));
      v99 = v98;

      if (v99)
      {
        v100 = 0.0;
        v101 = v36 > 0.0;
      }

      else
      {
        v100 = v31;
        v101 = v36 > v31;
      }

      v4 = v134;
      v33 = MEMORY[0x1E69E7CC0];
      *&v50 = v150;
      if (!v101)
      {
        goto LABEL_100;
      }

LABEL_99:
      v100 = v36;
    }

    else
    {

      v100 = 0.0;
      v22 = v143;
      *&v50 = v150;
      if (v36 > 0.0)
      {
        goto LABEL_99;
      }
    }

LABEL_100:
    v102 = v175;
    v169 = *&v212[112];
    v170 = *&v212[128];
    v165 = *&v212[48];
    v166 = *&v212[64];
    v167 = *&v212[80];
    v168 = *&v212[96];
    v161 = v211;
    v162 = *v212;
    v163 = *&v212[16];
    v164 = *&v212[32];
    v28 = *&v172[40] + 0.0;
    v144 = vaddq_f64(*&v100, v173);
    v141 = vaddq_f64(*&v100, *v174);
    v139 = *&v100;
    v140 = vaddq_f64(*&v100, *&v174[16]);
    v171 = *&v212[144];
    v20 = v100 + *&v174[64];
    v137 = *&v174[48];
    v138 = vaddq_f64(*&v100, *&v174[32]);
    outlined destroy of ReflowTextLine(&v161);
    v211 = v33;
    *&v212[8] = 0u;
    *&v212[136] = 0u;
    *&v212[120] = 0u;
    *&v212[32] = v144;
    *&v212[48] = v141;
    *&v212[64] = v140;
    *&v212[80] = v138;
    *&v212[96] = vaddq_f64(v139, v137);
    *&v212[24] = v28;
    *v212 = v145;
    *&v212[112] = v20;
    *&v212[136] = v36;
    if (__OFADD__(*&v102, 1))
    {
      goto LABEL_117;
    }

    *&v212[144] = *&v102 + 1;
    v103.n128_u64[1] = v152.n128_u64[1];
    v103.n128_f64[0] = v152.n128_f64[0] + v36;
    v152 = v103;
    goto LABEL_102;
  }

  v22 = __CocoaSet.count.getter();
  if (!v22)
  {
    goto LABEL_92;
  }

LABEL_67:
  v7 = 0;
  v24 = (*&v31 & 0xFFFFFFFFFFFFFF8);
  v4 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if ((*&v31 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA6CE0C0](v7, *&v31);
      v44 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_107;
      }

LABEL_71:
      v84 = swift_dynamicCastClass();
      if (v84)
      {
        v28 = (*(v84 + 256) + *(v84 + 272)) * 0.5 - (*(v84 + 224) + *(v84 + 240)) * 0.5;
        v85 = *(v84 + 280);

        [v85 _canvasBounds];
        v86 = CGRectGetHeight(v234);

        v36 = v28 * v86;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_73;
        }
      }

      else
      {

        v36 = 0.0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_73;
        }
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
LABEL_73:
      rawValue = *(v4 + 2);
      v87 = *(v4 + 3);
      if (rawValue >= v87 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), rawValue + 1, 1, v4);
      }

      *(v4 + 2) = rawValue + 1;
      *&v4[8 * rawValue + 32] = v36;
      v7 = (v7 + 1);
      if (v44 == v22)
      {
        v36 = *&v174[88];
        v24 = v209;
        v7 = v172;
        goto LABEL_94;
      }

      continue;
    }

    break;
  }

  if (v7 >= *((*&v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_108;
  }

  v44 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_71;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:

LABEL_110:
  v104 = v24[13];
  v7[30] = v24[12];
  v7[31] = v104;
  v200 = *&v212[144];
  v105 = v24[9];
  v7[26] = v24[8];
  v7[27] = v105;
  v106 = v24[11];
  v7[28] = v24[10];
  v7[29] = v106;
  v107 = v24[5];
  v7[22] = v24[4];
  v7[23] = v107;
  v108 = v24[7];
  v7[24] = v24[6];
  v7[25] = v108;
  swift_beginAccess();
  v33 = *(v4 + 12);
  outlined init with copy of ReflowTextLine(&v190, &v176);
  v109 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 12) = v33;
  v31 = *&v44;
  if ((v109 & 1) == 0)
  {
LABEL_124:
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
    *(v4 + 12) = v33;
  }

  v111 = *(v33 + 2);
  v110 = *(v33 + 3);
  if (v111 >= v110 >> 1)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v33);
  }

  *(v33 + 2) = v111 + 1;
  v112 = &v33[168 * v111];
  v113 = v7[22];
  v114 = v7[24];
  *(v112 + 3) = v7[23];
  *(v112 + 4) = v114;
  *(v112 + 2) = v113;
  v115 = v7[25];
  v116 = v7[26];
  v117 = v7[28];
  *(v112 + 7) = v7[27];
  *(v112 + 8) = v117;
  *(v112 + 5) = v115;
  *(v112 + 6) = v116;
  v118 = v7[29];
  v119 = v7[30];
  v120 = v7[31];
  *(v112 + 24) = v200;
  *(v112 + 10) = v119;
  *(v112 + 11) = v120;
  *(v112 + 9) = v118;
  *(v4 + 12) = v33;
  swift_endAccess();
  v121 = v7[41];
  *(v7 + 8) = v7[40];
  *v172 = v22;
  *(v7 + 24) = v121;
  *&v172[40] = v28;
  v173.f64[0] = v38;
  v173.f64[1] = v21;
  *v174 = v36;
  v122 = v7[37];
  *(v7 + 104) = v7[36];
  *(v7 + 120) = v122;
  *(v7 + 136) = v7[38];
  v123 = v206;
  v124 = v7[35];
  *(v7 + 72) = v7[34];
  *(v7 + 88) = v124;
  *&v174[88] = v123;
  v175 = v31;
  outlined destroy of ReflowTextLine(v172);
  v125 = v24[13];
  v7[19] = v24[12];
  v7[20] = v125;
  v189 = *&v212[144];
  v126 = v24[9];
  v7[15] = v24[8];
  v7[16] = v126;
  v127 = v24[11];
  v7[17] = v24[10];
  v7[18] = v127;
  v128 = v24[5];
  v7[11] = v24[4];
  v7[12] = v128;
  v129 = v24[7];
  v7[13] = v24[6];
  v7[14] = v129;
  outlined destroy of ReflowTextLine(&v176);
}

Swift::Void __swiftcall ReflowLayoutManager.scaleTextToFit()()
{
  if ((~*(v0 + 16) & 0x7FF0000000000000) != 0)
  {
    v1 = (~*(v0 + 24) & 0x7FF0000000000000) == 0 || (*(v0 + 32) & 0x7FF0000000000000) == 0x7FF0000000000000;
    if (!v1 && (*(v0 + 40) & 0x7FF0000000000000) != 0x7FF0000000000000)
    {
      swift_beginAccess();
      v3._rawValue = *(v0 + 80);
      swift_beginAccess();
      v4._rawValue = *(v0 + 88);

      ReflowLayoutManager.layoutText(contents:lines:)(v3, v4);

      if (*(v0 + 219) == 1)
      {
        swift_beginAccess();
        if (!*(v0 + 160))
        {
          MaxY = CGRectGetMaxY(*(v0 + 120));
          if (CGRectGetHeight(*(v0 + 16)) + 15.0 >= MaxY)
          {
            v6 = *(v0 + 112);
          }

          else
          {
            v6 = 10;
          }

          v7 = CGRectGetMaxY(*(v0 + 120));
          Height = CGRectGetHeight(*(v0 + 16));
          v9 = *(v0 + 112);
          if (Height + 15.0 >= v7)
          {
            v10 = 1000;
          }

          else
          {
            v10 = *(v0 + 112);
          }

          while (1)
          {
            if (__OFADD__(v6, v10))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
              return;
            }

            v11 = round(vcvtd_n_f64_s64(v6 + v10, 1uLL) / 5.0);
            if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_33;
            }

            if (v11 <= -9.22337204e18)
            {
              goto LABEL_34;
            }

            if (v11 >= 9.22337204e18)
            {
              goto LABEL_35;
            }

            v12 = 5 * v11;
            if ((v11 * 5) >> 64 != v12 >> 63)
            {
              goto LABEL_36;
            }

            *(v0 + 112) = v12;
            v13._rawValue = *(v0 + 80);
            v14._rawValue = *(v0 + 88);

            ReflowLayoutManager.layoutText(contents:lines:)(v13, v14);

            v15 = *(v0 + 112);
            v16 = CGRectGetMaxY(*(v0 + 120));
            v17 = CGRectGetHeight(*(v0 + 16)) + 15.0;
            if (v9 == v15)
            {
              break;
            }

            v9 = *(v0 + 112);
            if (v17 >= v16)
            {
              v6 = *(v0 + 112);
            }

            else
            {
              v10 = *(v0 + 112);
            }

            if (v6 >= v10)
            {
              return;
            }
          }

          if (v17 < v16)
          {
            v18 = *(v0 + 112);
            if (v18 >= 11)
            {
              *(v0 + 112) = v18 - 5;
              v19._rawValue = *(v0 + 80);
              v20._rawValue = *(v0 + 88);

              ReflowLayoutManager.layoutText(contents:lines:)(v19, v20);
            }
          }
        }
      }
    }
  }
}

uint64_t ReflowLayoutManager.strokeTransforms()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v126 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v148 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v162 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  isUniquelyReferenced_nonNull_native = &v126 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVtMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVtMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v149 = &v126 - v11;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v12 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v126 - v13;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR);
  v14 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v126 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVy9Coherence12CROrderedSetVyAC3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGSaySo17CGAffineTransformVGGMd, &_ss12Zip2SequenceVy9Coherence12CROrderedSetVyAC3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGGSaySo17CGAffineTransformVGGMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v135 = &v126 - v17;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceV8IteratorVy9Coherence12CROrderedSetVyAE3RefVyAE10CRRegisterVy8PaperKit12TaggedStrokeOGGGSaySo17CGAffineTransformVG_GMd, &_ss12Zip2SequenceV8IteratorVy9Coherence12CROrderedSetVyAE3RefVyAE10CRRegisterVy8PaperKit12TaggedStrokeOGGGSaySo17CGAffineTransformVG_GMR);
  MEMORY[0x1EEE9AC00](v146);
  v157 = &v126 - v18;
  v19 = *(v1 + 24);
  v134 = *(v1 + 16);
  v133 = v19;
  v163 = COERCE_DOUBLE(_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_So17CGAffineTransformVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]));
  swift_beginAccess();
  v141 = *(v1 + 80);
  if (v141 >> 62)
  {
    goto LABEL_53;
  }

  v20 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v140 = v20;
  if (!v20)
  {
    return *&v163;
  }

  v21 = v141;
  v142 = v141 & 0xC000000000000001;

  swift_beginAccess();
  v22 = 0;
  v129 = v21 & 0xFFFFFFFFFFFFFF8;
  v128 = v21 + 32;
  v132 = (v14 + 16);
  v131 = (v14 + 8);
  v130 = (*&v12 + 32);
  v156 = (*&v148 + 48);
  v161 = (*&v148 + 32);
  v147 = *&v148 + 16;
  v150 = (*&v148 + 8);
  v126 = 0.02;
  v12 = *&v140;
  v127 = v1;
  while (1)
  {
    while (1)
    {
      if (v142)
      {
        v23 = MEMORY[0x1DA6CE0C0](v22, v21);
        v24 = __OFADD__(v22++, 1);
        if (v24)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v22 >= *(v129 + 16))
        {
          goto LABEL_52;
        }

        v23 = *(v128 + 8 * v22);

        v24 = __OFADD__(v22++, 1);
        if (v24)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          v20 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      type metadata accessor for ReflowWord();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        break;
      }

      if (v22 == *&v12)
      {
        goto LABEL_43;
      }
    }

    v26 = v25;
    v27 = round(*(v25 + 80));
    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_49;
    }

    if (v27 <= -9.22337204e18)
    {
      goto LABEL_50;
    }

    if (v27 >= 9.22337204e18)
    {
      goto LABEL_51;
    }

    v28 = v27;
    v145 = v22;
    if (v27 < 0 || (v29 = *(v1 + 96), *(v29 + 16) <= v28))
    {

      v37 = 0.0;
    }

    else
    {
      v30 = (v29 + 168 * v28);
      v32 = v30[9];
      v31 = v30[10];
      v34 = v30[11];
      v33 = v30[12];

      ReflowWord.baselineDelta.getter();
      v37 = 0.0;
      if (*(v26 + 312) == 1)
      {
        v38 = v34 - v32;
        v39 = v33 - v31;
        v40 = sqrt(v38 * v38 + v39 * v39);
        v41 = atan2(v36, v35);
        v42 = atan2(v39 / v40, v38 / v40);
        if (vabdd_f64(v42, v41) <= v126)
        {
          v37 = 0.0;
        }

        else
        {
          v37 = v42 - v41;
        }
      }
    }

    v43 = *(v26 + 280);
    [v43 _canvasBounds];
    x = v167.origin.x;
    y = v167.origin.y;
    width = v167.size.width;
    height = v167.size.height;
    v48 = *(v26 + 184);
    v49 = *(v26 + 192);
    MinX = CGRectGetMinX(v167);
    v168.origin.x = x;
    v168.origin.y = y;
    v168.size.width = width;
    v168.size.height = height;
    v51 = MinX + v48 * CGRectGetWidth(v168);
    v169.origin.x = x;
    v169.origin.y = y;
    v169.size.width = width;
    v169.size.height = height;
    MinY = CGRectGetMinY(v169);
    v170.origin.x = x;
    v170.origin.y = y;
    v170.size.width = width;
    v170.size.height = height;
    v53 = CGRectGetHeight(v170);
    CGAffineTransformMakeTranslation(&t1, -v51, -(MinY + v49 * v53));
    tx = t1.tx;
    ty = t1.ty;
    v160 = *&t1.a;
    v159 = *&t1.c;
    CGAffineTransformMakeRotation(&t1, v37);
    v56 = *&t1.a;
    v57 = *&t1.c;
    v58 = *&t1.tx;
    *&t1.c = v159;
    *&t1.a = v160;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v56;
    *&t2.c = v57;
    *&t2.tx = v58;
    CGAffineTransformConcat(&v164, &t1, &t2);
    v59 = v164.tx;
    v60 = v164.ty;
    v160 = *&v164.a;
    v159 = *&v164.c;
    CGAffineTransformMakeScale(&t1, *(v1 + 112) / 100.0, *(v1 + 112) / 100.0);
    v61 = *&t1.a;
    v62 = *&t1.c;
    v63 = *&t1.tx;
    *&t1.c = v159;
    *&t1.a = v160;
    t1.tx = v59;
    t1.ty = v60;
    *&t2.a = v61;
    *&t2.c = v62;
    *&t2.tx = v63;
    CGAffineTransformConcat(&v164, &t1, &t2);
    *&v160 = v164.tx;
    v64 = v164.ty;
    v159 = *&v164.a;
    v158 = *&v164.c;
    v65 = *(v26 + 48);
    v66 = *(v26 + 56);
    v67 = *(v26 + 64);
    v68 = *(v26 + 72);
    v144 = v23;

    v70 = *(v26 + 184);
    v69 = *(v26 + 192);
    v171.origin.x = v65;
    v171.origin.y = v66;
    v171.size.width = v67;
    v171.size.height = v68;
    v71 = CGRectGetMinX(v171);
    v172.origin.x = v65;
    v172.origin.y = v66;
    v172.size.width = v67;
    v172.size.height = v68;
    v72 = v71 + v70 * CGRectGetWidth(v172);
    v173.origin.x = v65;
    v173.origin.y = v66;
    v173.size.width = v67;
    v173.size.height = v68;
    v73 = CGRectGetMinY(v173);
    v174.origin.x = v65;
    v174.origin.y = v66;
    v174.size.width = v67;
    v174.size.height = v68;
    v74 = CGRectGetHeight(v174);
    CGAffineTransformMakeTranslation(&t1, v134 + v72, v133 + v73 + v69 * v74);
    v75 = *&t1.a;
    v76 = *&t1.c;
    v77 = *&t1.tx;
    *&t1.c = v158;
    *&t1.a = v159;
    *&t1.tx = v160;
    t1.ty = v64;
    *&t2.a = v75;
    *&t2.c = v76;
    *&t2.tx = v77;
    CGAffineTransformConcat(&v164, &t1, &t2);
    v155 = *&v164.c;
    v154 = *&v164.a;
    v78 = v164.tx;
    v79 = v164.ty;
    v80 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v81 = *v132;
    v143 = v43;
    v82 = &v43[v80];
    v83 = v136;
    v84 = v137;
    v81(v136, v82, v137);
    swift_getKeyPath();
    v85 = v135;
    Capsule.subscript.getter();

    (*v131)(v83, v84);
    v86 = *(v26 + 296);
    (*v130)(v138, v85, v139);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR, MEMORY[0x1E6995150]);

    v87 = v157;
    dispatch thunk of Sequence.makeIterator()();
    v88 = &v87[*(v146 + 52)];
    *v88 = v86;
    v88[1] = 0;
    v153 = v88;
    v14 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR, MEMORY[0x1E6995120]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
    v12 = *&v87;
    v152 = v14;
    dispatch thunk of IteratorProtocol.next()();
    v151 = *v156;
    if (v151(v4, 1, v5) == 1)
    {
LABEL_41:

      outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
      goto LABEL_42;
    }

    *&v160 = *v161;
    (v160)(isUniquelyReferenced_nonNull_native, v4, v5);
    v89 = *(v86 + 16);
    if (v89)
    {
      break;
    }

LABEL_39:
    (*v150)(isUniquelyReferenced_nonNull_native, v5);

    v1 = v127;
LABEL_42:
    v21 = v141;
    v12 = *&v140;
    v22 = v145;
    v124 = v157;
    v157[*(v146 + 56)] = 1;
    outlined destroy of StocksKitCurrencyCache.Provider?(v124, &_ss12Zip2SequenceV8IteratorVy9Coherence12CROrderedSetVyAE3RefVyAE10CRRegisterVy8PaperKit12TaggedStrokeOGGGSaySo17CGAffineTransformVG_GMd, &_ss12Zip2SequenceV8IteratorVy9Coherence12CROrderedSetVyAE3RefVyAE10CRRegisterVy8PaperKit12TaggedStrokeOGGGSaySo17CGAffineTransformVG_GMR);
    if (v22 == *&v12)
    {
LABEL_43:

      return *&v163;
    }
  }

  v1 = 0;
  v90 = (v86 + 72);
  while (1)
  {
    if (v1 >= v89)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v14 = v86;
    v91 = v4;
    ++v1;
    v93 = *(v90 - 1);
    v92 = *v90;
    v159 = *(v90 - 5);
    v158 = *(v90 - 3);
    v153[1] = v1;
    v94 = v149;
    v95 = isUniquelyReferenced_nonNull_native;
    v96 = isUniquelyReferenced_nonNull_native;
    v97 = v160;
    (v160)(v149, v96, v5);
    v98 = v162;
    v99 = v94;
    v100 = v5;
    v97(v162, v99, v5);
    *&t1.c = v158;
    *&t1.a = v159;
    t1.tx = v93;
    t1.ty = v92;
    *&t2.c = v155;
    *&t2.a = v154;
    t2.tx = v78;
    t2.ty = v79;
    CGAffineTransformConcat(&v164, &t1, &t2);
    a = v164.a;
    b = v164.b;
    c = v164.c;
    d = v164.d;
    v105 = v164.tx;
    v106 = v164.ty;
    v107 = v163;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    t1.a = v107;
    v108 = v98;
    v12 = v107;
    v109 = specialized __RawDictionaryStorage.find<A>(_:)(v108);
    v111 = v107;
    v4 = v109;
    v112 = *(*&v111 + 16);
    v113 = (v110 & 1) == 0;
    v114 = v112 + v113;
    if (__OFADD__(v112, v113))
    {
      goto LABEL_46;
    }

    v115 = v110;
    if (*(*&v111 + 24) < v114)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }

LABEL_33:
    v118 = t1.a;
    v163 = t1.a;
    if (v115)
    {
      v119 = (*(*&t1.a + 56) + 48 * v4);
      *v119 = a;
      v119[1] = b;
      v119[2] = c;
      v119[3] = d;
      v119[4] = v105;
      v119[5] = v106;
      v5 = v100;
      (*v150)(v162, v100);
    }

    else
    {
      *(*&t1.a + 8 * (v4 >> 6) + 64) |= 1 << v4;
      v12 = v148;
      isUniquelyReferenced_nonNull_native = v162;
      v5 = v100;
      (*(*&v148 + 16))(*(*&v118 + 48) + *(*&v148 + 72) * v4, v162, v100);
      v120 = (*(*&v163 + 56) + 48 * v4);
      *v120 = a;
      v120[1] = b;
      v120[2] = c;
      v120[3] = d;
      v120[4] = v105;
      v120[5] = v106;
      v121 = v163;
      (*(*&v12 + 8))(isUniquelyReferenced_nonNull_native, v5);
      v122 = *(*&v121 + 16);
      v24 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v24)
      {
        goto LABEL_47;
      }

      *(*&v121 + 16) = v123;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
    v4 = v91;
    v12 = *&v157;
    dispatch thunk of IteratorProtocol.next()();
    isUniquelyReferenced_nonNull_native = v95;
    if (v151(v91, 1, v5) == 1)
    {
      v1 = v127;
      goto LABEL_41;
    }

    (v160)(v95, v91, v5);
    v86 = v14;
    v89 = *(v14 + 16);
    v90 += 6;
    if (v1 == v89)
    {
      goto LABEL_39;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v114, isUniquelyReferenced_nonNull_native);
  v116 = specialized __RawDictionaryStorage.find<A>(_:)(v162);
  if ((v115 & 1) == (v117 & 1))
  {
    v4 = v116;
    goto LABEL_33;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int ReflowLayoutManager.reflowWords(for:)(uint64_t a1)
{
  v65 = a1;
  v64 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMR);
  v5 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v51 - v8;
  v54 = type metadata accessor for IndexSet();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.init()();
  swift_beginAccess();
  v11 = *(v1 + 80);
  v55 = v10;
  v52 = v1;
  if (v11 >> 62)
  {
LABEL_65:
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v13 = 0;
    v2 = 0;
    v66 = v11 & 0xFFFFFFFFFFFFFF8;
    v67 = v11 & 0xC000000000000001;
    v57 = (v5 + 2);
    v56 = v5 + 1;
    v59 = v11;
    v58 = v12;
    v15 = v62;
    v14 = v63;
    v16 = (v5 + 1);
    do
    {
      if (v67)
      {
        v17 = MEMORY[0x1DA6CE0C0](v13, v11);
        v3 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *(v66 + 16))
        {
          __break(1u);
          goto LABEL_65;
        }

        v17 = *(v11 + 8 * v13 + 32);

        v3 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_15;
        }
      }

      type metadata accessor for ReflowWord();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = v18;
        v70 = v3;
        v71 = v17;
        v20 = *(v18 + 280);
        v69 = v2;
        v21 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v22 = *v57;
        v23 = v20 + v21;
        v24 = v60;
        v25 = v61;
        (*v57)(v60, v23, v61);
        Capsule.root.getter();
        v68 = *v16;
        v68(v24, v25);
        v26 = *(v19 + 280);
        v27 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v28 = (v22)(v15, v26 + v27, v25);
        v5 = &v51;
        MEMORY[0x1EEE9AC00](v28);
        *(&v51 - 2) = v65;
        *(&v51 - 1) = v15;
        v2 = v69;
        LOBYTE(v26) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Ref<>.containsStrokes<A>(_:in:), (&v51 - 4));
        _s8PaperKit15PKDrawingStructVWOhTm_1(v14, type metadata accessor for PKDrawingStruct);
        v68(v15, v25);
        if (v26)
        {
          IndexSet.insert(_:)(v13);
        }

        v11 = v59;
        v12 = v58;
        v3 = v70;
      }

      ++v13;
    }

    while (v3 != v12);
  }

  v29 = v55;
  if (IndexSet.isEmpty.getter())
  {
    (*(v53 + 8))(v29, v54);
    return MEMORY[0x1E69E7CC0];
  }

  result = IndexSet.last.getter();
  if (v32)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v33 = result + 1;
  v34 = v52;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v35 = *(v52 + 80);
    if (!(v35 >> 62))
    {
      if (v33 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      goto LABEL_22;
    }
  }

  if (v33 >= __CocoaSet.count.getter())
  {
    goto LABEL_32;
  }

LABEL_22:
  result = IndexSet.last.getter();
  if (v36)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    return result;
  }

  v37 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_77;
  }

  v2 = *(v34 + 80);
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_78;
  }

  if (v37 < 0)
  {
    __break(1u);
    goto LABEL_80;
  }

  if (v37 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  while (1)
  {
    type metadata accessor for ReflowSpace();
    v2 = swift_dynamicCastClass();

    if (v2)
    {
      result = IndexSet.last.getter();
      if (v38)
      {
        goto LABEL_89;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        goto LABEL_84;
      }

      IndexSet.insert(_:)(result);
    }

LABEL_32:
    result = IndexSet.first.getter();
    if (v40)
    {
      goto LABEL_86;
    }

    v37 = result;
    result = IndexSet.last.getter();
    if (v41)
    {
      goto LABEL_87;
    }

    if (result < v37)
    {
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v3 = result + 1;
    if (__OFADD__(result, 1))
    {
      goto LABEL_70;
    }

    v34 = *(v34 + 80);
    v11 = v34 >> 62;
    if (!(v34 >> 62))
    {
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) < v37)
      {
        goto LABEL_72;
      }

      goto LABEL_38;
    }

LABEL_71:
    if (__CocoaSet.count.getter() < v37)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_38:
    if (v37 < 0)
    {
      goto LABEL_73;
    }

    if (v11)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result < v3)
    {
      goto LABEL_74;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_75;
    }

    if ((v34 & 0xC000000000000001) == 0)
    {
      goto LABEL_47;
    }

    if (v3 >= v37)
    {
      break;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:

    MEMORY[0x1DA6CE0C0](v37, v2);
  }

  if (v37 == v3)
  {
LABEL_47:
    swift_bridgeObjectRetain_n();
    goto LABEL_51;
  }

  if (v37 >= v3)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  type metadata accessor for ReflowElement();
  swift_bridgeObjectRetain_n();
  v42 = v37;
  do
  {
    v43 = v42 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v42);
    v42 = v43;
  }

  while (v3 != v43);
LABEL_51:

  if (v11)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    v11 = v45;
    v37 = v46;
    v3 = v47;

    if ((v3 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v2 = v34 & 0xFFFFFFFFFFFFFF8;
    v11 = (v34 & 0xFFFFFFFFFFFFFF8) + 32;
    v3 = (2 * v3) | 1;
    if ((v3 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    swift_unknownObjectRelease();
    v49 = MEMORY[0x1E69E7CC0];
  }

  v50 = *(v49 + 16);

  if (!__OFSUB__(v3 >> 1, v37))
  {
    if (v50 != (v3 >> 1) - v37)
    {
      goto LABEL_82;
    }

    v30 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v30)
    {
      swift_unknownObjectRelease();
      v30 = MEMORY[0x1E69E7CC0];
    }

    (*(v53 + 8))(v29, v54);
    swift_unknownObjectRelease();
    return v30;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  swift_unknownObjectRelease_n();
LABEL_55:
  specialized _copyCollectionToContiguousArray<A>(_:)(v2, v11, v37, v3, v44);
  v30 = v48;
  swift_unknownObjectRelease();
  (*(v53 + 8))(v29, v54);
  return v30;
}

Swift::Bool __swiftcall ReflowLayoutManager.canPasteAtSpaceAdjustment()()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v8[0] = *(v0 + 160);
  v8[1] = v1;
  v9[0] = *(v0 + 192);
  *(v9 + 11) = *(v0 + 203);
  if (!*&v8[0])
  {
    return 1;
  }

  v2 = *(*&v8[0] + 120);
  if ((v2 & 0x8000000000000000) != 0)
  {
    return 1;
  }

  result = swift_beginAccess();
  v4 = *(v0 + 88);
  if (v2 >= *(v4 + 16))
  {
    __break(1u);
  }

  else
  {
    v5 = vsubq_f64(*(v4 + 168 * v2 + 88), *(v4 + 168 * v2 + 72));
    v6 = sqrt(vaddvq_f64(vmulq_f64(v5, v5)));
    v7 = atan2(v5.f64[1] / v6, v5.f64[0] / v6);

    outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit23ReflowSpacingAdjustmentVSgMd, &_s8PaperKit23ReflowSpacingAdjustmentVSgMR);
    return fabs(v7) <= 0.2;
  }

  return result;
}

id ReflowLayoutManager.TextPosition.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ReflowLayoutManager.TextPosition();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id ReflowLayoutManager.closestPosition(to:)(double a1, double a2)
{
  v6 = v2;
  swift_beginAccess();

  v10 = specialized ReflowLayoutManager.closestLine(to:lines:)(v9, a1, a2);
  v12 = v11;

  result = 0;
  if (v12)
  {
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_41;
  }

  v14 = *(v6 + 96);
  if (*(v14 + 16) < v10)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v4 = v46;
  v15 = (v14 + 32);
  v12 = v10 + 1;
  do
  {
    if (!--v12)
    {
      v18 = *(v6 + 96);
      if (v10 >= *(v18 + 16))
      {
        goto LABEL_43;
      }

      v3 = *(v18 + 168 * v10 + 32);
      if (v3 >> 62)
      {
        goto LABEL_44;
      }

      v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    }

    if (*v15 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 += 21;
    v17 = __OFADD__(v5, v16);
    v5 += v16;
  }

  while (!v17);
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v19 = __CocoaSet.count.getter();
    if (!v19)
    {
      break;
    }

LABEL_15:

    i = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6CE0C0](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v12 = *(v3 + 8 * i + 32);
      }

      if (CGRectGetMaxX(*(v12 + 48)) <= a1)
      {
      }

      else
      {
        v4 = (*(*v12 + 144))();

        if ((v4 & 1) == 0)
        {

          v4 = v46;
          goto LABEL_30;
        }
      }

      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      ++i;
      if (v21 == v19)
      {

        v4 = v46;
        goto LABEL_27;
      }
    }
  }

LABEL_27:
  v22 = *(v6 + 96);
  if (v10 >= *(v22 + 16))
  {
    goto LABEL_69;
  }

  v23 = *(v22 + 168 * v10 + 32);
  if (v23 >> 62)
  {
    goto LABEL_70;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
LABEL_30:
    v24 = *(v6 + 96);
    if (v10 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = *(v24 + 168 * v10 + 32);
      if (!(v25 >> 62))
      {
        result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (i >= result)
        {
          goto LABEL_48;
        }

        goto LABEL_33;
      }
    }

    result = __CocoaSet.count.getter();
    if (i >= result)
    {
LABEL_48:
      v41 = *(v6 + 96);
      if (v10 < *(v41 + 16))
      {
        v6 = *(v41 + 168 * v10 + 32);
        if (v6 >> 62)
        {
          i = __CocoaSet.count.getter();
        }

        else
        {
          i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v4 = v6 + 32;
        while (1)
        {
          if (!i)
          {
LABEL_61:

            v12 = 1;
            goto LABEL_62;
          }

          v17 = __OFSUB__(i--, 1);
          if (v17)
          {
            break;
          }

          if ((v6 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x1DA6CE0C0](i, v6);
            v12 = v42;
          }

          else
          {
            if ((i & 0x8000000000000000) != 0)
            {
              goto LABEL_66;
            }

            if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_67;
            }

            v12 = *(v4 + 8 * i);
          }

          v10 = (*(*v12 + 144))(v42);

          if ((v10 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      goto LABEL_72;
    }

LABEL_33:
    v26 = *(v6 + 96);
    if (v10 >= *(v26 + 16))
    {
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v27 = v26 + 168 * v10;
    v28 = *(v27 + 32);
    v29 = *(v27 + 64);
    *(v4 + 16) = *(v27 + 48);
    *(v4 + 32) = v29;
    *v4 = v28;
    v30 = *(v27 + 80);
    v31 = *(v27 + 96);
    v32 = *(v27 + 128);
    *(v4 + 80) = *(v27 + 112);
    *(v4 + 96) = v32;
    *(v4 + 48) = v30;
    *(v4 + 64) = v31;
    v33 = *(v27 + 144);
    v34 = *(v27 + 160);
    v35 = *(v27 + 176);
    v46[20] = *(v27 + 192);
    *(v4 + 128) = v34;
    *(v4 + 144) = v35;
    *(v4 + 112) = v33;
    v12 = v46[0];
    if ((v46[0] & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_73:
    outlined init with copy of ReflowTextLine(v46, v45);
    v36 = MEMORY[0x1DA6CE0C0](i, v12);
    outlined destroy of ReflowTextLine(v46);
LABEL_38:
    v37 = v36[6];
    v38 = v36[7];
    v39 = v36[8];
    v40 = v36[9];

    v48.origin.x = v37;
    v48.origin.y = v38;
    v48.size.width = v39;
    v48.size.height = v40;
    v12 = CGRectGetMidX(v48) <= a1;
LABEL_62:
    v6 = v5 + i;
    if (!__OFADD__(v5, i))
    {
      v43 = type metadata accessor for ReflowLayoutManager.TextPosition();
      v44 = objc_allocWithZone(v43);
      *&v44[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index] = v6;
      v44[OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity] = v12;
      v47.receiver = v44;
      v47.super_class = v43;
      return objc_msgSendSuper2(&v47, sel_init);
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    ;
  }

  if ((i & 0x8000000000000000) == 0)
  {
    if (i >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_76;
    }

    v36 = *(v46[0] + 8 * i + 32);

    goto LABEL_38;
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_18:
    v12 = a3;
    v13 = __CocoaSet.count.getter();
    a3 = v12;
    v5 = v13;
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = a3 & 0xC000000000000001;
  v14 = a3;
  v7 = a3 + 32;
  do
  {
    v8 = v5;
    if (!v5)
    {
      break;
    }

    --v5;
    if (__OFSUB__(v8, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v6)
    {
      v9 = MEMORY[0x1DA6CE0C0](v8 - 1, v14);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v5 >= *(v4 + 16))
      {
        goto LABEL_17;
      }

      v9 = *(v7 + 8 * v5);
    }

    v16 = v9;
    v10 = a1(&v16);
  }

  while (!v3 && (v10 & 1) == 0);
  return v5;
}

void ReflowLayoutManager.caretRect(for:)(uint64_t a1)
{
  v4 = *(a1 + OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_index);
  swift_beginAccess();
  v5 = *(v1 + 96);
  v6 = (v5 + 32);
  v7 = -*(v5 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {
      v19 = *(v1 + 96);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v19 + 168 * v20;
        v22 = *(v21 - 136);
        v23 = *(v21 - 104);
        v50[1] = *(v21 - 120);
        v51 = v23;
        v50[0] = v22;
        v24 = *(v21 - 88);
        v25 = *(v21 - 72);
        v26 = *(v21 - 40);
        v54 = *(v21 - 56);
        v55 = v26;
        v52 = v24;
        v53 = v25;
        v27 = *(v21 - 24);
        v28 = *(v21 - 8);
        v29 = *(v21 + 8);
        v59 = *(v21 + 24);
        v57 = v28;
        v58 = v29;
        v56 = v27;
        v4 = *&v50[0];
        if (!(*&v50[0] >> 62))
        {
          v30 = *((*&v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v30)
          {
LABEL_36:
            ReflowTextLine.caretRect(at:)(__PAIR128__(v52, *(&v51 + 1)));
            return;
          }

LABEL_14:
          v31 = v30 - 1;
          if (__OFSUB__(v30, 1))
          {
            __break(1u);
          }

          else if ((v4 & 0xC000000000000001) == 0)
          {
            if ((v31 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v31 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v32 = *(v4 + 8 * v31 + 32);
              outlined init with copy of ReflowTextLine(v50, v49);

LABEL_19:
              v33 = v32[6];
              v34 = v32[7];
              v35 = v32[8];
              v36 = v32[9];
              v62.origin.x = v33;
              v62.origin.y = v34;
              v62.size.width = v35;
              v62.size.height = v36;
              MaxX = CGRectGetMaxX(v62);
              v63.origin.x = v33;
              v63.origin.y = v34;
              v63.size.width = v35;
              v63.size.height = v36;
              MaxY = CGRectGetMaxY(v63);

              ReflowTextLine.caretRect(at:)(__PAIR128__(*&MaxY, *&MaxX));
              outlined destroy of ReflowTextLine(v50);
              return;
            }

            __break(1u);
            goto LABEL_41;
          }

          outlined init with copy of ReflowTextLine(v50, v49);
          v32 = MEMORY[0x1DA6CE0C0](v31, v4);
          goto LABEL_19;
        }

LABEL_35:
        v30 = __CocoaSet.count.getter();
        if (!v30)
        {
          goto LABEL_36;
        }

        goto LABEL_14;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (++v8 >= *(v5 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v9 = *v6;
    v10 = v6[2];
    v60[1] = v6[1];
    v60[2] = v10;
    v60[0] = v9;
    v11 = v6[3];
    v12 = v6[4];
    v13 = v6[6];
    v60[5] = v6[5];
    v60[6] = v13;
    v60[3] = v11;
    v60[4] = v12;
    v14 = v6[7];
    v15 = v6[8];
    v16 = v6[9];
    v61 = *(v6 + 20);
    v60[8] = v15;
    v60[9] = v16;
    v60[7] = v14;
    v2 = *&v60[0];
    if (!(*&v60[0] >> 62))
    {
      v17 = *((*&v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 < v17)
      {
        break;
      }

      goto LABEL_6;
    }

    if (v4 < __CocoaSet.count.getter())
    {
      break;
    }

    v17 = __CocoaSet.count.getter();
LABEL_6:
    v6 = (v6 + 168);
    v18 = __OFSUB__(v4, v17);
    v4 -= v17;
    if (v18)
    {
      goto LABEL_33;
    }
  }

  outlined init with copy of ReflowTextLine(v60, v50);
  v39 = v2 & 0xC000000000000001;
  if ((*(a1 + OBJC_IVAR____TtCC8PaperKit19ReflowLayoutManager12TextPosition_affinity) & 1) == 0)
  {
    if (v39)
    {
      v46 = MEMORY[0x1DA6CE0C0](v4, v2);
    }

    else
    {
      if (v4 < 0)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }
    }

    v41 = v46[6];
    v42 = v46[7];
    v43 = v46[8];
    v44 = v46[9];

    v65.origin.x = v41;
    v65.origin.y = v42;
    v65.size.width = v43;
    v65.size.height = v44;
    MinX = CGRectGetMinX(v65);
LABEL_31:
    v47 = MinX;
    v66.origin.x = v41;
    v66.origin.y = v42;
    v66.size.width = v43;
    v66.size.height = v44;
    *&v48 = CGRectGetMaxY(v66);
    ReflowTextLine.caretRect(at:)(__PAIR128__(v48, *&v47));
    outlined destroy of ReflowTextLine(v60);
    return;
  }

  if (v39)
  {
LABEL_41:
    v40 = MEMORY[0x1DA6CE0C0](v4, v2);
LABEL_25:
    v41 = v40[6];
    v42 = v40[7];
    v43 = v40[8];
    v44 = v40[9];

    v64.origin.x = v41;
    v64.origin.y = v42;
    v64.size.width = v43;
    v64.size.height = v44;
    MinX = CGRectGetMaxX(v64);
    goto LABEL_31;
  }

  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_25;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void ReflowLayoutManager.caretRect(for:point:)(uint64_t a1, double a2, double a3)
{
  v5 = round(*(a1 + 80));
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v5;
  if ((v5 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v9 = *(v3 + 96);
    if (*(v9 + 16) > v8)
    {
      v10 = v9 + 168 * v8;
      v40 = *(v10 + 144);
      v41 = *(v10 + 160);
      v42 = *(v10 + 176);
      v43 = *(v10 + 192);
      v36 = *(v10 + 80);
      v37 = *(v10 + 96);
      v38 = *(v10 + 112);
      v39 = *(v10 + 128);
      v33 = *(v10 + 32);
      v34 = *(v10 + 48);
      v35 = *(v10 + 64);
LABEL_14:
      ReflowTextLine.caretRect(at:)(__PAIR128__(*&a3, *&a2));
      return;
    }
  }

  swift_beginAccess();
  v29 = v3;
  v11 = *(v3 + 96);
  v12 = *(v11 + 16);

  if (v12)
  {
    v14 = 0;
    v15 = 32;
    while (v14 < *(v11 + 16))
    {
      v16 = *(v11 + v15);
      v17 = *(v11 + v15 + 32);
      v34 = *(v11 + v15 + 16);
      v35 = v17;
      v33 = v16;
      v18 = *(v11 + v15 + 48);
      v19 = *(v11 + v15 + 64);
      v20 = *(v11 + v15 + 96);
      v38 = *(v11 + v15 + 80);
      v39 = v20;
      v36 = v18;
      v37 = v19;
      v21 = *(v11 + v15 + 112);
      v22 = *(v11 + v15 + 128);
      v23 = *(v11 + v15 + 144);
      v43 = *(v11 + v15 + 160);
      v41 = v22;
      v42 = v23;
      v40 = v21;
      v24 = v33;
      v30 = a1;
      MEMORY[0x1EEE9AC00](v13);
      v28[2] = &v30;
      outlined init with copy of ReflowTextLine(&v33, v31);
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v28, v24))
      {

        ReflowTextLine.caretRect(at:)(__PAIR128__(*&a3, *&a2));
        outlined destroy of ReflowTextLine(&v33);
        return;
      }

      ++v14;
      v13 = outlined destroy of ReflowTextLine(&v33);
      v15 += 168;
      if (v12 == v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_12:

  v25 = *(v29 + 96);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + 168 * v26;
    v31[7] = *(v27 - 24);
    v31[8] = *(v27 - 8);
    v31[9] = *(v27 + 8);
    v32 = *(v27 + 24);
    v31[3] = *(v27 - 88);
    v31[4] = *(v27 - 72);
    v31[5] = *(v27 - 56);
    v31[6] = *(v27 - 40);
    v31[0] = *(v27 - 136);
    v31[1] = *(v27 - 120);
    v31[2] = *(v27 - 104);
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
}

id ReflowLayoutManager.textSize(for:)(unint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v120 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v120 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v120 - v14;
  swift_beginAccess();
  v123 = v2;
  v15 = *(v2 + 96);
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_113:
    v92 = [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:7 ascenderHeight:14.0 descenderHeight:25.2 activeLines:21.0];
    goto LABEL_114;
  }

  v121 = v7;
  v122 = v10;
  v125 = a1;
  v17 = (v15 + 32);

  a1 = 0;
  v124 = (v15 + 32);
LABEL_3:
  v18 = &v17[168 * a1];
  v19 = *v18;
  v20 = *(v18 + 2);
  v132 = *(v18 + 1);
  v133 = v20;
  v131 = v19;
  v21 = *(v18 + 3);
  v22 = *(v18 + 4);
  v23 = *(v18 + 6);
  v136 = *(v18 + 5);
  v137 = v23;
  v134 = v21;
  v135 = v22;
  v24 = *(v18 + 7);
  v25 = *(v18 + 8);
  v26 = *(v18 + 9);
  v141 = *(v18 + 20);
  v139 = v25;
  v140 = v26;
  v138 = v24;
  v27 = v131;
  v128 = v131 >> 62;
  v129 = v131 & 0xFFFFFFFFFFFFFF8;
  if (v131 >> 62)
  {
    v28 = __CocoaSet.count.getter();
  }

  else
  {
    v28 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  ++a1;
  outlined init with copy of ReflowTextLine(&v131, v130);
  v29 = v27 & 0xC000000000000001;

  v30 = 0;
  v31 = 1;
  while (1)
  {
    if (v28 == v30)
    {

      outlined destroy of ReflowTextLine(&v131);
      if (a1 != v16)
      {
        v17 = v124;
        if (a1 < *(v15 + 16))
        {
          goto LABEL_3;
        }

        goto LABEL_126;
      }

      v93 = *(v123 + 96);
      v94 = *(v93 + 16);
      a1 = v125;
      if (!v94)
      {
        goto LABEL_113;
      }

      v95 = v93 + 168 * v94;
      v96 = *(v95 - 136);
      v97 = *(v95 - 104);
      v132 = *(v95 - 120);
      v133 = v97;
      v131 = v96;
      v98 = *(v95 - 88);
      v99 = *(v95 - 72);
      v100 = *(v95 - 40);
      v136 = *(v95 - 56);
      v137 = v100;
      v134 = v98;
      v135 = v99;
      v101 = *(v95 - 24);
      v102 = *(v95 - 8);
      v103 = *(v95 + 8);
      v141 = *(v95 + 24);
      v139 = v102;
      v140 = v103;
      v138 = v101;
      a2 = v131;
      v143 = MEMORY[0x1E69E7CC0];
      v33 = v131 & 0xFFFFFFFFFFFFFF8;
      if (!(v131 >> 62))
      {
        v104 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_97;
      }

LABEL_139:
      v104 = __CocoaSet.count.getter();
LABEL_97:
      outlined init with copy of ReflowTextLine(&v131, v130);
      if (v104)
      {
        v105 = 0;
        v106 = MEMORY[0x1E69E7CC0];
        do
        {
          v107 = v105;
          while (1)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA6CE0C0](v107, a2);
              v105 = v107 + 1;
              if (__OFADD__(v107, 1))
              {
                goto LABEL_137;
              }
            }

            else
            {
              if (v107 >= *(v33 + 16))
              {
                goto LABEL_138;
              }

              v105 = v107 + 1;
              if (__OFADD__(v107, 1))
              {
                goto LABEL_137;
              }
            }

            type metadata accessor for ReflowWord();
            v108 = swift_dynamicCastClass();
            if (v108)
            {
              break;
            }

            ++v107;
            if (v105 == v104)
            {
              goto LABEL_121;
            }
          }

          v109 = v108;
          v110 = objc_opt_self();
          v111 = *(v109 + 336);
          v112 = *(v109 + 280);
          v113 = v111;
          [v112 _canvasBounds];
          v114 = [v110 scaledSize:v113 scale:CGRectGetHeight(v145)];

          MEMORY[0x1DA6CD190]();
          if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v106 = v143;
          a1 = v125;
        }

        while (v105 != v104);
        goto LABEL_121;
      }

LABEL_120:
      v106 = MEMORY[0x1E69E7CC0];
LABEL_121:
      if (v106 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_123;
        }
      }

      else if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_123:
        v116 = objc_opt_self();
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CHTextSize, 0x1E6997BD8);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v92 = [v116 averageTextSize_];
        outlined destroy of ReflowTextLine(&v131);

        goto LABEL_114;
      }

      v92 = [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:7 ascenderHeight:14.0 descenderHeight:25.2 activeLines:21.0];
      outlined destroy of ReflowTextLine(&v131);
LABEL_114:
      v115 = type metadata accessor for PKDrawing();
      (*(*(v115 - 8) + 56))(a1, 1, 1, v115);
      return v92;
    }

    if (!v29)
    {
      if (v30 < *(v129 + 16))
      {
        if (*(v27 + 8 * v30 + 32) == a2)
        {
          break;
        }

        goto LABEL_10;
      }

      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v120 = MEMORY[0x1DA6CE0C0](v30, v27);
    swift_unknownObjectRelease();
    if (v120 == a2)
    {
      break;
    }

LABEL_10:
    v31 += 2;
    v32 = __OFADD__(v30++, 1);
    if (v32)
    {
      goto LABEL_116;
    }
  }

  v33 = v128;
  if (!v128)
  {
    v34 = *(v129 + 16);
    goto LABEL_23;
  }

  if (__CocoaSet.count.getter() < 0)
  {
    goto LABEL_133;
  }

  v34 = __CocoaSet.count.getter();
LABEL_23:
  if (v34 < v30)
  {
    goto LABEL_127;
  }

  if (!v29 || !v30)
  {

    if (!v33)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  type metadata accessor for ReflowElement();

  v35 = 0;
  do
  {
    v36 = v35 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v35);
    v35 = v36;
  }

  while (v30 != v36);
  if (v33)
  {
LABEL_31:

    v38 = _CocoaArrayWrapper.subscript.getter();
    v39 = v40;
    v37 = v41;
    v31 = v42;
    goto LABEL_32;
  }

LABEL_29:
  v37 = 0;
  v38 = v129;
  v39 = v129 + 32;
LABEL_32:
  v130[0] = v38;
  v130[1] = v39;
  a1 = v31 >> 1;
  v130[2] = v37;
  v130[3] = v31;
  while (v37 != a1)
  {
    v32 = __OFSUB__(a1--, 1);
    if (v32)
    {
      goto LABEL_118;
    }

    if (a1 < v37)
    {
      goto LABEL_119;
    }

    type metadata accessor for ReflowWord();
    v43 = swift_dynamicCastClass();
    if (v43)
    {
      MEMORY[0x1EEE9AC00](v43);
      *(&v120 - 2) = v130;
      v142 = a1;
      partial apply for specialized closure #1 in BidirectionalCollection.last(where:)(&v142, &v143);
      v120 = 0;
      v44 = v143;
      goto LABEL_39;
    }
  }

  v44 = 0;
  v120 = 0;
LABEL_39:
  swift_unknownObjectRelease();
  if (!v44)
  {
    goto LABEL_44;
  }

  type metadata accessor for ReflowWord();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {

    goto LABEL_44;
  }

  v46 = *(v45 + 280);

  v47 = type metadata accessor for PKDrawing();
  v48 = *(v47 - 8);
  v49 = v33;
  v50 = v122;
  v124 = *(v48 + 56);
  (v124)(v122, 1, 1, v47);
  _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PKDrawing and conformance PKDrawing, MEMORY[0x1E69783E0], MEMORY[0x1E69783E8]);
  dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

  v51 = v50;
  v33 = v49;
  if ((*(v48 + 48))(v51, 1, v47) == 1)
  {
LABEL_44:
    v57 = type metadata accessor for PKDrawing();
    a2 = *(v57 - 8);
    a1 = a2 + 56;
    v123 = *(a2 + 56);
    (v123)(v126, 1, 1, v57);
    if (!v33)
    {
      v58 = *(v129 + 16);
      if (v58 >= v30)
      {
        goto LABEL_50;
      }

      __break(1u);
    }

    v59 = __CocoaSet.count.getter();
    if (v59 < v30)
    {
      goto LABEL_134;
    }

    v58 = v59;
    if (__CocoaSet.count.getter() < v30)
    {
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (__CocoaSet.count.getter() >= v58)
    {
LABEL_50:
      v124 = (a2 + 56);
      if (!v29 || v58 == v30)
      {

        if (!v33)
        {
LABEL_56:
          v62 = v129 + 32;
          goto LABEL_59;
        }

LABEL_58:

        _CocoaArrayWrapper.subscript.getter();
        v30 = v63;
        v58 = v64 >> 1;
LABEL_59:
        if (v30 <= v58)
        {
          v65 = v58;
        }

        else
        {
          v65 = v30;
        }

        v66 = v65 - v30;
        v67 = v62 + 8 * v30;
        v68 = v58 - v30;
        while (1)
        {
          if (!v68)
          {
            swift_unknownObjectRelease();
            (v123)(v127, 1, 1, v57);
            v74 = *(a2 + 48);
            goto LABEL_70;
          }

          if (!v66)
          {
            break;
          }

          v67 += 8;
          type metadata accessor for ReflowWord();
          v69 = swift_dynamicCastClass();
          --v66;
          --v68;
          if (v69)
          {
            v70 = v69;

            swift_unknownObjectRelease();
            v71 = *(v70 + 280);

            v72 = v121;
            v73 = v123;
            (v123)(v121, 1, 1, v57);
            _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PKDrawing and conformance PKDrawing, MEMORY[0x1E69783E0], MEMORY[0x1E69783E8]);
            dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

            v74 = *(a2 + 48);
            if (v74(v72, 1, v57) == 1)
            {
              v73(v127, 1, 1, v57);
            }

            else
            {
              v75 = v127;
              (*(a2 + 32))(v127, v72, v57);
              v73(v75, 0, 1, v57);
            }

LABEL_70:
            v76 = v126;
            v56 = v128;
            if (v74(v126, 1, v57) != 1)
            {
              outlined destroy of StocksKitCurrencyCache.Provider?(v76, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
            }

            goto LABEL_72;
          }
        }

        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      if (v30 < v58)
      {
        type metadata accessor for ReflowElement();

        v60 = v30;
        do
        {
          v61 = v60 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v60);
          v60 = v61;
        }

        while (v58 != v61);
        if (!v33)
        {
          goto LABEL_56;
        }

        goto LABEL_58;
      }

      goto LABEL_136;
    }

    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v52 = *(v48 + 32);
  v53 = v126;
  v52(v126, v122, v47);
  v54 = v124;
  (v124)(v53, 0, 1, v47);
  v55 = v127;
  v52(v127, v53, v47);
  v56 = v128;
  (v54)(v55, 0, 1, v47);
LABEL_72:
  v130[0] = MEMORY[0x1E69E7CC0];
  if (v56)
  {
    a1 = __CocoaSet.count.getter();
    if (a1)
    {
      goto LABEL_74;
    }

    goto LABEL_90;
  }

  a1 = *(v129 + 16);
  if (!a1)
  {
LABEL_90:
    v78 = MEMORY[0x1E69E7CC0];
    goto LABEL_91;
  }

LABEL_74:
  v77 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  v79 = 0x1E6997000uLL;
  do
  {
    v80 = v77;
    while (1)
    {
      if (v29)
      {
        MEMORY[0x1DA6CE0C0](v80, v27);
        v77 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_117;
        }
      }

      else
      {
        if (v80 >= *(v129 + 16))
        {
          goto LABEL_125;
        }

        v77 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_117;
        }
      }

      type metadata accessor for ReflowWord();
      v81 = swift_dynamicCastClass();
      if (v81)
      {
        break;
      }

      ++v80;
      if (v77 == a1)
      {
        goto LABEL_91;
      }
    }

    v82 = v79;
    v83 = v81;
    v84 = objc_opt_self();
    v85 = *(v83 + 336);
    v86 = *(v83 + 280);
    v87 = v85;
    [v86 _canvasBounds];
    v88 = [v84 scaledSize:v87 scale:CGRectGetHeight(v144)];

    MEMORY[0x1DA6CD190]();
    if (*((v130[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v130[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v78 = v130[0];
    v79 = v82;
  }

  while (v77 != a1);
LABEL_91:
  if (!(v78 >> 62))
  {
    v89 = v125;
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_93;
    }

LABEL_129:

    v92 = [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:7 ascenderHeight:14.0 descenderHeight:25.2 activeLines:21.0];
    outlined destroy of ReflowTextLine(&v131);
    goto LABEL_130;
  }

LABEL_128:
  v118 = __CocoaSet.count.getter();
  v89 = v125;
  if (!v118)
  {
    goto LABEL_129;
  }

LABEL_93:
  v90 = objc_opt_self();
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for CHTextSize, 0x1E6997BD8);
  v91 = Array._bridgeToObjectiveC()().super.isa;

  v92 = [v90 averageTextSize_];
  outlined destroy of ReflowTextLine(&v131);

LABEL_130:
  outlined init with take of PKDrawing?(v127, v89);
  return v92;
}