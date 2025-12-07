uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  else
  {
    v4 = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "ensureReady()", 13, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v8 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return v8(v0 + 17, &async function pointer to closure #1 in RemoteConversationClient.ensureReady(), 0, v6, v3, v4);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

{
  v15 = v0;
  v1 = v0[10];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[5] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v3, v4, "Error ensuring active conversation is ready (will reset the remote conversation state, and reconnect): %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v12 = v0[7];

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v12, 0);
}

{
  v1 = *(v0 + 56);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "reset()", 7, 2);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return v7(v0 + 137, &async function pointer to closure #1 in RemoteConversationClient.reset(), 0, v5, v2, v3);
}

{
  v2 = *v1;

  v3 = *(v2 + 56);
  if (v0)
  {

    v4 = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  else
  {
    v4 = closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[7];
  v2 = v1[19];
  v0[12] = v2;
  v3 = v1[20];
  v0[13] = v3;
  v0[14] = __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v0[15] = *(v3 + 24);
  v0[16] = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xEB38000000000000;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v4, 0);
}

{
  (*(v0 + 120))(*(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

uint64_t closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)()
{
  **(v0 + 48) = 0;
  return (*(v0 + 8))();
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v2, static Logger.executor);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "ensureReady()", 13, 2);
  v3 = v1[19];
  v4 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v3);
  v8 = (*(v4 + 16) + **(v4 + 16));
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return v8(v0 + 17, &async function pointer to closure #1 in RemoteConversationClient.ensureReady(), 0, v6, v3, v4);
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  else
  {
    v4 = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

{
  v15 = v0;
  v1 = v0[10];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[5] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DC659000, v3, v4, "Error ensuring previous completed conversation is ready (will reset the remote conversation state, and reconnect): %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A2F50](v7, -1, -1);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v12 = v0[7];

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v12, 0);
}

{
  v1 = *(v0 + 56);
  Logger.debugF(file:function:)("SiriKitRuntime/RemoteConversationClient.swift", 45, 2, "reset()", 7, 2);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return v7(v0 + 137, &async function pointer to closure #1 in RemoteConversationClient.reset(), 0, v5, v2, v3);
}

{
  v2 = *v1;

  v3 = *(v2 + 56);
  if (v0)
  {

    v4 = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  else
  {
    v4 = closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[7];
  v2 = v1[19];
  v0[12] = v2;
  v3 = v1[20];
  v0[13] = v3;
  v0[14] = __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v0[15] = *(v3 + 24);
  v0[16] = (v3 + 24) & 0xFFFFFFFFFFFFLL | 0xEB38000000000000;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), v4, 0);
}

{
  (*(v0 + 120))(*(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), 0, 0);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  *v1 = v2;
  v4 = *(v0 + 8);

  return v4();
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMd, &_ss11_SetStorageCyScTySo13SABaseCommandCSgs5Error_pGGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      Task.hash(into:)();
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMd, &_ss11_SetStorageCy14SiriKitRuntime24RemoteConversationClientCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16LNSystemProtocolCGMd, &_ss11_SetStorageCySo16LNSystemProtocolCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t protocol witness for DeviceState.sessionHandOffContinuityID.getter in conformance DefaultDeviceState(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*v3 + *a3);

  return v4;
}

uint64_t AceServiceInvokerImpl._submitExecute<A>(_:)()
{
  v5 = v0;
  v1 = *(*(*(v0 + 48) + 160) + 16);
  os_unfair_lock_lock(v1 + 6);
  closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(&v4);
  os_unfair_lock_unlock(v1 + 6);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v25 = a5;
  v23 = a1;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  static TaskPriority.background.getter();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  (*(v8 + 16))(v10, a4, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = (v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = a3;
  (*(v8 + 32))(&v17[v15], v10, v7);
  v18 = &v17[v16];
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  *&v17[(v16 + 23) & 0xFFFFFFFFFFFFFFF8] = v25;
  v20 = a3;

  _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:), v17);

  return outlined destroy of ReferenceResolutionClientProtocol?(v13, &_sScPSgMd, &_sScPSgMR);
}

uint64_t sub_1DC7607AC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(a1, a2, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t partial apply for closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Date();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:), 0, 0);
}

uint64_t closure #1 in closure #1 in IntentLoggingEventSink.handleIntentStarted(intent:now:context:)()
{
  v1 = v0[2];
  v2 = *(v0[7] + 16);
  v2(v0[9], v0[3], v0[6]);
  type metadata accessor for IntentStart();
  swift_allocObject();
  v3 = v1;
  IntentStart.init(intent:timestamp:)();
  v2(v0[8], v0[3], v0[6]);
  type metadata accessor for IntentEvent();
  swift_allocObject();

  IntentEvent.init(intentId:intentStart:createdAt:)();
  if (one-time initialization token for intentStore != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for IntentEventStore();
  __swift_project_value_buffer(v5, static IntentLoggingEventSink.intentStore);
  IntentEventStore.log(event:)();

  v6 = v0[1];

  return v6();
}

uint64_t ConversationRequestProcessor.handleStartSpeechRequestMessage(_:)(void *a1)
{
  v2 = a1;
  v3 = specialized ConversationRequestProcessorTurnState.__allocating_init(startSpeechRequestMessage:)(v2);
  specialized ConversationRequestProcessor.handleStartRequestInternal(_:turnState:isTapToEdit:)(v2, v3, 0, v1, 0, 1);
}

uint64_t specialized ConversationRequestProcessorTurnState.__allocating_init(startSpeechRequestMessage:)(void *a1)
{
  v2 = type metadata accessor for InputOrigin();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RequestType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  type metadata accessor for StartSpeechRequestMessage();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20RoutingDecisionAware_pMd, &_s16SiriMessageTypes20RoutingDecisionAware_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
  }

  outlined destroy of RoutingDecisionAware?(v20);
  (*(v7 + 104))(v9, *MEMORY[0x1E69D0548], v6);
  v11 = v10;
  v12 = RequestMessageBase.requestId.getter();
  v14 = v13;

  started = StartSpeechRequestMessage.asrOnServer.getter();
  v16 = v11;
  StartRequestMessageBase.inputOrigin.getter();

  type metadata accessor for ConversationRequestProcessorTurnState(0);
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_flowPluginInfo) = 0;
  *(v17 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_outputCounter) = 0;
  *(v17 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_speechState) = xmmword_1DCA6B010;
  (*(v7 + 32))(v17 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestType, v9, v6);
  v18 = (v17 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_requestId);
  *v18 = v12;
  v18[1] = v14;
  *(v17 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_asrOnServer) = started & 1;
  (*(v3 + 32))(v17 + OBJC_IVAR____TtC14SiriKitRuntime37ConversationRequestProcessorTurnState_inputOrigin, v5, v2);
  return v17;
}

uint64_t outlined destroy of RoutingDecisionAware?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20RoutingDecisionAware_pSgMd, &_s16SiriMessageTypes20RoutingDecisionAware_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall MultiUserContextUpdater.updateServerContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - v1;
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.conversationBridge);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DC659000, v4, v5, "Applying server context through shared ContextUpdater", v6, 2u);
    MEMORY[0x1E12A2F50](v6, -1, -1);
  }

  v7 = type metadata accessor for UserID();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = MultiUserContextUpdater.contextUpdater(forUserId:)(v2);
  v9 = outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  if (v8)
  {
    (*(*v8 + 472))(v9);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DC659000, v10, v11, "Applied server context", v12, 2u);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DC659000, v13, v14, "Could not find shared contextUpdater instance", v15, 2u);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }
  }
}

Swift::Void __swiftcall ContextUpdater.updateServerContext()()
{
  v1 = v0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v41 - v2;
  v3 = type metadata accessor for UUID();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ConversationSessionKey();
  v5 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Logger.conversationBridge);

  v47 = v9;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&aBlock = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[20], v1[21], &aBlock);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[22], v1[23], &aBlock);
    _os_log_impl(&dword_1DC659000, v10, v11, "Updating server context for requestID: %s using rootRequestID: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v14 = *MEMORY[0x1E69D0800];
  v15 = v48;
  v44 = *(v5 + 104);
  v44(v7, v14, v48);
  dispatch thunk of ConversationSessionState.sharedValue(forKey:)();
  v16 = *(v5 + 8);
  v16(v7, v15);
  if (*(&v50 + 1))
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SARDNativeFlowContextUpdate, 0x1E69C7990);
    if (swift_dynamicCast())
    {
      v17 = v53;
      [v53 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        v47 = v17;
        v18 = v53;
        v19 = [v18 aceId];
        if (v19)
        {
          v20 = v19;
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
        }

        else
        {
          v34 = v41;
          UUID.init()();
          v21 = UUID.uuidString.getter();
          v23 = v35;
          (*(v42 + 8))(v34, v43);
        }

        v36 = MEMORY[0x1E12A1410](v21, v23);

        [v18 setAceId_];

        v37 = MEMORY[0x1E12A1410](v1[22], v1[23]);
        [v18 setRefId_];

        v38 = v1[17];
        v51 = closure #1 in ContextUpdater.updateServerContext();
        v52 = 0;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v50 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
        *(&v50 + 1) = &block_descriptor_1;
        v39 = _Block_copy(&aBlock);
        [v38 handleCommand:v18 completion:v39];
        _Block_release(v39);

        aBlock = 0u;
        v50 = 0u;
        v40 = v48;
        v44(v7, v14, v48);
        ContextUpdater.updateSessionState(withValue:forKey:)(&aBlock, v7);

        v16(v7, v40);
        outlined destroy of ReferenceResolutionClientProtocol?(&aBlock, &_sypSgMd, &_sypSgMR);
      }

      else
      {
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_1DC659000, v31, v32, "Could not copy NFCU. It is not safe to send it to server", v33, 2u);
          MEMORY[0x1E12A2F50](v33, -1, -1);
        }
      }

      return;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&aBlock, &_sypSgMd, &_sypSgMR);
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&aBlock = v27;
    *v26 = 136315394;
    (*(*v1 + 360))();
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &aBlock);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1[20], v1[21], &aBlock);
    _os_log_impl(&dword_1DC659000, v24, v25, "NativeFlowContextUpdate is empty when userId: %s, requestID: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v27, -1, -1);
    MEMORY[0x1E12A2F50](v26, -1, -1);
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR14SiriKitRuntime24RemoteConversationClientCSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime20LinkExpansionContextV07SessionI0C_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime20LinkExpansionContextV07SessionI0C_TG5(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime20LinkExpansionContextV07SessionI0C_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(a1, v4, v5, v6);
}

uint64_t closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a1;
  *(v4 + 56) = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ConversationService.bridge(didReceiveStartExecutionTurn:from:), a4, 0);
}

uint64_t partial apply for closure #1 in RemoteConversationService.ensureReady(reply:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in RemoteConversationService.ensureReady(reply:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in RemoteConversationService.ensureReady(reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  v6[33] = type metadata accessor for RemoteConversationService.State(0);
  v6[34] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v6[35] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in RemoteConversationService.ensureReady(reply:), v7, 0);
}

void *_sSo27AFRequestCancellationReasonVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo31LNActionTypeSpecificMetadataKeyaSYSCSY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

char *_ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFyp_Tgq5_0(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DC7624D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *_s14SiriKitRuntime21AceServiceInvokerImplC0D13SubmitOptions33_6F702868F5EE7637FC7805F00DECC893LLOwcp_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *_s14SiriKitRuntime21SerialSubmissionError33_6F702868F5EE7637FC7805F00DECC893LLVwcp_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = v3;
  v6 = v4;
  a1[1] = v4;
  return a1;
}

uint64_t sub_1DC762634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Parse();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1DC76274C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for Parse();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DC7628F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DC7629B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DC762A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for Parse();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1DC762BD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime15AmbiguityOutputOSgMd, &_s14SiriKitRuntime15AmbiguityOutputOSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for Parse();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_1DC762E30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC762E80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC762EC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC762F14(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 384);

  return v2(v3);
}

__n128 sub_1DC762F7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1DC762F88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC762FDC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 408);

  return v2(v3);
}

uint64_t sub_1DC763044@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC763090(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

uint64_t sub_1DC7630FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC763148(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 184);

  return v2(v3);
}

uint64_t sub_1DC7631A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7631F4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 208);

  return v2(v3);
}

uint64_t sub_1DC763268()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC7632C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC7632F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of CamBridgeImpl.CamState((v3 + 144), a2);
}

uint64_t sub_1DC763348@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return outlined init with copy of CamBridgeImpl.CaarState((v3 + 192), a2);
}

uint64_t sub_1DC763398@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 240);
}

uint64_t sub_1DC7633F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC763468(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow16ActionParaphraseV06actionE0_tMd, &_s11SiriKitFlow16ActionParaphraseV06actionE0_tMR);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

void *_s14SiriKitRuntime23CandidateRequestMessageOwcp_0(void *a1, void *a2)
{
  v3 = (*a2 & 0x1FFFFFFFFFFFFFFFLL);
  *a1 = *a2;
  v4 = v3;
  return a1;
}

uint64_t sub_1DC763534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DC7635F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology12SpanPropertyVSgMd, &_s12SiriOntology12SpanPropertyVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC7636A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7636F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC763750@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7637F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76384C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 392);

  return v2(v3);
}

uint64_t sub_1DC7638A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC7638E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DC763944(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1DC7639A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_rcId);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1DC763A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_hypothesisId;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v3 + v4, a2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t sub_1DC763A74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1DC763ACC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14SiriKitRuntime12Conversation_isPaused;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DC763B20@<X0>(uint64_t *a1@<X8>)
{
  result = Conversation.correctionsFlow.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC763B4C(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation____lazy_storage___correctionsFlow) = *a1;
}

uint64_t sub_1DC763B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Input();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DC763CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Input();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime0A17RequestIdentitiesVSgMd, &_s14SiriKitRuntime0A17RequestIdentitiesVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DC763DF8()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC763E50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 720))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC763EA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 744))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC763F00(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for ConversationBridge.isFirstRequestInSession;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1DC764004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 792))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC764058(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 800);

  return v2(v3);
}

uint64_t sub_1DC76424C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 864))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7642A0(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 872);

  return v2(v3);
}

uint64_t sub_1DC7642FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 888))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC764350(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 896);

  return v2(v3);
}

uint64_t sub_1DC764568@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1008))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC764610@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1032))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7646B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1056))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC764708(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 1064);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC7647B8()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC76482C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC764864()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC7648FC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ServerFallbackReason();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DC764A54()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DC764B20()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC764B58@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1DC764BF0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ConversationCanHandleResult.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC764C3C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ConversationCanHandleResult.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC764C8C@<X0>(uint64_t *a2@<X8>)
{
  result = SiriXRedirectContext.RedirectReason.UnableToHandleRequest.rewrittenUtterance.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC764CB8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ConversationCommitResultXPC.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC764D04(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ConversationCommitResultXPC.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC764D50@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ConversationFlexibleExecutionSupportXPC.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC764D9C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ConversationFlexibleExecutionSupportXPC.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC764DE4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC764E2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC764E7C()
{
  v1 = type metadata accessor for RemoteConversationTurnData(0);
  v2 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v16 = (v2 + 16) & ~v2;
  v17 = v0;
  v3 = v0 + v16;

  v4 = v1[6];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v16 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[7];
  v9 = type metadata accessor for SessionConfiguration();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[9];
  if (!v7(v3 + v11, 1, v5))
  {
    (*(v6 + 8))(v3 + v11, v5);
  }

  v12 = (v3 + v1[13]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v12, v13);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v17, ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1DC7650F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RemoteConversationTurnData(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DC76519C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RemoteConversationTurnData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC765240()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 152) & ~v2;
  v4 = *(v1 + 64);

  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  }

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1DC7653C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC765458@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7654A4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC7654FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC765548(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 208);

  return v2(v3);
}

uint64_t sub_1DC76559C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7655E8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

uint64_t sub_1DC76563C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7656D8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ConversationParaphraseResultXPC.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC765724(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ConversationParaphraseResultXPC.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC76576C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC7657C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC765810()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC765868()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC7658C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1DC765920(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(**a2 + 408);
  v5 = *(a1 + 16);
  outlined copy of ConversationRequestProcessor.State(*a1, v3, v5);
  return v4(v2, v3, v5);
}

uint64_t sub_1DC765A50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC765AF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 496))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC765BA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 520))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC765C98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC765D08()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DC765D70@<X0>(_BYTE *a1@<X8>)
{
  result = SiriXRedirectContext.RedirectReason.NoMatchingTool.searchSucceeded.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC765DD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC765E1C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

unint64_t *_s14SiriKitRuntime37ConversationRequestProcessorTurnStateC06SpeechH0Owcp_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of ConversationRequestProcessorTurnState.SpeechState(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_1DC765EB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC765F08(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_1DC766050(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DC76618C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC7661C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC766204()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DC76625C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC7662B4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void *sub_1DC76631C@<X0>(uint64_t *a1@<X8>)
{
  result = ConversationService.serialFacade.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t _s14SiriKitRuntime19ConversationServiceC5StateOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ConversationService.State(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_1DC766410()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for SessionConfiguration();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v8 + 31) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1DC76658C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC7665F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC766648()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMd, &_sScCy14SiriKitRuntime23ExecutionOverrideResultCSgs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1DC766768@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static PommesInfo.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC7667B4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static PommesInfo.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC76680C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC766844@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC766890(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);

  return v4(v2, v3);
}

uint64_t sub_1DC7669E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC766A2C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DC766AAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC766AE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1DC766BB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5InputVSgMd, &_s11SiriKitFlow5InputVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC766C60()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DC766CB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC766CF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1DC766D38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 96))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1DC766D94(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 104))(&v4);
}

void *sub_1DC766DEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1DC766E48(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 160))(&v4);
}

uint64_t sub_1DC766EA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC766F38()
{
  v1 = type metadata accessor for SiriRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for RequestContinuation(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v3 + v4 + v6;
  v8 = *(*(v5 - 8) + 64);
  swift_unknownObjectRelease();

  v9 = v0 + v3;

  v10 = v1[5];
  v11 = type metadata accessor for Input();
  v24 = *(*(v11 - 8) + 8);
  v24(v9 + v10, v11);

  v12 = (v9 + v1[8]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v12, v13);
  }

  v14 = v7 & ~v6;

  v15 = v9 + v1[12];
  v16 = type metadata accessor for SiriRequestIdentities(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v23 = v2;
    v17 = type metadata accessor for IdentifiedUser();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (!v19(v15, 1, v17))
    {
      (*(v18 + 8))(v15, v17);
    }

    v22 = v18;
    v20 = *(v16 + 20);
    if (!v19(v15 + v20, 1, v17))
    {
      (*(v22 + 8))(v15 + v20, v17);
    }

    v2 = v23;
  }

  type metadata accessor for UserInputResult(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24(v0 + v14, v11);
  }

  return MEMORY[0x1EEE6BDD0](v0, v14 + v8, v2 | v6 | 7);
}

uint64_t sub_1DC76728C()
{
  v1 = *(type metadata accessor for RequestContinuation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v17 = *(v1 + 64);
  v4 = type metadata accessor for ConversationContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v15 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMd, &_sScCy14SiriKitRuntime24ConversationCommitResultOs5Error_pGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v16 = *(v8 + 64);
  swift_unknownObjectRelease();

  type metadata accessor for UserInputResult(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for Input();
    (*(*(v10 - 8) + 8))(v0 + v3, v10);
  }

  v11 = v2 | v6 | v9;
  v12 = (v3 + v17 + v6) & ~v6;
  v13 = (v12 + v15 + v9) & ~v9;

  (*(v5 + 8))(v0 + v12, v4);
  (*(v8 + 8))(v0 + v13, v7);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v16, v11 | 7);
}

uint64_t sub_1DC7674F0()
{
  v1 = *(type metadata accessor for RequestContinuation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for ConversationContext();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  type metadata accessor for UserInputResult(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for Input();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  v10 = (v3 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v10, v5);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v8, v2 | v7 | 7);
}

uint64_t sub_1DC76768C()
{
  v1 = type metadata accessor for ConversationContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DC76780C()
{
  v1 = type metadata accessor for SiriRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v27 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for ConversationContext();
  v5 = *(v4 - 8);
  v25 = *(v5 + 80);
  v24 = *(v5 + 64);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5NeverOGMR);
  v6 = *(v26 - 8);
  v7 = *(v6 + 80);
  v23 = *(v6 + 64);
  swift_unknownObjectRelease();

  v8 = v1[5];
  v9 = type metadata accessor for Input();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = (v0 + v3 + v1[8]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v10, v11);
  }

  v12 = v0 + v3 + v1[12];
  v13 = type metadata accessor for SiriRequestIdentities(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v22 = v4;
    v14 = type metadata accessor for IdentifiedUser();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (!v16(v12, 1, v14))
    {
      (*(v15 + 8))(v12, v14);
    }

    v21 = v15;
    v17 = *(v13 + 20);
    if (!v16(v12 + v17, 1, v14))
    {
      (*(v21 + 8))(v12 + v17, v14);
    }

    v4 = v22;
    v3 = (v2 + 40) & ~v2;
  }

  v18 = (v3 + v27 + v25) & ~v25;
  v19 = (v18 + v24 + v7) & ~v7;
  (*(v5 + 8))(v0 + v18, v4);
  (*(v6 + 8))(v0 + v19, v26);

  return MEMORY[0x1EEE6BDD0](v0, v19 + v23, v2 | v25 | v7 | 7);
}

uint64_t sub_1DC767BD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_sScCy14SiriKitRuntime19RequestContinuationVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DC767CD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DC767DCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC767E1C@<X0>(uint64_t *a1@<X8>)
{
  result = ActingFlowAgent.environment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC767E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserInputResult(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1DC767F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UserInputResult(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void *_s14SiriKitRuntime12EncoreEngineC13InternalEventOwcp_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1DC768034()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76806C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC7680B8()
{
  v1 = type metadata accessor for SiriRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*(v1 - 1) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for RequestContinuation(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = v4 + v6 + 16;
  v24 = *(*(v5 - 8) + 64);
  swift_unknownObjectRelease();
  v8 = v0 + v3;

  v9 = v1[5];
  v10 = type metadata accessor for Input();
  v23 = *(*(v10 - 8) + 8);
  v23(v8 + v9, v10);

  v11 = (v8 + v1[8]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v11, v12);
  }

  v13 = v7 & ~v6;

  v14 = v8 + v1[12];
  v15 = type metadata accessor for SiriRequestIdentities(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v22 = v2;
    v16 = type metadata accessor for IdentifiedUser();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (!v18(v14, 1, v16))
    {
      (*(v17 + 8))(v14, v16);
    }

    v21 = v17;
    v19 = *(v15 + 20);
    if (!v18(v14 + v19, 1, v16))
    {
      (*(v21 + 8))(v14 + v19, v16);
    }

    v2 = v22;
  }

  type metadata accessor for UserInputResult(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23(v0 + v13, v10);
  }

  return MEMORY[0x1EEE6BDD0](v0, v13 + v24, v2 | v6 | 7);
}

uint64_t sub_1DC768424()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMd, &_ss6ResultOy14SiriKitRuntime19RequestContinuationVs5Error_pGMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for UserInputResult(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = type metadata accessor for Input();
      (*(*(v5 - 8) + 8))(v0 + v3, v5);
    }

    type metadata accessor for RequestContinuation(0);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DC768578()
{
  v1 = *(type metadata accessor for RequestContinuation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  type metadata accessor for UserInputResult(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for Input();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DC7686C4()
{
  v1 = *(type metadata accessor for EncoreEngine.ActionOutcome(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMd, &_ss6ResultOy14SiriKitRuntime018ConversationCommitA0Os5Error_pGMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();
  v9 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_11;
      }

      v11 = type metadata accessor for PluginAction();
    }

    else
    {
      v11 = type metadata accessor for FlowUnhandledReason();
    }

    (*(*(v11 - 8) + 8))(v9, v11);
  }

LABEL_11:

  if (swift_getEnumCaseMultiPayload() == 1)
  {

    goto LABEL_23;
  }

  type metadata accessor for ConversationCommitResult(0);
  v12 = swift_getEnumCaseMultiPayload();
  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_23;
      }

      v13 = type metadata accessor for FlowUnhandledReason();
      goto LABEL_22;
    }

LABEL_19:

    goto LABEL_23;
  }

  if (v12 != 2)
  {
    if (v12 != 3)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v13 = type metadata accessor for PluginAction();
LABEL_22:
  (*(*(v13 - 8) + 8))(v0 + v7, v13);
LABEL_23:

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_1DC768A5C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ExecutionContextUpdate.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC768AA8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ExecutionContextUpdate.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC768AF0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ExecutionInputInfo.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC768B3C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ExecutionInputInfo.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC768B84@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ExecutionOutput.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC768BD0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ExecutionOutput.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC768C18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 129);
  return result;
}

uint64_t sub_1DC768C60(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 129) = v2;
  return result;
}

uint64_t sub_1DC768CA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 130);
  return result;
}

uint64_t sub_1DC768CEC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 130) = v2;
  return result;
}

uint64_t sub_1DC768D30()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC768D78()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC768DB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC768E04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DC768E54()
{
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DC768EB0()
{
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC768F08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC768F64(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xE8);

  return v2(v3);
}

uint64_t sub_1DC768FC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC769060()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC769098()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC7690D8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC769120()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC769170()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1DC769234()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1DC769274@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1DC7692D0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 160))(&v4);
}

uint64_t sub_1DC769328@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC7693C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC769458@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC7694F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC769590()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMd, &_sScCySaySo22AFServiceDeviceContextCGSgs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DC769624@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC7696BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DC769728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DC769798()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow17LaunchAppBehaviorOSgMd, &_s11SiriKitFlow17LaunchAppBehaviorOSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v19 = *(v5 + 64);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v18 = *(v9 + 64);
  swift_unknownObjectRelease();
  v11 = type metadata accessor for LaunchAppBehavior();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3, 1, v11))
  {
    (*(v12 + 8))(v0 + v3, v11);
  }

  v13 = type metadata accessor for SiriKitReliabilityCodes();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v0 + v7, 1, v13))
  {
    (*(v14 + 8))(v0 + v7, v13);
  }

  v15 = (v19 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + v10 + 8) & ~v10;

  (*(v9 + 8))(v0 + v16, v8);

  return MEMORY[0x1EEE6BDD0](v0, ((((v18 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | v10 | 7);
}

uint64_t sub_1DC769A80()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC769ABC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for InputOrigin();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_27:
    v22 = *(v10 + 48);

    return v22(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for InteractionType();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_27;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_27;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_27;
  }

  v15 = type metadata accessor for ResponseMode();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_27;
  }

  v16 = type metadata accessor for MultiUserState();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a3[11];
    goto LABEL_27;
  }

  v17 = type metadata accessor for Locale();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a3[18];
    goto LABEL_27;
  }

  v18 = type metadata accessor for SiriVoiceGender();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a3[19];
    goto LABEL_27;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a3[24];
    goto LABEL_27;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  if (*(*(v20 - 8) + 84) == a2)
  {
    v9 = v20;
    v10 = *(v20 - 8);
    v11 = a3[25];
    goto LABEL_27;
  }

  v21 = type metadata accessor for Restrictions();
  if (*(*(v21 - 8) + 84) == a2)
  {
    v9 = v21;
    v10 = *(v21 - 8);
    v11 = a3[26];
    goto LABEL_27;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v24 = *(*(v23 - 8) + 48);
  v25 = a1 + a3[27];

  return v24(v25, a2, v23);
}

uint64_t sub_1DC769EEC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for InputOrigin();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_25:
    v22 = *(v10 + 56);

    return v22(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for InteractionType();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_25;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_25;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_25;
  }

  v15 = type metadata accessor for ResponseMode();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_25;
  }

  v16 = type metadata accessor for MultiUserState();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[11];
    goto LABEL_25;
  }

  v17 = type metadata accessor for Locale();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[18];
    goto LABEL_25;
  }

  v18 = type metadata accessor for SiriVoiceGender();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[19];
    goto LABEL_25;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a4[24];
    goto LABEL_25;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v9 = v20;
    v10 = *(v20 - 8);
    v11 = a4[25];
    goto LABEL_25;
  }

  v21 = type metadata accessor for Restrictions();
  if (*(*(v21 - 8) + 84) == a3)
  {
    v9 = v21;
    v10 = *(v21 - 8);
    v11 = a4[26];
    goto LABEL_25;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v24 = *(*(v23 - 8) + 56);
  v25 = v5 + a4[27];

  return v24(v25, a2, a2, v23);
}

uint64_t sub_1DC76A31C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC76A360()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC76A3A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76A3E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76A4B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76A504(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 192);

  return v2(v3);
}

uint64_t sub_1DC76A558@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76A5A4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 216);

  return v2(v3);
}

uint64_t sub_1DC76A5FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76A664@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76A6C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76A70C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_1DC76A764()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1DC76A7C8@<X0>(void *a1@<X8>)
{
  result = dispatch thunk of CodeGenListEntry.entry.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1DC76A808()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC76A858()
{
  v1 = type metadata accessor for UserID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 73) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 2, v3 | 7);
}

uint64_t sub_1DC76A938()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76A970@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76AA04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76AA9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76AB34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76AB94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 176);
  *a2 = *(v3 + 168);
  a2[1] = v4;
}

uint64_t sub_1DC76AC0C()
{
  v1 = type metadata accessor for Input();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DC76ACD8()
{
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DC76AD30()
{
  swift_unknownObjectRelease();
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC76AD88()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DC76ADEC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DC76AE94@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static RemoteConversationSpeechData.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC76AEE0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static RemoteConversationSpeechData.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC76AF70@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static ProxiedRequestContext.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC76AFBC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static ProxiedRequestContext.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC76B004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DC76B140(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DC76B294()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s14SiriKitRuntime23RemoteFlowPluginPackageC0abE00eF6BundleAadEP10bundlePathSSvgTW_0()
{
  v1 = *(*v0 + 48);

  return v1;
}

uint64_t sub_1DC76B30C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static RequestContextData.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC76B358(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static RequestContextData.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC76B3A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76B3F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 328);

  return v4(v2, v3);
}

uint64_t sub_1DC76B554@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76B5F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76B69C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76B740@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76B7E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76B838(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 520);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC76B898@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76B8EC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 544);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC76B94C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 560))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76B9A0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 568);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC76BA00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76BA54(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 592);

  return v2(v3);
}

uint64_t sub_1DC76BB50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 656))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76BBA4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 664);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC76BC04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 680))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76BC58(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 688);

  return v4(v2, v3);
}

uint64_t sub_1DC76BCC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 704))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76BD6C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 728))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76BE10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 752))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76BEB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 776))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76BF58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 800))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76BFAC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 808);

  return v2(v3);
}

uint64_t sub_1DC76C008@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 824))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76C0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 848))();
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1DC76C170@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 872))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76C214@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 896))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76C2B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 920))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76C3AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 968))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76C400(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 976);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC76C460@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 992))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76C504@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1016))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76C5F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76C644(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 296);

  return v4(v2, v3);
}

uint64_t sub_1DC76C6B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76C708(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 320);

  return v2(v3);
}

uint64_t sub_1DC76C7B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76C808(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 368);

  return v4(v2, v3);
}

uint64_t sub_1DC76C878@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 384))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76C8CC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 392);

  return v2(v3);
}

uint64_t sub_1DC76C928@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 408))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76C9CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76CA20(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 440);

  return v2(v3);
}

uint64_t sub_1DC76CA7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76CAD0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 464);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC76CB30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 480))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76CBD8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76CC7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 528))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76CE10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 624))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76CEB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 648))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76CF60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 672))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76D1E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76D234(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t sub_1DC76D288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DC76D330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76D37C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 224);

  return v4(v2, v3);
}

uint64_t sub_1DC76D3E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76D430(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 248);

  return v4(v2, v3);
}

uint64_t sub_1DC76D49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DC76D5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s2os12OSSignpostIDVSgMd, &_s2os12OSSignpostIDVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DC76D708@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76D7B0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*(**a1 + 376))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76D854@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76D8FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 424))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76D950(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 432);

  return v4(v2, v3);
}

uint64_t sub_1DC76D9C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 448))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76DA68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76DAC0@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76DB68()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t _s14SiriKitRuntime27SelfReflectionAgentDecisionO36FallbackToIntelligenceFlowCodingKeys33_829D41B8284081B1456341081EAAB713LLOs0L3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1DC76DBD8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5 + 8));

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 55) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1DC76DCD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76DD20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_1DC76DD88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76DDD4(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 232);

  return v2(v3);
}

uint64_t sub_1DC76DE28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76DE74(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 256);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1DC76DED4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76DF28(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 280);
  v4 = *a1;
  return v3(v2);
}

double sub_1DC76DF88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 296))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1DC76E000(__int128 *a1, uint64_t *a2)
{
  v2 = a1[1];
  v12[0] = *a1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v12[1] = v2;
  v12[2] = v5;
  v13 = *(a1 + 6);
  v6 = *a2;
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = a1[2];
  v11 = *(a1 + 6);
  v7 = *(*v6 + 304);
  outlined init with copy of SelfReflectionResponse(v12, v9);
  return v7(v10);
}

double sub_1DC76E0AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 320))(v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1DC76E124(__int128 *a1, uint64_t *a2)
{
  v2 = a1[1];
  v12[0] = *a1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v12[1] = v2;
  v12[2] = v5;
  v13 = *(a1 + 6);
  v6 = *a2;
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = a1[2];
  v11 = *(a1 + 6);
  v7 = *(*v6 + 328);
  outlined init with copy of SelfReflectionResponse(v12, v9);
  return v7(v10);
}

uint64_t sub_1DC76E1D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76E278()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_1DC76E2F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC76E3B0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC76E3E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC76E438@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E129C0F0]();
  *a1 = result;
  return result;
}

uint64_t sub_1DC76E4C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1464))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76E568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1488))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76E5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1496);

  return v2(v3);
}

uint64_t sub_1DC76E618@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1536))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76E6BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1560))();
  *a2 = result;
  return result;
}

uint64_t sub_1DC76E710(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 1568);

  return v2(v3);
}

uint64_t sub_1DC76E76C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC76E930()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC76E968()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DC76EAA0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC76EADC()
{
  v1 = type metadata accessor for RemoteConversationTurnData(0);
  v2 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v16 = (v2 + 16) & ~v2;
  v17 = v0;
  v3 = v0 + v16;

  v4 = v1[6];
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v16 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v1[7];
  v9 = type metadata accessor for SessionConfiguration();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v1[9];
  if (!v7(v3 + v11, 1, v5))
  {
    (*(v6 + 8))(v3 + v11, v5);
  }

  v12 = (v3 + v1[13]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    outlined consume of Data._Representation(*v12, v13);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v17, ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void *_s14SiriKitRuntime29SharedFlowPluginServiceClientC0defG10Connection33_6F80362A06170F85D9078D794F0599B3LLVwcp_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_1DC76ED88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1DC76EDF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1DC76EE68()
{
  v1 = type metadata accessor for TaskFlowConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1DC76EFE8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for SiriKitFlowActivity + 88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76F050(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for SiriKitFlowActivity + 96);

  return v4(v2, v3);
}

uint64_t sub_1DC76F0D8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for SiriKitFlowActivity + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76F140(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for SiriKitFlowActivity + 120);

  return v4(v2, v3);
}

uint64_t sub_1DC76F1C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for SiriKitFlowActivity + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76F230(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for SiriKitFlowActivity + 144);

  return v4(v2, v3);
}

uint64_t sub_1DC76F2B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for SiriKitFlowActivity + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76F320(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for SiriKitFlowActivity + 168);

  return v4(v2, v3);
}

uint64_t sub_1DC76F3A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for SiriKitFlowActivity + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76F410(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for SiriKitFlowActivity + 192);

  return v4(v2, v3);
}

uint64_t sub_1DC76F498@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for SiriKitFlowActivity + 208))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76F500(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for SiriKitFlowActivity + 216);

  return v4(v2, v3);
}

uint64_t sub_1DC76F588@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for SiriKitFlowActivity + 232))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76F658@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for SiriKitFlowActivity + 256))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DC76F730@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for SiriKitFlowActivity + 280))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76F79C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for SiriKitFlowActivity + 288);

  return v4(v2, v3);
}

uint64_t sub_1DC76F828@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for SiriKitFlowActivity + 304))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76F894(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for SiriKitFlowActivity + 312);

  return v4(v2, v3);
}

uint64_t sub_1DC76F920@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for SiriKitFlowActivity + 328))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC76F98C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + class metadata base offset for SiriKitFlowActivity + 336);

  return v4(v2, v3);
}

uint64_t sub_1DC76FA18()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1DC76FAB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void *sub_1DC76FAF8@<X0>(void *a1@<X8>)
{
  result = SiriKitRuntimeState.taskService.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC76FB24(void *a1, uint64_t a2)
{
  *(*a2 + 136) = *a1;
}

uint64_t sub_1DC76FB68@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static StartExecutionTurn.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC76FBB4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static StartExecutionTurn.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC76FBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TypeIdentifier();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DC76FCA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TypeIdentifier();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC76FD4C@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of CallStateEnvironmentProvider.callState.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC76FD78@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of CallStateEnvironmentProvider.onSpeaker.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC76FDA8@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of CallStateEnvironmentProvider.isDropInCall.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC76FDD8@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.refId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC76FE04@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.aceId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC76FE30@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.executionRequestId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC76FE5C@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.sessionHandoffContinuityID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC76FE88@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.peerName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC76FFD4@<X0>(uint64_t *a1@<X8>)
{
  result = CurrentRequest.speechPackage.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC770000@<X0>(uint64_t *a2@<X8>)
{
  result = CurrentRequest.resultCandidateId.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC77002C@<X0>(_BYTE *a1@<X8>)
{
  result = CurrentRequest.asrOnDevice.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DC77007C@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of NetworkAvailability.isAvailable.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC7700AC@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of NetworkAvailability.isExpensive.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC7700DC@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of NetworkAvailability.isConstrained.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC77010C@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of NetworkAvailability.isInAirplaneMode.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC770160@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of CurrentDevice.isTextToSpeechEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC770190@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of CurrentDevice.isLockedWithPasscode.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC7701E4@<X0>(uint64_t *a2@<X8>)
{
  result = dispatch thunk of CurrentDevice.preferencesLanguageCode.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC770234@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of CurrentDevice.isVoiceTriggerEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DC7702AC@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of CurrentDevice.deviceRegionCode.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC7702FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC77033C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RankerContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DC7703E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RankerContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC7706D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC770708()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1DC770804@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static UserSpecificInfo.supportsSecureCoding;
  return result;
}

uint64_t sub_1DC770850(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static UserSpecificInfo.supportsSecureCoding = v1;
  return result;
}

uint64_t sub_1DC770898@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result & 1;
  return result;
}

void *sub_1DC770960@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1DC7709BC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 120))(&v4);
}

void *assignWithTake for AceServiceInvokerImpl.AceSubmitOptions(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t static AceMetricsLogger.logAnalytics(command:)(void *a1)
{
  swift_getObjectType();

  return specialized static AceMetricsLogger.logAnalytics(command:)(a1);
}

uint64_t static AceMetricsLogger.logRemoteAnalytics(service:command:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  ObjectType = swift_getObjectType();

  return specialized static AceMetricsLogger.logRemoteAnalytics(service:command:)(v5, a2, v3, ObjectType, v4);
}

uint64_t default argument 1 of AppShortcutExpansionContextBuilder.init(metadataProvider:appShortcutStateProvider:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppShortcutStateProvider();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for AppShortcutStateProvider;
  *a1 = result;
  return result;
}

id default argument 0 of TrialExperimentationAssetManager.init(trialClient:)()
{
  v0 = [objc_opt_self() clientWithIdentifier_];

  return v0;
}

id default argument 6 of Conversation.init(initialFlow:taskService:pluginId:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ServerFallbackDisablingUtils();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  v3[2] = result;
  v3[3] = closure #1 in default argument 5 of ConversationService.init(conversationHandlerLocator:referenceResolutionClient:useStubCamBridge:useNoopEventSender:doWarmup:selfEmitter:serverFallbackDisablingUtils:);
  v3[4] = 0;
  a1[3] = v2;
  a1[4] = &protocol witness table for ServerFallbackDisablingUtils;
  *a1 = v3;
  return result;
}

uint64_t default argument 0 of FlowAgent.execute(timeout:)@<X0>(void *a1@<X8>)
{
  *a1 = 300;
  v2 = *MEMORY[0x1E69E7F48];
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t default argument 9 of ConversationBridge.init(name:messagePublisher:serviceHelper:conversationSessionsManaging:conversationClient:rrClient:correctionsPlatformClient:networkAvailabilityProvider:coreTelephonyServiceProvider:recentDialogTracker:featureChecker:)()
{
  type metadata accessor for RecentDialogTracker(0);
  swift_allocObject();
  return RecentDialogTracker.init(timeProvider:)(closure #1 in RecentDialogTracker.init(), 0);
}

uint64_t default argument 4 of ConversationOutputSubmitter.init(requestDispatcherServiceHelper:isMUXEnabled:muxContextMessage:messagePublisher:featureChecker:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FeatureChecker();
  v3 = swift_allocObject();
  *(v3 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v6[3] = &type metadata for IntelligenceFlowFeatureFlag;
  v6[4] = lazy protocol witness table accessor for type IntelligenceFlowFeatureFlag and conformance IntelligenceFlowFeatureFlag();
  v4 = isFeatureEnabled(_:)();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v6);
  *(v3 + 17) = v4 & 1;
  a1[3] = v2;
  a1[4] = &protocol witness table for FeatureChecker;
  *a1 = v3;
  return result;
}

id default argument 2 of SelfReflectionAgent.init(instrumentationUtil:networkAvailabilityProvider:preferences:isSystemAssistantExperienceEnabled:trialExperimentManager:curareDonator:isUndesiredResponseSuppressionEnabled:)()
{
  v0 = [objc_opt_self() sharedPreferences];

  return v0;
}

id default argument 3 of CamBridgeImpl.init(forceSupported:camProvider:caarProvider:trialExperimentManager:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() clientWithIdentifier_];
  v3 = type metadata accessor for TrialExperimentationAssetManager();
  v4 = swift_allocObject();
  result = [objc_allocWithZone(type metadata accessor for ExperimentationAnalyticsManager()) init];
  *(v4 + 16) = v2;
  *(v4 + 24) = result;
  a1[3] = v3;
  a1[4] = &protocol witness table for TrialExperimentationAssetManager;
  *a1 = v4;
  return result;
}

id default argument 0 of AppShortcutExpansionContextBuilder.init(metadataProvider:appShortcutStateProvider:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LinkMetadataProvider();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &protocol witness table for LinkMetadataProvider;
  *a1 = v3;
  return result;
}

uint64_t default argument 5 of SelfReflectionAgent.init(instrumentationUtil:networkAvailabilityProvider:preferences:isSystemAssistantExperienceEnabled:trialExperimentManager:curareDonator:isUndesiredResponseSuppressionEnabled:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t default argument 4 of Conversation.init(initialFlow:taskService:pluginId:taskObserver:jetsamTransactionTimeout:rootEnvironment:serverFallbackDisablingUtils:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static JetsamHelper.defaultTimeout);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t default argument 7 of EncoreConversation.init<A>(initialFlow:pluginId:pluginInfo:taskService:taskObserver:snippetManager:rootEnvironment:correctionsEngine:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CorrectionsUndoManager();
  v3 = swift_allocObject();
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 24) = 0u;
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();
  outlined assign with take of CorrectingFlow?(v5, v3 + 24);
  swift_endAccess();
  a1[3] = v2;
  result = lazy protocol witness table accessor for type CorrectionsUndoManager and conformance CorrectionsUndoManager(&lazy protocol witness table cache variable for type CorrectionsUndoManager and conformance CorrectionsUndoManager, type metadata accessor for CorrectionsUndoManager, &protocol conformance descriptor for CorrectionsUndoManager);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t default argument 5 of ExecutionOutput.init(command:contextUpdate:fullPrint:fullSpeak:executionRequestId:executionSource:inAppResponse:)@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t default argument 1 of HangUpRule.init(isUserOnActivePhoneCall:isActiveCallFallbackAllowed:)()
{
  v0 = type metadata accessor for SiriInCallFeatureFlag();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69CE5B8], v0, v2);
  v5 = SiriInCallFeatureFlag.isEnabled.getter();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

void default argument 0 of SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(void *a1@<X8>)
{
  v2 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v3 = [v2 Execution];
  swift_unknownObjectRelease();
  v4 = [v3 source];

  a1[3] = &type metadata for DefaultBiomeSource;
  a1[4] = &protocol witness table for DefaultBiomeSource;
  *a1 = v4;
}

uint64_t default argument 3 of static SiriKitExecutorRunUtils.makeParse(aceParse:peerInfo:endpointInfo:confirmationState:aceParameterMetadata:appSelectionState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69CFCE8];
  v3 = type metadata accessor for SiriKitConfirmationState();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t default argument 0 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = static SiriKitBiomeDonator.instance;
  a1[3] = type metadata accessor for SiriKitBiomeDonator(0);
  a1[4] = &protocol witness table for SiriKitBiomeDonator;
  *a1 = v2;
}

uint64_t default argument 1 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = static SiriKitCurareDonator.instance;
  a1[3] = type metadata accessor for SiriKitCurareDonator();
  a1[4] = &protocol witness table for SiriKitCurareDonator;
  *a1 = v2;
}

id default argument 6 of TaskLoggingService.init(biomeDonator:curareDonator:selfEmitter:tier1LinkIdSupplier:derivedIdentifierSupplier:appInformationSupplier:sensitivityManager:featureChecker:)()
{
  v0 = [objc_opt_self() shared];

  return v0;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance LNSystemProtocolIdentifier()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1E12A15C0](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LNSystemProtocolIdentifier(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LNSystemProtocolIdentifier(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance LNSystemProtocolIdentifier(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance LNSystemProtocolIdentifier(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance LNSystemProtocolIdentifier@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x1E12A1410](v3);

  *a2 = v4;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance AFCallState(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance AFCallState@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance AFCallState@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LNSystemProtocolIdentifier(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance AFCallState@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LNSystemProtocolIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CorrectionsUndoManager and conformance CorrectionsUndoManager(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier, &protocol conformance descriptor for LNSystemProtocolIdentifier);
  v3 = lazy protocol witness table accessor for type CorrectionsUndoManager and conformance CorrectionsUndoManager(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier, &protocol conformance descriptor for LNSystemProtocolIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LNSystemProtocolIdentifier@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1E12A1410](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LNActionTypeSpecificMetadataKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CorrectionsUndoManager and conformance CorrectionsUndoManager(&lazy protocol witness table cache variable for type LNActionTypeSpecificMetadataKey and conformance LNActionTypeSpecificMetadataKey, type metadata accessor for LNActionTypeSpecificMetadataKey, &protocol conformance descriptor for LNActionTypeSpecificMetadataKey);
  v3 = lazy protocol witness table accessor for type CorrectionsUndoManager and conformance CorrectionsUndoManager(&lazy protocol witness table cache variable for type LNActionTypeSpecificMetadataKey and conformance LNActionTypeSpecificMetadataKey, type metadata accessor for LNActionTypeSpecificMetadataKey, &protocol conformance descriptor for LNActionTypeSpecificMetadataKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t specialized static AceMetricsLogger.logRemoteAnalytics(service:command:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v7 = type metadata accessor for OSSignpostID();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, a3, v12);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v15 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.instrumentation);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DC659000, v17, v18, "Logging Analytics to remote device", v19, 2u);
    MEMORY[0x1E12A2F50](v19, -1, -1);
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v39 = v7;
    swift_unknownObjectRetain();
    v22 = specialized static ViewMetricsLogger.getSparseAddViews(addViews:)(v21);
  }

  else
  {
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (!v23)
    {
      goto LABEL_15;
    }

    v24 = v23;
    v39 = v7;
    swift_unknownObjectRetain();
    v22 = specialized static SayMetricsLogger.getSparseCommand(command:)(v24);
  }

  v25 = v22;
  swift_unknownObjectRelease();
  v26 = v25;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v46 = v27;
  v28 = [v26 dictionary];

  if (v28)
  {
    v45 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSMutableDictionary, 0x1E695DF90);
    *&v44 = v28;
    outlined init with take of Any(&v44, v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
    v30 = v42;
    v46 = v42;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6C46746E65696C43, 0xEE0077656956776FLL, &v44);
    outlined destroy of Any?(&v44);
    v30 = v46;
  }

  v31 = specialized static AceMetricsLogger.makeJSONFromDictionary(dictionary:)(v30);
  v33 = v32;

  v34 = [objc_allocWithZone(MEMORY[0x1E69C78C8]) init];
  v35 = MEMORY[0x1E12A1410](0x52524F454E4B53, 0xE700000000000000);
  [v34 setEventName_];

  v36 = MEMORY[0x1E12A1410](v31, v33);

  [v34 setEventValue_];

  AceServiceInvokerAsync.submitAndForget(_:)();
  v7 = v39;
LABEL_15:
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v41 + 8))(v9, v7);
  return (*(v10 + 8))(v14, a3);
}

uint64_t specialized static AceMetricsLogger.logAnalytics(command:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    specialized static ViewMetricsLogger.logAnalytics(view:)(v7);
LABEL_20:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    return (*(v3 + 8))(v5, v2);
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    specialized static SayMetricsLogger.logAnalytics(command:)(v8);
    goto LABEL_20;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    specialized static DialogMetricsLogger.logAnalytics(dialog:)(v9);
    goto LABEL_20;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(v10);
    goto LABEL_20;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(v11);
    goto LABEL_20;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.instrumentation);
  swift_unknownObjectRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v13, v14))
  {
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v15 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v24 = v23;
  *v15 = 136315138;
  v16 = [a1 encodedClassName];
  result = swift_unknownObjectRelease();
  if (v16)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v24);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1DC659000, v13, v14, "Command unsupported for Grading data logging. You need to add logging support for command: %s", v15, 0xCu);
    v22 = v23;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x1E12A2F50](v22, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
LABEL_19:

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t outlined assign with take of CorrectingFlow?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010CorrectingC0_pSgMd, &_s11SiriKitFlow010CorrectingC0_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t specialized static AceMetricsLogger.makeJSONFromDictionary(dictionary:)(uint64_t a1)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v31[0] = 0;
  v4 = [v2 dataWithJSONObject:isa options:0 error:v31];

  v5 = v31[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v31[0] = v6;
    v31[1] = v8;
    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type Data and conformance Data();
    v9 = String.init<A>(bytes:encoding:)();
    if (v10)
    {
      v11 = v9;
      outlined consume of Data._Representation(v6, v8);
      return v11;
    }

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.instrumentation);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31[0] = v27;
      *v26 = 136315138;
      v28 = Dictionary.description.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v31);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1DC659000, v24, v25, "Could not convert JSON data to a string : %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1E12A2F50](v27, -1, -1);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    outlined consume of Data._Representation(v6, v8);
  }

  else
  {
    v13 = v5;
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.instrumentation);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31[0] = v19;
      *v18 = 136315138;
      v20 = Dictionary.description.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v31);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DC659000, v16, v17, "Could not serialize as JSON : %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E12A2F50](v19, -1, -1);
      MEMORY[0x1E12A2F50](v18, -1, -1);
    }
  }

  return 0;
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

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AceServiceInvokerImpl.executionRequestId.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AceServiceInvokerImpl.rootRequestId.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t AceServiceInvokerImpl.invocationDeviceAssistantId.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t AceServiceInvokerImpl.executionDeviceAssistantId.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t one-time initialization function for userFacingResponseCommandList()
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSSet, 0x1E695DFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DCA65720;
  v1 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUIAddViews, 0x1E69C7AF8);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12SAUIAddViewsCmMd, &_sSo12SAUIAddViewsCmMR);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAUIAddDialogs, 0x1E69C7AF0);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14SAUIAddDialogsCmMd, &_sSo14SAUIAddDialogsCmMR);
  *(v0 + 64) = v2;
  result = MEMORY[0x1E12A1C90](v0);
  static AceServiceInvokerImpl.userFacingResponseCommandList = result;
  return result;
}

uint64_t AceServiceInvokerImpl.__allocating_init(bridge:executionRequestId:rootRequestId:requestContextData:runLocation:invocationDeviceAssistantId:executionDeviceAssistantId:invokedByPeerToPeerEORR:rrClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7, uint64_t a8, __int128 a9, uint64_t a10, char a11, uint64_t a12)
{
  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v18 = swift_allocObject();
  *(v18 + 20) = 0;
  *(v18 + 16) = 0;
  *(v17 + 152) = v18;
  type metadata accessor for SubmissionTaskRegistry();
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = MEMORY[0x1E69E7CD0];
  *(v19 + 16) = v20;
  *(v17 + 160) = v19;
  v21 = swift_allocObject();
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  *(v17 + 168) = v21;
  *(v17 + 16) = a1;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  *(v17 + 32) = a6;
  *(v17 + 40) = a2;
  *(v17 + 24) = a7 & 1;
  *(v17 + 64) = a5;
  *(v17 + 72) = a8;
  *(v17 + 80) = a9;
  *(v17 + 96) = a10;
  *(v17 + 104) = a11;
  outlined init with copy of ReferenceResolutionClientProtocol?(a12, &v30, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (v31)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a12, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v30, v32);
    outlined init with take of ReferenceResolutionClientProtocol(v32, v17 + 112);
  }

  else
  {
    swift_unknownObjectRetain();
    v22 = a6;
    outlined destroy of ReferenceResolutionClientProtocol?(&v30, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v23 = type metadata accessor for ReferenceResolutionClient();
    v24 = ReferenceResolutionClient.__allocating_init()();
    v25 = MEMORY[0x1E69D01B0];
    *(v17 + 136) = v23;
    *(v17 + 144) = v25;
    swift_unknownObjectRelease();

    *(v17 + 112) = v24;
    outlined destroy of ReferenceResolutionClientProtocol?(a12, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  return v17;
}

uint64_t AceServiceInvokerImpl.init(bridge:executionRequestId:rootRequestId:requestContextData:runLocation:invocationDeviceAssistantId:executionDeviceAssistantId:invokedByPeerToPeerEORR:rrClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7, uint64_t a8, __int128 a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v19 = swift_allocObject();
  *(v19 + 20) = 0;
  *(v19 + 16) = 0;
  *(v12 + 152) = v19;
  type metadata accessor for SubmissionTaskRegistry();
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = MEMORY[0x1E69E7CD0];
  *(v20 + 16) = v21;
  *(v13 + 160) = v20;
  v22 = swift_allocObject();
  *(v22 + 20) = 0;
  *(v22 + 16) = 0;
  *(v13 + 168) = v22;
  *(v13 + 16) = a1;
  *(v13 + 48) = a3;
  *(v13 + 56) = a4;
  *(v13 + 32) = a6;
  *(v13 + 40) = a2;
  *(v13 + 24) = a7 & 1;
  *(v13 + 64) = a5;
  *(v13 + 72) = a8;
  *(v13 + 80) = a9;
  *(v13 + 96) = a10;
  *(v13 + 104) = a11;
  outlined init with copy of ReferenceResolutionClientProtocol?(a12, &v30, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (v31)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a12, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v30, &v32);
  }

  else
  {
    swift_unknownObjectRetain();
    v23 = a6;
    outlined destroy of ReferenceResolutionClientProtocol?(&v30, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v24 = type metadata accessor for ReferenceResolutionClient();
    v25 = ReferenceResolutionClient.__allocating_init()();
    v33 = v24;
    v34 = MEMORY[0x1E69D01B0];
    swift_unknownObjectRelease();

    *&v32 = v25;
    outlined destroy of ReferenceResolutionClientProtocol?(a12, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v32, v13 + 112);
  return v13;
}

uint64_t AceServiceInvokerImpl.__allocating_init(bridge:executionRequestId:rootRequestId:requestContextData:invokedByPeerToPeerEORR:rrClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  outlined init with copy of ReferenceResolutionClientProtocol?(a8, v28, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  v15 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySbSo16os_unfair_lock_sVGMR);
  v16 = swift_allocObject();
  *(v16 + 20) = 0;
  *(v16 + 16) = 0;
  *(v15 + 152) = v16;
  type metadata accessor for SubmissionTaskRegistry();
  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyShyScTySo13SABaseCommandCSgs5Error_pGGSo16os_unfair_lock_sVGMR);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = MEMORY[0x1E69E7CD0];
  *(v17 + 16) = v18;
  *(v15 + 160) = v17;
  v19 = swift_allocObject();
  *(v19 + 20) = 0;
  *(v19 + 16) = 0;
  *(v15 + 168) = v19;
  *(v15 + 16) = a1;
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;
  *(v15 + 64) = a5;
  *(v15 + 32) = a6;
  *(v15 + 40) = a2;
  *(v15 + 24) = 0;
  *(v15 + 72) = 0u;
  *(v15 + 88) = 0u;
  *(v15 + 104) = a7;
  outlined init with copy of ReferenceResolutionClientProtocol?(v28, &v25, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  if (v26)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(a8, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined init with take of ReferenceResolutionClientProtocol(&v25, v27);
    outlined init with take of ReferenceResolutionClientProtocol(v27, v15 + 112);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v25, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    v20 = type metadata accessor for ReferenceResolutionClient();
    v21 = ReferenceResolutionClient.__allocating_init()();
    v22 = MEMORY[0x1E69D01B0];
    *(v15 + 136) = v20;
    *(v15 + 144) = v22;
    *(v15 + 112) = v21;
    outlined destroy of ReferenceResolutionClientProtocol?(a8, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v28, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMd, &_s11SiriKitFlow33ReferenceResolutionClientProtocol_pSgMR);
  }

  return v15;
}

Swift::Void __swiftcall AceServiceInvokerImpl.invalidate()()
{
  v1 = *(v0 + 152);
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));

  AceServiceInvokerImpl.cancelPendingCommands()();
}

id AceServiceInvokerImpl.peerInfo()@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(*(v1 + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  v3 = type metadata accessor for PeerInfoProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type PeerInfoProvider and conformance PeerInfoProvider, 255, type metadata accessor for PeerInfoProvider, &protocol conformance descriptor for PeerInfoProvider);
  *a1 = v4;

  return v6;
}

id AceServiceInvokerImpl.endpointInfo()@<X0>(uint64_t *a1@<X8>)
{
  v6 = *(*(v1 + 32) + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo);
  v3 = type metadata accessor for EndpointInfoProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  a1[3] = v3;
  a1[4] = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type EndpointInfoProvider and conformance EndpointInfoProvider, 255, type metadata accessor for EndpointInfoProvider, &protocol conformance descriptor for EndpointInfoProvider);
  *a1 = v4;

  return v6;
}

void AceServiceInvokerImpl.prepareForAudioHandoff(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  v5[3] = &block_descriptor;
  v4 = _Block_copy(v5);

  [v3 prepareForAudioHandoffWithCompletion_];
  _Block_release(v4);
}

void AceServiceInvokerImpl.prepareForAudioHandoffFailed(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v5[3] = &block_descriptor_3;
  v4 = _Block_copy(v5);

  [v3 prepareForAudioHandoffFailedWithCompletion_];
  _Block_release(v4);
}

uint64_t AceServiceInvokerImpl.submitAndForget(_:setRefId:)(NSObject *a1, char a2)
{
  v4 = type metadata accessor for RequestSummary.ExecutionSource();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D0678], v4, v6);
  AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(a1, a2, v8);
  return (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall AceServiceInvokerImpl.submitAndForget(_:)(Swift::OpaquePointer a1)
{
  v2 = type metadata accessor for RequestSummary.ExecutionSource();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = a1._rawValue;
  if (a1._rawValue >> 62)
  {
    v15 = __CocoaSet.count.getter();
    v4 = rawValue;
    v7 = v15;
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = v4 & 0xC000000000000001;
    v10 = *MEMORY[0x1E69D0678];
    v11 = (v3 + 104);
    v12 = (v3 + 8);
    do
    {
      if (v9)
      {
        v13 = MEMORY[0x1E12A1FE0](v8);
      }

      else
      {
        v13 = v4[v8 + 4];
      }

      v14 = v13;
      ++v8;
      (*v11)(v6, v10, v2);
      AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(v14, 1, v6);

      (*v12)(v6, v2);
      v4 = rawValue;
    }

    while (v7 != v8);
  }
}

Swift::Void __swiftcall AceServiceInvokerImpl.submitAndForget(_:setRefId:)(Swift::OpaquePointer _, Swift::Bool setRefId)
{
  HIDWORD(v17) = setRefId;
  v3 = type metadata accessor for RequestSummary.ExecutionSource();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = _._rawValue;
  if (_._rawValue >> 62)
  {
    v16 = __CocoaSet.count.getter();
    v5 = rawValue;
    v8 = v16;
    if (!v16)
    {
      return;
    }
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    v10 = v5 & 0xC000000000000001;
    v11 = *MEMORY[0x1E69D0678];
    v12 = (v4 + 104);
    v13 = (v4 + 8);
    do
    {
      if (v10)
      {
        v14 = MEMORY[0x1E12A1FE0](v9);
      }

      else
      {
        v14 = v5[v9 + 4];
      }

      v15 = v14;
      ++v9;
      (*v12)(v7, v11, v3);
      AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(v15, BYTE4(v17) & 1, v7);

      (*v13)(v7, v3);
      v5 = rawValue;
    }

    while (v8 != v9);
  }
}

uint64_t AceServiceInvokerImpl.submitAndForget(_:)(NSObject *a1, char a2)
{
  v4 = type metadata accessor for RequestSummary.ExecutionSource();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69D0678], v4, v6);
  AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(a1, a2, v8);
  return (*(v5 + 8))(v8, v4);
}

void AceServiceInvokerImpl.submitInAppResponse(executionSource:inAppResponse:)(uint64_t a1, NSObject *a2)
{
  v80 = a2;
  v77 = a1;
  v3 = type metadata accessor for FlowOutputMessage.InAppResponse();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v65 - v10;
  v12 = type metadata accessor for RequestSummary.ExecutionSource();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v65 - v16;
  v18 = v2[19];
  os_unfair_lock_lock((v18 + 20));
  v19 = *(v18 + 16);
  os_unfair_lock_unlock((v18 + 20));
  if (v19)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.executor);
    v80 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v80, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DC659000, v80, v21, "Attempting to submit inAppResponse on an invalidated AceServiceInvoker. Ignoring.", v22, 2u);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    v23 = v80;
  }

  else
  {
    v74 = v6;
    v24 = v2[21];
    os_unfair_lock_lock((v24 + 20));
    partial apply for closure #1 in AceServiceInvokerImpl.closeServerRequest()((v24 + 16));
    os_unfair_lock_unlock((v24 + 20));
    v25 = v3;
    v76 = v2;
    v27 = v2[5];
    v26 = v2[6];
    v73 = v13;
    v28 = *(v13 + 16);
    v28(v17, v77, v12);
    v29 = *(v4 + 16);
    v69 = v4 + 16;
    v68 = v29;
    v29(v11, v80, v25);
    v75 = v4;
    v30 = *(v4 + 56);
    v77 = v25;
    v30(v11, 0, 1, v25);
    v31 = v79;
    v28(v79, v17, v12);
    v32 = v78;
    outlined init with copy of ReferenceResolutionClientProtocol?(v11, v78, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v67 = type metadata accessor for ExecutionOutput(0);
    v33 = objc_allocWithZone(v67);
    v34 = &v33[OBJC_IVAR___SKRExecutionOutput_executionRequestId];
    *v34 = v27;
    *(v34 + 1) = v26;
    v35 = &v33[OBJC_IVAR___SKRExecutionOutput_fullPrint];
    *v35 = 0;
    *(v35 + 1) = 0;
    v36 = &v33[OBJC_IVAR___SKRExecutionOutput_fullSpeak];
    *v36 = 0;
    *(v36 + 1) = 0;
    v37 = &v33[OBJC_IVAR___SKRExecutionOutput_redactedFullPrint];
    *v37 = 0;
    *(v37 + 1) = 0;
    v38 = &v33[OBJC_IVAR___SKRExecutionOutput_redactedFullSpeak];
    *v38 = 0;
    *(v38 + 1) = 0;
    v71 = v12;
    v28(&v33[OBJC_IVAR___SKRExecutionOutput_executionSource], v31, v12);
    outlined init with copy of ReferenceResolutionClientProtocol?(v32, &v33[OBJC_IVAR___SKRExecutionOutput_inAppResponse], &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v39 = one-time initialization token for executor;

    if (v39 != -1)
    {
      swift_once();
    }

    v70 = v17;
    v72 = v11;
    v40 = v32;
    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.executor);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v43 = 136315394;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000085, 0x80000001DCA7C240, aBlock);
      *(v43 + 12) = 2112;
      *(v43 + 14) = 0;
      *v44 = 0;
      _os_log_impl(&dword_1DC659000, v41, v42, "ExecutionOutput: %s: converting non-context ACE command=%@ to ExecutionOutput", v43, 0x16u);
      outlined destroy of ReferenceResolutionClientProtocol?(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E12A2F50](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1E12A2F50](v45, -1, -1);
      MEMORY[0x1E12A2F50](v43, -1, -1);
    }

    v46 = v76;
    v47 = v73;
    v48 = v74;
    v49 = v80;
    v50 = v71;
    *&v33[OBJC_IVAR___SKRExecutionOutput_command] = 0;
    *&v33[OBJC_IVAR___SKRExecutionOutput_contextUpdate] = 0;
    v82.receiver = v33;
    v82.super_class = v67;
    v51 = objc_msgSendSuper2(&v82, sel_init);
    outlined destroy of ReferenceResolutionClientProtocol?(v40, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v52 = *(v47 + 8);
    v52(v79, v50);
    outlined destroy of ReferenceResolutionClientProtocol?(v72, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMd, &_s16SiriMessageTypes010FlowOutputB0C13InAppResponseVSgMR);
    v52(v70, v50);
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v66, static Logger.ace);
    v53 = v77;
    v68(v48, v49, v77);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136315138;
      v58 = FlowOutputMessage.InAppResponse.bundleId.getter();
      v59 = v53;
      v61 = v60;
      (*(v75 + 8))(v48, v59);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v61, aBlock);

      *(v56 + 4) = v62;
      _os_log_impl(&dword_1DC659000, v54, v55, "Submitting inAppResponse with bundleId: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x1E12A2F50](v57, -1, -1);
      MEMORY[0x1E12A2F50](v56, -1, -1);
    }

    else
    {

      (*(v75 + 8))(v48, v53);
    }

    v63 = v46[2];
    aBlock[4] = closure #2 in AceServiceInvokerImpl.submitInAppResponse(executionSource:inAppResponse:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_6;
    v64 = _Block_copy(aBlock);
    [v63 submitWithExecutionOutput:v51 completion:v64];
    _Block_release(v64);
  }
}

void AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(unint64_t a1, char a2, char *a3)
{
  if (a1 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12A1FE0](i, a1);
      }

      else
      {
        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      AceServiceInvokerImpl.submitAndForget(_:setRefId:executionSource:)(v8, a2 & 1, a3);
    }
  }
}

uint64_t closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for SubmitCommandError();
  lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, MEMORY[0x1E69CFF98], MEMORY[0x1E69CFFA0]);
  v9 = type metadata accessor for Result();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:), 0, 0);
}

uint64_t closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:)()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);

  return Result<>.init(catching:)(v5, &async function pointer to partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:), v2, v6);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:), 0, 0);
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return AceServiceInvokerImpl._submitExecute<A>(_:)(a3, a4);
}

uint64_t Result<>.init(catching:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  type metadata accessor for SubmitCommandError();
  lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, MEMORY[0x1E69CFF98], MEMORY[0x1E69CFFA0]);
  v6 = type metadata accessor for Result();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[9] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v4[10] = v8;
  *v8 = v4;
  v8[1] = Result<>.init(catching:);

  return v10(v7);
}

uint64_t Result<>.init(catching:)()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = Result<>.init(catching:);
  }

  else
  {
    v2 = Result<>.init(catching:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[11];
  v2 = v0[6];
  swift_getErrorValue();
  Error.asSubmitCommandError.getter(v0[3], v0[4], v2);

  swift_storeEnumTagMultiPayload();

  v3 = v0[1];

  return v3();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime20LinkExpansionContextV07SessionJ0C_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for LinkExpansionContext.SessionContext();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(v25[0], &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for LinkExpansionContext.SessionContext();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime25PluginLookupByIntentTopic_p_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25PluginLookupByIntentTopic_pMd, &_s14SiriKitRuntime25PluginLookupByIntentTopic_pMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime25PluginLookupByIntentTopic_pMd, &_s14SiriKitRuntime25PluginLookupByIntentTopic_pMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime23InterruptibleTaskResultOyytG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyytGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyytGMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyytGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyytGMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSo15AFSpeechPackageCSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime23InterruptibleTaskResultOyAI18RemoteConversation_pSgG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t AceServiceInvokerImpl.submit<A>(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, double), uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v24 - v18;
  v20 = a6(a1, a5, a4, a4, v17);
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a4;
  v22[5] = a2;
  v22[6] = a3;
  v22[7] = v8;
  v22[8] = v20;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v19, a8, v22);
}

uint64_t closure #1 in AceServiceInvokerImpl.submitWithoutRefId<A>(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for SubmitCommandError();
  lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, MEMORY[0x1E69CFF98], MEMORY[0x1E69CFFA0]);
  v9 = type metadata accessor for Result();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.submitWithoutRefId<A>(_:completion:), 0, 0);
}

uint64_t closure #1 in AceServiceInvokerImpl.submitWithoutRefId<A>(_:completion:)()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);

  return Result<>.init(catching:)(v5, &async function pointer to partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.submitWithoutRefId<A>(_:completion:), v2, v6);
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1E12A1FE0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject dialog];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for DialogElement, 0x1E699A0B0);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        __CocoaSet.count.getter();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [DialogElement] and conformance [A], &_sSaySo13DialogElementCGMd, &_sSaySo13DialogElementCGMR, MEMORY[0x1E69E6340]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13DialogElementCGMd, &_sSaySo13DialogElementCGMR);
              v19 = specialized protocol witness for Collection.subscript.read in conformance [A](v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

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
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t AceServiceInvokerImpl.publish(nlContext:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.publish(nlContext:), 0, 0);
}

uint64_t AceServiceInvokerImpl.publish(nlContext:)()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for NLContextUpdate();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = AceServiceInvokerImpl.needsLegacyProvideContextForInvocationDevice.getter();
  v6 = specialized static ExecutionContextUpdate.convertFromFlowContextUpdate(_:nluActiveTasks:nluCompletedTasks:populateLegacyProvideContext:)(v1, 0, 0, v5 & 1);
  v0[5] = v6;
  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = AceServiceInvokerImpl.publish(nlContext:);

  return AceServiceInvokerImpl.publish(executionContextUpdate:)(v6);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = AceServiceInvokerImpl.publish(nlContext:);
  }

  else
  {
    v2 = AceServiceInvokerImpl.publish(nlContext:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t AceServiceInvokerImpl.donateEntitiesLocallyIfNeeded(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  if (*(v1 + 24))
  {
    v6 = 0xEF6563697665446ELL;
  }

  else
  {
    v6 = 0x80000001DCA7AA10;
  }

  if (*(v1 + 24) == 1 && v6 == 0xEF6563697665446ELL)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  if (*(v1 + 80))
  {
    if ((*(v1 + 104) & 1) == 0)
    {
      v9 = *(a1 + 16);
      if (v9)
      {
        v10 = v1;
        if (one-time initialization token for ace != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static Logger.ace);

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134349056;
          *(v14 + 4) = v9;

          _os_log_impl(&dword_1DC659000, v12, v13, "Begin donating %{public}ld reference resolution entities to local device", v14, 0xCu);
          MEMORY[0x1E12A2F50](v14, -1, -1);
        }

        else
        {
        }

        __swift_project_boxed_opaque_existential_1((v10 + 112), *(v10 + 136));
        v15 = type metadata accessor for RRFilter();
        (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
        dispatch thunk of ReferenceResolutionClientProtocol.siriMentioned(entities:configuration:completion:)();
        return outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
      }
    }
  }

  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime18RemoteConversation_p_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime18RemoteConversation_pMd, &_s14SiriKitRuntime18RemoteConversation_pMR);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime18RemoteConversation_pMd, &_s14SiriKitRuntime18RemoteConversation_pMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo13SABaseCommandCSg_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v26[0] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v26 - v13;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v26 - v13, &_sScPSgMd, &_sScPSgMR);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v16 + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      v23 = (v21 | v19);
      if (v21 | v19)
      {
        v27[0] = 0;
        v27[1] = 0;
        v23 = v27;
        v27[2] = v19;
        v27[3] = v21;
      }

      v26[1] = 7;
      v26[2] = v23;
      v26[3] = v22;
      v24 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if (v21 | v19)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v19;
    v27[7] = v21;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC14SiriKitRuntime28ConversationParaphraseResultO_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v24 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC11SiriKitFlow15ExecuteResponseV_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v24 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, v22 - v9, &_sScPSgMd, &_sScPSgMR);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v10, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
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
      v20 = swift_task_create();

      outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);

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

  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void closure #1 in AceServiceInvokerImpl.donateEntitiesLocallyIfNeeded(_:)(void *a1, char a2)
{
  if (a2)
  {
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.ace);
    v4 = a1;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    outlined consume of Result<(), Error>(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136446210;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1DC659000, oslog, v5, "Error donating reference resolution entities to local device: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1E12A2F50](v7, -1, -1);
      MEMORY[0x1E12A2F50](v6, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.ace);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, oslog, v12, "Completed donating reference resolution entities to local device", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }
}

uint64_t AceServiceInvokerImpl._submitToCompanionPrep<A>(_:setRefId:responseType:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for RequestSummary.ExecutionSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = &outlined read-only object #0 of AceServiceInvokerImpl._submitToCompanionPrep<A>(_:setRefId:responseType:);
  }

  v14 = specialized AceServiceInvokerImpl.wrapCommandForExecution(_:assistantId:)(a1, 0, 0xE000000000000000);
  (*(v10 + 104))(v12, *MEMORY[0x1E69D0678], v9);
  v15 = AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(v14, v13, v12, a3, a4);

  (*(v10 + 8))(v12, v9);
  v16 = *(*(v4 + 160) + 16);
  os_unfair_lock_lock((v16 + 24));
  closure #1 in SubmissionTaskRegistry.register(_:)partial apply((v16 + 16), &v19);
  os_unfair_lock_unlock((v16 + 24));

  return v15;
}

uint64_t closure #1 in AceServiceInvokerImpl.submitToCompanion<A>(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for SubmitCommandError();
  lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, MEMORY[0x1E69CFF98], MEMORY[0x1E69CFFA0]);
  v9 = type metadata accessor for Result();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.submitToCompanion<A>(_:completion:), 0, 0);
}

uint64_t closure #1 in AceServiceInvokerImpl.submitToCompanion<A>(_:completion:)()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);

  return Result<>.init(catching:)(v5, &async function pointer to partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.submitToCompanion<A>(_:completion:), v2, v6);
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.submitToCompanion<A>(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = closure #1 in closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return AceServiceInvokerImpl._submitToCompanionExecute<A>(_:)(a3, a4);
}

uint64_t AceServiceInvokerImpl._submitToCompanionExecute<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = AceServiceInvokerImpl._submitToCompanionExecute<A>(_:);

  return specialized AceServiceInvokerImpl.getResponse<A>(from:)(a1);
}

uint64_t AceServiceInvokerImpl._submitToCompanionExecute<A>(_:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = AceServiceInvokerImpl._submitToCompanionExecute<A>(_:);
  }

  else
  {
    v4 = AceServiceInvokerImpl._submitToCompanionExecute<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void AceServiceInvokerImpl._submitToCompanionExecute<A>(_:)()
{
  v9 = v0;
  v1 = *(v0 + 56);
  v2 = interpretEORResponse<A>(_:)([*(v0 + 48) result], *(v0 + 24));
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  swift_unknownObjectRelease();

  v5 = *(*(v4 + 160) + 16);
  if (v1)
  {
    os_unfair_lock_lock(v5 + 6);
    closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(v8);
    os_unfair_lock_unlock(v5 + 6);

    v6 = *(v0 + 8);

    v6();
  }

  else
  {
    os_unfair_lock_lock(v5 + 6);
    closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(v8);
    os_unfair_lock_unlock(v5 + 6);

    v7 = *(v0 + 8);

    v7(v2);
  }
}

uint64_t AceServiceInvokerImpl._submitToCompanionExecute<A>(_:)()
{
  v5 = v0;
  v1 = *(*(*(v0 + 32) + 160) + 16);
  os_unfair_lock_lock(v1 + 6);
  closure #1 in SubmissionTaskRegistry.unregister(_:)partial apply(&v4);
  os_unfair_lock_unlock(v1 + 6);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in AceServiceInvokerImpl.submitToCompanionWithoutRefId<A>(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for SubmitCommandError();
  lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, MEMORY[0x1E69CFF98], MEMORY[0x1E69CFFA0]);
  v9 = type metadata accessor for Result();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.submitToCompanionWithoutRefId<A>(_:completion:), 0, 0);
}

uint64_t closure #1 in AceServiceInvokerImpl.submitToCompanionWithoutRefId<A>(_:completion:)()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);

  return Result<>.init(catching:)(v5, &async function pointer to partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.submitToCompanionWithoutRefId<A>(_:completion:), v2, v6);
}

uint64_t AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:), 0, 0);
}

uint64_t AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:);
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = AceServiceInvokerImpl.submitToCompanion<A>(_:setRefId:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t interpretEORResponse<A>(_:)(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
LABEL_5:
    swift_unknownObjectRetain();
    v6 = interpretResponse<A>(_:)(v5, a2);
    swift_unknownObjectRelease();
    return v6;
  }

  v7 = [a1 encodedClassName];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.ace);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315394;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v24);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v24);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_1DC659000, v13, v14, "submitToRemote unable to parse typed response. Expected '%s' : received '%s'", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v16, -1, -1);
    MEMORY[0x1E12A2F50](v15, -1, -1);
  }

  else
  {
  }

  type metadata accessor for CommandFailure();
  swift_allocObject();
  v21 = CommandFailure.init(errorCode:reason:)();
  lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type CommandFailure and conformance CommandFailure, 255, MEMORY[0x1E69CFE48], MEMORY[0x1E69CFE50]);
  v6 = swift_allocError();
  *v22 = v21;
  swift_willThrow();
  return v6;
}

uint64_t AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20 - v14;
  v16 = AceServiceInvokerImpl._submitToRemotePrep<A>(_:_:setRefId:responseType:)(a1, a2, a3, 1, a6, a6);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a6;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v6;
  v18[8] = v16;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:), v18);
}

uint64_t AceServiceInvokerImpl._submitToRemotePrep<A>(_:_:setRefId:responseType:)(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a5;
  v39 = a6;
  v37 = a1;
  v11 = type metadata accessor for RequestSummary.ExecutionSource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7CC0];
  if (a4)
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v16 = &outlined read-only object #0 of AceServiceInvokerImpl._submitToRemotePrep<A>(_:_:setRefId:responseType:);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (a4)
    {
      v35 = v15;
    }

    else
    {
      v35 = &outlined read-only object #0 of AceServiceInvokerImpl._submitToRemotePrep<A>(_:_:setRefId:responseType:);
    }

    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[16 * v18];
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  if (one-time initialization token for ace != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.ace);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v7;
    v25 = v24;
    v40 = v24;
    *v23 = 136315394;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v40);
    *(v23 + 12) = 2080;

    v27 = MEMORY[0x1E12A16D0](v26, &type metadata for AceServiceInvokerImpl.AceSubmitOptions);
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v40);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_1DC659000, v21, v22, "submitToRemote(targetAssistantId:%s, options:%s", v23, 0x16u);
    swift_arrayDestroy();
    v31 = v25;
    v7 = v36;
    MEMORY[0x1E12A2F50](v31, -1, -1);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E69D0678], v11);

  v32 = AceServiceInvokerImpl.createSubmissionTask<A>(for:options:executionSource:expectingResponseOfType:)(v37, v16, v14, v38, v39);

  (*(v12 + 8))(v14, v11);
  v33 = *(*(v7 + 160) + 16);
  os_unfair_lock_lock((v33 + 24));
  closure #1 in SubmissionTaskRegistry.register(_:)partial apply((v33 + 16), &v40);
  os_unfair_lock_unlock((v33 + 24));

  return v32;
}

uint64_t closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for SubmitCommandError();
  lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, MEMORY[0x1E69CFF98], MEMORY[0x1E69CFFA0]);
  v9 = type metadata accessor for Result();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:), 0, 0);
}

uint64_t closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:)()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);

  return Result<>.init(catching:)(v5, &async function pointer to partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:), v2, v6);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:), 0, 0);
}

{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = closure #1 in closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:);

  return AceServiceInvokerImpl._submitToCompanionExecute<A>(_:)(a3, a4);
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:)(uint64_t a1)
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
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AceServiceInvokerImpl.submitToRemote<A>(_:_:completion:), 0, 0);
  }
}

uint64_t AceServiceInvokerImpl.submitToRemote<A>(_:_:setRefId:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 88) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.submitToRemote<A>(_:_:setRefId:), 0, 0);
}

uint64_t AceServiceInvokerImpl.submitToRemote<A>(_:_:setRefId:)()
{
  v1 = AceServiceInvokerImpl._submitToRemotePrep<A>(_:_:setRefId:responseType:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 88), *(v0 + 40), *(v0 + 40));
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = AceServiceInvokerImpl.submitToRemote<A>(_:_:setRefId:);
  v3 = *(v0 + 40);

  return AceServiceInvokerImpl._submitToCompanionExecute<A>(_:)(v1, v3);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AceServiceInvokerImpl.submitToRemote<A>(_:_:setRefId:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = AceServiceInvokerImpl.submitToRemote<A>(_:_:setRefId:);
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = AceServiceInvokerImpl.submitToRemote<A>(_:_:setRefId:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t closure #1 in AceServiceInvokerImpl.submitAllSerial(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18SubmitCommandErrorOSgMd, &_s11SiriKitFlow18SubmitCommandErrorOSgMR);
  v7[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[9] = v9;
  *v9 = v7;
  v9[1] = closure #1 in AceServiceInvokerImpl.submitAllSerial(_:_:);

  return AceServiceInvokerImpl._submitAllSerialExecute(_:)(a5);
}

uint64_t closure #1 in AceServiceInvokerImpl.submitAllSerial(_:_:)()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #1 in AceServiceInvokerImpl.submitAllSerial(_:_:);
  }

  else
  {
    v2 = closure #1 in AceServiceInvokerImpl.submitAllSerial(_:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[6];
  v3 = type metadata accessor for SubmitCommandError();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v2(v1);
  outlined destroy of ReferenceResolutionClientProtocol?(v1, &_s11SiriKitFlow18SubmitCommandErrorOSgMd, &_s11SiriKitFlow18SubmitCommandErrorOSgMR);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[6];
  swift_getErrorValue();
  Error.asSubmitCommandError.getter(v0[3], v0[4], v2);
  v4 = type metadata accessor for SubmitCommandError();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v3(v2);

  outlined destroy of ReferenceResolutionClientProtocol?(v2, &_s11SiriKitFlow18SubmitCommandErrorOSgMd, &_s11SiriKitFlow18SubmitCommandErrorOSgMR);

  v5 = v0[1];

  return v5();
}

uint64_t Error.asSubmitCommandError.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v32 = a2;
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18SubmitCommandErrorOSgMd, &_s11SiriKitFlow18SubmitCommandErrorOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v30 - v7;
  v9 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for SubmitCommandError();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v9;
  v31 = v4;
  v21 = *(v9 + 16);
  v21(v15, v4, a1, v18);
  v22 = swift_dynamicCast();
  v23 = *(v17 + 56);
  if (v22)
  {
    v23(v8, 0, 1, v16);
    v24 = *(v17 + 32);
    v24(v20, v8, v16);
    return (v24)(v33, v20, v16);
  }

  else
  {
    v26 = v33;
    v23(v8, 1, 1, v16);
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s11SiriKitFlow18SubmitCommandErrorOSgMd, &_s11SiriKitFlow18SubmitCommandErrorOSgMR);
    (v21)(v12, v31, a1);
    v27 = _getErrorEmbeddedNSError<A>(_:)();
    if (v27)
    {
      v28 = v27;
      (*(v30 + 8))(v12, a1);
    }

    else
    {
      v28 = swift_allocError();
      (*(v30 + 32))(v29, v12, a1);
    }

    *v26 = v28;
    return (*(v17 + 104))(v26, *MEMORY[0x1E69CFF78], v16);
  }
}

uint64_t AceServiceInvokerImpl.submitAllSerial(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = type metadata accessor for RequestSummary.ExecutionSource();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x1E69D0678], v14, v16);
  v19 = AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:)(a1, a4, v18);
  (*(v15 + 8))(v18, v14);
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  v21[5] = v19;
  v21[6] = a2;
  v21[7] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, v24, v21);
}

uint64_t closure #1 in AceServiceInvokerImpl.submitAllSerialWithoutRefId(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow18SubmitCommandErrorOSgMd, &_s11SiriKitFlow18SubmitCommandErrorOSgMR);
  v7[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[9] = v9;
  *v9 = v7;
  v9[1] = closure #1 in AceServiceInvokerImpl.submitAllSerialWithoutRefId(_:_:);

  return AceServiceInvokerImpl._submitAllSerialExecute(_:)(a5);
}

uint64_t closure #1 in AceServiceInvokerImpl.submitAllSerialWithoutRefId(_:_:)()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #1 in AceServiceInvokerImpl.submitAllSerialWithoutRefId(_:_:);
  }

  else
  {
    v2 = closure #1 in AceServiceInvokerImpl.submitAllSerialWithoutRefId(_:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t AceServiceInvokerImpl.submitAllSerial(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v34 = a8;
  v35 = a5;
  v36 = a6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - v16;
  v18 = type metadata accessor for RequestSummary.ExecutionSource();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v32 = a2;
  v33 = a7;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v25 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    LOBYTE(a7) = v33;
    a2 = v32;
LABEL_2:
    specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
    v23 = v22;
    goto LABEL_9;
  }

  v23 = swift_dynamicCastClass();
  LOBYTE(a7) = v33;
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x1E69E7CC0];
  }

LABEL_9:
  (*(v19 + 104))(v21, *MEMORY[0x1E69D0678], v18);
  v26 = AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:)(v23, a7 & 1, v21);

  (*(v19 + 8))(v21, v18);
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v9;
  v28[5] = v26;
  v29 = v36;
  v28[6] = v35;
  v28[7] = v29;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, a9, v28);
}

uint64_t AceServiceInvokerImpl.submitAllSerial(_:setRefId:)(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for RequestSummary.ExecutionSource();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.submitAllSerial(_:setRefId:), 0, 0);
}

uint64_t AceServiceInvokerImpl.submitAllSerial(_:setRefId:)()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 80);
  v5 = *(v0 + 16);
  (*(v2 + 104))(v1, *MEMORY[0x1E69D0678], v3);
  v6 = AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:)(v5, v4, v1);
  *(v0 + 56) = v6;
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = AceServiceInvokerImpl.submitAllSerial(_:setRefId:);

  return AceServiceInvokerImpl._submitAllSerialExecute(_:)(v6);
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = AceServiceInvokerImpl.submitAllSerial(_:setRefId:);
  }

  else
  {
    v2 = AceServiceInvokerImpl.submitAllSerial(_:setRefId:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AceServiceInvokerImpl.submitAllSerial(_:setRefId:executionSource:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.submitAllSerial(_:setRefId:executionSource:), 0, 0);
}

uint64_t AceServiceInvokerImpl.submitAllSerial(_:setRefId:executionSource:)()
{
  v1 = AceServiceInvokerImpl._submitAllSerialPrep(_:setRefId:executionSource:)(*(v0 + 16), *(v0 + 64), *(v0 + 24));
  *(v0 + 40) = v1;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = AceServiceInvokerImpl.submitAllSerial(_:setRefId:executionSource:);

  return AceServiceInvokerImpl._submitAllSerialExecute(_:)(v1);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = AceServiceInvokerImpl.submit<A>(_:setRefId:);
  }

  else
  {
    v2 = AceServiceInvokerImpl.submitAllSerial(_:setRefId:executionSource:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

Swift::String_optional __swiftcall AceServiceInvokerImpl.currentStartRequestId()()
{
  if (v0[8])
  {
    v1 = v0[7];
    v2 = v0[8];
  }

  else
  {
    v1 = v0[5];
    v2 = v0[6];
  }

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t AceServiceInvokerImpl.prepareForAudioHandoff()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.prepareForAudioHandoff(), 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = AceServiceInvokerImpl.prepareForAudioHandoff();
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 32, 0, 0, 0xD000000000000018, 0x80000001DCA7C2D0, partial apply for closure #1 in AceServiceInvokerImpl.prepareForAudioHandoff(), v2, v3);
}

{

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.prepareForAudioHandoff(), 0, 0);
}

void closure #1 in AceServiceInvokerImpl.prepareForAudioHandoff()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.prepareForAudioHandoff();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_203;
  v12 = _Block_copy(aBlock);

  [v9 prepareForAudioHandoffWithCompletion_];
  _Block_release(v12);
}

uint64_t AceServiceInvokerImpl.prepareForAudioHandoffFailed()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.prepareForAudioHandoffFailed(), 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = AceServiceInvokerImpl.prepareForAudioHandoffFailed();
  v2 = *(v0 + 16);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0xD00000000000001ELL, 0x80000001DCA7C2F0, partial apply for closure #1 in AceServiceInvokerImpl.prepareForAudioHandoffFailed(), v2, v3);
}

{

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.prepareForAudioHandoffFailed(), 0, 0);
}

void closure #1 in AceServiceInvokerImpl.prepareForAudioHandoffFailed()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.prepareForAudioHandoffFailed();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_197;
  v12 = _Block_copy(aBlock);

  [v9 prepareForAudioHandoffFailedWithCompletion_];
  _Block_release(v12);
}

uint64_t AceServiceInvokerImpl.recentDialogs()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.recentDialogs(), 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow12RecentDialogCGMd, &_sSay11SiriKitFlow12RecentDialogCGMR);
  *v1 = v0;
  v1[1] = AceServiceInvokerImpl.recentDialogs();
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0x6944746E65636572, 0xEF292873676F6C61, partial apply for closure #1 in AceServiceInvokerImpl.recentDialogs(), v3, v2);
}

{

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.recentDialogs(), 0, 0);
}

void closure #1 in AceServiceInvokerImpl.recentDialogs()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SiriKitFlow12RecentDialogCGs5NeverOGMd, &_sScCySay11SiriKitFlow12RecentDialogCGs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.recentDialogs();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [RecentDialog]) -> ();
  aBlock[3] = &block_descriptor_191;
  v12 = _Block_copy(aBlock);

  [v9 fetchRecentDialogsWithReply_];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.recentDialogs()(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SiriKitFlow12RecentDialogCGs5NeverOGMd, &_sScCySay11SiriKitFlow12RecentDialogCGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t AceServiceInvokerImpl.submitExternalActivationRequest(withRequestInfo:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.submitExternalActivationRequest(withRequestInfo:), 0, 0);
}

uint64_t AceServiceInvokerImpl.submitExternalActivationRequest(withRequestInfo:)()
{
  v1 = swift_task_alloc();
  v0[3].i64[0] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb_s5Error_pSgtMd, &_sSb_s5Error_pSgtMR);
  *v2 = v0;
  v2[1] = AceServiceInvokerImpl.submitExternalActivationRequest(withRequestInfo:);

  return MEMORY[0x1EEE6DDE0](&v0[1], 0, 0, 0xD000000000000031, 0x80000001DCA7C310, partial apply for closure #1 in AceServiceInvokerImpl.submitExternalActivationRequest(withRequestInfo:), v1, v3);
}

{

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.submitExternalActivationRequest(withRequestInfo:), 0, 0);
}

void closure #1 in AceServiceInvokerImpl.submitExternalActivationRequest(withRequestInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySb_s5Error_pSgts5NeverOGMd, &_sScCySb_s5Error_pSgts5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  v11 = *(a2 + 16);
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.submitExternalActivationRequest(withRequestInfo:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_185;
  v14 = _Block_copy(aBlock);

  [v11 submitExternalActivationRequestWithRequestInfo:a3 completion:v14];
  _Block_release(v14);
}

uint64_t AceServiceInvokerImpl.postToMessageBus(message:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for MessageXPCTransporter();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.postToMessageBus(message:), 0, 0);
}

uint64_t AceServiceInvokerImpl.postToMessageBus(message:)(double a1)
{
  v2 = v1[4];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v1[9] = PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of MessageXPCTransportable.toMessageXPCTransporter()();
  lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type MessageXPCTransporter and conformance MessageXPCTransporter, 255, MEMORY[0x1E69D0430], MEMORY[0x1E69D0438]);
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v1[10] = v3;
  v1[11] = v4;
  v5 = v4;
  (*(v1[7] + 8))(v1[8], v1[6]);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.executor);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DC659000, v7, v8, "Passing message to conversation bridge over XPC ", v9, 2u);
    MEMORY[0x1E12A2F50](v9, -1, -1);
  }

  v10 = v1[5];

  v11 = swift_task_alloc();
  v1[12] = v11;
  v11[2] = v10;
  v11[3] = v3;
  v11[4] = v5;
  v12 = swift_task_alloc();
  v1[13] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb_s5Error_pSgtMd, &_sSb_s5Error_pSgtMR);
  *v12 = v1;
  v12[1] = AceServiceInvokerImpl.postToMessageBus(message:);

  return MEMORY[0x1EEE6DDE0](v1 + 2, 0, 0, 0xD00000000000001ALL, 0x80000001DCA7C350, partial apply for closure #1 in AceServiceInvokerImpl.postToMessageBus(message:), v11, v13);
}

uint64_t AceServiceInvokerImpl.postToMessageBus(message:)()
{

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.postToMessageBus(message:), 0, 0);
}

{
  outlined consume of Data._Representation(*(v0 + 80), *(v0 + 88));

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

void closure #1 in AceServiceInvokerImpl.postToMessageBus(message:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySb_s5Error_pSgts5NeverOGMd, &_sScCySb_s5Error_pSgts5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in AceServiceInvokerImpl.postToMessageBus(message:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_179;
  v12 = _Block_copy(aBlock);

  [v8 postToMessageBusWithMessage:isa completion:v12];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.submitExternalActivationRequest(withRequestInfo:)(char a1, id a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySb_s5Error_pSgts5NeverOGMd, &_sScCySb_s5Error_pSgts5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t closure #1 in closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:)(uint64_t a1)
{
  v2 = v1[27];
  v4 = v1[23];
  v3 = v1[24];
  lazy protocol witness table accessor for type SerialSubmissionError and conformance SerialSubmissionError();
  swift_allocError();
  *v5 = v3;
  v5[1] = v2;
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

id specialized interpretResponse<A>(_:)(void *a1)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [objc_opt_self() aceObjectWithGenericCommand_];
    if (!v3)
    {
LABEL_6:
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAExecuteOnRemoteResponse, 0x1E69C77E8);
      return [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {

      goto LABEL_6;
    }
  }

  else
  {
    v5 = a1;
    v4 = v5;
  }

  v7 = v5;
  v8 = v4;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();

  if (v9)
  {
    v10 = MEMORY[0x1E69CFF88];
    v7 = v9;
LABEL_10:
    v11 = type metadata accessor for SubmitCommandError();
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type SubmitCommandError and conformance SubmitCommandError, 255, MEMORY[0x1E69CFF98], MEMORY[0x1E69CFFA0]);
    swift_allocError();
    *v12 = v7;
    (*(*(v11 - 8) + 104))(v12, *v10, v11);
    return swift_willThrow();
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    v10 = MEMORY[0x1E69CFF90];
    goto LABEL_10;
  }

  return result;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance AceServiceInvokerImpl.AceSubmitOptions()
{
  v1 = 0xD00000000000001CLL;
  v2 = v0[1];
  if (v2)
  {
    v3 = *v0;
    _StringGuts.grow(_:)(46);

    MEMORY[0x1E12A1580](v3, v2);
    MEMORY[0x1E12A1580](10537, 0xE200000000000000);
    return 0xD00000000000002ALL;
  }

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AceServiceInvokerImpl.AceSubmitOptions(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {
      return 1;
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}