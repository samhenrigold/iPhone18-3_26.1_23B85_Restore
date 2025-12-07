void __RKEntityActionGroup.performConcurrentActions(with:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 + 136) = 0;
  if ((*(v1 + 152) & 1) == 0)
  {
    v4 = v1;
    swift_beginAccess();
    v5 = *(v1 + 112);
    if (v5 >> 62)
    {
      v6 = __CocoaSet.count.getter();
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    if (v6 < 1)
    {
      __break(1u);
      goto LABEL_27;
    }

    v21 = v4;
    v7 = v5 & 0xC000000000000001;

    v8 = 0;
    v9 = v5;
    do
    {
      if (v7)
      {
        v10 = MEMORY[0x1C68F41F0](v8, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);
      }

      ++v8;
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = v2;
      v12[4] = v3;
      v13 = *(v10 + 48);
      v14 = *(v10 + 56);
      *(v10 + 48) = partial apply for closure #1 in __RKEntityActionGroup.performConcurrentActions(with:);
      *(v10 + 56) = v12;

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v13, v14);

      v5 = v9;
    }

    while (v6 != v8);

    v4 = v21;
LABEL_11:
    v15 = *(v4 + 112);
    if (v15 >> 62)
    {
      v16 = __CocoaSet.count.getter();
      if (v16)
      {
LABEL_13:
        if (v16 >= 1)
        {

          v17 = 0;
          do
          {
            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x1C68F41F0](v17, v15);
            }

            else
            {
              v18 = *(v15 + 8 * v17 + 32);
            }

            ++v17;
            v24[0] = v2;
            v24[1] = v3;
            (*(*v18 + 408))(v24);
          }

          while (v16 != v17);

          goto LABEL_20;
        }

LABEL_27:
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_13;
      }
    }

LABEL_20:
    swift_beginAccess();
    v19 = *(v4 + 96);
    v20 = *(v4 + 104);
    *(v4 + 96) = 1;
    *(v4 + 104) = 1;
    v22 = v19;
    v23 = v20;
    __RKEntityAction.state.didset(&v22);
  }
}

uint64_t closure #1 in __RKEntityActionGroup.performConcurrentActions(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 136);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *(result + 136) = v8;
      v9[0] = a2;
      v9[1] = a3;
      __RKEntityActionGroup.checkForCompletion(with:)(v9);
    }
  }

  return result;
}

void __RKEntityActionGroup.performSequentialAction(at:context:)(unint64_t a1, uint64_t *a2)
{
  v5 = v2;
  v7 = *a2;
  v8 = a2[1];
  v38[0] = 91;
  v38[1] = 0xE100000000000000;
  v36 = 0;
  v37 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v9 = StaticString.description.getter();
  v11 = v10;
  MEMORY[0x1C68F3410](v9);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  if (*(v2 + 152))
  {
    v12 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v12, v38);

    return;
  }

  swift_beginAccess();
  v13 = *(v2 + 112);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v11 = MEMORY[0x1C68F41F0](a1, v13);

    goto LABEL_7;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      goto LABEL_20;
    }

    v11 = *(v13 + 8 * a1 + 32);

LABEL_7:
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = 91;
    v15[4] = 0xE100000000000000;
    v15[5] = v7;
    v15[6] = v8;
    v16 = v11[6];
    v17 = v11[7];
    v11[6] = partial apply for closure #1 in __RKEntityActionGroup.performSequentialAction(at:context:);
    v11[7] = v15;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v16, v17);

    v3 = &v30;
    v4 = static os_log_type_t.info.getter();
    if (one-time initialization token for interactionsLoggingEnabled == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_8:
  v33 = v7;
  if (interactionsLoggingEnabled)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v36 = 0xD00000000000001FLL;
    v37 = 0x80000001C18E0780;
    v34 = a1;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v18);

    v19 = MEMORY[0x1C68F3410](8250, 0xE200000000000000);
    v20 = (*(*v11 + 440))(v19);
    MEMORY[0x1C68F3410](v20);

    a1 = v37;
    v32 = v36;
    if (one-time initialization token for interactionsLogger == -1)
    {
LABEL_10:
      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, interactionsLogger);

      v22 = Logger.logObject.getter();

      if (os_log_type_enabled(v22, v4))
      {
        v23 = swift_slowAlloc();
        HIDWORD(v30) = v4;
        v24 = v23;
        v25 = swift_slowAlloc();
        v31 = v3;
        v26 = v25;
        v36 = v25;
        *v24 = 136315394;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(91, 0xE100000000000000, &v36);
        *(v24 + 12) = 2080;
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, a1, &v36);

        *(v24 + 14) = v27;
        _os_log_impl(&dword_1C1358000, v22, BYTE4(v30), "%s%s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1C6902A30](v26, -1, -1);
        MEMORY[0x1C6902A30](v24, -1, -1);
      }

      else
      {
      }

      goto LABEL_15;
    }

LABEL_20:
    swift_once();
    goto LABEL_10;
  }

LABEL_15:
  v36 = v33;
  v37 = v8;
  (*(*v11 + 408))(&v36);
  swift_beginAccess();
  v28 = *(v5 + 96);
  v29 = *(v5 + 104);
  *(v5 + 96) = 1;
  *(v5 + 104) = 1;
  v34 = v28;
  v35 = v29;
  __RKEntityAction.state.didset(&v34);
}

void closure #1 in __RKEntityActionGroup.performSequentialAction(at:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v19[0] = a2;
    v19[1] = a3;
    v15 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v15, v19);
    return;
  }

  v10 = Strong;
  v11 = *(Strong + 136);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
LABEL_8:
    if (v12 < __CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_9:
    v17 = a2;
    v18 = a3;
    v16 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v16, &v17);
    v17 = a4;
    v18 = a5;
    __RKEntityActionGroup.checkForCompletion(with:)(&v17);
    goto LABEL_10;
  }

  *(Strong + 136) = v12;
  swift_beginAccess();
  v13 = *(v10 + 112);
  if (v13 >> 62)
  {
    goto LABEL_8;
  }

  if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = a2;
  v18 = a3;
  static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)();
  v14 = *(v10 + 136);
  v17 = a4;
  v18 = a5;
  __RKEntityActionGroup.performSequentialAction(at:context:)(v14, &v17);
LABEL_10:
}

uint64_t implicit closure #1 in closure #1 in __RKEntityActionGroup.performSequentialAction(at:context:)()
{
  _StringGuts.grow(_:)(60);
  MEMORY[0x1C68F3410](0xD00000000000003ALL, 0x80000001C18E07A0);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v0);

  return 0;
}

uint64_t __RKEntityActionGroup.perform(with:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v19 = 91;
  v20 = 0xE100000000000000;
  v17 = 0;
  v18 = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v4 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v4);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)();
  *(v1 + 152) = 0;
  swift_beginAccess();
  v5 = *(v1 + 112);
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:
    v17 = 91;
    v18 = 0xE100000000000000;
    v9 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v9, &v17);
    swift_beginAccess();
    v10 = *(v1 + 96);
    v11 = *(v1 + 104);
    *(v1 + 96) = 2;
    *(v1 + 104) = 1;
    v15 = v10;
    LOBYTE(v16) = v11;
    __RKEntityAction.state.didset(&v15);
    goto LABEL_12;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_9;
  }

LABEL_3:
  swift_beginAccess();
  if ((*(v1 + 120) & 1) == 0)
  {
    v15 = 91;
    v16 = 0xE100000000000000;
    v8 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v8, &v15);
    v15 = v3;
    v16 = v2;
    __RKEntityActionGroup.performConcurrentActions(with:)(&v15);
    goto LABEL_12;
  }

  v6 = *(v1 + 112);
  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_6;
    }

LABEL_11:
    v15 = 91;
    v16 = 0xE100000000000000;
    v12 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v12, &v15);
    goto LABEL_12;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  v15 = 91;
  v16 = 0xE100000000000000;
  v7 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v7, &v15);
  *(v1 + 136) = 0;
  v15 = v3;
  v16 = v2;
  __RKEntityActionGroup.performSequentialAction(at:context:)(0, &v15);
LABEL_12:
  v15 = 91;
  v16 = 0xE100000000000000;
  v13 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v13, &v15);

  return 1;
}

uint64_t implicit closure #1 in __RKEntityActionGroup.perform(with:)(uint64_t a1)
{
  _StringGuts.grow(_:)(19);

  swift_beginAccess();
  if (*(a1 + 112) >> 62)
  {
    __CocoaSet.count.getter();
  }

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](0x736E6F6974636120, 0xE800000000000000);
  return 0x736E6961746E6F43;
}

uint64_t __RKEntityActionGroup.allActions()()
{
  v14 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v1 = *(v0 + 112);
  if (v1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {

    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    v13 = i;
    while ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C68F41F0](v3, v1);
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_29;
      }

LABEL_11:
      type metadata accessor for __RKEntityActionGroup();
      if (!swift_dynamicCastClass())
      {

        MEMORY[0x1C68F3650](v11);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v4 = v14;
        goto LABEL_4;
      }

      v6 = __RKEntityActionGroup.allActions()();
      v7 = v6;
      if (v6 >> 62)
      {
        v8 = __CocoaSet.count.getter();
        if (!v8)
        {
LABEL_27:

          goto LABEL_4;
        }
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v8)
        {
          goto LABEL_27;
        }
      }

      if (v8 < 1)
      {
        goto LABEL_30;
      }

      for (j = 0; j != v8; ++j)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68F41F0](j, v7);
        }

        else
        {
        }

        MEMORY[0x1C68F3650](v10);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v4 = v14;

      i = v13;
LABEL_4:
      if (v3 == i)
      {

        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v5 = __OFADD__(v3++, 1);
    if (!v5)
    {
      goto LABEL_11;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

Swift::Bool __swiftcall __RKEntityActionGroup.runningExclusiveAndBlocksForCompletion()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
LABEL_23:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C68F41F0](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_17;
        }
      }

      if ((*(*v5 + 328))())
      {

LABEL_20:
        v9 = 1;
        goto LABEL_21;
      }

      swift_beginAccess();
      v7 = *(v5 + 96);
      v8 = *(v5 + 104);

      if (v8 == 1 && v7 == 1)
      {
        swift_beginAccess();
        if (*(v1 + 89) == 1)
        {
          swift_beginAccess();
          if (*(v1 + 90))
          {
            goto LABEL_20;
          }
        }
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v9 = 0;
LABEL_21:

  return v9;
}

void __RKEntityActionGroup.isExclusiveWith(action:)(uint64_t a1)
{
  if (v1 != a1)
  {
    swift_beginAccess();
    if (*(v1 + 89) != 1 || (swift_beginAccess(), (*(a1 + 89) & 1) == 0))
    {
      v3 = __RKEntityActionGroup.allActions()();
      v4 = v3;
      if (v3 >> 62)
      {
LABEL_36:
        v5 = __CocoaSet.count.getter();
        if (v5)
        {
LABEL_6:
          v6 = 0;
          v7 = v4 & 0xC000000000000001;
          v20 = v4 + 32;
          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          v22 = v4;
          v18 = v4 & 0xC000000000000001;
          v19 = v5;
          while (1)
          {
LABEL_7:
            if (v7)
            {
              v8 = MEMORY[0x1C68F41F0](v6, v4);
              v9 = __OFADD__(v6++, 1);
              if (v9)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if (v6 >= *(v21 + 16))
              {
                __break(1u);
                return;
              }

              v8 = *(v20 + 8 * v6);

              v9 = __OFADD__(v6++, 1);
              if (v9)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            type metadata accessor for __RKEntityActionGroup();
            if (swift_dynamicCastClass())
            {
              break;
            }

            v17 = (*(*v8 + 456))(a1);

            if (v17)
            {

              return;
            }

            if (v6 == v5)
            {
              goto LABEL_37;
            }
          }

          v10 = __RKEntityActionGroup.allActions()();
          v11 = v10;
          v12 = v10 & 0xFFFFFFFFFFFFFF8;
          if (v10 >> 62)
          {
            v13 = __CocoaSet.count.getter();
          }

          else
          {
            v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = 0;
          v4 = v11 & 0xC000000000000001;
          while (v13 != v14)
          {
            if (v4)
            {
              v15 = MEMORY[0x1C68F41F0](v14, v11);
              if (__OFADD__(v14, 1))
              {
                goto LABEL_33;
              }
            }

            else
            {
              if (v14 >= *(v12 + 16))
              {
                goto LABEL_34;
              }

              v15 = *(v11 + 8 * v14 + 32);

              if (__OFADD__(v14, 1))
              {
LABEL_33:
                __break(1u);
LABEL_34:
                __break(1u);
                goto LABEL_35;
              }
            }

            v16 = (*(*v8 + 456))(v15);

            ++v14;
            if (v16)
            {

              return;
            }
          }

          v4 = v22;
          v7 = v18;
          v5 = v19;
          if (v6 != v19)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
          goto LABEL_6;
        }
      }

LABEL_37:
    }
  }
}

uint64_t __RKEntityActionGroup.reversed()()
{
  v1 = v0;
  v13 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {

      v4 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (__OFSUB__(v3--, 1))
        {
          __break(1u);
LABEL_17:

          goto LABEL_18;
        }

        if ((v2 & 0xC000000000000001) == 0)
        {
          break;
        }

        v6 = MEMORY[0x1C68F41F0](v3, v2);
LABEL_11:
        if ((*(*v6 + 432))())
        {

          MEMORY[0x1C68F3650](v7);
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v4 = v13;
          if (!v3)
          {
            goto LABEL_17;
          }
        }

        else
        {

          if (!v3)
          {
            goto LABEL_17;
          }
        }
      }

      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v3 = __CocoaSet.count.getter();
      if (!v3)
      {
        goto LABEL_22;
      }
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v6 = *(v2 + 32 + 8 * v3);

    goto LABEL_11;
  }

LABEL_22:
  v4 = MEMORY[0x1E69E7CC0];
LABEL_18:
  swift_beginAccess();
  v12[0] = *(v0 + 120);
  type metadata accessor for __RKEntityActionGroup();
  swift_allocObject();
  v9 = __RKEntityActionGroup.init(actions:ordering:loopCount:)(v4, v12, 1, 0, v8);
  swift_beginAccess();
  v10 = *(v1 + 89);
  swift_beginAccess();
  *(v9 + 89) = v10;
  return v9;
}

Swift::Bool __swiftcall __RKEntityActionGroup.stop()()
{
  v11[0] = 91;
  v11[1] = 0xE100000000000000;
  v11[4] = 0;
  v11[5] = 0xE000000000000000;

  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0, 0xE000000000000000);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v1 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v1);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v2 = static os_log_type_t.info.getter();
  specialized InteractionsLogger.log(_:_:)(v2, v11);

  *(v0 + 152) = 1;
  LOBYTE(v3) = swift_beginAccess();
  v4 = *(v0 + 112);
  if (v4 >> 62)
  {
    v3 = __CocoaSet.count.getter();
    v5 = v3;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return v3;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C68F41F0](i, v4);
      v9 = v7;
    }

    else
    {
      v9 = *(v4 + 8 * i + 32);
    }

    (*(*v9 + 448))(v7, v8);
  }

LABEL_10:
  LOBYTE(v3) = 1;
  return v3;
}

uint64_t __RKEntityActionGroup.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(34);
  MEMORY[0x1C68F3410](0xD000000000000016, 0x80000001C18E0680);
  swift_beginAccess();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](5975337, 0xE300000000000000);
  swift_beginAccess();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0x28202D205DLL, 0xE500000000000000);
  swift_beginAccess();
  v2 = *(v0 + 112);
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3 >= 1)
  {
    while (1)
    {
      MEMORY[0x1C68F3410](5966090, 0xE300000000000000);
      v4 = *(v1 + 112);
      if ((v4 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 32);

        goto LABEL_6;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v3 = __CocoaSet.count.getter();
      if (v3 < 1)
      {
        goto LABEL_8;
      }
    }

    v5 = MEMORY[0x1C68F41F0](0, v4);

LABEL_6:
    v7 = (*(*v5 + 440))(v6);
    v9 = v8;

    MEMORY[0x1C68F3410](v7, v9);

    v10 = v3 - 1;
    if (v3 != 1)
    {
      v12 = 5;
      do
      {
        MEMORY[0x1C68F3410](592428, 0xE300000000000000);
        v13 = *(v1 + 112);
        if ((v13 & 0xC000000000000001) != 0)
        {

          v14 = MEMORY[0x1C68F41F0](v12 - 4, v13);
        }

        else
        {
          if ((v12 - 4) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v14 = *(v13 + 8 * v12);
        }

        v16 = (*(*v14 + 440))(v15);
        v18 = v17;

        MEMORY[0x1C68F3410](v16, v18);

        ++v12;
        --v10;
      }

      while (v10);
    }

    MEMORY[0x1C68F3410](679177, 0xE300000000000000);
  }

LABEL_8:
  MEMORY[0x1C68F3410](665865, 0xE300000000000000);
  return 0;
}

uint64_t __RKEntityActionGroup.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  v15 = MEMORY[0x1E69E7CC0];
  result = swift_beginAccess();
  v4 = *(v1 + 112);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_16:
    v7 = MEMORY[0x1E69E7CC0];
LABEL_17:
    swift_beginAccess();
    v13 = *(v1 + 120);
    swift_beginAccess();
    v10 = *(v1 + 128);
    v11 = type metadata accessor for __RKEntityActionGroup();
    swift_allocObject();
    result = __RKEntityActionGroup.init(actions:ordering:loopCount:)(v7, &v13, v10, 0, v12);
    a1[3] = v11;
    *a1 = result;
    return result;
  }

  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1C68F41F0](v6, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      (*(*v8 + 464))(v14, 0);
      type metadata accessor for __RKEntityAction();
      if (swift_dynamicCast())
      {

        MEMORY[0x1C68F3650](v9);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v7 = v15;
      }

      else
      {
      }

      ++v6;
    }

    while (v5 != v6);

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityActionGroup.clone(matching:newEntity:)(uint64_t a1, uint64_t a2)
{
  v19 = MEMORY[0x1E69E7CC0];
  result = swift_beginAccess();
  v4 = *(v2 + 112);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_15:
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:
    swift_beginAccess();
    v18 = *(v2 + 120);
    swift_beginAccess();
    v14 = *(v2 + 128);
    type metadata accessor for __RKEntityActionGroup();
    swift_allocObject();
    return __RKEntityActionGroup.init(actions:ordering:loopCount:)(v8, &v18, v14, 0, v15);
  }

  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C68F41F0](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = (*(*v9 + 472))(a1, a2);
      v12 = v11;
      if (v10)
      {
        v13 = swift_retain_n();
        MEMORY[0x1C68F3650](v13);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v8 = v19;
      }

      ++v7;

      v6 |= v12;
    }

    while (v5 != v7);

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t __RKEntityActionGroup.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  return v0;
}

uint64_t __RKEntityActionGroup.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32), *(v0 + 40));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48), *(v0 + 56));

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type __RKEntityActionGroup.Ordering and conformance __RKEntityActionGroup.Ordering()
{
  result = lazy protocol witness table cache variable for type __RKEntityActionGroup.Ordering and conformance __RKEntityActionGroup.Ordering;
  if (!lazy protocol witness table cache variable for type __RKEntityActionGroup.Ordering and conformance __RKEntityActionGroup.Ordering)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityActionGroup.Ordering, &type metadata for __RKEntityActionGroup.Ordering, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityActionGroup.Ordering and conformance __RKEntityActionGroup.Ordering);
  }

  return result;
}

float PhysicsBodyComponent.massProperties.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return result;
}

float PhysicsBodyComponent.massProperties.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  return result;
}

uint64_t PhysicsBodyComponent.material.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t PhysicsBodyComponent.isTranslationLocked.getter()
{
  if (v0[90])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[89])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v0[88] | v1;
}

uint64_t PhysicsBodyComponent.isTranslationLocked.setter(uint64_t result, char a2, char a3)
{
  v3[88] = result;
  v3[89] = a2;
  v3[90] = a3;
  return result;
}

uint64_t PhysicsBodyComponent.isRotationLocked.getter()
{
  if (v0[93])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[92])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | v0[91] | v1;
}

uint64_t PhysicsBodyComponent.isRotationLocked.setter(uint64_t result, char a2, char a3)
{
  v3[91] = result;
  v3[92] = a2;
  v3[93] = a3;
  return result;
}

void PhysicsBodyComponent.linearDamping.setter(float a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  *(v1 + 164) = a1;
}

void PhysicsBodyComponent.angularDamping.setter(float a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  *(v1 + 168) = a1;
}

void PhysicsBodyComponent.init()(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = static PhysicsMassProperties.default;
  v10 = *&qword_1EBEB2100;
  v11 = xmmword_1EBEB20F0;
  v9 = xmmword_1EBEB2110;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = static PhysicsMaterialResource.default;

  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v4 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v8 = v5;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v7 = vand_s8(__PAIR64__(v6, v8), vcgez_f32(__PAIR64__(v6, v8)));
  }

  else
  {
    v7 = 0x3E8000003CA3D70ALL;
  }

  *a1 = 2;
  *(a1 + 16) = v2;
  *(a1 + 32) = v11;
  *(a1 + 48) = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v3;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 164) = v7;
}

uint64_t PhysicsBodyComponent.init(massProperties:material:mode:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v17 = *(a1 + 2);
  v18 = *(a1 + 1);
  v16 = *(a1 + 3);
  v7 = *a3;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default == -1)
  {
    if (a2)
    {
LABEL_5:
      v8 = a2;
      goto LABEL_8;
    }
  }

  else
  {
    swift_once();
    if (a2)
    {
      goto LABEL_5;
    }
  }

  v8 = static PhysicsMaterialResource.default;

LABEL_8:

  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v9 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v15 = v10;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v14 = v11;

    v13 = vand_s8(__PAIR64__(v14, v15), vcgez_f32(__PAIR64__(v14, v15)));
  }

  else
  {

    v13 = 0x3E8000003CA3D70ALL;
  }

  *a4 = v7;
  *(a4 + 16) = v6;
  *(a4 + 32) = v18;
  *(a4 + 48) = v17;
  *(a4 + 64) = v16;
  *(a4 + 80) = v8;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0;
  *(a4 + 160) = 1;
  *(a4 + 164) = v13;
  return result;
}

uint64_t PhysicsBodyComponent.init(shapes:density:material:mode:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  specialized static ShapeResource.__makeShapeResource(_:)(a1);

  v8 = one-time initialization token for default;

  if (v8 != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = static PhysicsMaterialResource.default;

  REMakeMassFrameFromShapeAssetAndDensity();
  if (one-time initialization token for identity == -1)
  {
    v10 = a2;
    if (a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  swift_once();
  v10 = a2;
  if (!a2)
  {
LABEL_7:

    v10 = v9;
  }

LABEL_8:

  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v11 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v20 = v12;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v19 = v13;

    v14 = vand_s8(__PAIR64__(v19, v20), vcgez_f32(__PAIR64__(v19, v20)));
  }

  else
  {

    v14 = 0x3E8000003CA3D70ALL;
  }

  *a4 = v7;
  *(a4 + 16) = v26;
  *(a4 + 32) = v25;
  *(a4 + 48) = v23;
  *(a4 + 64) = v24;
  *(a4 + 80) = v10;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0;
  *(a4 + 160) = 1;
  *(a4 + 164) = v14;
  v15 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v15 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v22 = v16;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v21 = v17;

    *(a4 + 164) = vand_s8(__PAIR64__(v21, v22), vcgez_f32(__PAIR64__(v21, v22)));
  }

  else
  {
  }

  return result;
}

uint64_t PhysicsBodyComponent.init(shapes:mass:material:mode:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  specialized static ShapeResource.__makeShapeResource(_:)(a1);

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = static PhysicsMaterialResource.default;

  REMakeMassFrameFromShapeAssetAndMass();
  if (one-time initialization token for identity == -1)
  {
    v9 = a2;
    if (a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  swift_once();
  v9 = a2;
  if (!a2)
  {
LABEL_7:

    v9 = v8;
  }

LABEL_8:

  v10 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  if (MEMORY[0x1C68FE290](*(v10 + 16)))
  {
    REPhysicsSimulationServiceGetDefaultInitialLinearDamping();
    v16 = v11;
    REPhysicsSimulationServiceGetDefaultInitialAngularDamping();
    v15 = v12;

    v14 = vand_s8(__PAIR64__(v15, v16), vcgez_f32(__PAIR64__(v15, v16)));
  }

  else
  {

    v14 = 0x3E8000003CA3D70ALL;
  }

  *a4 = v7;
  *(a4 + 16) = v20;
  *(a4 + 32) = v19;
  *(a4 + 48) = v17;
  *(a4 + 64) = v18;
  *(a4 + 80) = v9;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0;
  *(a4 + 160) = 1;
  *(a4 + 164) = v14;
  return result;
}

uint64_t PhysicsBodyComponent.init(_:)@<X0>(uint64_t a2@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = static PhysicsMaterialResource.default;

  MotionType = RERigidBodyComponentGetMotionType();
  if (MotionType >= 3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = MotionType;
    RERigidBodyComponentGetMassFrame();
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    Material = RERigidBodyComponentGetMaterial();
    v26 = v5;
    if (Material)
    {
      v7 = Material;
      if (REAssetGetSwiftObject() && (type metadata accessor for PhysicsMaterialResource(), (v8 = swift_dynamicCastClass()) != 0))
      {
        v9 = v8;
      }

      else
      {
        type metadata accessor for PhysicsMaterialResource();
        v9 = swift_allocObject();
        *(v9 + 32) = v7;
        REPhysicsMaterialAssetGetStaticFriction();
        *(v9 + 16) = v10;
        REPhysicsMaterialAssetGetDynamicFriction();
        *(v9 + 20) = v11;
        REPhysicsMaterialAssetGetRestitution();
        *(v9 + 24) = v12;
        RERetain();
        REAssetSetSwiftObject();

        swift_unknownObjectRelease();
      }

      v25 = v9;
    }

    else
    {
      v25 = v3;
    }

    LockTranslationX = RERigidBodyComponentGetLockTranslationX();
    LockTranslationY = RERigidBodyComponentGetLockTranslationY();
    LockTranslationZ = RERigidBodyComponentGetLockTranslationZ();
    LockRotationX = RERigidBodyComponentGetLockRotationX();
    LockRotationY = RERigidBodyComponentGetLockRotationY();
    LockRotationZ = RERigidBodyComponentGetLockRotationZ();
    CCDEnabled = RERigidBodyComponentGetCCDEnabled();
    GravityEnabled = RERigidBodyComponentGetGravityEnabled();
    RERigidBodyComponentGetLinearDamping();
    RERigidBodyComponentGetAngularDamping();
    RERigidBodyComponentGetLinearDamping();
    v24 = v21;
    result = RERigidBodyComponentGetAngularDamping();
    *a2 = v26;
    *(a2 + 16) = v30;
    *(a2 + 32) = v29;
    *(a2 + 48) = v27;
    *(a2 + 64) = v28;
    *(a2 + 80) = v25;
    *(a2 + 88) = LockTranslationX;
    *(a2 + 89) = LockTranslationY;
    *(a2 + 90) = LockTranslationZ;
    *(a2 + 91) = LockRotationX;
    *(a2 + 92) = LockRotationY;
    *(a2 + 93) = LockRotationZ;
    *(a2 + 94) = CCDEnabled;
    *(a2 + 95) = 0u;
    *(a2 + 111) = 0u;
    *(a2 + 127) = 0u;
    *(a2 + 143) = 0u;
    *(a2 + 159) = 0;
    *(a2 + 160) = GravityEnabled;
    *(a2 + 164) = vand_s8(__PAIR64__(v23, v24), vcgez_f32(__PAIR64__(v23, v24)));
  }

  return result;
}

uint64_t PhysicsBodyComponent.__toCore(_:)(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 80);
  v5 = *(v2 + 95);
  RERigidBodyComponentSetMotionType();
  REMakeMassFrame();
  RERigidBodyComponentSetMassFrame();
  if (*(v3 + 32) && REAssetHandleIsLoaded() || (result = PhysicsMaterialResource.makeCoreAsset()(), *(v3 + 32)))
  {
    RERigidBodyComponentSetMaterial();
    RERigidBodyComponentSetLockTranslationX();
    RERigidBodyComponentSetLockTranslationY();
    RERigidBodyComponentSetLockTranslationZ();
    RERigidBodyComponentSetLockRotationX();
    RERigidBodyComponentSetLockRotationY();
    RERigidBodyComponentSetLockRotationZ();
    RERigidBodyComponentSetCCDEnabled();
    RERigidBodyComponentSetCCDVelocityThreshold();
    RERigidBodyComponentSetCanSleep();
    RERigidBodyComponentSetGravityEnabled();
    RERigidBodyComponentSetLinearDamping();
    RERigidBodyComponentSetAngularDamping();
    RERigidBodyComponentAddUserForce();
    RERigidBodyComponentAddUserTorque();
    RERigidBodyComponentAddUserLinearImpulse();
    RERigidBodyComponentAddUserAngularImpulse();
    if (v5)
    {
      RERigidBodyComponentTeleport();
    }

    return RENetworkMarkComponentDirty();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*PhysicsBodyComponent.isAffectedByGravity.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 160);
  return PhysicsBodyComponent.isAffectedByGravity.modify;
}

float *(*PhysicsBodyComponent.linearDamping.modify(uint64_t a1))(float *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 164);
  return PhysicsBodyComponent.linearDamping.modify;
}

float *PhysicsBodyComponent.linearDamping.modify(float *result)
{
  v1 = result[2];
  if (v1 < 0.0)
  {
    v1 = 0.0;
  }

  *(*result + 164) = v1;
  return result;
}

float *(*PhysicsBodyComponent.angularDamping.modify(uint64_t a1))(float *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 168);
  return PhysicsBodyComponent.angularDamping.modify;
}

float *PhysicsBodyComponent.angularDamping.modify(float *result)
{
  v1 = result[2];
  if (v1 < 0.0)
  {
    v1 = 0.0;
  }

  *(*result + 168) = v1;
  return result;
}

uint64_t PhysicsBodyComponent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = v1[7];
  v9 = v1[9];
  v50 = v1[8];
  v51[0] = v9;
  *(v51 + 12) = *(v1 + 156);
  v10 = v1[3];
  v11 = v1[5];
  v46 = v1[4];
  v47 = v11;
  v12 = v1[5];
  v13 = v1[7];
  v48 = v1[6];
  v49 = v13;
  v14 = v1[1];
  v42 = *v1;
  v43 = v14;
  v15 = v1[3];
  v17 = *v1;
  v16 = v1[1];
  v44 = v1[2];
  v45 = v15;
  v18 = v1[9];
  v40[19] = v50;
  v41[0] = v18;
  *(v41 + 12) = *(v1 + 156);
  v40[15] = v46;
  v40[16] = v12;
  v40[17] = v48;
  v40[18] = v8;
  v40[11] = v17;
  v40[12] = v16;
  v40[13] = v44;
  v40[14] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C18A1E70;
  strcpy((v19 + 32), "massProperties");
  *(v19 + 47) = -18;
  v20 = v43;
  v36 = v45;
  v37 = v44;
  v35 = v46;
  *(v19 + 72) = &type metadata for PhysicsMassProperties;
  v21 = swift_allocObject();
  *(v19 + 48) = v21;
  *(v21 + 16) = v20;
  v22 = v36;
  *(v21 + 32) = v37;
  *(v21 + 48) = v22;
  *(v21 + 64) = v35;
  *(v19 + 80) = 0x6C6169726574616DLL;
  *(v19 + 88) = 0xE800000000000000;
  v23 = v47;
  v24 = type metadata accessor for PhysicsMaterialResource();
  *(v19 + 96) = v23;
  *(v19 + 120) = v24;
  *(v19 + 128) = 1701080941;
  *(v19 + 136) = 0xE400000000000000;
  *(v19 + 144) = v42;
  *(v19 + 168) = &type metadata for PhysicsBodyMode;
  *(v19 + 176) = 0xD000000000000025;
  *(v19 + 184) = 0x80000001C18E07E0;
  v25 = MEMORY[0x1E69E6370];
  *(v19 + 192) = BYTE14(v47);
  *(v19 + 216) = v25;
  *(v19 + 224) = 0xD000000000000010;
  *(v19 + 232) = 0x80000001C18E0810;
  v26 = BYTE11(v47);
  v27 = BYTE12(v47);
  v28 = BYTE13(v47);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb1x_Sb1ySb1ztMd, &_sSb1x_Sb1ySb1ztMR);
  *(v19 + 240) = v26;
  *(v19 + 241) = v27;
  *(v19 + 242) = v28;
  *(v19 + 264) = v29;
  *(v19 + 272) = 0xD000000000000013;
  *(v19 + 280) = 0x80000001C18E0830;
  v30 = BYTE9(v47);
  v31 = BYTE10(v47);
  *(v19 + 288) = BYTE8(v47);
  *(v19 + 289) = v30;
  *(v19 + 290) = v31;
  *(v19 + 312) = v29;
  *(v19 + 320) = 0xD000000000000013;
  *(v19 + 328) = 0x80000001C18E0850;
  *(v19 + 336) = v51[1];
  *(v19 + 360) = v25;
  strcpy((v19 + 368), "angularDamping");
  *(v19 + 383) = -18;
  v32 = DWORD2(v51[1]);
  *(v19 + 408) = MEMORY[0x1E69E6448];
  *(v19 + 384) = v32;
  v33 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v38);
  outlined init with copy of PhysicsBodyComponent(&v42, v40);
  outlined init with copy of PhysicsBodyComponent(&v42, v40);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized static PhysicsBodyComponent.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || (v2 = *(a1 + 10), v3 = a1[88], v4 = a1[89], v26 = a1[90], v27 = a1[91], v28 = a1[92], v29 = a1[93], v5 = a1[94], v6 = *(a2 + 10), v7 = a2[88], v8 = a2[89], v9 = a2[90], v10 = a2[91], v11 = a2[92], v24 = a2[93], v25 = a2[94], v13 = *(a2 + 3), v12 = *(a2 + 4), v14 = *(a2 + 2), v15 = *(a2 + 4), v17 = *(a1 + 3), v16 = *(a1 + 4), v18 = *(a1 + 2), v34[0] = *(a1 + 4), v35 = v18, v36 = v17, v37 = v16, v30[0] = v15, v31 = v14, v32 = v13, v33 = v12, (specialized static PhysicsMassProperties.== infix(_:_:)(v34, v30) & 1) == 0))
  {
    v22 = 0;
    return v22 & 1;
  }

  v23 = v5;
  v19 = *(v2 + 32);
  if (v19 && REAssetHandleIsLoaded() || (result = PhysicsMaterialResource.makeCoreAsset()(), (v19 = *(v2 + 32)) != 0))
  {
    v21 = *(v6 + 32);
    if (v21 && (REAssetHandleIsLoaded() & 1) != 0 || (result = PhysicsMaterialResource.makeCoreAsset()(), (v21 = *(v6 + 32)) != 0))
    {
      v22 = (v19 == v21) & (v3 ^ v7 ^ 1) & (v4 ^ v8 ^ 1) & (v26 ^ v9 ^ 1) & (v27 ^ v10 ^ 1) & (v28 ^ v11 ^ 1) & (v29 ^ v24 ^ 1) & (v23 ^ v25 ^ 1);
      return v22 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy172_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsBodyComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 172))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicsBodyComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 172) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 172) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

RealityFoundation::EmphasizeAction::EmphasisAnimationStyle_optional __swiftcall EmphasizeAction.EmphasisAnimationStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

RealityFoundation::EmphasizeAction::EmphasisMotionType_optional __swiftcall EmphasizeAction.EmphasisMotionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

RealityFoundation::EmphasizeAction __swiftcall EmphasizeAction.init(motionType:style:isAdditive:)(RealityFoundation::EmphasizeAction::EmphasisMotionType motionType, RealityFoundation::EmphasizeAction::EmphasisAnimationStyle style, Swift::Bool isAdditive)
{
  v4 = *style;
  *v3 = *motionType;
  v3[1] = v4;
  v3[2] = isAdditive;
  result.motionType = motionType;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance EmphasizeAction.CodingKeys()
{
  v1 = 0x656C797473;
  if (*v0 != 1)
  {
    v1 = 0x6974696464417369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79546E6F69746F6DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EmphasizeAction.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized EmphasizeAction.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EmphasizeAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EmphasizeAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EmphasizeAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation15EmphasizeActionV10CodingKeys33_E699831EBE028D6E5AB1535E33CC636ELLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation15EmphasizeActionV10CodingKeys33_E699831EBE028D6E5AB1535E33CC636ELLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11[2] = v1[2];
  v12 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v8;
  v16 = 0;
  lazy protocol witness table accessor for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = v12;
    v14 = 1;
    lazy protocol witness table accessor for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.CodingKeys, &unk_1F40F2A80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.CodingKeys, &unk_1F40F2A80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.CodingKeys, &unk_1F40F2A80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.CodingKeys, &unk_1F40F2A80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType()
{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.EmphasisMotionType, &type metadata for EmphasizeAction.EmphasisMotionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.EmphasisMotionType, &type metadata for EmphasizeAction.EmphasisMotionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.EmphasisMotionType, &type metadata for EmphasizeAction.EmphasisMotionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.EmphasisMotionType, &type metadata for EmphasizeAction.EmphasisMotionType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle()
{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.EmphasisAnimationStyle, &type metadata for EmphasizeAction.EmphasisAnimationStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.EmphasisAnimationStyle, &type metadata for EmphasizeAction.EmphasisAnimationStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.EmphasisAnimationStyle, &type metadata for EmphasizeAction.EmphasisAnimationStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle;
  if (!lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmphasizeAction.EmphasisAnimationStyle, &type metadata for EmphasizeAction.EmphasisAnimationStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle);
  }

  return result;
}

uint64_t EmphasizeAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation15EmphasizeActionV10CodingKeys33_E699831EBE028D6E5AB1535E33CC636ELLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation15EmphasizeActionV10CodingKeys33_E699831EBE028D6E5AB1535E33CC636ELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EmphasizeAction.CodingKeys and conformance EmphasizeAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = 0;
    lazy protocol witness table accessor for type EmphasizeAction.EmphasisMotionType and conformance EmphasizeAction.EmphasisMotionType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v18;
    v15 = 1;
    lazy protocol witness table accessor for type EmphasizeAction.EmphasisAnimationStyle and conformance EmphasizeAction.EmphasisAnimationStyle();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v16;
    v14 = 2;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for EmphasizeAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for EmphasizeAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void EmphasizeActionHandler.actionStarted(event:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v18 = *a1;
    v19 = v2;
    v27 = *(a1 + 136);
    v28 = *(a1 + 152);
    v29 = *(a1 + 168);
    v30 = *(a1 + 184);
    v23 = *(a1 + 72);
    v24 = *(a1 + 88);
    v25 = *(a1 + 104);
    v26 = *(a1 + 120);
    v20 = *(a1 + 24);
    v21 = *(a1 + 40);
    v22 = *(a1 + 56);

    v3 = specialized EmphasizeActionHandler.createTransformData(event:targetEntity:)(&v18, v2);
    if (v3)
    {
      v4 = v3;

      *(v1 + 8) = v4;
      *v1 = 1.0 / *(v4 + 2);
      return;
    }

    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(66);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    v31 = &type metadata for EmphasizeAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15EmphasizeActionVmMd, &_s17RealityFoundation15EmphasizeActionVmMR);
    v12 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v12);

    MEMORY[0x1C68F3410](0xD000000000000034, 0x80000001C18E08D0);
    v13 = v18;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static AnimationLogger.logger);

    v8 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, *(&v13 + 1), &v18);
      _os_log_impl(&dword_1C1358000, v8, v15, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1C6902A30](v17, -1, -1);
      MEMORY[0x1C6902A30](v16, -1, -1);
    }
  }

  else
  {
    _StringGuts.grow(_:)(46);

    strcpy(&v18, "Handler for ");
    BYTE13(v18) = 0;
    HIWORD(v18) = -5120;
    v31 = &type metadata for EmphasizeAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15EmphasizeActionVmMd, &_s17RealityFoundation15EmphasizeActionVmMR);
    v5 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v5);

    MEMORY[0x1C68F3410](0xD000000000000020, 0x80000001C18E08A0);
    v6 = v18;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static AnimationLogger.logger);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, *(&v6 + 1), &v18);
      _os_log_impl(&dword_1C1358000, v8, v9, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1C6902A30](v11, -1, -1);
      MEMORY[0x1C6902A30](v10, -1, -1);
    }
  }
}

void *EmphasizeActionHandler.actionUpdated(event:)(void *result)
{
  v2 = *(result + 11);
  v43 = *(result + 10);
  v44 = v2;
  v45 = result[24];
  v3 = *(result + 7);
  v39 = *(result + 6);
  v40 = v3;
  v4 = *(result + 9);
  v41 = *(result + 8);
  v42 = v4;
  v5 = *(result + 3);
  v35 = *(result + 2);
  v36 = v5;
  v6 = *(result + 5);
  v37 = *(result + 4);
  v38 = v6;
  v7 = *(result + 1);
  v33 = *result;
  v34 = v7;
  if ((BYTE8(v39) & 1) == 0)
  {
    v8 = *&v39;
    specialized ActionEvent.animationState.getter(&v27);
    if (!*(&v28 + 1))
    {
      return outlined destroy of AnimationStateProtocol?(&v27);
    }

    outlined init with take of ForceEffectBase(&v27, v30);
    v9 = v8 / *v1;
    v10 = floor(v9);
    v11 = v10 + ceil(v9 - v10) + 0.5;
    if (COERCE__INT64(fabs(v11)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v11 > -9.22337204e18)
    {
      if (v11 < 9.22337204e18)
      {
        v12 = v11;
        v13 = *(v1 + 8);
        v14 = *(v13 + 16);
        if (v14 > v11)
        {
          if (v12)
          {
            if (!__OFSUB__(v12, 1))
            {
              if (v12 - 1 < v14)
              {
                if ((v12 & 0x8000000000000000) == 0)
                {
                  RESRTLerp();
                  v25 = v15;
                  v26 = v16;
                  v24 = v17;
                  if (one-time initialization token for identity == -1)
                  {
LABEL_12:
                    v18 = v31;
                    v19 = v32;
                    __swift_project_boxed_opaque_existential_1(v30, v31);
                    v27 = v25;
                    v28 = v26;
                    v29 = v24;
LABEL_19:
                    (*(v19 + 64))(&v27, &type metadata for Transform, v18, v19);
                    return __swift_destroy_boxed_opaque_existential_1(v30);
                  }

LABEL_28:
                  swift_once();
                  goto LABEL_12;
                }

LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

          v18 = v31;
          v19 = v32;
          result = __swift_project_boxed_opaque_existential_1(v30, v31);
          if (!v14)
          {
            __break(1u);
            return result;
          }

          v21 = *(v13 + 32);
          v22 = *(v13 + 48);
          v23 = *(v13 + 64);
LABEL_18:
          v27 = v21;
          v28 = v22;
          v29 = v23;
          goto LABEL_19;
        }

        v18 = v31;
        v19 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        if (v14)
        {
          v20 = (v13 + 48 * v14);
          v21 = *(v20 - 1);
          v22 = *v20;
          v23 = v20[1];
          goto LABEL_18;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

void specialized ActionEvent.animationState.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 192))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 184);
  }

  if (*(v1 + 208))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 200);
  }

  if (*(v1 + 176))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = *(v1 + 168);
  }

  v6 = *(v1 + 160);
  if (!v6)
  {
    goto LABEL_23;
  }

  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v8 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v8 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v9 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v8 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v9 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v10 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v8 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v9 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v10 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v10, v8, v9);
  v11 = swift_allocObject();
  *a1 = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  *(v11 + 32) = v4;
  *(v11 + 40) = v6;
}

{
  if (*(v1 + 352))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 344);
  }

  if (*(v1 + 368))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 360);
  }

  if (*(v1 + 336))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = *(v1 + 328);
  }

  v6 = *(v1 + 320);
  if (!v6)
  {
    goto LABEL_23;
  }

  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v8 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v8 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v9 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v8 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v9 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v10 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v8 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v9 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v10 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v10, v8, v9);
  v11 = swift_allocObject();
  *a1 = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  *(v11 + 32) = v4;
  *(v11 + 40) = v6;
}

{
  if (*(v1 + 256))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 248);
  }

  if (*(v1 + 272))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 264);
  }

  if (*(v1 + 240))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = *(v1 + 232);
  }

  v6 = *(v1 + 224);
  if (!v6)
  {
    goto LABEL_23;
  }

  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v8 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v8 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v9 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v8 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v9 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v10 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v8 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v9 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v10 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v10, v8, v9);
  v11 = swift_allocObject();
  *a1 = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  *(v11 + 32) = v4;
  *(v11 + 40) = v6;
}

{
  if (*(v1 + 208))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 200);
  }

  if (*(v1 + 224))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 216);
  }

  if (*(v1 + 192))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = *(v1 + 184);
  }

  v6 = *(v1 + 176);
  if (!v6)
  {
    goto LABEL_23;
  }

  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v8 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v8 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v9 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v8 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v9 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v10 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v8 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v9 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v10 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v10, v8, v9);
  v11 = swift_allocObject();
  *a1 = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  *(v11 + 32) = v4;
  *(v11 + 40) = v6;
}

{
  if (*(v1 + 88))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 80);
  }

  if (*(v1 + 104))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 96);
  }

  if (*(v1 + 72))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = *(v1 + 64);
  }

  v6 = *(v1 + 56);
  if (!v6)
  {
    goto LABEL_23;
  }

  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v8 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v8 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v9 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v8 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v9 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v10 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v8 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v9 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v10 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v10, v8, v9);
  v11 = swift_allocObject();
  *a1 = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  *(v11 + 32) = v4;
  *(v11 + 40) = v6;
}

{
  if (*(v1 + 176))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 168);
  }

  if (*(v1 + 192))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 184);
  }

  if (*(v1 + 160))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = *(v1 + 152);
  }

  v6 = *(v1 + 144);
  if (!v6)
  {
    goto LABEL_23;
  }

  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v8 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v8 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v9 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v8 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v9 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v10 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v8 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v9 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v10 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v10, v8, v9);
  v11 = swift_allocObject();
  *a1 = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  *(v11 + 32) = v4;
  *(v11 + 40) = v6;
}

{
  if (*(v1 + 144))
  {
    v3 = -1.0;
  }

  else
  {
    v3 = *(v1 + 136);
  }

  if (*(v1 + 160))
  {
    v4 = -1.0;
  }

  else
  {
    v4 = *(v1 + 152);
  }

  if (*(v1 + 128))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = *(v1 + 120);
  }

  v6 = *(v1 + 112);
  if (!v6)
  {
    goto LABEL_23;
  }

  AnimatedType = RETimelineEventGetAnimatedType();
  if (AnimatedType <= 3)
  {
    if (AnimatedType > 1)
    {
      if (AnimatedType == 2)
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD2VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD2<Float>> and conformance AnimationState<A>;
      }

      else
      {
        v8 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd;
        v9 = &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR;
        *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD3VySfGGMR);
        v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD3<Float>> and conformance AnimationState<A>;
      }
    }

    else if (AnimatedType)
    {
      v8 = &_s17RealityFoundation14AnimationStateVySdGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySdGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySdGMd, &_s17RealityFoundation14AnimationStateVySdGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Double> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySfGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySfGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySfGMd, &_s17RealityFoundation14AnimationStateVySfGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<Float> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType <= 5)
  {
    if (AnimatedType == 4)
    {
      v8 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd;
      v9 = &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMd, &_s17RealityFoundation14AnimationStateVys5SIMD4VySfGGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<SIMD4<Float>> and conformance AnimationState<A>;
    }

    else
    {
      v8 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd;
      v9 = &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMd, &_s17RealityFoundation14AnimationStateVySo10simd_quatfaGMR);
      v10 = &lazy protocol witness table cache variable for type AnimationState<simd_quatf> and conformance AnimationState<A>;
    }

    goto LABEL_28;
  }

  if (AnimatedType == 6)
  {
    v8 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd;
    v9 = &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR;
    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMd, &_s17RealityFoundation14AnimationStateVy0A3Kit9TransformVGMR);
    v10 = &lazy protocol witness table cache variable for type AnimationState<Transform> and conformance AnimationState<A>;
    goto LABEL_28;
  }

  if (AnimatedType != 7)
  {
LABEL_23:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v8 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd;
  v9 = &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR;
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMd, &_s17RealityFoundation14AnimationStateVyAA15JointTransformsVGMR);
  v10 = &lazy protocol witness table cache variable for type AnimationState<JointTransforms> and conformance AnimationState<A>;
LABEL_28:
  *(a1 + 32) = lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(v10, v8, v9);
  v11 = swift_allocObject();
  *a1 = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  *(v11 + 32) = v4;
  *(v11 + 40) = v6;
}

uint64_t specialized EmphasizeAction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79546E6F69746F6DLL && a2 == 0xEA00000000006570;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974696464417369 && a2 == 0xEA00000000006576)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t outlined destroy of AnimationStateProtocol?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AnimationState<JointTransforms> and conformance AnimationState<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationState<A>, v5);
    atomic_store(result, a1);
  }

  return result;
}

char *specialized EmphasizeActionHandler.createTransformData(event:targetEntity:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a1[8];
  v4 = a1[10];
  if (v3 > 3)
  {
    if (a1[8] > 5u)
    {
      if (v3 == 6)
      {
        v14 = a1[9];
        v5 = specialized static EmphasizeAnimations.createEmphasizePulseAnimation(style:)(&v14);
      }

      else
      {
        v15 = a1[9];
        v5 = specialized static EmphasizeAnimations.createEmphasizeSpinAnimation(style:)(&v15);
      }
    }

    else if (v3 == 4)
    {
      v12 = a1[9];
      v5 = specialized static EmphasizeAnimations.createEmphasizeFloatAnimation(style:)(&v12);
    }

    else
    {
      v13 = a1[9];
      v5 = specialized static EmphasizeAnimations.createEmphasizeJiggleAnimation(style:)(&v13);
    }
  }

  else if (a1[8] > 1u)
  {
    if (v3 == 2)
    {
      v10 = a1[9];
      v5 = specialized static EmphasizeAnimations.createEmphasizeBounceAnimation(style:)(&v10);
    }

    else
    {
      v11 = a1[9];
      v5 = specialized static EmphasizeAnimations.createEmphasizeFlipAnimation(style:)(&v11);
    }
  }

  else if (a1[8])
  {
    v9 = a1[9];
    v5 = specialized static EmphasizeAnimations.createEmphasizeBlinkAnimation(style:)(&v9);
  }

  else
  {
    v8 = a1[9];
    v5 = specialized static EmphasizeAnimations.createEmphasizePopAnimation(style:)(&v8);
  }

  v6 = specialized static EmphasizeAnimations.bakeEmphasisTransforms(_:transforms:isAdditive:)(a2, v5, v4);

  return v6;
}

uint64_t __RKRuntimeSceneCoordinator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t __RKRuntimeSceneCoordinator.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

double __RKRuntimeSceneCoordinator.willSwap(fromEntity:toEntity:anchoringTarget:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v8 = *(v3 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;

    do
    {
      outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v10, v13);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = v14;
        ObjectType = swift_getObjectType();
        (*(v11 + 8))(v3, a1, a2, a3, ObjectType, v11);
        swift_unknownObjectRelease();
      }

      outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v13);
      v10 += 16;
      --v9;
    }

    while (v9);
  }

  return result;
}

double __RKRuntimeSceneCoordinator.didSwap(fromEntity:toEntity:anchoringTarget:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v8 = *(v3 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;

    do
    {
      outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v10, v13);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = v14;
        ObjectType = swift_getObjectType();
        (*(v11 + 16))(v3, a1, a2, a3, ObjectType, v11);
        swift_unknownObjectRelease();
      }

      outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v13);
      v10 += 16;
      --v9;
    }

    while (v9);
  }

  return result;
}

void __RKRuntimeSceneCoordinator.addObserver(observer:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;

    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v7, v13);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v13);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          return;
        }
      }

      ++v8;
      v7 += 16;
      if (v6 == v8)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v15 = a2;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  a1 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
    *(v2 + 16) = a1;
  }

  v12 = a1[2];
  v11 = a1[3];
  if (v12 >= v11 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, a1);
  }

  a1[2] = v12 + 1;
  outlined init with take of __RKRuntimeSceneCoordinator.WeakObserver(v14, &a1[2 * v12 + 4]);
  *(v2 + 16) = a1;
  swift_endAccess();
}

void __RKRuntimeSceneCoordinator.removeObserver(observer:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    v6 = 0;
    while (v6 < *(v3 + 16))
    {
      outlined init with copy of __RKRuntimeSceneCoordinator.WeakObserver(v5, v8);
      Strong = swift_unknownObjectWeakLoadStrong();
      outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v8);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {

          swift_beginAccess();
          specialized Array.remove(at:)(v6, v9);
          outlined destroy of __RKRuntimeSceneCoordinator.WeakObserver(v9);
          swift_endAccess();
          return;
        }
      }

      ++v6;
      v5 += 16;
      if (v4 == v6)
      {

        return;
      }
    }

    __break(1u);
  }
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    outlined init with take of __RKRuntimeSceneCoordinator.WeakObserver(&v5[2 * a1 + 4], a2);
    result = swift_arrayInitWithTakeFrontToBack();
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = outlined init with take of PhotogrammetrySessionImpl.RequestMap.Entry(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 40);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = v11;
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 32 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 24);
    v12 = *(v9 + 28);
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = v11;
    *(a2 + 28) = v12;
    result = memmove(v9, (v9 + 32), 32 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    result = memmove(v9, (v9 + 24), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 160 * a1);
    v9 = v8[9];
    v10 = v7 - 1;
    a2[6] = v8[8];
    a2[7] = v9;
    v11 = v8[11];
    a2[8] = v8[10];
    a2[9] = v11;
    v12 = v8[5];
    a2[2] = v8[4];
    a2[3] = v12;
    v13 = v8[7];
    a2[4] = v8[6];
    a2[5] = v13;
    v14 = v8[3];
    *a2 = v8[2];
    a2[1] = v14;
    result = memmove(v8 + 2, v8 + 12, 160 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = (v5 + (a1 << 6));
    v10 = v9[3];
    *a2 = v9[2];
    a2[1] = v10;
    a2[2] = v9[4];
    *(a2 + 41) = *(v9 + 73);
    result = memmove(v9 + 2, v9 + 6, (v8 - a1) << 6);
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 96 * a1);
    v9 = v8[5];
    v10 = v7 - 1;
    a2[2] = v8[4];
    a2[3] = v9;
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[3];
    *a2 = v8[2];
    a2[1] = v12;
    result = memmove(v8 + 2, v8 + 8, 96 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t __RKRuntimeSceneCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for __RKRuntimeSceneCoordinator.WeakObserver(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for __RKRuntimeSceneCoordinator.WeakObserver(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t outlined init with take of PhotogrammetrySessionImpl.RequestMap.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

const char **didAddAnchoringComponentObject(componentRef:)(uint64_t a1)
{
  v1 = type metadata accessor for Data.Deallocator();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  result = RECustomComponentGetObject();
  if (result)
  {
    v12 = result;
    v13 = *(type metadata accessor for __REAnchoring(0) + 20);
    outlined init with copy of __REAnchoringType?(v12 + v13, v10);
    v14 = type metadata accessor for __REAnchoringType(0);
    v15 = *(v14 - 8);
    v16 = (*(v15 + 48))(v10, 1, v14);
    result = outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    if (v16 == 1)
    {
      v17 = *v12;
      if (*v12)
      {
        v18 = strlen(*v12);
        (*(v2 + 104))(v4, *MEMORY[0x1E6969010], v1);
        v19 = specialized Data.init(bytesNoCopy:count:deallocator:)(v17, v18, v4);
        v21 = v20;
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        lazy protocol witness table accessor for type __REAnchoringType and conformance __REAnchoringType(&lazy protocol witness table cache variable for type __REAnchoringType and conformance __REAnchoringType, protocol conformance descriptor for __REAnchoringType);
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        (*(v15 + 56))(v7, 0, 1, v14);

        outlined consume of Data._Representation(v19, v21);
      }

      else
      {
        (*(v15 + 56))(v7, 1, 1, v14);
      }

      return outlined assign with take of __REAnchoringType?(v7, v12 + v13);
    }
  }

  return result;
}

uint64_t cloneAnchoringComponent(_:)(uint64_t a1)
{
  v1 = type metadata accessor for __REAnchoring(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Class = REComponentGetClass();
  v5 = REComponentCreateByClassOpaquePointer_0(Class);
  Object = RECustomComponentGetObject();
  if (!Object)
  {
    v13 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v13, &dword_1C1358000, v14, "cloneAnchorComponent: Failed to get original Swift component.", 61, 2, MEMORY[0x1E69E7CC0]);
LABEL_9:

    return v5;
  }

  v7 = Object;
  v8 = RECustomComponentGetObject();
  if (!v8)
  {
    v15 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v15, &dword_1C1358000, v14, "cloneAnchorComponent: Failed to get cloned Swift component.", 59, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = *(v1 + 24);
  if (!*(v7 + v10))
  {
    v11 = *v7;
    if (*v7)
    {
      type metadata accessor for IntrospectionDataCleanupHelper();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v7 + v10) = v12;
    }
  }

  outlined init with copy of __REAnchoringType(v7, v3, type metadata accessor for __REAnchoring);
  outlined destroy of __REAnchoringType(v9, type metadata accessor for __REAnchoring);
  outlined init with take of __REAnchoringType(v3, v9, type metadata accessor for __REAnchoring);
  return v5;
}

uint64_t __REAnchoring.type.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for Data.Deallocator();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - v8;
  v10 = type metadata accessor for __REAnchoring(0);
  outlined init with copy of __REAnchoringType?(v1 + *(v10 + 20), v9);
  v11 = type metadata accessor for __REAnchoringType(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    v14 = *v1;
    if (v14)
    {
      v21[0] = v13;
      v15 = strlen(v14);
      (*(v4 + 104))(v6, *MEMORY[0x1E6969010], v3);
      v16 = a1;
      v17 = specialized Data.init(bytesNoCopy:count:deallocator:)(v14, v15, v6);
      v19 = v18;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      lazy protocol witness table accessor for type __REAnchoringType and conformance __REAnchoringType(&lazy protocol witness table cache variable for type __REAnchoringType and conformance __REAnchoringType, protocol conformance descriptor for __REAnchoringType);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      (*(v12 + 56))(v16, 0, 1, v11);

      outlined consume of Data._Representation(v17, v19);
      v13 = v21[0];
    }

    else
    {
      (*(v12 + 56))(a1, 1, 1, v11);
    }

    result = v13(v9, 1, v11);
    if (result != 1)
    {
      return outlined destroy of BodyTrackingComponent?(v9, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    }
  }

  else
  {
    outlined init with take of __REAnchoringType(v9, a1, type metadata accessor for __REAnchoringType);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }

  return result;
}

uint64_t type metadata accessor for __REAnchoring(uint64_t a1)
{
  result = type metadata singleton initialization cache for __REAnchoring;
  if (!type metadata singleton initialization cache for __REAnchoring)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of __REAnchoringType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for __REAnchoring.type : __REAnchoring(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  outlined init with copy of __REAnchoringType?(a1, &v6 - v3);
  return __REAnchoring.type.setter(v4);
}

uint64_t __REAnchoring.type.setter(uint64_t a1)
{
  v3 = type metadata accessor for __REAnchoringType(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSg_ADtMd, &_s10RealityKit17__REAnchoringTypeOSg_ADtMR);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v45 = type metadata accessor for __REAnchoring(0);
  v46 = v1;
  v44 = *(v45 + 20);
  outlined init with copy of __REAnchoringType?(v1 + v44, v16);
  v17 = *(v8 + 56);
  v18 = a1;
  outlined init with copy of __REAnchoringType?(a1, v10);
  outlined init with copy of __REAnchoringType?(v16, &v10[v17]);
  v19 = *(v4 + 48);
  if (v19(v10, 1, v3) != 1)
  {
    outlined init with copy of __REAnchoringType?(v10, v13);
    if (v19(&v10[v17], 1, v3) != 1)
    {
      outlined init with take of __REAnchoringType(&v10[v17], v6, type metadata accessor for __REAnchoringType);
      v21 = specialized static __REAnchoringType.== infix(_:_:)(v13, v6);
      outlined destroy of __REAnchoringType(v6, type metadata accessor for __REAnchoringType);
      outlined destroy of BodyTrackingComponent?(v16, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      outlined destroy of __REAnchoringType(v13, type metadata accessor for __REAnchoringType);
      outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      v20 = v18;
      if (v21)
      {
        return outlined destroy of BodyTrackingComponent?(v20, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
      }

LABEL_7:
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      lazy protocol witness table accessor for type __REAnchoringType? and conformance <A> A?();
      v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v24 = v23;

      v26 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        v28 = v45;
        v27 = v46;
        if (v26 != 2)
        {
          goto LABEL_27;
        }

        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        v31 = __OFSUB__(v29, v30);
        v32 = v29 - v30;
        if (!v31)
        {
LABEL_22:
          if (v32 > 2147483646)
          {
            goto LABEL_41;
          }

          if (v26 != 2)
          {
            v43 = HIDWORD(v22) - v22;
            if (__OFSUB__(HIDWORD(v22), v22))
            {
LABEL_55:
              __break(1u);
              return result;
            }

            result = v43 + 1;
            if (!__OFADD__(v43, 1))
            {
LABEL_29:
              if (result >= 0xFFFFFFFF80000000)
              {
                if (result <= 0x7FFFFFFF)
                {
                  v36 = RECIntrospectionAlloc();
                  if (*v27)
                  {
                    v37 = *(v28 + 24);

                    *(v27 + v37) = 0;
                  }

                  *v27 = v36;
                  type metadata accessor for IntrospectionDataCleanupHelper();
                  v38 = swift_allocObject();
                  *(v38 + 16) = v36;
                  v39 = *(v28 + 24);

                  *(v27 + v39) = v38;
                  if (v26 <= 1)
                  {
                    if (!v26)
                    {
                      v40 = BYTE6(v24);
LABEL_44:
                      Data.copyBytes(to:count:)();
LABEL_45:
                      *(v36 + v40) = 0;
                      outlined consume of Data._Representation(v22, v24);
                      return outlined assign with take of __REAnchoringType?(v20, v27 + v44);
                    }

                    if (!__OFSUB__(HIDWORD(v22), v22))
                    {
                      v40 = HIDWORD(v22) - v22;
                      goto LABEL_44;
                    }

                    goto LABEL_54;
                  }

                  v40 = 0;
                  if (v26 != 2)
                  {
                    goto LABEL_44;
                  }

                  if (!__OFSUB__(*(v22 + 24), *(v22 + 16)))
                  {
                    Data.copyBytes(to:count:)();
                    v42 = *(v22 + 16);
                    v41 = *(v22 + 24);
                    v40 = v41 - v42;
                    if (!__OFSUB__(v41, v42))
                    {
                      goto LABEL_45;
                    }

                    __break(1u);
LABEL_41:
                    outlined destroy of BodyTrackingComponent?(v20, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
                    return outlined consume of Data._Representation(v22, v24);
                  }

LABEL_53:
                  __break(1u);
LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

                goto LABEL_51;
              }

LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v34 = *(v22 + 16);
          v33 = *(v22 + 24);
          v31 = __OFSUB__(v33, v34);
          v35 = v33 - v34;
          if (!v31)
          {
LABEL_28:
            result = v35 + 1;
            if (!__OFADD__(v35, 1))
            {
              goto LABEL_29;
            }

            goto LABEL_49;
          }

          __break(1u);
LABEL_27:
          v35 = 0;
          goto LABEL_28;
        }

        __break(1u);
      }

      else
      {
        v28 = v45;
        v27 = v46;
        if (!v26)
        {
          result = BYTE6(v24) + 1;
          if (!__OFADD__(BYTE6(v24), 1))
          {
            goto LABEL_29;
          }

          goto LABEL_49;
        }
      }

      LODWORD(v32) = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v32 = v32;
      goto LABEL_22;
    }

    outlined destroy of BodyTrackingComponent?(v16, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    outlined destroy of __REAnchoringType(v13, type metadata accessor for __REAnchoringType);
LABEL_6:
    outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit17__REAnchoringTypeOSg_ADtMd, &_s10RealityKit17__REAnchoringTypeOSg_ADtMR);
    v20 = v18;
    goto LABEL_7;
  }

  outlined destroy of BodyTrackingComponent?(v16, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  if (v19(&v10[v17], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of BodyTrackingComponent?(v10, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  v20 = v18;
  return outlined destroy of BodyTrackingComponent?(v20, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
}

void (*__REAnchoring.type.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  __REAnchoring.type.getter(v4);
  return __REAnchoring.type.modify;
}

void __REAnchoring.type.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of __REAnchoringType?(v3, v2);
    __REAnchoring.type.setter(v2);
    outlined destroy of BodyTrackingComponent?(v3, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  }

  else
  {
    __REAnchoring.type.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t __REAnchoring.Registration.init()()
{
  REStructBuilderCreate();
  v2 = type metadata accessor for __REAnchoring(0);
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 64);
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v5 <= 0x7FFFFFFF)
  {
    String.utf8CString.getter();
    v6 = REStructBuilderInit();

    if (v6 && (String.utf8CString.getter(), REStructBuilderAddMemberDataTypeWithTag(), , (v7 = RECIntrospectionStructRegister()) != 0))
    {
      *(v0 + 16) = v7;
      v8 = specialized String.withCString<A>(_:)(0x726F68636E414552, 0xEB00000000676E69, v7);
      if (!v1)
      {
        *(v0 + 24) = v8;
        REStructBuilderDestroy();
        return v0;
      }
    }

    else
    {
      lazy protocol witness table accessor for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError();
      swift_allocError();
      swift_willThrow();
    }

    REStructBuilderDestroy();
    type metadata accessor for __REAnchoring.Registration();
    swift_deallocPartialClassInstance();
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in __REAnchoring.Registration.init()@<X0>(uint64_t *a3@<X8>)
{
  v4 = RECustomComponentTypeCreate();
  if (v4)
  {
    v5 = v4;
    result = REComponentTypeSetCloneCallback();
    *a3 = v5;
  }

  else
  {
    lazy protocol witness table accessor for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

void @objc createAnchoringComponentObject(componentType:)()
{
  v0 = type metadata accessor for __REAnchoring(0);
  MEMORY[0x1EEE9AC00](*(*(v0 - 8) + 64));
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    v3 = RECIntrospectionAlloc();
    *v2 = 0;
    v4 = *(v0 + 20);
    v5 = type metadata accessor for __REAnchoringType(0);
    (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
    *&v2[*(v0 + 24)] = 0;
    outlined init with take of __REAnchoringType(v2, v3, type metadata accessor for __REAnchoring);
    return;
  }

  __break(1u);
}

uint64_t @objc destroyAnchoringComponentObject(componentType:rawPointer:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for __REAnchoring(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of __REAnchoringType(a2, v6, type metadata accessor for __REAnchoring);
  if (!*(v6 + *(v4 + 32)) && *v6)
  {
    RECIntrospectionFree();
  }

  outlined destroy of __REAnchoringType(v6, type metadata accessor for __REAnchoring);
  outlined destroy of __REAnchoringType(a2, type metadata accessor for __REAnchoring);
  return RECIntrospectionFree();
}

uint64_t @objc willRemoveAnchoringComponentObject(componentRef:)(uint64_t a1)
{
  result = RECustomComponentGetObject();
  if (result)
  {
    v2 = result;
    v3 = *(type metadata accessor for __REAnchoring(0) + 20);
    outlined destroy of BodyTrackingComponent?(v2 + v3, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    v4 = type metadata accessor for __REAnchoringType(0);
    v5 = *(*(v4 - 8) + 56);

    return v5(v2 + v3, 1, 1, v4);
  }

  return result;
}

uint64_t __REAnchoring.Registration.deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();
  return v0;
}

uint64_t __REAnchoring.Registration.__deallocating_deinit()
{
  RECustomComponentTypeDestroy();
  RECIntrospectionStructUnregister();

  return swift_deallocClassInstance();
}

double static __REAnchoring.registration.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static __REAnchoring.registration.setter(void *a1)
{
  swift_beginAccess();
  static __REAnchoring.registration = a1;
}

uint64_t key path setter for static __REAnchoring.registration : __REAnchoring.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static __REAnchoring.registration = v1;
}

uint64_t Scene.__anchoringType.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  if (static __REAnchoring.registration && (RESceneGetComponentsOfCustomType(), v2))
  {
    Object = RECustomComponentGetObject();
    if (Object)
    {
      return __REAnchoring.type.getter(a1);
    }
  }

  else
  {
    Object = 0;
  }

  v5 = type metadata accessor for __REAnchoringType(Object);
  return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
}

uint64_t Scene.__anchoringType.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for __REAnchoringType(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!static __REAnchoring.registration)
  {
    return outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  }

  outlined init with copy of __REAnchoringType?(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v8, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    if (REEntityGetCustomComponent())
    {
      REEntityRemoveComponentByClass();
    }

    return outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  }

  outlined init with take of __REAnchoringType(v8, v12, type metadata accessor for __REAnchoringType);
  RESceneGetComponentsOfCustomType();
  if (v14 < 1)
  {
    v15 = v1;
    v18 = v1;
    if (Scene.AnchorCollection.endIndex.getter())
    {
      Scene.AnchorCollection.subscript.getter(0);
    }

    else
    {
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of Scene.__anchoringType.setter);
      v17 = specialized AnchorEntity.__allocating_init(world:)(v16);

      specialized Scene.AnchorCollection.append(_:)(v17, v15);
    }

    if (!REEntityAddComponentByClass())
    {
      goto LABEL_13;
    }
  }

  if (RECustomComponentGetObject())
  {
    outlined init with copy of __REAnchoringType(v12, v5, type metadata accessor for __REAnchoringType);
    (*(v10 + 56))(v5, 0, 1, v9);
    __REAnchoring.type.setter(v5);
    outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    return outlined destroy of __REAnchoringType(v12, type metadata accessor for __REAnchoringType);
  }

  else
  {
LABEL_13:
    outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    return outlined destroy of __REAnchoringType(v12, type metadata accessor for __REAnchoringType);
  }
}

void (*Scene.__anchoringType.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  swift_beginAccess();
  if (!static __REAnchoring.registration || (RESceneGetComponentsOfCustomType(), !v9))
  {
    Object = 0;
    goto LABEL_12;
  }

  Object = RECustomComponentGetObject();
  if (!Object)
  {
LABEL_12:
    v11 = type metadata accessor for __REAnchoringType(Object);
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    return Scene.__anchoringType.modify;
  }

  __REAnchoring.type.getter(v8);
  return Scene.__anchoringType.modify;
}

uint64_t Entity.__anchoringType.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  if (static __REAnchoring.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
  {
    return __REAnchoring.type.getter(a1);
  }

  v3 = type metadata accessor for __REAnchoringType(0);
  return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
}

uint64_t key path setter for Scene.__anchoringType : Scene(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  outlined init with copy of __REAnchoringType?(a1, &v11 - v8);
  return a5(v9);
}

uint64_t Entity.__anchoringType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for __REAnchoringType(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!static __REAnchoring.registration)
  {
    return outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  }

  outlined init with copy of __REAnchoringType?(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v7, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    if (REEntityGetCustomComponent())
    {
      REEntityRemoveComponentByClass();
    }

    return outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  }

  outlined init with take of __REAnchoringType(v7, v11, type metadata accessor for __REAnchoringType);
  if ((REEntityGetCustomComponent() || REEntityAddComponentByClass()) && RECustomComponentGetObject())
  {
    outlined init with copy of __REAnchoringType(v11, v4, type metadata accessor for __REAnchoringType);
    (*(v9 + 56))(v4, 0, 1, v8);
    __REAnchoring.type.setter(v4);
    outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    return outlined destroy of __REAnchoringType(v11, type metadata accessor for __REAnchoringType);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(a1, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    return outlined destroy of __REAnchoringType(v11, type metadata accessor for __REAnchoringType);
  }
}

void (*Entity.__anchoringType.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  swift_beginAccess();
  if (static __REAnchoring.registration && REEntityGetCustomComponent() && RECustomComponentGetObject())
  {
    __REAnchoring.type.getter(v8);
  }

  else
  {
    v9 = type metadata accessor for __REAnchoringType(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  return Entity.__anchoringType.modify;
}

void Scene.__anchoringType.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    outlined init with copy of __REAnchoringType?(v6, v5);
    a3(v5);
    outlined destroy of BodyTrackingComponent?(v6, &_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  }

  else
  {
    a3(v6);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v10 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = __DataStorage._capacity.modify();
      *v12 |= 0x8000000000000000;
      v11(v17, 0);
    }

    else
    {
      v13.n128_f64[0] = (*(v7 + 8))(v9, v6);
    }

    v15 = specialized Data._Representation.init(_:count:)(v10, a2, v13);
  }

  else
  {
    v14 = Data.Deallocator._deallocator.getter();
    v14(a1, 0);

    v15 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v15;
}

unint64_t lazy protocol witness table accessor for type __REAnchoringType? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type __REAnchoringType? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type __REAnchoringType? and conformance <A> A?)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
    v4[0] = lazy protocol witness table accessor for type __REAnchoringType and conformance __REAnchoringType(&lazy protocol witness table cache variable for type __REAnchoringType and conformance __REAnchoringType, protocol conformance descriptor for __REAnchoringType);
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoringType? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type __REAnchoringType and conformance __REAnchoringType(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for __REAnchoringType(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined assign with take of __REAnchoringType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17__REAnchoringTypeOSgMd, &_s10RealityKit17__REAnchoringTypeOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata completion function for __REAnchoring(uint64_t a1)
{
  type metadata accessor for UnsafeMutableRawPointer?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for __REAnchoringType?(319, &lazy cache variable for type metadata for __REAnchoringType?, type metadata accessor for __REAnchoringType);
    if (v2 <= 0x3F)
    {
      type metadata accessor for __REAnchoringType?(319, &lazy cache variable for type metadata for IntrospectionDataCleanupHelper?, type metadata accessor for IntrospectionDataCleanupHelper);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for UnsafeMutableRawPointer?()
{
  if (!lazy cache variable for type metadata for UnsafeMutableRawPointer?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UnsafeMutableRawPointer?);
    }
  }
}

void type metadata accessor for __REAnchoringType?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError()
{
  result = lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoring.Registration.RegistrationError, &type metadata for __REAnchoring.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAnchoring.Registration.RegistrationError, &type metadata for __REAnchoring.Registration.RegistrationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAnchoring.Registration.RegistrationError and conformance __REAnchoring.Registration.RegistrationError);
  }

  return result;
}

uint64_t outlined init with copy of __REAnchoringType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of __REAnchoringType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of __REAnchoringType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __RKEntityDragTrigger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t __RKEntityDragTrigger.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

uint64_t EngineConfiguration.__allocating_init()()
{
  Default = REEngineConfigurationCreateDefault();
  type metadata accessor for EngineConfiguration();
  result = swift_allocObject();
  *(result + 16) = Default;
  return result;
}

uint64_t EngineConfiguration.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t EngineConfiguration.instanceID.getter()
{
  v0 = REEngineConfigurationCopyInstanceID();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

void key path getter for EngineConfiguration.instanceID : EngineConfiguration(uint64_t *a2@<X8>)
{
  v3 = REEngineConfigurationCopyInstanceID();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t key path setter for EngineConfiguration.instanceID : EngineConfiguration(void *a1, uint64_t a2)
{
  String.utf8CString.getter();
  REEngineConfigurationSetInstanceID();
}

uint64_t EngineConfiguration.instanceID.setter(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();

  REEngineConfigurationSetInstanceID();
}

uint64_t (*EngineConfiguration.instanceID.modify(uint64_t *a1))()
{
  a1[2] = v1;
  v3 = REEngineConfigurationCopyInstanceID();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return EngineConfiguration.instanceID.modify;
}

uint64_t EngineConfiguration.instanceID.modify(void *a1, char a2)
{
  String.utf8CString.getter();
  if (a2)
  {
    REEngineConfigurationSetInstanceID();
  }

  else
  {

    REEngineConfigurationSetInstanceID();
  }
}

uint64_t (*EngineConfiguration.unsafeUserDataPointer.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = REEngineConfigurationGetUserData();
  return EngineConfiguration.unsafeUserDataPointer.modify;
}

uint64_t EngineConfiguration.engineClockMode.getter@<X0>(_DWORD *a1@<X8>)
{
  result = REEngineConfigurationGetClockMode();
  *a1 = result;
  return result;
}

uint64_t (*EngineConfiguration.engineClockMode.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetClockMode();
  return EngineConfiguration.engineClockMode.modify;
}

uint64_t EngineConfiguration.engineServicesToCreate.getter@<X0>(_DWORD *a1@<X8>)
{
  result = REEngineConfigurationGetServicesToCreate();
  *a1 = result;
  return result;
}

uint64_t (*EngineConfiguration.engineServicesToCreate.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetServicesToCreate();
  return EngineConfiguration.engineServicesToCreate.modify;
}

uint64_t EngineConfiguration.engineServicesToUpdate.getter@<X0>(_DWORD *a1@<X8>)
{
  result = REEngineConfigurationGetServicesToUpdate();
  *a1 = result;
  return result;
}

uint64_t (*EngineConfiguration.engineServicesToUpdate.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetServicesToUpdate();
  return EngineConfiguration.engineServicesToUpdate.modify;
}

uint64_t EngineConfiguration.engineStartupOptions.getter@<X0>(_DWORD *a1@<X8>)
{
  result = REEngineConfigurationGetStartupOptions();
  *a1 = result;
  return result;
}

uint64_t (*EngineConfiguration.engineStartupOptions.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetStartupOptions();
  return EngineConfiguration.engineStartupOptions.modify;
}

id EngineConfiguration.engineQueue.getter()
{
  EngineQueue = REEngineConfigurationGetEngineQueue();

  return EngineQueue;
}

void EngineConfiguration.engineQueue.setter(void *a1)
{
  REEngineConfigurationSetEngineQueue();
}

void (*EngineConfiguration.engineQueue.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = REEngineConfigurationGetEngineQueue();
  return EngineConfiguration.engineQueue.modify;
}

void EngineConfiguration.engineQueue.modify(id *a1)
{
  v1 = *a1;
  REEngineConfigurationSetEngineQueue();
}

id EngineConfiguration.metalDevice.getter()
{
  Device = REEngineConfigurationGetDevice();

  return Device;
}

uint64_t EngineConfiguration.metalDevice.setter(uint64_t a1)
{
  REEngineConfigurationSetDevice();

  return swift_unknownObjectRelease();
}

uint64_t (*EngineConfiguration.metalDevice.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = REEngineConfigurationGetDevice();
  return EngineConfiguration.metalDevice.modify;
}

uint64_t EngineConfiguration.metalDevice.modify(void *a1)
{
  REEngineConfigurationSetDevice();

  return swift_unknownObjectRelease();
}

uint64_t (*EngineConfiguration.useMetal.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetUseMetal();
  return EngineConfiguration.useMetal.modify;
}

uint64_t (*EngineConfiguration.forExportOnly.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetForExportOnly();
  return EngineConfiguration.forExportOnly.modify;
}

uint64_t (*EngineConfiguration.enableVideoSupport.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetEnableVideoSupport();
  return EngineConfiguration.enableVideoSupport.modify;
}

uint64_t (*EngineConfiguration.enablePreloadEngineAssets.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetEnablePreloadEngineAssets();
  return EngineConfiguration.enablePreloadEngineAssets.modify;
}

uint64_t (*EngineConfiguration.enablePreloadMXIAssets.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetEnablePreloadMXIAssets();
  return EngineConfiguration.enablePreloadMXIAssets.modify;
}

uint64_t (*EngineConfiguration.useRealityIO.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetUseRealityIO();
  return EngineConfiguration.useRealityIO.modify;
}

uint64_t (*EngineConfiguration.usePhysicsSceneSystem.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetUsePhysicsSceneSystem();
  return EngineConfiguration.usePhysicsSceneSystem.modify;
}

uint64_t (*EngineConfiguration.assetRuntimeSizeLimit.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = REEngineConfigurationGetAssetRuntimeSizeLimitForResourceShareClient();
  return EngineConfiguration.assetRuntimeSizeLimit.modify;
}

uint64_t (*EngineConfiguration.disableRenderGraphCaching.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetDisableRenderGraphCaching();
  return EngineConfiguration.disableRenderGraphCaching.modify;
}

uint64_t EngineConfiguration.engineRenderFlags.getter@<X0>(_DWORD *a1@<X8>)
{
  result = REEngineConfigurationGetRenderFlags();
  *a1 = result;
  return result;
}

uint64_t (*EngineConfiguration.engineRenderFlags.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetRenderFlags();
  return EngineConfiguration.engineRenderFlags.modify;
}

uint64_t (*EngineConfiguration.isHostingSharedAudioSimulation.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetIsHostingSharedAudioSimulation();
  return EngineConfiguration.isHostingSharedAudioSimulation.modify;
}

uint64_t (*EngineConfiguration.enableInteractions.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetEnableInteractions();
  return EngineConfiguration.enableInteractions.modify;
}

uint64_t (*EngineConfiguration.enableCommitSynchronously.modify(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetEnableCommitSynchronously();
  return EngineConfiguration.enableCommitSynchronously.modify;
}

void EngineConfiguration.setRenderThreadInitCallback(_:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v3[3] = &block_descriptor_4;
  v2 = _Block_copy(v3);

  REEngineConfigurationSetRenderThreadInitCallback();
  _Block_release(v2);
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t (*EngineConfiguration.renderThreadPriority.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetRenderThreadPriority();
  return EngineConfiguration.renderThreadPriority.modify;
}

uint64_t (*EngineConfiguration.renderFrameOverlap.modify(uint64_t a1))(unsigned int *a1)
{
  *a1 = v1;
  *(a1 + 8) = REEngineConfigurationGetRenderFrameOverlap();
  return EngineConfiguration.renderFrameOverlap.modify;
}

uint64_t EngineConfiguration.clone()(__n128 a1)
{
  v1 = REEngineConfigurationClone();
  type metadata accessor for EngineConfiguration();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t EngineConfiguration.__allocating_init(_:)(uint64_t a1, __n128 a2)
{
  v2 = REEngineConfigurationClone();
  RERelease();

  RERetain();
  type metadata accessor for EngineConfiguration();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t PreviewSupportComponent.SelectableSourceInfo.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void PreviewSupportComponent.SelectableSourceInfo.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

unint64_t PreviewSupportComponent.SelectableSourceInfo.init(identifier:position:size:displayListIDs:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>)
{
  a4->n128_u64[0] = result;
  a4->n128_u64[1] = a2;
  a4[1] = a5;
  a4[2] = a6;
  a4[3] = a7;
  a4[4].n128_u64[0] = a3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys()
{
  v1 = 0x696669746E656469;
  v2 = 1702521203;
  if (*v0 != 2)
  {
    v2 = 0x4C79616C70736964;
  }

  if (*v0)
  {
    v1 = 0x6E6F697469736F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PreviewSupportComponent.SelectableSourceInfo.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviewSupportComponent.SelectableSourceInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  v13 = *(v1 + 32);
  v14 = v7;
  v11 = *(v1 + 48);
  v12 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  v8 = v15;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v8)
  {
    v9 = v12;
    v16 = v14;
    v17 = v13;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Double> and conformance SIMD3<A>, &_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR, MEMORY[0x1E69E7458]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v11;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7458]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v16 = v9;
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
    lazy protocol witness table accessor for type [UInt32] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt32] and conformance <A> [A], MEMORY[0x1E69E7670], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewSupportComponent.SelectableSourceInfo.CodingKeys, &unk_1F40F30A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewSupportComponent.SelectableSourceInfo.CodingKeys, &unk_1F40F30A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewSupportComponent.SelectableSourceInfo.CodingKeys, &unk_1F40F30A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewSupportComponent.SelectableSourceInfo.CodingKeys, &unk_1F40F30A0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys);
  }

  return result;
}

void PreviewSupportComponent.SelectableSourceInfo.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo.CodingKeys and conformance PreviewSupportComponent.SelectableSourceInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v20) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v18 = a2;
    v19 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
    v22 = 1;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Double> and conformance SIMD3<A>, &_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR, MEMORY[0x1E69E7468]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v21;
    v17 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v22 = 2;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR, MEMORY[0x1E69E7468]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
    v22 = 3;
    lazy protocol witness table accessor for type [UInt32] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt32] and conformance <A> [A], MEMORY[0x1E69E7698], MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v12 = v20;
    v13 = v18;
    *v18 = v19;
    v13[1] = v11;
    v14 = v16;
    *(v13 + 1) = v17;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    v13[8] = v12;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t lazy protocol witness table accessor for type [UInt32] and conformance <A> [A](unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

void protocol witness for CodingKey.init(stringValue:) in conformance PreviewSupportComponent.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001C18E0A90 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreviewSupportComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreviewSupportComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviewSupportComponent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation23PreviewSupportComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation23PreviewSupportComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMd, &_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMR);
  lazy protocol witness table accessor for type [PreviewSupportComponent.SelectableSourceInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [PreviewSupportComponent.SelectableSourceInfo] and conformance <A> [A], lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo, MEMORY[0x1E69E6300]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PreviewSupportComponent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation23PreviewSupportComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation23PreviewSupportComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMd, &_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMR);
    lazy protocol witness table accessor for type [PreviewSupportComponent.SelectableSourceInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [PreviewSupportComponent.SelectableSourceInfo] and conformance <A> [A], lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void protocol witness for CodingKey.init(stringValue:) in conformance SelectableSceneContentIdentifierComponent.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x80000001C18E0AB0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SelectableSceneContentIdentifierComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SelectableSceneContentIdentifierComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SelectableSceneContentIdentifierComponent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SelectableSceneContentIdentifierComponent.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SelectableSceneContentIdentifierComponent(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation41SelectableSceneContentIdentifierComponentV10CodingKeys33_330D7406B1408DA6ED030FE0786A6500LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewSupportComponent.CodingKeys, &unk_1F40F3010, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewSupportComponent.CodingKeys, &unk_1F40F3010, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewSupportComponent.CodingKeys, &unk_1F40F3010, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewSupportComponent.CodingKeys, &unk_1F40F3010, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.CodingKeys and conformance PreviewSupportComponent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo()
{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewSupportComponent.SelectableSourceInfo, &type metadata for PreviewSupportComponent.SelectableSourceInfo, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo;
  if (!lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewSupportComponent.SelectableSourceInfo, &type metadata for PreviewSupportComponent.SelectableSourceInfo, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PreviewSupportComponent.SelectableSourceInfo and conformance PreviewSupportComponent.SelectableSourceInfo);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PreviewSupportComponent.SelectableSourceInfo] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMd, &_sSay17RealityFoundation23PreviewSupportComponentV20SelectableSourceInfoVGMR);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectableSceneContentIdentifierComponent.CodingKeys, &unk_1F40F2F80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectableSceneContentIdentifierComponent.CodingKeys, &unk_1F40F2F80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectableSceneContentIdentifierComponent.CodingKeys, &unk_1F40F2F80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SelectableSceneContentIdentifierComponent.CodingKeys, &unk_1F40F2F80, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SelectableSceneContentIdentifierComponent.CodingKeys and conformance SelectableSceneContentIdentifierComponent.CodingKeys);
  }

  return result;
}

__n128 __swift_memcpy72_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for PreviewSupportComponent.SelectableSourceInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewSupportComponent.SelectableSourceInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized PreviewSupportComponent.SelectableSourceInfo.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C79616C70736964 && a2 == 0xEE00734449747369)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t getEnumTagSinglePayload for SpatialStereoImageMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 664))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 312);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialStereoImageMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 664) = 1;
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
      *(result + 312) = (a2 - 1);
      return result;
    }

    *(result + 664) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void SpatialStereoImageMetadata.init(source:)(CGImageSource *a1@<X0>, float *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v95 - v11;
  if (CGImageSourceGetCount(a1) <= 1)
  {
    lazy protocol witness table accessor for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError();
    swift_allocError();
    *v13 = 0;
LABEL_29:
    swift_willThrow();

    return;
  }

  v14 = CGImageSourceCopyProperties(a1, 0);
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_12:
    v25 = "[SpatialImage] Unable to copy image source properties.";
LABEL_13:
    v26 = (v25 - 32) | 0x8000000000000000;
    lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
    swift_allocError();
    v28 = 0xD000000000000036;
    goto LABEL_14;
  }

  v107[0] = 0;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  v16 = v107[0];
  if (!v107[0])
  {
    goto LABEL_12;
  }

  v103 = v12;
  PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(a1);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

    goto LABEL_26;
  }

  v100 = v7;
  v101 = v6;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    goto LABEL_26;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v19, v107);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    lazy protocol witness table accessor for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError();
    swift_allocError();
    v39 = 1;
LABEL_28:
    *v38 = v39;
    goto LABEL_29;
  }

  v22 = v108[0];
  v105 = *(v108[0] + 16);
  if (!v105)
  {
LABEL_26:

    goto LABEL_27;
  }

  v97 = a2;
  v23 = 0;
  v104 = *MEMORY[0x1E696DCD8];
  v24 = *MEMORY[0x1E696DCE8];
  v98 = v2;
  v99 = v24;
  while (1)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    v16 = *(v22 + 8 * v23 + 32);
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    if (*(v16 + 16))
    {
      v33 = v30;

      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32);
      v3 = v35;

      if (v3)
      {
        outlined init with copy of Any(*(v16 + 56) + 32 * v34, v107);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

LABEL_17:

    if (v105 == ++v23)
    {

      v26 = 0x80000001C18E0D80;
      lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
      swift_allocError();
      v28 = 0xD000000000000032;
      goto LABEL_14;
    }
  }

  v36 = v108[0];
  v3 = v108[1];
  if (v36 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v3 != v37)
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

LABEL_32:

  v40 = specialized static SpatialPhotoStereoAggressor.aggressors(fromStereoPairGroupDictionary:)(v16);
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

LABEL_41:

    v26 = 0x80000001C18E0B10;
    lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
    swift_allocError();
    v28 = 0xD00000000000003FLL;
    goto LABEL_14;
  }

  v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
    goto LABEL_41;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v43, v107);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_41;
  }

  v3 = v108[0];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

LABEL_44:

    v26 = 0x80000001C18E0B50;
    lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
    swift_allocError();
    v28 = 0xD000000000000040;
    goto LABEL_14;
  }

  v48 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
    goto LABEL_44;
  }

  outlined init with copy of Any(*(v16 + 56) + 32 * v48, v107);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  v104 = v108[0];
  v105 = v40;
  if (v3 == v108[0])
  {

    v25 = "[SpatialImage] Stereo pair image indexes are the same.";
    goto LABEL_13;
  }

LABEL_46:
  v51 = v3;
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

    goto LABEL_55;
  }

  v54 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v53);
  v56 = v55;

  if ((v56 & 1) == 0 || (outlined init with copy of Any(*(v16 + 56) + 32 * v54, v107), (swift_dynamicCast() & 1) == 0))
  {
LABEL_55:
    v64 = a1;
    v65 = CGImageSourceGetPrimaryImageIndex(v64);
    v66 = v98;
    v67 = specialized MonoImageMetadata.init(imageSource:index:location:)(v64, v65);
    v98 = v68;
    v99 = v67;
    v96 = v69;
    v70 = v66;
    if (v66)
    {

      goto LABEL_57;
    }

LABEL_65:
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v16 + 16))
    {
      v78 = specialized __RawDictionaryStorage.find<A>(_:)(v76, v77);
      v80 = v79;

      if (v80)
      {
        outlined init with copy of Any(*(v16 + 56) + 32 * v78, v107);

        if (swift_dynamicCast())
        {
          v81 = v108[0];
          v82 = a1;
          specialized StereoPairImageMetadata.init(imageSource:atIndex:)(v82, v51);
          if (v70)
          {

            goto LABEL_58;
          }

          memcpy(v110, v111, sizeof(v110));

          a1 = v82;
          specialized StereoPairImageMetadata.init(imageSource:atIndex:)(a1, v104);
          memcpy(v109, v112, sizeof(v109));

          if (*(v111 + 8) == *(v112 + 8))
          {
            if (DWORD2(v111[1]) == DWORD2(v112[1]))
            {
              v114[2] = v111[13];
              v114[3] = v111[14];
              v114[4] = v111[15];
              v114[5] = v111[16];
              v114[0] = v111[11];
              v114[1] = v111[12];
              v113[2] = v112[13];
              v113[3] = v112[14];
              v113[4] = v112[15];
              v113[5] = v112[16];
              v113[0] = v112[11];
              v113[1] = v112[12];
              if (specialized static CameraMath.intrinsicsAreEqual(left:right:toleranceInPixel:)(v114, v113, 6.0))
              {
                static SpatialStereoImageMetadata.extractBaselineAndValidateExtrinsics(leftImageMetadata:rightImageMetadata:)(v111, v112);
                v83 = [objc_opt_self() millimeters];
                v84 = v101;
                Measurement<>.converted(to:)();

                Measurement.value.getter();
                v86 = v85;
                v87 = *(v100 + 8);
                v87(v9, v84);
                if (v86 <= 0.0)
                {

                  outlined destroy of StereoPairImageMetadata(v112);
                  outlined destroy of StereoPairImageMetadata(v111);
                  lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
                  swift_allocError();
                  *v94 = 0xD000000000000050;
                  v94[1] = 0x80000001C18E0C60;
                  swift_willThrow();

                  v87(v103, v101);
                }

                else
                {
                  v88 = v98;
                  v89 = HIDWORD(v98);
                  v87(v103, v101);

                  v91 = v111[18];
                  memcpy(&v108[1], v110, 0x124uLL);
                  memcpy(&v107[1] + 4, v109, 0x124uLL);
                  v93 = v96;
                  v92 = v97;
                  v106 = BYTE4(v96) & 1;
                  v90 = v86;
                  *v97 = v90;
                  v92[1] = v81 / 10000.0;
                  *(v92 + 2) = v91;
                  *(v92 + 2) = PrimaryImageIndex;
                  memcpy(v92 + 6, v108, 0x12CuLL);
                  memcpy(v92 + 81, v107, 0x130uLL);
                  *(v92 + 79) = v99;
                  *(v92 + 640) = v88;
                  *(v92 + 161) = v89;
                  *(v92 + 162) = v93;
                  *(v92 + 652) = v106;
                  *(v92 + 82) = v105;
                }

                return;
              }

              outlined destroy of StereoPairImageMetadata(v112);
              outlined destroy of StereoPairImageMetadata(v111);
              lazy protocol witness table accessor for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError();
              swift_allocError();
              v39 = 16;
              goto LABEL_28;
            }

            outlined destroy of StereoPairImageMetadata(v112);
            outlined destroy of StereoPairImageMetadata(v111);
            v26 = 0x80000001C18E0C10;
            lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
            swift_allocError();
            v28 = 0xD000000000000044;
          }

          else
          {

            outlined destroy of StereoPairImageMetadata(v112);
            outlined destroy of StereoPairImageMetadata(v111);
            v26 = 0x80000001C18E0BD0;
            lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
            swift_allocError();
            v28 = 0xD00000000000003DLL;
          }

LABEL_14:
          *v27 = v28;
          v27[1] = v26;
          goto LABEL_29;
        }

LABEL_72:

        v26 = 0x80000001C18E0BA0;
        lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
        swift_allocError();
        v28 = 0xD00000000000002CLL;
        goto LABEL_14;
      }
    }

    else
    {
    }

    goto LABEL_72;
  }

  v57 = v108[0];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

    goto LABEL_61;
  }

  v60 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
  v62 = v61;

  if ((v62 & 1) == 0 || (outlined init with copy of Any(*(v16 + 56) + 32 * v60, v107), (swift_dynamicCast() & 1) == 0))
  {
LABEL_61:

    v63 = "[SpatialImage] Missing monoscopic image location.";
LABEL_62:
    v26 = (v63 - 32) | 0x8000000000000000;
    lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError();
    swift_allocError();
    v28 = 0xD000000000000031;
    goto LABEL_14;
  }

  if (specialized MonoImageMetadata.Location.init(imageIOString:)(v108[0], v108[1]) == 4)
  {

    v63 = "[SpatialImage] Unknown monoscopic image location.";
    goto LABEL_62;
  }

  v71 = a1;
  v72 = v98;
  v73 = specialized MonoImageMetadata.init(imageSource:index:location:)(v71, v57);
  v98 = v74;
  v99 = v73;
  v96 = v75;
  v70 = v72;
  if (!v72)
  {
    goto LABEL_65;
  }

LABEL_57:

LABEL_58:
}

unint64_t lazy protocol witness table accessor for type SpatialMediaError and conformance SpatialMediaError()
{
  result = lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError;
  if (!lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialMediaError, &type metadata for SpatialMediaError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError;
  if (!lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialMediaError, &type metadata for SpatialMediaError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError;
  if (!lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialMediaError, &type metadata for SpatialMediaError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialMediaError and conformance SpatialMediaError);
  }

  return result;
}

uint64_t static SpatialStereoImageMetadata.extractBaselineAndValidateExtrinsics(leftImageMetadata:rightImageMetadata:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 112);
  v6 = *(a1 + 128);
  v7 = *(a1 + 144);
  v8 = *(a1 + 160);
  v78 = *(a1 + 80);
  v79 = v4;
  v80 = v5;
  v81 = v6;
  v82 = v7;
  v83 = v8;
  simd_quaternion(&v78, &v76);
  v71 = v77;
  v73 = v76;
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  v11 = *(a2 + 128);
  v12 = *(a2 + 144);
  v13 = *(a2 + 160);
  v78 = *(a2 + 80);
  v79 = v9;
  v80 = v10;
  v81 = v11;
  v82 = v12;
  v83 = v13;
  simd_quaternion(&v78, &v76);
  v14 = 1.0 / vaddvq_f64(vaddq_f64(vmulq_f64(v73, v73), vmulq_f64(v71, v71)));
  v15 = vmulq_n_f64(vmulq_f64(v71, xmmword_1C18A2BC0), v14);
  v16 = vmulq_n_f64(vnegq_f64(v73), v14);
  v17 = vnegq_f64(v16);
  v18 = vextq_s8(v15, vnegq_f64(v15), 8uLL);
  v70 = vextq_s8(v16, v17, 8uLL);
  v72 = v16;
  v74 = v15;
  v69 = vextq_s8(v17, v16, 8uLL);
  v19 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v15, v76, 1), v18, v76.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v16, v77, 1), v69, v77.f64[0]));
  v20 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v17, v76, 1), v70, v76.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v15, v77, 1), v18, v77.f64[0]));
  v21 = atan2(sqrt(vmulq_f64(v20, v20).f64[0] + vaddvq_f64(vmulq_f64(v19, v19))), v20.f64[1]);
  *&v21 = v21 + v21;
  v22 = (fabsf(*&v21) * 180.0) / 3.1416;
  if (v22 > 2.0)
  {
    v23 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v24 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v78 = v26;
      *v25 = 134218242;
      *(v25 + 4) = v22;
      *(v25 + 12) = 2080;
      LODWORD(v76.f64[0]) = 0x40000000;
      lazy protocol witness table accessor for type Degrees and conformance Degrees();
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v78);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_1C1358000, v24, v23, "[SpatialImage] Error: Stereo Views are not parallel. Angle difference: %f, error threshold: %s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1C6902A30](v26, -1, -1);
      MEMORY[0x1C6902A30](v25, -1, -1);
    }

    v30 = 8;
LABEL_13:
    lazy protocol witness table accessor for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError();
    swift_allocError();
    *v59 = v30;
    return swift_willThrow();
  }

  if (v22 > 0.5)
  {
    v31 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v32 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v78 = v34;
      *v33 = 134218242;
      *(v33 + 4) = v22;
      *(v33 + 12) = 2080;
      LODWORD(v76.f64[0]) = 1056964608;
      lazy protocol witness table accessor for type Degrees and conformance Degrees();
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v78);

      *(v33 + 14) = v37;
      _os_log_impl(&dword_1C1358000, v32, v31, "[SpatialImage] Stereo Views are not parallel. Angle difference: %f, tolerance: %s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x1C6902A30](v34, -1, -1);
      MEMORY[0x1C6902A30](v33, -1, -1);
    }
  }

  v38 = *(a2 + 48);
  v39 = *(a1 + 48);
  v40 = v38.f64[0] - v39.f64[0];
  v41 = vsubq_f64(v38, v39);
  v39.f64[0] = *(a2 + 64) - *(a1 + 64);
  v42 = vmulq_f64(v74, xmmword_1C18A2BC0);
  v43 = vextq_s8(v42, vnegq_f64(v42), 8uLL);
  v44 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v42, v41, 1), v43, v40), v70, v39.f64[0]);
  v45 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v72, v41, 1), v69, v40), v43, v39.f64[0]);
  v46 = vnegq_f64(v44);
  v47 = vextq_s8(v45, vnegq_f64(v45), 8uLL);
  v48 = vmlaq_n_f64(vmulq_laneq_f64(v45, v72, 1), v47, v72.f64[0]);
  v49 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v45, v74, 1), v47, v74.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v46, v72, 1), vextq_s8(v44, v46, 8uLL), v72.f64[0]));
  v75 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v44, v74, 1), vextq_s8(v46, v44, 8uLL), v74.f64[0]), v48);
  v50 = atan(sqrt(vaddq_f64(vdupq_laneq_s64(vmulq_f64(v75, v75), 1), vmulq_f64(v49, v49)).f64[0]) / v75.f64[0]);
  v51 = (v50 * 180.0) / 3.1416;
  if (v51 > 10.0)
  {
    v52 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v53 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v53, v52))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *&v78 = v55;
      *v54 = 136315138;
      *v76.f64 = v51;
      lazy protocol witness table accessor for type Degrees and conformance Degrees();
      v56 = dispatch thunk of CustomStringConvertible.description.getter();
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v78);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_1C1358000, v53, v52, "[SpatialImage] Error: Significant deviation of camera separation off axis of left camera's x-axis, degrees off axis: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1C6902A30](v55, -1, -1);
      MEMORY[0x1C6902A30](v54, -1, -1);
    }

    v30 = 9;
    goto LABEL_13;
  }

  if (v51 > 2.5)
  {
    v61 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
    v62 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v62, v61))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *&v78 = v64;
      *v63 = 136315138;
      *v76.f64 = v51;
      lazy protocol witness table accessor for type Degrees and conformance Degrees();
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v78);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_1C1358000, v62, v61, "[SpatialImage] Significant deviation of camera separation off axis of left camera's x-axis, degrees off axis: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1C6902A30](v64, -1, -1);
      MEMORY[0x1C6902A30](v63, -1, -1);
    }
  }

  v68 = [objc_opt_self() meters];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSUnitLength, 0x1E696B058);
  return Measurement.init(value:unit:)();
}

unint64_t lazy protocol witness table accessor for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError()
{
  result = lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError;
  if (!lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialPhotoMetadataError, &type metadata for SpatialPhotoMetadataError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError;
  if (!lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialPhotoMetadataError, &type metadata for SpatialPhotoMetadataError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialPhotoMetadataError and conformance SpatialPhotoMetadataError);
  }

  return result;
}

double *simd_quaternion@<X0>(double *result@<X0>, float64x2_t *a2@<X8>)
{
  v3 = *result;
  v2 = *(result + 2);
  v4 = *(result + 2);
  v5 = *(result + 6);
  v6 = result[5];
  v7 = *(result + 8);
  v8 = *(result + 5);
  v9 = *result + v6 + *&v8;
  if (v9 >= 0.0)
  {
    v15 = sqrt(v9 + 1.0);
    v16 = v15 + v15;
    v17.f64[0] = 1.0 / v16;
    v26 = vmulq_n_f64(vsubq_f64(vzip1q_s64(v5, v7), vextq_s8(v7, v2, 8uLL)), 1.0 / v16);
    v17.f64[1] = v16;
    __asm { FMOV            V1.2D, #0.25 }

    _Q1.f64[0] = *(&v3 + 1) - *&v4;
    v28 = vmulq_f64(v17, _Q1);
  }

  else if (*&v3 < v6 || *&v3 < *&v8)
  {
    v11 = 1.0 - *&v3;
    if (v6 >= *&v8)
    {
      v29 = sqrt(v6 + v11 - *&v8);
      v30 = v29 + v29;
      v31.f64[0] = 1.0 / v30;
      v28 = vmulq_n_f64(vextq_s8(vaddq_f64(v7, vdupq_lane_s64(v5.i64[0], 0)), vsubq_f64(v7, v2), 8uLL), 1.0 / v30);
      v31.f64[1] = v30;
      __asm { FMOV            V1.2D, #0.25 }

      _Q1.f64[0] = *(&v3 + 1) + *&v4;
      v26 = vmulq_f64(v31, _Q1);
    }

    else
    {
      v12 = sqrt(v11 - v6 + *&v8);
      v13.f64[0] = v12 + v12;
      v26 = vmulq_n_f64(vaddq_f64(vzip1q_s64(v2, v5), v7), 1.0 / v13.f64[0]);
      v13.f64[1] = *(&v3 + 1) - *&v4;
      __asm { FMOV            V0.2D, #0.25 }

      _Q0.f64[1] = 1.0 / v13.f64[0];
      v28 = vmulq_f64(v13, _Q0);
    }
  }

  else
  {
    v19 = sqrt(*&v3 + 1.0 - v6 - *&v8);
    v20.f64[0] = v19 + v19;
    v20.f64[1] = *(&v3 + 1) + *&v4;
    __asm { FMOV            V2.2D, #0.25 }

    _Q2.f64[1] = 1.0 / v20.f64[0];
    v25 = vdupq_lane_s64(v5.i64[0], 0);
    v26 = vmulq_f64(v20, _Q2);
    *&v27.f64[0] = *&vaddq_f64(v2, v7);
    v27.f64[1] = vsubq_f64(v25, v7).f64[1];
    v28 = vmulq_n_f64(v27, 1.0 / v20.f64[0]);
  }

  *a2 = v26;
  a2[1] = v28;
  return result;
}

unint64_t lazy protocol witness table accessor for type Degrees and conformance Degrees()
{
  result = lazy protocol witness table cache variable for type Degrees and conformance Degrees;
  if (!lazy protocol witness table cache variable for type Degrees and conformance Degrees)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Degrees, &type metadata for Degrees, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Degrees and conformance Degrees);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Degrees and conformance Degrees;
  if (!lazy protocol witness table cache variable for type Degrees and conformance Degrees)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Degrees, &type metadata for Degrees, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Degrees and conformance Degrees);
  }

  return result;
}

uint64_t __REAnchoringType.createAnchorEntity(realityAssetFileName:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AnchoringComponent.Target(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for __REAnchoringType(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of __REAnchoringType(v2, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      swift_storeEnumTagMultiPayload();
      type metadata accessor for AnchorEntity();
      swift_allocObject();
      return AnchorEntity.init(_:)(v7);
    }

    (*(v9 + 32))(v11, v14, v8);
    v19 = __REAnchoringType.createImageOrObjectAnchorEntity(url:realityAssetFileName:imageAnchoring:)(v11, a1, a2, 0);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = *v14;
      v21 = v14[1];
      v22 = v16;
      return __REAnchoringType.createSurfaceAnchorEntity(alignment:classification:)(&v22, &v21);
    }

    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMd, &_s10Foundation3URLV3url_AA11MeasurementVySo12NSUnitLengthCG13physicalWidthtMR) + 48);
    (*(v9 + 32))(v11, v14, v8);
    v19 = __REAnchoringType.createImageOrObjectAnchorEntity(url:realityAssetFileName:imageAnchoring:)(v11, a1, a2, 1);
    (*(v9 + 8))(v11, v8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    (*(*(v20 - 8) + 8))(v14 + v18, v20);
  }

  return v19;
}

uint64_t outlined init with copy of __REAnchoringType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for __REAnchoringType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __REAnchoringType.createSurfaceAnchorEntity(alignment:classification:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AnchoringComponent.Target(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *a2;
  if (*a1)
  {
    if ((qword_1F40BD1C0 & ~v7) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = byte_1F40BD1C8;
    }

    v10 = qword_1F40BD1D0 & ~v7;
    if ((byte_1F40BD1D8 & ~v9) != 0 && v10 == 0)
    {
      v12 = byte_1F40BD1D8;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 | v9;
    if (v8)
    {
      goto LABEL_12;
    }

LABEL_41:
    v27 = -1;
    goto LABEL_42;
  }

  v13 = -1;
  if (!v8)
  {
    goto LABEL_41;
  }

LABEL_12:
  if ((qword_1F40BD200 & ~v8) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = unk_1F40BD208;
  }

  if ((unk_1F40BD218 & ~v14) != 0 && (qword_1F40BD210 & ~v8) == 0)
  {
    v16 = unk_1F40BD218;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v14;
  if ((unk_1F40BD228 & ~v17) != 0 && (qword_1F40BD220 & ~v8) == 0)
  {
    v19 = unk_1F40BD228;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v17;
  if ((unk_1F40BD238 & ~v20) != 0 && (qword_1F40BD230 & ~v8) == 0)
  {
    v22 = unk_1F40BD238;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 | v20;
  v24 = qword_1F40BD240 & ~v8;
  if ((unk_1F40BD248 & ~v23) != 0 && v24 == 0)
  {
    v26 = unk_1F40BD248;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26 | v23;
LABEL_42:
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(&outlined read-only object #0 of __REAnchoringType.createSurfaceAnchorEntity(alignment:classification:));
  *v6 = v13;
  *(v6 + 1) = v27;
  *(v6 + 2) = v28;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  return AnchorEntity.init(_:)(v6);
}

uint64_t __REAnchoringType.createImageOrObjectAnchorEntity(url:realityAssetFileName:imageAnchoring:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v21[3] = a4;
  v6 = type metadata accessor for AnchoringComponent.Target(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = URL.lastPathComponent.getter();
  v11 = v10;
  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v12 + 120, &v22);
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  v13 = static __RealityFileURLResolver.instances;
  v14 = v23;
  v15 = v24;
  v16 = __swift_project_boxed_opaque_existential_1(&v22, v23);

  specialized AssetServiceScopedRegistry.instance(for:)(v16, v13, v14, v15);

  __swift_destroy_boxed_opaque_existential_1(&v22);
  *&v22 = 0x2F737465737361;
  *(&v22 + 1) = 0xE700000000000000;
  MEMORY[0x1C68F3410](v9, v11);

  v17 = v22;
  if (one-time initialization token for schemePrefix != -1)
  {
    swift_once();
  }

  v22 = static __RealityFileURLResolver.schemePrefix;

  MEMORY[0x1C68F3410](a2, a3);
  v18 = *(&v22 + 1);
  *v8 = v22;
  *(v8 + 1) = v18;
  *(v8 + 1) = v17;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnchorEntity();
  swift_allocObject();
  v19 = AnchorEntity.init(_:)(v8);

  return v19;
}

uint64_t closure #1 in MeshAttributeDescriptor.makeData(custom:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 + 16);
  v14 = String.utf8CString.getter();
  v15 = a8(v13, v14 + 32, a1, a2, a3, a4);

  return v15;
}

uint64_t MeshDefinition.__allocating_init(attributes:vertexCount:indexCount:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  return specialized MeshDefinition.__allocating_init(attributes:vertexCount:indexCount:customNames:)(a1, a2, a3, v6);
}

Swift::Void __swiftcall MeshDefinition.setIndices(_:)(Swift::OpaquePointer a1)
{
  MeshDefinition.setIndices(_:)(a1._rawValue, _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt16V_Tt0g5, MEMORY[0x1E6998A20]);
}

{
  MeshDefinition.setIndices(_:)(a1._rawValue, _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt32V_Tt0g5, MEMORY[0x1E6998A28]);
}

void *_s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt16V_Tt0g5(void *result, uint64_t a2)
{
  if (result)
  {
    if (a2 + 0x4000000000000000 < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = 2 * a2;
      if (2 * a2)
      {
        if (v2 <= 14)
        {
          return specialized Data.InlineData.init(_:)(result, result + v2);
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          __DataStorage.init(bytes:length:)();
          if (v2 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            result = swift_allocObject();
            result[2] = 0;
            result[3] = v2;
          }

          else
          {
            return (a2 << 33);
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *_s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt32V_Tt0g5(void *result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      v2 = 4 * a2;
      if (4 * a2)
      {
        if (v2 <= 14)
        {
          return specialized Data.InlineData.init(_:)(result, result + v2);
        }

        else
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          __DataStorage.init(bytes:length:)();
          if (v2 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            result = swift_allocObject();
            result[2] = 0;
            result[3] = v2;
          }

          else
          {
            return (a2 << 34);
          }
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void MeshDefinition.setIndices(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, Class))
{
  v5 = *(v3 + 16);
  v6 = a2(a1 + 32, *(a1 + 16));
  v8 = v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v6, v8);
  a3(v5, isa);
}

void MeshDefinition.setAttribute(_:data:)(uint64_t a1)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  REMeshDefinitionSetAttributeWithData();
}

uint64_t MeshDefinition.setAttribute(_:name:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  String.utf8CString.getter();
  REMeshDefinitionSetCustomAttributeWithData();
}

uint64_t MeshDefinition.setAttribute(_:positions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, void), void (*a5)(uint64_t, void, __int128 *, uint64_t))
{
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *(a2 + 16);
  v11 = a4(v8, a2 + 32, v10, 0, 0);
  v17 = specialized Data.init(count:)(v11);
  v18 = v12;

  _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_nTm(&v17, a5, v9, a2 + 32, v10, a2);
  v13 = v17;
  v14 = v18;

  isa = Data._bridgeToObjectiveC()().super.isa;
  REMeshDefinitionSetAttributeWithData();

  return outlined consume of Data._Representation(v13, v14);
}

uint64_t MeshDefinition.setAttribute(_:colors:)(uint64_t a1, uint64_t a2)
{
  return MeshDefinition.setAttribute(_:positions:)(a1, a2, &unk_1F40F3220, MEMORY[0x1E69989C0], partial apply for implicit closure #2 in implicit closure #1 in MeshAttributeDescriptor.makeData(colors:));
}

{
  return MeshDefinition.setAttribute(_:positions:)(a1, a2, &unk_1F40F3248, MEMORY[0x1E69989C8], partial apply for implicit closure #2 in implicit closure #1 in MeshAttributeDescriptor.makeData(colors:));
}

uint64_t MeshDefinition.setAttribute(_:custom:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return MeshDefinition.setAttribute(_:custom:name:)(a1, a2, a3, a4, MEMORY[0x1E69989D0], partial apply for closure #1 in MeshAttributeDescriptor.makeData(custom:name:));
}

{
  return MeshDefinition.setAttribute(_:custom:name:)(a1, a2, a3, a4, MEMORY[0x1E69989D8], partial apply for closure #1 in MeshAttributeDescriptor.makeData(custom:name:));
}

{
  return MeshDefinition.setAttribute(_:custom:name:)(a1, a2, a3, a4, MEMORY[0x1E69989E0], partial apply for closure #1 in MeshAttributeDescriptor.makeData(custom:name:));
}

uint64_t MeshDefinition.setAttribute(_:custom:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, void), void (*a6)(uint64_t, void, __int128 *, uint64_t))
{
  v18[2] = a1;
  v18[3] = a3;
  v18[4] = a4;
  v9 = *(a2 + 16);
  v10 = *(a1 + 16);
  v11 = String.utf8CString.getter();
  v12 = a5(v10, v11 + 32, a2 + 32, v9, 0, 0);

  v19 = specialized Data.init(count:)(v12);
  v20 = v13;

  _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_nTm(&v19, a6, v18, a2 + 32, v9, a2);
  v14 = v19;
  v15 = v20;
  isa = Data._bridgeToObjectiveC()().super.isa;
  String.utf8CString.getter();
  REMeshDefinitionSetCustomAttributeWithData();

  return outlined consume of Data._Representation(v14, v15);
}

uint64_t MeshModelDefinition.__deallocating_deinit()
{
  RERelease();

  return swift_deallocClassInstance();
}

uint64_t MeshModelDefinition.__allocating_init()()
{
  v0 = REMeshModelDefinitionCreate();
  type metadata accessor for MeshModelDefinition();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

void key path getter for MeshModelDefinition.name : MeshModelDefinition(uint64_t *a2@<X8>)
{
  v3 = REMeshModelDefinitionCopyName();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t key path setter for MeshModelDefinition.name : MeshModelDefinition(void *a1, uint64_t a2)
{
  String.utf8CString.getter();
  REMeshModelDefinitionSetName();
}

uint64_t MeshModelDefinition.name.getter()
{
  v0 = REMeshModelDefinitionCopyName();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t MeshModelDefinition.name.setter(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();

  REMeshModelDefinitionSetName();
}

uint64_t (*MeshModelDefinition.name.modify(uint64_t *a1))()
{
  a1[2] = v1;
  v3 = REMeshModelDefinitionCopyName();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return MeshModelDefinition.name.modify;
}

uint64_t MeshModelDefinition.name.modify(void *a1, char a2)
{
  String.utf8CString.getter();
  if (a2)
  {
    REMeshModelDefinitionSetName();
  }

  else
  {

    REMeshModelDefinitionSetName();
  }
}

Swift::Void __swiftcall MeshModelDefinition.append(levelOfDetail:minScreenArea:maxViewDepth:)(Swift::Int levelOfDetail, Swift::Float minScreenArea, Swift::Float maxViewDepth)
{
  if (levelOfDetail < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(levelOfDetail))
  {
LABEL_6:
    JUMPOUT(0x1C68FC2A0);
  }

  __break(1u);
  goto LABEL_6;
}

uint64_t MeshModelDefinition.append(triangles:materialIndex:levelOfDetail:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a3 | a2) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a3 <= 0xFFFFFFFFLL)
  {
    return REMeshModelDefinitionAppendTrianglesWithName();
  }

LABEL_7:
  __break(1u);
  return v3;
}

void MeshModelDefinition.append(triangles:materialIndex:levelOfDetail:name:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((a3 | a2) < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 > 0xFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    return;
  }

  String.utf8CString.getter();
  REMeshModelDefinitionAppendTrianglesWithName();
}

void MeshInstanceDefinition.__allocating_init(name:modelIndex:transform:)(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a3))
  {
    String.utf8CString.getter();

    v7 = REMeshInstanceDefinitionCreate();

    type metadata accessor for MeshInstanceDefinition();
    *(swift_allocObject() + 16) = v7;
    return;
  }

  __break(1u);
}

uint64_t MeshAttributeDescriptor.makeData(jointIndices:weights:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  v6 = MEMORY[0x1C68FBD90](*(v2 + 16), a1 + 32, a2 + 32, v3, 0, 0);
  v9[0] = specialized Data.init(count:)(v6);
  v9[1] = v7;

  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v9, v2, a1 + 32, v3, a2 + 32, v3, a1);
  return v9[0];
}

uint64_t MeshDefinition.setAttribute(_:skinJointIndices:skinWeights:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MeshAttributeDescriptor.makeData(jointIndices:weights:)(a2, a3);
  v5 = v4;
  isa = Data._bridgeToObjectiveC()().super.isa;
  REMeshDefinitionSetAttributeWithData();

  return outlined consume of Data._Representation(v3, v5);
}

uint64_t MeshDefinition.setAttribute(_:jointInfluences:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x1C68FBDA0](*(a1 + 16), a2 + 32, v4, 0, 0);
  v11 = specialized Data.init(count:)(v5);
  v12 = v6;

  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v11, a1, a2 + 32, v4, a2);
  v7 = v11;
  v8 = v12;
  isa = Data._bridgeToObjectiveC()().super.isa;
  REMeshDefinitionSetAttributeWithData();

  return outlined consume of Data._Representation(v7, v8);
}

char *MeshDefinition.setAttribute(_:influencesPerVert:vertCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a3 & ~(a3 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (a3 < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = a1;
  if (a3)
  {
    v9 = 1;
    while (1)
    {
      v10 = v9 * a2;
      if ((v9 * a2) >> 64 != (v9 * a2) >> 63)
      {
        break;
      }

      if (v10 < 0xFFFFFFFF80000000)
      {
        goto LABEL_14;
      }

      if (v10 > 0x7FFFFFFF)
      {
        goto LABEL_15;
      }

      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v12 + 1;
      *(v7 + 4 * v12 + 32) = v10;
      if (++v9 - a3 == 1)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  v13 = *(v8 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = *(v7 + 16);
  v16 = MEMORY[0x1C68FBDD0](v13, v7 + 32, v15, 0, 0);
  v21 = specialized Data.init(count:)(v16);
  v22 = v17;

  _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_nTm(&v21, implicit closure #2 in implicit closure #1 in MeshAttributeDescriptor.makeData(skinInfluenceEndIndices:)partial apply, v14, v7 + 32, v15, v7);
  v18 = v21;
  v19 = v22;

  isa = Data._bridgeToObjectiveC()().super.isa;
  REMeshDefinitionSetAttributeWithData();

  return outlined consume of Data._Representation(v18, v19);
}

Swift::Void __swiftcall MeshDefinition.setSkeletonName(_:)(Swift::String a1)
{
  String.utf8CString.getter();
  REMeshDefinitionSetSkeletonName();
}

uint64_t static MeshAttributeDescriptor.positionFloat3.getter(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for MeshAttributeDescriptor();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t MeshDefinition.setAttribute(_:blendShapeOffsets:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1C68FBD60](v5, a2 + 32, v7, 0, 0);
  v14 = specialized Data.init(count:)(v8);
  v15 = v9;

  _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C246values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_nTm(&v14, partial apply for implicit closure #2 in implicit closure #1 in MeshAttributeDescriptor.makeData(blendShapeOffsets:), v6, a2 + 32, v7, a2);
  v10 = v14;
  v11 = v15;

  isa = Data._bridgeToObjectiveC()().super.isa;
  String.utf8CString.getter();
  REMeshDefinitionSetCustomAttributeWithData();

  return outlined consume of Data._Representation(v10, v11);
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v9 = a1[1];
  v11 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v11 != 2)
    {
      *(&v24 + 7) = 0;
      *&v24 = 0;
      if (a3)
      {
        if (a5)
        {
          MEMORY[0x1C68FBD90](*(a2 + 16), a3, a5, *(a7 + 16), &v24, 0);

          goto LABEL_29;
        }

        goto LABEL_40;
      }

      goto LABEL_38;
    }

    outlined consume of Data._Representation(v10, v9);
    *&v24 = v10;
    *(&v24 + 1) = v9 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1C18A2C50;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v13 = *(v24 + 16);
    v14 = *(v24 + 24);
    if (!__DataStorage._bytes.getter())
    {
LABEL_37:

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (!__OFSUB__(v13, __DataStorage._offset.getter()))
    {
      if (!__OFSUB__(v14, v13))
      {
        MEMORY[0x1C68F2040]();
        if (!a3)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (!a5)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        MEMORY[0x1C68FBD90](*(a2 + 16));

        v15 = *(&v24 + 1) | 0x8000000000000000;
        *a1 = v24;
LABEL_28:
        a1[1] = v15;
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v11)
  {

    outlined consume of Data._Representation(v10, v9);
    *&v24 = v10;
    WORD4(v24) = v9;
    BYTE10(v24) = BYTE2(v9);
    BYTE11(v24) = BYTE3(v9);
    BYTE12(v24) = BYTE4(v9);
    BYTE13(v24) = BYTE5(v9);
    BYTE14(v24) = BYTE6(v9);
    if (a3)
    {
      if (a5)
      {
        MEMORY[0x1C68FBD90](*(a2 + 16));
        v12 = DWORD2(v24) | ((WORD6(v24) | (BYTE14(v24) << 16)) << 32);

        *a1 = v24;
        a1[1] = v12;
LABEL_29:

        return;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_37;
  }

  v16 = v9 & 0x3FFFFFFFFFFFFFFFLL;

  outlined copy of Data._Representation(v10, v9);
  outlined consume of Data._Representation(v10, v9);
  *a1 = xmmword_1C18A2C50;
  outlined consume of Data._Representation(0, 0xC000000000000000);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v10 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v18 < v10)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v10, __DataStorage._offset.getter()))
    {
LABEL_35:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v19 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v16 = v19;
    v18 = v10 >> 32;
  }

  if (v18 < v10)
  {
    goto LABEL_31;
  }

  if (!__DataStorage._bytes.getter())
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (__OFSUB__(v10, __DataStorage._offset.getter()))
  {
    goto LABEL_33;
  }

  MEMORY[0x1C68F2040]();
  if (!a3)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (a5)
  {
    MEMORY[0x1C68FBD90](*(a2 + 16));
    swift_bridgeObjectRelease_n();

    v15 = v16 | 0x4000000000000000;
    *a1 = v10;
    goto LABEL_28;
  }

LABEL_45:
  __break(1u);
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&v22 + 7) = 0;
      *&v22 = 0;
      if (a3)
      {
        MEMORY[0x1C68FBDA0](*(a2 + 16), a3, *(a5 + 16), &v22, 0);

        goto LABEL_24;
      }

      goto LABEL_33;
    }

    outlined consume of Data._Representation(v9, v8);
    *&v22 = v9;
    *(&v22 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1C18A2C50;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v13 = *(v22 + 16);
    v14 = *(v22 + 24);
    if (!__DataStorage._bytes.getter())
    {
LABEL_32:

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!__OFSUB__(v13, __DataStorage._offset.getter()))
    {
      if (!__OFSUB__(v14, v13))
      {
        MEMORY[0x1C68F2040]();
        if (!a3)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        MEMORY[0x1C68FBDA0](*(a2 + 16));

        v15 = *(&v22 + 1) | 0x8000000000000000;
        *a1 = v22;
LABEL_21:
        a1[1] = v15;
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v10)
  {

    outlined consume of Data._Representation(v9, v8);
    *&v22 = v9;
    WORD4(v22) = v8;
    BYTE10(v22) = BYTE2(v8);
    BYTE11(v22) = BYTE3(v8);
    BYTE12(v22) = BYTE4(v8);
    BYTE13(v22) = BYTE5(v8);
    BYTE14(v22) = BYTE6(v8);
    if (a3)
    {
      MEMORY[0x1C68FBDA0](*(a2 + 16), a3, *(a5 + 16), &v22, BYTE6(v8));
      v11 = v22;
      v12 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);

      *a1 = v11;
      a1[1] = v12;
LABEL_24:

      return;
    }

    __break(1u);
    goto LABEL_32;
  }

  v16 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  outlined copy of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v9, v8);
  *a1 = xmmword_1C18A2C50;
  outlined consume of Data._Representation(0, 0xC000000000000000);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v9 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v18 < v9)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
    {
LABEL_30:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v19 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v16 = v19;
    v18 = v9 >> 32;
  }

  if (v18 < v9)
  {
    goto LABEL_26;
  }

  if (!__DataStorage._bytes.getter())
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (__OFSUB__(v9, __DataStorage._offset.getter()))
  {
    goto LABEL_28;
  }

  MEMORY[0x1C68F2040]();
  if (a3)
  {
    MEMORY[0x1C68FBDA0](*(a2 + 16));
    swift_bridgeObjectRelease_n();

    v15 = v16 | 0x4000000000000000;
    *a1 = v9;
    goto LABEL_21;
  }

LABEL_36:
  __break(1u);
}

void _s10Foundation4DataV15_RepresentationO22withUnsafeMutableBytesyxxSwKXEKlFyt_Tg5177_s17RealityFoundation23MeshAttributeDescriptorC8makeData33_89A8FDC4A276F1EFD5AD996B93AE9C24LL6values4with0B00G0VSayxG_SiSPyxG_SiSvSgSitXEtlFZAJSRyxGXEfU_ySwXEfU_s5SIMD3VySfG_Tg5SPyxGSiSvSgS2iRi_zRi0_zlys5SIMD3VySfGIsgyyyyd_SRyALGSayALGSiTf1ncn_nTm(uint64_t *a1, void (*a2)(uint64_t, void, __int128 *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&v39 + 7) = 0;
      *&v39 = 0;
      if (a4)
      {
        (a2)(a4, *(a6 + 16), &v39, 0, a5);
        goto LABEL_30;
      }

      goto LABEL_39;
    }

    outlined consume of Data._Representation(v9, v8);
    *&v39 = v9;
    *(&v39 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1C18A2C50;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v13 = *(&v39 + 1);
    v15 = *(v39 + 16);
    v14 = *(v39 + 24);
    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
LABEL_38:

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v17 = v16;
    v18 = __DataStorage._offset.getter();
    v19 = v15 - v18;
    if (!__OFSUB__(v15, v18))
    {
      v20 = __OFSUB__(v14, v15);
      v21 = v14 - v15;
      if (!v20)
      {
        v22 = MEMORY[0x1C68F2040]();
        if (a4)
        {
          if (v22 >= v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = v22;
          }

          a2(a4, *(a6 + 16), (v19 + v17), v23);

          *a1 = v39;
          a1[1] = v13 | 0x8000000000000000;
          goto LABEL_30;
        }

        goto LABEL_41;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v10)
  {

    outlined consume of Data._Representation(v9, v8);
    *&v39 = v9;
    WORD4(v39) = v8;
    BYTE10(v39) = BYTE2(v8);
    BYTE11(v39) = BYTE3(v8);
    BYTE12(v39) = BYTE4(v8);
    BYTE13(v39) = BYTE5(v8);
    BYTE14(v39) = BYTE6(v8);
    if (a4)
    {
      a2(a4, *(a6 + 16), &v39, BYTE6(v8));
      v11 = v39;
      v12 = DWORD2(v39) | ((WORD6(v39) | (BYTE14(v39) << 16)) << 32);

      *a1 = v11;
      a1[1] = v12;
LABEL_30:

      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  v24 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  outlined copy of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v9, v8);
  *a1 = xmmword_1C18A2C50;
  outlined consume of Data._Representation(0, 0xC000000000000000);

  v25 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v25 < v9)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
    {
LABEL_36:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v26 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v24 = v26;
  }

  v27 = v25 < v9;
  v28 = v25 - v9;
  if (v27)
  {
    goto LABEL_32;
  }

  v29 = __DataStorage._bytes.getter();
  if (!v29)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v30 = v29;
  v31 = __DataStorage._offset.getter();
  v32 = v9 - v31;
  if (__OFSUB__(v9, v31))
  {
    goto LABEL_34;
  }

  v33 = MEMORY[0x1C68F2040]();
  if (a4)
  {
    if (v33 >= v28)
    {
      v34 = v28;
    }

    else
    {
      v34 = v33;
    }

    a2(a4, *(a6 + 16), (v32 + v30), v34);
    swift_bridgeObjectRelease_n();

    *a1 = v9;
    a1[1] = v24 | 0x4000000000000000;
    goto LABEL_30;
  }

LABEL_42:
  __break(1u);
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t specialized MeshDefinition.__allocating_init(attributes:vertexCount:indexCount:customNames:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_28;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v6; ++i)
    {
      v9 = *(MEMORY[0x1C68F41F0](i, a1) + 16);
      swift_unknownObjectRelease();
      v11 = *(v23 + 16);
      v10 = *(v23 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v23 + 16) = v11 + 1;
      *(v23 + 8 * v11 + 32) = v9;
    }
  }

  else
  {
    v12 = *(v23 + 16);
    v13 = 32;
    do
    {
      v14 = *(*(a1 + v13) + 16);
      v15 = *(v23 + 24);
      if (v12 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v12 + 1, 1);
      }

      *(v23 + 16) = v12 + 1;
      *(v23 + 8 * v12 + 32) = v14;
      v13 += 8;
      ++v12;
      --v6;
    }

    while (v6);
  }

LABEL_16:

  result = REMeshAttributesDescriptorCreate();
  v16 = 0;
  v17 = 1 << *(a4 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a4 + 64);
  v20 = (v17 + 63) >> 6;
  if (v19)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      v22 = REMeshDefinitionCreateWithAttributes();
      RERelease();

      type metadata accessor for MeshDefinition();
      result = swift_allocObject();
      *(result + 16) = v22;
      return result;
    }

    v19 = *(a4 + 64 + 8 * v21);
    ++v16;
    if (v19)
    {
      v16 = v21;
      do
      {
LABEL_24:
        v19 &= v19 - 1;
        String.utf8CString.getter();
        REMeshAttributeDescriptorArraySetCustomName();
      }

      while (v19);
      continue;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void partial apply for implicit closure #2 in implicit closure #1 in MeshAttributeDescriptor.makeData(colors:)()
{
  JUMPOUT(0x1C68FBD70);
}

{
  JUMPOUT(0x1C68FBD80);
}

uint64_t partial apply for closure #1 in MeshAttributeDescriptor.makeData(custom:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return closure #1 in MeshAttributeDescriptor.makeData(custom:name:)(a1, a2, a3, a4, v4[2], v4[3], v4[4], MEMORY[0x1E69989D0]);
}

{
  return closure #1 in MeshAttributeDescriptor.makeData(custom:name:)(a1, a2, a3, a4, v4[2], v4[3], v4[4], MEMORY[0x1E69989D8]);
}

{
  return closure #1 in MeshAttributeDescriptor.makeData(custom:name:)(a1, a2, a3, a4, v4[2], v4[3], v4[4], MEMORY[0x1E69989E0]);
}

uint64_t dispatch thunk of MeshDefinition.setIndices(_:)()
{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 128))();
}

uint64_t dispatch thunk of MeshDefinition.setAttribute(_:colors:)()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

uint64_t dispatch thunk of MeshDefinition.setAttribute(_:custom:name:)()
{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

__n128 BillboardAction.Transition.timingFunction.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u32[0];
  v3 = v1[2].n128_u8[4];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u32[0] = v2;
  a1[1].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.Transition.timingFunction.setter(__n128 *a1)
{
  v2 = a1[1].n128_u32[0];
  v3 = a1[1].n128_u8[4];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u32[0] = v2;
  v1[2].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.Transition.init(duration:timingFunction:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>, double a3@<D0>)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  a2->n128_f64[0] = a3;
  result = *a1;
  a2[1] = *a1;
  a2[2].n128_u32[0] = v3;
  a2[2].n128_u8[4] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance BillboardAction.Transition.CodingKeys()
{
  if (*v0)
  {
    return 0x7546676E696D6974;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance BillboardAction.Transition.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7546676E696D6974 && a2 == 0xEE006E6F6974636ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BillboardAction.Transition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BillboardAction.Transition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BillboardAction.Transition.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation15BillboardActionV10TransitionV10CodingKeys33_52B3F972566D91F8D07DB8B5F3320F17LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation15BillboardActionV10TransitionV10CodingKeys33_52B3F972566D91F8D07DB8B5F3320F17LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *(v1 + 16);
  v14 = *(v1 + 24);
  v9 = *(v1 + 32);
  v12 = *(v1 + 36);
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v16 = v8;
    v17 = v14;
    v18 = v13;
    v19 = v12;
    v15 = 1;
    lazy protocol witness table accessor for type AnimationTimingFunction and conformance AnimationTimingFunction();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction.Transition.CodingKeys, &unk_1F40F3538, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction.Transition.CodingKeys, &unk_1F40F3538, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction.Transition.CodingKeys, &unk_1F40F3538, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction.Transition.CodingKeys, &unk_1F40F3538, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationTimingFunction and conformance AnimationTimingFunction()
{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction, &type metadata for AnimationTimingFunction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction, &type metadata for AnimationTimingFunction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction;
  if (!lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationTimingFunction, &type metadata for AnimationTimingFunction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimingFunction and conformance AnimationTimingFunction);
  }

  return result;
}

uint64_t BillboardAction.Transition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation15BillboardActionV10TransitionV10CodingKeys33_52B3F972566D91F8D07DB8B5F3320F17LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation15BillboardActionV10TransitionV10CodingKeys33_52B3F972566D91F8D07DB8B5F3320F17LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BillboardAction.Transition.CodingKeys and conformance BillboardAction.Transition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v16) = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v15[15] = 1;
    lazy protocol witness table accessor for type AnimationTimingFunction and conformance AnimationTimingFunction();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v11 = v17;
    v12 = v18;
    v13 = v16;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
    *(a2 + 36) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 BillboardAction.transitionIn.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u32[0];
  v3 = v1[2].n128_u8[4];
  a1->n128_u64[0] = v1->n128_u64[0];
  result = v1[1];
  a1[1] = result;
  a1[2].n128_u32[0] = v2;
  a1[2].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.transitionIn.setter(__n128 *a1)
{
  v2 = a1[2].n128_u32[0];
  v3 = a1[2].n128_u8[4];
  v1->n128_u64[0] = a1->n128_u64[0];
  result = a1[1];
  v1[1] = result;
  v1[2].n128_u32[0] = v2;
  v1[2].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.transitionOut.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[5].n128_u32[0];
  v3 = v1[5].n128_u8[4];
  a1->n128_u64[0] = v1[3].n128_u64[0];
  result = v1[4];
  a1[1] = result;
  a1[2].n128_u32[0] = v2;
  a1[2].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.transitionOut.setter(__n128 *a1)
{
  v2 = a1[2].n128_u32[0];
  v3 = a1[2].n128_u8[4];
  v1[3].n128_u64[0] = a1->n128_u64[0];
  result = a1[1];
  v1[4] = result;
  v1[5].n128_u32[0] = v2;
  v1[5].n128_u8[4] = v3;
  return result;
}

__n128 BillboardAction.init(transitionIn:transitionOut:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = a2->n128_u64[0];
  v6 = a2[2].n128_u32[0];
  v7 = a2[2].n128_u8[4];
  *a3 = *a1;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 32) = v3;
  *(a3 + 36) = v4;
  *(a3 + 48) = v5;
  result = a2[1];
  *(a3 + 64) = result;
  *(a3 + 80) = v6;
  *(a3 + 84) = v7;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BillboardAction.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xED000074754F6E6FLL;
  }

  else
  {
    v2 = 0xEC0000006E496E6FLL;
  }

  if (*a2)
  {
    v3 = 0xED000074754F6E6FLL;
  }

  else
  {
    v3 = 0xEC0000006E496E6FLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BillboardAction.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance BillboardAction.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BillboardAction.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance BillboardAction.CodingKeys(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BillboardAction.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance BillboardAction.CodingKeys(void *a1@<X8>)
{
  v2 = 0xEC0000006E496E6FLL;
  if (*v1)
  {
    v2 = 0xED000074754F6E6FLL;
  }

  *a1 = 0x697469736E617274;
  a1[1] = v2;
}

void protocol witness for CodingKey.init(stringValue:) in conformance BillboardAction.CodingKeys(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of BillboardAction.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance BillboardAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance BillboardAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Float __swiftcall BillboardAction.transitionInValue(initialValue:normalizedTime:eventDuration:)(Swift::Float initialValue, Swift::Double normalizedTime, Swift::Double eventDuration)
{
  if (normalizedTime > 0.0)
  {
    v4 = initialValue;
    initialValue = 1.0;
    if (normalizedTime <= 1.0 && eventDuration > 0.0)
    {
      v5 = normalizedTime / (*v3 / eventDuration);
      if (v5 <= 0.0)
      {
        v5 = 0.0;
      }

      if (v5 <= 1.0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 1.0;
      }

      AnimationTimingFunction.coreEasingFunction.getter();
      if (*(v7 + 16))
      {
        REEasingFunctionEvaluateEx();
        v6 = v8;
      }

      return v6 + ((1.0 - v6) * v4);
    }
  }

  return initialValue;
}

Swift::Float __swiftcall BillboardAction.transitionOutValue(initialValue:normalizedTime:eventDuration:)(Swift::Float initialValue, Swift::Double normalizedTime, Swift::Double eventDuration)
{
  if (normalizedTime < 1.0)
  {
    v4 = initialValue;
    initialValue = 1.0;
    if (normalizedTime >= 0.0 && eventDuration > 0.0)
    {
      v5 = (*(v3 + 48) / eventDuration + normalizedTime + -1.0) / (*(v3 + 48) / eventDuration);
      if (v5 <= 0.0)
      {
        v5 = 0.0;
      }

      if (v5 <= 1.0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 1.0;
      }

      AnimationTimingFunction.coreEasingFunction.getter();
      if (*(v7 + 16))
      {
        REEasingFunctionEvaluateEx();
        v6 = v8;
      }

      return (1.0 - v6) + (v6 * v4);
    }
  }

  return initialValue;
}

uint64_t BillboardAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation15BillboardActionV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation15BillboardActionV10CodingKeysOGMR);
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = *v1;
  v8 = v1[2];
  v7 = v1[3];
  v9 = *(v1 + 8);
  v26 = *(v1 + 36);
  v10 = v1[6];
  v11 = v1[8];
  v17 = v1[9];
  v18 = v11;
  LODWORD(v11) = *(v1 + 20);
  v15 = *(v1 + 84);
  v16 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = v6;
  v22 = v8;
  v23 = v7;
  v24 = v9;
  v25 = v26;
  v27 = 0;
  lazy protocol witness table accessor for type BillboardAction.Transition and conformance BillboardAction.Transition();
  v12 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {
    v21 = v10;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = v15;
    v27 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v20 + 8))(v5, v3);
}

unint64_t lazy protocol witness table accessor for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction.CodingKeys, &type metadata for BillboardAction.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction.CodingKeys, &type metadata for BillboardAction.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction.CodingKeys, &type metadata for BillboardAction.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction.CodingKeys, &type metadata for BillboardAction.CodingKeys, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BillboardAction.Transition and conformance BillboardAction.Transition()
{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction.Transition, &type metadata for BillboardAction.Transition, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition;
  if (!lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BillboardAction.Transition, &type metadata for BillboardAction.Transition, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BillboardAction.Transition and conformance BillboardAction.Transition);
  }

  return result;
}

uint64_t BillboardAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation15BillboardActionV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation15BillboardActionV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type BillboardAction.CodingKeys and conformance BillboardAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = 0;
    lazy protocol witness table accessor for type BillboardAction.Transition and conformance BillboardAction.Transition();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v21;
    v19 = *(&v22 + 1);
    v10 = v22;
    v17 = v24;
    v18 = v23;
    v20 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v11 = v21;
    v12 = v23;
    v13 = v24;
    *a2 = v9;
    v14 = v19;
    *(a2 + 16) = v10;
    *(a2 + 24) = v14;
    LOBYTE(v14) = v17;
    *(a2 + 32) = v18;
    *(a2 + 36) = v14;
    *(a2 + 48) = v11;
    *(a2 + 64) = v22;
    *(a2 + 80) = v12;
    *(a2 + 84) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 __swift_memcpy85_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BillboardAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 85))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 36);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BillboardAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 85) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 85) = 0;
    }

    if (a2)
    {
      *(result + 36) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy37_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BillboardAction.Transition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 37))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 36);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BillboardAction.Transition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 36) = -a2;
    }
  }

  return result;
}

void *BillboardActionHandler.actionStarted(event:)(void *__src)
{
  result = memcpy(v33, __src, sizeof(v33));
  v3 = v33[13];
  if (v33[13])
  {
    v26[0] = v1;

    specialized ActionEvent.animationState.getter(&v27);
    if (v28)
    {
      v26[2] = v3;
      outlined init with take of ForceEffectBase(&v27, v30);
      v4 = v31;
      v5 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v6 = *(v5 + 24);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v8 = type metadata accessor for Optional();
      v26[1] = v26;
      v9 = *(v8 - 8);
      v10 = MEMORY[0x1EEE9AC00](v8);
      v12 = v26 - v11;
      v6(v4, v5, v10);
      v13 = *(AssociatedTypeWitness - 8);
      if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
      {

        (*(v9 + 8))(v12, v8);
      }

      else
      {
        v28 = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
        (*(v13 + 32))(boxed_opaque_existential_1, v12, AssociatedTypeWitness);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14AnimatableData_pMd, &_s17RealityFoundation14AnimatableData_pMR);
        if (swift_dynamicCast())
        {

          if (REEntityGetComponent())
          {
            REBillboardComponentGetBlendFactor();
            v16 = v15;

            v17 = v26[0];
            *v26[0] = v16;
            *(v17 + 4) = 0;

            specialized Entity.ComponentSet.set<A>(_:)(v18, v16);
          }

          else
          {

            *&v27 = 0;
            *(&v27 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(60);
            MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
            v26[3] = &type metadata for BillboardAction;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation15BillboardActionVmMd, &_s17RealityFoundation15BillboardActionVmMR);
            v19 = String.init<A>(describing:)();
            MEMORY[0x1C68F3410](v19);

            MEMORY[0x1C68F3410](0xD00000000000002ELL, 0x80000001C18E0F50);
            v20 = v27;
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v21 = type metadata accessor for Logger();
            __swift_project_value_buffer(v21, static AnimationLogger.logger);

            v22 = Logger.logObject.getter();
            v23 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              v25 = swift_slowAlloc();
              *&v27 = v25;
              *v24 = 136315138;
              *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, *(&v20 + 1), &v27);
              _os_log_impl(&dword_1C1358000, v22, v23, "%s", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v25);
              MEMORY[0x1C6902A30](v25, -1, -1);
              MEMORY[0x1C6902A30](v24, -1, -1);
            }
          }
        }

        else
        {
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {

      return outlined destroy of BodyTrackingComponent?(&v27, &_s17RealityFoundation22AnimationStateProtocol_pSgMd, &_s17RealityFoundation22AnimationStateProtocol_pSgMR);
    }
  }

  return result;
}