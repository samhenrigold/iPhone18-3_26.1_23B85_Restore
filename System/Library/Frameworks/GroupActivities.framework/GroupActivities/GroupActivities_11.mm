uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for LinkManager.Attachment(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t closure #2 in LinkManager.fetchAttachment(attachmentID:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v21;
  v12 = type metadata accessor for LinkManager.Attachment(0);
  v8[11] = v12;
  v8[12] = *(v12 - 8);
  v8[13] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v8[14] = v13;
  v8[15] = *(v13 - 8);
  v8[16] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v8[17] = v14;
  v8[18] = *(v14 - 8);
  v15 = swift_task_alloc();
  v8[19] = v15;
  v16 = *(v12 + 28);
  v19 = (a4 + *a4);
  v17 = swift_task_alloc();
  v8[20] = v17;
  *v17 = v8;
  v17[1] = closure #2 in LinkManager.fetchAttachment(attachmentID:generator:);

  return v19(v15, a6, a7 + v16);
}

uint64_t closure #2 in LinkManager.fetchAttachment(attachmentID:generator:)()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = closure #2 in LinkManager.fetchAttachment(attachmentID:generator:);
  }

  else
  {
    v2 = closure #2 in LinkManager.fetchAttachment(attachmentID:generator:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v49 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[10];
    v4 = OBJC_IVAR____TtC15GroupActivities11LinkManager_lock;
    v5 = [*(Strong + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock) lock];
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*MEMORY[0x1E69E7D40] & *v2) + 304;
    v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x130);
    v9 = (v8)(v5);
    v10 = swift_task_alloc();
    *(v10 + 16) = v3;
    v11 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #2 in LinkManager.fetchAttachment(attachmentID:generator:), v10, v9);
    v13 = v12;

    if (v13)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v16 = v0[15];
      v15 = v0[16];
      v17 = v0[14];
      v18 = v0[10];
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.default);
      (*(v16 + 16))(v15, v18, v17);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      v22 = os_log_type_enabled(v20, v21);
      v24 = v0[15];
      v23 = v0[16];
      v25 = v0[14];
      if (v22)
      {
        v26 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = v47;
        *v26 = 136315138;
        lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v21;
        v28 = v4;
        v30 = v29;
        (*(v24 + 8))(v23, v25);
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, &v48);
        v4 = v28;

        *(v26 + 4) = v31;
        _os_log_impl(&dword_1AEE80000, v20, v45, "Failed to find attachment with attachmentID %s when trying to update the state", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x1B2715BA0](v47, -1, -1);
        MEMORY[0x1B2715BA0](v26, -1, -1);
      }

      else
      {

        (*(v24 + 8))(v23, v25);
      }

LABEL_14:
      v42 = v0[18];
      v41 = v0[19];
      v43 = v0[17];
      [*(v2 + v4) unlock];
      (*(v42 + 8))(v41, v43);

      goto LABEL_15;
    }

    v32 = v2;
    v33 = (v8)(v14);
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *(v33 + 16))
    {
      v46 = v4;
      v10 = (v0 + 2);
      v34 = v0[12];
      v35 = v0[13];
      v36 = v0[11];
      v7 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v8 = *(v34 + 72) * v11;
      _s15GroupActivities11ParticipantVWOcTm_1(v33 + v7 + v8, v35, type metadata accessor for LinkManager.Attachment);

      v37 = *(v36 + 32);
      outlined consume of LinkManager.Attachment.State(*(v35 + v37));
      *(v35 + v37) = 2;
      v32 = (*((*v6 & *v2) + 0x140))(v0 + 2);
      v6 = v38;
      v13 = *v38;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v6 = v13;
      if (result)
      {
LABEL_11:
        v4 = v46;
        if (v11 >= *(v13 + 16))
        {
          __break(1u);
          return result;
        }

        v40 = v0[13];
        outlined assign with copy of LinkManager.Attachment(v40, v13 + v7 + v8);
        v32(v10, 0);
        _s15GroupActivities11ParticipantVWOhTm_0(v40, type metadata accessor for LinkManager.Attachment);
        goto LABEL_14;
      }

LABEL_20:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      v13 = result;
      *v6 = result;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_20;
  }

  (*(v0[18] + 8))(v0[19], v0[17]);
LABEL_15:

  v44 = v0[1];

  return v44();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in LinkManager.fetchAttachmentMetadata(attachmentID:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v55 = a3;
  v4 = type metadata accessor for TaskPriority();
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v62 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - v11;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Log.default);
  v58 = *(v8 + 16);
  v59 = v8 + 16;
  v58(v12, a1, v7);
  v60 = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v63 = v8;
  v61 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v54 = a1;
    v19 = v18;
    v53 = swift_slowAlloc();
    v65 = v53;
    *v19 = 136315394;
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v8;
    v23 = v22;
    v57 = *(v21 + 8);
    v57(v12, v7);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v65);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v56 + 8))(v6, v4);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v65);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_1AEE80000, v15, v16, "Received request to fetch attachmentMetadata: %s with priority: %s", v19, 0x16u);
    v29 = v53;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v29, -1, -1);
    v30 = v19;
    a1 = v54;
    MEMORY[0x1B2715BA0](v30, -1, -1);
  }

  else
  {

    v57 = *(v8 + 8);
    v31 = (v57)(v12, v7);
  }

  v32 = *((*MEMORY[0x1E69E7D40] & *v64) + 0x130);
  v33 = v32(v31);
  MEMORY[0x1EEE9AC00](v33);
  *(&v52 - 2) = a1;
  v34 = specialized Collection.firstIndex(where:)(partial apply for closure #1 in closure #2 in LinkManager.fetchAttachment(attachmentID:generator:), (&v52 - 4), v33);
  v36 = v35;

  if (v36)
  {
    v38 = v61;
    v39 = v62;
    v58(v62, a1, v61);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65 = v43;
      *v42 = 136315138;
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v57(v39, v38);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v65);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1AEE80000, v40, v41, "Failed to find attachment with attachmentID %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1B2715BA0](v43, -1, -1);
      MEMORY[0x1B2715BA0](v42, -1, -1);
    }

    else
    {

      v57(v39, v38);
    }

    lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
    swift_allocError();
    *v51 = 3;
    return swift_willThrow();
  }

  else
  {
    result = v32(v37);
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v49 = result;
      if (v34 < *(result + 16))
      {
        v50 = *(type metadata accessor for LinkManager.Attachment(0) - 8);
        _s15GroupActivities11ParticipantVWOcTm_1(v49 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v34, v55, type metadata accessor for LinkManager.Attachment);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t LinkManager.Attachment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LinkManager.Attachment.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LinkManager.Attachment.sentTime.setter(double a1)
{
  result = type metadata accessor for LinkManager.Attachment(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t LinkManager.Attachment.source.getter()
{
  v1 = v0 + *(type metadata accessor for LinkManager.Attachment(0) + 24);
  v2 = *v1;
  outlined copy of LinkManager.Attachment.Source(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t LinkManager.Attachment.source.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for LinkManager.Attachment(0) + 24);
  result = outlined consume of LinkManager.Attachment.Source(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t LinkManager.Attachment.file.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LinkManager.Attachment(0) + 28);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LinkManager.Attachment.file.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LinkManager.Attachment(0) + 28);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t LinkManager.Attachment.state.getter()
{
  v1 = *(v0 + *(type metadata accessor for LinkManager.Attachment(0) + 32));
  outlined copy of LinkManager.Attachment.State(v1);
  return v1;
}

unint64_t LinkManager.Attachment.state.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LinkManager.Attachment(0) + 32);
  result = outlined consume of LinkManager.Attachment.State(*(v1 + v3));
  *(v1 + v3) = a1;
  return result;
}

void (*LinkManager.messageReceived(messenger:message:)())(uint64_t, unint64_t, uint64_t, char *)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
  if (result)
  {
    v3 = result;
    v4 = v2;
    v5 = UnreliableMessenger.Message.data.getter();
    v7 = v6;
    v8 = UnreliableMessenger.Message.fromParticipantID.getter();
    v9 = 1;
    v3(v5, v7, v8, &v9);
    outlined consume of Data._Representation(v5, v7);
    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v3, v4);
  }

  return result;
}

void LinkManager.messengerClosed(_:reason:)(uint64_t a1, uint64_t a2)
{
  if (static UnreliableMessenger.ClosedReason.== infix(_:_:)() & 1) != 0 || (static UnreliableMessenger.ClosedReason.== infix(_:_:)())
  {
    v3 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1E0))();
    if (v3)
    {
      v5 = v3;
      v6 = v4;
      lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
      v7 = swift_allocError();
      *v8 = 2;
      v5();
      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5, v6);
    }
  }
}

void (*protocol witness for UnreliableMessengerDelegate.messageReceived(messenger:message:) in conformance LinkManager())(uint64_t, unint64_t, uint64_t, char *)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))();
  if (result)
  {
    v3 = result;
    v4 = v2;
    v5 = UnreliableMessenger.Message.data.getter();
    v7 = v6;
    v8 = UnreliableMessenger.Message.fromParticipantID.getter();
    v9 = 1;
    v3(v5, v7, v8, &v9);
    outlined consume of Data._Representation(v5, v7);
    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v3, v4);
  }

  return result;
}

void protocol witness for UnreliableMessengerDelegate.messengerClosed(_:reason:) in conformance LinkManager(uint64_t a1, uint64_t a2)
{
  if (static UnreliableMessenger.ClosedReason.== infix(_:_:)() & 1) != 0 || (static UnreliableMessenger.ClosedReason.== infix(_:_:)())
  {
    v3 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1E0))();
    if (v3)
    {
      v5 = v3;
      v6 = v4;
      lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError();
      v7 = swift_allocError();
      *v8 = 2;
      v5();
      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v5, v6);
    }
  }
}

uint64_t LinkManager.isResumed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities11LinkManager_lock);
  [v1 lock];
  v2 = *(v0 + OBJC_IVAR____TtC15GroupActivities11LinkManager_state);
  [v1 unlock];
  return v2;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for CodingUserInfoKey();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    outlined init with take of GroupSessionTable.Storage(*(v9 + 56) + 24 * v7, a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_1AF00EBD0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 16 * v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    LOBYTE(v11) = *(v11 + 9);
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 9) = v11;
    result = specialized _NativeDictionary._delete(at:)(v8, v10, v14);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 1280;
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v18 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v18;
    }

    a3(*(v16 + 56) + 40 * v14, a6);
    a4(v14, v16);
    *v10 = v16;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkManager.LinkError and conformance LinkManager.LinkError()
{
  result = lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError;
  if (!lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError;
  if (!lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkManager.LinkError and conformance LinkManager.LinkError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkManager.Errors and conformance LinkManager.Errors()
{
  result = lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors;
  if (!lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors;
  if (!lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkManager.Errors and conformance LinkManager.Errors);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LinkManager and conformance LinkManager(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in LinkManager.fetchAttachmentLedgerTopic()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in LinkManager.fetchAttachmentLedgerTopic()(a1, v4, v5, v6);
}

uint64_t _s15GroupActivities11ParticipantVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v47 = a4;
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v41 = a1;
  v8 = type metadata accessor for Asset.Protector();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SymmetricKeySize();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for SymmetricKey();
  v39 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v29 - v13;
  v54 = type metadata accessor for AssetManager();
  v55 = &protocol witness table for AssetManager;
  *&v53 = a6;
  swift_defaultActor_initialize();
  v33 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0F0OAJ5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0F0OAJ5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GGMR);
  v31 = 8 * *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0C0OAH5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GMd, &_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0C0OAH5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GMR) - 8) + 72);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1AF014AC0;
  LOBYTE(v49) = 0;
  v52 = 1;
  v51 = 0;
  lazy protocol witness table accessor for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State();
  lazy protocol witness table accessor for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event();
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v49) = 1;
  v52 = 2;
  v51 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v49) = 2;
  v52 = 5;
  v51 = 3;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v49) = 2;
  v52 = 2;
  v51 = 6;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v49) = 2;
  v52 = 2;
  v51 = 7;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v49) = 2;
  v52 = 5;
  v51 = 5;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v49) = 3;
  v52 = 3;
  v51 = 6;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v49) = 2;
  v52 = 3;
  v14 = v30;
  v51 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v49) = 1;
  v52 = 5;
  v51 = 1;
  v15 = v34;
  v16 = v35;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v49) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineCy15GroupActivities20AttachmentUploadTaskC0C0OAF5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLOGMd, &_s14CopresenceCore12StateMachineCy15GroupActivities20AttachmentUploadTaskC0C0OAF5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLOGMR);
  swift_allocObject();
  *(v14 + v33) = StateMachine.init(initialState:transitions:)();
  *(v14 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_topicUploadTask) = 0;
  *(v14 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler) = 0;
  v17 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask__state;
  LOBYTE(v49) = 0;
  v18 = v36;
  Published.init(initialValue:)();
  (*(v37 + 32))(v14 + v17, v18, v15);
  *(v14 + 112) = v41;

  static SymmetricKeySize.bits256.getter();
  v19 = v38;
  SymmetricKey.init(size:)();
  v20 = v39 + 16;
  (*(v39 + 16))(v14 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_key, v19, v16);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  outlined copy of Data._Representation(v49, v50);
  v21 = v42;
  Asset.Protector.init(securityKey:privacyKey:)();
  (*(v20 - 8))(v19, v16);
  (*(v43 + 32))(v14 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector, v21, v44);
  outlined init with take of Transferable(&v53, v14 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager);
  v22 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_file;
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 32))(v14 + v22, v45, v23);
  v24 = (v14 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata);
  v25 = v47;
  *v24 = v46;
  v24[1] = v25;
  v26 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id;
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 32))(v14 + v26, v48, v27);
  return v14;
}

uint64_t _s15GroupActivities11ParticipantVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in LinkManager.fetchAttachment(attachmentID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in LinkManager.fetchAttachment(attachmentID:)(a1, a2, a3, v3);
}

uint64_t _s15GroupActivities11ParticipantVWObTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double outlined copy of LinkManager.Attachment.Source(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return outlined copy of Data?(a1, a2);
  }

  return result;
}

uint64_t outlined consume of LinkManager.Attachment.Source(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return outlined consume of Data?(a1, a2);
  }

  else
  {
  }
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double outlined copy of LinkManager.Attachment.State(unint64_t a1)
{
  if (a1 >= 3)
  {
  }

  return result;
}

uint64_t partial apply for closure #2 in LinkManager.fetchAttachment(attachmentID:generator:)(uint64_t a1)
{
  v3 = *(type metadata accessor for LinkManager.Attachment(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for UUID();
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = *(v1 + v5);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #2 in LinkManager.fetchAttachment(attachmentID:generator:)(a1, v6, v7, v8, v9, v10, v1 + v4, v11);
}

uint64_t outlined assign with copy of LinkManager.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkManager.Attachment(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t outlined consume of LinkManager.Attachment.State(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

void type metadata completion function for LinkManager(uint64_t a1)
{
  type metadata accessor for CurrentSubject<PluginAttachmentLedgerTopicProvider?>(319, &lazy cache variable for type metadata for CurrentSubject<AttachmentLedgerTopic?>, &_s15GroupActivities21AttachmentLedgerTopicCSgMd, &_s15GroupActivities21AttachmentLedgerTopicCSgMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CurrentSubject<PluginAttachmentLedgerTopicProvider?>(319, &lazy cache variable for type metadata for CurrentSubject<[LinkManager.Attachment]>, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Participant(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for LinkManager.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkManager.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for LinkManager.Attachment(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkManager.Attachment.Source(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkManager.Attachment.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t get_enum_tag_for_layout_string_15GroupActivities11LinkManagerC10AttachmentV5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for LinkManager.Attachment.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkManager.Attachment.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinkManager.State and conformance LinkManager.State()
{
  result = lazy protocol witness table cache variable for type LinkManager.State and conformance LinkManager.State;
  if (!lazy protocol witness table cache variable for type LinkManager.State and conformance LinkManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkManager.State and conformance LinkManager.State);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Data, @in_guaranteed UInt64, @in_guaranteed SendReliability) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v7 = a3;
  return v5(v8, &v7, a4);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCs6UInt64V_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B2714600](v2, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1B2714600](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities11ParticipantV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Participant(0);
  v3 = *(v2 - 1);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v35 = &v35 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = *(a1 + 16);
  v12 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant, &protocol conformance descriptor for Participant);
  v13 = MEMORY[0x1B2714600](v11, v2, v12);
  v38 = v11;
  if (v11)
  {
    v14 = 0;
    v15 = *(v3 + 80);
    v16 = *(v3 + 72);
    v36 = v16;
    v37 = a1 + ((v15 + 32) & ~v15);
    while (1)
    {
      _s15GroupActivities11ParticipantVWOcTm_1(v37 + v16 * v14, v10, type metadata accessor for Participant);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      dispatch thunk of Hashable.hash(into:)();
      v17 = &v10[v2[5]];
      v18 = *v17;
      v19 = *(v17 + 1);
      String.hash(into:)();
      v44 = *&v10[v2[6]];
      MEMORY[0x1B2715070]();
      v20 = &v10[v2[7]];
      v22 = *v20;
      v21 = *(v20 + 1);
      v40 = v14;
      v42 = v22;
      v43 = v21;
      if (v21)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v41 = v10[v2[8]];
      Hasher._combine(_:)(v41);
      v39 = v10[v2[9]];
      Hasher._combine(_:)(v39);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v13 + 32);
      v25 = v23 & ~v24;
      v16 = v36;
      if ((*(v13 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        break;
      }

LABEL_27:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v35;
      _s15GroupActivities11ParticipantVWOcTm_1(v10, v35, type metadata accessor for Participant);
      v45 = v13;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v33, v25, isUniquelyReferenced_nonNull_native);
      v13 = v45;
LABEL_28:
      v14 = v40 + 1;
      _s15GroupActivities11ParticipantVWOhTm_0(v10, type metadata accessor for Participant);
      if (v14 == v38)
      {
        return v13;
      }
    }

    v26 = ~v24;
    while (1)
    {
      _s15GroupActivities11ParticipantVWOcTm_1(*(v13 + 48) + v25 * v16, v6, type metadata accessor for Participant);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_9;
      }

      v27 = &v6[v2[5]];
      v28 = *v27 == v18 && *(v27 + 1) == v19;
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v6[v2[6]] != v44)
      {
        goto LABEL_9;
      }

      v29 = &v6[v2[7]];
      v30 = *(v29 + 1);
      if (v30)
      {
        if (!v43)
        {
          goto LABEL_9;
        }

        v31 = *v29 == v42 && v30 == v43;
        if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else if (v43)
      {
        goto LABEL_9;
      }

      if (v41 == v6[v2[8]] && v39 == v6[v2[9]])
      {
        _s15GroupActivities11ParticipantVWOhTm_0(v6, type metadata accessor for Participant);
        goto LABEL_28;
      }

LABEL_9:
      _s15GroupActivities11ParticipantVWOhTm_0(v6, type metadata accessor for Participant);
      v25 = (v25 + 1) & v26;
      if (((*(v13 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  return v13;
}

unint64_t *_sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo13CPParticipantC_SayAEGTt0g5Tf4g_nTm(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v12 = type metadata accessor for OS_dispatch_queue(0, a2, a3);
    v13 = lazy protocol witness table accessor for type CPParticipant and conformance NSObject(a4, a2, a3);
    result = MEMORY[0x1B2714600](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x1B2714B30](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = __CocoaSet.count.getter();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities17AddressableMemberV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
  result = MEMORY[0x1B2714600](v2, &type metadata for AddressableMember, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      specialized Set._Variant.insert(_:)(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15GroupActivities19PresenceSessionInfoV11ParticipantV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type PresenceSessionInfo.Participant and conformance PresenceSessionInfo.Participant, type metadata accessor for PresenceSessionInfo.Participant, &protocol conformance descriptor for PresenceSessionInfo.Participant);
  result = MEMORY[0x1B2714600](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      _s15GroupActivities11ParticipantVWOcTm_1(v12, v6, type metadata accessor for PresenceSessionInfo.Participant);
      specialized Set._Variant.insert(_:)(v8, v6);
      _s15GroupActivities11ParticipantVWOhTm_0(v8, type metadata accessor for PresenceSessionInfo.Participant);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC22UniformTypeIdentifiers6UTTypeV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type LinkManager and conformance LinkManager(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);
  result = MEMORY[0x1B2714600](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CPParticipant and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OS_dispatch_queue(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State()
{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event()
{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event);
  }

  return result;
}

uint64_t outlined init with take of (key: UInt64, value: PubSubTopic.Participant)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_14CopresenceCore11PubSubTopicC11ParticipantV5valuetMd, &_ss6UInt64V3key_14CopresenceCore11PubSubTopicC11ParticipantV5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AttachmentUploadTask.__allocating_init(topic:file:developerMetadata:id:manager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = specialized AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(a1, a2, a3, a4, a5, v17, v12, v13, v14);

  __swift_destroy_boxed_opaque_existential_0(a6);
  return v19;
}

Swift::Int AttachmentUploadTask.State.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

Swift::Int AttachmentUploadTask.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AttachmentUploadTask.developerMetadata.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata + 8));
  return v1;
}

uint64_t AttachmentUploadTask.file.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t key path getter for AttachmentUploadTask.protector : AttachmentUploadTask@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
  swift_beginAccess();
  v5 = type metadata accessor for Asset.Protector();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for AttachmentUploadTask.protector : AttachmentUploadTask(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Asset.Protector();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t AttachmentUploadTask.protector.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
  swift_beginAccess();
  v4 = type metadata accessor for Asset.Protector();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t AttachmentUploadTask.protector.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
  swift_beginAccess();
  v4 = type metadata accessor for Asset.Protector();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path setter for AttachmentUploadTask.assetManager : AttachmentUploadTask(uint64_t a1, uint64_t *a2)
{
  outlined init with copy of Transferable(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + v4));
  outlined init with take of Transferable(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t AttachmentUploadTask.assetManager.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager;
  swift_beginAccess();
  return outlined init with copy of Transferable(v1 + v3, a1);
}

uint64_t AttachmentUploadTask.assetManager.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of Transferable(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for AttachmentUploadTask.topicUploadTask : AttachmentUploadTask(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t AttachmentUploadTask.topicUploadTask.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t key path getter for AttachmentUploadTask.state : AttachmentUploadTask@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for AttachmentUploadTask.state : AttachmentUploadTask(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t AttachmentUploadTask.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AttachmentUploadTask.state.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*AttachmentUploadTask.state.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return CKShareGroupSessionProvider.share.modify;
}

uint64_t key path getter for AttachmentUploadTask.$state : AttachmentUploadTask(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for AttachmentUploadTask.$state : AttachmentUploadTask(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t AttachmentUploadTask.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AttachmentUploadTask.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AttachmentUploadTask.$state.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities20AttachmentUploadTaskC5StateO_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SystemCoordinatorHostManager.$configurations.modify;
}

uint64_t AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = specialized AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(a1, a2, a3, a4, a5, v17, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_0(a6);
  return v19;
}

uint64_t AttachmentUploadTask.start()()
{
  v1[54] = v0;
  v2 = type metadata accessor for SimultaneousTransferError();
  v1[55] = v2;
  v1[56] = *(v2 - 8);
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v3 = type metadata accessor for Attachment.MMCSMetadata.UploadStatus();
  v1[59] = v3;
  v1[60] = *(v3 - 8);
  v1[61] = swift_task_alloc();
  v4 = type metadata accessor for Asset();
  v1[62] = v4;
  v1[63] = *(v4 - 8);
  v1[64] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[65] = swift_task_alloc();
  v5 = type metadata accessor for Asset.ID();
  v1[66] = v5;
  v1[67] = *(v5 - 8);
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v6 = type metadata accessor for SymmetricKey();
  v1[71] = v6;
  v1[72] = *(v6 - 8);
  v1[73] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v1[74] = v7;
  v1[75] = *(v7 - 8);
  v1[76] = swift_task_alloc();
  v8 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
  v1[77] = v8;
  v9 = *(v8 - 8);
  v1[78] = v9;
  v1[79] = *(v9 + 64);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v10 = type metadata accessor for AssetSkeleton();
  v1[84] = v10;
  v1[85] = *(v10 - 8);
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v11 = type metadata accessor for UploadToken();
  v1[90] = v11;
  v1[91] = *(v11 - 8);
  v1[92] = swift_task_alloc();
  v12 = type metadata accessor for TaskPriority();
  v1[93] = v12;
  v1[94] = *(v12 - 8);
  v1[95] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.start(), v0, 0);
}

{
  v20 = v0;
  if (one-time initialization token for uploadTask != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[96] = __swift_project_value_buffer(v1, static Log.uploadTask);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[95];
    v5 = v0[94];
    v6 = v0[93];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    v9 = AttachmentUploadTask.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v5 + 8))(v4, v6);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v19);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1AEE80000, v2, v3, "%s Received request to start with priority: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[97] = v16;
  *v16 = v0;
  v16[1] = AttachmentUploadTask.start();
  v17 = v0[92];

  return AttachmentUploadTask.requestUploadToken()(v17);
}

{
  v2 = *v1;
  v2[98] = v0;

  if (v0)
  {
    v3 = v2[54];

    return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.start(), v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[99] = v4;
    *v4 = v2;
    v4[1] = AttachmentUploadTask.start();
    v5 = v2[92];

    return AttachmentUploadTask.createAssetUploadCoordinator(_:)((v2 + 7), v5);
  }
}

{
  v2 = *v1;
  *(*v1 + 800) = v0;

  v3 = *(v2 + 432);
  if (v0)
  {
    v4 = AttachmentUploadTask.start();
  }

  else
  {
    v4 = AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v19 = v0;
  outlined init with take of Transferable((v0 + 56), v0 + 16);
  outlined init with copy of Transferable(v0 + 16, v0 + 96);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v18 = v4;
    *v3 = 136315394;
    v5 = AttachmentUploadTask.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v18);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2080;
    outlined init with copy of Transferable(v0 + 96, v0 + 176);
    outlined init with copy of URL?(v0 + 176, v0 + 216, &_s15GroupActivities22AssetUploadCoordinator_pSgMd, &_s15GroupActivities22AssetUploadCoordinator_pSgMR);
    if (*(v0 + 240))
    {
      outlined init with take of Transferable((v0 + 216), v0 + 256);
      outlined init with copy of Transferable(v0 + 256, v0 + 296);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities22AssetUploadCoordinator_pMd, &_s15GroupActivities22AssetUploadCoordinator_pMR);
      v8 = String.init<A>(reflecting:)();
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    outlined destroy of NSObject?(v0 + 176, &_s15GroupActivities22AssetUploadCoordinator_pSgMd, &_s15GroupActivities22AssetUploadCoordinator_pSgMR);
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v18);

    *(v3 + 14) = v11;
    _os_log_impl(&dword_1AEE80000, v1, v2, "%s Attempting to fetch skeleton from coordinator %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  }

  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  v17 = (*(v13 + 8) + **(v13 + 8));
  v14 = swift_task_alloc();
  *(v0 + 808) = v14;
  *v14 = v0;
  v14[1] = AttachmentUploadTask.start();
  v15 = *(v0 + 712);

  return v17(v15, v12, v13);
}

{
  v1 = *(*v0 + 432);

  return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.start(), v1, 0);
}

{
  v100 = v0;
  v1 = *(*(v0 + 680) + 16);
  v1(*(v0 + 704), *(v0 + 712), *(v0 + 672));

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v97 = v3;
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 704);
  v6 = *(v0 + 680);
  v7 = *(v0 + 672);
  if (v4)
  {
    v94 = v2;
    v8 = *(v0 + 664);
    v87 = *(v0 + 656);
    v9 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v99[0] = v91;
    *v9 = 136315394;
    v10 = AttachmentUploadTask.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v99);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v1(v8, v5, v7);
    (*(v6 + 56))(v8, 0, 1, v7);
    outlined init with copy of URL?(v8, v87, &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    if ((*(v6 + 48))(v87, 1, v7) == 1)
    {
      v13 = 0xE300000000000000;
      v14 = 7104878;
    }

    else
    {
      v15 = *(v0 + 696);
      v16 = *(v0 + 688);
      v17 = *(v0 + 680);
      v18 = *(v0 + 672);
      (*(v17 + 32))(v15, *(v0 + 656), v18);
      v1(v16, v15, v18);
      v14 = String.init<A>(reflecting:)();
      v13 = v19;
      (*(v17 + 8))(v15, v18);
    }

    v20 = *(v0 + 704);
    v21 = *(v0 + 680);
    v22 = *(v0 + 672);
    outlined destroy of NSObject?(*(v0 + 664), &_s10CloudAsset0B8SkeletonVSgMd, &_s10CloudAsset0B8SkeletonVSgMR);
    v85 = *(v21 + 8);
    v85(v20, v22);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, v99);

    *(v9 + 14) = v23;
    _os_log_impl(&dword_1AEE80000, v94, v97, "%s Fetched skeleton: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v91, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  else
  {

    v85 = *(v6 + 8);
    v85(v5, v7);
  }

  v95 = *(v0 + 800);
  v24 = *(v0 + 608);
  v25 = *(v0 + 600);
  v26 = *(v0 + 592);
  v88 = *(v0 + 584);
  v27 = *(v0 + 576);
  v28 = *(v0 + 568);
  v29 = *(v0 + 432);
  v30 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id;
  *(v0 + 816) = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id;
  v31 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_key;
  v82 = *(v29 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata + 8);
  v83 = *(v29 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  (*(v25 + 16))(v24, v29 + v30, v26);
  (*(v27 + 16))(v88, v29 + v31, v28);
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type AssetSkeleton and conformance AssetSkeleton, MEMORY[0x1E6994708], MEMORY[0x1E6994710]);
  v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v95)
  {
    v92 = *(v0 + 736);
    v34 = *(v0 + 728);
    v89 = *(v0 + 720);
    v84 = *(v0 + 712);
    v35 = *(v0 + 672);
    v36 = *(v0 + 608);
    v37 = *(v0 + 600);
    v38 = *(v0 + 592);
    v39 = *(v0 + 584);
    v40 = *(v0 + 576);
    v41 = *(v0 + 568);

    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v36, v38);
    v85(v84, v35);
    (*(v34 + 8))(v92, v89);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v80 = *(v0 + 752);
    v81 = *(v0 + 744);
    v44 = *(v0 + 648);
    v86 = *(v0 + 640);
    v96 = *(v0 + 632);
    v90 = *(v0 + 624);
    v45 = *(v0 + 616);
    v74 = *(v0 + 608);
    v71 = *(v0 + 600);
    v72 = *(v0 + 592);
    v76 = *(v0 + 576);
    v77 = *(v0 + 568);
    v78 = *(v0 + 584);
    v46 = *(v0 + 560);
    v47 = *(v0 + 552);
    v69 = *(v0 + 544);
    v48 = *(v0 + 536);
    v49 = *(v0 + 528);
    v79 = *(v0 + 520);
    v93 = *(v0 + 432);
    v75 = v33;
    v73 = v32;
    AssetSkeleton.assetID.getter();
    Asset.ID.storageLocation.getter();
    v50 = *(v48 + 8);
    v50(v46, v49);
    AssetSkeleton.assetID.getter();
    v51 = Asset.ID.signature.getter();
    v70 = v52;
    v50(v47, v49);
    AssetSkeleton.assetID.getter();
    v53 = Asset.ID.referenceSignature.getter();
    v55 = v54;

    v50(v69, v49);
    (*(v71 + 32))(v44, v74, v72);
    (*(v76 + 32))(v44 + v45[5], v78, v77);
    v56 = (v44 + v45[6]);
    *v56 = v73;
    v56[1] = v75;
    v57 = (v44 + v45[7]);
    *v57 = v83;
    v57[1] = v82;
    v58 = (v44 + v45[9]);
    *v58 = v51;
    v58[1] = v70;
    v59 = (v44 + v45[10]);
    *v59 = v53;
    v59[1] = v55;
    (*(v80 + 56))(v79, 1, 1, v81);
    outlined init with copy of AttachmentLedgerTopic.UploadRequest(v44, v86);
    outlined init with copy of Transferable(v0 + 16, v0 + 136);
    v60 = lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type AttachmentUploadTask and conformance AttachmentUploadTask, type metadata accessor for AttachmentUploadTask, &protocol conformance descriptor for AttachmentUploadTask);
    v61 = (*(v90 + 80) + 40) & ~*(v90 + 80);
    v62 = swift_allocObject();
    v62[2] = v93;
    v62[3] = v60;
    v62[4] = v93;
    outlined init with take of AttachmentLedgerTopic.UploadRequest(v86, v62 + v61);
    outlined init with take of Transferable((v0 + 136), v62 + ((v96 + v61 + 7) & 0xFFFFFFFFFFFFFFF8));
    swift_retain_n();
    outlined copy of Data?(v83, v82);
    v63 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v79, &async function pointer to partial apply for closure #1 in AttachmentUploadTask.start(), v62);
    v64 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_topicUploadTask;
    *(v0 + 824) = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_topicUploadTask;
    swift_beginAccess();
    *(v93 + v64) = v63;

    v65 = *(v0 + 40);
    v66 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v65);
    v98 = (*(v66 + 24) + **(v66 + 24));
    v67 = swift_task_alloc();
    *(v0 + 832) = v67;
    *v67 = v0;
    v67[1] = AttachmentUploadTask.start();
    v68 = *(v0 + 512);

    return (v98)(v68, v65, v66);
  }
}

{
  v2 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {
    v3 = v2[54];
    v4 = AttachmentUploadTask.start();
  }

  else
  {
    v5 = v2[54];
    (*(v2[63] + 8))(v2[64], v2[62]);
    v4 = AttachmentUploadTask.start();
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v58 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v57[0] = v4;
    *v3 = 136315138;
    v5 = AttachmentUploadTask.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, v57);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1AEE80000, v1, v2, "%s finished upload", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }

  *(v0 + 937) = 4;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v8 = *(v0 + 432);
    v9 = *(v8 + *(v0 + 824));
    *(v0 + 848) = v9;
    if (v9)
    {

      v10 = swift_task_alloc();
      *(v0 + 856) = v10;
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v10 = v0;
      v10[1] = AttachmentUploadTask.start();
      v12 = MEMORY[0x1E69E7288];
      v13 = MEMORY[0x1E69E7CA8] + 8;
LABEL_12:

      return MEMORY[0x1EEE6DA10](v11, v9, v13, v11, v12);
    }

    v43 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
    swift_beginAccess();
    v44 = *(v8 + v43);
    if (v44)
    {

      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1B27144E0](v44, MEMORY[0x1E69E7CA8] + 8, v45, MEMORY[0x1E69E7288]);
    }

    v46 = *(v0 + 816);
    v47 = *(v0 + 432);
    (*(*(v0 + 480) + 104))(*(v0 + 488), *MEMORY[0x1E69974A0], *(v0 + 472));
    v48 = swift_task_alloc();
    *(v0 + 872) = v48;
    *v48 = v0;
    v48[1] = AttachmentUploadTask.start();
    v49 = *(v0 + 488);

    return AttachmentLedgerTopic.updateProgress(on:with:)(v47 + v46, v49);
  }

  else
  {
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    v14 = swift_allocError();
    *v15 = 0;
    swift_willThrow();
    *(v0 + 888) = v14;

    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v57[0] = v20;
      *v19 = 136315394;
      v21 = AttachmentUploadTask.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v57);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      *(v0 + 424) = v14;
      v24 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v25 = String.init<A>(reflecting:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v57);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_1AEE80000, v17, v18, "%s Failed to upload, reason: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v20, -1, -1);
      MEMORY[0x1B2715BA0](v19, -1, -1);
    }

    *(v0 + 936) = 5;
    if (dispatch thunk of StateMachine.execute(_:)())
    {
      v28 = *(v0 + 824);
      v29 = *(v0 + 432);
      v30 = *(v29 + v28);
      v31 = MEMORY[0x1E69E7CA8];
      if (v30)
      {

        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        MEMORY[0x1B27144E0](v30, v31 + 8, v32, MEMORY[0x1E69E7288]);

        v9 = *(v29 + v28);
        *(v0 + 896) = v9;
        if (v9)
        {

          v33 = swift_task_alloc();
          *(v0 + 904) = v33;
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          *v33 = v0;
          v33[1] = AttachmentUploadTask.start();
          v12 = MEMORY[0x1E69E7288];
          v13 = v31 + 8;
          goto LABEL_12;
        }

        v29 = *(v0 + 432);
      }

      v50 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
      swift_beginAccess();
      v51 = *(v29 + v50);
      if (v51)
      {

        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        MEMORY[0x1B27144E0](v51, v31 + 8, v52, MEMORY[0x1E69E7288]);
      }

      v53 = *(v0 + 816);
      v54 = *(v0 + 432);
      v55 = swift_task_alloc();
      *(v0 + 920) = v55;
      *v55 = v0;
      v55[1] = AttachmentUploadTask.start();

      return AttachmentLedgerTopic.remove(id:)(v54 + v53);
    }

    else
    {
      v34 = *(v0 + 736);
      v35 = *(v0 + 728);
      v36 = *(v0 + 720);
      v37 = *(v0 + 712);
      v38 = *(v0 + 680);
      v39 = *(v0 + 672);
      v40 = *(v0 + 648);
      swift_allocError();
      *v41 = 0;
      swift_willThrow();

      outlined destroy of AttachmentLedgerTopic.UploadRequest(v40);
      (*(v38 + 8))(v37, v39);
      (*(v35 + 8))(v34, v36);
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));

      v42 = *(v0 + 8);

      return v42();
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v3 = *(v2 + 432);

    v4 = AttachmentUploadTask.start();
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 432);
    v4 = AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

{

  v1 = v0[54];
  v2 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B27144E0](v3, MEMORY[0x1E69E7CA8] + 8, v4, MEMORY[0x1E69E7288]);
  }

  v5 = v0[102];
  v6 = v0[54];
  (*(v0[60] + 104))(v0[61], *MEMORY[0x1E69974A0], v0[59]);
  v7 = swift_task_alloc();
  v0[109] = v7;
  *v7 = v0;
  v7[1] = AttachmentUploadTask.start();
  v8 = v0[61];

  return AttachmentLedgerTopic.updateProgress(on:with:)(v6 + v5, v8);
}

{
  v2 = *v1;
  *(*v1 + 880) = v0;

  v3 = v2[61];
  v4 = v2[60];
  v5 = v2[59];
  v6 = v2[54];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = AttachmentUploadTask.start();
  }

  else
  {
    v7 = AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[85];
  v6 = v0[84];
  outlined destroy of AttachmentLedgerTopic.UploadRequest(v0[81]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v7 = v0[1];

  return v7();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v21 = v0;
  v1 = v0[100];
  v0[51] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v0[56] + 8))(v0[58], v0[55]);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v20 = v6;
      *v5 = 136315138;
      v7 = AttachmentUploadTask.description.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v20);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1AEE80000, v3, v4, "%s caught SimultaneousTransferError", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B2715BA0](v6, -1, -1);
      MEMORY[0x1B2715BA0](v5, -1, -1);
    }

    v10 = v0[100];
    v11 = v0[92];
    v12 = v0[91];
    v13 = v0[90];
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v15 = v0[92];
    v16 = v0[91];
    v17 = v0[90];
    swift_willThrow();
    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[1];

  return v18();
}

{
  v2 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v3 = *(v2 + 432);

    v4 = AttachmentUploadTask.start();
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 432);
    v4 = AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

{

  v1 = v0[54];
  v2 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    MEMORY[0x1B27144E0](v3, MEMORY[0x1E69E7CA8] + 8, v4, MEMORY[0x1E69E7288]);
  }

  v5 = v0[102];
  v6 = v0[54];
  v7 = swift_task_alloc();
  v0[115] = v7;
  *v7 = v0;
  v7[1] = AttachmentUploadTask.start();

  return AttachmentLedgerTopic.remove(id:)(v6 + v5);
}

{
  v2 = *v1;
  *(*v1 + 928) = v0;

  v3 = *(v2 + 432);
  if (v0)
  {
    v4 = AttachmentUploadTask.start();
  }

  else
  {
    v4 = AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v29 = v0;
  v1 = v0[111];
  v0[52] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v0[56] + 8))(v0[57], v0[55]);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v28 = v6;
      *v5 = 136315138;
      v7 = AttachmentUploadTask.description.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v28);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1AEE80000, v3, v4, "%s caught SimultaneousTransferError", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B2715BA0](v6, -1, -1);
      MEMORY[0x1B2715BA0](v5, -1, -1);
    }

    v10 = v0[111];
    v11 = v0[92];
    v12 = v0[91];
    v13 = v0[90];
    v14 = v0[89];
    v15 = v0[85];
    v16 = v0[84];
    v17 = v0[81];
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v17);
    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v19 = v0[92];
    v20 = v0[91];
    v21 = v0[90];
    v22 = v0[89];
    v23 = v0[85];
    v24 = v0[84];
    v25 = v0[81];
    swift_willThrow();
    outlined destroy of AttachmentLedgerTopic.UploadRequest(v25);
    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v26 = v0[1];

  return v26();
}

{
  v40 = v0;
  v1 = *(v0 + 840);
  *(v0 + 888) = v1;

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v39[0] = v6;
    *v5 = 136315394;
    v7 = AttachmentUploadTask.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v39);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v0 + 424) = v1;
    v10 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v39);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Failed to upload, reason: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  *(v0 + 936) = 5;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v14 = *(v0 + 824);
    v15 = *(v0 + 432);
    v16 = *(v15 + v14);
    v17 = MEMORY[0x1E69E7CA8];
    if (v16)
    {

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1B27144E0](v16, v17 + 8, v18, MEMORY[0x1E69E7288]);

      v19 = *(v15 + v14);
      *(v0 + 896) = v19;
      if (v19)
      {

        v20 = swift_task_alloc();
        *(v0 + 904) = v20;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        *v20 = v0;
        v20[1] = AttachmentUploadTask.start();
        v22 = MEMORY[0x1E69E7288];

        return MEMORY[0x1EEE6DA10](v21, v19, v17 + 8, v21, v22);
      }

      v15 = *(v0 + 432);
    }

    v32 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
    swift_beginAccess();
    v33 = *(v15 + v32);
    if (v33)
    {

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1B27144E0](v33, v17 + 8, v34, MEMORY[0x1E69E7288]);
    }

    v35 = *(v0 + 816);
    v36 = *(v0 + 432);
    v37 = swift_task_alloc();
    *(v0 + 920) = v37;
    *v37 = v0;
    v37[1] = AttachmentUploadTask.start();

    return AttachmentLedgerTopic.remove(id:)(v36 + v35);
  }

  else
  {
    v23 = *(v0 + 736);
    v24 = *(v0 + 728);
    v25 = *(v0 + 720);
    v26 = *(v0 + 712);
    v27 = *(v0 + 680);
    v28 = *(v0 + 672);
    v29 = *(v0 + 648);
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v29);
    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v31 = *(v0 + 8);

    return v31();
  }
}

{
  v40 = v0;
  v1 = *(v0 + 864);
  *(v0 + 888) = v1;

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v39[0] = v6;
    *v5 = 136315394;
    v7 = AttachmentUploadTask.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v39);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v0 + 424) = v1;
    v10 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v39);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_1AEE80000, v3, v4, "%s Failed to upload, reason: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  *(v0 + 936) = 5;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v14 = *(v0 + 824);
    v15 = *(v0 + 432);
    v16 = *(v15 + v14);
    v17 = MEMORY[0x1E69E7CA8];
    if (v16)
    {

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1B27144E0](v16, v17 + 8, v18, MEMORY[0x1E69E7288]);

      v19 = *(v15 + v14);
      *(v0 + 896) = v19;
      if (v19)
      {

        v20 = swift_task_alloc();
        *(v0 + 904) = v20;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        *v20 = v0;
        v20[1] = AttachmentUploadTask.start();
        v22 = MEMORY[0x1E69E7288];

        return MEMORY[0x1EEE6DA10](v21, v19, v17 + 8, v21, v22);
      }

      v15 = *(v0 + 432);
    }

    v32 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
    swift_beginAccess();
    v33 = *(v15 + v32);
    if (v33)
    {

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      MEMORY[0x1B27144E0](v33, v17 + 8, v34, MEMORY[0x1E69E7288]);
    }

    v35 = *(v0 + 816);
    v36 = *(v0 + 432);
    v37 = swift_task_alloc();
    *(v0 + 920) = v37;
    *v37 = v0;
    v37[1] = AttachmentUploadTask.start();

    return AttachmentLedgerTopic.remove(id:)(v36 + v35);
  }

  else
  {
    v23 = *(v0 + 736);
    v24 = *(v0 + 728);
    v25 = *(v0 + 720);
    v26 = *(v0 + 712);
    v27 = *(v0 + 680);
    v28 = *(v0 + 672);
    v29 = *(v0 + 648);
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v29);
    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v31 = *(v0 + 8);

    return v31();
  }
}

{
  v23 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[110];
  v5 = v0[92];
  v6 = v0[91];
  v7 = v0[90];
  v8 = v0[89];
  v9 = v0[85];
  v10 = v0[84];
  v21 = v0[81];
  if (v3)
  {
    v20 = v0[90];
    v11 = swift_slowAlloc();
    v19 = v8;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = AttachmentUploadTask.description.getter();
    v18 = v10;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

    *(v11 + 4) = v15;
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v21);
    (*(v9 + 8))(v19, v18);
    (*(v6 + 8))(v5, v20);
  }

  else
  {

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v21);
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v16 = v0[1];

  return v16();
}

{
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 648);

  outlined destroy of AttachmentLedgerTopic.UploadRequest(v7);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

{
  v41 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[116];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v40[0] = v6;
    *v5 = 136315394;
    v7 = AttachmentUploadTask.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, v40);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v40);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_1AEE80000, v1, v2, "%s Failed to remove attachment %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v13 = v0[111];
  v0[52] = v13;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    (*(v0[56] + 8))(v0[57], v0[55]);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40[0] = v18;
      *v17 = 136315138;
      v19 = AttachmentUploadTask.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v40);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1AEE80000, v15, v16, "%s caught SimultaneousTransferError", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B2715BA0](v18, -1, -1);
      MEMORY[0x1B2715BA0](v17, -1, -1);
    }

    v22 = v0[111];
    v23 = v0[92];
    v24 = v0[91];
    v25 = v0[90];
    v26 = v0[89];
    v27 = v0[85];
    v28 = v0[84];
    v29 = v0[81];
    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();

    outlined destroy of AttachmentLedgerTopic.UploadRequest(v29);
    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v31 = v0[92];
    v32 = v0[91];
    v33 = v0[90];
    v34 = v0[89];
    v35 = v0[85];
    v36 = v0[84];
    v37 = v0[81];
    swift_willThrow();
    outlined destroy of AttachmentLedgerTopic.UploadRequest(v37);
    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  v38 = v0[1];

  return v38();
}

uint64_t AttachmentUploadTask.description.getter()
{
  _StringGuts.grow(_:)(69);
  MEMORY[0x1B27141F0](0xD00000000000001BLL, 0x80000001AF01D0D0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1B27141F0](0x3A6369706F74202CLL, 0xE900000000000020);
  v0 = AttachmentLedgerTopic.description.getter();
  MEMORY[0x1B27141F0](v0);

  MEMORY[0x1B27141F0](0x203A656C6966202CLL, 0xE800000000000000);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v1);

  MEMORY[0x1B27141F0](0x203A6469202CLL, 0xE600000000000000);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B27141F0](v2);

  MEMORY[0x1B27141F0](0x3A6574617473202CLL, 0xE900000000000020);
  dispatch thunk of StateMachine.currentState.getter();
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

double AssetSkeleton.uploadRequest(id:key:developerMetadata:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a2;
  v57 = a4;
  v61 = a3;
  v55 = a5;
  v6 = type metadata accessor for Asset.ID();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v56 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v50 - v11;
  v12 = type metadata accessor for SymmetricKey();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v20 = JSONEncoder.init()();
  v21 = *(v17 + 16);
  v64 = v19;
  v65 = v16;
  v22 = v16;
  v23 = v20;
  v21(v19, a1, v22);
  v24 = *(v13 + 16);
  v66 = v15;
  v24(v15, v62, v12);
  type metadata accessor for AssetSkeleton();
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type AssetSkeleton and conformance AssetSkeleton, MEMORY[0x1E6994708], MEMORY[0x1E6994710]);
  v25 = v63;
  v26 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v25)
  {

    (*(v13 + 8))(v66, v12);
    (*(v17 + 8))(v64, v65);
  }

  else
  {
    v62 = v27;
    v63 = 0;
    v29 = v54;
    v53 = v26;
    AssetSkeleton.assetID.getter();
    v30 = type metadata accessor for AttachmentLedgerTopic.UploadRequest(0);
    v50 = v23;
    v31 = v30;
    v32 = v55;
    Asset.ID.storageLocation.getter();
    v51 = v13;
    v52 = v12;
    v33 = *(v59 + 8);
    v34 = v29;
    v35 = v60;
    v33(v34, v60);
    v36 = v56;
    AssetSkeleton.assetID.getter();
    v59 = Asset.ID.signature.getter();
    v54 = v37;
    v33(v36, v35);
    v38 = v58;
    AssetSkeleton.assetID.getter();
    v39 = Asset.ID.referenceSignature.getter();
    v41 = v40;

    v33(v38, v35);
    (*(v17 + 32))(v32, v64, v65);
    (*(v51 + 32))(v32 + v31[5], v66, v52);
    v42 = (v32 + v31[6]);
    v43 = v61;
    v44 = v62;
    *v42 = v53;
    v42[1] = v44;
    v45 = (v32 + v31[7]);
    v46 = v57;
    *v45 = v43;
    v45[1] = v46;
    v47 = (v32 + v31[9]);
    v48 = v54;
    *v47 = v59;
    v47[1] = v48;
    v49 = (v32 + v31[10]);
    *v49 = v39;
    v49[1] = v41;
    return outlined copy of Data?(v43, v46);
  }

  return result;
}

uint64_t closure #1 in AttachmentUploadTask.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AttachmentUploadTask.start(), a4, 0);
}

uint64_t closure #1 in AttachmentUploadTask.start()()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = closure #1 in AttachmentUploadTask.start();
  v2 = *(v0 + 88);

  return AttachmentLedgerTopic.upload(request:)(v2);
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 80);

    return MEMORY[0x1EEE6DFA0](closure #1 in AttachmentUploadTask.start(), v6, 0);
  }
}

{
  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for uploadTask != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.uploadTask);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEE80000, v2, v3, "UploadTask was cancelled after upload was successful.", v4, 2u);
      MEMORY[0x1B2715BA0](v4, -1, -1);
    }
  }

  else
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    outlined init with copy of Transferable(v6, v0 + 16);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    outlined init with take of Transferable((v0 + 16), (v10 + 4));
    v10[9] = v9;
    v11 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in AttachmentUploadTask.start(), v10);
    v12 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler;
    swift_beginAccess();
    *(v7 + v12) = v11;
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t closure #1 in closure #1 in AttachmentUploadTask.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for Attachment.MMCSMetadata.UploadStatus();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = type metadata accessor for Signal();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10CloudAsset6SignalVSgMd, &_s10CloudAsset6SignalVSgMR);
  v5[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy10CloudAsset6SignalVs5Error_pGMd, &_sScsy10CloudAsset6SignalVs5Error_pGMR);
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy10CloudAsset6SignalVs5Error_p_GMd, &_sScs8IteratorVy10CloudAsset6SignalVs5Error_p_GMR);
  v5[23] = v10;
  v5[24] = *(v10 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), 0, 0);
}

uint64_t closure #1 in closure #1 in AttachmentUploadTask.start()()
{
  v1 = v0[8];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v0[26] = JSONEncoder.init()();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
  v5 = v0[22];

  return v7(v5, v2, v3);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), 0, 0);
}

{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  MEMORY[0x1B27145A0](v3);
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  *(v0 + 296) = *MEMORY[0x1E6997498];
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
  v5 = *(v0 + 184);
  v6 = *(v0 + 152);

  return MEMORY[0x1EEE6DB90](v6, 0, 0, v5, v0 + 40);
}

{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in AttachmentUploadTask.start();
  }

  else
  {
    v2 = closure #1 in closure #1 in AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

LABEL_7:

    v13 = v0[1];
    goto LABEL_8;
  }

  (*(v3 + 32))(v0[18], v1, v2);
  Strong = swift_weakLoadStrong();
  v0[30] = Strong;
  if (!Strong)
  {
    v14 = v0[25];
    v15 = v0[23];
    v16 = v0[24];
    v18 = v0[17];
    v17 = v0[18];
    v19 = v0[16];

    (*(v18 + 8))(v17, v19);
    (*(v16 + 8))(v14, v15);
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = v0[29];
  static Task<>.checkCancellation()();
  v0[31] = v6;
  if (v6)
  {
    v7 = v0[25];
    v8 = v0[23];
    v9 = v0[24];
    v11 = v0[17];
    v10 = v0[18];
    v12 = v0[16];

    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v7, v8);

    v13 = v0[1];
LABEL_8:

    return v13();
  }

  v0[32] = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), v5, 0);
}

{
  v0[33] = *(v0[30] + v0[32]);
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), 0, 0);
}

{
  *(v0 + 300) = 7;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v1 = *(v0 + 240);

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), v1, 0);
  }

  else
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 184);
    v4 = *(v0 + 192);
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = *(v0 + 128);

    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v2, v3);

    v8 = *(v0 + 8);

    return v8();
  }
}

{
  *(v0 + 272) = *(*(v0 + 240) + 112);
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AttachmentUploadTask.start(), 0, 0);
}

{
  v34 = v0;
  v1 = *(v0 + 248);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 240) + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id, *(v0 + 104));
  lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type Signal and conformance Signal, MEMORY[0x1E6994728], MEMORY[0x1E6994730]);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    if (one-time initialization token for uploadTask != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.uploadTask);

    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 240);
    v8 = *(v0 + 144);
    v9 = *(v0 + 128);
    v10 = (*(v0 + 136) + 8);
    if (v6)
    {
      v32 = *(v0 + 128);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v33[0] = v12;
      *v11 = 136315394;
      *(v0 + 48) = v7;
      type metadata accessor for AttachmentUploadTask(0);

      v13 = String.init<A>(reflecting:)();
      v31 = v8;
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v33);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      *(v0 + 56) = v1;
      v16 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v33);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_1AEE80000, v4, v5, "%s failed to update progress blob, error: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v12, -1, -1);
      MEMORY[0x1B2715BA0](v11, -1, -1);

      (*v10)(v31, v32);
    }

    else
    {

      (*v10)(v8, v9);
    }

    v28 = swift_task_alloc();
    *(v0 + 224) = v28;
    *v28 = v0;
    v28[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
    v29 = *(v0 + 184);
    v30 = *(v0 + 152);

    return MEMORY[0x1EEE6DB90](v30, 0, 0, v29, v0 + 40);
  }

  else
  {
    v20 = *(v0 + 296);
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v23 = *(v0 + 80);
    Attachment.UpdatingBlob.init(data:)();
    (*(v22 + 104))(v21, v20, v23);
    v24 = swift_task_alloc();
    *(v0 + 280) = v24;
    *v24 = v0;
    v24[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
    v25 = *(v0 + 120);
    v26 = *(v0 + 96);

    return AttachmentLedgerTopic.updateProgress(on:with:)(v25, v26);
  }
}

{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = v2[15];
  v4 = v2[14];
  v5 = v2[13];
  (*(v2[11] + 8))(v2[12], v2[10]);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = closure #1 in closure #1 in AttachmentUploadTask.start();
  }

  else
  {
    v6 = closure #1 in closure #1 in AttachmentUploadTask.start();
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[28] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
  v5 = v0[23];
  v6 = v0[19];

  return MEMORY[0x1EEE6DB90](v6, 0, 0, v5, v0 + 5);
}

{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{
  v27 = v0;
  v1 = v0[36];
  if (one-time initialization token for uploadTask != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.uploadTask);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  v8 = v0[18];
  v9 = v0[16];
  v10 = (v0[17] + 8);
  if (v6)
  {
    v25 = v0[16];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    v0[6] = v7;
    type metadata accessor for AttachmentUploadTask(0);

    v13 = String.init<A>(reflecting:)();
    v24 = v8;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v0[7] = v1;
    v16 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v26);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1AEE80000, v4, v5, "%s failed to update progress blob, error: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v12, -1, -1);
    MEMORY[0x1B2715BA0](v11, -1, -1);

    (*v10)(v24, v25);
  }

  else
  {

    (*v10)(v8, v9);
  }

  v20 = swift_task_alloc();
  v0[28] = v20;
  *v20 = v0;
  v20[1] = closure #1 in closure #1 in AttachmentUploadTask.start();
  v21 = v0[23];
  v22 = v0[19];

  return MEMORY[0x1EEE6DB90](v22, 0, 0, v21, v0 + 5);
}

uint64_t AttachmentUploadTask.requestUploadToken()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for TaskPriority();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.requestUploadToken(), v1, 0);
}

uint64_t AttachmentUploadTask.requestUploadToken()()
{
  v29 = v0;
  if (one-time initialization token for uploadTask != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = __swift_project_value_buffer(v1, static Log.uploadTask);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v7 = 136315394;
    v8 = AttachmentUploadTask.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v28);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v28);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v2, v3, "%s Requesting upload token with priority: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v27, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  *(v0 + 64) = *(*(v0 + 24) + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine);
  *(v0 + 88) = 0;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v15 = swift_task_alloc();
    *(v0 + 72) = v15;
    *v15 = v0;
    v15[1] = AttachmentUploadTask.requestUploadToken();
    v16 = *(v0 + 16);

    return AttachmentLedgerTopic.requestUploadToken()(v16);
  }

  else
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      v22 = AttachmentUploadTask.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v28);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1AEE80000, v18, v19, "%s Can't execute state change for .fetchToken event", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B2715BA0](v21, -1, -1);
      MEMORY[0x1B2715BA0](v20, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.requestUploadToken(), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to fetch uploadToken for reason: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  *(v0 + 89) = 1;
  if ((dispatch thunk of StateMachine.execute(_:)() & 1) == 0)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1AEE80000, v10, v11, "Failed to transition to a failure state from fetchTokenFailure", v12, 2u);
      MEMORY[0x1B2715BA0](v12, -1, -1);
    }
  }

  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t AttachmentUploadTask.createAssetUploadCoordinator(_:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = type metadata accessor for Date();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  type metadata accessor for Credential();
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for Asset.Protector();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v7 = type metadata accessor for AssetUploadRequest();
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v8 = type metadata accessor for TaskPriority();
  v3[30] = v8;
  v3[31] = *(v8 - 8);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore11UploadTokenVSgMd, &_s14CopresenceCore11UploadTokenVSgMR);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v9 = type metadata accessor for UploadToken();
  v3[35] = v9;
  v3[36] = *(v9 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AttachmentUploadTask.createAssetUploadCoordinator(_:), v2, 0);
}

uint64_t AttachmentUploadTask.createAssetUploadCoordinator(_:)()
{
  v85 = v0;
  if (one-time initialization token for uploadTask != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 112);
  v5 = type metadata accessor for Logger();
  *(v0 + 320) = __swift_project_value_buffer(v5, static Log.uploadTask);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 312);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v82 = v6;
  if (v9)
  {
    v77 = v8;
    log = v7;
    v13 = *(v0 + 272);
    v80 = *(v0 + 264);
    v14 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v84[0] = v76;
    *v14 = 136315650;
    v15 = AttachmentUploadTask.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v84);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v6(v13, v10, v12);
    (*(v11 + 56))(v13, 0, 1, v12);
    outlined init with copy of URL?(v13, v80, &_s14CopresenceCore11UploadTokenVSgMd, &_s14CopresenceCore11UploadTokenVSgMR);
    if ((*(v11 + 48))(v80, 1, v12) == 1)
    {
      v18 = 0xE300000000000000;
      v19 = 7104878;
    }

    else
    {
      v21 = *(v0 + 296);
      v20 = *(v0 + 304);
      v23 = *(v0 + 280);
      v22 = *(v0 + 288);
      (*(v22 + 32))(v20, *(v0 + 264), v23);
      v6(v21, v20, v23);
      v19 = String.init<A>(reflecting:)();
      v18 = v24;
      (*(v22 + 8))(v20, v23);
    }

    v25 = *(v0 + 312);
    v27 = *(v0 + 280);
    v26 = *(v0 + 288);
    v28 = *(v0 + 248);
    v29 = *(v0 + 256);
    v30 = *(v0 + 240);
    outlined destroy of NSObject?(*(v0 + 272), &_s14CopresenceCore11UploadTokenVSgMd, &_s14CopresenceCore11UploadTokenVSgMR);
    v81 = *(v26 + 8);
    v81(v25, v27);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, v84);

    *(v14 + 14) = v31;
    *(v14 + 22) = 2080;
    static Task<>.currentPriority.getter();
    lazy protocol witness table accessor for type AssetSkeleton and conformance AssetSkeleton(&lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8608]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v28 + 8))(v29, v30);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, v84);

    *(v14 + 24) = v35;
    _os_log_impl(&dword_1AEE80000, log, v77, "%s Creating AssetUploadCoordinator for uploadToken: %s with priority: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v76, -1, -1);
    MEMORY[0x1B2715BA0](v14, -1, -1);
  }

  else
  {

    v81 = *(v11 + 8);
    v81(v10, v12);
  }

  *(v0 + 328) = *(*(v0 + 120) + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine);
  *(v0 + 352) = 2;
  if (dispatch thunk of StateMachine.execute(_:)())
  {
    v36 = *(v0 + 304);
    v37 = *(v0 + 280);
    v38 = *(v0 + 208);
    v39 = *(v0 + 184);
    v40 = *(v0 + 192);
    v41 = *(v0 + 168);
    v71 = *(v0 + 176);
    v70 = *(v0 + 160);
    v72 = *(v0 + 144);
    v73 = *(v0 + 136);
    v42 = *(v0 + 120);
    v74 = *(v0 + 128);
    v43 = *(v0 + 112);
    v44 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager;
    swift_beginAccess();
    outlined init with copy of Transferable(v42 + v44, v0 + 16);
    v79 = *(v0 + 40);
    v75 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v79);
    (*(v40 + 16))(v38, v42 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_file, v39);
    UploadToken.storageLocation.getter();
    v45 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
    swift_beginAccess();
    (*(v41 + 16))(v71, v42 + v45, v70);
    v82(v36, v43, v37);
    dispatch thunk of Token.accountID.getter();
    dispatch thunk of Token.token.getter();
    type metadata accessor for Credential.Builder();
    swift_allocObject();
    Credential.Builder.init(tenantName:requestorID:accessToken:)();
    dispatch thunk of Token.expirationDate.getter();
    Credential.Builder.setExpirationDate(_:)();

    (*(v73 + 8))(v72, v74);
    Credential.Builder.build()();

    v81(v36, v37);
    AssetUploadRequest.init(fileURL:storageLocation:protector:credential:)();
    v83 = (*(v75 + 16) + **(v75 + 16));
    v46 = swift_task_alloc();
    *(v0 + 336) = v46;
    *v46 = v0;
    v46[1] = AttachmentUploadTask.createAssetUploadCoordinator(_:);
    v47 = *(v0 + 232);
    v48 = *(v0 + 104);

    return v83(v48, v47, v79, v75);
  }

  else
  {

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v84[0] = v53;
      *v52 = 136315138;
      v54 = AttachmentUploadTask.description.getter();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v84);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_1AEE80000, v50, v51, "%s Can't execute state change for .creatingAsset event", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x1B2715BA0](v53, -1, -1);
      MEMORY[0x1B2715BA0](v52, -1, -1);
    }

    lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors();
    v57 = swift_allocError();
    *v58 = 0;
    swift_willThrow();
    v59 = v57;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      v64 = v57;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 4) = v65;
      *v63 = v65;
      _os_log_impl(&dword_1AEE80000, v60, v61, "Failed to create assetUploadCoordinator for reason: %@", v62, 0xCu);
      outlined destroy of NSObject?(v63, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B2715BA0](v63, -1, -1);
      MEMORY[0x1B2715BA0](v62, -1, -1);
    }

    *(v0 + 353) = 3;
    if ((dispatch thunk of StateMachine.execute(_:)() & 1) == 0)
    {
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_1AEE80000, v66, v67, "Failed to transition to a failure state from createAssetFailure", v68, 2u);
        MEMORY[0x1B2715BA0](v68, -1, -1);
      }
    }

    swift_willThrow();

    v69 = *(v0 + 8);

    return v69();
  }
}

{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = v2[29];
  v4 = v2[28];
  v5 = v2[27];
  v6 = v2[15];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = AttachmentUploadTask.createAssetUploadCoordinator(_:);
  }

  else
  {
    v7 = AttachmentUploadTask.createAssetUploadCoordinator(_:);
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 344);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to create assetUploadCoordinator for reason: %@", v5, 0xCu);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  *(v0 + 353) = 3;
  if ((dispatch thunk of StateMachine.execute(_:)() & 1) == 0)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AEE80000, v9, v10, "Failed to transition to a failure state from createAssetFailure", v11, 2u);
      MEMORY[0x1B2715BA0](v11, -1, -1);
    }
  }

  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t AttachmentUploadTask.deinit()
{

  v1 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_file;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata), *(v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata + 8));
  v3 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_key;
  v6 = type metadata accessor for SymmetricKey();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector;
  v8 = type metadata accessor for Asset.Protector();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager));

  v9 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask__state;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AttachmentUploadTask.__deallocating_deinit()
{
  AttachmentUploadTask.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized AttachmentUploadTask.init(topic:file:developerMetadata:id:manager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a7;
  v51 = a4;
  v52 = a5;
  v49 = a2;
  v50 = a3;
  v45 = a1;
  v11 = type metadata accessor for Asset.Protector();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SymmetricKeySize();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v44 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SymmetricKey();
  v43 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities20AttachmentUploadTaskC5StateOGMR);
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v33 - v16;
  v58 = a8;
  v59 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v57);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a6, a8);
  swift_defaultActor_initialize();
  v37 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_stateMachine;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0F0OAJ5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GGMd, &_ss23_ContiguousArrayStorageCy14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0F0OAJ5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GGMR);
  v35 = 8 * *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0C0OAH5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GMd, &_s14CopresenceCore12StateMachineC10TransitionVy15GroupActivities20AttachmentUploadTaskC0C0OAH5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLO_GMR) - 8) + 72);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1AF014AC0;
  LOBYTE(v53) = 0;
  v56 = 1;
  v55 = 0;
  lazy protocol witness table accessor for type AttachmentUploadTask.State and conformance AttachmentUploadTask.State();
  lazy protocol witness table accessor for type AttachmentUploadTask.Event and conformance AttachmentUploadTask.Event();
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v53) = 1;
  v56 = 2;
  v55 = 2;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v53) = 2;
  v56 = 5;
  v55 = 3;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v53) = 2;
  v56 = 2;
  v55 = 6;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v53) = 2;
  v56 = 2;
  v55 = 7;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v53) = 2;
  v56 = 5;
  v55 = 5;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v53) = 3;
  v56 = 3;
  v55 = 6;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v53) = 2;
  v56 = 3;
  v18 = v34;
  v55 = 4;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v53) = 1;
  v56 = 5;
  v55 = 1;
  v19 = v38;
  v20 = v39;
  StateMachine.Transition.init(from:to:event:)();
  LOBYTE(v53) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore12StateMachineCy15GroupActivities20AttachmentUploadTaskC0C0OAF5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLOGMd, &_s14CopresenceCore12StateMachineCy15GroupActivities20AttachmentUploadTaskC0C0OAF5Event33_7B61A9BB4AF14C4C7FA0EA660CFA3E9ELLOGMR);
  swift_allocObject();
  *(v18 + v37) = StateMachine.init(initialState:transitions:)();
  *(v18 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_topicUploadTask) = 0;
  *(v18 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_signalHandler) = 0;
  v21 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask__state;
  LOBYTE(v53) = 0;
  v22 = v40;
  Published.init(initialValue:)();
  (*(v41 + 32))(v18 + v21, v22, v19);
  *(v18 + 112) = v45;

  static SymmetricKeySize.bits256.getter();
  v23 = v42;
  SymmetricKey.init(size:)();
  v24 = v43 + 16;
  (*(v43 + 16))(v18 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_key, v23, v20);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  outlined copy of Data._Representation(v53, v54);
  v25 = v46;
  Asset.Protector.init(securityKey:privacyKey:)();
  (*(v24 - 8))(v23, v20);
  (*(v47 + 32))(v18 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_protector, v25, v48);
  outlined init with take of Transferable(&v57, v18 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_assetManager);
  v26 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_file;
  v27 = type metadata accessor for URL();
  (*(*(v27 - 8) + 32))(v18 + v26, v49, v27);
  v28 = (v18 + OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_developerMetadata);
  v29 = v51;
  *v28 = v50;
  v28[1] = v29;
  v30 = OBJC_IVAR____TtC15GroupActivities20AttachmentUploadTask_id;
  v31 = type metadata accessor for UUID();
  (*(*(v31 - 8) + 32))(v18 + v30, v52, v31);
  return v18;
}

unint64_t lazy protocol witness table accessor for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors()
{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors;
  if (!lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachmentUploadTask.Errors and conformance AttachmentUploadTask.Errors);
  }

  return result;
}

uint64_t type metadata accessor for AttachmentUploadTask(uint64_t a1)
{
  result = type metadata singleton initialization cache for AttachmentUploadTask;
  if (!type metadata singleton initialization cache for AttachmentUploadTask)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in AttachmentUploadTask.start()(uint64_t a1)
{
  v4 = *(type metadata accessor for AttachmentLedgerTopic.UploadRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in AttachmentUploadTask.start()(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

double keypath_get_18Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

void type metadata completion function for AttachmentUploadTask(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SymmetricKey();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Asset.Protector();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<AttachmentUploadTask.State>();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of AttachmentUploadTask.start()()
{
  v4 = (*(*v0 + 328) + **(*v0 + 328));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v4();
}

void type metadata accessor for Published<AttachmentUploadTask.State>()
{
  if (!lazy cache variable for type metadata for Published<AttachmentUploadTask.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<AttachmentUploadTask.State>);
    }
  }
}

uint64_t getEnumTagSinglePayload for AttachmentUploadTask.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttachmentUploadTask.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in AttachmentUploadTask.start()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in AttachmentUploadTask.start()(a1, v4, v5, (v1 + 4), v6);
}

uint64_t SceneAssociationBehavior.contentIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SceneAssociationBehavior.preferredSceneSessionRole.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SceneAssociationBehavior.preferredSceneSessionRole.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall SceneAssociationBehavior.init(shouldAssociateScene:contentIdentifier:preferredSceneSessionRole:)(GroupActivities::SceneAssociationBehavior *__return_ptr retstr, Swift::Bool shouldAssociateScene, Swift::String_optional contentIdentifier, Swift::String_optional preferredSceneSessionRole)
{
  retstr->shouldAssociateScene = shouldAssociateScene;
  retstr->contentIdentifier = contentIdentifier;
  retstr->preferredSceneSessionRole = preferredSceneSessionRole;
}

double one-time initialization function for default()
{
  static SceneAssociationBehavior.default = 1;
  result = 0.0;
  *&qword_1EDADC9F0 = 0u;
  *(&xmmword_1EDADC9F8 + 8) = 0u;
  return result;
}

uint64_t static SceneAssociationBehavior.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EDADC9F0;
  v2 = qword_1EDADCA08;
  *a1 = static SceneAssociationBehavior.default;
  *(a1 + 8) = v1;
  *(a1 + 16) = xmmword_1EDADC9F8;
  *(a1 + 32) = v2;
}

uint64_t static SceneAssociationBehavior.content(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
}

double one-time initialization function for none()
{
  static SceneAssociationBehavior.none = 0;
  result = 0.0;
  *&qword_1EB61B458 = 0u;
  *(&xmmword_1EB61B460 + 8) = 0u;
  return result;
}

uint64_t static SceneAssociationBehavior.none.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for none != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EB61B458;
  v2 = qword_1EB61B470;
  *a1 = static SceneAssociationBehavior.none;
  *(a1 + 8) = v1;
  *(a1 + 16) = xmmword_1EB61B460;
  *(a1 + 32) = v2;
}

void SceneAssociationBehavior.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 shouldAssociateScene];
  v5 = [a1 targetContentIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 preferredSceneSessionRole];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {

    v12 = 0;
    v14 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
}

id SceneAssociationBehavior.tuSceneAssociationBehavior.getter()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  if (!v0[2])
  {
    v4 = 0;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = MEMORY[0x1B2714130](v0[1]);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = MEMORY[0x1B2714130](v2, v3);
LABEL_6:
  v6 = [objc_allocWithZone(MEMORY[0x1E69D8B50]) initWithTargetContentIdentifier:v4 shouldAssociateScene:v1 preferredSceneSessionRole:v5];

  return v6;
}

uint64_t specialized static SceneAssociationBehavior.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  if (v4)
  {
    if (!v7)
    {
      return 0;
    }

    v10 = a1[1] == a2[1] && v4 == v7;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (v9 && (v5 == v8 && v6 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for SceneAssociationBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SceneAssociationBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

Swift::Int AuthorizationPromptOptions.PromptCondition.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

uint64_t AuthorizationPromptOptions.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AuthorizationPromptOptions.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AuthorizationPromptOptions.startForEveryone.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AuthorizationPromptOptions.startForMe.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void __swiftcall AuthorizationPromptOptions.init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)(GroupActivities::AuthorizationPromptOptions *__return_ptr retstr, Swift::String_optional title, Swift::String_optional message, Swift::String_optional startForEveryone, Swift::String_optional startForMe, GroupActivities::AuthorizationPromptOptions::PromptCondition promptCondition, Swift::Bool confirmReplacement)
{
  v7 = *promptCondition;
  retstr->title = title;
  retstr->message = message;
  retstr->startForEveryone = startForEveryone;
  retstr->startForMe = startForMe;
  retstr->promptCondition = v7;
  retstr->confirmReplacement = v8;
}

void __swiftcall AuthorizationPromptOptions.init(title:message:startForEveryone:startForMe:alwaysPrompt:confirmReplacement:)(GroupActivities::AuthorizationPromptOptions *__return_ptr retstr, Swift::String_optional title, Swift::String_optional message, Swift::String_optional startForEveryone, Swift::String_optional startForMe, Swift::Bool alwaysPrompt, Swift::Bool confirmReplacement)
{
  retstr->title = title;
  retstr->message = message;
  retstr->startForEveryone = startForEveryone;
  retstr->startForMe = startForMe;
  retstr->promptCondition = alwaysPrompt;
  retstr->confirmReplacement = confirmReplacement;
}

uint64_t AuthorizationPromptOptions.overrides.getter()
{
  v1 = type metadata accessor for AuthorizationRequestOverrides.PromptCondition();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *v0;
  v12[2] = v0[2];
  v12[3] = v8;
  v9 = v0[4];
  v12[0] = v0[6];
  v12[1] = v9;
  (*(v2 + 104))(v5, **(&unk_1E7A4B8F0 + *(v0 + 64)), v1);
  (*(v2 + 32))(v7, v5, v1);
  v10 = objc_allocWithZone(type metadata accessor for AuthorizationRequestOverrides());

  return AuthorizationRequestOverrides.init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)();
}

unint64_t lazy protocol witness table accessor for type AuthorizationPromptOptions.PromptCondition and conformance AuthorizationPromptOptions.PromptCondition()
{
  result = lazy protocol witness table cache variable for type AuthorizationPromptOptions.PromptCondition and conformance AuthorizationPromptOptions.PromptCondition;
  if (!lazy protocol witness table cache variable for type AuthorizationPromptOptions.PromptCondition and conformance AuthorizationPromptOptions.PromptCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationPromptOptions.PromptCondition and conformance AuthorizationPromptOptions.PromptCondition);
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AuthorizationPromptOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 66))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AuthorizationPromptOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t SystemCoordinator.__allocating_init(clientProvider:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = SystemCoordinatorTable.systemCoordinator(for:);

  return SystemCoordinator.init(clientProvider:)(a1);
}

void specialized _Streamed.yield(_:)(uint64_t a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySi__GMd, &_sScS12ContinuationV11YieldResultOySi__GMR);
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  v9 = *(v1 + 16);
  os_unfair_lock_lock((v9 + 40));
  if (*(v9 + 32) == a1)
  {

    os_unfair_lock_unlock((v9 + 40));
  }

  else
  {
    *(v9 + 32) = a1;
    v10 = *(v9 + 24);

    os_unfair_lock_unlock((v9 + 40));
    if (v10)
    {
      v11 = 1 << *(v10 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(v10 + 64);
      v14 = (v11 + 63) >> 6;
      v21 = v6 + 16;
      v22 = a1;
      v19[1] = v6 + 8;
      v20 = (v3 + 8);

      v15 = 0;
      while (v13)
      {
        v16 = v15;
LABEL_14:
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        (*(v6 + 16))(v8, *(v10 + 56) + *(v6 + 72) * (v17 | (v16 << 6)), v5);
        v18 = v23;
        v25 = v22;
        AsyncStream.Continuation.yield(_:)();
        (*v20)(v18, v24);
        (*(v6 + 8))(v8, v5);
      }

      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {

          return;
        }

        v13 = *(v10 + 64 + 8 * v16);
        ++v15;
        if (v13)
        {
          v15 = v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void specialized _Streamed.finish()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - v3;
  v5 = *(v0 + 16);
  os_unfair_lock_lock((v5 + 40));
  v6 = *(v5 + 24);
  *(v5 + 24) = MEMORY[0x1E69E7CC8];
  os_unfair_lock_unlock((v5 + 40));
  v7 = 0;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v14[1] = v2 + 16;
  while (v10)
  {
    v12 = v7;
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    (*(v2 + 16))(v4, *(v6 + 56) + *(v2 + 72) * (v13 | (v12 << 6)), v1);
    AsyncStream.Continuation.finish()();
    (*(v2 + 8))(v4, v1);
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v10 = *(v6 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t specialized _Streamed.projectedValue.getter()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySi__GMd, &_sScS12ContinuationV11YieldResultOySi__GMR);
  v2 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySi__GMd, &_sScS12ContinuationV15BufferingPolicyOySi__GMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8650], v5);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v6 + 8))(v8, v5);
  v13 = *(v1 + 16);
  v21 = v12;
  os_unfair_lock_lock((v13 + 40));
  partial apply for specialized closure #1 in _Streamed.projectedValue.getter((v13 + 16), v22);
  os_unfair_lock_unlock((v13 + 40));
  v14 = v22[0];
  v15 = v22[1];
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  AsyncStream.Continuation.onTermination.setter();
  v22[0] = v15;
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v4, v20);
  return (*(v10 + 8))(v12, v9);
}

uint64_t specialized closure #2 in _Streamed.projectedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 16);

    os_unfair_lock_lock(v8 + 10);
    specialized Dictionary.removeValue(forKey:)(a3, v6);
    outlined destroy of NSObject?(v6, &_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
    os_unfair_lock_unlock(v8 + 10);
  }

  return result;
}

uint64_t GroupSession.systemCoordinator.getter()
{
  v1[3] = v0;
  v1[4] = *v0;
  v1[5] = *v0;
  return MEMORY[0x1EEE6DFA0](GroupSession.systemCoordinator.getter, 0, 0);
}

{
  v10 = v0;
  GroupSession.state.getter();
  v9 = 0;
  v1 = static GroupSession.State.== infix(_:_:)(&v8, &v9);
  outlined consume of GroupSession<A>.State<A>(v8);
  if (v1 & 1) != 0 || (GroupSession.state.getter(), v9 = 1, v2 = static GroupSession.State.== infix(_:_:)(&v8, &v9), outlined consume of GroupSession<A>.State<A>(v8), (v2))
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v0[2] = v0[3];
    v4 = static SystemCoordinatorTable.shared;

    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = GroupSession.systemCoordinator.getter;

    return specialized SystemCoordinatorTable.systemCoordinator(for:)((v0 + 2), v4, v3, &protocol witness table for GroupSession<A>);
  }

  else
  {
    v7 = v0[1];

    return v7(0);
  }
}

uint64_t GroupSession.systemCoordinator.getter(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void SystemCoordinator.localParticipantState.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t SystemCoordinator.remoteParticipantStates.getter()
{
  swift_getKeyPath();
  v3 = v0;
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t SystemCoordinator.localParticipantStates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator____lazy_storage___localParticipantStates;
  swift_beginAccess();
  outlined init with copy of SystemCoordinator.ParticipantStates?(v1 + v9, v8);
  v10 = type metadata accessor for SystemCoordinator.ParticipantStates(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return outlined init with take of SystemCoordinator.ParticipantStates(v8, a1);
  }

  outlined destroy of NSObject?(v8, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
  closure #1 in SystemCoordinator.localParticipantStates.getter(v1);
  outlined init with copy of SystemCoordinator.ParticipantStates(a1, v6, type metadata accessor for SystemCoordinator.ParticipantStates);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  outlined assign with take of SystemCoordinator.ParticipantStates?(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t key path setter for SystemCoordinator.localParticipantStates : SystemCoordinator(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SystemCoordinator.ParticipantStates(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SystemCoordinator.ParticipantStates(a1, v10, type metadata accessor for SystemCoordinator.ParticipantStates);
  v11 = *a2;
  outlined init with take of SystemCoordinator.ParticipantStates(v10, v6);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator____lazy_storage___localParticipantStates;
  swift_beginAccess();
  outlined assign with take of SystemCoordinator.ParticipantStates?(v6, v11 + v12);
  return swift_endAccess();
}

uint64_t closure #1 in SystemCoordinator.localParticipantStates.getter(uint64_t a1)
{
  swift_getKeyPath();
  v8 = a1;
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(a1 + 16);
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
  swift_allocObject();
  v3 = CurrentValueSubject.init(_:)();
  *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher) = v3;

  v8 = v3;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<SystemCoordinator.ParticipantState, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR, MEMORY[0x1E695BFB0]);
  v7 = Publisher.eraseToAnyPublisher()();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR);
  v5 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<SystemCoordinator.ParticipantState, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMd, &_s7Combine12AnyPublisherVy15GroupActivities17SystemCoordinatorC16ParticipantStateVs5NeverOGMR, MEMORY[0x1E695BED8]);
  MEMORY[0x1B2713BD0](&v7, v4, v5);
}

uint64_t SystemCoordinator.activeSpatialParticipantCount.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount) + 16);

  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 32);
  os_unfair_lock_unlock((v1 + 40));

  return v2;
}

uint64_t key path getter for SystemCoordinator.activeSpatialParticipantCount : SystemCoordinator@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(*a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount) + 16);

  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 32);
  os_unfair_lock_unlock((v3 + 40));

  *a2 = v4;
  return result;
}

uint64_t key path setter for SystemCoordinator.activeSpatialParticipantCount : SystemCoordinator(uint64_t *a1)
{
  v1 = *a1;

  specialized _Streamed.yield(_:)(v1);
}

uint64_t SystemCoordinator.$activeSpatialParticipantCount.getter()
{

  specialized _Streamed.projectedValue.getter();
}

void SystemCoordinator.Configuration.spatialTemplatePreference.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t SystemCoordinator.Configuration.spatialTemplatePreference.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t SystemCoordinator.Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for none != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = word_1EB619638;
  v2 = HIBYTE(word_1EB619638);
  *a1 = static SpatialTemplatePreference.none;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  *(a1 + 10) = 0;
  return result;
}

void SystemCoordinator.configuration.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

void key path getter for SystemCoordinator.configuration : SystemCoordinator(uint64_t a1@<X8>)
{
  SystemCoordinator.configuration.getter();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  *(a1 + 10) = v5;
  *(a1 + 11) = v6;
}

uint64_t key path setter for SystemCoordinator.configuration : SystemCoordinator(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t SystemCoordinator.configuration.setter(uint64_t *a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void closure #1 in SystemCoordinator.configuration.setter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a3 >> 8;
  v7 = *(a1 + 16);
  os_unfair_lock_lock(v7 + 4);
  v8 = a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration;
  v9 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration);
  v10 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 8);
  v11 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 9);
  *v8 = a2;
  *(v8 + 8) = a3 & 1;
  *(v8 + 9) = v6;
  *(v8 + 10) = BYTE2(a3) & 1;
  *(v8 + 11) = HIBYTE(a3) & 1;
  SystemCoordinator.refreshConfiguration()();
  v12 = *(v8 + 8);
  v13 = *(v8 + 9);
  if (v11 != v13)
  {
    goto LABEL_9;
  }

  if (v10)
  {
    if (*(v8 + 8))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = v9 == *v8 ? *(v8 + 8) : 1;
  if (v14)
  {
LABEL_9:
    v15 = *v8;
    v16 = v12;
    v17 = v13;
    SystemCoordinator.recomputeLocalParticipantState(withNewSpatialTemplatePreference:)(&v15);
  }

LABEL_10:
  os_unfair_lock_unlock(v7 + 4);
}

void SystemCoordinator.refreshConfiguration()()
{
  v1 = v0;
  os_unfair_lock_assert_owner((*(v0 + 16) + 16));
  v2 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(*v3 + 128);

    v6 = v4(v5);

    if (one-time initialization token for systemCoordinator != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.systemCoordinator);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = v6 > 0;
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v73[0] = v12;
        *v11 = 136315650;
        v13 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 8);
        v14 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 9);
        v15 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 10);
        v16 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 11);
        *&v74 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration);
        BYTE8(v74) = v13;
        BYTE9(v74) = v14;
        BYTE10(v74) = v15;
        BYTE11(v74) = v16;
        v17 = String.init<A>(reflecting:)();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v73);

        *(v11 + 4) = v19;
        *(v11 + 12) = 2080;
        LOBYTE(v74) = v10;
        v20 = String.init<A>(reflecting:)();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v73);

        *(v11 + 14) = v22;
        *(v11 + 22) = 2080;
        v23 = v10;
        v24 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest + 8);
        *&v74 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
        *(&v74 + 1) = v24;
        outlined copy of SystemCoordinatorParticipantRoleRequest(v74, v24);
        v25 = String.init<A>(reflecting:)();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v73);

        *(v11 + 24) = v27;
        _os_log_impl(&dword_1AEE80000, v8, v9, "SystemCoordinator: Setting configuration %s, isObservingGroupImmersionStyle %s, localParticipantRoleAssignmentRequest: %s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v12, -1, -1);
        MEMORY[0x1B2715BA0](v11, -1, -1);
      }

      else
      {
        v23 = v6 > 0;
      }

      v69 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration);
      v67 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 8);
      v28 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 9);
      v29 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 10);
      v30 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
      v31 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest + 8);
      v32 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 11);
      v33 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplatePreferences;
      swift_beginAccess();
      v34 = *(v1 + v33);
      v35 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplateRoles;
      swift_beginAccess();
      v36 = *(v1 + v35);

      v70 = v30;
      v68 = v31;
      outlined copy of SystemCoordinatorParticipantRoleRequest(v30, v31);
      v65 = specialized _NativeDictionary.mapValues<A>(_:)(v36);

      v66 = type metadata accessor for SystemCoordinatorConfiguration();
      v37 = objc_allocWithZone(v66);
      v37[OBJC_IVAR___CPSystemCoordinatorConfiguration_supportsGroupImmersiveSpace] = v29;
      v37[OBJC_IVAR___CPSystemCoordinatorConfiguration_isObservingGroupImmersionStyle] = v23;
      v37[OBJC_IVAR___CPSystemCoordinatorConfiguration_faceAppTowardsEachParticipant] = v32;
      v64 = qword_1AF0157B8[v28];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMd, &_ss18_DictionaryStorageCySS15GroupActivities31SpatialTemplatePreferenceOutputVGMR);
      v38 = static _DictionaryStorage.copy(original:)();
      v39 = v38;
      v40 = 0;
      v6 = 1;
      v41 = 1 << *(v34 + 32);
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & *(v34 + 64);
      v44 = (v41 + 63) >> 6;
      v45 = v38 + 64;
      if (!v43)
      {
        break;
      }

      while (1)
      {
        v46 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
LABEL_15:
        v49 = v46 | (v40 << 6);
        v50 = (*(v34 + 48) + 16 * v49);
        v52 = *v50;
        v51 = v50[1];
        v53 = *(v34 + 56) + 16 * v49;
        v54 = *v53;
        v55 = *(v53 + 8);
        v56 = qword_1AF0157B8[*(v53 + 9)];
        *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
        v57 = (v39[6] + 16 * v49);
        *v57 = v52;
        v57[1] = v51;
        v58 = v39[7] + 48 * v49;
        *v58 = v54;
        *(v58 + 8) = v55;
        *(v58 + 24) = 0;
        *(v58 + 32) = 0;
        *(v58 + 16) = v56;
        *(v58 + 40) = 2;
        v59 = v39[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          break;
        }

        v39[2] = v61;

        if (!v43)
        {
          goto LABEL_10;
        }
      }

LABEL_20:
      __break(1u);
LABEL_21:
      swift_once();
    }

LABEL_10:
    v47 = v40;
    while (1)
    {
      v40 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v40 >= v44)
      {
        break;
      }

      v48 = *(v34 + 64 + 8 * v40);
      ++v47;
      if (v48)
      {
        v46 = __clz(__rbit64(v48));
        v43 = (v48 - 1) & v48;
        goto LABEL_15;
      }
    }

    v72 = v67;
    *&v74 = v69;
    BYTE8(v74) = v67;
    v76 = 0;
    v77 = 0;
    v75 = v64;
    v78 = 2;
    v79 = v70;
    v80 = v68;
    v81 = v39;
    v82 = v65;
    v62 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMd, &_s15GroupActivities10XPCWrapperCyAA30SystemCoordinatorConfigurationC7WrappedVGMR));
    *&v37[OBJC_IVAR___CPSystemCoordinatorConfiguration_wrapped] = specialized XPCWrapper.init(_:)(&v74);
    v71.receiver = v37;
    v71.super_class = v66;
    v63 = objc_msgSendSuper2(&v71, sel_init);
    [*(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client) setConfiguration_];
  }

  else
  {
    __break(1u);
  }
}

void SystemCoordinator.recomputeLocalParticipantState(withNewSpatialTemplatePreference:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(v1 + 16);
  os_unfair_lock_assert_owner(v5 + 4);
  v6 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState);
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState];
    if (*&v7[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier + 8])
    {
      v8 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
      v9 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest + 8);
      *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest) = xmmword_1AF00EBD0;
      v13 = v6;
      outlined consume of SystemCoordinatorParticipantRoleRequest(v8, v9);
      os_unfair_lock_assert_owner(v5 + 4);
      SystemCoordinator.refreshConfiguration()();
    }

    else
    {
      v14 = v2;
      v15 = v3;
      v16 = v4;
      v10 = v6;
      SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(v7, v17);
      swift_beginAccess();
      outlined init with copy of SystemCoordinator.ParticipantState(v1 + 32, &v14);
      v11 = specialized static SystemCoordinator.ParticipantState.== infix(_:_:)(&v14, v17);
      outlined destroy of SystemCoordinator.ParticipantState(&v14);
      if ((v11 & 1) == 0)
      {
        os_unfair_lock_unlock(v5 + 4);
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v14 = v1;
        lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        os_unfair_lock_lock(v5 + 4);
      }

      outlined destroy of SystemCoordinator.ParticipantState(v17);
    }
  }
}

void (*SystemCoordinator.configuration.modify(uint64_t *a1))(uint64_t **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator___observationRegistrar;
  v4[2] = v1;
  v4[5] = lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock(v6 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  v4[6] = 0;
  os_unfair_lock_unlock(v6 + 4);
  return SystemCoordinator.configuration.modify;
}

void SystemCoordinator.configuration.modify(uint64_t **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  v1[2] = v1[3];
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

void SystemCoordinator.assignRole<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  SystemCoordinator._roleAssignmentDiagnostic<A>(for:)(a1, a2, a3, &v18);
  if (v19[24] == 255)
  {
    v14 = outlined destroy of NSObject?(&v18, &_s15GroupActivities17SystemCoordinatorC24RoleAssignmentDiagnosticOSgMd, &_s15GroupActivities17SystemCoordinatorC24RoleAssignmentDiagnosticOSgMR);
  }

  else
  {
    v20 = v18;
    v21[0] = *v19;
    *(v21 + 9) = *&v19[9];
    if (one-time initialization token for runtimeIssues != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.runtimeIssues);
    outlined init with copy of SystemCoordinator.RoleAssignmentDiagnostic(&v20, &v18);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      v10 = SystemCoordinator.RoleAssignmentDiagnostic.description.getter();
      v12 = v11;
      outlined destroy of SystemCoordinator.RoleAssignmentDiagnostic(&v18);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v17);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1AEE80000, v6, v7, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    else
    {

      outlined destroy of SystemCoordinator.RoleAssignmentDiagnostic(&v18);
    }

    v14 = outlined destroy of SystemCoordinator.RoleAssignmentDiagnostic(&v20);
  }

  v15 = *(v4 + 16);
  v16 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  os_unfair_lock_lock(v15 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v15 + 4);
}

void SystemCoordinator._roleAssignmentDiagnostic<A>(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v4 + 16);
  os_unfair_lock_lock(v9 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v9 + 4);
  if (v15 <= 1u)
  {
    if (v15)
    {
      v10 = 0x2D79622D65646973;
      v11 = 0xEC00000065646973;
    }

    else
    {
      v10 = 1701736302;
      v11 = 0xE400000000000000;
    }

    goto LABEL_10;
  }

  if (v15 == 2)
  {
    v10 = 0x61737265766E6F63;
    v11 = 0xEE006C616E6F6974;
    goto LABEL_10;
  }

  if (v15 == 3)
  {
    v10 = 0x646E756F72727573;
    v11 = 0xE800000000000000;
LABEL_10:
    *a4 = v10;
    *(a4 + 8) = v11;
    v14 = 1;
    goto LABEL_11;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  MEMORY[0x1EEE9AC00](v12);
  os_unfair_lock_lock(v9 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v9 + 4);
  (*(a3 + 16))(a2, a3);

  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v14 = 0;
LABEL_11:
  *(a4 + 40) = v14;
}

void closure #1 in SystemCoordinator.assignRole<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 16))(a3, a4);
  v6 = (a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
  v7 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
  v8 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest + 8);
  *v6 = v5;
  v6[1] = v9;
  outlined consume of SystemCoordinatorParticipantRoleRequest(v7, v8);
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

unint64_t SystemCoordinator.RoleAssignmentDiagnostic.description.getter()
{
  outlined init with copy of SystemCoordinator.RoleAssignmentDiagnostic(v0, v4);
  if (v5)
  {
    if (v5 == 1)
    {
      v1 = v4[0];
      v3[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      MEMORY[0x1B27141F0](39, 0xE100000000000000);
      MEMORY[0x1B27141F0](v1, *(&v1 + 1));

      MEMORY[0x1B27141F0](0xD000000000000033, 0x80000001AF01D1D0);
      return 0;
    }

    else
    {
      return 0xD00000000000005CLL;
    }
  }

  else
  {
    outlined init with take of Transferable(v4, v3);
    _StringGuts.grow(_:)(84);
    MEMORY[0x1B27141F0](0xD000000000000051, 0x80000001AF01D210);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19SpatialTemplateRole_pMd, &_s15GroupActivities19SpatialTemplateRole_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1B27141F0](39, 0xE100000000000000);
    __swift_destroy_boxed_opaque_existential_0(v3);
    return 0;
  }
}

uint64_t SystemCoordinator._customTemplateDiagnostic<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5(a2, a3) + 16);

  if (v6 > 4)
  {
    return 0;
  }

  v7 = *(v5(a2, a3) + 16);

  swift_getDynamicType();
  return v7;
}

uint64_t SystemCoordinator.SpatialTemplateDiagnostic.description.getter(uint64_t a1, uint64_t a2)
{
  if (a1 >= 1)
  {
    if (a1 == 1)
    {
      v2 = 0x80000001AF01D4B0;
      v3 = 0xD00000000000002CLL;
    }

    else
    {
      _StringGuts.grow(_:)(42);
      v7 = Int.spelledOut.getter();
      v9 = v8;

      v21 = v9;
      MEMORY[0x1B27141F0](0xD000000000000028, 0x80000001AF01D370);
      v3 = v7;
      v2 = v21;
      if (a1 == 4)
      {
        _StringGuts.grow(_:)(18);
        v10 = Int.spelledOut.getter();
        v12 = v11;

        v20 = v10;
        v22 = v12;
        v13 = "as\n\nAdd at least ";
        v14 = 0xD000000000000010;
LABEL_9:
        MEMORY[0x1B27141F0](v14, v13 | 0x8000000000000000);
        _StringGuts.grow(_:)(222);
        MEMORY[0x1B27141F0](0xD000000000000049, 0x80000001AF01D3C0);
        MEMORY[0x1B27141F0](v3, v2);

        MEMORY[0x1B27141F0](0xD000000000000071, 0x80000001AF01D410);
        MEMORY[0x1B27141F0](v20, v22);

        v4 = 0x27206F7420;
        v5 = 0xE500000000000000;
        goto LABEL_10;
      }
    }

    _StringGuts.grow(_:)(19);
    v15 = Int.spelledOut.getter();
    v17 = v16;

    v20 = v15;
    v22 = v17;
    v13 = "th spatial Personas join";
    v14 = 0xD000000000000011;
    goto LABEL_9;
  }

  _StringGuts.grow(_:)(245);
  v4 = 0xD0000000000000DALL;
  v5 = 0x80000001AF01D270;
LABEL_10:
  MEMORY[0x1B27141F0](v4, v5);
  v18 = _typeName(_:qualified:)();
  MEMORY[0x1B27141F0](v18);

  MEMORY[0x1B27141F0](0xD000000000000019, 0x80000001AF01D350);
  return 0;
}

uint64_t Int.spelledOut.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v0 setNumberStyle_];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v2 = [v0 stringFromNumber_];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    lazy protocol witness table accessor for type Int and conformance Int();
    v3 = BinaryInteger.description.getter();
  }

  return v3;
}

Swift::Void __swiftcall SystemCoordinator.resignRole()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v1 + 4);
}

void closure #1 in SystemCoordinator.resignRole()(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest;
  v3 = *(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest);
  v4 = *(v2 + 8);
  *v2 = xmmword_1AF00EBD0;
  outlined consume of SystemCoordinatorParticipantRoleRequest(v3, v4);
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

uint64_t SystemCoordinator.spatialCatchupNeededHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(*v1, v1[1]);
  return v2;
}

double key path getter for SystemCoordinator.spatialCatchupNeededHandler : SystemCoordinator@<D0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v4, v5);
}

uint64_t key path setter for SystemCoordinator.spatialCatchupNeededHandler : SystemCoordinator(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v1, v2);
  return SystemCoordinator.spatialCatchupNeededHandler.setter(v4, v3);
}

uint64_t SystemCoordinator.spatialCatchupNeededHandler.setter(void (*a1)(void), uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(a1, a2);
  result = outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v6, v7);
  if (a1)
  {
    v9 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v9 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v10);
    os_unfair_lock_unlock(v9 + 4);
    if (v10 != 2)
    {
      a1(v10 & 1);
    }

    return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a1, a2);
  }

  return result;
}

uint64_t (*SystemCoordinator.spatialCatchupNeededHandler.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return SystemCoordinator.spatialCatchupNeededHandler.modify;
}

void SystemCoordinator.spatialCatchupNeededHandler.modify(void *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v5 + v3[4];
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 8);
      v9 = *(v5 + 16);
      MEMORY[0x1EEE9AC00](v4);

      os_unfair_lock_lock(v9 + 4);
      closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v10);
      os_unfair_lock_unlock(v9 + 4);
      if (v10 != 2)
      {
        v7(v10 & 1);
      }

      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v7, v8);
    }
  }

  free(v3);
}

uint64_t SystemCoordinator._groupImmersionStyle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0H14ImmersionStyleOSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0H14ImmersionStyleOSgs5NeverOGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<SystemCoordinatorState.GroupImmersionStyle?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMR, MEMORY[0x1E695BFB0]);
  lazy protocol witness table accessor for type SystemCoordinatorState.GroupImmersionStyle? and conformance <A> A?();
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<CurrentValueSubject<SystemCoordinatorState.GroupImmersionStyle?, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0H14ImmersionStyleOSgs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0H14ImmersionStyleOSgs5NeverOGGMR, MEMORY[0x1E695BD38]);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v4, v1);
  return v5;
}

double SystemCoordinator.groupImmersionStyleAssertionManager.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t SystemCoordinator.groupImmersionStyleAssertionManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t SystemCoordinator.subscriptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_subscriptions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t (*SystemCoordinator.defaultSpatialTemplatePreferences.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SystemCoordinator.defaultSpatialTemplatePreferences.modify;
}

void key path setter for SystemCoordinator.defaultSpatialTemplatePreferences : SystemCoordinator(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  os_unfair_lock_assert_owner((*(v6 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

void SystemCoordinator.defaultSpatialTemplatePreferences.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  os_unfair_lock_assert_owner((*(v2 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

uint64_t (*SystemCoordinator.defaultSpatialTemplateRoles.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SystemCoordinator.defaultSpatialTemplateRoles.modify;
}

void SystemCoordinator.defaultSpatialTemplatePreferences.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    os_unfair_lock_assert_owner((*(*(a1 + 24) + 16) + 16));
    SystemCoordinator.refreshConfiguration()();
  }
}

uint64_t SystemCoordinator.init(clientProvider:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = *v1;
  v3 = type metadata accessor for SystemCoordinator.ParticipantStates(0);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](SystemCoordinator.init(clientProvider:), 0, 0);
}

uint64_t SystemCoordinator.init(clientProvider:)()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  *(v3 + 128) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 136) = xmmword_1AF00FCC0;
  *(v0 + 16) = 1;
  *(v3 + 32) = 0;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 264) = 0;
  *(v3 + 248) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 224) = *(v0 + 16);
  *(v3 + 272) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15GroupActivities11ParticipantV_AC17SystemCoordinatorC0E5StateVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator____lazy_storage___localParticipantStates;
  *(v0 + 184) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator____lazy_storage___localParticipantStates;
  (*(v2 + 56))(v3 + v5, 1, 1, v1);
  v6 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount;
  *(v0 + 192) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__activeSpatialParticipantCount;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities9_StreamedCySiGMd, &_s15GroupActivities9_StreamedCySiGMR);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15GroupActivities9_StreamedC5State33_C756016345F7491C1FEEEE20B6BEE88DLLVySi_GSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy15GroupActivities9_StreamedC5State33_C756016345F7491C1FEEEE20B6BEE88DLLVySi_GSo16os_unfair_lock_sVGMR);
  v8 = swift_allocObject();
  *(v8 + 40) = 0;
  v9 = MEMORY[0x1E69E7CC8];
  *(v8 + 16) = 0;
  *(v8 + 24) = v9;
  *(v8 + 32) = 0;
  *(v7 + 16) = v8;
  *(v3 + v6) = v7;
  v10 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration;
  if (one-time initialization token for none != -1)
  {
    swift_once();
  }

  v11 = v3 + v10;
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v14 = word_1EB619638;
  v15 = HIBYTE(word_1EB619638);
  *v11 = static SpatialTemplatePreference.none;
  *(v11 + 8) = v14;
  *(v11 + 9) = v15;
  *(v11 + 10) = 0;
  v16 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler;
  *(v0 + 200) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler;
  v17 = (v13 + v16);
  *v17 = 0;
  v17[1] = 0;
  *(v13 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_cachedSpatialCatchupNeededValue) = 2;
  v18 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleSubject;
  *(v0 + 208) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleSubject;
  *(v0 + 17) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities22SystemCoordinatorStateC0E14ImmersionStyleOSgs5NeverOGMR);
  swift_allocObject();
  *(v13 + v18) = CurrentValueSubject.init(_:)();
  v19 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager;
  *(v0 + 216) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager;
  *(v13 + v19) = 0;
  v20 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState;
  *(v0 + 224) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState;
  *(v13 + v20) = 0;
  v21 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_subscriptions;
  *(v0 + 232) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_subscriptions;
  *(v13 + v21) = MEMORY[0x1E69E7CD0];
  v22 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher;
  *(v0 + 240) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher;
  *(v13 + v22) = 0;
  v23 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_activeParticipants;
  *(v0 + 248) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_activeParticipants;
  *(v13 + v23) = v9;
  v24 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest;
  *(v0 + 256) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest;
  v25 = (v13 + v24);
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplatePreferences;
  *(v0 + 264) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplatePreferences;
  *(v13 + v26) = v9;
  v27 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplateRoles;
  *(v0 + 272) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplateRoles;
  *(v13 + v27) = v9;
  *(v0 + 280) = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator___observationRegistrar;
  ObservationRegistrar.init()();
  v28 = v12[3];
  v29 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v28);
  v32 = (*(v29 + 8) + **(v29 + 8));
  v30 = swift_task_alloc();
  *(v0 + 288) = v30;
  *v30 = v0;
  v30[1] = SystemCoordinator.init(clientProvider:);

  return v32(v28, v29);
}

{
  v1 = v0[37];
  if (v1)
  {
    v2 = v0[14];
    v35 = v0[22];
    v4 = v0[17];
    v3 = v0[18];
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_canBeInitialSpatialDriver) = (*(v6 + 32))(v5, v6) & 1;
    v7 = (v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client);
    *v7 = v1;
    v7[1] = v2;
    v8 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for AssertionManager();
    v9 = swift_allocObject();
    type metadata accessor for Lock();
    swift_allocObject();
    swift_unknownObjectRetain();

    v9[4] = Lock.init()();
    v9[5] = 0;
    v9[2] = partial apply for closure #1 in SystemCoordinator.init(clientProvider:);
    v9[3] = v8;

    v10 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_groupImmersionStyleAssertionManager;
    swift_beginAccess();
    *(v3 + v10) = v9;

    v11 = v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client;
    v12 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client + 8);
    ObjectType = swift_getObjectType();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = *(v12 + 16);
    swift_unknownObjectRetain();

    v15(partial apply for closure #2 in SystemCoordinator.init(clientProvider:), v14, ObjectType, v12);

    swift_unknownObjectRelease();
    v16 = *(v11 + 8);
    v17 = swift_getObjectType();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = *(v16 + 40);
    swift_unknownObjectRetain();

    v19(partial apply for closure #3 in SystemCoordinator.init(clientProvider:), v18, v17, v16);

    swift_unknownObjectRelease();
    v20 = v4[3];
    v21 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v20);
    v0[15] = (*(v21 + 16))(v20, v21);
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
    v33 = MEMORY[0x1E695BED8];
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, MEMORY[0x1E695BED8]);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v22 = v4[3];
    v23 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v22);
    v0[16] = (*(v23 + 40))(v22, v23);
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities11ParticipantVGs5NeverOGMd, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities11ParticipantVGs5NeverOGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UInt64 : Participant], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities11ParticipantVGs5NeverOGMd, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities11ParticipantVGs5NeverOGMR, v33);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    SystemCoordinator.localParticipantStates.getter(v35);

    swift_unknownObjectRelease();
    outlined destroy of SystemCoordinator.ParticipantStates(v35, type metadata accessor for SystemCoordinator.ParticipantStates);
    v24 = v0[18];
  }

  else
  {
    v34 = v0[35];
    v25 = v0[28];
    v26 = v0[23];
    v27 = v0[18];
    v28 = v27 + v0[32];
    v29 = (v27 + v0[25]);

    outlined destroy of SystemCoordinator.ParticipantState(v27 + 32);

    outlined destroy of NSObject?(v27 + v26, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);

    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*v29, v29[1]);

    outlined consume of SystemCoordinatorParticipantRoleRequest(*v28, *(v28 + 8));

    v30 = type metadata accessor for ObservationRegistrar();
    (*(*(v30 - 8) + 8))(v27 + v34, v30);
    swift_deallocPartialClassInstance();
    v24 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v0[17]);

  v31 = v0[1];

  return v31(v24);
}

uint64_t SystemCoordinator.init(clientProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[12] = v2;
  v3[13] = a1;
  v3[14] = a2;
  v3[37] = a1;

  return MEMORY[0x1EEE6DFA0](SystemCoordinator.init(clientProvider:), 0, 0);
}

uint64_t closure #1 in SystemCoordinator.init(clientProvider:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    MEMORY[0x1EEE9AC00](result);

    os_unfair_lock_lock(v3 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v3 + 4);
  }

  return result;
}

uint64_t closure #2 in SystemCoordinator.init(clientProvider:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for systemCoordinator != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.systemCoordinator);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1AEE80000, v3, v4, "Server disconnected", v5, 2u);
      MEMORY[0x1B2715BA0](v5, -1, -1);
    }

    SystemCoordinator.resetPublishedProperties()();
  }

  return result;
}

uint64_t SystemCoordinator.resetPublishedProperties()()
{
  v1 = v0;
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.systemCoordinator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Resetting published properties", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  CurrentValueSubject.send(_:)();
  v6 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client + 8);
  ObjectType = swift_getObjectType();
  return (*(v6 + 56))(ObjectType, v6);
}

uint64_t closure #3 in SystemCoordinator.init(clientProvider:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SystemCoordinator.update(with:isInitial:)(a1, 0);
  }

  return result;
}

uint64_t SystemCoordinator.update(with:isInitial:)(void *a1, char a2)
{
  v3 = v2;
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.systemCoordinator);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35[0] = v11;
    *v10 = 136315138;
    v32 = v7;
    type metadata accessor for SystemCoordinatorState();
    v12 = v7;
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v35);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v8, v9, "Updating with state=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  v16 = *(v3 + 16);
  os_unfair_lock_lock(v16 + 4);
  v17 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState);
  *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState) = v7;

  v18 = v7;
  SystemCoordinator.updateRemoteParticipantStates()();
  v19 = *&v18[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState];
  v20 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 8);
  v21 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 9);
  v32 = *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration);
  v33 = v20;
  v34 = v21;
  v22 = v19;
  SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(v22, v35);
  swift_beginAccess();
  outlined init with copy of SystemCoordinator.ParticipantState(v3 + 32, &v32);
  v23 = specialized static SystemCoordinator.ParticipantState.== infix(_:_:)(&v32, v35);
  outlined destroy of SystemCoordinator.ParticipantState(&v32);
  if (v23)
  {
    os_unfair_lock_unlock(v16 + 4);
    goto LABEL_19;
  }

  if (*(v3 + 32))
  {
    v24 = 2;
    if (v35[0])
    {
      goto LABEL_16;
    }
  }

  else if (LOBYTE(v35[0]))
  {
    v25 = v22 + OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator;
    if (a2)
    {
      v25 = (v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_canBeInitialSpatialDriver);
    }

    v24 = (*v25 & 1) == 0;
  }

  else
  {
    v24 = 2;
  }

  *(v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_cachedSpatialCatchupNeededValue) = v24;
LABEL_16:
  os_unfair_lock_unlock(v16 + 4);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v32 = v3;
  lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (v24 != 2)
  {
    v27 = v3 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler;
    swift_beginAccess();
    v28 = *v27;
    if (*v27)
    {
      v29 = *(v27 + 8);

      v28(v24 & 1);
      outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v28, v29);
    }
  }

LABEL_19:
  v30 = *&v18[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount];

  specialized _Streamed.yield(_:)(v30);

  CurrentValueSubject.send(_:)();
  return outlined destroy of SystemCoordinator.ParticipantState(v35);
}

uint64_t closure #4 in SystemCoordinator.init(clientProvider:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v2)
    {
      SystemCoordinator.fetchInitialState()();
    }

    else
    {
      SystemCoordinator.finishPublishedProperties()();
    }
  }

  return result;
}

void SystemCoordinator.fetchInitialState()()
{
  v1 = v0;
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.systemCoordinator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Fetching initial state", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client);
  v8[4] = partial apply for closure #1 in SystemCoordinator.fetchInitialState();
  v8[5] = v1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed SystemCoordinatorState) -> ();
  v8[3] = &block_descriptor_10;
  v7 = _Block_copy(v8);

  [v6 requestCurrentState_];
  _Block_release(v7);
}

uint64_t SystemCoordinator.finishPublishedProperties()()
{
  v1 = v0;
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.systemCoordinator);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Finishing published properties", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher))
  {

    CurrentValueSubject.send(completion:)();
  }

  CurrentValueSubject.send(completion:)();

  specialized _Streamed.finish()();

  v6 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_client + 8);
  ObjectType = swift_getObjectType();
  return (*(v6 + 56))(ObjectType, v6);
}

uint64_t closure #5 in SystemCoordinator.init(clientProvider:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    v4 = MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v4);

    os_unfair_lock_lock(v3 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
    os_unfair_lock_unlock(v3 + 4);
  }

  return result;
}

void closure #1 in closure #5 in SystemCoordinator.init(clientProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_activeParticipants;
  swift_beginAccess();
  *(a1 + v4) = a2;

  SystemCoordinator.updateRemoteParticipantStates()();
}

void SystemCoordinator.updateRemoteParticipantStates()()
{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v64 - v7;
  v9 = *(v0 + 16);
  os_unfair_lock_assert_owner(v9 + 4);
  v10 = *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_currentState);
  if (v10)
  {
    v70 = v8;
    v71 = v6;
    v69 = v3;
    v67 = v2;
    v72 = v9;
    v11 = *&v10[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates];
    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    v75 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_activeParticipants;
    v68 = v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration;
    v15 = (v12 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v73 = v10;
    v16 = 0;
    v74 = MEMORY[0x1E69E7CC8];
    while (v14)
    {
LABEL_11:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = (v16 << 9) | (8 * v18);
      v20 = *(*(v11 + 48) + v19);
      v21 = *(*(v11 + 56) + v19);
      v22 = v75;
      swift_beginAccess();
      v23 = *(v1 + v22);
      if (*(v23 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v20), (v25 & 1) != 0))
      {
        v26 = *(v23 + 56);
        v27 = v70;
        v64 = *(v69 + 72);
        outlined init with copy of SystemCoordinator.ParticipantStates(v26 + v64 * v24, v70, type metadata accessor for Participant);
        swift_endAccess();
        v28 = v27;
        v29 = v71;
        outlined init with copy of SystemCoordinator.ParticipantStates(v28, v71, type metadata accessor for Participant);
        v30 = *(v68 + 8);
        v31 = *(v68 + 9);
        *&v77 = *v68;
        BYTE8(v77) = v30;
        BYTE9(v77) = v31;
        v32 = v21;
        SystemCoordinator.ParticipantState.init(_:spatialTemplatePreference:)(v32, v92);
        v89 = v92[12];
        v90 = v92[13];
        v91 = v92[14];
        v85 = v92[8];
        v86 = v92[9];
        v87 = v92[10];
        v88 = v92[11];
        v81 = v92[4];
        v82 = v92[5];
        v83 = v92[6];
        v84 = v92[7];
        v77 = v92[0];
        v78 = v92[1];
        v79 = v92[2];
        v80 = v92[3];
        v33 = v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v33;
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        v36 = *(v33 + 16);
        v37 = (v34 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v39 = *(v33 + 24);
        v65 = v32;
        if (v39 >= v38)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v58 = v34;
            specialized _NativeDictionary.copy()();
            LOBYTE(v34) = v58;
          }
        }

        else
        {
          LODWORD(v74) = v34;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
          v40 = specialized __RawDictionaryStorage.find<A>(_:)(v71);
          v41 = v34 & 1;
          LOBYTE(v34) = v74;
          if ((v74 & 1) != v41)
          {
            goto LABEL_30;
          }

          v35 = v40;
        }

        v42 = v76;
        v74 = v76;
        if (v34)
        {
          outlined assign with take of SystemCoordinator.ParticipantState(&v77, *(v76 + 56) + 240 * v35);

          outlined destroy of SystemCoordinator.ParticipantStates(v71, type metadata accessor for Participant);
          outlined destroy of SystemCoordinator.ParticipantStates(v70, type metadata accessor for Participant);
        }

        else
        {
          *(v76 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          outlined init with copy of SystemCoordinator.ParticipantStates(v71, v42[6] + v35 * v64, type metadata accessor for Participant);
          v43 = (v42[7] + 240 * v35);
          v45 = v90;
          v44 = v91;
          v46 = v89;
          v43[11] = v88;
          v43[12] = v46;
          v43[13] = v45;
          v43[14] = v44;
          v48 = v86;
          v47 = v87;
          v49 = v85;
          v43[7] = v84;
          v43[8] = v49;
          v43[9] = v48;
          v43[10] = v47;
          v51 = v82;
          v50 = v83;
          v52 = v81;
          v43[3] = v80;
          v43[4] = v52;
          v43[5] = v51;
          v43[6] = v50;
          v54 = v78;
          v53 = v79;
          *v43 = v77;
          v43[1] = v54;
          v43[2] = v53;

          outlined destroy of SystemCoordinator.ParticipantStates(v71, type metadata accessor for Participant);
          outlined destroy of SystemCoordinator.ParticipantStates(v70, type metadata accessor for Participant);
          v55 = v42[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_29;
          }

          v42[2] = v57;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v17 >= v15)
      {
        break;
      }

      v14 = *(v11 + 64 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_11;
      }
    }

    v60 = v74;
    v61 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15GroupActivities11ParticipantV_AC17SystemCoordinatorC0D5StateVTt1g5(v59, v74);

    if (v61)
    {
    }

    else
    {
      v62 = v72;
      os_unfair_lock_unlock(v72 + 4);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v64 - 2) = v1;
      *(&v64 - 1) = v60;
      *&v92[0] = v1;
      lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      os_unfair_lock_lock(v62 + 4);
    }
  }
}

void closure #1 in SystemCoordinator.recomputeLocalParticipantState(withNewSpatialTemplatePreference:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock(v3 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v3 + 4);
  if (v2)
  {
    __break(1u);
  }
}

void closure #1 in SystemCoordinator.update(with:isInitial:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock(v3 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v3 + 4);
  if (v2)
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in SystemCoordinator.recomputeLocalParticipantState(withNewSpatialTemplatePreference:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of SystemCoordinator.ParticipantState(a2, v4);
  if (*(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher))
  {

    CurrentValueSubject.send(_:)();
  }

  swift_beginAccess();
  outlined assign with take of SystemCoordinator.ParticipantState(v4, a1 + 32);
  return swift_endAccess();
}

void closure #1 in SystemCoordinator.resetPublishedProperties()(uint64_t a1)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock(v3 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v3 + 4);
  if (v2)
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in SystemCoordinator.resetPublishedProperties()(uint64_t a1)
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  v10 = xmmword_1AF00FCC0;
  v19 = 1;
  v3[0] = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v15 = 1;
  if (*(a1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantStatePublisher))
  {

    CurrentValueSubject.send(_:)();
  }

  swift_beginAccess();
  outlined assign with take of SystemCoordinator.ParticipantState(v3, a1 + 32);
  return swift_endAccess();
}

void closure #2 in SystemCoordinator.updateRemoteParticipantStates()(uint64_t a1)
{
  v3 = *(a1 + 16);
  os_unfair_lock_lock(v3 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v3 + 4);
  if (v2)
  {
    __break(1u);
  }
}

uint64_t SystemCoordinator.deinit()
{

  outlined destroy of SystemCoordinator.ParticipantState(v0 + 32);

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator____lazy_storage___localParticipantStates, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler), *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_spatialCatchupNeededHandler + 8));

  swift_unknownObjectRelease();

  outlined consume of SystemCoordinatorParticipantRoleRequest(*(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest), *(v0 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_localParticipantRoleAssignmentRequest + 8));

  v1 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SystemCoordinator.__deallocating_deinit()
{
  SystemCoordinator.deinit();

  return swift_deallocClassInstance();
}

void *specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  result = static _DictionaryStorage.copy(original:)();
  v3 = 0;
  v31 = result;
  v32 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v29 = v5;
  v30 = result + 8;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = *(v32 + 56);
      v16 = (*(v32 + 48) + 16 * v14);
      v17 = v16[1];
      v37 = *v16;
      outlined init with copy of Transferable(v15 + 40 * v14, v34);
      v18 = v35;
      v19 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v20 = *(v19 + 16);

      v21 = v20(v18, v19);
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_0(v34);
      result = v31;
      *(v30 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v24 = (v31[6] + 16 * v14);
      *v24 = v37;
      v24[1] = v17;
      v25 = (v31[7] + 16 * v14);
      *v25 = v21;
      v25[1] = v23;
      v26 = v31[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v31[2] = v28;
      v9 = v33;
      if (!v33)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v29 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v33 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v2 = type metadata accessor for Participant(0);
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InternalParticipant(0);
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities11ParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities11ParticipantVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v8 = result;
  v9 = 0;
  v31 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v27 = result + 8;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v31 + 48) + 8 * v20);
      outlined init with copy of InternalParticipant(*(v31 + 56) + *(v28 + 72) * v20, v6, type metadata accessor for InternalParticipant);
      v22 = v29;
      outlined init with copy of InternalParticipant(v6, v29, type metadata accessor for Participant);
      outlined destroy of InternalParticipant(v6);
      *(v27 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(v8[6] + 8 * v20) = v21;
      result = outlined init with take of Participant(v22, v8[7] + *(v30 + 72) * v20);
      v23 = v8[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v8[2] = v25;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v8;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinator and conformance SystemCoordinator()
{
  result = lazy protocol witness table cache variable for type SystemCoordinator and conformance SystemCoordinator;
  if (!lazy protocol witness table cache variable for type SystemCoordinator and conformance SystemCoordinator)
  {
    type metadata accessor for SystemCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinator and conformance SystemCoordinator);
  }

  return result;
}

uint64_t type metadata accessor for SystemCoordinator(uint64_t a1)
{
  result = type metadata singleton initialization cache for SystemCoordinator;
  if (!type metadata singleton initialization cache for SystemCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t outlined init with copy of SystemCoordinator.ParticipantStates?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of SystemCoordinator.ParticipantStates?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMd, &_s15GroupActivities17SystemCoordinatorC17ParticipantStatesVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of SystemCoordinator.ParticipantStates(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemCoordinator.ParticipantStates(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in SystemCoordinator.configuration.getter(uint64_t a1@<X8>)
{
  partial apply for closure #1 in SystemCoordinator.configuration.getter(a1);
}

{
  v2 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 8);
  v3 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 9);
  v4 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 10);
  v5 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration + 11);
  *a1 = *(v1 + OBJC_IVAR____TtC15GroupActivities17SystemCoordinator__configuration);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
  *(a1 + 10) = v4;
  *(a1 + 11) = v5;
}

void partial apply for closure #1 in SystemCoordinator.configuration.setter()
{
  partial apply for closure #1 in SystemCoordinator.configuration.setter();
}

{
  if (*(v0 + 35))
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 34))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  closure #1 in SystemCoordinator.configuration.setter(*(v0 + 16), *(v0 + 24), v2 | v1 | (*(v0 + 33) << 8) | *(v0 + 32));
}

uint64_t specialized closure #1 in _Streamed.projectedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GSgMd, &_sScS12ContinuationVySi_GSgMR);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  v10 = *a1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
    v12 = *(v11 - 8);
    (*(v12 + 16))(v9, a2, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
    result = specialized Dictionary.subscript.setter(v9, v10);
    v13 = a1[2];
    *a3 = v10;
    a3[1] = v13;
  }

  return result;
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(_BYTE *a1@<X8>)
{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1);
}

{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCoordinatorState.GroupImmersionStyle? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15GroupActivities22SystemCoordinatorStateC0A14ImmersionStyleOSgMd, &_s15GroupActivities22SystemCoordinatorStateC0A14ImmersionStyleOSgMR);
    lazy protocol witness table accessor for type SystemCoordinatorState.GroupImmersionStyle and conformance SystemCoordinatorState.GroupImmersionStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCoordinatorState.GroupImmersionStyle? and conformance <A> A?);
  }

  return result;
}

uint64_t keypath_get_32Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void type metadata completion function for SystemCoordinator(uint64_t a1)
{
  type metadata accessor for SystemCoordinator.ParticipantStates?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of SystemCoordinator.__allocating_init(clientProvider:)(uint64_t a1)
{
  v6 = (*(v1 + 240) + **(v1 + 240));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = SystemCoordinatorTable.systemCoordinator(for:);

  return v6(a1);
}

void type metadata accessor for SystemCoordinator.ParticipantStates?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SystemCoordinator.ParticipantStates?)
  {
    type metadata accessor for SystemCoordinator.ParticipantStates(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for SystemCoordinator.ParticipantStates?);
    }
  }
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemCoordinator.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemCoordinator.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15GroupActivities17SystemCoordinatorC24RoleAssignmentDiagnosticO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t destructiveInjectEnumTag for SystemCoordinator.RoleAssignmentDiagnostic(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t outlined init with copy of SystemCoordinator.ParticipantStates(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of SystemCoordinator.ParticipantStates(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in closure #2 in SystemCoordinator.updateRemoteParticipantStates()()
{
  *(*(v0 + 16) + 272) = *(v0 + 24);
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed SystemCoordinatorState) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t GroupSession.createClient()()
{
  v0[2] = 0xD00000000000002CLL;
  v0[3] = 0x80000001AF01BF70;
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = GroupSession.createClient();

  return GroupSession.requestEndpoint(with:)(v0 + 2);
}

{
  if (*(v0 + 48))
  {
    type metadata accessor for SystemCoordinatorClientConnection(0);
    v1 = XPCClient.__allocating_init(listenerEndpoint:)();
    v2 = &protocol witness table for SystemCoordinatorClientConnection;
  }

  else
  {
    if (one-time initialization token for systemCoordinator != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.systemCoordinator);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1AEE80000, v4, v5, "No available endpoint for coordinator", v6, 2u);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    v1 = 0;
    v2 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v1, v2);
}

{
  v17 = v0;
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.systemCoordinator);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[4] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed getting endpoint for coordinator: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0, 0);
}

uint64_t GroupSession.createClient()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = GroupSession.createClient();
  }

  else
  {
    v4 = GroupSession.createClient();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t GroupSession.isClientValidPublisher.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v23 = *(*v4 + 80);
  v22 = *(v5 + 88);
  type metadata accessor for GroupSession.State(255, v23, v22, a4);
  v6 = type metadata accessor for Published.Publisher();
  v24 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v21[2] = swift_getWitnessTable();
  v9 = type metadata accessor for Publishers.Map();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - v11;
  v21[1] = swift_getWitnessTable();
  v13 = type metadata accessor for Publishers.RemoveDuplicates();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v21 - v15;
  GroupSession.$state.getter();
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v23;
  *(v17 + 24) = v18;
  Publisher.map<A>(_:)();

  (*(v24 + 8))(v8, v6);
  Publisher<>.removeDuplicates()();
  (*(v10 + 8))(v12, v9);
  swift_getWitnessTable();
  v19 = Publisher.eraseToAnyPublisher()();
  (*(v14 + 8))(v16, v13);
  return v19;
}

uint64_t closure #1 in GroupSession.isClientValidPublisher.getter@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = 1;
  v6 = 1;
  v7 = v3;
  result = static GroupSession.State.== infix(_:_:)(&v7, &v6);
  if ((result & 1) == 0)
  {
    v6 = 0;
    v7 = v3;
    result = static GroupSession.State.== infix(_:_:)(&v7, &v6);
    v4 = result;
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t GroupSession.canBeInitialSpatialDriver.getter()
{
  if (*(v0 + *(*v0 + 264)) != 1)
  {
    return 0;
  }

  v1 = *(*v0 + 280);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.activeParticipantsPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGSDyAiJ0J0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGSDyAiJ0J0VGGMR);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - v2;
  v6[1] = GroupSession.internalActiveParticipantsPublisher.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V15GroupActivities11ParticipantVGMd, &_sSDys6UInt64V15GroupActivities11ParticipantVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UInt64 : InternalParticipant], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UInt64 : InternalParticipant], Never>, [UInt64 : Participant]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGSDyAiJ0J0VGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGSDyAiJ0J0VGGMR, MEMORY[0x1E695BD60]);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void *closure #1 in GroupSession.activeParticipantsPublisher.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized _NativeDictionary.mapValues<A>(_:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for SystemCoordinatorClientProvider.createClient() in conformance GroupSession<A>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SystemCoordinatorClientProvider.createClient() in conformance GroupSession<A>;

  return GroupSession.createClient()();
}

uint64_t protocol witness for SystemCoordinatorClientProvider.createClient() in conformance GroupSession<A>(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t SystemCoordinatorClientConnection.requestCurrentState(_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = XPCClient.queue.getter();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in SystemCoordinatorClientConnection.requestCurrentState(_:);
  *(v8 + 24) = v7;
  v13[4] = _sIg_Ieg_TRTA_0;
  v13[5] = v8;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed () -> ();
  v13[3] = &block_descriptor_11;
  v9 = _Block_copy(v13);
  v10 = v3;

  dispatch_sync(v6, v9);

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in SystemCoordinatorClientConnection.requestCurrentState(_:)(void **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed SystemCoordinatorState) -> ();
  v5[3] = &block_descriptor_25;
  v4 = _Block_copy(v5);

  [v3 requestCurrentState_];
  _Block_release(v4);
}

uint64_t @objc SystemCoordinatorClientConnection.requestCurrentState(_:)(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  SystemCoordinatorClientConnection.requestCurrentState(_:)(_s15GroupActivities22SystemCoordinatorStateCIeyBy_ACIegg_TRTA_0, v5, v7);
}

uint64_t SystemCoordinatorClientConnection.setConfiguration(_:)(void *a1, __n128 a2)
{
  v4 = XPCClient.queue.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in SystemCoordinatorClientConnection.setConfiguration(_:);
  *(v6 + 24) = v5;
  v12[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v12[5] = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed () -> ();
  v12[3] = &block_descriptor_17_0;
  v7 = _Block_copy(v12);
  v8 = v2;
  v9 = a1;

  dispatch_sync(v4, v7);

  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void @objc SystemCoordinatorClientConnection.setConfiguration(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  SystemCoordinatorClientConnection.setConfiguration(_:)(v4, v5);
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t dispatch thunk of SystemCoordinatorClientProvider.createClient()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for SystemCoordinatorClientProvider.createClient() in conformance GroupSession<A>;

  return v7(a1, a2);
}

uint64_t outlined init with copy of InternalParticipant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of InternalParticipant(uint64_t a1)
{
  v2 = type metadata accessor for InternalParticipant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo8TUHandleCG_15GroupActivities17AddressableMemberVs5NeverOTg504_s15e141Activities010BackgroundA14SessionManagerC46sessionDidReceiveUpdatedUnknownParticipantList0F2ID19unknownParticipantsy10Foundation4UUIDV_ShySo8d16CGtFyyYacfU_AA17gH8VAKXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_37;
        }

        v8 = v39;
        v9 = v41;
        v36 = v40;
        v10 = v1;
        specialized Set.subscript.getter(v39, v40, v41, v1, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
        v12 = v11;
        v13 = [v11 normalizedValue];
        if (!v13)
        {
          v13 = [v12 value];
        }

        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v9)
          {
            goto LABEL_42;
          }

          v1 = v10;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo8TUHandleC_GMd, &_sSh5IndexVySo8TUHandleC_GMR);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v38, 0);
          if (v5 == v34)
          {
LABEL_34:
            outlined consume of Set<TUHandle>.Index._Variant(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_43;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v1 = v10;
          v22 = 1 << *(v10 + 32);
          if (v8 >= v22)
          {
            goto LABEL_38;
          }

          v23 = v8 >> 6;
          v24 = *(v33 + 8 * (v8 >> 6));
          if (((v24 >> v8) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v10 + 36) != v36)
          {
            goto LABEL_40;
          }

          v25 = v24 & (-2 << (v8 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                outlined consume of Set<TUHandle>.Index._Variant(v8, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_33;
              }
            }

            outlined consume of Set<TUHandle>.Index._Variant(v8, v36, 0);
          }

LABEL_33:
          v31 = *(v10 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v5 == v2)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t *BackgroundGroupSessionManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static BackgroundGroupSessionManager.shared;
}

uint64_t specialized InternalGroupSessionProvider.groupSessions(for:)(void *a1)
{
  v2 = v1;
  v3 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v4 = [a1 activitySessions];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = 0;
  v43 = v2;
  v41 = v3;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E69E7CD0];
    v46 = MEMORY[0x1E69E7CD0];
    __CocoaSet.makeIterator()();
    v8 = __CocoaSet.Iterator.next()();
    if (v8)
    {
      v3 = 63;
      v2 = 1;
      do
      {
        v44 = v8;
        swift_dynamicCast();
        if ([v45[0] state] && objc_msgSend(v45[0], sel_state) != 1)
        {
        }

        else
        {
          v9 = v45[0];
          v10 = *(v7 + 16);
          if (*(v7 + 24) <= v10)
          {
            specialized _NativeSet.resize(capacity:)(v10 + 1);
          }

          v7 = v46;
          v5 = v45[0];
          v11 = NSObject._rawHashValue(seed:)(*(v46 + 40));
          v12 = v46 + 56;
          v13 = -1 << *(v46 + 32);
          v14 = v11 & ~v13;
          v15 = v14 >> 6;
          if (((-1 << v14) & ~*(v46 + 56 + 8 * (v14 >> 6))) != 0)
          {
            v16 = __clz(__rbit64((-1 << v14) & ~*(v46 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v17 = 0;
            v18 = (63 - v13) >> 6;
            do
            {
              if (++v15 == v18 && (v17 & 1) != 0)
              {
                __break(1u);
                goto LABEL_43;
              }

              v19 = v15 == v18;
              if (v15 == v18)
              {
                v15 = 0;
              }

              v17 |= v19;
              v20 = *(v12 + 8 * v15);
            }

            while (v20 == -1);
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          }

          *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          *(*(v7 + 48) + 8 * v16) = v9;
          ++*(v7 + 16);
        }

        v8 = __CocoaSet.Iterator.next()();
      }

      while (v8);
    }

LABEL_41:
    v2 = v43;
    v3 = v41;
    goto LABEL_42;
  }

  v21 = *(v5 + 32);
  v7 = ((1 << v21) + 63) >> 6;
  if ((v21 & 0x3Fu) > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v38[1] = v38;
    v39 = v7;
    MEMORY[0x1EEE9AC00](v6);
    v23 = v38 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v23, v22);
    v40 = 0;
    v24 = 0;
    v2 = v5 + 56;
    v25 = 1 << *(v5 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v7 = v26 & *(v5 + 56);
    v3 = (v25 + 63) >> 6;
    while (v7)
    {
      v27 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_33:
      v30 = v27 | (v24 << 6);
      v31 = *(*(v5 + 48) + 8 * v30);
      if ([v31 state])
      {
        v32 = [v31 state];

        if (v32 == 1)
        {
          goto LABEL_37;
        }
      }

      else
      {

LABEL_37:
        *&v23[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_40:
          v7 = specialized _NativeSet.extractSubset(using:count:)(v23, v39, v40, v5);
          goto LABEL_41;
        }
      }
    }

    v28 = v24;
    while (1)
    {
      v24 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v24 >= v3)
      {
        goto LABEL_40;
      }

      v29 = *(v2 + 8 * v24);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v7 = (v29 - 1) & v29;
        goto LABEL_33;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v37 = swift_slowAlloc();
  v7 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo29TUConversationActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So29ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v37, v7, v5, closure #1 in InternalGroupSessionProvider.groupSessions(for:));

  MEMORY[0x1B2715BA0](v37, -1, -1);
LABEL_42:
  v34 = v3;

  v35 = specialized Sequence.compactMap<A>(_:)(v7, v34, v2, specialized closure #2 in InternalGroupSessionProvider.groupSessions(for:));

  return v35;
}

{
  v2 = v1;
  v3 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v4 = [a1 activitySessions];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  lazy protocol witness table accessor for type CPParticipant and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, &lazy cache variable for type metadata for TUConversationActivitySession, 0x1E69D8B58);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = 0;
  v43 = v2;
  v41 = v3;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1E69E7CD0];
    v46 = MEMORY[0x1E69E7CD0];
    __CocoaSet.makeIterator()();
    v8 = __CocoaSet.Iterator.next()();
    if (v8)
    {
      v3 = 63;
      v2 = 1;
      do
      {
        v44 = v8;
        swift_dynamicCast();
        if ([v45[0] state] && objc_msgSend(v45[0], sel_state) != 1)
        {
        }

        else
        {
          v9 = v45[0];
          v10 = *(v7 + 16);
          if (*(v7 + 24) <= v10)
          {
            specialized _NativeSet.resize(capacity:)(v10 + 1);
          }

          v7 = v46;
          v5 = v45[0];
          v11 = NSObject._rawHashValue(seed:)(*(v46 + 40));
          v12 = v46 + 56;
          v13 = -1 << *(v46 + 32);
          v14 = v11 & ~v13;
          v15 = v14 >> 6;
          if (((-1 << v14) & ~*(v46 + 56 + 8 * (v14 >> 6))) != 0)
          {
            v16 = __clz(__rbit64((-1 << v14) & ~*(v46 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v17 = 0;
            v18 = (63 - v13) >> 6;
            do
            {
              if (++v15 == v18 && (v17 & 1) != 0)
              {
                __break(1u);
                goto LABEL_43;
              }

              v19 = v15 == v18;
              if (v15 == v18)
              {
                v15 = 0;
              }

              v17 |= v19;
              v20 = *(v12 + 8 * v15);
            }

            while (v20 == -1);
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          }

          *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          *(*(v7 + 48) + 8 * v16) = v9;
          ++*(v7 + 16);
        }

        v8 = __CocoaSet.Iterator.next()();
      }

      while (v8);
    }

LABEL_41:
    v2 = v43;
    v3 = v41;
    goto LABEL_42;
  }

  v21 = *(v5 + 32);
  v7 = ((1 << v21) + 63) >> 6;
  if ((v21 & 0x3Fu) > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v38[1] = v38;
    v39 = v7;
    MEMORY[0x1EEE9AC00](v6);
    v23 = v38 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v23, v22);
    v40 = 0;
    v24 = 0;
    v2 = v5 + 56;
    v25 = 1 << *(v5 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v7 = v26 & *(v5 + 56);
    v3 = (v25 + 63) >> 6;
    while (v7)
    {
      v27 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_33:
      v30 = v27 | (v24 << 6);
      v31 = *(*(v5 + 48) + 8 * v30);
      if ([v31 state])
      {
        v32 = [v31 state];

        if (v32 == 1)
        {
          goto LABEL_37;
        }
      }

      else
      {

LABEL_37:
        *&v23[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_40:
          v7 = specialized _NativeSet.extractSubset(using:count:)(v23, v39, v40, v5);
          goto LABEL_41;
        }
      }
    }

    v28 = v24;
    while (1)
    {
      v24 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v24 >= v3)
      {
        goto LABEL_40;
      }

      v29 = *(v2 + 8 * v24);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v7 = (v29 - 1) & v29;
        goto LABEL_33;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v37 = swift_slowAlloc();
  v7 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo29TUConversationActivitySessionCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab11VKXEfU_So29ijK5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n(v37, v7, v5, closure #1 in InternalGroupSessionProvider.groupSessions(for:));

  MEMORY[0x1B2715BA0](v37, -1, -1);
LABEL_42:
  v34 = v3;

  v35 = specialized Sequence.compactMap<A>(_:)(v7, v34, v2, specialized closure #2 in InternalGroupSessionProvider.groupSessions(for:));

  return v35;
}

uint64_t specialized closure #2 in InternalGroupSessionProvider.groupSessions(for:)(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [a2 initiator];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 value];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v14;
    v31 = v13;
  }

  else
  {
    v30 = 0xE000000000000000;
    v31 = 0;
  }

  v29 = [a2 localParticipantIdentifier];
  v15 = [a2 localMember];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 handle];

    v18 = [v17 value];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = [a2 unreliableMessengerConfig];
  v23 = (*(*a3 + 216))();
  (*(*a3 + 240))(v32);
  v24 = [a1 activity];
  v25 = [v24 requiresParticipantTranslation];

  v26 = a1;
  v27 = v32[6];
  result = specialized GroupSession<>.init(tuConversationActivitySession:groupUUID:initiatorHandle:localParticipantIdentifier:localParticipantHandle:unreliableMessengerConfig:topicManager:audioSessionAssertionManager:supportsSceneAssociation:requiresParticipantTranslation:)(v26, v8, v31, v30, v29, v19, v21, v22, v23, v32, 1u, v25);
  if (v27)
  {

    return 0;
  }

  return result;
}

{
  v6 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = [a2 initiator];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 value];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v14;
    v31 = v13;
  }

  else
  {
    v30 = 0xE000000000000000;
    v31 = 0;
  }

  v29 = [a2 localParticipantIdentifier];
  v15 = [a2 localMember];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 handle];

    v18 = [v17 value];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = [a2 unreliableMessengerConfig];
  v23 = BackgroundGroupSessionManager.topicManager.getter();
  outlined init with copy of Transferable(a3 + 160, v32);
  v24 = [a1 activity];
  v25 = [v24 requiresParticipantTranslation];

  v26 = a1;
  v27 = v32[6];
  result = specialized GroupSession<>.init(tuConversationActivitySession:groupUUID:initiatorHandle:localParticipantIdentifier:localParticipantHandle:unreliableMessengerConfig:topicManager:audioSessionAssertionManager:supportsSceneAssociation:requiresParticipantTranslation:)(v26, v8, v31, v30, v29, v19, v21, v22, v23, v32, 0, v25);
  if (v27)
  {

    return 0;
  }

  return result;
}

Swift::Int BackgroundGroupSessionManagerError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

void *BackgroundGroupSessionManager.__allocating_init(client:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v6 = specialized BackgroundGroupSessionManager.init(client:)(a1, v4, ObjectType, a2);
  swift_unknownObjectRelease();
  return v6;
}

double static BackgroundGroupSessionManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return result;
}

void key path setter for BackgroundGroupSessionManager.presenceProviderObservers : BackgroundGroupSessionManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 128) = v2;

  BackgroundGroupSessionManager.presenceProviderObservers.didset();
}

void BackgroundGroupSessionManager.presenceProviderObservers.didset()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.default);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities08PresenceC23SessionProviderObserverCGMd, &_sSDy10Foundation4UUIDV15GroupActivities08PresenceC23SessionProviderObserverCGMR);
    v4 = String.init<A>(reflecting:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEE80000, oslog, v1, "presenceSessions updated to: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B2715BA0](v3, -1, -1);
    MEMORY[0x1B2715BA0](v2, -1, -1);
  }

  else
  {
  }
}

void BackgroundGroupSessionManager.presenceProviderObservers.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;

  BackgroundGroupSessionManager.presenceProviderObservers.didset();
}

uint64_t (*BackgroundGroupSessionManager.presenceProviderObservers.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return BackgroundGroupSessionManager.presenceProviderObservers.modify;
}

void key path setter for BackgroundGroupSessionManager.providerObservers : BackgroundGroupSessionManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 136) = v2;

  BackgroundGroupSessionManager.providerObservers.didset();
}

void BackgroundGroupSessionManager.providerObservers.didset()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.default);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities0C23SessionProviderObserverCGMd, &_sSDy10Foundation4UUIDV15GroupActivities0C23SessionProviderObserverCGMR);
    v4 = String.init<A>(reflecting:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEE80000, oslog, v1, "providerObservers updated to %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B2715BA0](v3, -1, -1);
    MEMORY[0x1B2715BA0](v2, -1, -1);
  }

  else
  {
  }
}

void BackgroundGroupSessionManager.providerObservers.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;

  BackgroundGroupSessionManager.providerObservers.didset();
}

uint64_t (*BackgroundGroupSessionManager.providerObservers.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return BackgroundGroupSessionManager.providerObservers.modify;
}

void key path setter for BackgroundGroupSessionManager.requestedGroupSessionSignpostStates : BackgroundGroupSessionManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 144) = v2;

  BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.didset();
}

void BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.didset()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.default);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMd, &_sSDy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMR);
    v4 = String.init<A>(reflecting:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEE80000, oslog, v1, "requestedGroupSessionSignpostStates updated to %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B2715BA0](v3, -1, -1);
    MEMORY[0x1B2715BA0](v2, -1, -1);
  }

  else
  {
  }
}

void BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;

  BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.didset();
}

uint64_t (*BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return BackgroundGroupSessionManager.requestedGroupSessionSignpostStates.modify;
}

uint64_t BackgroundGroupSessionManager.presenceProviderObservers.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void *BackgroundGroupSessionManager.init(client:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = specialized BackgroundGroupSessionManager.init(client:)(a1, v2, ObjectType, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t closure #1 in BackgroundGroupSessionManager.init(client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMR);
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.init(client:), 0, 0);
}

uint64_t closure #1 in BackgroundGroupSessionManager.init(client:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[17];
    v2 = v0[18];
    v4 = v0[15];
    v5 = v0[16];
    v6 = *(Strong + 200);

    v0[8] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    v8 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[UUID : TUConversationActivitySessionContainer], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR, MEMORY[0x1E695BFB0]);
    MEMORY[0x1B2713ED0](v7, v8);

    (*(v5 + 32))(v2, v3, v4);
    AsyncPublisher.makeAsyncIterator()();
    swift_beginAccess();
    v9 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[UUID : TUConversationActivitySessionContainer], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
    v10 = swift_task_alloc();
    v0[19] = v10;
    *v10 = v0;
    v10[1] = closure #1 in BackgroundGroupSessionManager.init(client:);
    v11 = v0[12];

    return MEMORY[0x1EEE6D8C8](v0 + 9, v11, v9);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = closure #1 in BackgroundGroupSessionManager.init(client:);
  }

  else
  {
    v2 = closure #1 in BackgroundGroupSessionManager.init(client:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 168) = *(v0 + 72);
  return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.init(client:), 0, 0);
}

{
  if (v0[21])
  {
    Strong = swift_weakLoadStrong();
    v0[22] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](closure #1 in BackgroundGroupSessionManager.init(client:), Strong, 0);
    }

    else
    {

      v6 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[UUID : TUConversationActivitySessionContainer], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
      v7 = swift_task_alloc();
      v0[19] = v7;
      *v7 = v0;
      v7[1] = closure #1 in BackgroundGroupSessionManager.init(client:);
      v8 = v0[12];

      return MEMORY[0x1EEE6D8C8](v0 + 9, v8, v6);
    }
  }

  else
  {
    v2 = v0[18];
    v3 = v0[15];
    v4 = v0[16];
    (*(v0[13] + 8))(v0[14], v0[12]);
    (*(v4 + 8))(v2, v3);

    v5 = v0[1];

    return v5();
  }
}

{
  *(v0 + 80) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  BackgroundGroupSessionManager.updateProviders(for:)(v0[21]);

  v1 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<[UUID : TUConversationActivitySessionContainer], Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v2 = swift_task_alloc();
  v0[19]._rawValue = v2;
  *v2 = v0;
  v2[1] = closure #1 in BackgroundGroupSessionManager.init(client:);
  rawValue = v0[12]._rawValue;

  return MEMORY[0x1EEE6D8C8](&v0[9], rawValue, v1);
}

uint64_t BackgroundGroupSessionManager.topicManager.getter()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = objc_allocWithZone(MEMORY[0x1E6997708]);

    v3 = [v2 init];
    type metadata accessor for TopicManager(0);
    v4 = swift_allocObject();
    v1 = specialized TopicManager.init(provider:featureFlags:)(v0, v3, v4);
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t (*BackgroundGroupSessionManager.topicManager.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = BackgroundGroupSessionManager.topicManager.getter();
  return BackgroundGroupSessionManager.topicManager.modify;
}

uint64_t BackgroundGroupSessionManager.onActivitySessionsChanged.getter()
{
  v1 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t BackgroundGroupSessionManager.topicCategory(groupUUID:name:)()
{
  v0 = type metadata accessor for PubSubClient.TopicCategory();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMd, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  (*(v1 + 104))(v3, *MEMORY[0x1E69974F0], v0);
  Just.init(_:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Just<PubSubClient.TopicCategory> and conformance Just<A>, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMd, &_s7Combine4JustVy14CopresenceCore12PubSubClientC13TopicCategoryOGMR, MEMORY[0x1E695C008]);
  v8 = Publisher.eraseToAnyPublisher()();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t BackgroundGroupSessionManager.groupSessionsPublisher.getter()
{
  v1 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return v2;
}

uint64_t BackgroundGroupSessionManager.groupSessionTable.getter()
{
  if (*(v0 + 216))
  {
    v1 = *(v0 + 216);
  }

  else
  {
    type metadata accessor for GroupSessionTable();
    v1 = swift_allocObject();
    type metadata accessor for Lock();
    swift_allocObject();
    *(v1 + 16) = Lock.init()();
    *(v1 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities0E12SessionTableC7Storage33_64E0A582F9EAD21E39070881D97E5C2ALLVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v0 + 216) = v1;
  }

  return v1;
}

uint64_t (*BackgroundGroupSessionManager.groupSessionTable.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = BackgroundGroupSessionManager.groupSessionTable.getter();
  return BackgroundGroupSessionManager.groupSessionTable.modify;
}

uint64_t BackgroundGroupSessionManager.prewarm()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.prewarm(), v0, 0);
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = __swift_project_value_buffer(v1, static Log.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Prewarm connection to GroupSessionService", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = BackgroundGroupSessionManager.prewarm();

  return MEMORY[0x1EEDF8BE8](ObjectType);
}

{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[3];

    return MEMORY[0x1EEE6DFA0](BackgroundGroupSessionManager.prewarm(), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

{
  v15 = v0;
  v1 = v0[6];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to prewarm client, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  swift_willThrow();
  v12 = v0[1];

  return v12();
}