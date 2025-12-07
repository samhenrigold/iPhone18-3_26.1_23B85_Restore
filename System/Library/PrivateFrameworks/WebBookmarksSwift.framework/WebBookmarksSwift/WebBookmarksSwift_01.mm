uint64_t ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:), v1, 0);
}

uint64_t ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:)()
{
  v49 = v0;
  v1 = [*(v0 + 152) recordID];
  v2 = [v1 zoneID];

  v3 = [v2 safari_tabGroupRootRecordName];
  if (!v3)
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.tabGroup);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_33;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_272D1B000, v27, v28, "Trying to start a collaboration activity with a CKShare not attached to a tab group", v29, 2u);
    v30 = v29;
LABEL_32:
    MEMORY[0x2743D7F00](v30, -1, -1);
LABEL_33:

LABEL_35:
    v25 = 0;
LABEL_36:
    v46 = *(v0 + 8);

    return v46(v25);
  }

  v4 = *(v0 + 160);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *(v0 + 168) = v5;
  *(v0 + 176) = v7;
  v8 = *(v0 + 160);
  if (*(v4 + 152) == 1)
  {
    swift_beginAccess();
    v9 = *(v8 + 144);
    if (*(v9 + 16))
    {

      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 16 * v10);

        v13 = ParticipantPresenceCoordinator.ConnectionManagerStore.pausedSharedConnections.modify(v0 + 16);
        v15 = specialized Dictionary.subscript.modify((v0 + 48), v5, v7);
        v16 = *v14;
        if (*v14)
        {
          v17 = *(v0 + 152);
          *v14 = v17;
          v18 = v17;
        }

        (v15)(v0 + 48, 0);
        (v13)(v0 + 16, 0);
        if (one-time initialization token for tabGroup != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logger.tabGroup);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v48 = v23;
          *v22 = 136446210;
          v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v48);

          *(v22 + 4) = v24;
          _os_log_impl(&dword_272D1B000, v20, v21, "Updating paused connection share for tab group %{public}s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v23);
          MEMORY[0x2743D7F00](v23, -1, -1);
          MEMORY[0x2743D7F00](v22, -1, -1);
        }

        else
        {
        }

        v25 = v12;
        goto LABEL_36;
      }
    }

    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.tabGroup);

    v27 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v27, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v40 = 136446210;
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v48);

      *(v40 + 4) = v42;
      v43 = "No paused connections to update for tab group %{public}s";
LABEL_31:
      _os_log_impl(&dword_272D1B000, v27, v39, v43, v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x2743D7F00](v41, -1, -1);
      v30 = v40;
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  swift_beginAccess();
  v31 = *(v8 + 136);
  if (!*(v31 + 16))
  {
LABEL_27:
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.tabGroup);

    v27 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v27, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v48 = v41;
      *v40 = 136446210;
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v48);

      *(v40 + 4) = v45;
      v43 = "No active connections to update for tab group %{public}s";
      goto LABEL_31;
    }

LABEL_34:

    goto LABEL_35;
  }

  v32 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
  if ((v33 & 1) == 0)
  {

    goto LABEL_27;
  }

  v34 = (*(v31 + 56) + 48 * v32);
  v35 = v34[1];
  *(v0 + 184) = v35;
  *(v0 + 192) = v34[2];
  v36 = v34[3];
  *(v0 + 200) = v36;
  *(v0 + 208) = v34[4];
  v37 = v35;

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:), v36, 0);
}

{
  v1 = v0[25];
  swift_beginAccess();
  v0[27] = v1[14];
  v2 = v1[15];
  v0[28] = v2;
  v3 = v1[16] >> 61;
  v4 = v0[20];
  if (v3 > 2)
  {
    if (v3 == 3)
    {

      v8 = ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:);
    }

    else
    {
      if (v3 == 4)
      {

        v6 = v2;

        v7 = ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:);
      }

      else
      {
        v7 = ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:);
      }

      v8 = v7;
    }
  }

  else
  {
    if (v3)
    {
      v5 = ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:);
    }

    else
    {
      v5 = ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:);
    }

    v9 = v5;

    v8 = v9;
  }

  return MEMORY[0x2822009F8](v8, v4, 0);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;

  swift_beginAccess();

  *(v0 + 128) = CKShare.members.getter();
  CurrentValueSubject.send(_:)();

  v5 = *(v0 + 192);
  v6 = *(v0 + 184);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:), v5, 0);
}

{
  v1 = *(v0 + 224);
  v2 = *(v0 + 152);
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;

  swift_beginAccess();

  *(v0 + 128) = CKShare.members.getter();
  CurrentValueSubject.send(_:)();

  v5 = *(v0 + 192);
  v6 = *(v0 + 184);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:), v5, 0);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:), v1, 0);
}

{
  v1 = specialized static ParticipantHandleMap.handlesToParticipantKindsForShare(_:)(*(v0 + 152));
  *(v0 + 232) = 0;
  v2 = *(v0 + 160);
  *(*(v0 + 192) + 112) = v1;

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:), v2, 0);
}

{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v3 + 136);
  *(v3 + 136) = 0x8000000000000000;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v1);
  v7 = v25[2];
  v8 = (v5 & 1) == 0;
  result = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = v5;
  if (v25[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      result = specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, isUniquelyReferenced_nonNull_native);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
    if ((v10 & 1) != (v13 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v6 = result;
  }

  if ((v10 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v14 = v25[7] + 48 * v6;
  v15 = *v14;
  v16 = *(v14 + 8);
  v24 = *(v14 + 16);
  v17 = *(v14 + 32);
  v18 = *(v14 + 40);
  v19 = *(v0 + 152);

  if (v19)
  {
    v20 = *(v0 + 152);
    v21 = v25[7] + 48 * v6;
    *v21 = v15;
    *(v21 + 8) = v20;
    *(v21 + 16) = v24;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
  }

  else
  {
    outlined destroy of String(v25[6] + 16 * v6);
    specialized _NativeDictionary._delete(at:)(v6, v25);
  }

  v22 = *(v0 + 184);
  *(*(v0 + 160) + 136) = v25;
  swift_endAccess();

  v23 = *(v0 + 8);

  return v23(v22);
}

{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t ParticipantPresenceCoordinator.ConnectionManagerStore.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t ParticipantPresenceCoordinator.currentConnectionState()()
{
  *(v1 + 72) = v0;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState(), 0, 0);
}

{
  v1 = *(*(v0 + 72) + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
  *(v0 + 80) = v1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState(), v1, 0);
}

{
  v1 = v0[10];
  v2 = *(v1 + 112);
  v0[11] = v2;

  if (v2)
  {
    v3 = ParticipantPresenceCoordinator.currentConnectionState();
    v4 = v2;
  }

  else
  {
    v0[14] = MEMORY[0x277D84F98];
    v3 = ParticipantPresenceCoordinator.currentConnectionState();
    v4 = v1;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

{
  *(v0 + 96) = *(*(v0 + 88) + 168);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState(), 0, 0);
}

{
  if (v0[12])
  {
    v1 = v0[10];
    v2 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(-1, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);
    v0[14] = v3;
    v1 = v0[10];
    v2 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  return MEMORY[0x2822009F8](v2, v1, 0);
}

{
  *(v0 + 104) = *(*(v0 + 80) + 128);
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState(), 0, 0);
}

{
  v1 = v0[13];
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);
  v0[14] = v2;
  v4 = v0[10];

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState(), v4, 0);
}

{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 120) = *(v1 + 136);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState(), 0, 0);
}

{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v1 + 32);
  *(v0 + 216) = v3;
  v4 = -1;
  v5 = -1 << v3;
  v6 = *(v1 + 64);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  *(v0 + 128) = v2;
  v7 = v4 & v6;
  if ((v4 & v6) != 0)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 136) = v7;
    *(v0 + 144) = v8;
    v11 = __clz(__rbit64(v7)) | (v8 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    *(v0 + 152) = *v12;
    *(v0 + 160) = v12[1];
    v13 = (*(v1 + 56) + 48 * v11);
    v14 = v13[1];
    *(v0 + 168) = v14;
    *(v0 + 176) = v13[2];
    v15 = v13[3];
    *(v0 + 184) = v15;
    *(v0 + 192) = v13[4];
    *(v0 + 200) = v13[5];

    v16 = v14;

    v17 = ParticipantPresenceCoordinator.currentConnectionState();
    v18 = v15;
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v5) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v7 = *(v1 + 8 * v9++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v19 = *(v0 + 80);

    v17 = ParticipantPresenceCoordinator.currentConnectionState();
    v18 = v19;
  }

  return MEMORY[0x2822009F8](v17, v18, 0);
}

{
  if (*(*(v0 + 184) + 168))
  {
    v1 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  else
  {
    v1 = ParticipantPresenceCoordinator.currentConnectionState();
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 64) = v3;
  v5 = (v0 + 64);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v1);
  v8 = *(v3 + 16);
  v9 = (v7 & 1) == 0;
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    goto LABEL_24;
  }

  LOBYTE(v2) = v7;
  if (*(*(v0 + 128) + 24) >= v11)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
LABEL_8:
      v16 = *(v0 + 168);
      v17 = *(v0 + 160);
      if (v2)
      {
        v2 = v6;

        v5 = *v5;
        *(v5[7] + 8 * v2) = -1;
      }

      else
      {
        v18 = *(v0 + 152);
        v5 = *(v0 + 64);
        v5[(v6 >> 6) + 8] |= 1 << v6;
        v19 = (v5[6] + 16 * v6);
        *v19 = v18;
        v19[1] = v17;
        *(v5[7] + 8 * v6) = -1;

        v22 = v5[2];
        v10 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v10)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v6, v20, v21);
        }

        v5[2] = v23;
      }

      v25 = *(v0 + 136);
      v24 = *(v0 + 144);
      *(v0 + 128) = v5;
      v26 = (v25 - 1) & v25;
      if (v26)
      {
        break;
      }

      while (1)
      {
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v6 = *(v0 + 120);
        if (v27 >= (((1 << *(v0 + 216)) + 63) >> 6))
        {
          v34 = *(v0 + 80);

          v6 = ParticipantPresenceCoordinator.currentConnectionState();
          v20 = v34;
          goto LABEL_19;
        }

        v26 = *(v6 + 8 * v27 + 64);
        ++v24;
        if (v26)
        {
          v24 = v27;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v35 = v6;
      specialized _NativeDictionary.copy()();
      v6 = v35;
    }

    v6 = *(v0 + 120);
LABEL_18:
    *(v0 + 136) = v26;
    *(v0 + 144) = v24;
    v28 = __clz(__rbit64(v26)) | (v24 << 6);
    v29 = (*(v6 + 48) + 16 * v28);
    *(v0 + 152) = *v29;
    *(v0 + 160) = v29[1];
    v30 = (*(v6 + 56) + 48 * v28);
    v31 = v30[1];
    *(v0 + 168) = v31;
    *(v0 + 176) = v30[2];
    v32 = v30[3];
    *(v0 + 184) = v32;
    *(v0 + 192) = v30[4];
    *(v0 + 200) = v30[5];

    v33 = v31;

    v6 = ParticipantPresenceCoordinator.currentConnectionState();
    v20 = v32;
LABEL_19:
    v21 = 0;

    return MEMORY[0x2822009F8](v6, v20, v21);
  }

  else
  {
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11, isUniquelyReferenced_nonNull_native);
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v2 & 1) == (v14 & 1))
    {
      goto LABEL_8;
    }

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }
}

{
  v1 = *(v0 + 200);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 64) = v4;
  v6 = (v0 + 64);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v2);
  v9 = *(v4 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    goto LABEL_24;
  }

  LOBYTE(v3) = v8;
  if (*(*(v0 + 128) + 24) >= v12)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
LABEL_8:
      v17 = *(v0 + 168);
      v18 = *(v0 + 160);
      if (v3)
      {
        v3 = v7;

        v6 = *v6;
        *(v6[7] + 8 * v3) = v1;
      }

      else
      {
        v19 = *(v0 + 152);
        v6 = *(v0 + 64);
        v6[(v7 >> 6) + 8] |= 1 << v7;
        v20 = (v6[6] + 16 * v7);
        *v20 = v19;
        v20[1] = v18;
        *(v6[7] + 8 * v7) = v1;

        v23 = v6[2];
        v11 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v11)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v7, v21, v22);
        }

        v6[2] = v24;
      }

      v26 = *(v0 + 136);
      v25 = *(v0 + 144);
      *(v0 + 128) = v6;
      v27 = (v26 - 1) & v26;
      if (v27)
      {
        break;
      }

      while (1)
      {
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v7 = *(v0 + 120);
        if (v28 >= (((1 << *(v0 + 216)) + 63) >> 6))
        {
          v35 = *(v0 + 80);

          v7 = ParticipantPresenceCoordinator.currentConnectionState();
          v21 = v35;
          goto LABEL_19;
        }

        v27 = *(v7 + 8 * v28 + 64);
        ++v25;
        if (v27)
        {
          v25 = v28;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v36 = v7;
      specialized _NativeDictionary.copy()();
      v7 = v36;
    }

    v7 = *(v0 + 120);
LABEL_18:
    *(v0 + 136) = v27;
    *(v0 + 144) = v25;
    v29 = __clz(__rbit64(v27)) | (v25 << 6);
    v30 = (*(v7 + 48) + 16 * v29);
    *(v0 + 152) = *v30;
    *(v0 + 160) = v30[1];
    v31 = (*(v7 + 56) + 48 * v29);
    v32 = v31[1];
    *(v0 + 168) = v32;
    *(v0 + 176) = v31[2];
    v33 = v31[3];
    *(v0 + 184) = v33;
    *(v0 + 192) = v31[4];
    *(v0 + 200) = v31[5];

    v34 = v32;

    v7 = ParticipantPresenceCoordinator.currentConnectionState();
    v21 = v33;
LABEL_19:
    v22 = 0;

    return MEMORY[0x2822009F8](v7, v21, v22);
  }

  else
  {
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, isUniquelyReferenced_nonNull_native);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_8;
    }

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }
}

{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 208) = *(v1 + 144);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentConnectionState(), 0, 0);
}

void ParticipantPresenceCoordinator.currentConnectionState()()
{
  v1 = 0;
  v2 = *(v0 + 208);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v0 + 208) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = *(v0 + 128);
  v11 = *(v0 + 208);
  if ((v6 & v3) != 0)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v13 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v13 >= v9)
    {

      v30 = *(v31 + 8);

      v30(v10);
      return;
    }

    v8 = *(v4 + 8 * v13);
    ++v1;
  }

  while (!v8);
  while (1)
  {
    v14 = (*(v11 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v8)))));
    v16 = *v14;
    v15 = v14[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
    v20 = v10[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v10[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        specialized _NativeDictionary.copy()();
        v18 = v29;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
      if ((v24 & 1) != (v25 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v8 &= v8 - 1;
    if (v24)
    {
      v12 = v18;

      *(v10[7] + 8 * v12) = -2;
      v1 = v13;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v10[6] + 16 * v18);
      *v26 = v16;
      v26[1] = v15;
      *(v10[7] + 8 * v18) = -2;
      v27 = v10[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_28;
      }

      v10[2] = v28;
      v1 = v13;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v13 = v1;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.currentConnectionState()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ParticipantPresenceCoordinator.currentConnectionState();

  return ParticipantPresenceCoordinator.currentConnectionState()();
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.currentConnectionState()(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v7 = *v1;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMd, &_sScS12ContinuationV15BufferingPolicyOy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVt__GMR);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination(), 0, 0);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination()()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore);
  *(v0 + 72) = v1;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination(), v1, 0);
}

{
  *(v0 + 80) = *(*(v0 + 72) + 112);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination(), 0, 0);
}

{
  if (v0[10])
  {

    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v0[11] = __swift_project_value_buffer(v2, static Logger.tabGroup);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_272D1B000, v3, v4, "Starting personal device connection", v5, 2u);
      MEMORY[0x2743D7F00](v5, -1, -1);
    }

    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA34PersonalDeviceCoordinationActivityV15GroupActivities0gK15SessionProviderCyAEGAA21PresenceUpdateMessageVGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerCyAA34PersonalDeviceCoordinationActivityV15GroupActivities0gK15SessionProviderCyAEGAA21PresenceUpdateMessageVGMR);
    v9 = swift_allocObject();
    v0[12] = v9;
    swift_defaultActor_initialize();
    *(v9 + 168) = 0;
    (*(v7 + 104))(v6, *MEMORY[0x277D85778], v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVtGMd, &_s17WebBookmarksSwift18AsyncBufferedQueueCyAA21PresenceUpdateMessageV_15GroupActivities0J16SessionMessengerC0I7ContextVtGMR);
    swift_allocObject();
    *(v9 + 176) = specialized AsyncBufferedQueue.init(bufferingPolicy:)(v6);
    v10 = *(*v9 + 160);
    v11 = type metadata accessor for Participant();
    (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
    *(v9 + *(*v9 + 168)) = MEMORY[0x277D84FA0];
    *(v9 + *(*v9 + 176)) = MEMORY[0x277D84F90];
    *(v9 + 112) = 0;
    *(v9 + 120) = 0;
    *(v9 + 128) = xmmword_272D66CC0;
    *(v9 + 144) = 0x8000000272D68750;
    *(v9 + 152) = closure #1 in closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination();
    *(v9 + 160) = 0;

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination(), v9, 0);
  }
}

{
  v1 = *(v0 + 96);
  swift_beginAccess();

  specialized FastSyncStateMachine.startActivity(_:)(&async function pointer to partial apply for specialized closure #1 in CollaborationConnectionManager.startActivity(), v1);
  *(v0 + 104) = 0;
  swift_endAccess();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination(), 0, 0);
}

{
  v1 = *(v0 + 104);
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
    _os_log_impl(&dword_272D1B000, v3, v4, "Failed to start activity with error %@", v5, 0xCu);
    outlined destroy of TaskPriority?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v6, -1, -1);
    MEMORY[0x2743D7F00](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = v0[14];
  v2 = v0[9];
  *(v2 + 112) = v0[12];

  *(v2 + 120) = v1;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination(), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination();
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);

  return specialized ParticipantPresenceCoordinator.ConnectionManagerStore.unpauseSharedConnections(using:)(v3, v4);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination();
  }

  else
  {
    v3 = closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 128);
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
    _os_log_impl(&dword_272D1B000, v3, v4, "Failed to start activity with error %@", v5, 0xCu);
    outlined destroy of TaskPriority?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v6, -1, -1);
    MEMORY[0x2743D7F00](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination()(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_272D1B000, v2, v3, "Did begin personal device connection activity", v4, 2u);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  v5 = v1[12];
  v6 = v1[9];

  ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(v5);
  v1[14] = v7;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination(), v6, 0);
}

uint64_t closure #1 in closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMd, &_s15GroupActivities08PersonalA15SessionProviderCy17WebBookmarksSwift0C26DeviceCoordinationActivityVGMR);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  return PersonalGroupSessionProvider.init(id:activity:)();
}

double ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for TaskPriority();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = v1;

  v10 = v1;
  v11 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v9);
  v8(v6, 1, 1, v7);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = v10;

  v13 = v10;
  v14 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
  v15 = swift_allocObject();
  *&result = 2;
  *(v15 + 16) = xmmword_272D66CB0;
  *(v15 + 32) = v11;
  *(v15 + 40) = v14;
  return result;
}

uint64_t ParticipantPresenceCoordinator.beginDeviceCoordination()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v10 = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, a2, v9);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination()()
{
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v1, static Logger.tabGroup);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_272D1B000, v2, v3, "Ending personal device connection", v4, 2u);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *&v5[OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore];
  v0[4] = v6;
  v7 = v5;
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination();
  v9 = v0[2];

  return specialized ParticipantPresenceCoordinator.ConnectionManagerStore.pauseSharedConnections(using:)(v6, v9);
}

{
  *(v0 + 48) = *(*(v0 + 32) + 120);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination(), 0, 0);
}

{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F78];
    v5 = MEMORY[0x277D84A98];
    v6 = MEMORY[0x277D84AC0];
    do
    {
      v3 += 8;

      MEMORY[0x2743D73C0](v7, v4 + 8, v5, v6);

      --v2;
    }

    while (v2);
  }

  v8 = *(v0 + 32);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination(), v8, 0);
}

{
  *(v0 + 56) = *(*(v0 + 32) + 112);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination(), 0, 0);
}

{
  v1 = *(v0 + 32);
  *(v1 + 112) = 0;

  *(v1 + 120) = MEMORY[0x277D84F90];

  v2 = *(v0 + 8);

  return v2();
}

void closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination()()
{
  v2 = *v1;
  v3 = *(*v1 + 16);

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 32);

    MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination(), v4, 0);
  }
}

uint64_t closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination()(uint64_t a1)
{
  if (v1[7])
  {
    v2 = swift_task_alloc();
    v1[8] = v2;
    *v2 = v1;
    v2[1] = closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination();

    return specialized CollaborationConnectionManager.leaveActivity()();
  }

  else
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_272D1B000, v4, v5, "Failed to leave activity", v6, 2u);
      MEMORY[0x2743D7F00](v6, -1, -1);
    }

    v7 = v1[4];

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination(), v7, 0);
  }
}

{
  v2 = *(v1 + 72);
  v3 = Logger.logObject.getter();
  if (v2 == 1)
  {
    v4 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "Did leave personal device connection activity";
  }

  else
  {
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = "Failed to leave activity";
  }

  v6 = swift_slowAlloc();
  *v6 = 0;
  _os_log_impl(&dword_272D1B000, v3, v4, v5, v6, 2u);
  MEMORY[0x2743D7F00](v6, -1, -1);
LABEL_7:
  v7 = *(v1 + 32);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination(), v7, 0);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination()(char a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination(), 0, 0);
}

uint64_t @objc ParticipantPresenceCoordinator.beginDeviceCoordination()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v12 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, a4, v11);
}

uint64_t closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR);
  v5[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), 0, 0);
}

uint64_t closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)()
{
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[24] = __swift_project_value_buffer(v1, static Logger.tabGroup);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_272D1B000, v2, v3, "Will begin receiving messages in personal device connection", v4, 2u);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMR);
  AsyncStream.makeAsyncIterator()();
  v5 = OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore;
  v0[25] = OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore;
  v0[26] = v5;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
  v7 = v0[20];
  v8 = v0[21];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

{

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), 0, 0);
}

{
  v1 = *(v0 + 160);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
LABEL_5:
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_272D1B000, v8, v9, "Did finnish receiving messages in personal device connection", v10, 2u);
      MEMORY[0x2743D7F00](v10, -1, -1);
    }

    v11 = *(v0 + 8);

    return v11();
  }

  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *(v0 + 64) = *(v1 + 6);
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  *(v0 + 16) = v3;
  v6 = *(v2 + 48);
  *(v0 + 272) = v6;
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    outlined destroy of PresenceUpdateMessage(v0 + 16);
    v7 = type metadata accessor for GroupSessionMessenger.MessageContext();
    (*(*(v7 - 8) + 8))(v1 + v6, v7);
    goto LABEL_5;
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_272D1B000, v13, v14, "Did receive message for personal device connection", v15, 2u);
    MEMORY[0x2743D7F00](v15, -1, -1);
  }

  v16 = *(v0 + 200);
  v17 = *(v0 + 152);

  v18 = *(v17 + v16);
  *(v0 + 224) = v18;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v18, 0);
}

{
  v0[16] = ParticipantPresenceStore.handleCurrentUserPresenceUpdateMessage(_:in:)((v0 + 2), 0, 0);
  v0[17] = v1;
  v0[29] = v1;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), 0, 0);
}

{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 208);
    v2 = *(v0 + 152);
    *(v0 + 240) = *(v0 + 128);
    v3 = *(v2 + v1);
    *(v0 + 248) = v3;

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v3, 0);
  }

  else
  {
    outlined destroy of PresenceUpdateMessage(v0 + 16);
    v4 = *(v0 + 272);
    v5 = *(v0 + 160);
    v6 = type metadata accessor for GroupSessionMessenger.MessageContext();
    (*(*(v6 - 8) + 8))(v5 + v4, v6);
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);

    return MEMORY[0x2822003E8](v8, 0, 0, v9);
  }
}

{
  v0[32] = ParticipantPresenceCoordinator.ConnectionManagerStore.sharedConnectionManager(forTabGroup:)(v0[30], v0[29]);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), 0, 0);
}

{
  if (*(v0 + 256))
  {
    v1 = *(v0 + 64);
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 104) = *(v0 + 48);
    *(v0 + 120) = v1;
    v2 = swift_task_alloc();
    *(v0 + 264) = v2;
    *v2 = v0;
    v2[1] = closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);

    return specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)(v0 + 72);
  }

  else
  {
    outlined destroy of PresenceUpdateMessage(v0 + 16);
    v4 = *(v0 + 272);
    v5 = *(v0 + 160);
    v6 = type metadata accessor for GroupSessionMessenger.MessageContext();
    (*(*(v6 - 8) + 8))(v5 + v4, v6);
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
    v8 = *(v0 + 160);
    v9 = *(v0 + 168);

    return MEMORY[0x2822003E8](v8, 0, 0, v9);
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), 0, 0);
}

{
  outlined destroy of PresenceUpdateMessage(v0 + 16);

  v1 = *(v0 + 272);
  v2 = *(v0 + 160);
  v3 = type metadata accessor for GroupSessionMessenger.MessageContext();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *v4 = v0;
  v4[1] = closure #1 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);

  return MEMORY[0x2822003E8](v5, 0, 0, v6);
}

uint64_t closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = type metadata accessor for Participants();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v5[18] = swift_task_alloc();
  v7 = type metadata accessor for Participant();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVyShy15GroupActivities11ParticipantVG_GMd, &_sScS8IteratorVyShy15GroupActivities11ParticipantVG_GMR);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), 0, 0);
}

uint64_t closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)()
{
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 200) = __swift_project_value_buffer(v1, static Logger.tabGroup);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_272D1B000, v2, v3, "Will begin observing active participant changes in personal device connection", v4, 2u);
    MEMORY[0x2743D7F00](v4, -1, -1);
  }

  v5 = *(v0 + 104);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v5, 0);
}

{
  *(v0 + 208) = specialized CollaborationConnectionManager.participantUpdates()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA34PersonalDeviceCoordinationActivityV15GroupActivities0pT15SessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShyAI11ParticipantVGGGMR, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), 0, 0);
}

{
  v1 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyShy15GroupActivities11ParticipantVGGMd, &_sScSyShy15GroupActivities11ParticipantVGGMR);
  AsyncStream.makeAsyncIterator()();
  v2 = OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore;
  *(v0 + 216) = *(*v1 + 160);
  *(v0 + 224) = v2;
  *(v0 + 232) = OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore;
  swift_beginAccess();
  *(v0 + 384) = *MEMORY[0x277CCB268];
  *(v0 + 240) = MEMORY[0x277D84FA0];
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
  v4 = *(v0 + 176);

  return MEMORY[0x2822003E8](v0 + 96, 0, 0, v4);
}

{

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), 0, 0);
}

{
  outlined init with copy of TaskPriority?(v0[13] + v0[27], v0[18], &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), 0, 0);
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[32];
  if (v4 == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    v6 = v0[32];
  }

  else
  {
    v7 = v0[21];
    (*(v2 + 32))(v7, v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMR);
    v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_272D66CD0;
    (*(v2 + 16))(v9 + v8, v7, v1);
    v6 = specialized _NativeSet.subtracting<A>(_:)(v9, v5);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v2 + 8))(v7, v1);
  }

  v0[33] = v6;
  v10 = *(v0[14] + v0[28]);
  v0[34] = v10;
  v0[35] = *(v6 + 16);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v10, 0);
}

{
  *(*(v0 + 272) + 128) = *(v0 + 280);
  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), 0, 0);
}

{
  v1 = v0[33];
  v2 = v0[30];
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    v8 = v0[33];
    specialized Set._subtract<A>(_:)(v2);

    v3 = v8;
  }

  else
  {
    v3 = specialized _NativeSet.subtracting<A>(_:)(v0[30], v1);
  }

  v0[36] = v3;
  if (*(v3 + 16))
  {
    v4 = *(v0[14] + v0[29]);
    v0[37] = v4;

    return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v4, 0);
  }

  else
  {

    v0[30] = v0[33];
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
    v6 = v0[22];

    return MEMORY[0x2822003E8](v0 + 12, 0, 0, v6);
  }
}

{
  v1 = v0[37];
  v2 = v0[13];
  v3 = v1[18];
  v0[38] = v3;
  v4 = v1[19];
  v0[39] = v4;
  v5 = v1[20];
  v0[40] = v5;
  v6 = v1[21];
  v0[41] = v6;
  v0[42] = v1[22];
  v0[43] = v1[23];
  v0[44] = v1[24];
  outlined copy of PresenceUpdateMessage.Kind(v3, v4, v5, v6);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v2, 0);
}

{
  v1 = *(*(v0 + 104) + 168);
  *(v0 + 360) = v1;
  v2 = *(v0 + 352);
  if (v1)
  {
    v3 = *(v0 + 320);
    *(v0 + 16) = *(v0 + 304);
    *(v0 + 32) = v3;
    *(v0 + 48) = *(v0 + 336);
    *(v0 + 64) = v2;

    return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v1, 0);
  }

  else
  {
    outlined consume of PresenceUpdateMessage.Kind(*(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328));

    *(v0 + 240) = *(v0 + 264);
    v4 = swift_task_alloc();
    *(v0 + 248) = v4;
    *v4 = v0;
    v4[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
    v5 = *(v0 + 176);

    return MEMORY[0x2822003E8](v0 + 96, 0, 0, v5);
  }
}

{
  v1 = *(v0 + 128);
  **(v0 + 136) = *(v0 + 288);
  (*(v1 + 104))();
  v2 = swift_task_alloc();
  *(v0 + 368) = v2;
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  v4 = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  *v2 = v0;
  v2[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
  v5 = *(v0 + 136);

  return MEMORY[0x28211FC98](v0 + 16, v5, &type metadata for PresenceUpdateMessage, updated, v4);
}

{
  v2 = *v1;
  v14 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 304);
  v6 = *(*v1 + 136);
  v7 = *(*v1 + 128);
  v8 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 376) = v0;

  (*(v7 + 8))(v6, v8);
  outlined consume of PresenceUpdateMessage.Kind(v5, v4, v3, v14);
  if (v0)
  {

    v10 = v2[45];

    return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v10, 0);
  }

  else
  {

    v2[30] = v2[33];
    v11 = swift_task_alloc();
    v2[31] = v11;
    *v11 = v9;
    v11[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
    v12 = v2[22];

    return MEMORY[0x2822003E8](v2 + 12, 0, 0, v12);
  }
}

{

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), 0, 0);
}

{
  v1 = v0[47];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[47];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_272D1B000, v3, v4, "Failed to send message to new participants in personal device connection, error: %@", v7, 0xCu);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v8, -1, -1);
    MEMORY[0x2743D7F00](v7, -1, -1);
  }

  else
  {
  }

  v0[30] = v0[33];
  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:);
  v12 = v0[22];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v12);
}

uint64_t closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:)(uint64_t a1)
{
  v2 = v1[12];
  v1[32] = v2;
  if (!v2)
  {
    (*(v1[23] + 8))(v1[24], v1[22]);
    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {
    (*(v1[23] + 8))(v1[24], v1[22]);

LABEL_5:

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_272D1B000, v3, v4, "Did finish observering active participant changes in personal device connection", v5, 2u);
      MEMORY[0x2743D7F00](v5, -1, -1);
    }

    v6 = v1[1];

    return v6();
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_272D1B000, v8, v9, "Active participants did change in personal device connection", v10, 2u);
    MEMORY[0x2743D7F00](v10, -1, -1);
  }

  v11 = v1[13];

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makePersonalDeviceConnectionSubscriptionTask(with:), v11, 0);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:), 0, 0);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *&v1[OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore];
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:);
  v7 = v0[2];
  v8 = v0[3];

  return specialized ParticipantPresenceCoordinator.ConnectionManagerStore.addSharedConnection(forShare:createIfNeededUsing:)(v8, v3, v7, v8);
}

{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v4 = *v1;
  *(v4 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:), 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

{
  v26 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.tabGroup);
  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[5];
  if (v8)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 136315394;
    v14 = [v10 recordID];
    v15 = [v14 zoneID];

    v16 = [v15 zoneName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v25);

    *(v11 + 4) = v20;
    *(v11 + 12) = 2112;
    v21 = v9;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v22;
    *v12 = v22;
    _os_log_impl(&dword_272D1B000, v6, v7, "Failed to start shared activity for share: %s with error %@", v11, 0x16u);
    outlined destroy of TaskPriority?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2743D7F00](v13, -1, -1);
    MEMORY[0x2743D7F00](v11, -1, -1);
  }

  else
  {
  }

  v23 = v0[1];

  return v23();
}

uint64_t closure #1 in ParticipantPresenceCoordinator.shareDidUpdate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return ParticipantPresenceCoordinator._updateActivityForShare(_:)(a5);
}

uint64_t ParticipantPresenceCoordinator._updateActivityForShare(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator._updateActivityForShare(_:), 0, 0);
}

{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = ParticipantPresenceCoordinator._updateActivityForShare(_:);
  }

  else
  {
    v4 = ParticipantPresenceCoordinator._updateActivityForShare(_:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t ParticipantPresenceCoordinator._updateActivityForShare(_:)()
{
  v1 = [*(v0 + 16) recordID];
  v2 = [v1 zoneID];

  v3 = [v2 safari_tabGroupRootRecordName];
  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 32) = v4;
    *(v0 + 40) = v6;
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = ParticipantPresenceCoordinator._updateActivityForShare(_:);
    v8 = *(v0 + 16);

    return ParticipantPresenceCoordinator.ConnectionManagerStore.updateSharedConnection(with:)(v8);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

{
  if (v0[7])
  {
    v1 = *(v0[3] + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
    v0[9] = v1;

    return MEMORY[0x2822009F8](ParticipantPresenceCoordinator._updateActivityForShare(_:), v1, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

{
  v1 = ParticipantPresenceStore.replace(share:with:in:)(*(v0 + 56), *(v0 + 16), *(v0 + 32), *(v0 + 40));
  v3 = v2;
  v5 = v4;
  v7 = v6;

  *(v0 + 80) = v1;
  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = v7;

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator._updateActivityForShare(_:), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 112) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator._updateActivityForShare(_:), v2, v1);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);

  specialized ParticipantPresenceCoordinator._notifyStoreUpdates(_:)(v2, v1);

  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator._updateActivityForShare(_:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ParticipantPresenceCoordinator.beginCollaborationForShare(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, char *, uint64_t, void *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v14 = v4;
  v15 = a1;
  a4(0, 0, v11, a3, v13);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:), 0, 0);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *&v1[OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore];
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:);
  v7 = v0[3];

  return specialized ParticipantPresenceCoordinator.ConnectionManagerStore.removeSharedConnection(forShare:cleanUpIfNeeedUsing:)(v7, v3, v7);
}

void closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:)()
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v4 + 8);

    v5();
  }
}

uint64_t @objc ParticipantPresenceCoordinator.beginCollaborationForShare(_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void, char *, uint64_t, void *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a3;
  v16 = a3;
  v17 = a1;
  a6(0, 0, v13, a5, v15);
}

void *closure #1 in ParticipantPresenceCoordinator._startActivityForShare(_:tabGroupIdentifier:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  return specialized CKShareGroupSessionProvider.init(id:activity:share:)(v3, v4, v3, v4, a2);
}

uint64_t ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v27 - v10;
  v12 = [a2 recordID];
  v13 = [v12 zoneID];

  v14 = [v13 safari_tabGroupRootRecordName];
  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = type metadata accessor for TaskPriority();
    v19 = *(*(v18 - 8) + 56);
    v19(v11, 1, 1, v18);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v15;
    v20[5] = v17;
    v20[6] = a1;
    v20[7] = a3;
    v20[8] = v4;

    v21 = v4;
    v22 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v20);
    v19(v11, 1, 1, v18);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v15;
    v23[5] = v17;
    v23[6] = a1;
    v23[7] = v21;
    v23[8] = a3;

    v24 = v21;
    v25 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTyyts5NeverOGGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_272D66CB0;
    *(result + 32) = v22;
    *(result + 40) = v25;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  v9 = type metadata accessor for Participant();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  v10 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtSgMR);
  v8[29] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMd, &_sScS8IteratorVy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0H16SessionMessengerC0G7ContextVt_GMR);
  v8[30] = v11;
  v8[31] = *(v11 - 8);
  v8[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

uint64_t closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)()
{
  v14 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[33] = __swift_project_value_buffer(v1, static Logger.tabGroup);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[18];
    v4 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v13);
    _os_log_impl(&dword_272D1B000, v2, v3, "Will begin receiving messages in shared connection for tab group %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMd, &_sScSy17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtGMR);
  AsyncStream.makeAsyncIterator()();
  v8 = OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore;
  v0[34] = OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore;
  v0[35] = v8;
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v10 = v0[29];
  v11 = v0[30];

  return MEMORY[0x2822003E8](v10, 0, 0, v11);
}

{

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{
  v28 = v0;
  v1 = *(v0 + 232);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMd, &_s17WebBookmarksSwift21PresenceUpdateMessageV_15GroupActivities0G16SessionMessengerC0F7ContextVtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  v7 = v1[1];
  v6 = v1[2];
  v8 = *v1;
  *(v0 + 64) = *(v1 + 6);
  *(v0 + 32) = v7;
  *(v0 + 48) = v6;
  *(v0 + 16) = v8;
  (*(v4 + 32))(v3, v1 + *(v2 + 48), v5);
  if (static Task<>.isCancelled.getter())
  {
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 208);
    outlined destroy of PresenceUpdateMessage(v0 + 16);
    (*(v10 + 8))(v9, v11);
LABEL_4:
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = *(v0 + 144);
      v14 = *(v0 + 152);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136446210;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v27);
      _os_log_impl(&dword_272D1B000, v12, v13, "Did finish receiving messages in shared connection for tab group %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x2743D7F00](v17, -1, -1);
      MEMORY[0x2743D7F00](v16, -1, -1);
    }

    v18 = *(v0 + 8);

    return v18();
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136446210;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, &v27);
    _os_log_impl(&dword_272D1B000, v20, v21, "Did receive message in shared connection for tab group %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x2743D7F00](v25, -1, -1);
    MEMORY[0x2743D7F00](v24, -1, -1);
  }

  v26 = *(v0 + 168);
  GroupSessionMessenger.MessageContext.source.getter();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v26, 0);
}

{
  v1 = v0[21];
  v2 = Participant.handle.getter();
  v4 = v3;
  v5 = *(v1 + 112);
  if (*(v5 + 16))
  {
    v6 = v2;

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v4);
    v9 = v8;

    v10 = v0[25];
    v11 = v0[23];
    v12 = (v0[24] + 8);
    if (v9)
    {
      v13 = *(*(v5 + 56) + 8 * v7);
      v0[37] = v13;
      v14 = *v12;
      v15 = v13;
      v14(v10, v11);

      v16 = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    }

    else
    {
      outlined destroy of PresenceUpdateMessage((v0 + 2));

      (*v12)(v10, v11);
      v16 = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    }
  }

  else
  {
    v18 = v0[24];
    v17 = v0[25];
    v19 = v0[23];

    outlined destroy of PresenceUpdateMessage((v0 + 2));

    (*(v18 + 8))(v17, v19);
    v16 = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  }

  return MEMORY[0x2822009F8](v16, 0, 0);
}

{
  v1 = v0[37];
  v2 = *(v0[22] + v0[34]);
  v0[38] = v2;
  if (v1)
  {
    v3 = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  }

  else
  {
    v3 = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

{
  *(v0 + 312) = ParticipantPresenceStore.handleSharedPresenceUpdateMessage(_:from:)((v0 + 16), *(v0 + 296));
  *(v0 + 320) = v1;
  *(v0 + 328) = v2;
  *(v0 + 336) = v3;
  outlined destroy of PresenceUpdateMessage(v0 + 16);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 344) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v2, v1);
}

{
  v1 = *(v0 + 336);
  v2 = *(v0 + 328);

  specialized ParticipantPresenceCoordinator._notifyStoreUpdates(_:)(v2, v1);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{

  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

{
  (*(v0[27] + 8))(v0[28], v0[26]);
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v2 = v0[29];
  v3 = v0[30];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

{
  v0[16] = ParticipantPresenceStore.handleCurrentUserPresenceUpdateMessage(_:in:)((v0 + 2), v0[18], v0[19]);
  v0[17] = v1;
  v0[44] = v1;

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{
  if (v0[44])
  {
    v1 = v0[35];
    v2 = v0[22];
    v0[45] = v0[16];
    v3 = *(v2 + v1);
    v0[46] = v3;

    return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v3, 0);
  }

  else
  {
    outlined destroy of PresenceUpdateMessage((v0 + 2));
    (*(v0[27] + 8))(v0[28], v0[26]);
    v4 = swift_task_alloc();
    v0[36] = v4;
    *v4 = v0;
    v4[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v5 = v0[29];
    v6 = v0[30];

    return MEMORY[0x2822003E8](v5, 0, 0, v6);
  }
}

{
  v0[47] = ParticipantPresenceCoordinator.ConnectionManagerStore.sharedConnectionManager(forTabGroup:)(v0[45], v0[44]);

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{
  if (*(v0 + 376))
  {
    v1 = *(v0 + 64);
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 104) = *(v0 + 48);
    *(v0 + 120) = v1;
    v2 = swift_task_alloc();
    *(v0 + 384) = v2;
    *v2 = v0;
    v2[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);

    return specialized CollaborationConnectionManager.sendPresenceUpdateMessage(_:)(v0 + 72);
  }

  else
  {
    outlined destroy of PresenceUpdateMessage(v0 + 16);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    v4 = swift_task_alloc();
    *(v0 + 288) = v4;
    *v4 = v0;
    v4[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);

    return MEMORY[0x2822003E8](v5, 0, 0, v6);
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{
  outlined destroy of PresenceUpdateMessage((v0 + 2));

  (*(v0[27] + 8))(v0[28], v0[26]);
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = closure #1 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v2 = v0[29];
  v3 = v0[30];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a4;
  v9 = type metadata accessor for Participants();
  v8[27] = v9;
  v8[28] = *(v9 - 8);
  v8[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v8[30] = swift_task_alloc();
  v10 = type metadata accessor for Participant();
  v8[31] = v10;
  v8[32] = *(v10 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVyShy15GroupActivities11ParticipantVG_GMd, &_sScS8IteratorVyShy15GroupActivities11ParticipantVG_GMR);
  v8[35] = v11;
  v8[36] = *(v11 - 8);
  v8[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

uint64_t closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)()
{
  v11 = v0;
  if (one-time initialization token for tabGroup != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[38] = __swift_project_value_buffer(v1, static Logger.tabGroup);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[22];
    v4 = v0[23];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v10);
    _os_log_impl(&dword_272D1B000, v2, v3, "Will begin observing active participant changes in shared connection for tab group %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2743D7F00](v7, -1, -1);
    MEMORY[0x2743D7F00](v6, -1, -1);
  }

  v8 = v0[24];

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v8, 0);
}

{
  *(v0 + 312) = specialized CollaborationConnectionManager.participantUpdates()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMd, &_s17WebBookmarksSwift30CollaborationConnectionManagerC13WeakContainer33_FDA7675CD52635FF68DA1B94E45788C7LLVyAA07CKShareD8ActivityVAA0P20GroupSessionProviderCyAHGAA21PresenceUpdateMessageV_AA18AsyncBufferedQueueCyShy0R10Activities11ParticipantVGGGMR, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{
  v1 = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSyShy15GroupActivities11ParticipantVGGMd, &_sScSyShy15GroupActivities11ParticipantVGGMR);
  AsyncStream.makeAsyncIterator()();
  v2 = OBJC_IVAR____WBParticipantPresenceCoordinator_connectionManagerStore;
  *(v0 + 320) = *(*v1 + 160);
  *(v0 + 328) = v2;
  *(v0 + 336) = OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore;
  swift_beginAccess();
  v3 = MEMORY[0x277D84FA0];
  *(v0 + 560) = *MEMORY[0x277CCB268];
  *(v0 + 344) = v3;
  *(v0 + 352) = v3;
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *v4 = v0;
  v4[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v5 = *(v0 + 280);

  return MEMORY[0x2822003E8](v0 + 160, 0, 0, v5);
}

{

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{
  outlined init with copy of TaskPriority?(v0[24] + v0[40], v0[30], &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[46];
  if (v4 == 1)
  {
    outlined destroy of TaskPriority?(v3, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    v6 = v0[46];
  }

  else
  {
    v7 = v0[34];
    (*(v2 + 32))(v7, v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMd, &_ss23_ContiguousArrayStorageCy15GroupActivities11ParticipantVGMR);
    v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_272D66CD0;
    (*(v2 + 16))(v9 + v8, v7, v1);
    v6 = specialized _NativeSet.subtracting<A>(_:)(v9, v5);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v2 + 8))(v7, v1);
  }

  v0[47] = v6;
  v10 = *(v0[25] + v0[41]);
  v0[48] = v10;
  v0[49] = *(v6 + 16);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v10, 0);
}

{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = ParticipantPresenceCoordinator.ConnectionManagerStore.tabGroupIdentifiersToSharedConnections.modify(v0 + 72);
  v5 = specialized Dictionary.subscript.modify((v0 + 104), v2, v1);
  if (*(v4 + 8))
  {
    *(v4 + 40) = *(v0 + 392);
  }

  (v5)(v0 + 104, 0);
  (v3)(v0 + 72, 0);
  v6 = *(v0 + 208);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v6, 0);
}

{
  v1 = v0[47];
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;

  v10 = 0;
  v29 = MEMORY[0x277D84F90];
  v30 = v1;
  while (v5)
  {
LABEL_10:
    v12 = v0[26];
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    (*(v0[32] + 16))(v0[33], *(v1 + 48) + *(v0[32] + 72) * (v13 | (v10 << 6)), v0[31]);
    v14 = Participant.handle.getter();
    v16 = v15;
    v17 = *(v12 + 112);
    if (*(v17 + 16) && (v18 = v14, , v19 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v16), v21 = v20, , (v21 & 1) != 0))
    {
      v31 = v0[33];
      v22 = v0[31];
      v23 = *(*(v17 + 56) + 8 * v19);
      v24 = *(v0[32] + 8);
      v25 = v23;
      v24(v31, v22);
      v1 = v30;

      if (v23)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
          v29 = isUniquelyReferenced_nonNull_native;
        }

        v27 = *(v29 + 16);
        v26 = *(v29 + 24);
        if (v27 >= v26 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v29);
          v29 = isUniquelyReferenced_nonNull_native;
        }

        *(v29 + 16) = v27 + 1;
        *(v29 + 8 * v27 + 32) = v23;
      }
    }

    else
    {

      isUniquelyReferenced_nonNull_native = (*(v0[32] + 8))(v0[33], v0[31]);
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v8, v9);
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  v0[50] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17WebBookmarksSwift20ParticipantHandleMapC0E4KindO_SayAHGTt0g5Tf4g_n(v29);

  isUniquelyReferenced_nonNull_native = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v8 = 0;
  v9 = 0;

  return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, v8, v9);
}

{
  v1 = v0[47];
  v2 = v0[44];
  if (*(v2 + 16) <= *(v1 + 16) >> 3)
  {
    v27 = v0[47];
    specialized Set._subtract<A>(_:)(v2);
    v3 = v27;
  }

  else
  {
    v3 = specialized _NativeSet.subtracting<A>(_:)(v2, v1);
  }

  v0[51] = v3;
  if (!*(v3 + 16))
  {

    v6 = v0[50];
    v7 = v0[43];
    if (*(v6 + 16) <= *(v7 + 16) >> 3)
    {
      v28 = v0[43];

      specialized Set._subtract<A>(_:)(v6);
      v8 = v28;
      if (*(v28 + 16))
      {
LABEL_8:
        v9 = *(v0[25] + v0[42]);
        v0[63] = v9;
        v10 = MEMORY[0x277D84F90];
        v0[21] = MEMORY[0x277D84F90];
        v11 = -1;
        v12 = -1 << *(v8 + 32);
        if (-v12 < 64)
        {
          v11 = ~(-1 << -v12);
        }

        v13 = v11 & *(v8 + 56);
        v14 = (63 - v12) >> 6;

        v19 = 0;
        if (!v13)
        {
          goto LABEL_13;
        }

        do
        {
LABEL_11:
          while (1)
          {
            v20 = __clz(__rbit64(v13));
            v13 &= v13 - 1;
            v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * v20)));
            if (v21)
            {
              break;
            }

            if (!v13)
            {
              goto LABEL_13;
            }
          }

          v23 = v21;
          MEMORY[0x2743D7260]();
          if (*((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v15 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v10 = v0[21];
        }

        while (v13);
LABEL_13:
        while (1)
        {
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v22 >= v14)
          {

            v0[64] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo18CKShareParticipantC_SayAEGTt0g5Tf4g_n(v10);

            v5 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
            v4 = v9;
            goto LABEL_22;
          }

          v13 = *(v8 + 56 + 8 * v22);
          ++v19;
          if (v13)
          {
            v19 = v22;
            goto LABEL_11;
          }
        }

        __break(1u);
        return MEMORY[0x2822003E8](v15, v16, v17, v18);
      }
    }

    else
    {

      v8 = specialized _NativeSet.subtracting<A>(_:)(v6, v7);
      if (*(v8 + 16))
      {
        goto LABEL_8;
      }
    }

    v24 = v0[47];
    v0[43] = v0[50];
    v0[44] = v24;
    v25 = swift_task_alloc();
    v0[45] = v25;
    *v25 = v0;
    v25[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v18 = v0[35];
    v15 = (v0 + 20);
    v16 = 0;
    v17 = 0;

    return MEMORY[0x2822003E8](v15, v16, v17, v18);
  }

  v4 = *(v0[25] + v0[42]);
  v0[52] = v4;
  v5 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
LABEL_22:

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[52];
  v2 = v0[24];
  v3 = v1[18];
  v0[53] = v3;
  v4 = v1[19];
  v0[54] = v4;
  v5 = v1[20];
  v0[55] = v5;
  v6 = v1[21];
  v0[56] = v6;
  v0[57] = v1[22];
  v0[58] = v1[23];
  v0[59] = v1[24];
  outlined copy of PresenceUpdateMessage.Kind(v3, v4, v5, v6);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v2, 0);
}

{
  v1 = *(*(v0 + 192) + 168);
  *(v0 + 480) = v1;
  if (v1)
  {
    v2 = *(v0 + 472);
    v3 = *(v0 + 440);
    *(v0 + 16) = *(v0 + 424);
    *(v0 + 32) = v3;
    *(v0 + 48) = *(v0 + 456);
    *(v0 + 64) = v2;

    v4 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v5 = v1;
  }

  else
  {
    v7 = *(v0 + 440);
    v6 = *(v0 + 448);
    v9 = *(v0 + 424);
    v8 = *(v0 + 432);

    outlined consume of PresenceUpdateMessage.Kind(v9, v8, v7, v6);

    v4 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = *(v0 + 224);
  **(v0 + 232) = *(v0 + 408);
  (*(v1 + 104))();

  v2 = swift_task_alloc();
  *(v0 + 488) = v2;
  updated = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  v4 = lazy protocol witness table accessor for type PresenceUpdateMessage and conformance PresenceUpdateMessage();
  *v2 = v0;
  v2[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v5 = *(v0 + 232);

  return MEMORY[0x28211FC98](v0 + 16, v5, &type metadata for PresenceUpdateMessage, updated, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v5 = *(*v1 + 216);
  *(*v1 + 496) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[60];
    v7 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  }

  else
  {
    v9 = v2[55];
    v8 = v2[56];
    v11 = v2[53];
    v10 = v2[54];

    outlined consume of PresenceUpdateMessage.Kind(v11, v10, v9, v8);

    v7 = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v1 = v0[50];
  v2 = v0[43];
  if (*(v1 + 16) > *(v2 + 16) >> 3)
  {

    v3 = specialized _NativeSet.subtracting<A>(_:)(v1, v2);
    if (*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_20:

    v19 = v0[47];
    v0[43] = v0[50];
    v0[44] = v19;
    v20 = swift_task_alloc();
    v0[45] = v20;
    *v20 = v0;
    v20[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v13 = v0[35];
    v10 = (v0 + 20);
    v11 = 0;
    v12 = 0;

    return MEMORY[0x2822003E8](v10, v11, v12, v13);
  }

  v22 = v0[43];

  specialized Set._subtract<A>(_:)(v1);
  v3 = v22;
  if (!*(v22 + 16))
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = *(v0[25] + v0[42]);
  v0[63] = v4;
  v5 = MEMORY[0x277D84F90];
  v0[21] = MEMORY[0x277D84F90];
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;

  v14 = 0;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * v15)));
      if (v16)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v18 = v16;
    MEMORY[0x2743D7260]();
    if (*((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v10 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5 = v0[21];
  }

  while (v8);
  while (1)
  {
LABEL_8:
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return MEMORY[0x2822003E8](v10, v11, v12, v13);
    }

    if (v17 >= v9)
    {
      break;
    }

    v8 = *(v3 + 56 + 8 * v17);
    ++v14;
    if (v8)
    {
      v14 = v17;
      goto LABEL_6;
    }
  }

  v0[64] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo18CKShareParticipantC_SayAEGTt0g5Tf4g_n(v5);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v4, 0);
}

{
  v1 = *(v0 + 192);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v1, 0);
}

{
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[53];
  v3 = v0[54];

  outlined consume of PresenceUpdateMessage.Kind(v4, v3, v2, v1);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{
  v36 = v0;
  v1 = v0[62];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[62];
  if (v5)
  {
    v8 = v0[22];
    v7 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v35);
    *(v9 + 12) = 2112;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_272D1B000, v3, v4, "Failed to send message to new participants in shared connection for tab group %{public}s, error: %@", v9, 0x16u);
    outlined destroy of TaskPriority?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2743D7F00](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2743D7F00](v11, -1, -1);
    MEMORY[0x2743D7F00](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[50];
  v15 = v0[43];
  if (*(v14 + 16) > *(v15 + 16) >> 3)
  {

    v16 = specialized _NativeSet.subtracting<A>(_:)(v14, v15);
    if (*(v16 + 16))
    {
      goto LABEL_6;
    }

LABEL_23:

    v32 = v0[47];
    v0[43] = v0[50];
    v0[44] = v32;
    v33 = swift_task_alloc();
    v0[45] = v33;
    *v33 = v0;
    v33[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
    v26 = v0[35];
    v23 = (v0 + 20);
    v24 = 0;
    v25 = 0;

    return MEMORY[0x2822003E8](v23, v24, v25, v26);
  }

  v35 = v0[43];

  specialized Set._subtract<A>(_:)(v14);
  v16 = v35;
  if (!v35[2])
  {
    goto LABEL_23;
  }

LABEL_6:
  v17 = *(v0[25] + v0[42]);
  v0[63] = v17;
  v18 = MEMORY[0x277D84F90];
  v0[21] = MEMORY[0x277D84F90];
  v19 = -1;
  v20 = -1 << *(v16 + 32);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v16 + 56);
  v22 = (63 - v20) >> 6;

  v27 = 0;
  if (!v21)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_9:
    while (1)
    {
      v28 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v29 = *(*(v16 + 48) + ((v27 << 9) | (8 * v28)));
      if (v29)
      {
        break;
      }

      if (!v21)
      {
        goto LABEL_11;
      }
    }

    v31 = v29;
    MEMORY[0x2743D7260]();
    if (*((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v23 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v18 = v0[21];
  }

  while (v21);
  while (1)
  {
LABEL_11:
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return MEMORY[0x2822003E8](v23, v24, v25, v26);
    }

    if (v30 >= v22)
    {
      break;
    }

    v21 = *(v16 + 56 + 8 * v30);
    ++v27;
    if (v21)
    {
      v27 = v30;
      goto LABEL_9;
    }
  }

  v0[64] = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo18CKShareParticipantC_SayAEGTt0g5Tf4g_n(v18);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v17, 0);
}

{
  v1 = ParticipantPresenceStore.participants(_:didLeaveTabGroup:)(*(v0 + 512), *(v0 + 176), *(v0 + 184));
  v3 = v2;
  v5 = v4;
  v7 = v6;

  *(v0 + 520) = v1;
  *(v0 + 528) = v3;
  *(v0 + 536) = v5;
  *(v0 + 544) = v7;

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 552) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v2, v1);
}

{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);

  specialized ParticipantPresenceCoordinator._notifyStoreUpdates(_:)(v2, v1);

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), 0, 0);
}

{

  v1 = v0[47];
  v0[43] = v0[50];
  v0[44] = v1;
  v2 = swift_task_alloc();
  v0[45] = v2;
  *v2 = v0;
  v2[1] = closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:);
  v3 = v0[35];

  return MEMORY[0x2822003E8](v0 + 20, 0, 0, v3);
}

uint64_t closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:)(uint64_t a1)
{
  v13 = v1;
  v2 = v1[20];
  v1[46] = v2;
  if (!v2)
  {
    (*(v1[36] + 8))(v1[37], v1[35]);
    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {
    (*(v1[36] + 8))(v1[37], v1[35]);

LABEL_5:

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v1[22];
      v5 = v1[23];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v12);
      _os_log_impl(&dword_272D1B000, v3, v4, "Did finish observing active participant changes in shared connection for tab group %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2743D7F00](v8, -1, -1);
      MEMORY[0x2743D7F00](v7, -1, -1);
    }

    v9 = v1[1];

    return v9();
  }

  v11 = v1[24];

  return MEMORY[0x2822009F8](closure #2 in ParticipantPresenceCoordinator._makeSharedConnectionSubscriptionTask(with:share:participantHandleMap:), v11, 0);
}

Swift::Void __swiftcall ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:)(Swift::String_optional toTab, Swift::String_optional inTabGroup, Swift::String withDeviceIdentifier)
{
  object = withDeviceIdentifier._object;
  countAndFlagsBits = withDeviceIdentifier._countAndFlagsBits;
  v6 = inTabGroup.value._object;
  v7 = inTabGroup.value._countAndFlagsBits;
  v8 = toTab.value._object;
  v9 = toTab.value._countAndFlagsBits;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v17 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v9;
  v15[5] = v8;
  v15[6] = v7;
  v15[7] = v6;
  v15[8] = v3;
  v15[9] = countAndFlagsBits;
  v15[10] = object;

  v16 = v3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in ParticipantPresenceCoordinator.moveCurrentParticipant(toTab:inTabGroup:withDeviceIdentifier:), v15);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:), 0, 0);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:), v1, 0);
}

{
  ParticipantPresenceStore.removeTabGroup(_:)(v0[3], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t ParticipantPresenceCoordinator.removeTabGroup(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v14 = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, a4, v13);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.removeTab(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.removeTab(_:), 0, 0);
}

uint64_t closure #1 in ParticipantPresenceCoordinator.removeTab(_:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](closure #1 in ParticipantPresenceCoordinator.removeTab(_:), v1, 0);
}

{
  ParticipantPresenceStore.removeTab(_:)(v0[3], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t @objc ParticipantPresenceCoordinator.removeTabGroup(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = v11;
  v15[6] = v13;
  v16 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v15);
}

uint64_t ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:), 0, 0);
}

uint64_t ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:)()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:), v1, 0);
}

{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = v0[5];
  v4 = v0[6];

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    v9 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = (*(v2 + 56) + 56 * v5);
  v9 = *v7;
  v8 = v7[1];
  v11 = v7[2];
  v10 = v7[3];
  outlined copy of PresenceUpdateMessage.Kind(*v7, v8, v11, v10);

  if (v8)
  {

    outlined consume of PresenceUpdateMessage.Kind(v9, v8, v11, v10);
  }

  else
  {
    outlined consume of PresenceUpdateMessage.Kind(v9, 0, v11, v10);

    v9 = 0;
  }

LABEL_7:
  v12 = v0[1];

  return v12(v9, v8);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:), 0, 0);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.tabGroupIdentifierForParticipant(_:), v1, 0);
}

{
  countAndFlagsBits = v0[1]._countAndFlagsBits;
  v2 = ParticipantPresenceStore.tabGroupIdentifierForParticipant(_:)(v0[2]);

  if (v2.value._object)
  {
    v3 = MEMORY[0x2743D7200](v2.value._countAndFlagsBits, v2.value._object);
  }

  else
  {
    v3 = 0;
  }

  object = v0[1]._object;
  (object)[2](object, v3);

  _Block_release(object);
  v5 = v0->_object;

  return v5();
}

uint64_t ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:), 0, 0);
}

uint64_t ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:)()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:), v1, 0);
}

{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v3 = v0[5];
    v4 = v0[6];

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
    if (v6)
    {
      v7 = (*(v2 + 56) + 56 * v5);
      v9 = *v7;
      v8 = v7[1];
      v11 = v7[2];
      v10 = v7[3];
      outlined copy of PresenceUpdateMessage.Kind(*v7, v8, v11, v10);

      if (v8)
      {

        outlined consume of PresenceUpdateMessage.Kind(v9, v8, v11, v10);

        goto LABEL_9;
      }

      outlined consume of PresenceUpdateMessage.Kind(v9, 0, v11, v10);
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_9:
  v12 = v0[1];

  return v12(v11, v10);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:), 0, 0);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.tabIdentifierForParticipant(_:), v1, 0);
}

{
  countAndFlagsBits = v0[1]._countAndFlagsBits;
  v2 = ParticipantPresenceStore.tabIdentifierForParticipant(_:)(v0[2]);

  if (v2.value._object)
  {
    v3 = MEMORY[0x2743D7200](v2.value._countAndFlagsBits, v2.value._object);
  }

  else
  {
    v3 = 0;
  }

  object = v0[1]._object;
  (object)[2](object, v3);

  _Block_release(object);
  v5 = v0->_object;

  return v5();
}

uint64_t ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:), 0, 0);
}

uint64_t ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:), v1, 0);
}

{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = v0[5];
  v4 = v0[6];

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    v8 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v7 = (*(v2 + 56) + 56 * v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  outlined copy of PresenceUpdateMessage.Kind(*v7, v9, v10, v11);

  if (v9)
  {

    outlined consume of PresenceUpdateMessage.Kind(v8, v9, v10, v11);

    goto LABEL_8;
  }

  outlined consume of PresenceUpdateMessage.Kind(v8, 0, v10, v11);

  v8 = 0;
LABEL_7:
  v10 = 0;
  v11 = 0;
LABEL_8:
  v12 = v0[1];

  return v12(v8, v9, v10, v11);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = @objc closure #1 in ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:);

  return ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)(v5, v7);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.currentLocationIdentifiersForParticipant(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(*v4 + 16);
  v11 = *v4;

  if (a2)
  {
    v12 = MEMORY[0x2743D7200](a1, a2);
    if (a4)
    {
LABEL_3:
      v13 = MEMORY[0x2743D7200](a3, a4);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v14 = *(v9 + 24);
  (v14)[2](v14, v12, v13);

  _Block_release(v14);

  v15 = *(v11 + 8);

  return v15();
}

uint64_t ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:), 0, 0);
}

uint64_t ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:)()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:), v1, 0);
}

{
  v1 = ParticipantPresenceStore.activeParticipantsInTabGroup(_:)(v0[2], v0[3]);
  v2 = v0[1];

  return v2(v1);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:)(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:), 0, 0);
}

uint64_t @objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](@objc closure #1 in ParticipantPresenceCoordinator.activeParticipantsInTabGroup(_:), v1, 0);
}

{
  v1 = v0[3];
  v2 = v0[2];
  ParticipantPresenceStore.activeParticipantsInTabGroup(_:)(v0[4], v0[5]);

  type metadata accessor for CKShareParticipant();
  lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CKShareParticipant and conformance NSObject, type metadata accessor for CKShareParticipant, MEMORY[0x277D85378]);
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = v0[1];

  return v4();
}

uint64_t ParticipantPresenceCoordinator.activeParticipantsInTab(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.activeParticipantsInTab(_:), 0, 0);
}

uint64_t ParticipantPresenceCoordinator.activeParticipantsInTab(_:)()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____WBParticipantPresenceCoordinator_participantPresenceStore);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](ParticipantPresenceCoordinator.activeParticipantsInTab(_:), v1, 0);
}

{
  v1 = ParticipantPresenceStore.activeParticipantsInTab(_:)(v0[2], v0[3]);
  v2 = v0[1];

  return v2(v1);
}

id ParticipantPresenceCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ParticipantPresenceCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized CKShareGroupSessionProvider.init(id:activity:share:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for PresenceSessionInfo();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = type metadata accessor for GroupSessionProviderState();
  MEMORY[0x28223BE20](v14, v15);
  (*(v17 + 104))(&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CCB1A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  swift_allocObject();
  v5[4] = CurrentValueSubject.init(_:)();
  static PresenceSessionInfo.default.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  swift_allocObject();
  v5[5] = CurrentValueSubject.init(_:)();
  v5[2] = a1;
  v5[3] = a2;
  v5[7] = a3;
  v5[8] = a4;
  v5[14] = a5;
  v18 = a5;
  *&v39 = CKShare.members.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  swift_allocObject();
  v5[6] = CurrentValueSubject.init(_:)();
  v19 = [v18 currentUserParticipant];
  if (v19 && (v20 = v19, v21 = CKShareParticipant.handle.getter(), v20, v21))
  {
    v22 = [v21 normalizedValue];
    if (!v22)
    {
      v22 = [v21 value];
    }

    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *(&v40 + 1) = type metadata accessor for AddressableMember();
    v41 = lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type AddressableMember and conformance AddressableMember, MEMORY[0x277CCB290], MEMORY[0x277CCB288]);
    __swift_allocate_boxed_opaque_existential_1(&v39);
    AddressableMember.init(handle:)();

    v24 = v40;
    *(v6 + 9) = v39;
    *(v6 + 11) = v24;
    v6[13] = v41;
  }

  else
  {
    if (one-time initialization token for tabGroup != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.tabGroup);
    v26 = v18;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v39 = v30;
      *v29 = 136315138;
      v31 = [v26 recordID];
      v32 = [v31 ckShortDescription];

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v39);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_272D1B000, v27, v28, "Share %s does not have a currentUserParticipant", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x2743D7F00](v30, -1, -1);
      MEMORY[0x2743D7F00](v29, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderC6ErrorsOyAA0D21CollaborationActivityV_GMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderC6ErrorsOyAA0D21CollaborationActivityV_GMR);
    lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type CKShareGroupSessionProvider<CKShareCollaborationActivity>.Errors and conformance CKShareGroupSessionProvider<A>.Errors, &_s17WebBookmarksSwift27CKShareGroupSessionProviderC6ErrorsOyAA0D21CollaborationActivityV_GMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderC6ErrorsOyAA0D21CollaborationActivityV_GMR, &protocol conformance descriptor for CKShareGroupSessionProvider<A>.Errors);
    swift_allocError();
    swift_willThrow();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMd, &_s17WebBookmarksSwift27CKShareGroupSessionProviderCyAA0D21CollaborationActivityVGMR);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t specialized GroupSession.JoinState.join(resuming:)(uint64_t a1)
{
  v29 = a1;
  v2 = v1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x28223BE20](v27, v3);
  v28 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (v23 - v12);
  outlined init with copy of TaskPriority?(v2, v23 - v12, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    outlined destroy of TaskPriority?(v2, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD34PersonalDeviceCoordinationActivityV_GMR);
    v23[2] = v10;
    v16 = *v13;
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v24 = *(v6 + 16);
    v25 = v6 + 16;
    v26 = v2;
    v24(v9, v29, v5);
    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v16;
    v20 = v5;
    (*(v6 + 32))(v19 + v18, v9, v5);
    aBlock[4] = partial apply for specialized closure #1 in GroupSession.JoinState.join(resuming:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_472;
    v23[1] = _Block_copy(aBlock);
    aBlock[7] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v15 = DispatchWorkItem.init(flags:block:)();

    swift_beginAccess();
    *(v17 + 16) = v15;

    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMd, &_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMR) + 48);
    v22 = v26;
    *v26 = v15;
    v24(&v22[v21], v29, v20);
    swift_storeEnumTagMultiPayload();
    swift_retain_n();

    return v15;
  }

  if (result == 2)
  {
    v15 = type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    return v15;
  }

  __break(1u);
  return result;
}

{
  v29 = a1;
  v2 = v1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  MEMORY[0x28223BE20](v27, v3);
  v28 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (v23 - v12);
  outlined init with copy of TaskPriority?(v2, v23 - v12, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    outlined destroy of TaskPriority?(v2, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMd, &_s15GroupActivities0A7SessionC17WebBookmarksSwiftE9JoinState33_9E63992A5E84F75B6BAC05F37743AB10LLOyAD28CKShareCollaborationActivityV_GMR);
    v23[2] = v10;
    v16 = *v13;
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v24 = *(v6 + 16);
    v25 = v6 + 16;
    v26 = v2;
    v24(v9, v29, v5);
    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v16;
    v20 = v5;
    (*(v6 + 32))(v19 + v18, v9, v5);
    aBlock[4] = partial apply for specialized closure #1 in GroupSession.JoinState.join(resuming:);
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_332;
    v23[1] = _Block_copy(aBlock);
    aBlock[7] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for DispatchWorkItem();
    swift_allocObject();
    v15 = DispatchWorkItem.init(flags:block:)();

    swift_beginAccess();
    *(v17 + 16) = v15;

    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMd, &_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMR) + 48);
    v22 = v26;
    *v26 = v15;
    v24(&v22[v21], v29, v20);
    swift_storeEnumTagMultiPayload();
    swift_retain_n();

    return v15;
  }

  if (result == 2)
  {
    v15 = type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    return v15;
  }

  __break(1u);
  return result;
}

void specialized closure #1 in GroupSession.JoinState.join(resuming:)(uint64_t a1)
{
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = dispatch thunk of DispatchWorkItem.isCancelled.getter();

  if (v2)
  {
    return;
  }

  GroupSession.join()();
  swift_beginAccess();
  if (!*(a1 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v3 = dispatch thunk of DispatchWorkItem.isCancelled.getter();

  if (v3)
  {
    GroupSession.leave()();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t specialized closure #1 in GroupSession.join(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](specialized closure #1 in GroupSession.join(on:), 0, 0);
}

{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](specialized closure #1 in GroupSession.join(on:), 0, 0);
}

uint64_t specialized closure #1 in GroupSession.join(on:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in GroupSession.join(on:);
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x3A6E6F286E696F6ALL, 0xE900000000000029, partial apply for specialized closure #1 in closure #1 in GroupSession.join(on:), v1, v4);
}

{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized closure #1 in GroupSession.join(on:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in GroupSession.join(on:);
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x3A6E6F286E696F6ALL, 0xE900000000000029, partial apply for specialized closure #1 in closure #1 in GroupSession.join(on:), v1, v4);
}

{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized closure #1 in GroupSession.join(on:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #1 in closure #1 in GroupSession.join(on:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v3));
  partial apply for specialized closure #1 in closure #1 in closure #1 in GroupSession.join(on:)(&v5);
  os_unfair_lock_unlock((a2 + v3));

  OS_dispatch_queue.async(execute:)();
}

{
  v3 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v3));
  partial apply for specialized closure #1 in closure #1 in closure #1 in GroupSession.join(on:)(&v5);
  os_unfair_lock_unlock((a2 + v3));

  OS_dispatch_queue.async(execute:)();
}

void specialized closure #2 in GroupSession.join(on:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(*a1 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v7));
  specialized closure #1 in closure #2 in GroupSession.join(on:)(a1 + v6, a2, a3);

  os_unfair_lock_unlock((a1 + v7));
}

uint64_t specialized closure #1 in closure #2 in GroupSession.join(on:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v18 - v13;
  outlined init with take of CollaborationConnectionManager<CKShareCollaborationActivity, CKShareGroupSessionProvider<CKShareCollaborationActivity>, PresenceUpdateMessage>.WeakContainer<AsyncBufferedQueue<Set<Participant>>>(a1, v9, a2, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMd, &_s8Dispatch0A8WorkItemC_ScCyyts5Error_pGtMR);
    (*(v11 + 32))(v14, &v9[*(v15 + 48)], v10);
    dispatch thunk of DispatchWorkItem.cancel()();
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    v16 = swift_allocError();
    CancellationError.init()();
    v18[1] = v16;
    CheckedContinuation.resume(throwing:)();

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    outlined destroy of TaskPriority?(v9, a2, a3);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t specialized closure #1 in GroupSession.leave(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25[1] = a4;
  v30 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v12 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v25 - v19;
  (*(v17 + 16))(v25 - v19, a1, v16);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  (*(v17 + 32))(v22 + v21, v20, v16);
  aBlock[4] = v26;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v27;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type CKShareGroupSessionProvider<CKShareCollaborationActivity> and conformance CKShareGroupSessionProvider<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x2743D74B0](0, v15, v11, v23);
  _Block_release(v23);
  (*(v29 + 8))(v11, v8);
  (*(v12 + 8))(v15, v28);
}

uint64_t specialized closure #1 in closure #1 in GroupSession.leave(on:)()
{
  GroupSession.leave()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  outlined init with copy of TaskPriority?(a3, v24 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

    return v22;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
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

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17WebBookmarksSwift20ParticipantHandleMapC0G4KindOGMd, &_ss23_ContiguousArrayStorageCy17WebBookmarksSwift20ParticipantHandleMapC0G4KindOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMR);
  v31 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 48;
        v21 = (*(v1 + 56) + v16);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v27 = v21[4];
        v26 = v21[5];
        v28 = (*(v3 + 48) + v17);
        *v28 = v20;
        v28[1] = v19;
        v29 = (*(v3 + 56) + v16);
        *v29 = v22;
        v29[1] = v23;
        v29[2] = v24;
        v29[3] = v25;
        v29[4] = v27;
        v29[5] = v26;

        v30 = v23;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v31 = v3;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySo18CKShareParticipantCGGMd, &_ss18_DictionaryStorageCySSShySo18CKShareParticipantCGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  v29 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 56;
        v21 = *(v1 + 56) + v16;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = *(v21 + 40);
        v26 = *(v21 + 48);
        v27 = (*(v3 + 48) + v17);
        v30 = *(v21 + 24);
        *v27 = v20;
        v27[1] = v19;
        v28 = *(v3 + 56) + v16;
        *v28 = v22;
        *(v28 + 8) = v23;
        *(v28 + 16) = v24;
        *(v28 + 24) = v30;
        *(v28 + 40) = v25;
        *(v28 + 48) = v26;

        outlined copy of PresenceUpdateMessage.Kind(v22, v23, v24, v30);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v3;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMd, &_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v23 = *v21;
        v22 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v23;
        v25[1] = v22;

        result = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo18CKShareParticipantCGMd, &_ss18_DictionaryStorageCySSSo18CKShareParticipantCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift30ParticipantPresenceCoordinatorC22ConnectionManagerStoreC06SharedI0VGMR);
  v46 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v2;
    v44 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v45 = result;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v48 = (v12 - 1) & v12;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v51 = *v23;
      v25 = (*(v5 + 56) + 48 * v22);
      v26 = v25[1];
      v49 = *v25;
      v27 = v25[2];
      v28 = v25[3];
      v29 = v25[4];
      v47 = v25[5];
      if ((v46 & 1) == 0)
      {

        v30 = v26;
      }

      v50 = v26;
      v31 = v29;
      v32 = v28;
      v33 = v27;
      v34 = v24;
      v7 = v45;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v35 = -1 << *(v45 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v16 = v50;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v16 = v50;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v45 + 48) + 16 * v15);
      *v17 = v51;
      v17[1] = v34;
      v18 = (*(v45 + 56) + 48 * v15);
      v12 = v48;
      *v18 = v49;
      v18[1] = v16;
      v18[2] = v33;
      v18[3] = v32;
      v18[4] = v31;
      v18[5] = v47;
      ++*(v45 + 16);
      v5 = v44;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_33;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMd, &_ss18_DictionaryStorageCySSSo7CKShareC5share_Si5counttGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v39 = *(v26 + 8);
      if ((v38 & 1) == 0)
      {

        v28 = v27;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v27;
      v18[1] = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo18CKShareParticipantCGMd, &_ss18_DictionaryStorageCySSSo18CKShareParticipantCGMR);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySo18CKShareParticipantCGGMd, &_ss18_DictionaryStorageCySSShySo18CKShareParticipantCGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17WebBookmarksSwift21PresenceUpdateMessageVGMd, &_ss18_DictionaryStorageCySS17WebBookmarksSwift21PresenceUpdateMessageVGMR);
  v44 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    v43 = result;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v46 = (v12 - 1) & v12;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = v24[1];
      v49 = *v24;
      v26 = *(v5 + 56) + 56 * v23;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v48 = *(v26 + 24);
      v30 = *(v26 + 48);
      v45 = *(v26 + 40);
      if ((v44 & 1) == 0)
      {

        outlined copy of PresenceUpdateMessage.Kind(v27, v28, v29, v48);
      }

      v47 = v29;
      v31 = v28;
      v32 = v27;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v7 = v43;
      v33 = -1 << *(v43 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v47;
        v17 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v47;
      v17 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v43 + 48) + 16 * v15);
      *v18 = v49;
      v18[1] = v25;
      v19 = *(v43 + 56) + 56 * v15;
      *v19 = v32;
      *(v19 + 8) = v31;
      *(v19 + 16) = v16;
      *(v19 + 24) = v48;
      v12 = v46;
      *(v19 + 40) = v45;
      *(v19 + 48) = v17;
      ++*(v43 + 16);
      v5 = v42;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v6[2] = a4[2];
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
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

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 48 * v11;
    v29 = *(v22 + 8);
    v23 = a1[1];
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = a1[2];

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 48 * v11);
  v26 = a1[1];
  *v25 = *a1;
  v25[1] = v26;
  v25[2] = a1[2];
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.beginDeviceCoordination()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.endDeviceCoordination()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.beginCollaborationForShare(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.shareDidUpdate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.shareDidUpdate(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.endCollaborationForShare(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.removeTabGroup(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in ParticipantPresenceCoordinator.removeTab(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return closure #1 in ParticipantPresenceCoordinator.removeTab(_:)(a1, v4, v5, v6, v7, v8);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 56 * v11;

    return outlined assign with take of PresenceUpdateMessage(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 56 * v11;
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[2];
  *(v25 + 48) = *(a1 + 6);
  *(v25 + 16) = v27;
  *(v25 + 32) = v28;
  *v25 = v26;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v71 - v11);
  v13 = type metadata accessor for Participant();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v91 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = (&v71 - v19);
  MEMORY[0x28223BE20](v18, v21);
  v86 = (&v71 - v23);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v72 = v12;
  v74 = v9;
  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = -1 << *(a1 + 32);
  v85 = ~v26;
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v93 = (v27 & v24);
  v78 = (63 - v26) >> 6;
  v92 = v22 + 16;
  v83 = (v22 + 48);
  v84 = (v22 + 56);
  v82 = (v22 + 32);
  v88 = (a2 + 56);
  v73 = v22;
  v94 = (v22 + 8);

  v29 = 0;
  v75 = a1;
  for (i = a1 + 56; ; v25 = i)
  {
    v30 = v93;
    v31 = v29;
    if (v93)
    {
LABEL_14:
      v2 = (v30 - 1) & v30;
      v35 = v72;
      (*(v73 + 16))(v72, *(a1 + 48) + *(v73 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
      v36 = 0;
      v33 = v31;
    }

    else
    {
      v32 = v78 <= (v29 + 1) ? v29 + 1 : v78;
      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_58;
        }

        if (v31 >= v78)
        {
          break;
        }

        v30 = *(v25 + 8 * v31);
        ++v34;
        if (v30)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v36 = 1;
      v35 = v72;
    }

    v80 = *v84;
    v80(v35, v36, 1, v13);
    v95 = a1;
    v96 = v25;
    v97 = v85;
    v98 = v33;
    v99 = v2;
    v79 = *v83;
    if (v79(v35, 1, v13) == 1)
    {
      outlined destroy of TaskPriority?(v35, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
      v65 = a1;
      goto LABEL_53;
    }

    v77 = *v82;
    v77(v86, v35, v13);
    v76 = lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
    v37 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v38 = -1 << *(a2 + 32);
    v29 = v37 & ~v38;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v88[v29 >> 6]) != 0)
    {
      break;
    }

    (*v94)(v86, v13);
LABEL_22:
    v29 = v33;
    v93 = v2;
  }

  v71 = v94 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v87 = ~v38;
  v39 = *(v73 + 72);
  v89 = *(v73 + 16);
  v90 = v39;
  while (1)
  {
    v89(v20, *(a2 + 48) + v90 * v29, v13);
    v40 = lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v93 = *v94;
    v93(v20, v13);
    if (v41)
    {
      break;
    }

    v29 = (v29 + 1) & v87;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v88[v29 >> 6]) == 0)
    {
      a1 = v75;
      v93(v86, v13);
      goto LABEL_22;
    }
  }

  v87 = v40;
  v42 = (v93)(v86, v13);
  v44 = *(a2 + 32);
  v71 = ((1 << v44) + 63) >> 6;
  v28 = 8 * v71;
  a1 = v75;
  if ((v44 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v72 = &v71;
    MEMORY[0x28223BE20](v42, v43);
    v46 = &v71 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v46, v88, v45);
    v47 = *&v46[8 * v31] & ~v25;
    v48 = *(a2 + 16);
    v86 = v46;
    *&v46[8 * v31] = v47;
    v49 = v48 - 1;
    v29 = v74;
    v50 = i;
    v51 = v78;
LABEL_26:
    v73 = v49;
    while (v2)
    {
      v52 = v33;
LABEL_38:
      v55 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v89(v29, *(a1 + 48) + (v55 | (v52 << 6)) * v90, v13);
      v56 = 0;
LABEL_39:
      v80(v29, v56, 1, v13);
      v95 = a1;
      v96 = v50;
      v97 = v85;
      v98 = v33;
      v99 = v2;
      if (v79(v29, 1, v13) == 1)
      {
        outlined destroy of TaskPriority?(v29, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
        a2 = specialized _NativeSet.extractSubset(using:count:)(v86, v71, v73, a2);
        goto LABEL_52;
      }

      v77(v91, v29, v13);
      v57 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v58 = a2;
      v59 = -1 << *(a2 + 32);
      v60 = v57 & ~v59;
      v31 = v60 >> 6;
      v25 = 1 << v60;
      if (((1 << v60) & v88[v60 >> 6]) != 0)
      {
        v89(v20, *(v58 + 48) + v60 * v90, v13);
        v61 = dispatch thunk of static Equatable.== infix(_:_:)();
        v93(v20, v13);
        if ((v61 & 1) == 0)
        {
          v62 = ~v59;
          do
          {
            v60 = (v60 + 1) & v62;
            v31 = v60 >> 6;
            v25 = 1 << v60;
            if (((1 << v60) & v88[v60 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v89(v20, *(v58 + 48) + v60 * v90, v13);
            v63 = dispatch thunk of static Equatable.== infix(_:_:)();
            v93(v20, v13);
          }

          while ((v63 & 1) == 0);
        }

        v93(v91, v13);
        v64 = v86[v31];
        v86[v31] = v64 & ~v25;
        a2 = v58;
        a1 = v75;
        v29 = v74;
        v50 = i;
        v51 = v78;
        if ((v64 & v25) != 0)
        {
          v49 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v93(v91, v13);
        a2 = v58;
        a1 = v75;
        v29 = v74;
        v50 = i;
        v51 = v78;
      }
    }

    if (v51 <= (v33 + 1))
    {
      v53 = v33 + 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v52 >= v51)
      {
        v2 = 0;
        v56 = 1;
        v33 = v54;
        goto LABEL_39;
      }

      v2 = *(v50 + 8 * v52);
      ++v33;
      if (v2)
      {
        v33 = v52;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v67 = v28;

    v86 = a2;
    v68 = v67;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v69 = v86;

      a2 = v69;
      continue;
    }

    break;
  }

  v70 = swift_slowAlloc();
  memcpy(v70, v88, v68);
  a2 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v70, v71, v86, v29, &v95);

  MEMORY[0x2743D7F00](v70, -1, -1);
LABEL_52:
  v65 = v95;
LABEL_53:
  outlined consume of Set<Participant>.Iterator._Variant(v65);
  return a2;
}

{
  v66[2] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Participant();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v60 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v52 - v11;
  MEMORY[0x28223BE20](v10, v13);
  i = v52 - v14;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66[0] = a1;
  v15 = *(a1 + 16);

  v54 = v15;
  if (!v15)
  {
    goto LABEL_30;
  }

  v16 = 0;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = *(v17 + 64);
  v56 = a1;
  v57 = a1 + ((v19 + 32) & ~v19);
  v63 = *(v17 + 56);
  v64 = v18;
  v61 = (a2 + 56);
  v62 = a2;
  v65 = v17;
  v20 = (v17 - 8);
  v53 = ((v17 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v58 = v16 + 1;
    v66[1] = v16 + 1;
    v64(i, v57 + v63 * v16, v4);
    v55 = lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = -1 << *(a2 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & v61[v23 >> 6]) != 0)
    {
      break;
    }

    v28 = *v20;
LABEL_10:
    v28(i, v4);
    v16 = v58;
    if (v58 == v54)
    {
      goto LABEL_30;
    }
  }

  v26 = ~v22;
  while (1)
  {
    v64(v12, *(v62 + 48) + v23 * v63, v4);
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    v28 = *v20;
    (*v20)(v12, v4);
    if (v27)
    {
      break;
    }

    v23 = (v23 + 1) & v26;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & v61[v23 >> 6]) == 0)
    {
      a2 = v62;
      goto LABEL_10;
    }
  }

  v29 = (v28)(i, v4);
  v31 = v62;
  v32 = *(v62 + 32);
  v52[0] = ((1 << v32) + 63) >> 6;
  v33 = 8 * v52[0];
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v52[1] = v52;
    MEMORY[0x28223BE20](v29, v30);
    v35 = v52 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v35, v61, v34);
    v36 = *(v31 + 16);
    *&v35[8 * v24] &= ~v25;
    v53 = v35;
    v54 = (v36 - 1);
    v37 = *(v56 + 16);
    v38 = v58;
    for (i = v37; ; v37 = i)
    {
      if (v38 == v37)
      {
        a2 = specialized _NativeSet.extractSubset(using:count:)(v53, v52[0], v54, v31);
        goto LABEL_30;
      }

      if (v38 >= *(v56 + 16))
      {
        break;
      }

      v58 = v38;
      v64(v60, v57 + v38 * v63, v4);
      v40 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v41 = -1 << *(v31 + 32);
      v23 = v40 & ~v41;
      v25 = v23 >> 6;
      v24 = 1 << v23;
      if (((1 << v23) & v61[v23 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v64(v12, *(v62 + 48) + v23 * v63, v4);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28(v12, v4);
      if ((v42 & 1) == 0)
      {
        v43 = ~v41;
        while (1)
        {
          v23 = (v23 + 1) & v43;
          v25 = v23 >> 6;
          v24 = 1 << v23;
          if (((1 << v23) & v61[v23 >> 6]) == 0)
          {
            break;
          }

          v64(v12, *(v62 + 48) + v23 * v63, v4);
          v44 = dispatch thunk of static Equatable.== infix(_:_:)();
          v28(v12, v4);
          if (v44)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v28(v60, v4);
        v31 = v62;
LABEL_16:
        v39 = v58;
        goto LABEL_17;
      }

LABEL_25:
      v28(v60, v4);
      v45 = v53[v25];
      v53[v25] = v45 & ~v24;
      v31 = v62;
      if ((v45 & v24) == 0)
      {
        goto LABEL_16;
      }

      v46 = v54 - 1;
      v39 = v58;
      if (__OFSUB__(v54, 1))
      {
        goto LABEL_33;
      }

      --v54;
      if (!v46)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_30;
      }

LABEL_17:
      v38 = v39 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v48 = v33;

    v49 = v48;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v50 = v62;

      v31 = v50;
      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v61, v49);
  a2 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v51, v52[0], v62, v23, v66);

  MEMORY[0x2743D7F00](v51, -1, -1);
LABEL_30:

  return a2;
}

Swift::Int specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v3 = a2;
  v116 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v98 = 0;
  v5 = a1 + 56;
  v4 = *(a1 + 56);
  v6 = -1 << *(a1 + 32);
  v104 = ~v6;
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (63 - v6) >> 6;
  v109 = (a2 + 56);

  v12 = 0;
  v105 = v3;
  v103 = v10;
  v102 = v5;
  v101 = v9;
  while (1)
  {
    if (v8)
    {
      goto LABEL_13;
    }

    v13 = v12;
    do
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_119;
      }

      if (v14 >= v9)
      {
LABEL_116:
        outlined consume of Set<Participant>.Iterator._Variant(v10);
        return v3;
      }

      v8 = *(v5 + 8 * v14);
      ++v13;
    }

    while (!v8);
    v12 = v14;
LABEL_13:
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = *(*(v10 + 48) + ((v12 << 9) | (8 * v15)));
    v111 = v10;
    v112 = v5;
    v113 = v104;
    v114 = v12;
    v115 = v8;
    Hasher.init(_seed:)();
    v106 = v12;
    v107 = v16;
    if (v16)
    {
      v17 = v16;
      if ([v17 acceptanceStatus] == 2 && (v18 = objc_msgSend(v17, sel_userIdentity), v19 = objc_msgSend(v18, sel_userRecordID), v18, v19))
      {
        v20 = [v19 recordName];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }
    }

    else
    {
      String.hash(into:)();
    }

    v21 = Hasher._finalize()();
    v23 = -1 << *(v3 + 32);
    v9 = v21 & ~v23;
    v2 = v9 >> 6;
    v5 = 1 << v9;
    if (((1 << v9) & v109[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v10 = v103;
    v5 = v102;
    v9 = v101;
    v12 = v106;
  }

  v108 = ~v23;
  while (1)
  {
    v24 = *(*(v3 + 48) + 8 * v9);
    if (v24)
    {
      v25 = v24;
      if ([v25 acceptanceStatus] != 2 || (v26 = objc_msgSend(v25, sel_userIdentity), v27 = objc_msgSend(v26, sel_userRecordID), v26, !v27))
      {

LABEL_29:
        goto LABEL_22;
      }

      v28 = [v27 recordName];

      v29 = v107;
      if (!v107)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v29 = v107;
      if (!v107)
      {
        goto LABEL_56;
      }
    }

    v30 = v29;
    if ([v30 acceptanceStatus] != 2 || (v31 = objc_msgSend(v30, sel_userIdentity), v32 = objc_msgSend(v31, sel_userRecordID), v31, !v32))
    {

      goto LABEL_22;
    }

    v33 = [v32 recordName];

    if (!v24)
    {
      goto LABEL_22;
    }

    if ([v24 acceptanceStatus] == 2 && (v34 = objc_msgSend(v24, sel_userIdentity), v35 = objc_msgSend(v34, sel_userRecordID), v34, v35))
    {
      v36 = [v35 recordName];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    if ([v30 acceptanceStatus] == 2)
    {
      v40 = [v30 userIdentity];
      v41 = [v40 userRecordID];

      if (v41)
      {
        v100 = v37;
        v42 = [v41 recordName];

        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v44;

        v37 = v100;
        if (!v39)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v43 = 0;
        if (!v39)
        {
LABEL_41:

          v3 = v105;
          if (!v41)
          {
            goto LABEL_55;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      v43 = 0;
      v41 = 0;
      if (!v39)
      {
        goto LABEL_41;
      }
    }

    if (!v41)
    {

      v3 = v105;
      goto LABEL_22;
    }

    if (v37 == v43 && v39 == v41)
    {
      break;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v105;
    if (v45)
    {
      goto LABEL_55;
    }

LABEL_22:
    v9 = (v9 + 1) & v108;
    v2 = v9 >> 6;
    v5 = 1 << v9;
    if ((v109[v9 >> 6] & (1 << v9)) == 0)
    {
      goto LABEL_6;
    }
  }

  v30 = v24;
  v3 = v105;
LABEL_55:

LABEL_56:
  v46 = *(v3 + 32);
  v96[0] = ((1 << v46) + 63) >> 6;
  v11 = 8 * v96[0];
  if ((v46 & 0x3Fu) > 0xD)
  {
    goto LABEL_120;
  }

  while (2)
  {
    v96[1] = v96;
    MEMORY[0x28223BE20](v21, v22);
    v9 = v96 - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v109, v47);
    v48 = *(v9 + 8 * v2) & ~v5;
    v49 = *(v3 + 16);
    v99 = v9;
    *(v9 + 8 * v2) = v48;
    v50 = v49 - 1;
    v51 = v103;
    v52 = v102;
    v53 = v101;
    v5 = v106;
LABEL_58:
    v97 = v50;
LABEL_60:
    while (2)
    {
      if (v8)
      {
LABEL_66:
        v56 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v57 = *(*(v51 + 48) + ((v5 << 9) | (8 * v56)));
        v111 = v51;
        v112 = v52;
        v113 = v104;
        v114 = v5;
        v115 = v8;
        Hasher.init(_seed:)();
        v108 = v57;
        v106 = v5;
        if (v57)
        {
          v58 = v57;
          if ([v58 acceptanceStatus] == 2 && (v59 = objc_msgSend(v58, sel_userIdentity), v60 = objc_msgSend(v59, sel_userRecordID), v59, v60))
          {
            v61 = [v60 recordName];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            Hasher._combine(_:)(1u);
            String.hash(into:)();
          }

          else
          {
            Hasher._combine(_:)(0);
          }
        }

        else
        {
          String.hash(into:)();
        }

        v9 = v110;
        v62 = Hasher._finalize()();
        v63 = -1 << *(v3 + 32);
        v64 = v62 & ~v63;
        v2 = v64 >> 6;
        v65 = 1 << v64;
        if (((1 << v64) & v109[v64 >> 6]) == 0)
        {
LABEL_59:

          v51 = v103;
          v52 = v102;
          v53 = v101;
          v5 = v106;
          continue;
        }

        v66 = ~v63;
        while (1)
        {
          v9 = *(*(v3 + 48) + 8 * v64);
          if (v9)
          {
            v67 = v9;
            if ([v67 acceptanceStatus] != 2 || (v68 = objc_msgSend(v67, sel_userIdentity), v69 = objc_msgSend(v68, sel_userRecordID), v68, !v69))
            {

LABEL_82:
              goto LABEL_75;
            }

            v70 = [v69 recordName];

            v71 = v108;
            if (!v108)
            {
              goto LABEL_82;
            }
          }

          else
          {
            v71 = v108;
            if (!v108)
            {
              goto LABEL_107;
            }
          }

          v72 = v71;
          if ([v72 acceptanceStatus] != 2 || (v73 = objc_msgSend(v72, sel_userIdentity), v74 = objc_msgSend(v73, sel_userRecordID), v73, !v74))
          {

            goto LABEL_75;
          }

          v75 = [v74 recordName];

          if (!v9)
          {
            goto LABEL_75;
          }

          if ([v9 acceptanceStatus] == 2 && (v76 = objc_msgSend(v9, sel_userIdentity), v77 = objc_msgSend(v76, sel_userRecordID), v76, v77))
          {
            v78 = [v77 recordName];

            v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v80 = v79;

            v81 = v80;
          }

          else
          {
            v107 = 0;
            v81 = 0;
          }

          if ([v72 acceptanceStatus] == 2)
          {
            v100 = v81;
            v82 = [v72 userIdentity];
            v83 = [v82 userRecordID];

            if (v83)
            {
              v84 = [v83 recordName];

              v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v83 = v86;
            }

            else
            {
              v85 = 0;
            }

            v81 = v100;
            if (!v100)
            {
LABEL_103:

              v3 = v105;
              if (!v83)
              {
                goto LABEL_106;
              }

              goto LABEL_75;
            }
          }

          else
          {
            v85 = 0;
            v83 = 0;
            if (!v81)
            {
              goto LABEL_103;
            }
          }

          if (v83)
          {
            if (v107 == v85 && v81 == v83)
            {

              v72 = v9;
              v3 = v105;
LABEL_106:

LABEL_107:
              v88 = v99[v2];
              v99[v2] = v88 & ~v65;
              v51 = v103;
              v52 = v102;
              v53 = v101;
              v5 = v106;
              if ((v88 & v65) != 0)
              {
                v50 = v97 - 1;
                if (__OFSUB__(v97, 1))
                {
                  __break(1u);
                }

                if (v97 == 1)
                {

                  v3 = MEMORY[0x277D84FA0];
                  goto LABEL_115;
                }

                goto LABEL_58;
              }

              goto LABEL_60;
            }

            v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v3 = v105;
            if (v87)
            {
              goto LABEL_106;
            }
          }

          else
          {

            v3 = v105;
          }

LABEL_75:
          v64 = (v64 + 1) & v66;
          v2 = v64 >> 6;
          v65 = 1 << v64;
          if ((v109[v64 >> 6] & (1 << v64)) == 0)
          {
            goto LABEL_59;
          }
        }
      }

      break;
    }

    v54 = v5;
    while (1)
    {
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v55 >= v53)
      {
        if (v53 <= v5 + 1)
        {
          v89 = v5 + 1;
        }

        else
        {
          v89 = v53;
        }

        v111 = v51;
        v112 = v52;
        v113 = v104;
        v114 = v89 - 1;
        v115 = 0;
        v3 = specialized _NativeSet.extractSubset(using:count:)(v99, v96[0], v97, v3);
        goto LABEL_115;
      }

      v8 = *(v52 + 8 * v55);
      ++v54;
      if (v8)
      {
        v5 = v55;
        goto LABEL_66;
      }
    }

LABEL_119:
    __break(1u);
LABEL_120:
    v91 = v11;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v92 = swift_slowAlloc();
  memcpy(v92, v109, v91);
  v93 = v98;
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(v92, v96[0], v3, v9, &v111);
  v95 = v94;

  if (!v93)
  {

    MEMORY[0x2743D7F00](v92, -1, -1);
    v3 = v95;
LABEL_115:
    v10 = v111;
    goto LABEL_116;
  }

  result = MEMORY[0x2743D7F00](v92, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v20 - v5;
  v7 = type metadata accessor for Participant();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7, v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = outlined destroy of TaskPriority?(v6, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      specialized Set._Variant.remove(_:)(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void specialized Set._subtract<A>(_:)(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
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
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = v11;
        v13 = specialized Set._Variant.remove(_:)(v11);
        outlined consume of ParticipantHandleMap.ParticipantKind?(v13);

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
        return;
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
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for Participant();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v26 = *a5;
        v27 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v27 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v26;
        a5[1] = v27;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          outlined destroy of TaskPriority?(v12, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
          v48 = v64;

          return specialized _NativeSet.extractSubset(using:count:)(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        result = (v25)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v25)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

{
  v38 = a2;
  v9 = type metadata accessor for Participant();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v45 = &v38 - v17;
  result = MEMORY[0x28223BE20](v16, v18);
  v51 = &v38 - v20;
  v21 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v39 = a1;
  v40 = v21 - 1;
  v22 = *a5;
  v23 = a5[1];
  v24 = *(*a5 + 16);
  if (v23 == v24)
  {
LABEL_2:

    return specialized _NativeSet.extractSubset(using:count:)(v39, v38, v40, a3);
  }

  v43 = v10 + 32;
  v44 = v10;
  v46 = a3 + 56;
  v41 = a5;
  v49 = v10 + 16;
  v50 = (v10 + 8);
  while (v23 < v24)
  {
    v26 = *(v10 + 80);
    v48 = *(v10 + 72);
    v27 = v45;
    v47 = *(v10 + 16);
    v47(v45, v22 + ((v26 + 32) & ~v26) + v48 * v23, v9);
    a5[1] = v23 + 1;
    (*(v10 + 32))(v51, v27, v9);
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
    v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = -1 << *(a3 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    v32 = 1 << v30;
    if (((1 << v30) & *(v46 + 8 * (v30 >> 6))) == 0)
    {
      v25 = *v50;
LABEL_6:
      result = (v25)(v51, v9);
      goto LABEL_7;
    }

    v42 = v50 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33 = a3;
    v34 = ~v29;
    while (1)
    {
      v47(v14, *(v33 + 48) + v30 * v48, v9);
      lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248], MEMORY[0x277CCB258]);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *v50;
      (*v50)(v14, v9);
      if (v35)
      {
        break;
      }

      v30 = (v30 + 1) & v34;
      v31 = v30 >> 6;
      v32 = 1 << v30;
      if (((1 << v30) & *(v46 + 8 * (v30 >> 6))) == 0)
      {
        a3 = v33;
        a5 = v41;
        goto LABEL_6;
      }
    }

    result = (v25)(v51, v9);
    v36 = v39[v31];
    v39[v31] = v36 & ~v32;
    if ((v36 & v32) == 0)
    {
      a3 = v33;
      a5 = v41;
LABEL_7:
      v10 = v44;
      goto LABEL_8;
    }

    v37 = v40 - 1;
    v10 = v44;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_21;
    }

    a3 = v33;
    a5 = v41;
    --v40;
    if (!v37)
    {
      return MEMORY[0x277D84FA0];
    }

LABEL_8:
    v22 = *a5;
    v23 = a5[1];
    v24 = *(*a5 + 16);
    if (v23 == v24)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v5 = a3;
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v51 = a5;
  v53 = a3 + 56;
LABEL_2:
  v48 = v7;
LABEL_4:
  while (2)
  {
    v9 = a5[3];
    v10 = a5[4];
    if (v10)
    {
      v11 = a5[3];
LABEL_10:
      v14 = *(*(*a5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
      a5[3] = v11;
      a5[4] = (v10 - 1) & v10;
      Hasher.init(_seed:)();
      v54 = v14;
      if (v14)
      {
        v15 = v14;
        if ([v15 acceptanceStatus] == 2 && (v16 = objc_msgSend(v15, sel_userIdentity), v17 = objc_msgSend(v16, sel_userRecordID), v16, v17))
        {
          v18 = [v17 recordName];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }
      }

      else
      {
        String.hash(into:)();
      }

      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v8 + 8 * (v21 >> 6))) == 0)
      {
LABEL_3:

        a5 = v51;
        continue;
      }

      v55 = ~v20;
      while (1)
      {
        v24 = *(*(v5 + 48) + 8 * v21);
        if (v24)
        {
          v25 = v24;
          if ([v25 acceptanceStatus] != 2)
          {

LABEL_33:
            goto LABEL_19;
          }

          v26 = [v25 userIdentity];
          v27 = [v26 userRecordID];

          if (!v27)
          {

            v8 = v53;
            goto LABEL_19;
          }

          v28 = [v27 recordName];

          v8 = v53;
          v29 = v54;
          if (!v54)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v29 = v54;
          if (!v54)
          {
            goto LABEL_53;
          }
        }

        v30 = v29;
        if ([v30 acceptanceStatus] != 2 || (v31 = objc_msgSend(v30, sel_userIdentity), v32 = objc_msgSend(v31, sel_userRecordID), v31, !v32))
        {

          goto LABEL_19;
        }

        v33 = [v32 recordName];

        if (!v24)
        {
          goto LABEL_19;
        }

        if ([v24 acceptanceStatus] == 2)
        {
          v34 = [v24 userIdentity];
          v35 = [v34 userRecordID];

          if (v35)
          {
            v36 = [v35 recordName];

            v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v35 = v37;
          }

          else
          {
            v52 = 0;
          }
        }

        else
        {
          v52 = 0;
          v35 = 0;
        }

        if ([v30 acceptanceStatus] == 2)
        {
          v38 = [v30 userIdentity];
          v39 = [v38 userRecordID];

          if (v39)
          {
            v50 = v35;
            v40 = v5;
            v41 = [v39 recordName];

            v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v43;

            v5 = v40;
            v35 = v50;
            if (!v50)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v42 = 0;
            if (!v35)
            {
LABEL_49:

              v8 = v53;
              if (!v39)
              {
                goto LABEL_52;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
          v42 = 0;
          v39 = 0;
          if (!v35)
          {
            goto LABEL_49;
          }
        }

        if (v39)
        {
          if (v52 == v42 && v35 == v39)
          {

            v30 = v24;
            v8 = v53;
LABEL_52:

LABEL_53:
            v45 = a1[v22];
            a1[v22] = v45 & ~v23;
            a5 = v51;
            if ((v45 & v23) != 0)
            {
              v7 = v48 - 1;
              if (__OFSUB__(v48, 1))
              {
                goto LABEL_62;
              }

              if (v48 == 1)
              {
                return;
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v8 = v53;
          if (v44)
          {
            goto LABEL_52;
          }
        }

        else
        {

          v8 = v53;
        }

LABEL_19:
        v21 = (v21 + 1) & v55;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if ((*(v8 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v12 = (a5[2] + 64) >> 6;
  v13 = a5[3];
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    if (v11 >= v12)
    {
      break;
    }

    v10 = *(a5[1] + 8 * v11);
    ++v13;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  if (v12 <= v9 + 1)
  {
    v46 = v9 + 1;
  }

  else
  {
    v46 = (a5[2] + 64) >> 6;
  }

  a5[3] = v46 - 1;
  a5[4] = 0;

  specialized _NativeSet.extractSubset(using:count:)(a1, v47, v48, v5);
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = type metadata accessor for Participant();
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    lazy protocol witness table accessor for type CKShareParticipant and conformance NSObject(&lazy protocol witness table cache variable for type Participant and conformance Participant, MEMORY[0x277CCB248], MEMORY[0x277CCB250]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMd, &_ss11_SetStorageCy17WebBookmarksSwift20ParticipantHandleMapC0F4KindOGMR);
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    if (v16)
    {
      v17 = v16;
      if ([v17 acceptanceStatus] == 2 && (v18 = objc_msgSend(v17, sel_userIdentity), v19 = objc_msgSend(v18, sel_userRecordID), v18, v4 = v30, v19))
      {
        v20 = [v19 recordName];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v30;
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }
    }

    else
    {
      String.hash(into:)();
    }

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
          goto LABEL_33;
        }
      }

      goto LABEL_37;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_33:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_38;
    }

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
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in FastSyncStateMachine.startActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](specialized closure #1 in FastSyncStateMachine.startActivity(_:), 0, 0);
}

uint64_t specialized closure #1 in FastSyncStateMachine.startActivity(_:)(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v2 = v1[5];
  v5 = (v1[3] + *v1[3]);
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = specialized closure #1 in FastSyncStateMachine.startActivity(_:);

  return v5(v2, 0);
}

uint64_t specialized closure #1 in FastSyncStateMachine.startActivity(_:)()
{

  return MEMORY[0x2822009F8](specialized closure #1 in FastSyncStateMachine.startActivity(_:), 0, 0);
}

uint64_t specialized closure #2 in FastSyncStateMachine.startActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v8 = swift_task_alloc();
  v7[6] = v8;
  *v8 = v7;
  v8[1] = specialized closure #2 in FastSyncStateMachine.startActivity(_:);

  return MEMORY[0x282200460]();
}

{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v8 = swift_task_alloc();
  v7[6] = v8;
  *v8 = v7;
  v8[1] = specialized closure #2 in FastSyncStateMachine.startActivity(_:);

  return MEMORY[0x282200460]();
}

uint64_t specialized closure #2 in FastSyncStateMachine.startActivity(_:)()
{

  return MEMORY[0x2822009F8](specialized closure #2 in FastSyncStateMachine.startActivity(_:), 0, 0);
}

{

  return MEMORY[0x2822009F8](specialized closure #1 in FastSyncStateMachine.startActivity(_:), 0, 0);
}

{

  return MEMORY[0x2822009F8](specialized closure #2 in FastSyncStateMachine.startActivity(_:), 0, 0);
}

{

  return MEMORY[0x2822009F8](specialized closure #2 in FastSyncStateMachine.startActivity(_:), 0, 0);
}

{
  **(v0 + 16) = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t specialized closure #2 in FastSyncStateMachine.startActivity(_:)(uint64_t a1)
{
  static Task<>.checkCancellation()();
  v2 = v1[5];
  v5 = (v1[3] + *v1[3]);
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = specialized closure #2 in FastSyncStateMachine.startActivity(_:);

  return v5(v2, 0);
}

{
  static Task<>.checkCancellation()();
  v2 = v1[5];
  v5 = (v1[3] + *v1[3]);
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = specialized closure #2 in FastSyncStateMachine.startActivity(_:);

  return v5(v2, 0);
}

uint64_t specialized closure #3 in FastSyncStateMachine.startActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);

  return specialized closure #3 in FastSyncStateMachine.startActivity(_:)(a4, a5, a6, a7);
}

{
  *(v7 + 16) = a1;
  v12 = swift_task_alloc();
  *(v7 + 24) = v12;
  *v12 = v7;
  v12[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);

  return specialized closure #3 in FastSyncStateMachine.startActivity(_:)(a4, a5, a6, a7);
}

uint64_t specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, v10, v11);
}

{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #1 in CollaborationConnectionManager.startActivity();

  return specialized closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, v10, v11);
}

uint64_t specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, a5, v12, v13);
}

{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, a5, v12, v13);
}

{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:)(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t specialized closure #1 in GroupSessionMessengerController._makeTasks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in GroupSessionMessengerController._makeTasks()(a1, a2, a3, a4, v10, v11);
}

{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #1 in GroupSessionMessengerController._makeTasks()(a1, a2, a3, a4, v10, v11);
}

uint64_t specialized closure #2 in GroupSessionMessengerController._makeTasks()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in GroupSessionMessengerController._makeTasks()(a1, a2, a3, a4, v10, v11);
}

{
  v10 = *a5;
  v11 = a5[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = specialized closure #3 in closure #1 in CollaborationConnectionManager.waitForGroupSessions(with:);

  return specialized closure #2 in GroupSessionMessengerController._makeTasks()(a1, a2, a3, a4, v10, v11);
}

uint64_t specialized closure #3 in FastSyncStateMachine.startActivity(_:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    **(v4 + 16) = a1;
    v8 = *(v5 + 8);

    return v8();
  }
}

{
  static Task<>.checkCancellation()();
  v2 = v1[5];
  v5 = (v1[3] + *v1[3]);
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);

  return v5(v2, 0);
}

{
  static Task<>.checkCancellation()();
  v2 = v1[5];
  v5 = (v1[3] + *v1[3]);
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = specialized closure #3 in FastSyncStateMachine.startActivity(_:);

  return v5(v2, 0);
}