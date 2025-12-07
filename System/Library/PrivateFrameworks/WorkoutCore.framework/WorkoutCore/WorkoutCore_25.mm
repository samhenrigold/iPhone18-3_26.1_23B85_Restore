void WorkoutDevicesProvider.cancelWatchSubscription()(uint64_t *a1, void *a2)
{
  v3 = v2;
  v4 = *a1;
  swift_beginAccess();
  v21 = v4;
  v5 = *(v3 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    Set.Iterator.init(_cocoa:)();
    v7 = v24;
    v6 = v25;
    v8 = v26;
    v9 = v27;
    v10 = v28;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v5 + 56);
    swift_bridgeObjectRetain_n();
    v9 = 0;
    v7 = v5;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_18:
      outlined consume of Set<String>.Iterator._Variant(v7);

      *(v3 + v21) = MEMORY[0x277D84FA0];

      v20 = *(v3 + *a2);
      *(v3 + *a2) = 0;

      return;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v17 = v9;
        v18 = v10;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_18;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall WorkoutDevicesProvider.addDevice(_:)(WorkoutCore::WorkoutDevice *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1->systemImage._object;
  v40 = *&a1->type;
  v41 = v10;
  productModel = a1->productModel;
  name = a1->name;
  id = a1->id;
  v39 = name;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.devices);
  outlined init with copy of WorkoutDevice(&id, v37);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  outlined destroy of WorkoutDevice(&id);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136315138;
    v33 = v40;
    v34 = v41;
    v35 = productModel;
    v31 = id;
    v32 = v39;
    outlined init with copy of WorkoutDevice(&id, v37);
    v17 = WorkoutDevice.description.getter();
    v27 = v9;
    v19 = v18;
    v37[2] = v33;
    v37[3] = v34;
    v37[4] = v35;
    v37[0] = v31;
    v37[1] = v32;
    outlined destroy of WorkoutDevice(v37);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v36);
    v9 = v27;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_20AEA4000, v13, v14, "Adding connected device: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v24 = id;
  *(v23 + 40) = v39;
  v25 = v41;
  *(v23 + 56) = v40;
  *(v23 + 72) = v25;
  *(v23 + 88) = productModel;
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *&v33 = partial apply for closure #1 in WorkoutDevicesProvider.addDevice(_:);
  *(&v33 + 1) = v23;
  v31._countAndFlagsBits = MEMORY[0x277D85DD0];
  v31._object = 1107296256;
  v32._countAndFlagsBits = thunk for @escaping @callee_guaranteed () -> ();
  v32._object = &block_descriptor_35;
  v26 = _Block_copy(&v31);
  outlined init with copy of WorkoutDevice(&id, v37);

  static DispatchQoS.unspecified.getter();
  *&v37[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v26);
  _Block_release(v26);

  (*(v30 + 8))(v5, v2);
  (*(v28 + 8))(v9, v29);
}

void closure #1 in WorkoutDevicesProvider.addDevice(_:)(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  LODWORD(v5) = *(a2 + 32);
  if (v5 > 1)
  {
    goto LABEL_12;
  }

  if (*(a2 + 32))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v26);

    v18 = *(v26 + 2);
    if (v18)
    {
      v7 = 0;
      for (i = 0; i != v18; ++i)
      {
        if (v26[v7 + 64] == 1 && v26[v7 + 88] == (a2[7] & 1))
        {

          swift_getKeyPath();
          swift_getKeyPath();
          outlined init with copy of WorkoutDevice(a2, &v26);
          static Published.subscript.getter(&v26);

          v9 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_33;
        }

        v7 += 80;
      }
    }

LABEL_36:

    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutDevice(a2, &v26);
    static Published.subscript.getter(&v26);

    v9 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v20 = *(v9 + 2);
    v19 = *(v9 + 3);
    if (v20 >= v19 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v9);
    }

    *(v9 + 2) = v20 + 1;
    v21 = &v9[80 * v20];
    *(v21 + 2) = *a2;
    v22 = *(a2 + 1);
    v23 = *(a2 + 2);
    v24 = *(a2 + 4);
    *(v21 + 5) = *(a2 + 3);
    *(v21 + 6) = v24;
    *(v21 + 3) = v22;
    *(v21 + 4) = v23;
LABEL_41:
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v9;
    v25 = v4;
    static Published.subscript.setter();
    WorkoutDevicesProvider.devices.didset();

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v26);

  v6 = *(v26 + 2);
  if (!v6)
  {
    goto LABEL_36;
  }

  v7 = 0;
  i = 0;
  while (v26[v7 + 64] || v26[v7 + 88] != (a2[7] & 1))
  {
    ++i;
    v7 += 80;
    if (v6 == i)
    {
      goto LABEL_36;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutDevice(a2, &v26);
  static Published.subscript.getter(&v26);

  v9 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v5 = *(v9 + 2);
    if (i < v5)
    {
LABEL_34:
      v17 = &v9[v7];
      goto LABEL_35;
    }

    __break(1u);
LABEL_12:
    if (v5 != 2)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v26);

    v10 = v26;
    v11 = *(v26 + 2);
    if (!v11)
    {
      goto LABEL_36;
    }

    i = 0;
    v12 = 0;
    v13 = *a2;
    v7 = a2[1];
    while (1)
    {
      v14 = *(v10 + i + 64);
      v15 = *(v10 + i + 88);
      v16 = *(v10 + i + 32) == v13 && *(v10 + i + 40) == v7;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v14 == 2 && v15 == (a2[7] & 1))
      {
        break;
      }

      ++v12;
      i += 80;
      if (v11 == v12)
      {
        goto LABEL_36;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutDevice(a2, &v26);
    static Published.subscript.getter(&v26);

    v9 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    if (v12 < *(v9 + 2))
    {
      v17 = &v9[i];
LABEL_35:
      outlined assign with take of WorkoutDevice(a2, (v17 + 32));
      goto LABEL_41;
    }

    __break(1u);
LABEL_44:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
LABEL_33:
    if (i < *(v9 + 2))
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_46:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45F620);
  MEMORY[0x20F2E6D80](0x6369766544646461, 0xED0000293A5F2865);
  MEMORY[0x20F2E6D80](0xD000000000000023, 0x800000020B45F640);
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v26, v27, "WorkoutCore/WorkoutDevicesProvider.swift", 40, 2, 423, 0);
  __break(1u);
}

Swift::Void __swiftcall WorkoutDevicesProvider.removeDevices(deviceType:shouldRemoveTestDevices:)(WorkoutCore::WorkoutDeviceType deviceType, Swift::Bool shouldRemoveTestDevices)
{
  v3 = v2;
  LODWORD(v4) = shouldRemoveTestDevices;
  v5 = deviceType;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS();
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *v5;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.devices);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v32 = v4;
    v33 = v3;
    v34 = v7;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    v21 = 0xE500000000000000;
    v22 = 0x6863746177;
    v23 = 0x800000020B45C790;
    v24 = 0x656E6F6870;
    if (v15 == 2)
    {
      v24 = 0xD000000000000010;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    if (v15)
    {
      v22 = 0xD000000000000016;
      v21 = 0x800000020B45C7B0;
    }

    if (v15 <= 1)
    {
      v25 = v22;
    }

    else
    {
      v25 = v24;
    }

    if (v15 <= 1)
    {
      v4 = v21;
    }

    else
    {
      v4 = v23;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v4, aBlock);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_20AEA4000, v17, v18, "Remove connected deviceType=%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v20);
    MEMORY[0x20F2E9420](v20, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);

    v3 = v33;
    v7 = v34;
    LOBYTE(v4) = v32;
  }

  else
  {
  }

  _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = v3;
  *(v28 + 24) = v15;
  *(v28 + 25) = v4 & 1;
  aBlock[4] = partial apply for closure #1 in WorkoutDevicesProvider.removeDevices(deviceType:shouldRemoveTestDevices:);
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_78;
  v29 = _Block_copy(aBlock);
  v30 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v14, v10, v29);
  _Block_release(v29);

  (*(v7 + 8))(v10, v6);
  (*(v35 + 8))(v14, v36);
}

void closure #1 in WorkoutDevicesProvider.removeDevices(deviceType:shouldRemoveTestDevices:)(void *a1, unsigned __int8 a2, int a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v43);

  v6 = v43;
  v7 = *(v43 + 16);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = 0;
  v9 = 0;
  v10 = a2;
  while (*(v43 + v8 + 64) != a2 || ((*(v43 + v8 + 88) ^ a3) & 1) != 0)
  {
    ++v9;
    v8 += 80;
    if (v7 == v9)
    {
      goto LABEL_12;
    }
  }

  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    goto LABEL_41;
  }

  if (v11 != v7)
  {
    while (v11 < v7)
    {
      v21 = &v6[v8];
      if (v6[v8 + 144] != v10 || ((v21[168] ^ a3) & 1) != 0)
      {
        if (v11 != v9)
        {
          if (v9 >= v7)
          {
            goto LABEL_36;
          }

          v22 = &v6[80 * v9 + 32];
          v38 = *v22;
          v23 = *(v22 + 1);
          v24 = *(v22 + 2);
          v25 = *(v22 + 4);
          v41 = *(v22 + 3);
          v42 = v25;
          v39 = v23;
          v40 = v24;
          v26 = *(v21 + 11);
          v28 = *(v21 + 8);
          v27 = *(v21 + 9);
          v46 = *(v21 + 10);
          v47 = v26;
          v44 = v28;
          v45 = v27;
          v43 = *(v21 + 7);
          outlined init with copy of WorkoutDevice(&v38, v37);
          outlined init with copy of WorkoutDevice(&v43, v37);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          }

          if (v9 >= *(v6 + 2))
          {
            goto LABEL_37;
          }

          v29 = &v6[80 * v9];
          v36[0] = *(v29 + 2);
          v30 = *(v29 + 3);
          v31 = *(v29 + 4);
          v32 = *(v29 + 6);
          v36[3] = *(v29 + 5);
          v36[4] = v32;
          v36[1] = v30;
          v36[2] = v31;
          v33 = v47;
          v35 = v44;
          v34 = v45;
          *(v29 + 5) = v46;
          *(v29 + 6) = v33;
          *(v29 + 3) = v35;
          *(v29 + 4) = v34;
          *(v29 + 2) = v43;
          outlined destroy of WorkoutDevice(v36);
          if (v11 >= *(v6 + 2))
          {
            goto LABEL_38;
          }

          v14 = &v6[v8];
          v37[0] = *&v6[v8 + 112];
          v15 = *&v6[v8 + 128];
          v16 = *&v6[v8 + 144];
          v17 = *&v6[v8 + 176];
          v37[3] = *&v6[v8 + 160];
          v37[4] = v17;
          v37[1] = v15;
          v37[2] = v16;
          v18 = v42;
          v20 = v39;
          v19 = v40;
          *(v14 + 10) = v41;
          *(v14 + 11) = v18;
          *(v14 + 8) = v20;
          *(v14 + 9) = v19;
          *(v14 + 7) = v38;
          outlined destroy of WorkoutDevice(v37);
        }

        ++v9;
      }

      ++v11;
      v7 = *(v6 + 2);
      v8 += 80;
      if (v11 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = *(v43 + 16);
LABEL_9:
  if (v11 < v9)
  {
    goto LABEL_40;
  }

  if (v9 < 0)
  {
    __break(1u);
LABEL_12:
    v11 = v7;
    v9 = v7;
  }

  if (__OFADD__(v11, v9 - v11))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v43 = v6;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v6 + 3) >> 1)
  {
    if (v11 <= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v11;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v6);
    *&v43 = v6;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, v11, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v38 = v6;
  a1;
  static Published.subscript.setter();
  WorkoutDevicesProvider.devices.didset();
}

Swift::Void __swiftcall WorkoutDevicesProvider.removeDevice(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.devices);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v6;
    v18 = v17;
    v19 = v2;
    v20 = countAndFlagsBits;
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, object, aBlock);
    _os_log_impl(&dword_20AEA4000, v15, v16, "Remove connected device=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v21);
    v22 = v21;
    countAndFlagsBits = v20;
    v2 = v19;
    MEMORY[0x20F2E9420](v22, -1, -1);
    v23 = v18;
    v6 = v29;
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  v25[2] = v2;
  v25[3] = countAndFlagsBits;
  v25[4] = object;
  aBlock[4] = partial apply for closure #1 in WorkoutDevicesProvider.removeDevice(_:);
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_72;
  v26 = _Block_copy(aBlock);

  v27 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v26);
  _Block_release(v26);

  (*(v6 + 8))(v9, v5);
  (*(v30 + 8))(v13, v31);
}

void closure #1 in WorkoutDevicesProvider.removeDevice(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v11);

  v6 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v11, a2, a3);

  v7 = v11;
  v8 = *(v11 + 2);
  if (v6 > v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v8, v6 - v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v7 + 24) >> 1)
  {
    if (v8 <= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v7);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v8, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  a1;
  static Published.subscript.setter();
  WorkoutDevicesProvider.devices.didset();
}

Swift::Void __swiftcall WorkoutDevicesProvider.removeDevice(_:)(WorkoutCore::WorkoutDevice *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a1->systemImage._object;
  v45 = *&a1->type;
  v46 = v12;
  productModel = a1->productModel;
  name = a1->name;
  id = a1->id;
  v44 = name;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.devices);
  outlined init with copy of WorkoutDevice(&id, v42);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined destroy of WorkoutDevice(&id);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41 = v18;
    *v17 = 136315138;
    v38 = v45;
    v39 = v46;
    v40 = productModel;
    v36 = id;
    v37 = v44;
    outlined init with copy of WorkoutDevice(&id, v42);
    v19 = WorkoutDevice.description.getter();
    v32 = v11;
    v20 = v7;
    v21 = v4;
    v22 = v2;
    v24 = v23;
    v42[2] = v38;
    v42[3] = v39;
    v42[4] = v40;
    v42[0] = v36;
    v42[1] = v37;
    outlined destroy of WorkoutDevice(v42);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v24, &v41);
    v2 = v22;
    v4 = v21;
    v7 = v20;
    v11 = v32;

    *(v17 + 4) = v25;
    _os_log_impl(&dword_20AEA4000, v15, v16, "Remove connected device=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v18);
    MEMORY[0x20F2E9420](v18, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v26 = static OS_dispatch_queue.main.getter();
  v27 = swift_allocObject();
  v28 = id;
  *(v27 + 40) = v44;
  v29 = v46;
  *(v27 + 56) = v45;
  *(v27 + 72) = v29;
  *(v27 + 88) = productModel;
  *(v27 + 16) = v2;
  *(v27 + 24) = v28;
  *&v38 = partial apply for closure #1 in WorkoutDevicesProvider.removeDevice(_:);
  *(&v38 + 1) = v27;
  v36._countAndFlagsBits = MEMORY[0x277D85DD0];
  v36._object = 1107296256;
  v37._countAndFlagsBits = thunk for @escaping @callee_guaranteed () -> ();
  v37._object = &block_descriptor_91;
  v30 = _Block_copy(&v36);
  outlined init with copy of WorkoutDevice(&id, v42);
  v31 = v2;

  static DispatchQoS.unspecified.getter();
  *&v42[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v30);
  _Block_release(v30);

  (*(v35 + 8))(v7, v4);
  (*(v33 + 8))(v11, v34);
}

void closure #1 in WorkoutDevicesProvider.removeDevice(_:)(void *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutDevice(a2, v9);
  static Published.subscript.getter(v9);

  v4 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v9, a2);
  outlined destroy of WorkoutDevice(a2);
  v5 = v9[0];
  v6 = *(v9[0] + 16);
  if (v4 > v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v6, v4 - v6))
  {
LABEL_13:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v4 > *(v5 + 24) >> 1)
  {
    if (v6 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    v9[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v5);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v4, v6, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  a1;
  static Published.subscript.setter();
  WorkoutDevicesProvider.devices.didset();
}

void WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:)(Swift::Bool a1, Swift::Bool a2)
{
  *(v2 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isAppInForeground) = a1;
  *(v2 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isStandaloneWorkoutRunning) = a2;
  WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:devicesSubscriptions:)(a1, a2, *(v2 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions));
}

Swift::Void __swiftcall WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:devicesSubscriptions:)(Swift::Bool isAppInForeground, Swift::Bool isStandaloneWorkoutRunning, Swift::Int devicesSubscriptions)
{
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.devices);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109632;
    *(v9 + 4) = isAppInForeground;
    *(v9 + 8) = 1024;
    *(v9 + 10) = isStandaloneWorkoutRunning;
    *(v9 + 14) = 2048;
    *(v9 + 16) = devicesSubscriptions;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[WorkoutDevicesProvider] evaluateScanningBasedOn(isAppInForeground:%{BOOL}d isStandaloneWorkoutRunning:%{BOOL}d devicesSubscriptions:%ld)", v9, 0x18u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  if (devicesSubscriptions >= 1 && (isStandaloneWorkoutRunning || isAppInForeground))
  {

    WorkoutDevicesProvider.configureScanningFor(watch:smartRoutingHeadphones:heartRateMonitor:)(!isStandaloneWorkoutRunning, 1, 1);
  }

  else
  {

    WorkoutDevicesProvider.stopScanning()();
  }
}

id WorkoutDevicesProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDevicesProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutDevicesProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutDevicesProvider(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for WorkoutDevicesProviding.devices.getter in conformance WorkoutDevicesProvider()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void key path getter for WorkoutAppInstallationUtility.installationState : WorkoutAppInstallationUtility(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for WorkoutAppInstallationUtility.installationState : WorkoutAppInstallationUtility(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  return result;
}

uint64_t type metadata accessor for WorkoutDevicesProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutDevicesProvider;
  if (!type metadata singleton initialization cache for WorkoutDevicesProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for WorkoutDevicesProvider(uint64_t a1)
{
  result = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, type metadata accessor for WorkoutDevicesProvider, &protocol conformance descriptor for WorkoutDevicesProvider);
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for WorkoutDevicesProvider(uint64_t a1)
{
  type metadata accessor for Published<[WorkoutDevice]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t a1, double a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x278);
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:);
  v8.n128_f64[0] = a2;

  return v10(a1, v8);
}

uint64_t dispatch thunk of WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void type metadata accessor for Published<[WorkoutDevice]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[WorkoutDevice]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A6DeviceVGMd, &_sSay11WorkoutCore0A6DeviceVGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[WorkoutDevice]>);
    }
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutDevicesProvider.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    v2 = (a2 + 16776962) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776962) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776962;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776962;
        }
      }
    }
  }

  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  if (v8 + 1 >= 2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutDevicesProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776962) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776962) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v4)
    {
      v5 = ((a2 - 254) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t getEnumTag for WorkoutDevicesProvider.State(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for WorkoutDevicesProvider.State(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void partial apply for closure #1 in WorkoutDevicesProvider.removeDevice(_:)()
{
  closure #1 in WorkoutDevicesProvider.removeDevice(_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  closure #1 in WorkoutDevicesProvider.removeDevice(_:)(*(v0 + 16), (v0 + 24));
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
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

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

Swift::Int specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v5 = a2;
  v68 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v55 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v59 = ~v9;
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
  v63 = (a2 + 56);

  v15 = 0;
  v61 = v13;
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
    v62 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v61;
    v15 = v62;
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
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v63[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v61;
  v27 = v62;
  v65 = v59;
  v66 = v62;
  v67 = v11;
  v64[0] = v61;
  v64[1] = v7;

  v30 = *(v5 + 32);
  v56 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v56;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v57 = &v55;
    MEMORY[0x28223BE20](v28, v29);
    v2 = &v55 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v63, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v60 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v58 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = specialized _NativeSet.extractSubset(using:count:)(v60, v56, v58, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v62 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v42 = Hasher._finalize()();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v63[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v62;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v63[v8 >> 6]) == 0)
              {
                v3 = v61;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v61;
          v35 = v60[v2];
          v60[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v62;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v58 - 1;
        if (__OFSUB__(v58, 1))
        {
          __break(1u);
        }

        if (v58 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v62;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v63, v50);
  v52 = v55;
  specialized closure #1 in _NativeSet.subtracting<A>(_:)(v51, v56, v5, v2, v64);
  v54 = v53;

  if (!v52)
  {

    MEMORY[0x20F2E9420](v51, -1, -1);
    v3 = v64[0];
    v59 = v65;
    v5 = v54;
LABEL_51:
    v13 = v3;
LABEL_53:
    outlined consume of Set<String>.Iterator._Variant(v13);
    return v5;
  }

  result = MEMORY[0x20F2E9420](v51, -1, -1);
  __break(1u);
  return result;
}

void specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
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

          specialized _NativeSet.extractSubset(using:count:)(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
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
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
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

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a1;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      if (__CocoaSet.Index.age.getter() != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      __CocoaSet.Index.element.getter();
      type metadata accessor for WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder();
      swift_dynamicCast();
      Hasher.init(_seed:)();
      v19 = v20[0];
      v7 = *(v20[0] + 16);
      v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      MEMORY[0x20F2E7FF0](*(v7 + v8) + 1);
      v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v10 = *(v7 + v9);
      NSObject.hash(into:)();

      v11 = Hasher._finalize()();
      v12 = -1 << *(a4 + 32);
      v5 = v11 & ~v12;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v13 = ~v12;
        v14 = type metadata accessor for WorkoutConfiguration(0);
        do
        {
          v15 = *(*(*(a4 + 48) + 8 * v5) + 16);
          v16 = *(v19 + 16);
          v20[3] = v14;
          v20[4] = &protocol witness table for WorkoutConfiguration;
          v20[0] = v16;
          v17 = *((*MEMORY[0x277D85000] & *v15) + 0x1D0);

          v18 = v16;
          LOBYTE(v15) = v17(v20);

          __swift_destroy_boxed_opaque_existential_0Tm_4(v20);
          if (v15)
          {
            goto LABEL_19;
          }

          v5 = (v5 + 1) & v13;
        }

        while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
      }

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:

          return;
        }

        __break(1u);
LABEL_19:

        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x20F2E78F0](a1, a2, v6);
  type metadata accessor for WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder();
  swift_dynamicCast();
}

{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x20F2E78F0](a1, a2, v7);
      _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for HRCDevice, 0x277D13068);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for HRCDevice, 0x277D13068);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 10)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t *a2)
{
  v14 = *(a1 + 16);
  if (!v14)
  {
    return 0;
  }

  v3 = 0;
  v18 = *a2;
  v17 = a2[1];
  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = *(v4 + 8);
    v8 = v4[2];
    v9 = v4[3];
    v16 = *(v4 + 32);
    v13 = v4[5];
    v15 = v4[6];
    v10 = *(v4 - 3) == v18 && *(v4 - 2) == v17;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 == a2[2] && v6 == a2[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v7 == *(a2 + 32) && (v8 == a2[5] && v9 == a2[6] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v16 == (a2[7] & 1))
    {
      v11 = a2[9];
      if (v15)
      {
        if (v11 && (v13 == a2[8] && v15 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          return v3;
        }
      }

      else if (!v11)
      {
        return v3;
      }
    }

    v4 += 10;
    ++v3;
  }

  while (v14 != v3);
  return 0;
}

id specialized WorkoutDevicesProvider.heartRateDeviceWasPreviouslyConnected.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = MEMORY[0x20F2E6C00](v0, v2);

  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x20F2E6C00](0xD000000000000025, 0x800000020B45F580);
    v5 = [v6 BOOLForKey_];
  }

  return v5;
}

void specialized WorkoutDevicesProvider.heartRateDeviceWasPreviouslyConnected.setter(char a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = MEMORY[0x20F2E6C00](v2, v4);

  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v9 = v7;
    v8 = MEMORY[0x20F2E6C00](0xD000000000000025, 0x800000020B45F580);
    [v9 setBool:a1 & 1 forKey:v8];
  }
}

void specialized WorkoutDevicesProvider.handleDeviceListChange(previousDevices:updatedDevices:)(uint64_t a1, uint64_t a2)
{
  if ((specialized WorkoutDevicesProvider.heartRateDeviceWasPreviouslyConnected.getter() & 1) == 0)
  {
    v4 = (a2 + 64);
    v5 = *(a2 + 16) + 1;
    while (--v5)
    {
      v6 = *v4;
      v4 += 80;
      if ((v6 - 1) <= 1)
      {
        specialized WorkoutDevicesProvider.heartRateDeviceWasPreviouslyConnected.setter(1);
        break;
      }
    }
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B6DeviceV_Tt1g5(a2, a1) & 1) == 0)
  {
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    v8 = *MEMORY[0x277CBECE8];
    v9 = kCFStringEncodingASCII.getter();
    v10 = String.utf8CString.getter();
    name = CFStringCreateWithCString(v8, (v10 + 32), v9);

    if (name)
    {
      CFNotificationCenterPostNotification(v7, name, 0, 0, 1u);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v6 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 80 * result;
    while (v10 < v11)
    {
      result = *(v6 + v12 + 112);
      if (result != a2 || *(v6 + v12 + 120) != a3)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v14 = (v6 + 32 + 80 * v9);
            v37 = *v14;
            v15 = v14[1];
            v16 = v14[2];
            v17 = v14[4];
            v40 = v14[3];
            v41 = v17;
            v38 = v15;
            v39 = v16;
            v18 = *(v6 + v12 + 176);
            v20 = *(v6 + v12 + 128);
            v19 = *(v6 + v12 + 144);
            v45 = *(v6 + v12 + 160);
            v46 = v18;
            v43 = v20;
            v44 = v19;
            v42 = *(v6 + v12 + 112);
            outlined init with copy of WorkoutDevice(&v37, v36);
            outlined init with copy of WorkoutDevice(&v42, v36);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
              v6 = result;
            }

            if (v9 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v21 = (v6 + 80 * v9);
            v35[0] = v21[2];
            v22 = v21[3];
            v23 = v21[4];
            v24 = v21[6];
            v35[3] = v21[5];
            v35[4] = v24;
            v35[1] = v22;
            v35[2] = v23;
            v25 = v46;
            v27 = v43;
            v26 = v44;
            v21[5] = v45;
            v21[6] = v25;
            v21[3] = v27;
            v21[4] = v26;
            v21[2] = v42;
            result = outlined destroy of WorkoutDevice(v35);
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_26;
            }

            v28 = (v6 + v12);
            v36[0] = *(v6 + v12 + 112);
            v29 = *(v6 + v12 + 128);
            v30 = *(v6 + v12 + 144);
            v31 = *(v6 + v12 + 176);
            v36[3] = *(v6 + v12 + 160);
            v36[4] = v31;
            v36[1] = v29;
            v36[2] = v30;
            v32 = v41;
            v34 = v38;
            v33 = v39;
            v28[10] = v40;
            v28[11] = v32;
            v28[8] = v34;
            v28[9] = v33;
            v28[7] = v37;
            result = outlined destroy of WorkoutDevice(v36);
            *v47 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 80;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    _sSo17OS_dispatch_queueCMaTm_13(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

uint64_t outlined init with copy of Subscription(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_44;
  }

  v9 = *(v4 + 16);
  if (v8 == v9)
  {
    return v7;
  }

  v10 = 80 * result + 112;
  while (v8 < v9)
  {
    v57 = v7;
    v11 = (v4 + v10);
    result = *(v4 + v10);
    v12 = *(v4 + v10 + 16);
    v13 = *(v4 + v10 + 24);
    v14 = *(v4 + v10 + 32);
    v43 = *(v4 + v10 + 48);
    v44 = *(v4 + v10 + 40);
    v42 = *(v4 + v10 + 56);
    v40 = *(v4 + v10 + 64);
    v41 = *(v4 + v10 + 72);
    v15 = result == *a2 && *(v4 + v10 + 8) == a2[1];
    if (v15 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      if (v12 == a2[2] && v13 == a2[3] || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v14 == *(a2 + 32))
        {
          if (v44 == a2[5] && v43 == a2[6] || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
            if (v42 == (a2[7] & 1))
            {
              v38 = a2[9];
              if (v41)
              {
                if (v38)
                {
                  if (result = v40, v40 == a2[8]) && v41 == v38 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result))
                  {
LABEL_39:
                    v7 = v57;
                    goto LABEL_30;
                  }
                }
              }

              else if (!v38)
              {
                goto LABEL_39;
              }
            }
          }
        }
      }
    }

    v16 = v57;
    if (v8 != v57)
    {
      if (v57 >= v9)
      {
        goto LABEL_41;
      }

      v17 = (v4 + 32 + 80 * v57);
      v47 = *v17;
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[4];
      v50 = v17[3];
      v51 = v20;
      v48 = v18;
      v49 = v19;
      v21 = v11[4];
      v23 = v11[1];
      v22 = v11[2];
      v55 = v11[3];
      v56 = v21;
      v53 = v23;
      v54 = v22;
      v52 = *v11;
      outlined init with copy of WorkoutDevice(&v47, v46);
      outlined init with copy of WorkoutDevice(&v52, v46);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
      }

      if (v16 >= *(v4 + 16))
      {
        goto LABEL_42;
      }

      v24 = (v4 + 80 * v16);
      v45[0] = v24[2];
      v25 = v24[3];
      v26 = v24[4];
      v27 = v24[6];
      v45[3] = v24[5];
      v45[4] = v27;
      v45[1] = v25;
      v45[2] = v26;
      v28 = v56;
      v30 = v53;
      v29 = v54;
      v24[5] = v55;
      v24[6] = v28;
      v24[3] = v30;
      v24[4] = v29;
      v24[2] = v52;
      result = outlined destroy of WorkoutDevice(v45);
      if (v8 >= *(v4 + 16))
      {
        goto LABEL_43;
      }

      v31 = (v4 + v10);
      v46[0] = *(v4 + v10);
      v32 = *(v4 + v10 + 16);
      v33 = *(v4 + v10 + 32);
      v34 = *(v4 + v10 + 64);
      v46[3] = *(v4 + v10 + 48);
      v46[4] = v34;
      v46[1] = v32;
      v46[2] = v33;
      v35 = v51;
      v37 = v48;
      v36 = v49;
      v31[3] = v50;
      v31[4] = v35;
      v31[1] = v37;
      v31[2] = v36;
      *v31 = v47;
      result = outlined destroy of WorkoutDevice(v46);
      *a1 = v4;
    }

    v7 = v16 + 1;
LABEL_30:
    ++v8;
    v9 = *(v4 + 16);
    v10 += 80;
    if (v8 == v9)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in closure #1 in WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMd, &_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMR);

  return closure #2 in closure #1 in WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(a1);
}

double outlined consume of Set<HRCDevice>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *PredictedActivityPickerItem.topSuggested.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_topSuggested);
  v2 = v1;
  return v1;
}

_BYTE *PredictedActivityPickerItem.__allocating_init(type:activityType:goal:topSuggested:predictionSessionUUID:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v11[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type] = *a1;
  *&v11[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType] = a2;
  *&v11[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_goal] = a3;
  *&v11[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_topSuggested] = a4;
  v12 = OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_predictionSessionUUID;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a5, v13);
  v17.receiver = v11;
  v17.super_class = v5;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a5, v13);
  return v15;
}

_BYTE *PredictedActivityPickerItem.init(type:activityType:goal:topSuggested:predictionSessionUUID:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type] = *a1;
  *&v5[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType] = a2;
  *&v5[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_goal] = a3;
  *&v5[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_topSuggested] = a4;
  v7 = OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_predictionSessionUUID;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v5[v7], a5, v8);
  v12.receiver = v5;
  v12.super_class = type metadata accessor for PredictedActivityPickerItem(0);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a5, v8);
  return v10;
}

uint64_t type metadata accessor for PredictedActivityPickerItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for PredictedActivityPickerItem;
  if (!type metadata singleton initialization cache for PredictedActivityPickerItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PredictedActivityPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PredictedActivityPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PredictedActivityPickerItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PredictedActivityPickerItem.copy(with:)@<X0>(void *a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v19) = *(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type);
  v7 = *(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType);
  v8 = *(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_goal);
  v9 = *(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_topSuggested);
  v10 = *(v3 + 16);
  v10(v6, v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_predictionSessionUUID, v2);
  v11 = type metadata accessor for PredictedActivityPickerItem(0);
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type] = BYTE4(v19);
  *&v12[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType] = v7;
  *&v12[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_goal] = v8;
  *&v12[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_topSuggested] = v9;
  v10(&v12[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_predictionSessionUUID], v6, v2);
  v21.receiver = v12;
  v21.super_class = v11;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = objc_msgSendSuper2(&v21, sel_init);
  result = (*(v3 + 8))(v6, v2);
  v18 = v20;
  v20[3] = v11;
  *v18 = v16;
  return result;
}

id protocol witness for Identifiable.id.getter in conformance PredictedActivityPickerItem@<X0>(void *a1@<X8>)
{
  result = [*v1 hash];
  *a1 = result;
  return result;
}

Swift::Int PredictedActivityPickerItem.hash.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init()();
  MEMORY[0x20F2E7FF0](*(v2 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type));
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher.finalize()();
}

uint64_t PredictedActivityPickerItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v5);
  if (!v6)
  {
    outlined destroy of Any?(v5);
    goto LABEL_9;
  }

  type metadata accessor for PredictedActivityPickerItem(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    return v2 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type) != v4[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type] || (type metadata accessor for NSObject(), (static NSObject.== infix(_:_:)() & 1) == 0) || (static NSObject.== infix(_:_:)() & 1) == 0)
  {

    goto LABEL_9;
  }

  v2 = static UUID.== infix(_:_:)();

  return v2 & 1;
}

uint64_t PredictedActivityPickerItem.description.getter()
{
  _StringGuts.grow(_:)(38);

  v11[0] = 0xD000000000000022;
  v11[1] = 0x800000020B45F6F0;
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 0xE600000000000000;
      v3 = 0x6E6F74747562;
    }

    else if (v1 == 4)
    {
      v2 = 0xE700000000000000;
      v3 = 0x646567616E616DLL;
    }

    else
    {
      v2 = 0xE800000000000000;
      v3 = 0x646E756F706D6F63;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type))
  {
    if (v1 == 1)
    {
      v2 = 0xE900000000000064;
      v3 = 0x6574636964657270;
    }

    else
    {
      v2 = 0xE600000000000000;
      v3 = 0x646564697567;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x647261646E617473;
  }

  MEMORY[0x20F2E6D80](v3, v2);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v4 = v11[0];
  _StringGuts.grow(_:)(19);

  strcpy(v11, "activityType: ");
  HIBYTE(v11[1]) = -18;
  v5 = [*(v0 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType) description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x20F2E6D80](v6, v8);

  MEMORY[0x20F2E6D80](2108457, 0xE300000000000000);

  MEMORY[0x20F2E6D80](v11[0], v11[1]);

  _StringGuts.grow(_:)(26);

  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v9);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);

  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45F720);

  return v4;
}

uint64_t instantiation function for generic protocol witness table for PredictedActivityPickerItem(uint64_t a1)
{
  result = _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type PredictedActivityPickerItem and conformance PredictedActivityPickerItem, type metadata accessor for PredictedActivityPickerItem, &protocol conformance descriptor for PredictedActivityPickerItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for PredictedActivityPickerItem(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

double closure #1 in static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!a2 || !specialized _arrayConditionalCast<A, B>(_:)(a2))
  {
    goto LABEL_5;
  }

  if (a3)
  {

LABEL_5:
    (a4)(MEMORY[0x277D84F90], a3);
    return result;
  }

  a4();

  return result;
}

id @objc static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:)(int a1, int a2, void *a3, void *a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  v10 = specialized static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:)(v9, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned NSError?) -> (), v8);

  return v10;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HKWorkout(0, &lazy cache variable for type metadata for HKWorkout, 0x277CCDBE8);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

id specialized static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v78 = a3;
  v79 = a4;
  v81 = a2;
  v76 = type metadata accessor for Date();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Calendar.Component();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Calendar();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v70 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v83 = &v67 - v19;
  v85 = MEMORY[0x277D84F90];
  v20 = objc_opt_self();
  v21 = [v20 _predicateForObjectsFromAppleWatches];
  type metadata accessor for HKWorkout(0, &lazy cache variable for type metadata for HKSampleQuery, 0x277CCD8D0);
  v22 = [swift_getObjCClassFromMetadata() predicateForWorkoutsWithWorkoutActivityType_];
  if ([a1 isIndoor])
  {
    v23 = 4;
  }

  else
  {
    v23 = 5;
  }

  v24 = *MEMORY[0x277CCC4C0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v73 = v20;
  v26 = [v20 predicateForObjectsWithMetadataKey:v24 operatorType:v23 value:isa];

  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B42C8E0;
  *(inited + 32) = v21;
  *(inited + 40) = v22;
  *(inited + 48) = v26;
  v28 = v21;
  v29 = v22;
  v77 = v26;
  specialized Array.append<A>(contentsOf:)(inited);
  v30 = specialized static HKQuery._swimmingLocationTypePredicate(activityType:)(a1);
  v31 = v30;
  if (v30)
  {
    v32 = v30;
    MEMORY[0x20F2E6F30]();
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v33 = v13;
  static Calendar.current.getter();
  v34 = v80;
  v35 = v10;
  v36 = v10;
  v37 = v82;
  (*(v80 + 104))(v36, *MEMORY[0x277CC9968], v82);
  if (__OFSUB__(0, v81))
  {
    __break(1u);
LABEL_15:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_13;
  }

  v68 = v31;
  v81 = v28;
  v69 = v29;
  Date.init()();
  v38 = v83;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v39 = v74;
  v40 = v7;
  v41 = *(v74 + 8);
  v42 = v40;
  v43 = v76;
  v41();
  (*(v34 + 8))(v35, v37);
  v44 = v43;
  (*(v71 + 8))(v33, v72);
  v45 = v70;
  outlined init with copy of Date?(v38, v70);
  if ((*(v39 + 48))(v45, 1, v44) == 1)
  {
    v46 = 0;
  }

  else
  {
    v46 = Date._bridgeToObjectiveC()().super.isa;
    (v41)(v45, v44);
  }

  Date.init()();
  v47 = Date._bridgeToObjectiveC()().super.isa;
  (v41)(v42, v44);
  v48 = [v73 predicateForSamplesWithStartDate:v46 endDate:v47 options:0];

  v35 = v48;
  MEMORY[0x20F2E6F30]();
  if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  type metadata accessor for HKWorkout(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
  v49 = Array._bridgeToObjectiveC()().super.isa;

  v50 = [objc_opt_self() andPredicateWithSubpredicates_];

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;
  v54 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v55 = MEMORY[0x20F2E6C00](v51, v53);

  v56 = [v54 initWithKey:v55 ascending:0];

  v57 = [objc_opt_self() workoutType];
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_20B425990;
  *(v58 + 32) = v56;
  v59 = swift_allocObject();
  v60 = v79;
  *(v59 + 16) = v78;
  *(v59 + 24) = v60;
  v61 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  type metadata accessor for HKWorkout(0, &lazy cache variable for type metadata for NSSortDescriptor, 0x277CCAC98);
  v62 = v56;

  v63 = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = partial apply for closure #1 in static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:);
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_36;
  v64 = _Block_copy(aBlock);
  v65 = [v61 initWithSampleType:v57 predicate:v50 limit:0 sortDescriptors:v63 resultsHandler:v64];

  _Block_release(v64);
  outlined destroy of Date?(v83);

  return v65;
}

uint64_t type metadata accessor for HKWorkout(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id NLSessionActivityGoal.compatible(with:)(uint64_t a1)
{
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000037, 0x800000020B45F7E0, "WorkoutCore/SessionActivityGoalCompatible.swift", 47, 2, 26, 0);
      __break(1u);
      return result;
    }

    return v1;
  }

  if ([v1 goalTypeIdentifier] != 3)
  {

    return v1;
  }

  v2 = objc_allocWithZone(MEMORY[0x277D0A838]);

  return [v2 initWithGoalTypeIdentifier:0 value:0];
}

id @objc NLSessionActivityGoal.compatible(with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = NLSessionActivityGoal.compatible(with:)(a3);

  return v5;
}

id static UserDevicesBehaviors.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static UserDevicesBehaviors.shared;

  return v0;
}

void static UserDevicesBehaviors.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static UserDevicesBehaviors.shared;
  static UserDevicesBehaviors.shared = a1;
}

uint64_t (*static UserDevicesBehaviors.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static UserDevicesBehaviors.shared.modify;
}

id key path getter for static UserDevicesBehaviors.shared : UserDevicesBehaviors.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static UserDevicesBehaviors.shared;
  *a1 = static UserDevicesBehaviors.shared;

  return v2;
}

void key path setter for static UserDevicesBehaviors.shared : UserDevicesBehaviors.Type(id *a1)
{
  v1 = one-time initialization token for shared;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static UserDevicesBehaviors.shared;
  static UserDevicesBehaviors.shared = v2;
}

char *UserDevicesBehaviors.().init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = OBJC_IVAR___WOUserDevicesBehaviors_queue;
  type metadata accessor for OS_dispatch_queue();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v2);
  *&v1[v11] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[OBJC_IVAR___WOUserDevicesBehaviors__isFetchingWorkoutHealthDataAllowedWhenLocked] = 0;
  v1[OBJC_IVAR___WOUserDevicesBehaviors__cachedWorkoutHealthDataAllowedWhenLocked] = 2;
  v12 = one-time initialization token for shared;
  v13 = *MEMORY[0x277CCE5B0];
  if (v12 != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:3 domainName:v13 healthStore:static WorkoutCoreInjector.healthStore];

  *&v1[OBJC_IVAR___WOUserDevicesBehaviors_domain] = v14;
  v15 = type metadata accessor for UserDevicesBehaviors();
  v18.receiver = v1;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  [*&v16[OBJC_IVAR___WOUserDevicesBehaviors_domain] startObservation_];
  return v16;
}

id UserDevicesBehaviors.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR___WOUserDevicesBehaviors_domain] stopObservation_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserDevicesBehaviors();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL UserDevicesBehaviors.hasPairedWatch.getter()
{
  v0 = FIGetActivePairedDevice();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

void UserDevicesBehaviors.cachedWorkoutHealthDataAllowedWhenLocked.getter()
{
  v8 = 2;
  v1 = *&v0[OBJC_IVAR___WOUserDevicesBehaviors_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v8;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in UserDevicesBehaviors.cachedWorkoutHealthDataAllowedWhenLocked.getter;
  *(v3 + 24) = v2;
  aBlock[4] = _sIg_Ieg_TRTA_2;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_37;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void partial apply for closure #1 in UserDevicesBehaviors.cachedWorkoutHealthDataAllowedWhenLocked.getter()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR___WOUserDevicesBehaviors__cachedWorkoutHealthDataAllowedWhenLocked;
  v5 = *(v2 + OBJC_IVAR___WOUserDevicesBehaviors__cachedWorkoutHealthDataAllowedWhenLocked);
  if (v5 == 2)
  {
    UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()();
    LOBYTE(v5) = *(v2 + v4);
  }

  *v3 = v5;
}

double UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = partial apply for closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_9_4;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  v19[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v14, v9, v16);
  _Block_release(v16);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);

  return result;
}

uint64_t closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(unsigned __int8 *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = a1[OBJC_IVAR___WOUserDevicesBehaviors__cachedWorkoutHealthDataAllowedWhenLocked];
  if (v10 != 2)
  {
    return a2(v10 & 1);
  }

  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v13 = a1;

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:), v12);

  return _sSo8NSObjectCSgWOhTm_5(v9, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for DispatchQoS();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[17] = v9;
  *v9 = v6;
  v9[1] = closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:);

  return UserDevicesBehaviors.fetchWorkoutHealthDataAllowed()();
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(char a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:), 0, 0);
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(uint64_t a1)
{
  v2 = *(v1 + 144);
  v4 = *(v1 + 120);
  v3 = *(v1 + 128);
  v5 = *(v1 + 104);
  v7 = *(v1 + 88);
  v6 = *(v1 + 96);
  v14 = *(v1 + 112);
  v15 = *(v1 + 72);
  v8 = *(v1 + 64);
  static DispatchWorkItemFlags.barrier.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  *(v1 + 48) = partial apply for closure #1 in closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:);
  *(v1 + 56) = v9;
  *(v1 + 16) = MEMORY[0x277D85DD0];
  *(v1 + 24) = 1107296256;
  *(v1 + 32) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  *(v1 + 40) = &block_descriptor_50_0;
  v10 = _Block_copy((v1 + 16));
  v11 = v8;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v5, v3, v10);
  _Block_release(v10);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v3, v14);

  v15(v2);

  v12 = *(v1 + 8);

  return v12();
}

double UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()()
{
  v1 = type metadata accessor for DispatchQoS();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_29;
  v12 = _Block_copy(aBlock);
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v5, v10, v12);
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);

  return result;
}

uint64_t closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  result = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v10 - v5;
  if ((a1[OBJC_IVAR___WOUserDevicesBehaviors__isFetchingWorkoutHealthDataAllowedWhenLocked] & 1) == 0)
  {
    a1[OBJC_IVAR___WOUserDevicesBehaviors__isFetchingWorkoutHealthDataAllowedWhenLocked] = 1;
    static TaskPriority.background.getter();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = a1;
    v9 = a1;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed(), v8);

    return _sSo8NSObjectCSgWOhTm_5(v6, &_sScPSgMd, &_sScPSgMR);
  }

  return result;
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for DispatchQoS();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[15] = v7;
  *v7 = v4;
  v7[1] = closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed();

  return UserDevicesBehaviors.fetchWorkoutHealthDataAllowed()();
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()(char a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed(), 0, 0);
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()(uint64_t a1)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 104);
  v3 = *(v1 + 112);
  v5 = *(v1 + 88);
  v14 = *(v1 + 96);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 64);
  static DispatchWorkItemFlags.barrier.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  *(v1 + 48) = partial apply for closure #1 in closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed();
  *(v1 + 56) = v9;
  *(v1 + 16) = MEMORY[0x277D85DD0];
  *(v1 + 24) = 1107296256;
  *(v1 + 32) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  *(v1 + 40) = &block_descriptor_39_0;
  v10 = _Block_copy((v1 + 16));
  v11 = v8;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v5, v3, v10);
  _Block_release(v10);
  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v3, v14);

  v12 = *(v1 + 8);

  return v12();
}

uint64_t UserDevicesBehaviors.fetchWorkoutHealthDataAllowed()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](UserDevicesBehaviors.fetchWorkoutHealthDataAllowed(), 0, 0);
}

{
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  v3 = [v1 supportsCoreOSDatabaseAssertion];

  if (v3)
  {
    v4 = *(v0[19] + OBJC_IVAR___WOUserDevicesBehaviors_domain);
    v5 = *MEMORY[0x277CCE540];
    v0[20] = *MEMORY[0x277CCE540];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = UserDevicesBehaviors.fetchWorkoutHealthDataAllowed();
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCSgs5Error_pGMd, &_sSccySo8NSNumberCSgs5Error_pGMR);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?;
    v0[13] = &block_descriptor_20_0;
    v0[14] = v6;
    [v4 numberForKey:v5 completion:v0 + 10];
    v1 = v0 + 2;

    return MEMORY[0x282200938](v1);
  }

  v7 = v0[1];

  return v7(1);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = UserDevicesBehaviors.fetchWorkoutHealthDataAllowed();
  }

  else
  {
    v2 = UserDevicesBehaviors.fetchWorkoutHealthDataAllowed();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t UserDevicesBehaviors.fetchWorkoutHealthDataAllowed()(uint64_t a1)
{
  v2 = v1[20];
  swift_willThrow();

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v3 = v1[21];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.app);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[21];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Error reading allow workout health database access while locked. error=%@", v10, 0xCu);
    _sSo8NSObjectCSgWOhTm_5(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }

  v14 = v1[1];

  return v14(0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t partial apply for closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed();

  return closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void partial apply for closure #1 in closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR___WOUserDevicesBehaviors__cachedWorkoutHealthDataAllowedWhenLocked) = *(v0 + 24);
  *(v1 + OBJC_IVAR___WOUserDevicesBehaviors__isFetchingWorkoutHealthDataAllowedWhenLocked) = 0;
}

uint64_t partial apply for closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:);

  return closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t static PacerAlerts.defaultPacerAlerts()(uint64_t a1)
{
  type metadata accessor for PacerAlerts();
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PacerAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PacerAlerts.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance PacerAlerts.CodingKeys(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance PacerAlerts.CodingKeys, *a1);

  *a2 = v3 != 0;
}

void protocol witness for CodingKey.init(stringValue:) in conformance PacerAlerts.CodingKeys(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance PacerAlerts.CodingKeys, v3);

  *a2 = v5 != 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PacerAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PacerAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PacerAlerts.__allocating_init(aheadBehindAlertsEnabled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PacerAlerts.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  PacerAlerts.init(from:)(a1);
  return v2;
}

uint64_t PacerAlerts.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore11PacerAlertsC10CodingKeys33_03F69CCD90B7BF31744E45FAB9193829LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore11PacerAlertsC10CodingKeys33_03F69CCD90B7BF31744E45FAB9193829LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for PacerAlerts();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v10 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t lazy protocol witness table accessor for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys);
  }

  return result;
}

uint64_t PacerAlerts.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore11PacerAlertsC10CodingKeys33_03F69CCD90B7BF31744E45FAB9193829LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore11PacerAlertsC10CodingKeys33_03F69CCD90B7BF31744E45FAB9193829LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int PacerAlerts.hashValue.getter()
{
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance PacerAlerts@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PacerAlerts();
  v5 = swift_allocObject();
  result = PacerAlerts.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PacerAlerts()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PacerAlerts()
{
  v1 = *v0;
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PacerAlerts(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *v1;
  swift_beginAccess();
  Hasher._combine(_:)(*(v2 + 16));
  return Hasher._finalize()();
}

BOOL static PacerAlerts.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  LODWORD(a1) = *(a1 + 16);
  swift_beginAccess();
  return ((a1 ^ *(a2 + 16)) & 1) == 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PacerAlerts(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  LODWORD(v2) = *(v2 + 16);
  swift_beginAccess();
  return ((v2 ^ *(v3 + 16)) & 1) == 0;
}

unint64_t PacerAlerts.description.getter()
{
  _StringGuts.grow(_:)(43);

  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v1, v2);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD000000000000028;
}

unint64_t lazy protocol witness table accessor for type PacerAlerts and conformance PacerAlerts()
{
  result = lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts;
  if (!lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts)
  {
    type metadata accessor for PacerAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PacerAlerts.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PacerAlerts.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaPlaybackConstants(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MediaPlaybackConstants(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t WorkoutNotificationUnit.NotificationUnitType.rawValue.getter()
{
  result = 0x4365676172657661;
  switch(*v0)
  {
    case 1:
      result = 0x5065676172657661;
      break;
    case 2:
      result = 0x5065676172657661;
      break;
    case 3:
      result = 0x65636E65646163;
      break;
    case 4:
      result = 0x65636E6174736964;
      break;
    case 5:
      result = 0x796772656E65;
      break;
    case 6:
      result = 0x676E6964616568;
      break;
    case 7:
      result = 0x7461527472616568;
      break;
    case 8:
      result = 0x6567616D69;
      break;
    case 9:
      result = 1701011824;
      break;
    case 0xA:
      result = 0x6874695765636170;
      break;
    case 0xB:
      result = 0x7265776F70;
      break;
    case 0xC:
      result = 0x656D695465636172;
      break;
    case 0xD:
      result = 0x50676E696C6C6F72;
      break;
    case 0xE:
      result = 0x74696C7073;
      break;
    case 0xF:
      result = 0x676E69727473;
      break;
    case 0x10:
      result = 1701669236;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.decoded.getter()
{
  v1 = v0;
  v32 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v3);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - v10;
  v12 = *(v0 + 8);
  v34 = *v0;
  v35 = v12;
  Apple_Workout_Core_NotificationUnitType.decoded.getter(&v33);
  v13 = v33;
  type metadata accessor for WorkoutNotificationUnit();
  v14 = swift_allocObject();
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 24) = 0;
  *(v14 + 72) = 0;
  *(v14 + 48) = 1;
  *(v14 + 64) = 0;
  *(v14 + 56) = 0;
  *(v14 + 16) = v13;
  swift_beginAccess();
  *(v14 + 32) = 0;
  *(v14 + 24) = 0;
  swift_beginAccess();
  *(v14 + 40) = 0;
  *(v14 + 48) = 1;
  swift_beginAccess();
  *(v14 + 64) = 0;
  *(v14 + 56) = 0;
  swift_beginAccess();
  v29 = (v14 + 72);
  *(v14 + 72) = 0;
  v15 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v16 = (v0 + v15[6]);
  v17 = v16[1];
  if (v17)
  {
    *(v14 + 24) = *v16;
    *(v14 + 32) = v17;
  }

  v18 = v1 + v15[7];
  if ((*(v18 + 8) & 1) == 0)
  {
    *(v14 + 40) = *v18;
    *(v14 + 48) = 0;
  }

  v19 = (v1 + v15[9]);
  v20 = v19[1];
  if (v20)
  {
    *(v14 + 56) = *v19;
    *(v14 + 64) = v20;
  }

  v21 = v15[8];
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + v21, v11);
  v22 = *(v2 + 48);
  v23 = v32;
  v24 = v22(v11, 1, v32);

  outlined destroy of Apple_Workout_Core_Activity?(v11);
  if (v24 != 1)
  {
    v25 = v30;
    outlined init with copy of Apple_Workout_Core_Activity?(v1 + v21, v30);
    if (v22(v25, 1, v23) == 1)
    {
      v26 = v31;
      *(v31 + 8) = 0;
      *v26 = 0;
      v26[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      UnknownStorage.init()();
      if (v22(v25, 1, v23) != 1)
      {
        outlined destroy of Apple_Workout_Core_Activity?(v25);
      }
    }

    else
    {
      v26 = v31;
      outlined init with take of Apple_Workout_Core_Activity(v25, v31);
    }

    v27 = Apple_Workout_Core_Activity.decoded.getter();
    outlined destroy of Apple_Workout_Core_Activity(v26);
    *v29 = v27;
  }

  return v14;
}

WorkoutCore::WorkoutNotificationUnit::NotificationUnitType_optional __swiftcall WorkoutNotificationUnit.NotificationUnitType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutNotificationUnit.NotificationUnitType()
{
  v0 = WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  v2 = v1;
  if (v0 == WorkoutNotificationUnit.NotificationUnitType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutNotificationUnit.NotificationUnitType()
{
  Hasher.init(_seed:)();
  WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance WorkoutNotificationUnit.NotificationUnitType(uint64_t a1)
{
  WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutNotificationUnit.NotificationUnitType(uint64_t a1)
{
  Hasher.init(_seed:)();
  WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutNotificationUnit.NotificationUnitType@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void WorkoutNotificationUnit.type.setter(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;
}

double key path setter for WorkoutNotificationUnit.key : WorkoutNotificationUnit(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;

  return result;
}

uint64_t WorkoutNotificationUnit.key.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

double WorkoutNotificationUnit.key.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return result;
}

void WorkoutNotificationUnit.value.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
}

double key path setter for WorkoutNotificationUnit.stringLiteral : WorkoutNotificationUnit(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;

  return result;
}

uint64_t WorkoutNotificationUnit.stringLiteral.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

double WorkoutNotificationUnit.stringLiteral.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  return result;
}

void key path setter for WorkoutNotificationUnit.activityType : WorkoutNotificationUnit(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
  v5 = v2;
}

void *WorkoutNotificationUnit.activityType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void WorkoutNotificationUnit.activityType.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t WorkoutNotificationUnit.__allocating_init(type:key:value:stringLiteral:activityType:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v15 = *a1;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 24) = 0;
  *(v14 + 48) = 1;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 56) = 0;
  *(v14 + 16) = v15;
  swift_beginAccess();
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  swift_beginAccess();
  *(v14 + 40) = a4;
  *(v14 + 48) = a5 & 1;
  swift_beginAccess();
  *(v14 + 56) = a6;
  *(v14 + 64) = a7;
  swift_beginAccess();
  *(v14 + 72) = a8;
  return v14;
}

uint64_t WorkoutNotificationUnit.init(type:key:value:stringLiteral:activityType:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = 0;
  *(v8 + 48) = 1;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 56) = 0;
  *(v8 + 16) = v14;
  swift_beginAccess();
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  swift_beginAccess();
  *(v8 + 40) = a4;
  *(v8 + 48) = a5 & 1;
  swift_beginAccess();
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  swift_beginAccess();
  v15 = *(v8 + 72);
  *(v8 + 72) = a8;

  return v8;
}

uint64_t WorkoutNotificationUnit.debugDescription.getter()
{
  _StringGuts.grow(_:)(72);
  MEMORY[0x20F2E6D80](0xD00000000000001ELL, 0x800000020B45F970);
  swift_beginAccess();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0x203A79656B202CLL, 0xE700000000000000);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v0 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](0x3A65756C6176202CLL, 0xE900000000000020);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v1 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45F990);
  swift_beginAccess();
  v2 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutNotificationUnit.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance WorkoutNotificationUnit.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutNotificationUnit.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutNotificationUnit.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutNotificationUnit.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutNotificationUnit.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xE500000000000000;
  v6 = 0x65756C6176;
  v7 = 0xED00006C61726574;
  v8 = 0x694C676E69727473;
  if (v2 != 3)
  {
    v8 = 0x7974697669746361;
    v7 = 0xEC00000065707954;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7955819;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WorkoutNotificationUnit.CodingKeys()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x65756C6176;
  v4 = 0x694C676E69727473;
  if (v1 != 3)
  {
    v4 = 0x7974697669746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7955819;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutNotificationUnit.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutNotificationUnit.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutNotificationUnit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutNotificationUnit.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutNotificationUnit.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  WorkoutNotificationUnit.init(from:)(a1);
  return v2;
}

uint64_t WorkoutNotificationUnit.init(from:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D16NotificationUnitC10CodingKeys33_F5D562FCEE5F3FA6C442E2BBAA76A548LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D16NotificationUnitC10CodingKeys33_F5D562FCEE5F3FA6C442E2BBAA76A548LLOGMR);
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v30 - v6;
  v34 = v2;
  v35 = a1;
  *(v2 + 40) = 0;
  v8 = v2 + 40;
  *(v8 - 16) = 0;
  *(v8 - 8) = 0;
  *(v8 + 8) = 1;
  *(v8 + 16) = 0;
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys();
  v9 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v9)
  {
    v13 = v34;

    type metadata accessor for WorkoutNotificationUnit();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v8 + 16;
    v31 = (v8 + 32);
    v10 = v32;
    v40 = 0;
    v11._countAndFlagsBits = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v4;
    WorkoutNotificationUnit.NotificationUnitType.init(rawValue:)(v11);
    v15 = v40;
    if (v40 == 17)
    {
      v15 = 15;
    }

    v13 = v34;
    *(v34 + 16) = v15;
    v40 = 1;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v17;
    swift_beginAccess();
    *(v13 + 24) = v16;
    *(v13 + 32) = v18;

    v39 = 2;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v18) = v20;
    swift_beginAccess();
    *(v13 + 40) = v19;
    *(v13 + 48) = v18 & 1;
    v38 = 3;
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = v22;
    swift_beginAccess();
    *(v13 + 56) = v21;
    *(v13 + 64) = v23;

    v41 = 4;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v7;
    v25 = v37;
    if (v37 >> 60 == 15)
    {
      (*(v10 + 8))(v7, v12);
    }

    else
    {
      v26 = v36;
      _sSo17NSKeyedUnarchiverCMaTm_3(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
      _sSo17NSKeyedUnarchiverCMaTm_3(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
      v27 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      (*(v10 + 8))(v24, v12);
      outlined consume of Data?(v26, v25);
      if (v27)
      {
        v28 = v31;
        swift_beginAccess();
        v29 = *v28;
        *v28 = v27;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v13;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys);
  }

  return result;
}

void WorkoutNotificationUnit.encode(to:)(void *a1)
{
  v3 = v1;
  v27 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D16NotificationUnitC10CodingKeys33_F5D562FCEE5F3FA6C442E2BBAA76A548LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D16NotificationUnitC10CodingKeys33_F5D562FCEE5F3FA6C442E2BBAA76A548LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutNotificationUnit.CodingKeys and conformance WorkoutNotificationUnit.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v26[0] = *(v3 + 16);
  WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  LOBYTE(v25) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);

    return;
  }

  swift_beginAccess();
  v25 = *(v3 + 24);
  LOBYTE(v23) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_beginAccess();
  v10 = *(v3 + 48);
  v23 = *(v3 + 40);
  v24 = v10;
  LOBYTE(v22) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Double? and conformance <A> A?, &_sSdSgMd, &_sSdSgMR);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_beginAccess();
  v22 = *(v3 + 56);
  LOBYTE(v21[0]) = 3;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_beginAccess();
  v11 = *(v3 + 72);
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = objc_opt_self();
  v21[0] = 0;
  v13 = v11;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v21];
  v15 = v21[0];
  if (!v14)
  {
    v19 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_4:
    (*(v6 + 8))(v9, v5);
    return;
  }

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v21[0] = v16;
  v21[1] = v18;
  v20[15] = 4;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);

  outlined consume of Data._Representation(v16, v18);
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void WorkoutNotificationUnit.hash(into:)(uint64_t a1)
{
  swift_beginAccess();
  WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  String.hash(into:)();

  swift_beginAccess();
  if (*(v1 + 32))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_beginAccess();
  if (*(v1 + 48) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v1 + 40);
    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x20F2E8020](v3);
  }

  swift_beginAccess();
  if (*(v1 + 64))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_beginAccess();
  v4 = *(v1 + 72);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    v5 = v4;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t WorkoutNotificationUnit.deinit()
{

  return v0;
}

uint64_t WorkoutNotificationUnit.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int WorkoutNotificationUnit.hashValue.getter()
{
  Hasher.init(_seed:)();
  WorkoutNotificationUnit.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance WorkoutNotificationUnit@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for WorkoutNotificationUnit();
  v5 = swift_allocObject();
  result = WorkoutNotificationUnit.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutNotificationUnit()
{
  Hasher.init(_seed:)();
  WorkoutNotificationUnit.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutNotificationUnit(uint64_t a1)
{
  Hasher.init(_seed:)();
  WorkoutNotificationUnit.hash(into:)(v2);
  return Hasher._finalize()();
}

void Apple_Workout_Core_NotificationUnitType.decoded.getter(_BYTE *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = byte_20B43B112[*v1];
  }

  else
  {
    _StringGuts.grow(_:)(25);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v2);

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000017, 0x800000020B45FA10, "WorkoutCore/WorkoutNotificationUnit.swift", 41, 2, 217, 0);
    __break(1u);
  }
}

uint64_t specialized static WorkoutNotificationUnit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_beginAccess();
  v4 = WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  v6 = v5;
  if (v4 == WorkoutNotificationUnit.NotificationUnitType.rawValue.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  swift_beginAccess();
  v11 = *(a2 + 32);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_14:
    v15 = 0;
    return v15 & 1;
  }

  if (!v11 || (v9 != *(a2 + 24) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  swift_beginAccess();
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  swift_beginAccess();
  v14 = *(a2 + 48);
  if (v13)
  {
    if (!*(a2 + 48))
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 != *(a2 + 40))
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_14;
    }
  }

  swift_beginAccess();
  v17 = *(a1 + 72);
  swift_beginAccess();
  v18 = *(a2 + 72);
  v15 = (v17 | v18) == 0;
  if (v17 && v18)
  {
    _sSo17NSKeyedUnarchiverCMaTm_3(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    v19 = v18;
    v20 = v17;
    v15 = static NSObject.== infix(_:_:)();
  }

  return v15 & 1;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit.NotificationUnitType and conformance WorkoutNotificationUnit.NotificationUnitType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [WorkoutNotificationUnit.NotificationUnitType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutNotificationUnit.NotificationUnitType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutNotificationUnit.NotificationUnitType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A16NotificationUnitC0cD4TypeOGMd, &_sSay11WorkoutCore0A16NotificationUnitC0cD4TypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutNotificationUnit.NotificationUnitType] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit()
{
  result = lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit;
  if (!lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit)
  {
    type metadata accessor for WorkoutNotificationUnit();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutNotificationUnit and conformance WorkoutNotificationUnit);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationUnit.NotificationUnitType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutNotificationUnit.NotificationUnitType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutNotificationUnit.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutNotificationUnit.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized WorkoutNotificationUnit.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutNotificationUnit.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of Apple_Workout_Core_Activity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_Activity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_Activity(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NLActivityPickerSection.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      return 0x646E756F706D6F63;
    }

    if (a1 == 2)
    {
      return 0x6F6B726F57646461;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6574636964657270;
    }

    if (a1 == 1)
    {
      return 0x646567616E616DLL;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003ALL, 0x800000020B45C020, "WorkoutCore/NLActivityPickerSection+Description.swift", 53, 2, 23, 0);
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NLActivityPickerSection()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6574636964657270;
    }

    if (v1 == 1)
    {
      return 0x646567616E616DLL;
    }

    goto LABEL_11;
  }

  if (v1 == 3)
  {
    return 0x646E756F706D6F63;
  }

  if (v1 != 2)
  {
LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003ALL, 0x800000020B45C020, "WorkoutCore/NLActivityPickerSection+Description.swift", 53, 2, 23, 0);
    __break(1u);
    return result;
  }

  return 0x6F6B726F57646461;
}

uint64_t NLCompoundActivityPickerSection.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x647261646E617473;
  }

  if (!a1)
  {
    return 0x646564697567;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000042, 0x800000020B45BC60, "WorkoutCore/NLActivityPickerSection+Description.swift", 53, 2, 36, 0);
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NLCompoundActivityPickerSection()
{
  if (*v0 == 1)
  {
    return 0x647261646E617473;
  }

  if (!*v0)
  {
    return 0x646564697567;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000042, 0x800000020B45BC60, "WorkoutCore/NLActivityPickerSection+Description.swift", 53, 2, 36, 0);
  __break(1u);
  return result;
}

uint64_t static WorkoutConfigurationValidator.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for shared(uint64_t a1)
{
  type metadata accessor for WorkoutConfigurationValidator();
  v1 = swift_allocObject();
  result = WorkoutConfigurationValidator.init()();
  static WorkoutConfigurationValidator.shared = v1;
  return result;
}

uint64_t WorkoutConfigurationValidator.__allocating_init()()
{
  v0 = swift_allocObject();
  WorkoutConfigurationValidator.init()();
  return v0;
}

uint64_t WorkoutConfigurationValidator.activityMoveMode.getter()
{
  if (*(v0 + 88))
  {

    return WorkoutConfigurationValidator._cachedActivityMoveMode.getter();
  }

  else
  {
    v2 = *(v0 + 80);
    if (one-time initialization token for validation != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.validation);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "using override activity move mode for testing", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    return v2;
  }
}

uint64_t WorkoutConfigurationValidator.isWheelchairUser.getter()
{
  v21[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 89);
  if (v1 == 2)
  {
    v2 = *(v0 + 32);
    os_unfair_lock_lock(v2 + 4);
    if (*(v0 + 64))
    {
      v3 = WorkoutConfigurationValidator.healthStore.getter();
      v21[0] = 0;
      v4 = [v3 wheelchairUseWithError_];

      if (!v4)
      {
        v9 = v21[0];
        v10 = _convertNSErrorToError(_:)();

        swift_willThrow();
        if (one-time initialization token for validation != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static WOLog.validation);
        v12 = v10;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v21[0] = v16;
          *v15 = 136315138;
          v17 = v10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v18 = String.init<A>(describing:)();
          v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v21);

          *(v15 + 4) = v20;
          _os_log_impl(&dword_20AEA4000, v13, v14, "failed to determine wheelchair usage due to %s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm_5(v16);
          MEMORY[0x20F2E9420](v16, -1, -1);
          MEMORY[0x20F2E9420](v15, -1, -1);
        }

        else
        {
        }

        LOBYTE(v1) = 0;
        goto LABEL_9;
      }

      v5 = v21[0];
      v6 = [v4 wheelchairUse];

      *(v0 + 56) = v6;
      *(v0 + 64) = 0;
      v7 = v6 == 2;
    }

    else
    {
      v7 = *(v0 + 56) == 2;
    }

    LOBYTE(v1) = v7;
LABEL_9:
    os_unfair_lock_unlock(v2 + 4);
  }

  return v1 & 1;
}

uint64_t WorkoutConfigurationValidator._cachedActivityMoveMode.getter()
{
  if (*(v0 + 48) != 1)
  {
    return *(v0 + 40);
  }

  v1 = WorkoutConfigurationValidator.healthStore.getter();
  v2 = FIActivityMoveModeWithHealthStore();

  result = v2;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  return result;
}

id WorkoutConfigurationValidator.healthStore.getter()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    v3 = static WorkoutCoreInjector.healthStore;
    v4 = *(v0 + 72);
    *(v0 + 72) = static WorkoutCoreInjector.healthStore;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t WorkoutConfigurationValidator.init()()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 32) = v2;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 513;
  return v0;
}

uint64_t WorkoutConfigurationValidator.supportsActivityType(_:)(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 0x46)
  {
    if (WorkoutConfigurationValidator.isWheelchairUser.getter())
    {
      return 1;
    }

    else
    {
LABEL_8:
      if (one-time initialization token for validation != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static WOLog.validation);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v28 = v11;
        *v10 = 136315138;
        v12 = _HKWorkoutActivityNameForActivityType();
        if (v12)
        {
          v13 = v12;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v17._object = 0x800000020B456540;
          v17._countAndFlagsBits = 0xD000000000000015;
          if (String.hasPrefix(_:)(v17))
          {
            v18 = String.count.getter();
            v19 = specialized Collection.dropFirst(_:)(v18, v14, v16);
            v21 = v20;
            v23 = v22;
            v25 = v24;

            v14 = MEMORY[0x20F2E6D00](v19, v21, v23, v25);
            v16 = v26;
          }
        }

        else
        {
          v16 = 0x800000020B456520;
          v14 = 0xD000000000000010;
        }

        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v28);

        *(v10 + 4) = v27;
        _os_log_impl(&dword_20AEA4000, v8, v9, "%s is not supported", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm_5(v11);
        MEMORY[0x20F2E9420](v11, -1, -1);
        MEMORY[0x20F2E9420](v10, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    v3 = static WorkoutPlan.unsupportedActivityTypes.getter();
    v4 = *(v3 + 16);
    v5 = 32;
    while (v4)
    {
      v6 = *(v3 + v5);
      v5 += 8;
      --v4;
      if (v6 == a1)
      {

        goto LABEL_8;
      }
    }

    return 1;
  }
}

uint64_t WorkoutConfigurationValidator.supportsGoal(_:activityType:configurationType:)(unint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  LODWORD(v6) = *a3;
  v7 = *(v3 + 24);
  os_unfair_lock_lock(v7 + 4);
  v8 = [*(v3 + 16) objectForKey_];
  if (!v8)
  {
    result = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:a2 activityMoveMode:WorkoutConfigurationValidator.activityMoveMode.getter()];
    if (!result)
    {
      goto LABEL_61;
    }

    v8 = result;
    [*(v3 + 16) setObject:result forKey:a2];
  }

  os_unfair_lock_unlock(v7 + 4);
  if (v6 == 1)
  {
    specialized static IntervalWorkout.supportedGoalTypes(for:)(v8);
    v11 = *(v10 + 16);
    v12 = 32;
    while (v11)
    {
      v13 = *(v10 + v12);
      v12 += 8;
      --v11;
      if (v13 == a1)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_30;
  }

  result = [objc_opt_self() fiui:v8 supportedGoalTypesForWorkoutSettingsManager:?];
  if (result)
  {
    v14 = result;
    v48 = a2;
    v49 = a1;
    type metadata accessor for NSNumber();
    a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (a2 >> 62)
    {
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = v6;
    v51 = v8;
    if (v15)
    {
      v16 = 0;
      v6 = a2 & 0xC000000000000001;
      v17 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v6)
        {
          v18 = MEMORY[0x20F2E7A20](v16, a2);
        }

        else
        {
          if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v18 = *(a2 + 8 * v16 + 32);
        }

        v8 = v18;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v20 = [v18 unsignedIntegerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        a1 = *(v17 + 2);
        v21 = *(v17 + 3);
        v8 = (a1 + 1);
        if (a1 >= v21 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), a1 + 1, 1, v17);
        }

        *(v17 + 2) = v8;
        *&v17[8 * a1 + 32] = v20;
        ++v16;
        if (v19 == v15)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      swift_once();
LABEL_31:
      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static WOLog.validation);
      v26 = a2;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v27, v28))
      {
LABEL_55:

        return 0;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v29 = 136315650;
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          v31 = 0xE400000000000000;
          v32 = 1701669204;
          goto LABEL_42;
        }

        if (a1 == 3)
        {
          v31 = 0xE600000000000000;
          v32 = 0x796772656E45;
          goto LABEL_42;
        }
      }

      else
      {
        if (!a1)
        {
          v31 = 0xE400000000000000;
          v32 = 1852141647;
          goto LABEL_42;
        }

        if (a1 == 1)
        {
          v31 = 0xE800000000000000;
          v32 = 0x65636E6174736944;
LABEL_42:
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v52);

          *(v29 + 4) = v33;
          *(v29 + 12) = 2080;
          v34 = [v26 description];
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v52);

          v39 = 0xE400000000000000;
          v40 = 1818324839;
          *(v29 + 14) = v38;
          *(v29 + 22) = 2080;
          v41 = 0xE400000000000000;
          v42 = 1701011826;
          v43 = 0xE500000000000000;
          v44 = 0x7265636170;
          if (v6 != 3)
          {
            v44 = 0x6F707369746C756DLL;
            v43 = 0xEA00000000007472;
          }

          if (v6 != 2)
          {
            v42 = v44;
            v41 = v43;
          }

          if (v6)
          {
            v40 = 0x6C61767265746E69;
            v39 = 0xE800000000000000;
          }

          if (v6 <= 1)
          {
            v45 = v40;
          }

          else
          {
            v45 = v42;
          }

          if (v6 <= 1)
          {
            v46 = v39;
          }

          else
          {
            v46 = v41;
          }

          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v52);

          *(v29 + 24) = v47;
          _os_log_impl(&dword_20AEA4000, v27, v28, "%s goal is not supported for %s with configuration %s", v29, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v30, -1, -1);
          MEMORY[0x20F2E9420](v29, -1, -1);
          goto LABEL_55;
        }
      }

      v31 = 0xE700000000000000;
      v32 = 0x6E776F6E6B6E55;
      goto LABEL_42;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_26:

    v22 = *(v17 + 2);
    v23 = 32;
    v8 = v51;
    LODWORD(v6) = v50;
    a2 = v48;
    a1 = v49;
    while (v22)
    {
      v24 = *&v17[v23];
      v23 += 8;
      --v22;
      if (v24 == v49)
      {
LABEL_29:

        return 1;
      }
    }

LABEL_30:

    if (one-time initialization token for validation == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

BOOL WorkoutConfigurationValidator.supportsTargetZone(_:activityType:configurationContext:)(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a3;
  v47[1] = 0x3030202010101uLL >> (8 * *(a1 + 16));
  v47[0] = v5;
  v6 = WorkoutConfigurationValidator.activityMoveMode.getter();
  v44 = a2;
  v45 = TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:)(a2, v47, v6);
  v7 = *(a1 + 16);
  v8 = *(v45 + 2);
  v9 = v45 + 32;
  while (1)
  {
    v11 = v8;
    if (v8-- == 0)
    {
      break;
    }

    v13 = *v9;
    if (v13 > 3)
    {
      if (*v9 > 5u)
      {
        if (v13 == 6)
        {
          v17 = 0x5F65676172657661;
          v18 = 0xED00007265776F70;
          if (v7 > 3)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v18 = 0xE400000000000000;
          v17 = 1701736302;
          if (v7 > 3)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        if (v13 == 4)
        {
          v17 = 0x5F65676172657661;
        }

        else
        {
          v17 = 0xD000000000000013;
        }

        if (v13 == 4)
        {
          v18 = 0xEF65636E65646163;
        }

        else
        {
          v18 = 0x800000020B4544E0;
        }

        if (v7 > 3)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v14 = 0xD000000000000015;
      if (v13 == 2)
      {
        v14 = 0xD000000000000012;
        v15 = 0x800000020B454490;
      }

      else
      {
        v15 = 0x800000020B4544B0;
      }

      v16 = 0x5F676E696C6C6F72;
      if (*v9)
      {
        v16 = 0x5F65676172657661;
      }

      if (*v9 <= 1u)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      if (*v9 <= 1u)
      {
        v18 = 0xEC00000065636170;
      }

      else
      {
        v18 = v15;
      }

      if (v7 > 3)
      {
LABEL_30:
        v21 = 0x5F65676172657661;
        v22 = 1701736302;
        if (v7 == 6)
        {
          v22 = 0x5F65676172657661;
        }

        v23 = 0xED00007265776F70;
        if (v7 != 6)
        {
          v23 = 0xE400000000000000;
        }

        if (v7 != 4)
        {
          v21 = 0xD000000000000013;
        }

        v24 = 0xEF65636E65646163;
        if (v7 != 4)
        {
          v24 = 0x800000020B4544E0;
        }

        if (v7 <= 5)
        {
          v19 = v21;
        }

        else
        {
          v19 = v22;
        }

        if (v7 <= 5)
        {
          v20 = v24;
        }

        else
        {
          v20 = v23;
        }

LABEL_44:
        if (v17 != v19)
        {
          goto LABEL_2;
        }

        goto LABEL_45;
      }
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v25 = 0xD000000000000012;
      }

      else
      {
        v25 = 0xD000000000000015;
      }

      if (v7 == 2)
      {
        v20 = 0x800000020B454490;
      }

      else
      {
        v20 = 0x800000020B4544B0;
      }

      if (v17 != v25)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v19 = 0x5F676E696C6C6F72;
      v20 = 0xEC00000065636170;
      if (!v7)
      {
        goto LABEL_44;
      }

      if (v17 != 0x5F65676172657661)
      {
        goto LABEL_2;
      }
    }

LABEL_45:
    if (v18 == v20)
    {

LABEL_65:

      return v11 != 0;
    }

LABEL_2:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v9;
    if (v10)
    {
      goto LABEL_65;
    }
  }

  if (one-time initialization token for validation != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static WOLog.validation);

  v27 = v44;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v46 = v31;
    *v30 = 136315650;
    v32 = TargetZone.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v46);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = [v27 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v46);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2080;
    v40 = AlertConfigurationContext.description.getter();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v46);

    *(v30 + 24) = v42;
    _os_log_impl(&dword_20AEA4000, v28, v29, "%s target zone is not supported for %s in context %s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v30, -1, -1);
  }

  return v11 != 0;
}

uint64_t WorkoutConfigurationValidator.deinit()
{

  return v0;
}

uint64_t WorkoutConfigurationValidator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized WorkoutConfigurationValidator.supportsDistanceWithTimeGoal(activityType:configurationType:)(void *a1, _BYTE *a2)
{
  if (*a2 != 1)
  {
    goto LABEL_9;
  }

  if ([a1 effectiveTypeIdentifier] != 46 || objc_msgSend(a1, sel_swimmingLocationType) != 1)
  {
    if ([a1 effectiveTypeIdentifier] == 46 && objc_msgSend(a1, sel_swimmingLocationType) == 2)
    {
      v3 = type metadata accessor for WorkoutKitFeatures();
      v9 = v3;
      v10 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
      v5 = MEMORY[0x277CE3FD0];
      goto LABEL_8;
    }

LABEL_9:
    v6 = 0;
    return v6 & 1;
  }

  v3 = type metadata accessor for WorkoutKitFeatures();
  v9 = v3;
  v10 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  v5 = MEMORY[0x277CE3FC0];
LABEL_8:
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *v5, v3);
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm_5(v8);
  return v6 & 1;
}

double HeartRateConfigurationRequest.fetchActiveHeartRateConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HeartRateConfiguration();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  static HeartRateConfiguration.fetchConfigurationType(completion:)(_s11WorkoutCore29HeartRateConfigurationRequestC011fetchActivecdE010completionyyAA0cdE0CSgc_tFyAG0E4TypeOcfU_TA_1, v5);

  return result;
}

void closure #1 in HeartRateConfigurationRequest.fetchActiveHeartRateConfiguration(completion:)(_BYTE *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (*a1 == 1)
  {
    HeartRateConfigurationRequest.fetchManualHeartRateConfiguration(completion:)(a3, a4);
  }

  else
  {
    HeartRateConfigurationRequest.fetchAutomaticHeartRateConfiguration(completion:)(a3, a4);
  }
}

void HeartRateConfigurationRequest.fetchAutomaticHeartRateConfiguration(completion:)(void (*a1)(void), uint64_t a2)
{
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.zones);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000020B45FBA0, &v23);
    _os_log_impl(&dword_20AEA4000, v5, v6, "%s %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v12 = specialized static HeartRateConfiguration.ageBasedMaximumHeartRate()();
  if (v12)
  {
    v13 = v12;
    type metadata accessor for HeartRateConfiguration();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a1;
    v14[4] = a2;
    v15 = v13;

    static HeartRateConfiguration.restingHeartRate(completion:)(partial apply for closure #1 in HeartRateConfigurationRequest.fetchAutomaticHeartRateConfiguration(completion:), v14);
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136315138;
      v20 = _typeName(_:qualified:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v16, v17, "%s HeartRateConfiguration.ageBasedMaximumHeartRate() is nil, returning nil HeartRateConfiguration", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F2E9420](v19, -1, -1);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    a1(0);
  }
}

double closure #1 in HeartRateConfigurationRequest.fetchAutomaticHeartRateConfiguration(completion:)(void *a1, char a2, void *a3, void (*a4)(uint64_t))
{
  v8 = specialized static HeartRateConfiguration.automaticZones(maximumHeartRate:restingHeartRate:)(a3, a1);
  type metadata accessor for HeartRateConfiguration();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = a3;
  *(v9 + 32) = a1;
  *(v9 + 40) = v8;
  *(v9 + 49) = a2 ^ 1;
  if (v8 >> 62)
  {
    v15 = v9;
    v10 = __CocoaSet.count.getter();
    v9 = v15;
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v9 + 48) = v10 != 0;
  v11 = v9;
  v12 = a1;
  v13 = a3;
  a4(v11);

  return result;
}

double HeartRateConfigurationRequest.fetchManualHeartRateConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.zones);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "%s fetchManualHeartRateConfiguration", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  type metadata accessor for HeartRateConfiguration();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  static HeartRateConfiguration.manualZones(completion:)(partial apply for closure #1 in HeartRateConfigurationRequest.fetchManualHeartRateConfiguration(completion:), v12);

  return result;
}

double closure #1 in HeartRateConfigurationRequest.fetchManualHeartRateConfiguration(completion:)(unint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for HeartRateConfiguration();
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = a1;
  *(v4 + 49) = 0;
  if (a1 >> 62)
  {
    v8 = v4;
    v5 = __CocoaSet.count.getter();
    v4 = v8;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v4 + 48) = v5 != 0;
  v6 = v4;

  a2(v6);

  return result;
}

void *ActivityRingProgressMonitor.lastActivitySummary.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ActivityRingProgressMonitor.lastActivitySummary.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ActivityRingProgressMonitor.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized ActivityRingProgressMonitor.init(healthStore:)(a1);

  return v4;
}

id ActivityRingProgressMonitor.init(healthStore:)(void *a1)
{
  v2 = specialized ActivityRingProgressMonitor.init(healthStore:)(a1);

  return v2;
}

uint64_t closure #1 in ActivityRingProgressMonitor.init(healthStore:)()
{
  ActivityPausedRingsObserver.beginObserving()();
  v1 = *(v0 + 8);

  return v1();
}

id ActivityRingProgressMonitor.addProgressObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized ActivityRingProgressMonitor.addProgressObserver(_:)(a1, v1);
}

void ActivityRingProgressMonitor.startListening()()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_currentActivitySummaryQuery;
  if (!*&v0[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_currentActivitySummaryQuery])
  {
    if (one-time initialization token for activityRings != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.activityRings);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Start observing activity rings updates", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v7 = objc_allocWithZone(MEMORY[0x277CCDD58]);
    v15[4] = partial apply for closure #1 in ActivityRingProgressMonitor.startListening();
    v15[5] = v6;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed _HKCurrentActivitySummaryQuery, @guaranteed HKActivitySummary?, @guaranteed Error?) -> ();
    v15[3] = &block_descriptor_38;
    v8 = _Block_copy(v15);
    v9 = v0;
    v10 = [v7 initWithUpdateHandler_];
    _Block_release(v8);

    v11 = *&v0[v1];
    *&v0[v1] = v10;
    v12 = v10;

    if (v12)
    {
      [*&v9[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_healthStore] executeQuery_];
    }

    else
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_20AEA4000, v12, v13, "currentActivitySummaryQuery unexpectedly nil after attempted creation", v14, 2u);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }
    }
  }
}

void ActivityRingProgressMonitor.removeProgressObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(a1, v1);
}

void ActivityRingProgressMonitor.stopListening()()
{
  v1 = v0;
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.activityRings);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Stop observing activity rings updates", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_currentActivitySummaryQuery;
  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_currentActivitySummaryQuery))
  {
    [*(v1 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_healthStore) stopQuery_];
    v7 = *(v1 + v6);
  }

  else
  {
    v7 = 0;
  }

  *(v1 + v6) = 0;

  v8 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = 0;
}

void closure #1 in ActivityRingProgressMonitor.startListening()(void *a1, void *a2, void *a3, uint64_t a4)
{
  v67[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v68 = v67 - v9;
  if (one-time initialization token for activityRings != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static WOLog.activityRings);
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v69 = v13;
  v17 = os_log_type_enabled(v15, v16);
  v70 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v67[1] = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v71 = a3;
    v72 = v21;
    *v18 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v22 = Optional.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v72);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v14;
    *v20 = v14;
    *(v18 + 22) = 2080;
    v71 = a2;
    v25 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17HKActivitySummaryCSgMd, &_sSo17HKActivitySummaryCSgMR);
    v26 = Optional.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v72);

    *(v18 + 24) = v28;
    _os_log_impl(&dword_20AEA4000, v15, v16, "_HKCurrentActivitySummaryQuery returned error=%s\nquery=%@\ncurrentActivitySummary=%s", v18, 0x20u);
    _sSo8NSObjectCSgWOhTm_6(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v20, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v21, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  v29 = v69;
  if (a3)
  {
    v30 = a3;
    v31 = v14;
    v32 = v29;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v72 = v37;
      *v35 = 138412802;
      v38 = a3;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v39;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v31;
      *v36 = v39;
      v36[1] = v31;
      *(v35 + 22) = 2080;
      v71 = v70;
      v40 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17HKActivitySummaryCSgMd, &_sSo17HKActivitySummaryCSgMR);
      v41 = Optional.description.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v72);

      *(v35 + 24) = v43;
      _os_log_impl(&dword_20AEA4000, v33, v34, "_HKCurrentActivitySummaryQuery returned error=%@\nquery=%@\ncurrentActivitySummary=%s", v35, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      v44 = v36;
      v29 = v69;
      MEMORY[0x20F2E9420](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x20F2E9420](v37, -1, -1);
      MEMORY[0x20F2E9420](v35, -1, -1);
    }

    v45 = [objc_allocWithZone(type metadata accessor for AutoBugCaptureReporter()) init];
    specialized AutoBugCaptureReporter.reportSnapshot(type:subtype:context:thresholdValues:)(0x7974697669746341, 0xEE0073676E695220, 0xD00000000000001CLL, 0x800000020B45FD90, 0, 0, 0, 0);
  }

  v46 = v70;
  if (v70)
  {
    v47 = v29;
    if (([v47 _isDataLoading] & 1) == 0)
    {
      v57 = type metadata accessor for TaskPriority();
      v58 = v68;
      (*(*(v57 - 8) + 56))(v68, 1, 1, v57);
      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();
      v60 = v47;

      v61 = static MainActor.shared.getter();
      v62 = swift_allocObject();
      v63 = MEMORY[0x277D85700];
      v62[2] = v61;
      v62[3] = v63;
      v62[4] = v59;
      v62[5] = v60;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v58, &async function pointer to partial apply for closure #1 in closure #1 in ActivityRingProgressMonitor.startListening(), v62);

      goto LABEL_20;
    }
  }

  v48 = v29;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v71 = v46;
    v72 = v52;
    *v51 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17HKActivitySummaryCSgMd, &_sSo17HKActivitySummaryCSgMR);
    v53 = Optional.description.getter();
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v72);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    if (v46)
    {
      v56 = [v48 _isDataLoading];
    }

    else
    {
      v56 = 2;
    }

    LOBYTE(v71) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v64 = Optional.description.getter();
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v72);

    *(v51 + 14) = v66;
    _os_log_impl(&dword_20AEA4000, v49, v50, "_HKCurrentActivitySummaryQuery returned unusable currentActivitySummary=%s, currentActivitySummary.dataLoading=%s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v52, -1, -1);
    MEMORY[0x20F2E9420](v51, -1, -1);
  }

  else
  {
  }

  v60 = [objc_allocWithZone(type metadata accessor for AutoBugCaptureReporter()) init];
  specialized AutoBugCaptureReporter.reportSnapshot(type:subtype:context:thresholdValues:)(0x7974697669746341, 0xEE0073676E695220, 0xD00000000000001FLL, 0x800000020B45FD70, 0, 0, 0, 0);
LABEL_20:
}

uint64_t closure #1 in closure #1 in ActivityRingProgressMonitor.startListening()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in ActivityRingProgressMonitor.startListening(), v7, v6);
}

uint64_t closure #1 in closure #1 in ActivityRingProgressMonitor.startListening()()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    ActivityRingProgressMonitor.handleUpdateSummary(_:)(*(v0 + 56));
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

id ActivityRingProgressMonitor.handleUpdateSummary(_:)(void *a1)
{
  v2 = v1;
  v3 = ActivityRingProgressMonitor.didCompleteMoveGoal(with:)(a1);
  v4 = a1;
  v5 = &_s11WorkoutCore08IntervalA7KeyPathVSgMd;
  v6 = &selRef_adjustedStatisticsForStatistics_;
  if ((v3 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (one-time initialization token for activityRings != -1)
  {
    goto LABEL_17;
  }

LABEL_3:
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WOLog.activityRings);
  v8 = v2;
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v57[0] = v14;
    *v12 = 136315394;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17HKActivitySummaryCSgMd, &_sSo17HKActivitySummaryCSgMR);
    v15 = Optional.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v57);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v18 = v9;
    _os_log_impl(&dword_20AEA4000, v10, v11, "Completed move goal previous summary: %s;\ncurrent summary: %@", v12, 0x16u);
    _sSo8NSObjectCSgWOhTm_6(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = v13;
    v5 = &_s11WorkoutCore08IntervalA7KeyPathVSgMd;
    MEMORY[0x20F2E9420](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v20 = v14;
    v6 = &selRef_adjustedStatisticsForStatistics_;
    MEMORY[0x20F2E9420](v20, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  v21 = [*&v8[v5[179]] v6[9]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  v23 = __CocoaSet.count.getter();
  if (v23)
  {
LABEL_7:
    v24 = 0;
    v6 = (v22 & 0xFFFFFFFFFFFFFF8);
    v5 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x20F2E7A20](v24, v22);
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v25 = *(v22 + 8 * v24 + 32);
        swift_unknownObjectRetain();
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          swift_once();
          goto LABEL_3;
        }
      }

      [v25 completedActivityRing:0 activitySummary:v9];
      swift_unknownObjectRelease();
      ++v24;
    }

    while (v26 != v23);
  }

LABEL_19:

  v4 = a1;
  v6 = &selRef_adjustedStatisticsForStatistics_;
  v5 = &_s11WorkoutCore08IntervalA7KeyPathVSgMd;
LABEL_20:
  if (!ActivityRingProgressMonitor.didCompleteExerciseGoal(with:)(v4))
  {
    goto LABEL_39;
  }

  if (one-time initialization token for activityRings != -1)
  {
    goto LABEL_36;
  }

LABEL_22:
  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static WOLog.activityRings);
  v28 = v2;
  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v57[0] = v34;
    *v32 = 136315394;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17HKActivitySummaryCSgMd, &_sSo17HKActivitySummaryCSgMR);
    v35 = Optional.description.getter();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v57);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2112;
    *(v32 + 14) = v29;
    *v33 = v29;
    v38 = v29;
    _os_log_impl(&dword_20AEA4000, v30, v31, "Completed exercise goal with previous summary: %s;\nCurrent summary: %@", v32, 0x16u);
    _sSo8NSObjectCSgWOhTm_6(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v39 = v33;
    v5 = &_s11WorkoutCore08IntervalA7KeyPathVSgMd;
    MEMORY[0x20F2E9420](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v40 = v34;
    v6 = &selRef_adjustedStatisticsForStatistics_;
    MEMORY[0x20F2E9420](v40, -1, -1);
    MEMORY[0x20F2E9420](v32, -1, -1);
  }

  v41 = [*&v28[v5[179]] v6[9]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v42 >> 62))
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  v43 = __CocoaSet.count.getter();
  if (v43)
  {
LABEL_26:
    v44 = 0;
    v6 = (v42 & 0xFFFFFFFFFFFFFF8);
    v5 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x20F2E7A20](v44, v42);
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v45 = *(v42 + 8 * v44 + 32);
        swift_unknownObjectRetain();
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          swift_once();
          goto LABEL_22;
        }
      }

      [v45 completedActivityRing:1 activitySummary:v29];
      swift_unknownObjectRelease();
      ++v44;
    }

    while (v46 != v43);
  }

LABEL_38:

  v6 = &selRef_adjustedStatisticsForStatistics_;
  v5 = &_s11WorkoutCore08IntervalA7KeyPathVSgMd;
LABEL_39:
  v47 = [*&v2[v5[179]] v6[9]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v48 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v50 = 0;
    while (1)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x20F2E7A20](v50, v48);
      }

      else
      {
        if (v50 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v51 = *(v48 + 8 * v50 + 32);
        swift_unknownObjectRetain();
      }

      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      [v51 activityRingsUpdatedWithSummary_];
      swift_unknownObjectRelease();
      ++v50;
      if (v52 == i)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:

  v53 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v54 = *&v2[v53];
  *&v2[v53] = a1;

  return a1;
}

uint64_t ActivityRingProgressMonitor.didCompleteMoveGoal(with:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 activityMoveMode];
  if (v6 == 1)
  {
    v7 = &selRef_activeEnergyBurnedGoal;
    v8 = &selRef_kilocalorieUnit;
    v9 = &selRef_activeEnergyBurned;
  }

  else
  {
    if (v6 != 2)
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000036, 0x800000020B45FDE0, "WorkoutCore/ActivityRingProgressMonitor.swift", 45, 2, 163, 0);
      __break(1u);
      return result;
    }

    v7 = &selRef_appleMoveTimeGoal;
    v8 = &selRef_minuteUnit;
    v9 = &selRef_appleMoveTime;
  }

  v11 = [v5 *v9];
  v12 = objc_opt_self();
  v13 = [v12 *v8];
  [v11 doubleValueForUnit_];
  v15 = v14;

  v16 = [v5 *v7];
  v17 = [v12 *v8];
  [v16 doubleValueForUnit_];
  v19 = v18;

  v20 = [a1 *v9];
  v21 = [v12 *v8];
  [v20 doubleValueForUnit_];
  v23 = v22;

  v24 = [a1 *v7];
  v25 = [v12 *v8];
  [v24 doubleValueForUnit_];
  v27 = v26;

  v28 = v19 > 0.0;
  if (v27 <= 0.0)
  {
    v28 = 0;
  }

  if (v27 > v23)
  {
    v28 = 0;
  }

  return v15 < v19 && v28;
}

BOOL ActivityRingProgressMonitor.didCompleteExerciseGoal(with:)(void *a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [v5 appleExerciseTime];
  v7 = objc_opt_self();
  v8 = [v7 secondUnit];
  [v6 doubleValueForUnit_];
  v10 = v9;

  v11 = [v5 appleExerciseTimeGoal];
  v12 = [v7 secondUnit];
  [v11 doubleValueForUnit_];
  v14 = v13;

  v15 = [a1 appleExerciseTime];
  v16 = [v7 secondUnit];
  [v15 doubleValueForUnit_];
  v18 = v17;

  v19 = [a1 appleExerciseTimeGoal];
  v20 = [v7 secondUnit];
  [v19 doubleValueForUnit_];
  v22 = v21;

  v23 = v14 > 0.0;
  if (v22 <= 0.0)
  {
    v23 = 0;
  }

  if (v22 > v18)
  {
    v23 = 0;
  }

  return v10 < v14 && v23;
}

id ActivityRingProgressMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityRingProgressMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void thunk for @escaping @callee_guaranteed (@guaranteed _HKCurrentActivitySummaryQuery, @guaranteed HKActivitySummary?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

id specialized ActivityRingProgressMonitor.addProgressObserver(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_demoProgressProvider);
  if (v3)
  {
    v4 = sel_addProgressObserver_;
  }

  else
  {
    v5 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_progressObservers);
    v6 = [v5 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v8)
    {
      ActivityRingProgressMonitor.startListening()();
    }

    v4 = sel_addObject_;
    v3 = v5;
  }

  return [v3 v4];
}

{
  v3 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_demoProgressProvider);
  if (v3)
  {
    v4 = sel_addProgressObserver_;
  }

  else
  {
    v5 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_progressObservers);
    v6 = [v5 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v8)
    {
      ActivityRingProgressMonitor.startListening()();
    }

    v4 = sel_addObject_;
    v3 = v5;
  }

  return [v3 v4];
}

void specialized ActivityRingProgressMonitor.removeProgressObserver(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_demoProgressProvider);
  if (v3)
  {

    [v3 removeProgressObserver_];
  }

  else
  {
    v4 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_progressObservers);
    [v4 removeObject_];
    v5 = [v4 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v7)
    {
      ActivityRingProgressMonitor.stopListening()();
    }
  }
}

{
  v3 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_demoProgressProvider);
  if (v3)
  {

    [v3 removeProgressObserver_];
  }

  else
  {
    v4 = *(a2 + OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_progressObservers);
    [v4 removeObject_];
    v5 = [v4 allObjects];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo37NLWorkoutActivityRingProgressObserver_pMd, &_sSo37NLWorkoutActivityRingProgressObserver_pMR);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v7)
    {
      ActivityRingProgressMonitor.stopListening()();
    }
  }
}

id specialized ActivityRingProgressMonitor.init(healthStore:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_currentActivitySummaryQuery] = 0;
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_lastActivitySummary] = 0;
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_healthStore] = a1;
  v9 = objc_opt_self();
  v10 = a1;
  v11 = [v9 weakObjectsHashTable];
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_progressObservers] = v11;
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_pausedRingsObserver] = [objc_allocWithZone(type metadata accessor for ActivityPausedRingsObserver(0)) init];
  type metadata accessor for NLWorkoutDemoUtilities();
  *&v2[OBJC_IVAR____TtC11WorkoutCore27ActivityRingProgressMonitor_demoProgressProvider] = static NLWorkoutDemoUtilities.demoActivityRingProgressProvider()();
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  TaskPriority.init(rawValue:)();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in ActivityRingProgressMonitor.init(healthStore:), v14);

  _sSo8NSObjectCSgWOhTm_6(v8, &_sScPSgMd, &_sScPSgMR);
  return v12;
}

uint64_t partial apply for closure #1 in closure #1 in ActivityRingProgressMonitor.startListening()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in ActivityRingProgressMonitor.startListening();

  return closure #1 in closure #1 in ActivityRingProgressMonitor.startListening()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in ActivityRingProgressMonitor.init(healthStore:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in ActivityRingProgressMonitor.init(healthStore:);

  return closure #1 in ActivityRingProgressMonitor.init(healthStore:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in ActivityRingProgressMonitor.init(healthStore:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall DataLinkHealthKitHostConnection.unregisterCommandHandler()()
{
  v1 = v0;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Unregistering command handler", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = (v1 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_commandHandler);
  *v6 = closure #1 in variable initialization expression of static DataLinkHealthKitHostConnection.defaultCommandHandler;
  v6[1] = 0;
}

uint64_t DataLinkHealthKitHostConnection.activateLink(started:activated:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session];
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = ObjectType;
  v13[4] = partial apply for closure #1 in DataLinkHealthKitHostConnection.activateLink(started:activated:);
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v13[3] = &block_descriptor_41;
  v10 = _Block_copy(v13);
  v11 = v3;

  [v8 startMirroringToCompanionDeviceWithCompletion_];
  _Block_release(v10);
  return a3();
}

uint64_t DataLinkHealthKitHostConnection.setupCommandHandler(closure:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Registering command handler", v9, 2u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v10 = (v3 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_commandHandler);
  *v10 = a1;
  v10[1] = a2;
}

void DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v136 = a4;
  v135 = a3;
  v128[1] = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v134 = v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v147 = v128 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v131 = v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v129 = v128 - v17;
  v141 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v19 = MEMORY[0x28223BE20](v141, v18);
  v132 = v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v137 = v128 - v22;
  v140 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v151 = *(v140 - 8);
  v24 = MEMORY[0x28223BE20](v140, v23);
  v130 = v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v146 = v128 - v27;
  v28 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = (v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v36 = static OS_dispatch_queue.main.getter();
  (*(v33 + 104))(v36, *MEMORY[0x277D85200], v32);
  v37 = _dispatchPreconditionTest(_:)();
  (*(v33 + 8))(v36, v32);
  if (v37)
  {
    v145 = v6;
    v128[0] = v5;
    v38 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
    v152 = *(v38 - 8);
    v143 = *(v152 + 56);
    v144 = v38;
    v142 = v152 + 56;
    v143(v31, 1, 1);
    v154 = v31;
    UnknownStorage.init()();
    v39 = a2 + 56;
    v40 = 1 << *(a2 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v31 = v41 & *(a2 + 56);
    v153 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_currentSequences;
    v42 = (v40 + 63) >> 6;

    v138 = 0;
    v6 = 0;
    *&v43 = 136315138;
    v150 = v43;
    v148 = a2;
    v149 = v42;
    while (1)
    {
      v49 = v6;
      if (!v31)
      {
        break;
      }

LABEL_10:
      v50 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v51 = (*(a2 + 48) + ((v6 << 10) | (16 * v50)));
      v52 = *v51;
      v53 = v51[1];
      swift_bridgeObjectRetain_n();
      v54 = specialized KnownPublishers.init(rawValue:)(v52, v53);
      if (v54 == 18)
      {
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        __swift_project_value_buffer(v55, static WOLog.core);

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v156 = v45;
          *v44 = v150;
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v156);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_20AEA4000, v56, v57, "Could not convert %s to KnownPublisher", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          v47 = v45;
          v42 = v149;
          MEMORY[0x20F2E9420](v47, -1, -1);
          v48 = v44;
          a2 = v148;
          MEMORY[0x20F2E9420](v48, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v58 = v54;

        v59 = v139;
        v60 = v153;
        swift_beginAccess();
        _sxRi_zRi0_zlys6UInt32VIsegr_SgWOe(v138, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v155 = *&v59[v60];
        v62 = v155;
        *&v59[v60] = 0x8000000000000000;
        v63 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
        v65 = v62[2];
        v66 = (v64 & 1) == 0;
        v67 = __OFADD__(v65, v66);
        v68 = v65 + v66;
        if (v67)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v69 = v64;
        if (v62[3] >= v68)
        {
          v42 = v149;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v77 = v63;
            specialized _NativeDictionary.copy()();
            v63 = v77;
            v42 = v149;
            v62 = v155;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, isUniquelyReferenced_nonNull_native);
          v62 = v155;
          v63 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
          v42 = v149;
          if ((v69 & 1) != (v70 & 1))
          {
            goto LABEL_52;
          }
        }

        *&v139[v153] = v62;
        if ((v69 & 1) == 0)
        {
          v62[(v63 >> 6) + 8] |= 1 << v63;
          *(v62[6] + v63) = v58;
          *(v62[7] + 4 * v63) = 0;
          v71 = v62[2];
          v67 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (v67)
          {
            goto LABEL_51;
          }

          v62[2] = v72;
        }

        v73 = v62[7];
        v74 = *(v73 + 4 * v63);
        v75 = __CFADD__(v74, 1);
        v76 = v74 + 1;
        if (v75)
        {
          goto LABEL_50;
        }

        *(v73 + 4 * v63) = v76;
        swift_endAccess();
        v138 = specialized thunk for @callee_guaranteed () -> (@unowned UInt32);
      }
    }

    while (1)
    {
      v6 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v6 >= v42)
      {
        break;
      }

      v31 = *(v39 + 8 * v6);
      ++v49;
      if (v31)
      {
        goto LABEL_10;
      }
    }

    v6 = v139;
    v78 = v153;
    swift_beginAccess();
    v79 = *(v6 + v78);
    v80 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastAckedSequences;
    swift_beginAccess();
    v81 = *(v6 + v80);

    v31 = v146;
    static DataLinkHealthKitHostConnection.generateDeltaProtobuf(from:currentSequences:lastAckedSequences:)(v79, v81, v146);

    if (one-time initialization token for dataLink != -1)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static WOLog.dataLink);
  v83 = v6;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  v149 = v83;

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v157 = v87;
    *v86 = v150;
    lazy protocol witness table accessor for type KnownPublishers and conformance KnownPublishers();

    v88 = Dictionary.description.getter();
    v90 = v89;

    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v157);

    *(v86 + 4) = v91;
    _os_log_impl(&dword_20AEA4000, v84, v85, "Last acked sequences: %s", v86, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x20F2E9420](v87, -1, -1);
    MEMORY[0x20F2E9420](v86, -1, -1);
  }

  v92 = v154;
  v93 = v151;
  v94 = v152;
  v95 = v144;
  v96 = v130;
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(v31, v130, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v97 = v129;
  outlined init with copy of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(v92, v129, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v98 = *(v94 + 48);
  v99 = v98(v97, 1, v95);
  v100 = v140;
  v152 = v94 + 48;
  if (v99 == 1)
  {
    _sSo8NSObjectCSgWOhTm_7(v97, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v101 = v141;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v101 = v141;
    if (EnumCaseMultiPayload == 3)
    {
      v103 = v137;
      outlined init with take of Apple_Workout_Core_WorkoutNotification(v97, v137, type metadata accessor for Apple_Workout_Core_MetricsDelta);
      goto LABEL_36;
    }

    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v97, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  v103 = v137;
  *v137 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  (*(v93 + 56))(&v103[*(v101 + 24)], 1, 1, v100);
LABEL_36:
  v104 = *(v101 + 24);
  _sSo8NSObjectCSgWOhTm_7(&v103[v104], &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v96, &v103[v104], type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v105 = *(v93 + 56);
  v151 = v93 + 56;
  v105(&v103[v104], 0, 1, v100);
  v106 = v154;
  _sSo8NSObjectCSgWOhTm_7(v154, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v103, v106, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  v107 = v144;
  swift_storeEnumTagMultiPayload();
  (v143)(v106, 0, 1, v107);

  specialized static Apple_Workout_Core_PublisherSequence.entries(sequences:)(v108);
  v110 = v109;

  v111 = v131;
  outlined init with copy of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(v106, v131, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  if (v98(v111, 1, v107) == 1)
  {
    _sSo8NSObjectCSgWOhTm_7(v111, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_41:
    v113 = v154;
    v112 = v132;
    *v132 = MEMORY[0x277D84F90];
    v114 = v141;
    UnknownStorage.init()();
    v105(&v112[*(v114 + 24)], 1, 1, v140);
    goto LABEL_42;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v111, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_41;
  }

  v112 = v132;
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v111, v132, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  v113 = v154;
LABEL_42:

  *v112 = v110;
  _sSo8NSObjectCSgWOhTm_7(v113, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v112, v113, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  swift_storeEnumTagMultiPayload();
  (v143)(v113, 0, 1, v107);
  v153 = *(v6 + v153);

  v115 = v147;
  Date.init()();
  v116 = swift_allocObject();
  v117 = v149;
  swift_unknownObjectWeakInit();
  v118 = v145;
  v119 = v134;
  v120 = v128[0];
  (*(v145 + 16))(v134, v115, v128[0]);
  v121 = (*(v118 + 80) + 24) & ~*(v118 + 80);
  v122 = (v133 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
  v123 = swift_allocObject();
  *(v123 + 16) = v116;
  (*(v118 + 32))(v123 + v121, v119, v120);
  *(v123 + v122) = v153;
  v124 = (v123 + ((v122 + 15) & 0xFFFFFFFFFFFFFFF8));
  v125 = v136;
  *v124 = v135;
  v124[1] = v125;
  if (*(v117 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_recorder))
  {

    v126 = v154;
    DataLinkRecorder.recordMessage(_:)(v154);
  }

  else
  {

    v126 = v154;
  }

  v127 = swift_allocObject();
  *(v127 + 16) = partial apply for closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:);
  *(v127 + 24) = v123;

  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v126, partial apply for closure #1 in DataLinkHealthKitHostConnection.sendMessage(_:closure:), v127);

  (*(v145 + 8))(v147, v120);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v146, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v126, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  _sxRi_zRi0_zlys6UInt32VIsegr_SgWOe(v138, 0);
}

uint64_t DataLinkHealthKitHostConnection.sendNotification(_:)()
{
  v28 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0) - 8;
  MEMORY[0x28223BE20](v28, v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v9 = v8 - 8;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v26 - v14;
  UnknownStorage.init()();
  v16 = *(v9 + 28);
  v17 = *(v4 + 56);
  v17(&v15[v16], 1, 1, v3);
  v18 = *(v9 + 32);
  v19 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  WorkoutNotification.protobuf.getter(v7);
  _sSo8NSObjectCSgWOhTm_7(&v15[v16], &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v7, &v15[v16], type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  v17(&v15[v16], 0, 1, v3);
  v20 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v21 = *(*(v20 - 8) + 56);
  v21(v2, 1, 1, v20);
  UnknownStorage.init()();
  v22 = v27;
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(v15, v27, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
  _sSo8NSObjectCSgWOhTm_7(v2, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v22, v2, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
  swift_storeEnumTagMultiPayload();
  v23 = v20;
  v24 = v29;
  v21(v2, 0, 1, v23);
  if (*(v24 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_recorder))
  {
    DataLinkRecorder.recordMessage(_:)(v2);
  }

  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v2, specialized closure #1 in DataLinkHealthKitHostConnection.sendMessage(_:closure:), 0);
  _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v2, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v15, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostCommand(_:sequence:closure:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 1, 1, v12);
  UnknownStorage.init()();
  _sSo8NSObjectCSgWOhTm_7(v10, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  *v10 = v11;
  v10[8] = 1;
  swift_storeEnumTagMultiPayload();
  v13(v10, 0, 1, v12);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v10, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v10, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostAlertStackRequest(_:sequence:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v15;
  v20[2] = *(a1 + 32);
  v21 = *(a1 + 48);
  v16 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 1, 1, v16);
  UnknownStorage.init()();
  v19[4] = v20;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  static Message.with(_:)();
  _sSo8NSObjectCSgWOhTm_7(v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v10, v14, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  swift_storeEnumTagMultiPayload();
  v17(v14, 0, 1, v16);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v14, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v14, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostStartConfiguration(_:sequence:closure:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v20 = a3;
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  MEMORY[0x28223BE20](started, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v15 = *(a1 + 1);
  v16 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v12, 1, 1, v16);
  UnknownStorage.init()();
  v22 = v13;
  v23 = v14;
  v24 = v15;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostStartConfiguration);
  static Message.with(_:)();
  _sSo8NSObjectCSgWOhTm_7(v12, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  swift_storeEnumTagMultiPayload();
  v17(v12, 0, 1, v16);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v12, v20, v21);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v12, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostMachTimestampRequest(_:sequence:closure:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 1, 1, v16);
  UnknownStorage.init()();
  v19[4] = v15;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  static Message.with(_:)();
  _sSo8NSObjectCSgWOhTm_7(v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v10, v14, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  swift_storeEnumTagMultiPayload();
  v17(v14, 0, 1, v16);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v14, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v14, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostCountdownStart(_:sequence:closure:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  v17 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v18 = *(*(v17 - 8) + 56);
  v18(v14, 1, 1, v17);
  UnknownStorage.init()();
  v20[4] = v15;
  v20[5] = v16;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostCountdownStart);
  static Message.with(_:)();
  _sSo8NSObjectCSgWOhTm_7(v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v10, v14, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
  swift_storeEnumTagMultiPayload();
  v18(v14, 0, 1, v17);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v14, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v14, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t DataLinkHealthKitHostConnection.sendMirroredHostSummaryUpdate(_:sequence:closure:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 1, 1, v16);
  UnknownStorage.init()();
  v19[4] = v15;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  static Message.with(_:)();
  _sSo8NSObjectCSgWOhTm_7(v14, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_WorkoutNotification(v10, v14, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  swift_storeEnumTagMultiPayload();
  v17(v14, 0, 1, v16);
  DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v14, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_0(v14, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in variable initialization expression of static DataLinkHealthKitHostConnection.defaultCommandHandler(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    if (v1 <= 3)
    {
      v15 = 0xE600000000000000;
      v16 = 0x656D75736572;
      v17 = 0xE300000000000000;
      v18 = 6581861;
      if (v1 != 2)
      {
        v18 = 0x6D6765536B72616DLL;
        v17 = 0xEB00000000746E65;
      }

      if (v1)
      {
        v16 = 0x6573756170;
        v15 = 0xE500000000000000;
      }

      if (v1 <= 1)
      {
        v13 = v16;
      }

      else
      {
        v13 = v18;
      }

      if (v1 <= 1)
      {
        v14 = v15;
      }

      else
      {
        v14 = v17;
      }
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x67654C7478656ELL;
      v9 = 0xE400000000000000;
      v10 = 1702131053;
      if (v1 != 7)
      {
        v10 = 0x6574756D6E75;
        v9 = 0xE600000000000000;
      }

      if (v1 != 6)
      {
        v8 = v10;
        v7 = v9;
      }

      v11 = 0xEC000000676E6972;
      v12 = 0x6F7272694D646E65;
      if (v1 != 4)
      {
        v12 = 0x65746E497478656ELL;
        v11 = 0xEC0000006C617672;
      }

      if (v1 <= 5)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      if (v1 <= 5)
      {
        v14 = v11;
      }

      else
      {
        v14 = v7;
      }
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

    *(v5 + 4) = v19;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Received command %s but no handler set up.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  type metadata accessor for DataLinkError(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
  swift_allocError();
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  (*(*(v22 - 8) + 56))(v21, 1, 5, v22);
  return 0;
}

id DataLinkHealthKitHostConnection.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_recorder])
  {

    DataLinkRecorder.stopSession()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataLinkHealthKitHostConnection(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DataLinkHealthKitHostConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for DataLinkHealthKitHostConnection;
  if (!type metadata singleton initialization cache for DataLinkHealthKitHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DataLinkHealthKitHostConnection(uint64_t a1)
{
  result = type metadata accessor for Date();
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

unint64_t KnownPublishers.rawValue.getter(char a1)
{
  result = 0x6C6275506C616F67;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
    case 13:
    case 17:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 16:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD00000000000001CLL;
      break;
    case 15:
      result = 0x6C6576654C706F54;
      break;
    default:
      result = 0xD00000000000001FLL;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance KnownPublishers(char *a1, char *a2)
{
  v2 = *a2;
  v3 = KnownPublishers.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == KnownPublishers.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance KnownPublishers()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  KnownPublishers.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance KnownPublishers(uint64_t a1)
{
  KnownPublishers.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance KnownPublishers(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  KnownPublishers.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance KnownPublishers@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized KnownPublishers.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance KnownPublishers@<X0>(unint64_t *a1@<X8>)
{
  result = KnownPublishers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Apple_Workout_Core_PublisherKey.publisher.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    result = 15;
    switch(v1)
    {
      case 1:
        return result;
      case 2:
        result = 0;
        break;
      case 3:
        result = 1;
        break;
      case 4:
        result = 2;
        break;
      case 5:
        result = 4;
        break;
      case 6:
        result = 5;
        break;
      case 7:
        result = 6;
        break;
      case 8:
        result = 8;
        break;
      case 9:
        result = 9;
        break;
      case 10:
        result = 10;
        break;
      case 11:
        result = 12;
        break;
      case 12:
        result = 13;
        break;
      case 13:
        result = 14;
        break;
      case 14:
        result = 16;
        break;
      case 15:
        result = 3;
        break;
      case 16:
        result = 7;
        break;
      case 17:
        result = 11;
        break;
      case 18:
        result = 17;
        break;
      default:
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v3 = type metadata accessor for Logger();
        __swift_project_value_buffer(v3, static WOLog.core);
        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&dword_20AEA4000, v4, v5, "Invalid passed as sequence publisher", v6, 2u);
          MEMORY[0x20F2E9420](v6, -1, -1);
        }

        return 18;
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.core);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v1;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Unknown publisher %ld passed as sequence publisher", v10, 0xCu);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    return 18;
  }

  return result;
}

double static DataLinkHealthKitHostConnection.generateDeltaProtobuf(from:currentSequences:lastAckedSequences:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v193 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v210 = &v192 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v209 = &v192 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v208 = &v192 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v207 = &v192 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v206 = &v192 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v205 = &v192 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v204 = &v192 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v203 = &v192 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v202 = &v192 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v201 = &v192 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v200 = &v192 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v199 = &v192 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v198 = &v192 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v197 = &v192 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v47 - 8, v48);
  v196 = &v192 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v50 - 8, v51);
  v195 = &v192 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v53 - 8, v54);
  v194 = &v192 - v55;
  v56 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  MEMORY[0x28223BE20](v56, v57);
  v59 = &v192 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetricsPublisher.protobuf.getter(v59);

  v61 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore15KnownPublishersO_SD4KeysVyAFs6UInt32V_GTt0g5(v60);
  v62 = 0;
  v212[1] = MEMORY[0x277D84FA0];
  v213 = v61;
  do
  {
    v67 = outlined read-only object #0 of static KnownPublishers.allCases.getter[v62 + 32];
    if (*(a1 + 16) && (v68 = specialized __RawDictionaryStorage.find<A>(_:)(outlined read-only object #0 of static KnownPublishers.allCases.getter[v62 + 32]), (v69 & 1) != 0))
    {
      if (!*(a2 + 16) || (v70 = *(*(a1 + 56) + 4 * v68), v71 = specialized __RawDictionaryStorage.find<A>(_:)(v67), (v72 & 1) == 0))
      {
        specialized Set._Variant.remove(_:)(v67);
        goto LABEL_4;
      }

      v73 = *(*(a2 + 56) + 4 * v71);
      specialized Set._Variant.remove(_:)(v67);
      if (v70 != v73)
      {
        goto LABEL_4;
      }
    }

    else
    {
      specialized Set._Variant.remove(_:)(v67);
    }

    switch(v67)
    {
      case 1:
        v113 = *(v56 + 20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = *&v59[v113];
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v115 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v115);
          *&v59[v113] = v115;
        }

        v116 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
        v117 = v195;
        (*(*(v116 - 8) + 56))(v195, 1, 1, v116);
        v118 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v117, v115 + v118, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 1;
        goto LABEL_3;
      case 2:
        v125 = *(v56 + 20);
        v126 = swift_isUniquelyReferenced_nonNull_native();
        v127 = *&v59[v125];
        if ((v126 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v127 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v127);
          *&v59[v125] = v127;
        }

        v128 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
        v129 = v196;
        (*(*(v128 - 8) + 56))(v196, 1, 1, v128);
        v130 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v129, v127 + v130, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 2;
        goto LABEL_3;
      case 3:
        v95 = *(v56 + 20);
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v97 = *&v59[v95];
        if ((v96 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v97 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v97);
          *&v59[v95] = v97;
        }

        v98 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
        v99 = v197;
        (*(*(v98 - 8) + 56))(v197, 1, 1, v98);
        v100 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v99, v97 + v100, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
        swift_endAccess();
        v66 = 3;
        goto LABEL_3;
      case 4:
        v143 = *(v56 + 20);
        v144 = swift_isUniquelyReferenced_nonNull_native();
        v145 = *&v59[v143];
        if ((v144 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v145 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v145);
          *&v59[v143] = v145;
        }

        v146 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
        v147 = v198;
        (*(*(v146 - 8) + 56))(v198, 1, 1, v146);
        v148 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v147, v145 + v148, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 4;
        goto LABEL_3;
      case 5:
        v155 = *(v56 + 20);
        v156 = swift_isUniquelyReferenced_nonNull_native();
        v157 = *&v59[v155];
        if ((v156 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v157 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v157);
          *&v59[v155] = v157;
        }

        v158 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
        v159 = v199;
        (*(*(v158 - 8) + 56))(v199, 1, 1, v158);
        v160 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v159, v157 + v160, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 5;
        goto LABEL_3;
      case 6:
        v131 = *(v56 + 20);
        v132 = swift_isUniquelyReferenced_nonNull_native();
        v133 = *&v59[v131];
        if ((v132 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v133 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v133);
          *&v59[v131] = v133;
        }

        v134 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
        v135 = v200;
        (*(*(v134 - 8) + 56))(v200, 1, 1, v134);
        v136 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v135, v133 + v136, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 6;
        goto LABEL_3;
      case 7:
        v167 = *(v56 + 20);
        v168 = swift_isUniquelyReferenced_nonNull_native();
        v169 = *&v59[v167];
        if ((v168 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v169 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v169);
          *&v59[v167] = v169;
        }

        v170 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
        v171 = v201;
        (*(*(v170 - 8) + 56))(v201, 1, 1, v170);
        v172 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v171, v169 + v172, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
        swift_endAccess();
        v66 = 7;
        goto LABEL_3;
      case 8:
        v107 = *(v56 + 20);
        v108 = swift_isUniquelyReferenced_nonNull_native();
        v109 = *&v59[v107];
        if ((v108 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v109 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v109);
          *&v59[v107] = v109;
        }

        v110 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
        v111 = v202;
        (*(*(v110 - 8) + 56))(v202, 1, 1, v110);
        v112 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v111, v109 + v112, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 8;
        goto LABEL_3;
      case 9:
        v161 = *(v56 + 20);
        v162 = swift_isUniquelyReferenced_nonNull_native();
        v163 = *&v59[v161];
        if ((v162 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v163 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v163);
          *&v59[v161] = v163;
        }

        v164 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
        v165 = v203;
        (*(*(v164 - 8) + 56))(v203, 1, 1, v164);
        v166 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v165, v163 + v166, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
        swift_endAccess();
        v66 = 9;
        goto LABEL_3;
      case 10:
        v89 = *(v56 + 20);
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v91 = *&v59[v89];
        if ((v90 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v91 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v91);
          *&v59[v89] = v91;
        }

        v92 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
        v93 = v204;
        (*(*(v92 - 8) + 56))(v204, 1, 1, v92);
        v94 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v93, v91 + v94, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 10;
        goto LABEL_3;
      case 11:
        v101 = *(v56 + 20);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v103 = *&v59[v101];
        if ((v102 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v103 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v103);
          *&v59[v101] = v103;
        }

        v104 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
        v105 = v209;
        (*(*(v104 - 8) + 56))(v209, 1, 1, v104);
        v106 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v105, v103 + v106, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 11;
        goto LABEL_3;
      case 12:
        v149 = *(v56 + 20);
        v150 = swift_isUniquelyReferenced_nonNull_native();
        v151 = *&v59[v149];
        if ((v150 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v151 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v151);
          *&v59[v149] = v151;
        }

        v152 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
        v153 = v205;
        (*(*(v152 - 8) + 56))(v205, 1, 1, v152);
        v154 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v153, v151 + v154, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
        swift_endAccess();
        v66 = 12;
        goto LABEL_3;
      case 13:
        v83 = *(v56 + 20);
        v84 = swift_isUniquelyReferenced_nonNull_native();
        v85 = *&v59[v83];
        if ((v84 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v85 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v85);
          *&v59[v83] = v85;
        }

        v86 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
        v87 = v206;
        (*(*(v86 - 8) + 56))(v206, 1, 1, v86);
        v88 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v87, v85 + v88, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
        swift_endAccess();
        v66 = 13;
        goto LABEL_3;
      case 14:
        v119 = *(v56 + 20);
        v120 = swift_isUniquelyReferenced_nonNull_native();
        v121 = *&v59[v119];
        if ((v120 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v121 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v121);
          *&v59[v119] = v121;
        }

        v122 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
        v123 = v207;
        (*(*(v122 - 8) + 56))(v207, 1, 1, v122);
        v124 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v123, v121 + v124, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 14;
        goto LABEL_3;
      case 15:
        break;
      case 16:
        v80 = *(v56 + 20);
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v82 = *&v59[v80];
        if ((v81 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v82 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v82);
          *&v59[v80] = v82;
        }

        v63 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
        v64 = v208;
        (*(*(v63 - 8) + 56))(v208, 1, 1, v63);
        v65 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v64, v82 + v65, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
        swift_endAccess();
        v66 = 16;
        goto LABEL_3;
      case 17:
        v137 = *(v56 + 20);
        v138 = swift_isUniquelyReferenced_nonNull_native();
        v139 = *&v59[v137];
        if ((v138 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v139 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v139);
          *&v59[v137] = v139;
        }

        v140 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
        v141 = v210;
        (*(*(v140 - 8) + 56))(v210, 1, 1, v140);
        v142 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v141, v139 + v142, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
        swift_endAccess();
        v66 = 17;
        goto LABEL_3;
      default:
        v74 = *(v56 + 20);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        v76 = *&v59[v74];
        if ((v75 & 1) == 0)
        {
          type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
          swift_allocObject();
          v76 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v76);
          *&v59[v74] = v76;
        }

        v77 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
        v78 = v194;
        (*(*(v77 - 8) + 56))(v194, 1, 1, v77);
        v79 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
        swift_beginAccess();
        outlined assign with take of Apple_Workout_Core_WorkoutBuddyStatePublisher?(v78, v76 + v79, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
        swift_endAccess();
        v66 = 0;
LABEL_3:
        specialized Set._Variant.insert(_:)(v211, v66);
        break;
    }

LABEL_4:
    ++v62;
  }

  while (v62 != 18);
  if (*(v213 + 16))
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v173 = type metadata accessor for Logger();
    __swift_project_value_buffer(v173, static WOLog.dataLink);
    v174 = Logger.logObject.getter();
    v175 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v211[0] = v177;
      *v176 = 136315138;
      lazy protocol witness table accessor for type KnownPublishers and conformance KnownPublishers();

      v178 = Set.description.getter();
      v180 = v179;

      v181 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v178, v180, v211);

      *(v176 + 4) = v181;
      _os_log_impl(&dword_20AEA4000, v174, v175, "ERROR: visited keys is not empty: %s", v176, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v177);
      MEMORY[0x20F2E9420](v177, -1, -1);
      MEMORY[0x20F2E9420](v176, -1, -1);
    }
  }

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v182 = type metadata accessor for Logger();
  __swift_project_value_buffer(v182, static WOLog.dataLink);
  v183 = Logger.logObject.getter();
  v184 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v212[0] = v186;
    *v185 = 136315138;
    swift_beginAccess();
    lazy protocol witness table accessor for type KnownPublishers and conformance KnownPublishers();

    v187 = Set.description.getter();
    v189 = v188;

    v190 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v189, v212);

    *(v185 + 4) = v190;
    _os_log_impl(&dword_20AEA4000, v183, v184, "Removed publishers for delta: %s", v185, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v186);
    MEMORY[0x20F2E9420](v186, -1, -1);
    MEMORY[0x20F2E9420](v185, -1, -1);
  }

  outlined init with take of Apple_Workout_Core_WorkoutNotification(v59, v193, type metadata accessor for Apple_Workout_Core_MetricsPublisher);

  return result;
}

uint64_t closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v32 = a1;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v7);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchQoS();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v18 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for OS_dispatch_queue();
  v36 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v15 + 16))(v18, a3, v14);
  v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v32;
  *(v23 + 24) = v19;
  (*(v15 + 32))(v23 + v21, v18, v14);
  v24 = v34;
  *(v23 + v22) = v33;
  v25 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v35;
  *v25 = v24;
  v25[1] = v26;
  aBlock[4] = partial apply for closure #1 in closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_34;
  v27 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [KnownPublishers] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v28 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = v36;
  MEMORY[0x20F2E7580](0, v13, v9, v27);
  _Block_release(v27);

  (*(v40 + 8))(v9, v28);
  return (*(v38 + 8))(v13, v39);
}

uint64_t closure #1 in closure #1 in DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.dataLink);
    v18 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, v18, v22, "Message failed to send, not updating last sequences", v23, 2u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    goto LABEL_13;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastResetOfSequences;
    swift_beginAccess();
    (*(v9 + 16))(v12, &v14[v15], v8);
    v16 = static Date.< infix(_:_:)();
    (*(v9 + 8))(v12, v8);
    if (v16)
    {
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static WOLog.dataLink);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_20AEA4000, v18, v19, "Not acking sequences, received reset from client after we tried to send these.", v20, 2u);
        MEMORY[0x20F2E9420](v20, -1, -1);
      }

LABEL_13:
      return a5();
    }

    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.dataLink);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136315138;
      lazy protocol witness table accessor for type KnownPublishers and conformance KnownPublishers();
      v30 = Dictionary.description.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v34);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_20AEA4000, v26, v27, "Acking %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x20F2E9420](v29, -1, -1);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    DataLinkHealthKitHostConnection.updateLastAckedSequences(newAckedSequences:)(a4);
  }

  return a5();
}

void DataLinkHealthKitHostConnection.updateLastAckedSequences(newAckedSequences:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_31;
  }

  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_lastAckedSequences;

  swift_beginAccess();
  v15 = 0;
  v16 = (v11 + 63) >> 6;
  v17 = v2;
  v43 = v2;
  while (v13)
  {
LABEL_12:
    v19 = __clz(__rbit64(v13)) | (v15 << 6);
    v20 = *(a1 + 56);
    v44 = *(*(a1 + 48) + v19);
    v13 &= v13 - 1;
    v21 = *(v20 + 4 * v19);
    v22 = *(v17 + v14);
    if (*(v22 + 16))
    {

      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
      if ((v24 & 1) == 0)
      {

        goto LABEL_17;
      }

      v25 = *(*(v22 + 56) + 4 * v23);

      v26 = v25 >= v21;
      v17 = v43;
      if (!v26)
      {
LABEL_18:
        v27 = a1;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v17 + v14);
        v29 = v45;
        *(v17 + v14) = 0x8000000000000000;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
        v32 = v29[2];
        v33 = (v31 & 1) == 0;
        v34 = __OFADD__(v32, v33);
        v35 = v32 + v33;
        if (v34)
        {
          goto LABEL_29;
        }

        v36 = v31;
        if (v29[3] >= v35)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = v30;
            specialized _NativeDictionary.copy()();
            v30 = v41;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
          if ((v36 & 1) != (v37 & 1))
          {
            goto LABEL_32;
          }
        }

        a1 = v27;
        v38 = v45;
        if (v36)
        {
          *(v45[7] + 4 * v30) = v21;
        }

        else
        {
          v45[(v30 >> 6) + 8] |= 1 << v30;
          *(v38[6] + v30) = v44;
          *(v38[7] + 4 * v30) = v21;
          v39 = v38[2];
          v34 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v34)
          {
            goto LABEL_30;
          }

          v38[2] = v40;
        }

        v17 = v43;
        *(v43 + v14) = v38;
        swift_endAccess();
      }
    }

    else
    {
LABEL_17:
      if (v21)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t closure #1 in DataLinkHealthKitHostConnection.activateLink(started:activated:)(char a1, id a2, uint64_t a3, uint64_t (*a4)(id))
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.dataLink);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {

      return a4(a2);
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_20AEA4000, v9, v10, "Failed to initiate mirroring to companion device: %@", v11, 0xCu);
    _sSo8NSObjectCSgWOhTm_7(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {
    v16 = [*(a3 + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session) associatedWorkoutBuilder];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD000000000000024;
    v18 = inited + 32;
    *(inited + 40) = 0x800000020B45FF10;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSo8NSObjectCSgWOhTm_7(v18, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v25[4] = closure #1 in closure #1 in DataLinkHealthKitHostConnection.activateLink(started:activated:);
    v25[5] = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 1107296256;
    v25[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v25[3] = &block_descriptor_44;
    v20 = _Block_copy(v25);
    [v16 addMetadata:isa completion:v20];
    _Block_release(v20);

    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.dataLink);
    v9 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = a1 & 1;
      _os_log_impl(&dword_20AEA4000, v9, v22, "Started mirroring to companion device: %{BOOL}d.", v23, 8u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }
  }

  return a4(a2);
}

void closure #1 in DataLinkHealthKitHostConnection.deactivateLink()(char a1, NSObject *a2)
{
  if (!a2)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.dataLink);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = a1 & 1;
      _os_log_impl(&dword_20AEA4000, oslog, v13, "Stopped mirroring to companion device: %{BOOL}d.", v14, 8u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    goto LABEL_10;
  }

  v3 = a2;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.dataLink);
  v5 = a2;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, oslog, v6, "Failed to stop mirroring to companion device: %@", v7, 0xCu);
    _sSo8NSObjectCSgWOhTm_7(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);

LABEL_10:
    v15 = oslog;

    goto LABEL_12;
  }

  v15 = a2;

LABEL_12:
}

uint64_t DataLinkHealthKitHostConnection.resetSequences(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8, v13);
  type metadata accessor for OS_dispatch_queue();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of Apple_Workout_Core_NotificationUpdate(a1, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Apple_Workout_Core_SequenceReset);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  outlined init with take of Apple_Workout_Core_WorkoutNotification(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for Apple_Workout_Core_SequenceReset);
  aBlock[4] = partial apply for closure #1 in DataLinkHealthKitHostConnection.resetSequences(_:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_51_0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [KnownPublishers] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v18);
  _Block_release(v18);

  (*(v23 + 8))(v5, v2);
  return (*(v21 + 8))(v9, v22);
}