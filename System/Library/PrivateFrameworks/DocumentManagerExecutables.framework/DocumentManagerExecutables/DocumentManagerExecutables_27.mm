Swift::Void __swiftcall DOCNodeCollection.restartObservation()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25[0] = v7;
    *v5 = 136446722;
    v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x138))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v25);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BDC280, v25);
    *(v5 + 22) = 2114;
    *(v5 + 24) = v2;
    *v6 = v2;
    v11 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v5, 0x20u);
    outlined destroy of NSObject?(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type;
  v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (!v12[16])
  {
    v24 = v13;
    [v24 doc_restartObservation];
    v22 = v24;

    goto LABEL_16;
  }

  v14 = *(v12 + 1);
  if (v12[16] != 1)
  {
    swift_unknownObjectRetain();
    v23 = v14;
    swift_unknownObjectRelease();
    v22 = v14;

LABEL_16:

    return;
  }

  v15 = MEMORY[0x277D85000];
  v16 = *((*MEMORY[0x277D85000] & *v13) + 0x1D8);
  v17 = v13;
  v18 = v16();
  if (v18)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = *(*static DOCFileSystemCollectionManager.shared + 144);

    v19(v17);

    v18 = (*((*v15 & *v17) + 0x280))(v20);
  }

  (*((*v15 & *v17) + 0x270))(v18);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = *(*static DOCFileSystemCollectionManager.shared + 136);

  v21(v17);

  outlined consume of DOCNodeCollection.CollectionType(v13, v14, 1);
}

Swift::Void __swiftcall DOCNodeCollection.startObservingExpandedChildNodes()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D85000];
  while (v5)
  {
LABEL_10:
    v10 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *((*v8 & *v10) + 0x1F0);
    v12 = v10;
    if ((v11() & 1) == 0)
    {
      (*((*v8 & *v12) + 0x1C0))();
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall DOCNodeCollection.stopObservingExpandedChildNodes()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D85000];
  while (v5)
  {
LABEL_10:
    v10 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *((*v8 & *v10) + 0x1F0);
    v12 = v10;
    if (v11())
    {
      (*((*v8 & *v12) + 0x1C8))();
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
}

unint64_t DOCNodeCollection.isObserving.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v3 = *((*MEMORY[0x277D85000] & *v1) + 0x1D8);
      v4 = v1;
      v5 = v3();
      outlined consume of DOCNodeCollection.CollectionType(v1, v2, 1);
      return v5 & 1;
    }

    else
    {
      swift_unknownObjectRetain();
      v9 = v2;
      swift_unknownObjectRelease();

      return 0;
    }
  }

  else
  {
    v7 = v1;
    v8 = [v7 doc_isObserving];

    return v8;
  }
}

void DOCNodeCollection.startIsGatheringObservation()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v5 = 136446722;
    v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x138))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v25);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x8000000249BDC6F0, &v25);
    *(v5 + 22) = 2114;
    *(v5 + 24) = v2;
    *v6 = v2;
    v11 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v5, 0x20u);
    outlined destroy of NSObject?(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (!*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v19 = v12;
    v25 = v19;
    swift_getKeyPath();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v18 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    goto LABEL_9;
  }

  v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
  {
    v25 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
    swift_getKeyPath();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    v17 = v12;
    v18 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    outlined consume of DOCNodeCollection.CollectionType(v12, v13, 1);
LABEL_9:
    v23 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation) = v18;

    return;
  }

  swift_unknownObjectRetain();
  v24 = v13;
  swift_unknownObjectRelease();
}

void closure #1 in DOCNodeCollection.startIsGatheringObservation()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if ([v5 isGathering] && (objc_msgSend(v7, sel_isGathering) & 1) == 0)
      {
        if (one-time initialization token for Enumeration != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static Logger.Enumeration);
        v9 = v5;
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v19 = v18;
          *v12 = 136446466;
          v14 = (*((*MEMORY[0x277D85000] & *v9) + 0x138))();
          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

          *(v12 + 4) = v16;
          *(v12 + 12) = 2114;
          *(v12 + 14) = v9;
          *v13 = v5;
          v17 = v9;
          _os_log_impl(&dword_2493AC000, v10, v11, "%{public}s setting isGathering to false, DOCNodeCollection (%{public}@)", v12, 0x16u);
          outlined destroy of NSObject?(v13);
          MEMORY[0x24C1FE850](v13, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x24C1FE850](v18, -1, -1);
          MEMORY[0x24C1FE850](v12, -1, -1);
        }
      }

      [v5 setIsGathering_];
    }

    else
    {
      v7 = v5;
    }
  }
}

void DOCNodeCollection.stopIsGatheringObservation()()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v5 = 136446722;
    v8 = (*((*MEMORY[0x277D85000] & *v2) + 0x138))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2082;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BDC6D0, &v13);
    *(v5 + 22) = 2114;
    *(v5 + 24) = v2;
    *v6 = v2;
    v11 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v5, 0x20u);
    outlined destroy of NSObject?(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation) = 0;
}

uint64_t DOCNodeCollection.sortDescriptors.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v3 = *((*MEMORY[0x277D85000] & *v1) + 0x2A8);
      v4 = v1;
      v5 = v3();
      outlined consume of DOCNodeCollection.CollectionType(v1, v2, 1);
      return v5;
    }

    else
    {
      swift_unknownObjectRetain();
      v10 = v2;
      swift_unknownObjectRelease();

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v7 = v1;
    v8 = [v7 sortDescriptors];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSSortDescriptor, 0x277CCAC98);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }
}

void DOCNodeCollection.reorderItems(with:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor;
  v6 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor);
  v7 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor + 8);
  v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor + 16);
  *v5 = *a1;
  *(v5 + 8) = v2;
  *(v5 + 16) = v4;
  v37 = v4;
  v38 = v5;
  *(v5 + 24) = *(a1 + 24);
  v36 = v2;
  outlined copy of DOCItemSortDescriptor?(v3, v2, v4);
  outlined consume of DOCItemSortDescriptor?(v6, v7, v8);
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v35 = v1;
  v10 = *(v1 + v9);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = v10;

  v16 = 0;
  while (v14)
  {
    v17 = v16;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = *(*(v39 + 56) + ((v17 << 9) | (8 * v19)));
    v22 = *(v38 + 8);
    v23 = *(v38 + 16);
    v24 = *(v38 + 24);
    v40 = *v38;
    v21 = v40;
    v41 = v22;
    v42 = v23;
    v43 = v24;
    v25 = *((*MEMORY[0x277D85000] & *v20) + 0x228);
    v26 = v20;
    outlined copy of DOCItemSortDescriptor?(v21, v22, v23);
    v25(&v40);

    outlined consume of DOCItemSortDescriptor?(v40, v41, v42);
  }

  v18 = v37;
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  v27 = *(v35 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v35 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v28 = *(v35 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    v29 = v36;
    if (*(v35 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      if (v36)
      {
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
        v18 = MEMORY[0x277D84FA0];
      }

      v32 = *((*MEMORY[0x277D85000] & *v27) + 0x2D8);
      v33 = v27;
      v32(v29, v18);

      outlined consume of DOCNodeCollection.CollectionType(v27, v28, 1);
    }

    else
    {
      swift_unknownObjectRetain();
      v31 = v28;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v30 = v27;
    if (v36)
    {
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSSortDescriptor, 0x277CCAC98);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 reorderItemsWithSortDescriptors_];
  }
}

id DOCNodeCollection.itemFilteringPredicate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v3 = *((*MEMORY[0x277D85000] & *v1) + 0x290);
      v4 = v1;
      v5 = v3();
      outlined consume of DOCNodeCollection.CollectionType(v1, v2, 1);
      return v5;
    }

    else
    {
      swift_unknownObjectRetain();
      v9 = v2;
      swift_unknownObjectRelease();

      return 0;
    }
  }

  else
  {
    v7 = v1;
    v8 = [v7 itemFilteringPredicate];

    return v8;
  }
}

void DOCNodeCollection.itemFilteringPredicate.setter(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v4 = *((*MEMORY[0x277D85000] & *v2) + 0x298);
      v5 = v2;
      v4(a1);

      outlined consume of DOCNodeCollection.CollectionType(v2, v3, 1);
      return;
    }

    swift_unknownObjectRetain();
    v7 = v3;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = v2;
    [v6 setItemFilteringPredicate_];
  }
}

void (*DOCNodeCollection.itemFilteringPredicate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type;
  a1[1] = v1;
  a1[2] = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 16))
  {
    v6 = *(v4 + 8);
    if (*(v4 + 16) == 1)
    {
      v7 = *((*MEMORY[0x277D85000] & *v5) + 0x290);
      v8 = v5;
      v9 = v7();
      outlined consume of DOCNodeCollection.CollectionType(v5, v6, 1);
    }

    else
    {
      swift_unknownObjectRetain();
      v11 = v6;
      swift_unknownObjectRelease();

      v9 = 0;
    }
  }

  else
  {
    v10 = v5;
    v9 = [v10 itemFilteringPredicate];
  }

  *a1 = v9;
  return DOCNodeCollection.itemFilteringPredicate.modify;
}

void DOCNodeCollection.itemFilteringPredicate.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = v3 + v2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (a2)
  {
    if (!v8)
    {
      v15 = v4;
      outlined copy of DOCNodeCollection.CollectionType(v6, v7, 0);
      swift_unknownObjectRelease();
      [v6 setItemFilteringPredicate_];

      goto LABEL_14;
    }

    if (v8 == 1)
    {
      v9 = *((*MEMORY[0x277D85000] & *v6) + 0x298);
      v16 = v4;
      v15 = v4;
      outlined copy of DOCNodeCollection.CollectionType(v6, v7, 1);
      v9(v16);
      outlined consume of DOCNodeCollection.CollectionType(v6, v7, 1);
LABEL_14:
      v13 = v15;
LABEL_15:

      return;
    }

    v15 = v4;
    outlined copy of DOCNodeCollection.CollectionType(v6, v7, 2);
    swift_unknownObjectRelease();

    v12 = v15;
LABEL_13:

    goto LABEL_14;
  }

  v17 = v4;
  if (!v8)
  {
    v15 = v6;
    [v15 setItemFilteringPredicate_];
    v12 = v17;
    goto LABEL_13;
  }

  if (v8 != 1)
  {
    swift_unknownObjectRetain();
    v14 = v7;
    swift_unknownObjectRelease();

    v13 = v17;
    goto LABEL_15;
  }

  v10 = *((*MEMORY[0x277D85000] & *v6) + 0x298);
  v11 = v6;
  v10(v17);

  outlined consume of DOCNodeCollection.CollectionType(v6, v7, 1);
}

uint64_t DOCNodeCollection.childNodes(for:)()
{
  swift_getObjectType();
  DOCNode.identifierKey.getter();
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x250))(v3);
  outlined destroy of AnyHashable(v3);
  return v1;
}

uint64_t DOCNodeCollection.childNodes(for:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      v9 = (*((*MEMORY[0x277D85000] & *v7) + 0x258))(v8);

      return v9;
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t DOCNodeCollection.nodes.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) == 1)
    {
      v3 = *((*MEMORY[0x277D85000] & *v1) + 0x1C0);
      v4 = v1;
      v5 = v3();
      outlined consume of DOCNodeCollection.CollectionType(v1, v2, 1);
      return v5;
    }

    swift_unknownObjectRetain();
    v10 = v2;
    swift_unknownObjectRelease();

    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = v1;
    v8 = [v7 items];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v5 = _bridgeCocoaArray<A>(_:)();

      swift_bridgeObjectRelease_n();
      return v5;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    return v9;
  }
}

double DOCNodeCollection.flatNodesInternal.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesInternal;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t DOCNodeCollection.flatNodesAreDirty.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCNodeCollection.flatNodesAreDirty.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

unint64_t DOCNodeCollection.flatNodes.getter()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0x278))() & 1) == 0)
  {
    goto LABEL_12;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  result = (*((*v1 & *v0) + 0x258))();
  v4 = result;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_11:

    swift_beginAccess();
    v8 = *((*v1 & *v0) + 0x268);

    v8(v9);

LABEL_12:
    v10 = (*((*v1 & *v0) + 0x280))(0);
    return (*((*v1 & *v0) + 0x260))(v10);
  }

  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      recurseNode #1 (node:) in DOCNodeCollection.flatNodes.getter(v7, v2, v0);
      swift_unknownObjectRelease();
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void recurseNode #1 (node:) in DOCNodeCollection.flatNodes.getter(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = swift_unknownObjectRetain();
  MEMORY[0x24C1FB090](v6);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v7 = (*((*MEMORY[0x277D85000] & *a3) + 0x248))(a1);
  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_12:

    return;
  }

  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](i, v8);
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      recurseNode #1 (node:) in DOCNodeCollection.flatNodes.getter(v11, a2, a3);
      swift_unknownObjectRelease();
    }

    goto LABEL_12;
  }

  __break(1u);
}

id DOCNodeCollection.isDisplayingSearchResults.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16) != 1)
    {
      v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 8);
      swift_unknownObjectRetain();
      v2 = v1;
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type);
    v5 = [v4 doc_displaysSearchResults];

    return v5;
  }
}

Swift::Int __swiftcall DOCNodeCollection.maxIndentation()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation;
  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation);
  if (result == -1)
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation) = 0;
    result = (*((*MEMORY[0x277D85000] & *v0) + 0x258))();
    v3 = result;
    if (result >> 62)
    {
      result = __CocoaSet.count.getter();
      v4 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return result;
        }

        v5 = 0;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x24C1FC540](v5, v3);
          }

          else
          {
            v6 = *(v3 + 8 * v5 + 32);
            swift_unknownObjectRetain();
          }

          ++v5;
          v7 = recurseNode #1 (node:indentation:) in DOCNodeCollection.maxIndentation()(v6, 0, v0);
          swift_unknownObjectRelease();
          v8 = *(v0 + v1);
          if (v8 <= v7)
          {
            v8 = v7;
          }

          *(v0 + v1) = v8;
        }

        while (v4 != v5);
      }
    }

    return *(v0 + v1);
  }

  return result;
}

unint64_t recurseNode #1 (node:indentation:) in DOCNodeCollection.maxIndentation()(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*((*MEMORY[0x277D85000] & *a3) + 0x248))(a1);
  v6 = result;
  if (!(result >> 62))
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    return a2;
  }

  result = __CocoaSet.count.getter();
  v7 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x24C1FC540](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      ++v9;
      v11 = recurseNode #1 (node:indentation:) in DOCNodeCollection.maxIndentation()(v10, v8, a3);
      swift_unknownObjectRelease();
      if (a2 <= v11)
      {
        a2 = v11;
      }
    }

    while (v7 != v9);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id DOCNodeCollection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCNodeCollection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCNodeCollection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for DOCNodeDisclosureProvider.childNodes(for:) in conformance DOCNodeCollection()
{
  return (*((*MEMORY[0x277D85000] & **v0) + 0x248))();
}

{
  return (*((*MEMORY[0x277D85000] & **v0) + 0x250))();
}

uint64_t DOCNodeCollection.data(forCollectionShouldBeReloaded:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Enumeration);
  v5 = a1;
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 136446978;
    v12 = (*((*v3 & *v6) + 0x138))();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v23);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BDC2D0, &v23);
    *(v9 + 22) = 2114;
    *(v9 + 24) = v6;
    *v10 = v1;
    *(v9 + 32) = 2048;
    v15 = v6;
    v16 = [v5 items];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v17 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 34) = v18;

    _os_log_impl(&dword_2493AC000, v7, v8, "%{public}s %{public}s DOCNodeCollection (%{public}@) reload with nodes: %ld", v9, 0x2Au);
    outlined destroy of NSObject?(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);

    v3 = MEMORY[0x277D85000];
  }

  else
  {
  }

  result = (*((*v3 & *v6) + 0x190))();
  if (result)
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v21 + 8))(v6, ObjectType, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

void DOCNodeCollection.collection(_:didUpdateObservedItem:)(void *a1, void *a2)
{
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Enumeration);
  v7 = v2;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v40 = a1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v13;
    *v11 = 136446978;
    v14 = (*((*v5 & *v7) + 0x138))();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v43);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BDC380, &v43);
    *(v11 + 22) = 2114;
    *(v11 + 24) = v7;
    *(v11 + 32) = 2114;
    *(v11 + 34) = v8;
    *v12 = v2;
    v12[1] = v8;
    v17 = v7;
    v18 = v8;
    _os_log_impl(&dword_2493AC000, v9, v10, "%{public}s %{public}s DOCNodeCollection (%{public}@) observedItem: %{public}@", v11, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v13, -1, -1);
    v19 = v11;
    a1 = v40;
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

  v20 = v7 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type;
  if (*(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type + 16))
  {
    v21 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BDC360);
    v22 = MEMORY[0x24C1FAD20](0xD000000000000054, 0x8000000249BDC300);
    v41 = MEMORY[0x24C1FAD20](0xD000000000000054, 0x8000000249BDC300);
    DOCAssertWithIntenalBuildAlert();

LABEL_7:

    return;
  }

  v23 = *v20;
  v24 = *(v20 + 1);
  *v20 = a1;
  *(v20 + 1) = v8;
  v20[16] = 0;
  v25 = v8;
  v26 = a1;
  swift_unknownObjectRetain();
  outlined consume of DOCNodeCollection.CollectionType(v23, v24, 0);
  if ((*((*MEMORY[0x277D85000] & *v7) + 0x190))())
  {
    v28 = v27;
    ObjectType = swift_getObjectType();
    (*(v28 + 24))(v7, v25, ObjectType, v28);
    swift_unknownObjectRelease();
  }

  if (v24)
  {
    v30 = [v24 displayName];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = [v25 displayName];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (v31 == v35 && v33 == v37)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v38 & 1) == 0)
      {
        v39 = [objc_opt_self() defaultCenter];
        v42 = v39;
        if (one-time initialization token for DOCNodeCollectionNodeDisplayNameChanged != -1)
        {
          swift_once();
          v39 = v42;
        }

        [v39 postNotificationName:static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged object:{v25, v42, v43}];
        swift_unknownObjectRelease();
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t *NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCNodeCollectionNodeDisplayNameChanged != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged;
}

uint64_t DOCNodeCollection.data(forFileSystemCollectionShouldBeReloaded:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Enumeration);
  v5 = a1;
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v9 = 136446978;
    v11 = (*((*v3 & *v6) + 0x138))();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BDC3B0, &v21);
    *(v9 + 22) = 2114;
    *(v9 + 24) = v6;
    *v10 = v1;
    *(v9 + 32) = 2048;
    v14 = (*((*v3 & *v5) + 0x1C0))(v6);
    if (v14 >> 62)
    {
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 34) = v15;

    _os_log_impl(&dword_2493AC000, v7, v8, "%{public}s %{public}s DOCNodeCollection (%{public}@) reload with nodes: %ld", v9, 0x2Au);
    outlined destroy of NSObject?(v10);
    MEMORY[0x24C1FE850](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v20, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);

    v3 = MEMORY[0x277D85000];
  }

  else
  {
  }

  result = (*((*v3 & *v6) + 0x190))();
  if (result)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v6, ObjectType, v18);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t one-time initialization function for DOCNodeCollectionNodeDisplayNameChanged()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000027, 0x8000000249BDC670);
  static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged = result;
  return result;
}

id static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged.getter()
{
  if (one-time initialization token for DOCNodeCollectionNodeDisplayNameChanged != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.DOCNodeCollectionNodeDisplayNameChanged;

  return v1;
}

void *specialized DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v56[0] = 0;
  v11 = [a1 cachedDomain_];
  if (v11)
  {
    v12 = v56[0];
    v13 = v11;
    if (FPProviderDomain.shouldUseDSEnumeration.getter())
    {
      v14 = DOCNode.fpfs_syncFetchFINode()();
      if (v15)
      {
      }

      else if (v14)
      {
        v44 = a5;
        v45 = v14;
        swift_unknownObjectRelease();
        v46 = objc_allocWithZone(type metadata accessor for DOCFileSystemCollection(0));
        v47 = a3;
        v48 = v45;
        v49 = a2;
        v50 = specialized DOCFileSystemCollection.init(for:configuration:source:extraOptions:)(v48, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32), v46);

        v37 = (*(v44 + 344))(v50);
        goto LABEL_16;
      }
    }

    v16 = v11;
  }

  else
  {
    v55 = a2;
    v17 = v56[0];
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.Enumeration);
    swift_unknownObjectRetain();
    v20 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v56[0] = v54;
      *v23 = 136446722;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, v56);
      *(v23 + 12) = 2082;
      v24 = a3;
      v25 = [a1 description];
      v52 = v21;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v22;
      v27 = a5;
      v29 = v28;

      a3 = v24;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, v56);
      a5 = v27;

      *(v23 + 14) = v30;
      *(v23 + 22) = 2114;
      v31 = v18;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 24) = v32;
      *v53 = v32;
      _os_log_impl(&dword_2493AC000, v52, v51, "%{public}s Init DOCNodeCollection with DOCNode failed to get a cached domain for %{public}s. Error: %{public}@. Falling back to using an FPItem (if available).", v23, 0x20u);
      outlined destroy of NSObject?(v53);
      MEMORY[0x24C1FE850](v53, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v54, -1, -1);
      MEMORY[0x24C1FE850](v23, -1, -1);
    }

    else
    {
    }

    v16 = 0;
    a2 = v55;
  }

  FPItem = DOCNode.fpfs_syncFetchFPItemResult()();
  if (v34)
  {
    v35 = objc_allocWithZone(type metadata accessor for DOCNodeCollection());
    v36 = swift_unknownObjectRetain();
    v37 = specialized DOCNodeCollection.init(failure:domain:error:)(v36, v16, FPItem, v35);
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = [objc_opt_self() defaultManager];
    v39 = [v38 collectionForFolderItem_];

    v40 = a3;
    v41 = *(a5 + 336);
    v42 = v39;
    outlined copy of Result<FPItem, Error>(FPItem);
    v37 = v41(v42, FPItem);

    outlined consume of Result<FPItem, Error>(FPItem);
    swift_unknownObjectRelease();
  }

  v13 = a2;
LABEL_16:

  return v37;
}

void outlined copy of DOCItemSortDescriptor?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void *specialized DOCNodeCollection.init(failure:domain:error:)(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  v9 = MEMORY[0x277D84F90];
  *&a4[v8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables17DOCNodeCollectionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor];
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  v10[24] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation] = -1;
  v11 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix];
  *v11 = 0;
  v11[1] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesInternal] = v9;
  a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty] = 1;
  v13 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type];
  *v13 = a1;
  *(v13 + 1) = a3;
  v13[16] = 2;
  swift_beginAccess();
  a4[v12] = 0;
  swift_unknownObjectRetain();
  v14 = a3;
  v49.receiver = a4;
  v49.super_class = type metadata accessor for DOCNodeCollection();
  v15 = objc_msgSendSuper2(&v49, sel_init);
  v16 = one-time initialization token for Enumeration;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.Enumeration);
  swift_unknownObjectRetain();
  v19 = a3;
  v20 = a2;
  v21 = v17;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v22, v23))
  {
    v46 = v23;
    v47 = v20;
    v43 = a2;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v45;
    *v24 = 136447490;
    v26 = (*((*MEMORY[0x277D85000] & *v21) + 0x138))();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v48);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BDC820, &v48);
    *(v24 + 22) = 2114;
    *(v24 + 24) = v21;
    *v25 = v21;
    *(v24 + 32) = 2082;
    v44 = v21;
    v29 = [a1 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v48);

    *(v24 + 34) = v33;
    *(v24 + 42) = 2082;
    if (v43)
    {
      v34 = v47;
      v35 = [v47 description];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v38 = 0xE300000000000000;
      v36 = 7104878;
      v34 = v47;
    }

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v48);

    *(v24 + 44) = v39;
    *(v24 + 52) = 2114;
    v40 = a3;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 54) = v41;
    v25[1] = v41;
    _os_log_impl(&dword_2493AC000, v22, v46, "%{public}s %{public}s Init DOCNodeCollection (%{public}@) with DOCNode failed: %{public}s, domain: %{public}s, error: %{public}@", v24, 0x3Eu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v45, -1, -1);
    MEMORY[0x24C1FE850](v24, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v21;
}

{
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_expandedChildNodesMap;
  v9 = MEMORY[0x277D84F90];
  *&a4[v8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables17DOCNodeCollectionCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_sortDescriptor];
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  v10[24] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_indentation] = -1;
  v11 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection____lazy_storage___logPrefix];
  *v11 = 0;
  v11[1] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering;
  a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGathering] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_isGatheringObservation] = 0;
  *&a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesInternal] = v9;
  a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_flatNodesAreDirty] = 1;
  v13 = &a4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCNodeCollection_type];
  *v13 = a1;
  *(v13 + 1) = a3;
  v13[16] = 2;
  swift_beginAccess();
  a4[v12] = 0;
  v14 = a1;
  v15 = a3;
  v50.receiver = a4;
  v50.super_class = type metadata accessor for DOCNodeCollection();
  v16 = objc_msgSendSuper2(&v50, sel_init);
  v17 = one-time initialization token for Enumeration;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.Enumeration);
  v20 = v14;
  v21 = a3;
  v22 = a2;
  v23 = v18;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v47 = v25;
    v44 = a2;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = v46;
    *v26 = 136447490;
    v28 = (*((*MEMORY[0x277D85000] & *v23) + 0x138))();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v49);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000249BDC820, &v49);
    *(v26 + 22) = 2114;
    *(v26 + 24) = v23;
    *v27 = v23;
    *(v26 + 32) = 2082;
    v45 = v23;
    v48 = v20;
    v31 = [v20 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v49);

    *(v26 + 34) = v35;
    *(v26 + 42) = 2082;
    if (v44)
    {
      v36 = [v22 description];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
    }

    else
    {
      v39 = 0xE300000000000000;
      v37 = 7104878;
    }

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v49);

    *(v26 + 44) = v40;
    *(v26 + 52) = 2114;
    v41 = a3;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 54) = v42;
    v27[1] = v42;
    _os_log_impl(&dword_2493AC000, v24, v47, "%{public}s %{public}s Init DOCNodeCollection (%{public}@) with DOCNode failed: %{public}s, domain: %{public}s, error: %{public}@", v26, 0x3Eu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v27, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v46, -1, -1);
    MEMORY[0x24C1FE850](v26, -1, -1);
  }

  else
  {
  }

  return v23;
}

void outlined consume of DOCNodeCollection.CollectionType(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 2:
      swift_unknownObjectRelease();
      a1 = a2;

      goto LABEL_9;
    case 1:

LABEL_9:

      return;
    case 0:

      swift_unknownObjectRelease();
      break;
  }
}

id outlined copy of DOCNodeCollection.CollectionType(id result, void *a2, char a3)
{
  if (a3 == 2)
  {
    swift_unknownObjectRetain();
    result = a2;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        return result;
      }

      v4 = result;
      swift_unknownObjectRetain();
      result = v4;
    }
  }

  return result;
}

id specialized DOCFileSystemCollection.init(for:configuration:source:extraOptions:)(void *a1, void *a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v91 = a1;
  v92 = a4;
  v96 = a2;
  v97 = a3;
  v6 = type metadata accessor for OSSignpostID();
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v93 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v89 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v13);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v16, v17);
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isGathering] = 1;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_isFullyPopulated] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = MEMORY[0x277D84F90];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection__nodes] = MEMORY[0x277D84F90];
  v19 = v18;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection__isObserving] = 0;
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_stateLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *&a5[v20] = v21;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_shouldStopAccessing] = 0;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_domainState] = 0;
  v90 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_source;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_source] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserverToken] = 0;
  v22 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_workQueue;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v99 = v19;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v15, *MEMORY[0x277D85268], v88);
  static DispatchQoS.unspecified.getter();
  v23 = v97;
  v24 = MEMORY[0x277D84F90];
  *&a5[v22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_iCloudRootNodeObservation] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_itemFilteringPredicate] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sortDescriptors] = v24;
  v25 = MEMORY[0x277D84FA0];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_propertiesImpactingSort] = MEMORY[0x277D84FA0];
  if (v24 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo6FINodeC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v25 = MEMORY[0x277D84FA0];
    }
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesWithPendingUpdates] = v25;
  v26 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesUpdatesFlushInterval;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodesUpdatesFlushInterval] = 100;
  v27 = *MEMORY[0x277D85178];
  v28 = type metadata accessor for DispatchTimeInterval();
  (*(*(v28 - 8) + 104))(&a5[v26], v27, v28);
  v29 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_lastFlushTime;
  v30 = type metadata accessor for DispatchTime();
  (*(*(v30 - 8) + 56))(&a5[v29], 1, 1, v30);
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_hasScheduledUpdate] = 0;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_dispatchedUpdateIsPending] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observer] = 0;
  v31 = v91;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_observedNode] = v91;
  v32 = *&a5[v90];
  *&a5[v90] = v23;
  v33 = v31;
  v34 = v23;

  if ((v92 & 0x100000000) != 0)
  {
    v35 = 19;
  }

  else
  {
    v35 = v92 | 0x13;
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_nodeObservationOptions] = v35;
  v36 = static os_signpost_type_t.event.getter();
  if (one-time initialization token for updatePointsOfInterestHandler != -1)
  {
    swift_once();
  }

  v37 = updatePointsOfInterestHandler;
  v38 = v93;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v36, &dword_2493AC000, v37, "Files-DOCFileSystemCollection", 29, 2, v38, "Init DOCFileSystemCollection", 28, 2, v24);
  (*(v94 + 8))(v38, v95);
  type metadata accessor for DOCRootNode();
  v39 = swift_dynamicCastClass();
  if (v39)
  {
    v40 = v39;
    if (one-time initialization token for Enumeration != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.Enumeration);
    v42 = v33;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v95 = v42;
      v46 = v45;
      v47 = swift_slowAlloc();
      v99 = v47;
      *v46 = 136446466;
      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, &v99);
      *(v46 + 12) = 2080;
      v48 = [v40 source];
      v49 = v23;
      v50 = [v48 displayName];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v23 = v49;
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v99);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_2493AC000, v43, v44, "[DSEnumeration] %{public}s: node is RootNode so using underlyingNode: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v47, -1, -1);
      v55 = v46;
      v42 = v95;
      MEMORY[0x24C1FE850](v55, -1, -1);
    }

    v56 = [v40 source];
  }

  else
  {
    type metadata accessor for DOCICloudRootNode();
    v67 = swift_dynamicCastClass();
    if (v67)
    {
      v56 = v67;
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, static Logger.Enumeration);
      v69 = v33;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();

      v72 = os_log_type_enabled(v70, v71);
      v73 = MEMORY[0x277D85000];
      if (v72)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v99 = v75;
        *v74 = 136446466;
        *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, &v99);
        *(v74 + 12) = 2080;
        v76 = (*((*v73 & *v56) + 0x78))();
        if (v76)
        {

          v77 = "Cloud container not ready)";
          v78 = 0xD000000000000032;
        }

        else
        {
          v77 = "Init DOCFileSystemCollection";
          v78 = 0xD00000000000002ALL;
        }

        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v77 | 0x8000000000000000, &v99);

        *(v74 + 14) = v84;
        _os_log_impl(&dword_2493AC000, v70, v71, "[DSEnumeration] %{public}s: node is DOCICloudRootNode, using: %s", v74, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v75, -1, -1);
        MEMORY[0x24C1FE850](v74, -1, -1);

        v23 = v97;
        v73 = MEMORY[0x277D85000];
      }

      else
      {
      }

      v85 = (*((*v73 & *v56) + 0x78))();
      if (v85)
      {
        v86 = v85;

        v56 = v86;
      }
    }

    else
    {
      if (one-time initialization token for Enumeration != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      __swift_project_value_buffer(v79, static Logger.Enumeration);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v99 = v83;
        *v82 = 136446210;
        *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BDC710, &v99);
        _os_log_impl(&dword_2493AC000, v80, v81, "[DSEnumeration] %{public}s: node is a regular node", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v83);
        MEMORY[0x24C1FE850](v83, -1, -1);
        MEMORY[0x24C1FE850](v82, -1, -1);
      }

      v56 = v33;
    }
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_internalObservedNode] = v56;
  v57 = v96;
  if (v96 && v23)
  {
    v58 = objc_opt_self();
    v59 = v57;
    v60 = [v58 defaultPermission];
    v61 = [v60 userActionForConfiguration_];

    v62 = [v59 hostIdentifier];
    if (!v62)
    {
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = MEMORY[0x24C1FAD20](v63);
    }

    v64 = [objc_allocWithZone(DOCSourceObserver) initWithUserAction:v61 hostIdentifier:v62];
  }

  else
  {
    v64 = 0;
  }

  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCFileSystemCollection_sourceObserver] = v64;
  v65 = type metadata accessor for DOCFileSystemCollection(0);
  v98.receiver = a5;
  v98.super_class = v65;
  return objc_msgSendSuper2(&v98, sel_init);
}

uint64_t specialized DOCNodeCollection.collection(_:didEncounterError:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Enumeration);
  v5 = v1;
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v9 = 136446978;
    v11 = (*((*v3 & *v5) + 0x138))();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BDC6A0, &v22);
    *(v9 + 22) = 2114;
    *(v9 + 24) = v5;
    *v10 = v1;
    *(v9 + 32) = 2114;
    v14 = v5;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v16;
    v10[1] = v16;
    _os_log_impl(&dword_2493AC000, v7, v8, "%{public}s %{public}s DOCNodeCollection (%{public}@) Error: %{public}@", v9, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v21, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  result = (*((*v3 & *v5) + 0x190))();
  if (result)
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 16))(v5, a1, ObjectType, v19);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.collectionDidFinishGathering(_:)()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Enumeration);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136446722;
    v9 = (*((*v1 & *v3) + 0x138))();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BDC640, &v17);
    *(v6 + 22) = 2114;
    *(v6 + 24) = v3;
    *v7 = v0;
    v12 = v3;
    _os_log_impl(&dword_2493AC000, v4, v5, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v6, 0x20u);
    outlined destroy of NSObject?(v7);
    MEMORY[0x24C1FE850](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  result = (*((*v1 & *v3) + 0x190))();
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 32))(v3, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.collection(_:didUpdate:replaceItemsByFormerID:deleteItemsWith:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.Enumeration);
  v9 = v3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v32 = a3;
    v12 = swift_slowAlloc();
    v31 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v12 = 136446722;
    v15 = (*((*v7 & *v9) + 0x138))();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v33);

    *(v12 + 4) = v17;
    v7 = MEMORY[0x277D85000];
    *(v12 + 12) = 2082;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003FLL, 0x8000000249BDC600, &v33);
    *(v12 + 22) = 2114;
    *(v12 + 24) = v9;
    *v13 = v3;
    v18 = v9;
    _os_log_impl(&dword_2493AC000, v10, v11, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v12, 0x20u);
    outlined destroy of NSObject?(v13);
    v19 = v13;
    a2 = v31;
    MEMORY[0x24C1FE850](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    v20 = v12;
    a3 = v32;
    MEMORY[0x24C1FE850](v20, -1, -1);
  }

  result = (*((*v7 & *v9) + 0x190))();
  if (result)
  {
    v23 = v22;

    if (a1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v29 = _bridgeCocoaArray<A>(_:)();

      a1 = v29;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    v24 = specialized _dictionaryUpCast<A, B, C, D>(_:)(a2);
    if (a3 >> 62)
    {

      v30 = _bridgeCocoaArray<A>(_:)();

      a3 = v30;
    }

    else
    {
      v25 = a3 & 0xFFFFFFFFFFFFFF8;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      if (!swift_dynamicCastMetatype())
      {
        v27 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
          v28 = (v25 + 32);
          while (*v28)
          {
            ++v28;
            if (!--v27)
            {
              goto LABEL_10;
            }
          }

          a3 = v25 | 1;
        }
      }
    }

LABEL_10:
    ObjectType = swift_getObjectType();
    (*(v23 + 48))(v9, a1, v24, a3, ObjectType, v23);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.fileSystemCollection(_:didEncounterError:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Enumeration);
  v5 = v1;
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v9 = 136446978;
    v11 = (*((*v3 & *v5) + 0x138))();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000249BDC5D0, &v22);
    *(v9 + 22) = 2114;
    *(v9 + 24) = v5;
    *v10 = v1;
    *(v9 + 32) = 2114;
    v14 = v5;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v16;
    v10[1] = v16;
    _os_log_impl(&dword_2493AC000, v7, v8, "%{public}s %{public}s DOCNodeCollection (%{public}@) Error: %{public}@", v9, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v21, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  result = (*((*v3 & *v5) + 0x190))();
  if (result)
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 16))(v5, a1, ObjectType, v19);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.fileSystemCollection(_:didUpdateObservedNode:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Enumeration);
  v5 = v1;
  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v8 = 136446978;
    v10 = (*((*v3 & *v5) + 0x138))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v8 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BDC5A0, &v24);
    *(v8 + 22) = 2114;
    *(v8 + 24) = v5;
    *v9 = v1;
    *(v8 + 32) = 2082;
    v13 = v5;
    v14 = [a1 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v24);
    v3 = MEMORY[0x277D85000];

    *(v8 + 34) = v18;
    _os_log_impl(&dword_2493AC000, v6, v7, "%{public}s %{public}s DOCNodeCollection (%{public}@) observedNode: %{public}s", v8, 0x2Au);
    outlined destroy of NSObject?(v9);
    MEMORY[0x24C1FE850](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v23, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  result = (*((*v3 & *v5) + 0x190))();
  if (result)
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    (*(v21 + 24))(v5, a1, ObjectType, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.fileSystemCollectionDidStartGathering(_:)()
{
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Enumeration);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = MEMORY[0x277D85000];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136446722;
    v10 = (*((*v6 & *v2) + 0x138))();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x8000000249BDC570, &v18);
    *(v7 + 22) = 2114;
    *(v7 + 24) = v2;
    *v8 = v2;
    v13 = v2;
    _os_log_impl(&dword_2493AC000, v3, v4, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v7, 0x20u);
    outlined destroy of NSObject?(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  else
  {
  }

  result = (*((*v6 & *v2) + 0x190))();
  if (result)
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    (*(v16 + 40))(v2, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.fileSystemCollectionDidFinishGathering(_:)()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Enumeration);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136446722;
    v9 = (*((*v1 & *v3) + 0x138))();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v17);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2082;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000249BDC540, &v17);
    *(v6 + 22) = 2114;
    *(v6 + 24) = v3;
    *v7 = v0;
    v12 = v3;
    _os_log_impl(&dword_2493AC000, v4, v5, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v6, 0x20u);
    outlined destroy of NSObject?(v7);
    MEMORY[0x24C1FE850](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }

  result = (*((*v1 & *v3) + 0x190))();
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 32))(v3, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized DOCNodeCollection.fileSystemCollection(_:didUpdate:deleteNodesWith:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x280))(1);
  if (one-time initialization token for Enumeration != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Enumeration);
  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v25 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = a1;
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136446722;
    v13 = (*((*v5 & *v7) + 0x138))();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v26);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BDC500, &v26);
    *(v10 + 22) = 2114;
    *(v10 + 24) = v7;
    *v11 = v2;
    v16 = v7;
    _os_log_impl(&dword_2493AC000, v8, v9, "%{public}s %{public}s DOCNodeCollection (%{public}@)", v10, 0x20u);
    outlined destroy of NSObject?(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    swift_arrayDestroy();
    v17 = v12;
    a1 = v24;
    MEMORY[0x24C1FE850](v17, -1, -1);
    v18 = v10;
    a2 = v25;
    MEMORY[0x24C1FE850](v18, -1, -1);
  }

  result = (*((*v5 & *v7) + 0x190))();
  if (result)
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8FPItemIDC_So7DOCNode_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    (*(v21 + 48))(v7, a1, v23, a2, ObjectType, v21);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t dispatch thunk of DOCNodeDisclosureProvider.childNodes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

uint64_t dispatch thunk of DOCNodeCollection.childNodes(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x248))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x250))();
}

uint64_t getEnumTagSinglePayload for DOCNodeCollection.CollectionType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCNodeCollection.CollectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t lazy protocol witness table accessor for type FPItemID and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type FPItemID and conformance NSObject;
  if (!lazy protocol witness table cache variable for type FPItemID and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for FPItemID, 0x277CC6400);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FPItemID and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t specialized Sequence.compactMap<A>(_:)(unint64_t a1, uint64_t *a2)
{
  return specialized Sequence.compactMap<A>(_:)(a1, a2);
}

{
  v21 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_26:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v17 = MEMORY[0x277D84F90];
  while (v19 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1FC540](v4, a1);
    }

    else
    {
      if (v4 >= *(v18 + 16))
      {
        goto LABEL_25;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v9 = [v6 itemID];
    swift_beginAccess();
    v10 = *a2;
    if ((*a2 & 0xC000000000000001) != 0)
    {
      v11 = v9;
      v12 = __CocoaDictionary.lookup(_:)();

      if (v12)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
        swift_dynamicCast();
        v5 = v20;

        goto LABEL_6;
      }
    }

    else
    {
      if (*(v10 + 16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
        if (v14)
        {
          v5 = *(*(v10 + 56) + 8 * v13);
          v15 = v5;

          goto LABEL_6;
        }
      }
    }

    v5 = 0;
LABEL_6:
    swift_endAccess();

    ++v4;
    if (v5)
    {
      MEMORY[0x24C1FB090]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = v21;
      v4 = v8;
    }
  }

  return v17;
}

void DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:)(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, void *a5, void *a6, unint64_t a7)
{
  v8 = v7;
  v74 = a5;
  v76 = a4;
  v71 = type metadata accessor for Date();
  v77 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v14);
  v70 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = DOCSmartFolderLogHandle();
  v17 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249B9A480;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;

  os_log(_:dso:log:type:_:)("Computing Hot Folders for App (%@)", 34, 2, &dword_2493AC000, v16, v17, v18);

  v80 = a7;
  v78 = a7;
  if (!a6)
  {

    goto LABEL_8;
  }

  v19 = a6;
  v20 = DOCSmartFolderManager.suggestedSmartFolder(with:configuration:)(v19, a3);
  if (!v20)
  {

    goto LABEL_8;
  }

  v22 = v20;
  v79 = v20;
  MEMORY[0x28223BE20](v20, v21);
  *(&v68 - 2) = &v79;
  if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v68 - 4), a7) & 1) != 0 || ([v22 isRootItem])
  {

LABEL_8:
    v75 = 0;
    v72 = 1;
    goto LABEL_9;
  }

  v75 = v22;
  v65 = v22;
  MEMORY[0x24C1FB090]();
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  if (v74 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_249BA0290;
    *(v66 + 32) = v65;
LABEL_69:

    return;
  }

  v78 = v80;
  v72 = 0;
LABEL_9:
  v23 = *(v8 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCSmartFolderManager_database);
  v24 = MEMORY[0x24C1FAD20](a1, a2);
  v25 = (*((*MEMORY[0x277D85000] & *v8) + 0x80))();
  v26 = [v23 previousEventsForAppBundleIdentifier:v24 excluding:v25];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCHotFolderEvent, 0x277D05ED0);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = specialized DOCSmartFolderManager.group(_:configuration:managedPermission:)(v27, a3, v76);

  v29 = (v28 + 8);
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v28[8];
  v33 = (v30 + 63) >> 6;
  v69 = (v77 + 1);

  v34 = 0;
  v73 = MEMORY[0x277D84F90];
  v76 = v28;
  while (v32)
  {
LABEL_17:
    v36 = (v34 << 9) | (8 * __clz(__rbit64(v32)));
    v8 = *(v28[6] + v36);
    v37 = *(v28[7] + v36);
    if (v37 >> 62)
    {
      v38 = __CocoaSet.count.getter();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 &= v32 - 1;
    if (v38)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v52 = v8;

        v41 = MEMORY[0x24C1FC540](0, v37);
      }

      else
      {
        v35 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v35)
        {
          goto LABEL_76;
        }

        v39 = *(v37 + 32);
        v40 = v8;

        v41 = v39;
      }

      a2 = v41;
      v26 = [v41 folderItem];

      if (v26)
      {
        a2 = v8;
        v77 = &v68;
        v79 = v26;
        MEMORY[0x28223BE20](v42, v43);
        v8 = v26;
        *(&v68 - 2) = &v79;
        v44 = v78;

        v26 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v68 - 4), v44);

        if (v26)
        {

          v28 = v76;
        }

        else
        {
          v77 = v8;
          v8 = v70;
          v45 = Date.init()();
          MEMORY[0x28223BE20](v45, v46);
          *(&v68 - 2) = v8;
          v47 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in closure #1 in DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:), 0.0, (&v68 - 4), v37);
          (*v69)(v8, v71);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73[2] + 1, 1, v73);
          }

          v26 = v73[2];
          v49 = v73[3];
          if (v26 >= v49 >> 1)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v26 + 1, 1, v73);
          }

          v50 = v73;
          v73[2] = v26 + 1;
          v51 = &v50[2 * v26];
          *(v51 + 4) = v77;
          v51[5] = v47;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {

      v34 = v73;
      v79 = v73;

      specialized MutableCollection<>.sort(by:)(&v79);

      v53 = v79;
      v54 = *(v79 + 2);
      a2 = v74;
      if (v54)
      {
        v79 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        v34 = 32;
        do
        {
          v26 = *&v53[v34];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = *(v79 + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v34 += 16;
          --v54;
        }

        while (v54);

        v29 = v79;
      }

      else
      {

        v29 = MEMORY[0x277D84F90];
      }

      v79 = v29;
      v35 = v72;
      if (v72)
      {
        goto LABEL_42;
      }

      if (v29 >> 62)
      {
        goto LABEL_92;
      }

      goto LABEL_41;
    }

    v32 = *(v29 + 8 * v35);
    ++v34;
    if (v32)
    {
      v34 = v35;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  if ((v29 & 0x8000000000000000) != 0)
  {
    v53 = v29;
  }

  else
  {
    v53 = v35;
  }

  v54 = __CocoaSet.count.getter();
  if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
  {
    if (v54 >= a2)
    {
      v67 = a2;
    }

    else
    {
      v67 = v54;
    }

    if (v54 < 0)
    {
      v67 = a2;
    }

    if (a2)
    {
      v8 = v67;
    }

    else
    {
      v8 = 0;
    }

    if (__CocoaSet.count.getter() < v8)
    {
      while (1)
      {
        __break(1u);
LABEL_92:
        if (__CocoaSet.count.getter() < 0)
        {
          break;
        }

LABEL_41:
        v53 = v75;
        specialized Array.replaceSubrange<A>(_:with:)(0, 0, v53);

        v29 = v79;
LABEL_42:
        if ((a2 & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        v35 = v29 & 0xFFFFFFFFFFFFFF8;
        v34 = v29 >> 62;
        if (v29 >> 62)
        {
          goto LABEL_78;
        }

        v55 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v55 >= a2)
        {
          v56 = a2;
        }

        else
        {
          v56 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a2)
        {
          v8 = v56;
        }

        else
        {
          v8 = 0;
        }

        if (v55 >= v8)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
      goto LABEL_94;
    }

LABEL_51:
    if ((v29 & 0xC000000000000001) != 0 && v8)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);

      v57 = 0;
      do
      {
        v58 = v57 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v57);
        v57 = v58;
      }

      while (v8 != v58);
    }

    else
    {
    }

    if (v34)
    {
      v53 = _CocoaArrayWrapper.subscript.getter();
      v26 = v59;
      v54 = v60;
      v8 = v61;

      if (v8)
      {
LABEL_62:
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v62 = swift_dynamicCastClass();
        if (!v62)
        {
          swift_unknownObjectRelease();
          v62 = MEMORY[0x277D84F90];
        }

        v63 = *(v62 + 16);

        if (__OFSUB__(v8 >> 1, v54))
        {
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        if (v63 != (v8 >> 1) - v54)
        {
LABEL_95:
          swift_unknownObjectRelease_n();
          goto LABEL_61;
        }

        v64 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (!v64)
        {
          swift_unknownObjectRelease();
        }

        goto LABEL_69;
      }
    }

    else
    {
      v54 = 0;
      v53 = (v29 & 0xFFFFFFFFFFFFFF8);
      v26 = (v29 & 0xFFFFFFFFFFFFFF8) + 32;
      v8 = (2 * v8) | 1;
      if (v8)
      {
        goto LABEL_62;
      }
    }

LABEL_61:
    specialized _copyCollectionToContiguousArray<A>(_:)(v53, v26, v54, v8);

    swift_unknownObjectRelease();

    return;
  }

  __break(1u);

  __break(1u);
}

id DOCSmartFolderManager.suggestedSmartFolder(with:configuration:)(void *a1, uint64_t a2)
{
  v96 = a2;
  v98 = type metadata accessor for DOCSmartFolderInputFile(0);
  v3 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v4);
  v97 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v89 = &v84[-v8];
  v9 = type metadata accessor for UTType();
  v90 = *(v9 - 8);
  v91 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v84[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v92 = &v84[-v15];
  v16 = type metadata accessor for URLResourceValues();
  v93 = *(v16 - 8);
  v94 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v84[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v84[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25, v26);
  v95 = &v84[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMd, &_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMR);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v84[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v32, v33);
  v36 = &v84[-v35];
  v37 = [a1 nodesToMove];
  if (!v37)
  {
LABEL_10:
    v52 = [a1 urlsToSave];
    if (v52)
    {
      v53 = v52;
      v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v54 + 16))
      {
        v86 = v12;
        v87 = v19;
        (*(v21 + 16))(v24, v54 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);

        v55 = *(v21 + 32);
        v88 = v20;
        v55(v95, v24, v20);
        v56 = URL.startAccessingSecurityScopedResource()();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_249B9FA70;
        v58 = *MEMORY[0x277CBE7B8];
        *(inited + 32) = *MEMORY[0x277CBE7B8];
        v59 = *MEMORY[0x277CBE8D0];
        *(inited + 40) = *MEMORY[0x277CBE8D0];
        v60 = v58;
        v61 = v59;
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
        swift_setDeallocating();
        type metadata accessor for NSURLResourceKey(0);
        swift_arrayDestroy();
        v62 = v92;
        URL.resourceValues(forKeys:)();
        v85 = v56;

        v64 = v93;
        v63 = v94;
        (*(v93 + 56))(v62, 0, 1, v94);
        v65 = v87;
        (*(v64 + 32))(v87, v62, v63);
        v66 = v89;
        URLResourceValues.contentType.getter();
        v67 = v90;
        v68 = v91;
        if ((*(v90 + 48))(v66, 1, v91) == 1)
        {
          (*(v64 + 8))(v65, v63);
          outlined destroy of CharacterSet?(v66, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          v69 = 1;
          v45 = v98;
          v44 = v99;
        }

        else
        {
          v70 = v86;
          (*(v67 + 32))(v86, v66, v68);
          v71 = v67;
          v72 = URLResourceValues.localizedName.getter();
          v45 = v98;
          if (v73)
          {
            v74 = v73;
            v75 = *(v98 + 20);
            v76 = *(v71 + 16);
            v92 = v72;
            v76(v36 + v75, v70, v68);
            Date.init()();
            (*(v71 + 8))(v70, v68);
            (*(v93 + 8))(v65, v94);
            v69 = 0;
            *v36 = v92;
            v36[1] = v74;
          }

          else
          {
            (*(v67 + 8))(v70, v68);
            (*(v93 + 8))(v65, v94);
            v69 = 1;
          }

          v44 = v99;
        }

        v77 = v85;
        v78 = v95;
        (*(v3 + 56))(v36, v69, 1, v45);
        if (v77)
        {
          URL.stopAccessingSecurityScopedResource()();
          v44 = v99;
        }

        (*(v21 + 8))(v78, v88);
        goto LABEL_24;
      }
    }

    v45 = v98;
    (*(v3 + 56))(v36, 1, 1, v98);
    v44 = v99;
    goto LABEL_24;
  }

  v38 = v37;
  v88 = a1;
  v39 = v19;
  v40 = v12;
  v41 = v21;
  v42 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v43 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

    v20 = v42;
    v21 = v41;
    v12 = v40;
    v19 = v39;
    a1 = v88;
    goto LABEL_10;
  }

LABEL_4:
  if ((v43 & 0xC000000000000001) != 0)
  {
    v46 = MEMORY[0x24C1FC540](0, v43);
    v45 = v98;
    v44 = v99;
  }

  else
  {
    v45 = v98;
    v44 = v99;
    if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v46 = *(v43 + 32);
    swift_unknownObjectRetain();
  }

  v47 = [v46 displayName];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = [v46 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  Date.init()();
  swift_unknownObjectRelease();
  *v36 = v48;
  v36[1] = v50;
  (*(v3 + 56))(v36, 0, 1, v45);
LABEL_24:
  outlined init with copy of DOCSmartFolderInputFile?(v36, v31);
  if ((*(v3 + 48))(v31, 1, v45) != 1)
  {
    v24 = v97;
    outlined init with take of DOCSmartFolderInputFile(v31, v97);
    v80 = [objc_opt_self() defaultPermission];
    v38 = (*((*MEMORY[0x277D85000] & *v44) + 0xB0))(v24, v96, v80);

    if (v38 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (result)
      {
LABEL_28:
        if ((v38 & 0xC000000000000001) == 0)
        {
          if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v82 = *(v38 + 32);
LABEL_31:
          v83 = v82;

          outlined destroy of DOCSmartFolderInputFile(v24);
          outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMd, &_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMR);
          return v83;
        }

LABEL_38:
        v82 = MEMORY[0x24C1FC540](0, v38);
        goto LABEL_31;
      }
    }

    else
    {
      result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_28;
      }
    }

    outlined destroy of DOCSmartFolderInputFile(v24);
    v79 = v36;
    goto LABEL_34;
  }

  outlined destroy of CharacterSet?(v36, &_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMd, &_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMR);
  v79 = v31;
LABEL_34:
  outlined destroy of CharacterSet?(v79, &_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMd, &_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMR);
  return 0;
}

void DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)(uint64_t a1, void *a2, void *a3, void **a4, void *a5, unint64_t a6, int a7, void (*a8)(uint64_t, __n128), uint64_t a9)
{
  v108 = a8;
  LODWORD(v126) = a7;
  v124 = a4;
  v125 = a6;
  v129 = a5;
  v107 = type metadata accessor for DispatchTime();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v13);
  v104 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v105 = &v101 - v17;
  v121 = type metadata accessor for DispatchWorkItemFlags();
  v128 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v18);
  v116 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for DispatchQoS();
  v127 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v20);
  v117 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DispatchQoS.QoSClass();
  v22 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v23);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_opt_self() sharedManager];
  v27 = [v26 favoritedLocations];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = swift_allocObject();
  v130 = v9;
  *(v29 + 16) = v9;
  *(v29 + 24) = a1;
  v30 = a2;
  v31 = a1;
  *(v29 + 32) = v30;
  *(v29 + 40) = a3;
  v32 = v124;
  *(v29 + 48) = v124;
  v33 = v125;
  *(v29 + 56) = v129;
  *(v29 + 64) = v33;
  *(v29 + 72) = v28;
  v34 = v126;
  *(v29 + 80) = v126;
  *(v29 + 88) = v108;
  *(v29 + 96) = a9;
  v109 = a9;
  if (v34)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v35 = v131;
    (*(v22 + 104))(v25, *MEMORY[0x277D851C8], v131);
    v36 = v33;
    v37 = v32;
    v38 = a3;

    v39 = v130;

    v40 = static OS_dispatch_queue.global(qos:)();
    (*(v22 + 8))(v25, v35);
    v41 = swift_allocObject();
    *(v41 + 16) = partial apply for closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:);
    *(v41 + 24) = v29;
    v137 = partial apply for thunk for @callee_guaranteed () -> ();
    v138 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v134 = 1107296256;
    v135 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v136 = &block_descriptor_25_0;
    v42 = _Block_copy(&aBlock);

    v43 = v117;
    static DispatchQoS.unspecified.getter();
    v132 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v44 = v116;
    v45 = v121;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v43, v44, v42);
    _Block_release(v42);

    (*(v128 + 8))(v44, v45);
    (*(v127 + 8))(v43, v120);
LABEL_26:

    return;
  }

  v126 = v22;
  v115 = v25;
  v46 = v33;
  v47 = v33;
  v48 = v32;
  v49 = a3;

  v50 = v130;

  v51 = v129;
  v129 = v50;
  v130 = v30;
  DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:)(v31, v30, v49, v48, v51, v46, v28);
  v53 = v52;
  v119 = dispatch_group_create();
  v54 = swift_allocObject();
  v55 = v53;
  v118 = v54;
  *(v54 + 16) = MEMORY[0x277D84F98];
  v102 = (v54 + 16);
  v56 = v31;
  v103 = v28;
  if (v53 >> 62)
  {
    v57 = __CocoaSet.count.getter();
    v55 = v53;
  }

  else
  {
    v57 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v121;
  v59 = v120;
  if (!v57)
  {
LABEL_22:
    v94 = v55;
    v95 = v104;
    static DispatchTime.now()();
    v96 = v105;
    + infix(_:_:)();
    v97 = *(v106 + 8);
    v98 = v107;
    v97(v95, v107);
    v99 = v119;
    MEMORY[0x24C1FB8F0](v96);
    v97(v96, v98);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v100 = specialized Sequence.compactMap<A>(_:)(v94, v102);

      (v108)(v100);
    }

    else
    {

      (v108)(MEMORY[0x277D84F90]);
    }

    goto LABEL_26;
  }

  if (v57 >= 1)
  {
    v60 = 0;
    v125 = v55 & 0xC000000000000001;
    v123 = *MEMORY[0x277D060D8];
    v124 = &v135;
    v114 = (v126 + 104);
    v113 = (v126 + 8);
    v112 = *MEMORY[0x277D851A8];
    v111 = (v128 + 8);
    v110 = (v127 + 8);
    v127 = v31;
    v128 = v29;
    v126 = v55;
    v122 = v57;
    while (1)
    {
      if (v125)
      {
        v72 = MEMORY[0x24C1FC540](v60);
      }

      else
      {
        v72 = *(v55 + 8 * v60 + 32);
      }

      v73 = v72;
      v74 = v131;
      v75 = [v72 providerID];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      if (v76 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
      {

        if (FPIsCloudDocsWithFPFSEnabled())
        {
          goto LABEL_21;
        }
      }

      else
      {
        v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v81 & 1) != 0 && FPIsCloudDocsWithFPFSEnabled())
        {
LABEL_21:
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v82 = v115;
          (*v114)(v115, v112, v74);
          v83 = static OS_dispatch_queue.global(qos:)();
          (*v113)(v82, v74);
          v84 = swift_allocObject();
          v86 = v129;
          v85 = v130;
          v84[2] = v129;
          v84[3] = v73;
          v84[4] = v56;
          v84[5] = v85;
          v137 = partial apply for closure #1 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:);
          v138 = v84;
          aBlock = MEMORY[0x277D85DD0];
          v134 = 1107296256;
          v135 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v136 = &block_descriptor_19_5;
          v87 = _Block_copy(&aBlock);

          v88 = v86;
          v89 = v73;
          v90 = v117;
          static DispatchQoS.unspecified.getter();
          v132 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v91 = v59;
          v92 = v116;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x24C1FB9A0](0, v90, v92, v87);
          _Block_release(v87);

          v93 = v92;
          v59 = v91;
          (*v111)(v93, v58);
          (*v110)(v90, v91);

          goto LABEL_9;
        }
      }

      v61 = v119;
      dispatch_group_enter(v119);
      v62 = [objc_opt_self() defaultManager];
      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v64 = swift_allocObject();
      v65 = v118;
      v64[2] = v61;
      v64[3] = v65;
      v64[4] = v63;
      v64[5] = v73;
      v64[6] = v56;
      v64[7] = v130;

      v66 = v73;
      v67 = v61;

      v68 = [v66 itemID];
      v69 = swift_allocObject();
      v69[2] = v66;
      v69[3] = partial apply for closure #2 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:);
      v69[4] = v64;
      v137 = partial apply for closure #1 in FPItemManager.doc_refetchItem(_:completion:);
      v138 = v69;
      aBlock = MEMORY[0x277D85DD0];
      v134 = 1107296256;
      v135 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v136 = &block_descriptor_56;
      v70 = _Block_copy(&aBlock);
      v71 = v66;

      v58 = v121;

      [v62 fetchItemForItemID:v68 completionHandler:v70];
      v59 = v120;
      _Block_release(v70);

LABEL_9:
      ++v60;
      v56 = v127;
      v55 = v126;
      if (v122 == v60)
      {
        goto LABEL_22;
      }
    }
  }

  __break(1u);
}

void closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, void *a6, void *a7, unint64_t a8, char a9, void (*a10)(uint64_t), uint64_t a11)
{
  v88 = type metadata accessor for DispatchTime();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v19);
  v85 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v86 = &v84 - v23;
  v102 = type metadata accessor for DispatchWorkItemFlags();
  v90 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v24);
  v100 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for DispatchQoS();
  v89 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v26);
  v99 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchQoS.QoSClass();
  v28 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v29);
  v97 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a1;
  v110 = a2;
  DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:)(a2, a3, a4, a5, a6, a7, a8);
  v32 = v31;
  v33 = dispatch_group_create();
  v34 = swift_allocObject();
  v35 = v32;
  v103 = v34;
  *(v34 + 16) = MEMORY[0x277D84F98];
  v84 = (v34 + 16);
  if (v32 >> 62)
  {
    v36 = __CocoaSet.count.getter();
    v35 = v32;
    if (v36)
    {
      goto LABEL_3;
    }

LABEL_20:
    v71 = v35;
    if (a9)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v72 = static OS_dispatch_queue.main.getter();
      v73 = swift_allocObject();
      v73[2] = a10;
      v73[3] = a11;
      v74 = v103;
      v73[4] = v71;
      v73[5] = v74;
      v116 = partial apply for closure #3 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:);
      v117 = v73;
      aBlock = MEMORY[0x277D85DD0];
      v113 = 1107296256;
      v114 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v115 = &block_descriptor_44_3;
      v75 = _Block_copy(&aBlock);

      v76 = v99;
      static DispatchQoS.unspecified.getter();
      v111 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v77 = v100;
      v78 = v102;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v75);

      (*(v90 + 8))(v77, v78);
      (*(v89 + 8))(v76, v101);
    }

    else
    {
      v79 = v85;
      static DispatchTime.now()();
      v80 = v86;
      + infix(_:_:)();
      v81 = *(v87 + 8);
      v82 = v88;
      v81(v79, v88);
      MEMORY[0x24C1FB8F0](v80);
      v81(v80, v82);
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        v83 = specialized Sequence.compactMap<A>(_:)(v71, v84);

        a10(v83);
      }

      else
      {

        a10(MEMORY[0x277D84F90]);
      }
    }

    return;
  }

  v36 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v36 >= 1)
  {
    v37 = 0;
    v105 = &v114;
    v106 = v35 & 0xC000000000000001;
    v104 = *MEMORY[0x277D060D8];
    v95 = (v28 + 104);
    v94 = (v28 + 8);
    v93 = *MEMORY[0x277D851A8];
    v92 = (v90 + 8);
    v91 = (v89 + 8);
    v108 = v35;
    v96 = a3;
    v107 = v36;
    while (1)
    {
      if (v106)
      {
        v48 = MEMORY[0x24C1FC540](v37);
      }

      else
      {
        v48 = *(v35 + 8 * v37 + 32);
      }

      v49 = v48;
      v50 = [v48 providerID];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      if (v51 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
      {

        if (FPIsCloudDocsWithFPFSEnabled())
        {
          goto LABEL_18;
        }
      }

      else
      {
        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v56 & 1) != 0 && FPIsCloudDocsWithFPFSEnabled())
        {
LABEL_18:
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v57 = v97;
          v58 = v98;
          (*v95)(v97, v93, v98);
          v59 = static OS_dispatch_queue.global(qos:)();
          (*v94)(v57, v58);
          v60 = swift_allocObject();
          v62 = v109;
          v61 = v110;
          v60[2] = v109;
          v60[3] = v49;
          v60[4] = v61;
          v60[5] = a3;
          v116 = closure #1 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)partial apply;
          v117 = v60;
          aBlock = MEMORY[0x277D85DD0];
          v113 = 1107296256;
          v114 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v115 = &block_descriptor_51_1;
          v63 = _Block_copy(&aBlock);
          v64 = v62;
          v65 = v49;

          v66 = v33;
          v67 = v99;
          static DispatchQoS.unspecified.getter();
          v111 = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v68 = v100;
          v69 = v102;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          MEMORY[0x24C1FB9A0](0, v67, v68, v63);
          _Block_release(v63);

          (*v92)(v68, v69);
          v70 = v67;
          v33 = v66;
          a3 = v96;
          (*v91)(v70, v101);

          goto LABEL_6;
        }
      }

      dispatch_group_enter(v33);
      v38 = [objc_opt_self() defaultManager];
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      v41 = v103;
      v40[2] = v33;
      v40[3] = v41;
      v40[4] = v39;
      v40[5] = v49;
      v40[6] = v110;
      v40[7] = a3;
      v42 = v49;

      v43 = v33;

      v44 = [v42 itemID];
      v45 = swift_allocObject();
      v45[2] = v42;
      v45[3] = closure #2 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)partial apply;
      v45[4] = v40;
      v116 = closure #1 in FPItemManager.doc_refetchItem(_:completion:)partial apply;
      v117 = v45;
      aBlock = MEMORY[0x277D85DD0];
      v113 = 1107296256;
      v114 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
      v115 = &block_descriptor_38_3;
      v46 = _Block_copy(&aBlock);
      v47 = v42;

      [v38 fetchItemForItemID:v44 completionHandler:v46];
      _Block_release(v46);

LABEL_6:
      ++v37;
      v35 = v108;
      if (v107 == v37)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
}

void closure #2 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)(void *a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    goto LABEL_4;
  }

  v13 = a1;
  if ([v13 isTrashed])
  {

LABEL_4:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_15:
      dispatch_group_leave(a3);
      return;
    }

    v13 = Strong;
    DOCSmartFolderManager.delete(hotFolder:for:)(a6, a7, a8, v15);
LABEL_14:

    goto LABEL_15;
  }

  v16 = [v13 itemID];
  swift_beginAccess();
  v17 = *(a4 + 16);
  if ((v17 & 0xC000000000000001) == 0)
  {
    v21 = v13;
    goto LABEL_13;
  }

  if (v17 < 0)
  {
    v18 = *(a4 + 16);
  }

  else
  {
    v18 = v17 & 0xFFFFFFFFFFFFFF8;
  }

  v19 = v13;
  v20 = __CocoaSet.count.getter();
  if (!__OFADD__(v20, 1))
  {
    *(a4 + 16) = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8FPItemIDC_So0E0CTt1g5(v18, v20 + 1);
LABEL_13:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(a4 + 16);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v16, isUniquelyReferenced_nonNull_native);
    *(a4 + 16) = v23;

    swift_endAccess();
    goto LABEL_14;
  }

  __break(1u);
}

double partial apply for closure #1 in closure #1 in DOCSmartFolderManager._unvalidatedSuggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:excludedItems:)@<D0>(double *a1@<X0>, void **a2@<X1>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v5 frecencyScoreAtDate_];
  v8 = v7;

  result = v4 + v8;
  *a3 = v4 + v8;
  return result;
}

uint64_t objectdestroy_9Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

double partial apply for closure #3 in closure #1 in DOCSmartFolderManager.suggestedFoldersList(for:configuration:managedPermission:maxNumberOfItems:pickerContext:async:completion:)()
{
  v1 = v0[2];
  specialized Sequence.compactMap<A>(_:)(v0[4], (v0[5] + 16));
  v1();

  return result;
}

uint64_t objectdestroy_15Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t outlined init with copy of DOCSmartFolderInputFile?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMd, &_s26DocumentManagerExecutables23DOCSmartFolderInputFileVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void DOCSidebarHeaderCell.title.setter(void *a1, uint64_t isEscapingClosureAtFileLocation)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v37 = isEscapingClosureAtFileLocation;
  v15 = &selRef_setNavigationTitleForTagListInInfoPanel_;
  v16 = [v2 window];
  if (!v16)
  {
    goto LABEL_5;
  }

  v10 = &v33;
  MEMORY[0x28223BE20](v18, v19);
  v20 = &v33 - 6;
  *(&v33 - 4) = partial apply for closure #1 in DOCSidebarHeaderCell.title.setter;
  *(&v33 - 3) = v35;
  *(&v33 - 2) = v2;
  while (1)
  {
    a1 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for specialized closure #1 in DOCSidebarCell.updateContentBindings(_:);
    *(v9 + 24) = v20;
    v14 = swift_allocObject();
    *(v14 + 2) = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    *(v14 + 3) = v9;
    aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v39 = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_57;
    v21 = _Block_copy(aBlock);
    v15 = v39;

    [a1 performWithoutAnimation_];

    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v34 = &v33;
    v22 = MEMORY[0x28223BE20](v16, v17);
    v20 = &v33 - 6;
    *(&v33 - 4) = partial apply for closure #1 in DOCSidebarHeaderCell.title.setter;
    *(&v33 - 3) = v35;
    *(&v33 - 2) = v2;
    v23 = [v2 v15[365]];
    if (v23)
    {

      v24 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x68));
      swift_beginAccess();
      *v24 = a1;
      v24[1] = isEscapingClosureAtFileLocation;

      v25 = [v2 _bridgedConfigurationState];
      static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

      specialized DOCSidebarCell.reloadContentViewConfiguration(with:)(v14);

      (v10[1])(v14, v9);
      break;
    }

    v10 = v34;
  }

  [objc_opt_self() sidebar];
  swift_getObjCClassMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  specialized DOCSidebarCell.content.getter(v8);
  v27 = &v8[*(v5 + 40)];
  v28 = *v27;
  v29 = v27[1];

  outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v8);
  v30 = MEMORY[0x24C1FAD20](v28, v29);

  v31 = [ObjCClassFromMetadata headerWithTitle_];

  if (!v31)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = MEMORY[0x24C1FAD20](v32);
  }

  [v2 setAccessibilityIdentifier_];
}

void DOCSidebarHeaderContentValueBinding.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t static DOCSidebarHeaderContentValueBinding.configuration(for:)()
{
  v0 = UICellConfigurationState.traitCollection.getter();
  v1 = [v0 sourceOutlineStyle];

  if (v1 == 1)
  {

    return static UIListContentConfiguration.prominentInsetGroupedHeader()();
  }

  else
  {

    return static UIListContentConfiguration.header()();
  }
}

DocumentManagerExecutables::DOCSidebarHeaderContentValueBinding __swiftcall DOCSidebarHeaderContentValueBinding.init()()
{
  v0 = 0;
  v1 = 0xE000000000000000;
  result.title._object = v1;
  result.title._countAndFlagsBits = v0;
  return result;
}

uint64_t protocol witness for static DOCCellContentConfigurationBindings.configuration(for:) in conformance DOCSidebarHeaderContentValueBinding()
{
  v0 = UICellConfigurationState.traitCollection.getter();
  v1 = [v0 sourceOutlineStyle];

  if (v1 == 1)
  {

    return static UIListContentConfiguration.prominentInsetGroupedHeader()();
  }

  else
  {

    return static UIListContentConfiguration.header()();
  }
}

double DOCSidebarHeaderCell.updateAccessoryItems(with:)()
{
  specialized static DOCSidebarCellAccessoryItem.outlineDisclosure.getter();
  specialized DOCSidebarCell.addAccessoryItem(_:)();

  return result;
}

uint64_t DOCSidebarHeaderCell.title.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  specialized DOCSidebarCell.content.getter(&v7 - v3);
  v5 = *&v4[*(v1 + 48)];

  outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v4);
  return v5;
}

uint64_t key path getter for DOCSidebarHeaderCell.title : DOCSidebarHeaderCell@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - v5;
  specialized DOCSidebarCell.content.getter(&v11 - v5);
  v7 = &v6[*(v3 + 48)];
  v9 = *v7;
  v8 = *(v7 + 1);

  result = outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v6);
  *a1 = v9;
  a1[1] = v8;
  return result;
}

void (*DOCSidebarHeaderCell.title.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = v4;
  a1[3] = v4;
  specialized DOCSidebarCell.content.getter(v4);
  v6 = (v5 + *(v3 + 40));
  v8 = *v6;
  v7 = v6[1];

  outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v5);
  *a1 = v8;
  a1[1] = v7;
  return DOCSidebarHeaderCell.title.modify;
}

void DOCSidebarHeaderCell.title.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 24);
  if (a2)
  {

    DOCSidebarHeaderCell.title.setter(v3, v2);
  }

  else
  {
    DOCSidebarHeaderCell.title.setter(*a1, v2);
  }

  free(v4);
}

id @objc DOCSidebarHeaderCell.accessibilityTitle.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - v5;
  v7 = a1;
  specialized DOCSidebarCell.content.getter(v6);

  v8 = &v6[*(v3 + 48)];
  v9 = *v8;
  v10 = v8[1];

  outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v6);
  v11 = MEMORY[0x24C1FAD20](v9, v10);

  return v11;
}

uint64_t DOCSidebarHeaderCell.accessibilityTitle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  specialized DOCSidebarCell.content.getter(&v7 - v3);
  v5 = *&v4[*(v1 + 48)];

  outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(v4);
  return v5;
}

id DOCSidebarHeaderCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCSidebarHeaderCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id @objc DOCSidebarHeaderCell.init(frame:)(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id DOCSidebarHeaderCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void partial apply for closure #1 in DOCSidebarHeaderCell.title.setter(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

uint64_t outlined destroy of DOCSidebarCell<DOCSidebarHeaderContentValueBinding>.Content(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarCellC7ContentVyAA0d6HeaderF12ValueBindingV_GMd, "vP\t");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DOCSidebarHeaderCell(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCSidebarHeaderCell;
  if (!type metadata singleton initialization cache for DOCSidebarHeaderCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7[3] = swift_getObjectType();
  v7[0] = a3;

  swift_unknownObjectRetain();
  v4(v5, v7);

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void closure #1 in static UIDocumentBrowserAction.trashAction()(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCOperationItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = (v24 - v11);
  outlined init with copy of Any(a2, v25);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v13 = v24[1];
    if (a1 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v25[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return;
      }

      v24[0] = v13;
      v15 = v25[0];
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v14; ++i)
        {
          *v12 = MEMORY[0x24C1FC540](i, a1);
          swift_storeEnumTagMultiPayload();
          v25[0] = v15;
          v18 = *(v15 + 16);
          v17 = *(v15 + 24);
          if (v18 >= v17 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
            v15 = v25[0];
          }

          *(v15 + 16) = v18 + 1;
          outlined init with take of DOCOperationItem(v12, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18);
        }
      }

      else
      {
        v19 = (a1 + 32);
        do
        {
          *v8 = *v19;
          swift_storeEnumTagMultiPayload();
          v25[0] = v15;
          v20 = *(v15 + 16);
          v21 = *(v15 + 24);
          swift_unknownObjectRetain();
          if (v20 >= v21 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
            v15 = v25[0];
          }

          *(v15 + 16) = v20 + 1;
          outlined init with take of DOCOperationItem(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20);
          ++v19;
          --v14;
        }

        while (v14);
      }

      v13 = v24[0];
    }

    v22 = [objc_opt_self() defaultManager];
    v23 = *&v13[OBJC_IVAR___DOCActionContext_presentingViewController];
    FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(3u, v15, 0, 0, 0, 1, v23, 0, 0);

    if (one-time initialization token for sharedManager != -1)
    {
      swift_once();
    }

    (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
  }
}

void closure #1 in static UIDocumentBrowserAction.untrashAction()(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCOperationItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = (v29 - v11);
  outlined init with copy of Any(a2, v30);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v13 = v29[1];
    if (a1 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v30[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return;
      }

      v29[0] = v13;
      v15 = v30[0];
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v14; ++i)
        {
          *v12 = MEMORY[0x24C1FC540](i, a1);
          swift_storeEnumTagMultiPayload();
          v30[0] = v15;
          v18 = *(v15 + 16);
          v17 = *(v15 + 24);
          if (v18 >= v17 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
            v15 = v30[0];
          }

          *(v15 + 16) = v18 + 1;
          outlined init with take of DOCOperationItem(v12, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18);
        }
      }

      else
      {
        v19 = (a1 + 32);
        do
        {
          *v8 = *v19;
          swift_storeEnumTagMultiPayload();
          v30[0] = v15;
          v20 = *(v15 + 16);
          v21 = *(v15 + 24);
          swift_unknownObjectRetain();
          if (v20 >= v21 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
            v15 = v30[0];
          }

          *(v15 + 16) = v20 + 1;
          outlined init with take of DOCOperationItem(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20);
          ++v19;
          --v14;
        }

        while (v14);
      }

      v13 = v29[0];
    }

    v22 = OBJC_IVAR___DOCActionContext_presentingViewController;
    v23 = *&v13[OBJC_IVAR___DOCActionContext_presentingViewController];
    type metadata accessor for DOCItemCollectionViewController(0);
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
LABEL_20:
      v27 = [objc_opt_self() defaultManager];
      FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, v15, 0, 0, 0, 1, *&v13[v22], 0, 0);

      return;
    }

    v25 = v24;
    v26 = v23;
    if ([v25 isEditing])
    {

      goto LABEL_20;
    }

    v28 = v13;
    specialized DOCItemCollectionViewController.focusNextItemAndThen(_:)(v25, v15, v28);

    swift_bridgeObjectRelease_n();
  }
}

void untrashItems #1 () in closure #1 in static UIDocumentBrowserAction.untrashAction()(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, a1, 0, 0, 0, 1, *(a2 + OBJC_IVAR___DOCActionContext_presentingViewController), 0, 0);
}

void closure #1 in static UIDocumentBrowserAction.untrashAllAction()(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCOperationItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = (v24 - v11);
  outlined init with copy of Any(a2, v25);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v13 = v24[1];
    if (a1 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v25[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return;
      }

      v24[0] = v13;
      v15 = v25[0];
      if ((a1 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v14; ++i)
        {
          *v12 = MEMORY[0x24C1FC540](i, a1);
          swift_storeEnumTagMultiPayload();
          v25[0] = v15;
          v18 = *(v15 + 16);
          v17 = *(v15 + 24);
          if (v18 >= v17 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
            v15 = v25[0];
          }

          *(v15 + 16) = v18 + 1;
          outlined init with take of DOCOperationItem(v12, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18);
        }
      }

      else
      {
        v19 = (a1 + 32);
        do
        {
          *v8 = *v19;
          swift_storeEnumTagMultiPayload();
          v25[0] = v15;
          v20 = *(v15 + 16);
          v21 = *(v15 + 24);
          swift_unknownObjectRetain();
          if (v20 >= v21 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1);
            v15 = v25[0];
          }

          *(v15 + 16) = v20 + 1;
          outlined init with take of DOCOperationItem(v8, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20);
          ++v19;
          --v14;
        }

        while (v14);
      }

      v13 = v24[0];
    }

    v22 = [objc_opt_self() defaultManager];
    v23 = *&v13[OBJC_IVAR___DOCActionContext_presentingViewController];
    FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(4u, v15, 0, 0, 0, 1, v23, 0, 0);
  }
}

void closure #1 in static UIDocumentBrowserAction.renameAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, &aBlock);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v3 = v36;
    if (a1 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_32:
          swift_once();
LABEL_26:
          v26 = static DOCLog.UI;
          v27 = static os_log_type_t.debug.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_249B9A480;
          *(v28 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
          *(v28 + 64) = lazy protocol witness table accessor for type FPItem and conformance NSObject();
          *(v28 + 32) = a1;
          v29 = a1;
          os_log(_:dso:log:type:_:)("Rename: Unable to get cell for item: %@", 39, 2, &dword_2493AC000, v26, v27, v28);

          return;
        }

        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      a1 = DOCNode.fpfs_syncFetchFPItem()();
      swift_unknownObjectRelease();
      if (a1)
      {
        v4 = *&v3[OBJC_IVAR___DOCActionContext_actionReporting];
        if (v4)
        {
          v5 = *&v3[OBJC_IVAR___DOCActionContext_presentingViewController];
          type metadata accessor for DOCItemCollectionViewController(0);
          v6 = swift_dynamicCastClass();
          if (v6)
          {
            v7 = *((*MEMORY[0x277D85000] & *v6) + 0xA68);
            swift_unknownObjectRetain();
            v8 = v5;
            v9 = v7();

            v10 = [v9 identifier];
            v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v12;
            if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
            {

              goto LABEL_21;
            }

            v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v16)
            {
LABEL_21:
              v21 = *&v3[OBJC_IVAR___DOCActionContext_transitionProxy];
              if (v21)
              {
                v22 = swift_allocObject();
                *(v22 + 16) = v3;
                *(v22 + 24) = a1;
                v34 = partial apply for closure #1 in closure #1 in static UIDocumentBrowserAction.renameAction();
                v35 = v22;
                aBlock = MEMORY[0x277D85DD0];
                v31 = 1107296256;
                v32 = thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ();
                v33 = &block_descriptor_495;
                v23 = _Block_copy(&aBlock);
                v24 = a1;
                v25 = v3;

                [v21 getCellFor:v24 :v23];

                swift_unknownObjectRelease();
                _Block_release(v23);

                return;
              }

              goto LABEL_23;
            }
          }

          else
          {
            swift_unknownObjectRetain();
          }

          [v4 beginRenameOf_];
LABEL_23:

          goto LABEL_24;
        }

        v17 = *&v3[OBJC_IVAR___DOCActionContext_transitionProxy];
        if (v17)
        {
          v18 = swift_allocObject();
          *(v18 + 16) = a1;
          *(v18 + 24) = v3;
          v34 = partial apply for closure #2 in closure #1 in static UIDocumentBrowserAction.renameAction();
          v35 = v18;
          aBlock = MEMORY[0x277D85DD0];
          v31 = 1107296256;
          v32 = thunk for @escaping @callee_guaranteed (@guaranteed DOCItemCollectionCell?) -> ();
          v33 = &block_descriptor_489;
          v19 = _Block_copy(&aBlock);
          a1 = a1;
          v20 = v3;
          swift_unknownObjectRetain();

          [v17 getCellFor:a1 :v19];

          _Block_release(v19);
LABEL_24:
          swift_unknownObjectRelease();

          return;
        }

        if (one-time initialization token for UI == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }
  }
}

void *closure #1 in closure #1 in static UIDocumentBrowserAction.renameAction()(void *result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(a2 + OBJC_IVAR___DOCActionContext_presentingViewController);
    type metadata accessor for DOCItemCollectionViewController(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = result;
      type metadata accessor for DOCInlineRenameController();
      v7 = swift_allocObject();
      v8 = v5;
      v9 = a3;
      v10 = v4;
      v11 = specialized DOCInlineRenameController.init(delegate:cell:node:)(v6, v10, v9, v7);

      v12 = MEMORY[0x277D85000];
      v13 = *((*MEMORY[0x277D85000] & *v6) + 0x14A0);

      v13(v14);
      v15 = *((*v12 & *v6) + 0x8D8);

      v17 = v15(v16);
      if (v17)
      {

        v18 = *((*v12 & *v6) + 0x910);

        v18(partial apply for closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.renameAction(), v11);
      }

      else
      {
        (*(*v11 + 432))();
      }
    }
  }

  return result;
}

void closure #2 in closure #1 in static UIDocumentBrowserAction.renameAction()(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = MEMORY[0x277D85000];
    v6 = *((*MEMORY[0x277D85000] & *a1) + 0x208);
    v7 = a1;
    v8 = v6();
    if (v8)
    {
      v9 = v8;
      v10 = (*((*v5 & *v8) + 0xA80))();
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a3 + OBJC_IVAR___DOCActionContext_transitionProxy);
    v12 = objc_allocWithZone(type metadata accessor for DOCRenameViewController());
    swift_unknownObjectRetain();
    v13 = a2;
    swift_unknownObjectRetain();
    v14 = specialized DOCRenameViewController.init(renamingItem:transitionProxy:initialThumbnail:)(v13, v11, v10);

    swift_unknownObjectRelease();
    (*((*v5 & *v14) + 0xE0))(*(a3 + OBJC_IVAR___DOCActionContext_presentingViewController), 1);

    swift_unknownObjectRelease();
  }
}

id static UIDocumentBrowserAction.openWithAppAction(node:)()
{
  if (one-time initialization token for openWithMenuTitle != -1)
  {
    swift_once();
  }

  v0 = static DOCOpenWithMenuController.openWithMenuTitle;
  v1 = *MEMORY[0x277D06008];
  v2 = objc_allocWithZone(MEMORY[0x277D05F28]);
  v3 = v1;
  v4 = MEMORY[0x24C1FAD20](v0, *(&v0 + 1));
  v14 = DOCGridLayout.specIconWidth.modify;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
  v13 = &block_descriptor_58;
  v5 = _Block_copy(&v10);
  v6 = [v2 initWithIdentifier:v3 localizedTitle:v4 unresolvedHandler:v5];

  _Block_release(v5);

  [v6 setMenuSortOrder_];
  if (one-time initialization token for openWithMenuImage != -1)
  {
    swift_once();
  }

  [v6 setImage_];
  [v6 setSupportsMultipleItems_];
  [v6 setAvailability_];
  v14 = specialized closure #1 in static NSPredicate.validateAction(_:);
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
  v13 = &block_descriptor_3_2;
  v7 = _Block_copy(&v10);
  v8 = [objc_opt_self() predicateWithBlock_];
  _Block_release(v7);

  [v6 setFilteringPredicate_];

  return v6;
}

void closure #2 in static UIDocumentBrowserAction.openWithAppAction(node:)(unint64_t a1)
{
  v2 = [objc_opt_self() contextMenuShowsOpenWithApp];
  v3 = [v2 isEnabled];

  if (v3)
  {
    if (a1 >> 62)
    {
LABEL_19:
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        return;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C1FC540](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    if (([v5 isFolder] & 1) == 0)
    {
      v6 = 0;
      while (v4 != v6)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C1FC540](v6, a1);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v7 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          if (__OFADD__(v6, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }
        }

        v8 = [v7 isInTrash];
        swift_unknownObjectRelease();
        ++v6;
        if ((v8 & 1) == 0)
        {
          break;
        }
      }
    }

    swift_unknownObjectRelease();
  }
}

void closure #1 in static UIDocumentBrowserAction.moveAction(numberOfItems:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a2, v21);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v8 = v20;
    [*&v20[OBJC_IVAR___DOCActionContext_configuration] copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConfiguration, 0x277D061E8);
    swift_dynamicCast();
    v9 = v20;
    [v20 setInteractionMode_];
    [v9 setForPickingDocuments_];
    UUID.init()();
    v10 = UUID.uuidString.getter();
    v12 = v11;
    (*(v4 + 8))(v7, v3);
    v13 = MEMORY[0x24C1FAD20](v10, v12);

    [v9 setSceneIdentifier_];

    [v9 setForMovingDocuments_];
    v14 = objc_allocWithZone(DOCPickerContext);
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v17 = [v14 initWithNodes_];

    v18 = [objc_allocWithZone(DOCDocumentPickerViewController) initWithConfiguration:v15 context:v17];
    [*&v8[OBJC_IVAR___DOCActionContext_presentingViewController] presentViewController:v18 animated:1 completion:0];
  }
}

void closure #1 in static UIDocumentBrowserAction.moveActionTo(parent:)(unint64_t a1, uint64_t a2, void *a3)
{
  v55 = type metadata accessor for Date();
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v7);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DOCSmartFolderInputFile(0);
  MEMORY[0x28223BE20](v54, v9);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Any(a2, &v57);
  type metadata accessor for DOCActionContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v12 = v56;
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
  if (!All)
  {

    return;
  }

  v14 = All;
  [*&v12[OBJC_IVAR___DOCActionContext_configuration] copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConfiguration, 0x277D061E8);
  swift_dynamicCast();
  v15 = v56;
  ObjectType = swift_getObjectType();
  v52 = [a3 fpfs_fpItem];
  if (!v52)
  {

LABEL_26:

    return;
  }

  v50 = v6;

  if (v14 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    v17 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v17 = v14;
  }

  v18 = [objc_opt_self() shared];
  v19 = specialized makeDOCMoveOperation(nodes:destinationFolder:undoManager:)(v17, a3, v18, ObjectType);
  v21 = v20;

  if (!v19)
  {

    v44 = v52;
LABEL_23:

    return;
  }

  v22 = [objc_opt_self() defaultManager];
  v23 = swift_getObjectType();
  v47 = v19;
  v24 = v23;
  v25 = *(v21 + 8);
  swift_unknownObjectRetain();
  specialized FPItemManager.scheduleOperation(_:)(v47, v24, v25);

  swift_unknownObjectRelease();
  if (v14 >> 62)
  {
    v26 = __CocoaSet.count.getter();
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_25:

    swift_unknownObjectRelease();
    goto LABEL_26;
  }

LABEL_9:
  v51 = v15;
  v46 = v12;
  if (v26 >= 1)
  {
    v27 = 0;
    v48 = (v50 + 8);
    v49 = v14 & 0xC000000000000001;
    v50 = v14;
    do
    {
      if (v49)
      {
        v34 = MEMORY[0x24C1FC540](v27, v14);
      }

      else
      {
        v34 = *(v14 + 8 * v27 + 32);
      }

      v35 = v34;
      v36 = [v34 displayName];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = [v35 contentType];
      static UTType._unconditionallyBridgeFromObjectiveC(_:)();

      Date.init()();
      *v11 = v37;
      v11[1] = v39;
      if (one-time initialization token for sharedManager != -1)
      {
        swift_once();
      }

      v41 = v52;
      (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA8))(v11, v52);
      v42 = [v51 hostIdentifier];
      if (!v42)
      {
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = MEMORY[0x24C1FAD20](v43);
      }

      ++v27;
      v28 = v41;
      v29 = v53;
      Date.init()();
      v30 = objc_allocWithZone(MEMORY[0x277D05ED0]);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v32 = [v30 initWithAppBundleIdentifier:v42 folderItem:v28 type:1 lastUsedDate:isa frecency:1.0];

      v33 = (*v48)(v29, v55);
      DOCSmartFolderManager.register(event:)(v32, v33);

      outlined destroy of NSURLResourceKey(v11, type metadata accessor for DOCSmartFolderInputFile);
      v14 = v50;
    }

    while (v26 != v27);

    swift_unknownObjectRelease();

    v44 = v51;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t closure #2 in static UIDocumentBrowserAction.moveActionTo(parent:)(unint64_t a1, void *a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_42:
    if (__CocoaSet.count.getter() < 1)
    {
      return 0;
    }

    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return 0;
    }
  }

  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  while (v5 != v6)
  {
    if (v7)
    {
      v8 = MEMORY[0x24C1FC540](v6, a1);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v8 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    v9 = [v8 isTrashed];
    swift_unknownObjectRelease();
    ++v6;
    if (v9)
    {
      return 0;
    }
  }

  if (v5)
  {
    v10 = 0;
    v11 = &selRef_initWithFrame_;
    v42 = v5;
    v39 = a2;
    v40 = v4;
    do
    {
      if (v7)
      {
        MEMORY[0x24C1FC540](v10, a1);
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v10 >= *(v4 + 16))
        {
          goto LABEL_41;
        }

        swift_unknownObjectRetain();
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_34:
          __break(1u);
          return 1;
        }
      }

      swift_getObjectType();
      if (DOCNode.isFINode.getter() && (swift_getObjectType(), DOCNode.isFINode.getter()))
      {
        objc_opt_self();
        v14 = [swift_dynamicCastObjCClassUnconditional() parent];
        objc_opt_self();
        swift_dynamicCastObjCClassUnconditional();
        if (!v14)
        {
          swift_unknownObjectRelease();
          return 0;
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
        swift_unknownObjectRetain();
        v5 = v42;
        v15 = static NSObject.== infix(_:_:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      else if (DOCNode.isFPItem.getter())
      {
        objc_opt_self();
        v16 = [swift_dynamicCastObjCClassUnconditional() parentItemID];
        v17 = [v16 v11[249]];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v43 = v18;
        v45 = v20;
        MEMORY[0x24C1FAEA0](3112028, 0xE300000000000000);
        v21 = [v16 identifier];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        MEMORY[0x24C1FAEA0](v22, v24);

        v25 = v45;
        v26 = [a2 fpfs_fpItem];
        if (v26)
        {
          v27 = v26;
          v41 = v43;
          v28 = [v26 itemID];

          v29 = [v28 v11[249]];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          v44 = v30;
          v46 = v32;
          MEMORY[0x24C1FAEA0](3112028, 0xE300000000000000);
          v33 = [v28 identifier];
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v35;

          MEMORY[0x24C1FAEA0](v34, v36);

          if (v41 == v44 && v25 == v46)
          {
            swift_unknownObjectRelease();

            return 0;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
          swift_unknownObjectRelease();

          a2 = v39;
          v4 = v40;
          v5 = v42;
          if (v37)
          {
            return 0;
          }
        }

        else
        {
          swift_unknownObjectRelease();

          v4 = v40;
          v5 = v42;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v10;
      v12 = v13 == v5;
      v7 = a1 & 0xC000000000000001;
      v11 = &selRef_initWithFrame_;
    }

    while (!v12);
  }

  return 1;
}

uint64_t closure #2 in static UIDocumentBrowserAction.favoriteAction(useAlternateTitle:)(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_19:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1FC540](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_16:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_16;
          }
        }

        if ([v4 doc_isCollaborationInvitation])
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = [v4 fpfs_fpItem];
          v7 = [v6 favoriteRank];

          if (v7)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            v8 = [v4 isInTrash];
            swift_unknownObjectRelease();
            if ((v8 & 1) == 0)
            {
              return 1;
            }
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

void closure #1 in static UIDocumentBrowserAction.favoriteAction(useAlternateTitle:)(unint64_t a1, uint64_t a2, SEL *a3)
{
  if (a1 >> 62)
  {
    v5 = a1;
    v6 = __CocoaSet.count.getter();
    a1 = v5;
    if (!v6)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v4 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (v4)
  {
    v7 = [objc_opt_self() sharedManager];
    [v7 *a3];
  }
}

uint64_t closure #2 in static UIDocumentBrowserAction.unfavoriteAction()(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_18:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1FC540](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_15:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_15;
          }
        }

        v6 = [v4 fpfs_fpItem];
        v7 = [v6 favoriteRank];

        if (!v7 || (v7, [v4 doc_isCollaborationInvitation]))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v8 = [v4 isInTrash];
          swift_unknownObjectRelease();
          if ((v8 & 1) == 0)
          {
            return 1;
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

uint64_t itemProvidersForPasteboard #1 (nodes:) in static UIDocumentBrowserAction.copyAction(numberOfItems:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v4, a1);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        ++v4;
        v5 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
        ObjectType = swift_getObjectType();
        v7 = swift_unknownObjectRetain();
        specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(v7, 2, 1, 1, v5, ObjectType);
        swift_unknownObjectRelease_n();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v2 != v4);
      return v8;
    }
  }

  return result;
}

void closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:)(unint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS.QoSClass();
  v39 = *(v40 - 8);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v40, v8);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_21:
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v11 != v12)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C1FC540](v12, a1, v9);
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v14 = *(a1 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v17 = [v14 node];

    ++v12;
    if (v17)
    {
      MEMORY[0x24C1FB090]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = aBlock;
      v12 = v16;
    }
  }

  v18 = [objc_opt_self() defaultPermission];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v20 = [v18 dataOwnerStateForNodes_];

  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x277D84F90];
  if (v20 == 1)
  {
    v22 = 2;
  }

  else
  {
    v22 = v20 == 2;
  }

  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = v21 + 16;
  *(v24 + 24) = v13;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #2 in closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:);
  *(v25 + 24) = v24;
  v54 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v55 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = thunk for @escaping @callee_guaranteed () -> ();
  v53 = &block_descriptor_416;
  v26 = _Block_copy(&aBlock);

  [v23 _performAsDataOwner_block_];
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v28 = v39;
    v29 = v38;
    v30 = v40;
    (*(v39 + 104))(v38, *MEMORY[0x277D851C8], v40);
    v31 = static OS_dispatch_queue.global(qos:)();
    (*(v28 + 8))(v29, v30);
    outlined init with copy of DOCGridLayout.Spec?(v41, v49, &_sypSgMd, &_sypSgMR);
    v32 = swift_allocObject();
    *(v32 + 16) = v20;
    *(v32 + 24) = v21;
    v33 = v49[1];
    *(v32 + 32) = v49[0];
    *(v32 + 48) = v33;
    *(v32 + 64) = v13;
    v54 = partial apply for closure #3 in closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:);
    v55 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v53 = &block_descriptor_422;
    v34 = _Block_copy(&aBlock);

    v35 = v42;
    static DispatchQoS.unspecified.getter();
    v48 = MEMORY[0x277D84F90];
    _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v36 = v44;
    v37 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v35, v36, v34);
    _Block_release(v34);

    (*(v46 + 8))(v36, v37);
    (*(v43 + 8))(v35, v45);
  }
}

void closure #3 in closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 + 16;
  if (a1 == 1)
  {
    v6 = 2;
  }

  else
  {
    v6 = a1 == 2;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in closure #3 in closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:);
  *(v9 + 24) = v8;
  v52 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v53 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = thunk for @escaping @callee_guaranteed () -> ();
  v51 = &block_descriptor_432;
  v10 = _Block_copy(&aBlock);
  v11 = v53;

  [v7 _performAsDataOwner_block_];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_18:
    swift_once();
LABEL_15:
    specialized DOCAnalyticsManager.sendEvent(_:)(&aBlock, static DOCAnalyticsManager.shared);

    outlined destroy of DOCAnalyticsActionEvent(&aBlock);
    goto LABEL_16;
  }

  outlined init with copy of DOCGridLayout.Spec?(a3, &aBlock, &_sypSgMd, &_sypSgMR);
  if (!v51)
  {
    outlined destroy of CharacterSet?(&aBlock, &_sypSgMd, &_sypSgMR);
    goto LABEL_16;
  }

  type metadata accessor for DOCActionContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    return;
  }

  v11 = v47;
  v13 = *&v47[OBJC_IVAR___DOCActionContext_presentingViewController];
  type metadata accessor for DOCItemCollectionViewController(0);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    return;
  }

  v15 = v14;
  v16 = *&v47[OBJC_IVAR___DOCActionContext_configuration];
  v44 = v13;
  v17 = v16;

  DOCAnalyticsActionEvent.FileProvider.init(nodes:)(v18);
  v43 = v47;
  v19 = objc_opt_self();
  v20 = [v19 mainBundle];

  v21 = MEMORY[0x277D85000];
  v22 = (*((*MEMORY[0x277D85000] & *v15) + 0xA68))();
  v23 = [v22 identifier];

  v24 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v23);
  v25 = (*((*v21 & *v15) + 0xBD8))(v24);
  if (v25 < 4)
  {
    v42 = 0x3020201u >> (8 * v25);
    v26 = [v19 mainBundle];
    v27 = [v26 bundleIdentifier];

    v28 = v46[1];
    if (v27)
    {
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = v17;
    DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v32, v29, v31, &aBlock);
    v33 = aBlock;
    v34 = v32;
    DOCAnalyticsActionEvent.SortMode.init(configuration:)(v34, v46);
    v35 = v46[0];
    v36 = v34;
    DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v36, &v45);
    v37 = v45;
    v38 = [v36 hostIdentifier];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    aBlock = 0xD000000000000032;
    v49 = 0x8000000249BCDC20;
    v50 = v39;
    v51 = v41;
    LOBYTE(v52) = 0;
    BYTE1(v52) = v33;
    BYTE2(v52) = v43;
    BYTE3(v52) = v28;
    BYTE4(v52) = v42;
    BYTE5(v52) = v35;
    BYTE6(v52) = v37;
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  aBlock = v25;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

void closure #1 in closure #3 in closure #1 in static UIDocumentBrowserAction.copyAction(numberOfItems:)(uint64_t *a1)
{
  v1 = [objc_opt_self() generalPasteboard];
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSItemProvider, 0x277CCAA88);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setItemProviders_];
}

void closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Any(a2, v9);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = v8;
    if (a3)
    {
      swift_unknownObjectRetain_n();

      v6 = v8;
      closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(a3, a1, v6);
      swift_unknownObjectRelease_n();
    }

    else
    {

      v7 = v8;
      specialized static UIDocumentBrowserAction.fetchParent(nodes:completion:)(a1, partial apply for closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:), v5, specialized static UIDocumentBrowserAction._fetchParent(items:completion:), specialized static UIDocumentBrowserAction._fetchParent(items:completion:));
    }
  }
}

void closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(uint64_t a1, unint64_t a2, char *a3)
{
  v79 = a3;
  v80 = type metadata accessor for DOCOperationItem(0);
  v5 = *(v80 - 1);
  MEMORY[0x28223BE20](v80, v6);
  v8 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v73 - v11);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    v18 = DOCNode.fpfs_syncFetchFPItem()();
    if (v18)
    {
      v19 = v18;
      v78 = a1;
      v20 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;
      LODWORD(v20) = [v20 isAnyNodeAFault_];

      if (!v20 || (DOCIsNetworkReachable() & 1) != 0)
      {
        v74 = v19;
        v75 = v17;
        if (a2 >> 62)
        {
          v22 = __CocoaSet.count.getter();
        }

        else
        {
          v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v23 = MEMORY[0x277D84F90];
        v76 = v14;
        v77 = v13;
        if (v22)
        {
          v83[0] = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0);
          if (v22 < 0)
          {
            __break(1u);
LABEL_37:
            swift_once();
LABEL_33:
            specialized DOCAnalyticsManager.sendEvent(_:)(v83, static DOCAnalyticsManager.shared);

            outlined destroy of DOCAnalyticsActionEvent(v83);
            return;
          }

          v23 = v83[0];
          if ((a2 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v22; ++i)
            {
              *v12 = MEMORY[0x24C1FC540](i, a2);
              swift_storeEnumTagMultiPayload();
              v83[0] = v23;
              v26 = v23[2];
              v25 = v23[3];
              if (v26 >= v25 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
                v23 = v83[0];
              }

              v23[2] = v26 + 1;
              outlined init with take of DOCOperationItem(v12, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v26);
            }
          }

          else
          {
            v30 = (a2 + 32);
            do
            {
              v31 = a2;
              *v8 = *v30;
              swift_storeEnumTagMultiPayload();
              v83[0] = v23;
              v33 = v23[2];
              v32 = v23[3];
              swift_unknownObjectRetain();
              if (v33 >= v32 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
                v23 = v83[0];
              }

              v23[2] = v33 + 1;
              outlined init with take of DOCOperationItem(v8, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v33);
              ++v30;
              --v22;
              a2 = v31;
            }

            while (v22);
          }
        }

        v34 = [objc_opt_self() defaultManager];
        v35 = v79;
        v36 = *&v79[OBJC_IVAR___DOCActionContext_presentingViewController];
        v37 = swift_allocObject();
        *(v37 + 16) = v35;
        v38 = v35;
        FPItemManager.performOperation(_:sourceOperationItems:destinationNode:forceBounce:lastUsageUpdatePolicy:alertPresenting:completion:)(2u, v23, v78, 1, 2, 0, v36, partial apply for closure #3 in closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:), v37);

        v39 = *&v38[OBJC_IVAR___DOCActionContext_configuration];
        v40 = [v39 hostIdentifier];
        if (!v40)
        {
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = MEMORY[0x24C1FAD20](v41);
        }

        v23 = v74;
        v42 = v75;
        Date.init()();
        v43 = objc_allocWithZone(MEMORY[0x277D05ED0]);
        v44 = Date._bridgeToObjectiveC()().super.isa;
        v22 = [v43 initWithAppBundleIdentifier:v40 folderItem:v23 type:2 lastUsedDate:v44 frecency:1.0];

        (*(v76 + 8))(v42, v77);
        if (one-time initialization token for sharedManager != -1)
        {
          swift_once();
        }

        DOCSmartFolderManager.register(event:)(v22, v45);
        type metadata accessor for DOCItemCollectionViewController(0);
        v46 = swift_dynamicCastClass();
        if (!v46)
        {

          return;
        }

        v47 = v46;
        v80 = v36;

        DOCAnalyticsActionEvent.FileProvider.init(nodes:)(v48);
        LODWORD(v79) = v82[2];
        v49 = objc_opt_self();
        v50 = [v49 mainBundle];

        v51 = MEMORY[0x277D85000];
        v52 = (*((*MEMORY[0x277D85000] & *v47) + 0xA68))();
        v53 = [v52 identifier];

        v54 = DOCAnalyticsActionEvent.Source.init(sourceIdentifier:)(v53);
        v55 = v82[1];
        v56 = (*((*v51 & *v47) + 0xBD8))(v54);
        if (v56 >= 4)
        {
          v83[0] = v56;
          _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return;
        }

        v57 = 0x3020201u >> (8 * v56);
        v58 = [v49 mainBundle];
        v59 = [v58 bundleIdentifier];

        if (v59)
        {
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;
        }

        else
        {
          v60 = 0;
          v62 = 0;
        }

        v63 = v39;
        DOCAnalyticsActionEvent.Client.init(configuration:bundleIdentifier:)(v63, v60, v62, v83);
        v64 = v83[0];
        v65 = v63;
        DOCAnalyticsActionEvent.SortMode.init(configuration:)(v65, v82);
        v66 = v82[0];
        v67 = v65;
        DOCAnalyticsActionEvent.SortOrder.init(configuration:)(v67, &v81);
        v68 = v81;
        v69 = [v67 hostIdentifier];
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v71;

        v83[0] = 0xD000000000000032;
        v83[1] = 0x8000000249BCDC20;
        v83[2] = v70;
        v83[3] = v72;
        v84 = 3;
        v85 = v64;
        v86 = v79;
        v87 = v55;
        v88 = v57;
        v89 = v66;
        v90 = v68;
        if (one-time initialization token for shared == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_37;
      }

      v27 = swift_allocObject();
      v28 = v79;
      *(v27 + 16) = v79;
      v29 = v28;
      DOCRunInMainThread(_:)();
    }
  }
}

double closure #3 in closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + OBJC_IVAR___DOCActionContext_presentingViewController);
    type metadata accessor for DOCItemCollectionViewController(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v6 = v4;
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = v6;
      v8 = v3;

      DOCRunInMainThread(_:)();
    }
  }

  return result;
}

unint64_t closure #1 in closure #3 in closure #1 in closure #1 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(unint64_t result, void *a2)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v6 = MEMORY[0x277D85000];
      while ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        (*((*v6 & *a2) + 0xF68))(v7);
        result = swift_unknownObjectRelease();
        ++v5;
        if (v8 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v7 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v8 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = __CocoaSet.count.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t closure #2 in static UIDocumentBrowserAction.duplicateAction(targetNode:)(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_17:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1FC540](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_14:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_14;
          }
        }

        if ([v4 isAppContainer])
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = [v4 isInTrash];
          swift_unknownObjectRelease();
          if ((v6 & 1) == 0)
          {
            return 1;
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

void closure #5 in static UIDocumentBrowserAction.fetchParent(nodes:completion:)(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v8 = a1;
  v5 = specialized DOCNode.fpfs_syncFetchFPItem()();
  if (!v5 || (v6 = v5, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8), v7 = static NSObject.== infix(_:_:)(), v6, (v7 & 1) == 0))
  {

LABEL_8:
    (a3)(0, a2);
    return;
  }

  a3(a2);
}

void closure #2 in static UIDocumentBrowserAction._fetchParent(items:completion:)(unint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    v4 = a1;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      a1 = __CocoaSet.count.getter();
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      a1 = MEMORY[0x24C1FC540](0, v4);
    }

    else
    {
      if (!*(v5 + 16))
      {
        __break(1u);
        return;
      }

      a1 = *(v4 + 32);
    }
  }

LABEL_7:
  v6 = a1;
  a3();
}

Swift::Int closure #1 in static UIDocumentBrowserAction.fetchParent(nodes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return OS_dispatch_semaphore.signal()();
}

void closure #1 in static UIDocumentBrowserAction.mixedDeleteAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v13);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    v3 = v12;
    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (All)
    {
      v5 = All;
      v6 = OBJC_IVAR___DOCActionContext_presentingViewController;
      v7 = *&v12[OBJC_IVAR___DOCActionContext_presentingViewController];
      type metadata accessor for DOCItemCollectionViewController(0);
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
LABEL_6:
        v11 = [objc_opt_self() defaultManager];
        FPItemManager.trashOrDeleteItems(_:alertPresenting:userCancellationHandler:)(v5, *&v12[v6], 0, 0);

        if (one-time initialization token for sharedManager != -1)
        {
          swift_once();
        }

        (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
        goto LABEL_10;
      }

      v9 = v8;
      v10 = v7;
      if ([v9 isEditing])
      {

        goto LABEL_6;
      }

      v3 = v12;
      specialized DOCItemCollectionViewController.focusNextItemAndThen(_:)(v9, v5, v3);

      swift_bridgeObjectRelease_n();
    }

LABEL_10:
  }
}

uint64_t trashOrDeleteItems #1 () in closure #1 in static UIDocumentBrowserAction.mixedDeleteAction()(unint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  FPItemManager.trashOrDeleteItems(_:alertPresenting:userCancellationHandler:)(a1, *(a2 + OBJC_IVAR___DOCActionContext_presentingViewController), 0, 0);

  if (one-time initialization token for sharedManager != -1)
  {
    swift_once();
  }

  return (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
}

void closure #1 in static UIDocumentBrowserAction.deleteAction(title:)(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v8);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (All)
    {
      v4 = All;
      v5 = [objc_opt_self() defaultManager];
      v6 = *&v7[OBJC_IVAR___DOCActionContext_presentingViewController];
      FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:)(v4, v6, 0, 0, 0);

      if (one-time initialization token for sharedManager != -1)
      {
        swift_once();
      }

      (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
    }
  }
}

void closure #1 in static UIDocumentBrowserAction.deleteAllAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v12);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (All)
    {
      v4 = All;
      v5 = *&v11[OBJC_IVAR___DOCActionContext_userInfo];
      if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000044, 0x8000000249BDC970), (v7 & 1) != 0) && (outlined init with copy of Any(*(v5 + 56) + 32 * v6, v12), swift_dynamicCast()))
      {
        v8 = v11;
      }

      else
      {
        v8 = 0;
      }

      v9 = [objc_opt_self() defaultManager];
      v10 = *&v11[OBJC_IVAR___DOCActionContext_presentingViewController];
      FPItemManager.deleteItems(_:alertPresenting:skipConfirmation:userCancellationHandler:)(v4, v10, v8, 0, 0);

      if (one-time initialization token for sharedManager != -1)
      {
        swift_once();
      }

      (*((*MEMORY[0x277D85000] & *static DOCSmartFolderManager.sharedManager) + 0xA0))();
    }
  }
}

void closure #1 in static UIDocumentBrowserAction.infoAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v8);
  type metadata accessor for DOCActionContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v3 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1 && __CocoaSet.count.getter())
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](0, a1);
    goto LABEL_7;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(a1 + 32);
    swift_unknownObjectRetain();
LABEL_7:
    v5 = swift_allocObject();
    *(v5 + 16) = v7;
    *(v5 + 24) = a1;
    *(v5 + 32) = 0;
    *(v5 + 40) = v3;
    *(v5 + 48) = v4;
    v6 = v7;

    swift_unknownObjectRetain();
    DOCRunInMainThread(_:)();
    swift_unknownObjectRelease();

    return;
  }

  __break(1u);
}

void static UIDocumentBrowserAction.showInfo(for:inTagMode:actionContext:)(unint64_t a1, char a2, void *a3)
{
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() < 1 || !__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2 & 1;
  *(v8 + 40) = v3;
  *(v8 + 48) = v7;
  v9 = a3;

  swift_unknownObjectRetain();
  DOCRunInMainThread(_:)();
  swift_unknownObjectRelease();
}

void closure #1 in static UIDocumentBrowserAction.tagsAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v13);
  type metadata accessor for DOCActionContext();
  if (swift_dynamicCast())
  {
    All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (!All)
    {
LABEL_15:

      return;
    }

    if (All >> 62)
    {
      if (__CocoaSet.count.getter() > 1)
      {
        goto LABEL_5;
      }
    }

    else if (*((All & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
    {
LABEL_5:
      v4 = [objc_allocWithZone(DOCTagEditorViewController) init];
      v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      [v5 setModalPresentationStyle_];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v4 setItems_];

      v7 = *&v12[OBJC_IVAR___DOCActionContext_presentingViewController];
      [v7 presentViewController:v5 animated:1 completion:0];

      goto LABEL_15;
    }

    v8 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
    if (a1 >> 62)
    {
      if (__CocoaSet.count.getter() < 1 || !__CocoaSet.count.getter())
      {
        goto LABEL_15;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x24C1FC540](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v9 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v12;
    *(v10 + 24) = a1;
    *(v10 + 32) = 1;
    *(v10 + 40) = v8;
    *(v10 + 48) = v9;
    v11 = v12;

    swift_unknownObjectRetain();
    DOCRunInMainThread(_:)();
    swift_unknownObjectRelease();
  }
}

BOOL closure #2 in static UIDocumentBrowserAction.renameAction()(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1FC540](v4, a1);
      if (__OFADD__(v5, 1))
      {
LABEL_12:
        __break(1u);
        return v3 != v5;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v6 = *(a1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }
    }

    v7 = [v6 isInTrash];
    swift_unknownObjectRelease();
    v4 = v5 + 1;
  }

  while ((v7 & 1) != 0);
  return v3 != v5;
}

void closure #1 in static UIDocumentBrowserAction.folderCustomizationAction()(unint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a2, v5);
  type metadata accessor for DOCActionContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (!specialized Array<A>.fpfs_syncFetchAllFPItems()(a1))
  {
    goto LABEL_11;
  }

  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter() == 1 && __CocoaSet.count.getter())
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C1FC540](0, a1);
    goto LABEL_8;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
    swift_unknownObjectRetain();
LABEL_8:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
    static UIDocumentBrowserAction.showFolderCustomization(for:actionContext:)(v3, v4);

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

void static UIDocumentBrowserAction.showFolderCustomization(for:actionContext:)(uint64_t a1, char *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = DOCNode.fpfs_syncFetchFINode()();
  if (v7)
  {

LABEL_3:
    if (one-time initialization token for DocumentManager != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.DocumentManager);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136315138;
      v12 = DOCNode.nodeDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v35);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2493AC000, oslog, v9, "Unable to find FINode for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    goto LABEL_14;
  }

  if (!v6)
  {
    goto LABEL_3;
  }

  v15 = v6;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 sharedInstance];
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = objc_allocWithZone(type metadata accessor for DOCFolderIconCustomizationApplicator());
  v21 = v17;
  v22 = specialized DOCFolderIconCustomizationApplicator.init(withNode:tagRegistry:tagsControllerCreator:)(v21, v18, partial apply for closure #1 in static UIDocumentBrowserAction.showFolderCustomization(for:actionContext:), v19, v20);

  v23 = [*&a2[OBJC_IVAR___DOCActionContext_presentingViewController] traitCollection];
  v24 = MEMORY[0x277D85000];
  v25 = (*((*MEMORY[0x277D85000] & *v22) + 0xF8))(v23);
  v26 = (*((*v24 & *v22) + 0x178))(v25);
  v27 = *(dispatch thunk of DSFolderIconInfo.adornmentDictionary.getter() + 16);

  oslog = 0;
  if (!v27)
  {
    v28 = [v21 propertyAsNSObject_];
    if (v28)
    {
      v29 = v28;
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (!v28)
      {

        v28 = 0;
      }
    }

    oslog = v28;
    v30 = v28;
  }

  v31 = swift_allocObject();
  v31[2] = v26;
  v31[3] = v22;
  v31[4] = oslog;
  v31[5] = v3;
  v31[6] = a1;
  v31[7] = a2;

  v32 = v22;
  swift_unknownObjectRetain();
  v33 = a2;
  DOCRunInMainThread(_:)();

LABEL_14:
}

uint64_t closure #2 in static UIDocumentBrowserAction.folderCustomizationAction()(unint64_t a1)
{
  if (![objc_opt_self() folderCustomizationEnabled])
  {
    return 0;
  }

  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_21:
    result = __CocoaSet.count.getter();
    if (result != 1)
    {
      return 0;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      return 0;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1FC540](0, a1);
LABEL_7:
    v5 = [v4 supportsFolderCustomization];
    swift_unknownObjectRelease();
    if (v5)
    {
      if (v2)
      {
        v6 = __CocoaSet.count.getter();
      }

      else
      {
        v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; ; ++i)
      {
        v2 = v6 != i;
        if (v6 == i)
        {
          break;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x24C1FC540](i, a1);
          if (__OFADD__(i, 1))
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(a1 + 8 * i + 32);
          swift_unknownObjectRetain();
          if (__OFADD__(i, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }
        }

        v9 = [v8 isInTrash];
        swift_unknownObjectRelease();
        if ((v9 & 1) == 0)
        {
          return v2;
        }
      }

      return v2;
    }

    return 0;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(a1 + 32);
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void closure #1 in static UIDocumentBrowserAction.manageShareAction(with:)(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &aBlock[-1] - v7;
  if (a1 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a1, v6);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v9 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (v9)
  {
    outlined init with copy of Any(a2, aBlock);
    type metadata accessor for DOCActionContext();
    if (swift_dynamicCast())
    {
      v10 = aBlock[6];
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = v9;
        v14 = [v12 fileURL];
        if (v14)
        {
          v15 = v14;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v16 = 0;
        }

        else
        {
          v16 = 1;
        }

        v25 = type metadata accessor for URL();
        (*(*(v25 - 8) + 56))(v8, v16, 1, v25);
        specialized presentViewController #1 (_:error:) in static UIDocumentBrowserAction.showManageShare(for:actionContext:)(v8, 0, v13, v10);

        outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }

      else
      {
        v17 = objc_opt_self();
        v18 = v9;
        v19 = [v17 defaultManager];
        objc_opt_self();
        v20 = swift_dynamicCastObjCClassUnconditional();
        v21 = swift_allocObject();
        *(v21 + 16) = v18;
        *(v21 + 24) = v10;
        aBlock[4] = closure #1 in static UIDocumentBrowserAction.showManageShare(for:actionContext:)partial apply;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
        aBlock[3] = &block_descriptor_195;
        v22 = _Block_copy(aBlock);
        v23 = v18;
        v24 = v10;

        [v19 fetchURLForItem:v20 completionHandler:v22];
        _Block_release(v22);
      }
    }

    else
    {
    }
  }
}

void static UIDocumentBrowserAction.showManageShare(for:actionContext:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();

  specialized static UIDocumentBrowserAction.showManageShare(for:actionContext:)(a1, a2, v2, ObjectType);
}

void closure #1 in static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:)(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v7 = a1;
    v8 = __CocoaSet.count.getter();
    a1 = v7;
    if (!v8)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v3 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = [objc_opt_self() defaultManager];
    outlined init with copy of Any(a2, v10);
    v5 = swift_allocObject();
    outlined init with take of Any(v10, (v5 + 16));
    v9[4] = partial apply for closure #1 in closure #1 in static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:);
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v9[3] = &block_descriptor_167_0;
    v6 = _Block_copy(v9);

    [v4 fetchURLForItem:v3 completionHandler:v6];
    _Block_release(v6);
  }
}

void closure #1 in closure #1 in static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:)(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v31 - v16;
  outlined init with copy of DOCGridLayout.Spec?(a1, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.UI);
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v32[0] = v23;
      *v22 = 136315138;
      v33 = a2;
      v24 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v32);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2493AC000, v20, v21, "No node url found. Failed to handle create iCloud link action. Error: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x24C1FE850](v23, -1, -1);
      MEMORY[0x24C1FE850](v22, -1, -1);
    }
  }

  else
  {
    v28 = *(v10 + 32);
    v28(v17, v8, v9);
    outlined init with copy of Any(v31, v32);
    (*(v10 + 16))(v13, v17, v9);
    v29 = (*(v10 + 80) + 48) & ~*(v10 + 80);
    v30 = swift_allocObject();
    outlined init with take of Any(v32, (v30 + 16));
    v28((v30 + v29), v13, v9);
    DOCRunInMainThread(_:)();

    (*(v10 + 8))(v17, v9);
  }
}

uint64_t closure #2 in static UIDocumentBrowserAction.createiCloudLinkAction(targetNode:)(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_21:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1FC540](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_18:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_21;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_18;
          }
        }

        swift_getObjectType();
        if (([v4 isShared] & 1) != 0 || (objc_msgSend(v4, sel_doc_isCollaborationInvitation) & 1) != 0 || (DOCNode.doc_isAppContainerRoot.getter() & 1) != 0 || objc_msgSend(v4, sel_isTrashed))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = [v4 isExcludedFromSync];
          swift_unknownObjectRelease();
          if ((v6 & 1) == 0)
          {
            return 1;
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

void closure #1 in static UIDocumentBrowserAction.presentCreateiCloudLinkViewController(actionContext:url:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong doc_dismissViewController];
  }
}

void closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = a1;
    v5 = __CocoaSet.count.getter();
    a1 = v4;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v1 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = [objc_opt_self() defaultManager];
    aBlock[4] = closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_149;
    v3 = _Block_copy(aBlock);
    [v2 fetchURLForItem:v1 completionHandler:v3];
    _Block_release(v3);

    return;
  }

LABEL_9:
  if (one-time initialization token for UI != -1)
  {
LABEL_17:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2493AC000, oslog, v7, "No node found. Failed to handle copy iCloud link action.", v8, 2u);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }
}

void closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)(uint64_t a1, double a2)
{
  v3 = type metadata accessor for URLResourceValues();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v66 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v65 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v58 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v58 - v27;
  outlined init with copy of DOCGridLayout.Spec?(a1, v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v29 = *(v21 + 48);
  if (v29(v19, 1, v20) != 1)
  {
    v34 = *(v21 + 32);
    v60 = v21 + 32;
    v61 = v29;
    v59 = v34;
    v34(v28, v19, v20);
    v62 = v21;
    v63 = v24;
    (*(v21 + 16))(v24, v28, v20);
    v35 = MEMORY[0x24C1FAD20](0xD000000000000015, 0x8000000249BDCAF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = v35;
    v37 = v35;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of NSURLResourceKey(inited + 32, type metadata accessor for NSURLResourceKey);
    URL.resourceValues(forKeys:)();
    v38 = v12;
    v39 = v67;

    v40 = v68;
    (*(v39 + 56))(v12, 0, 1, v68);
    v41 = v66;
    outlined init with copy of DOCGridLayout.Spec?(v12, v66, &_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR);
    v42 = (*(v39 + 48))(v41, 1, v40);
    v43 = v62;
    if (v42 == 1)
    {
      v44 = &_s10Foundation17URLResourceValuesVSgMd;
      v45 = &_s10Foundation17URLResourceValuesVSgMR;
    }

    else
    {
      v46 = v64;
      (*(v39 + 32))(v64, v41, v40);
      v47 = URLResourceValues.allValues.getter();
      if (*(v47 + 16) && (v48 = specialized __RawDictionaryStorage.find<A>(_:)(v37), (v49 & 1) != 0))
      {
        outlined init with copy of Any(*(v47 + 56) + 32 * v48, aBlock);
        (*(v39 + 8))(v46, v40);

        v41 = v65;
        v50 = swift_dynamicCast();
        (*(v43 + 56))(v41, v50 ^ 1u, 1, v20);
        if (v61(v41, 1, v20) != 1)
        {
          v51 = v63;
          (*(v43 + 8))(v63, v20);
          v59(v51, v41, v20);
LABEL_16:
          v52 = objc_opt_self();
          URL._bridgeToObjectiveC()(v53);
          v55 = v54;
          aBlock[4] = closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:);
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed CKShare?, @guaranteed Error?) -> ();
          aBlock[3] = &block_descriptor_152;
          v56 = _Block_copy(aBlock);
          [v52 existingShareForFileOrFolderURL:v55 completionHandler:v56];
          _Block_release(v56);

          outlined destroy of CharacterSet?(v38, &_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR);
          v57 = *(v43 + 8);
          v57(v51, v20);
          v57(v28, v20);
          return;
        }
      }

      else
      {

        (*(v39 + 8))(v46, v40);
        v41 = v65;
        (*(v43 + 56))(v65, 1, 1, v20);
      }

      v44 = &_s10Foundation3URLVSgMd;
      v45 = &_s10Foundation3URLVSgMR;
    }

    outlined destroy of CharacterSet?(v41, v44, v45);
    v51 = v63;
    goto LABEL_16;
  }

  outlined destroy of CharacterSet?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.UI);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2493AC000, v31, v32, "No node url found. Failed to handle copy iCloud link action.", v33, 2u);
    MEMORY[0x24C1FE850](v33, -1, -1);
  }
}

void closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v46 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v13 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v46 - v20;
  if (a3)
  {
    v22 = a3;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.UI);
    v24 = a3;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v55 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v55);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2493AC000, v25, v26, "Failed to copy iCloud link: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x24C1FE850](v28, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      outlined destroy of CharacterSet?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v54 = *(v10 + 32);
      v54(v21, v8, v9);
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.UI);
      v53 = *(v10 + 16);
      v53(v17, v21, v9);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v49 = v10 + 16;
        v36 = v35;
        v50 = swift_slowAlloc();
        v55 = v50;
        *v36 = 136315138;
        _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v48 = v33;
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = v10 + 32;
        v39 = v38;
        v40 = *(v10 + 8);
        v47 = v34;
        v52 = v40;
        v40(v17, v9);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v55);

        v46 = v36;
        *(v36 + 4) = v41;
        v42 = v48;
        _os_log_impl(&dword_2493AC000, v48, v47, "URL: %s copied to pasteboard.", v36, 0xCu);
        v43 = v50;
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x24C1FE850](v43, -1, -1);
        MEMORY[0x24C1FE850](v46, -1, -1);
      }

      else
      {

        v52 = *(v10 + 8);
        v52(v17, v9);
      }

      v53(v13, v21, v9);
      v44 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v45 = swift_allocObject();
      v54((v45 + v44), v13, v9);
      DOCRunInMainThread(_:)();

      v52(v21, v9);
    }
  }
}

void closure #1 in closure #1 in closure #1 in closure #1 in static UIDocumentBrowserAction.copyiCloudLinkAction(targetNode:)()
{
  v0 = [objc_opt_self() generalPasteboard];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  [v0 setURL_];
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed CKShare?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - v10;
  v12 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  v15 = a3;
  v16 = a4;
  v12(v11, a3, a4);

  return outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t closure #2 in static UIDocumentBrowserAction.manageShareAction(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_19:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1FC540](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_16:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(a1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_16;
          }
        }

        swift_getObjectType();
        if (![v4 isShared] || objc_msgSend(v4, sel_doc_isCollaborationInvitation) || (DOCNode.doc_isAppContainerRoot.getter() & 1) != 0)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v6 = [v4 isTrashed];
          swift_unknownObjectRelease();
          if ((v6 & 1) == 0)
          {
            return 1;
          }
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

uint64_t closure #1 in static UIDocumentBrowserAction.shareActionPredicate()(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x24C1FC540](v3, a1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v8 = v4;
      v6 = closure #1 in closure #1 in static UIDocumentBrowserAction.shareActionPredicate()(&v8);
      swift_unknownObjectRelease();
      if (v6)
      {
        ++v3;
        if (v5 != i)
        {
          continue;
        }
      }

      return v6 & 1;
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v6 = 1;
  return v6 & 1;
}

uint64_t closure #1 in closure #1 in static UIDocumentBrowserAction.shareActionPredicate()(void **a1)
{
  v2 = *a1;
  swift_getObjectType();
  if ([v2 isFolder] && (v3 = objc_msgSend(v2, sel_fpfs_fpItem)) != 0)
  {
    v4 = v3;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
    v5 = v4;
    v6 = specialized @nonobjc FPProviderDomain.__allocating_init(for:cachePolicy:)(v5, 3);
    if (v1)
    {

      if (one-time initialization token for DocumentManager != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.DocumentManager);
      swift_unknownObjectRetain();
      v8 = v1;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v33 = v5;
        v13 = swift_slowAlloc();
        v34 = v13;
        *v11 = 136315394;
        v14 = DOCNode.nodeDescription.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v34);

        *(v11 + 4) = v16;
        *(v11 + 12) = 2112;
        v17 = v1;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 14) = v18;
        *v12 = v18;
        _os_log_impl(&dword_2493AC000, v9, v10, "Could not fetch provider domain for %s: %@", v11, 0x16u);
        outlined destroy of CharacterSet?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x24C1FE850](v12, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x24C1FE850](v13, -1, -1);
        MEMORY[0x24C1FE850](v11, -1, -1);
      }

      else
      {
      }

      goto LABEL_16;
    }

    v20 = v6;

    if (([v20 supportsPickingFolders] & 1) == 0)
    {
      goto LABEL_15;
    }

    v21 = [v2 providerDomainID];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
    {

LABEL_16:
      v19 = 1;
      goto LABEL_17;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
LABEL_15:

      goto LABEL_16;
    }

    v28 = [v2 providerDomainID];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
    {
      v19 = 1;
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_17:
  if (([v2 isAppContainer] & 1) != 0 || ((objc_msgSend(v2, sel_doc_isCollaborationInvitation) | v19) & 1) != 0 || objc_msgSend(v2, sel_folderType) == 2 || objc_msgSend(v2, sel_folderType) == 3)
  {
    return 0;
  }

  else
  {
    return [v2 isInTrash] ^ 1;
  }
}

void closure #1 in static UIDocumentBrowserAction.fetchPublishingURLAction()(unint64_t a1)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = static DOCLog.UI;
  v3 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249B9A480;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
  *(v4 + 64) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR, MEMORY[0x277CC9C50]);
  *(v4 + 32) = a1;

  os_log(_:dso:log:type:_:)("fetchPublishingURLAction unresolvedHandler %@", 45, 2, &dword_2493AC000, v2, v3, v4);

  if (a1 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  v5 = DOCNode.fpfs_syncFetchFPItem()();
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CC63E0]) initWithItem_];
    v9[4] = closure #1 in closure #1 in static UIDocumentBrowserAction.fetchPublishingURLAction();
    v9[5] = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL?, @guaranteed Error?) -> ();
    v9[3] = &block_descriptor_140;
    v7 = _Block_copy(v9);
    [v6 setFetchCompletionBlock_];
    _Block_release(v7);
    v8 = [objc_opt_self() defaultManager];
    [v8 scheduleAction_];
  }
}

double closure #1 in closure #1 in static UIDocumentBrowserAction.fetchPublishingURLAction()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) != 1)
  {
    (*(v17 + 32))(v20, v15, v16);
    v26 = [objc_opt_self() generalPasteboard];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    static UTType.url.getter();
    v30 = UTType.identifier.getter();
    v32 = v31;
    (*(v44 + 8))(v7, v45);
    v33 = MEMORY[0x24C1FAD20](v30, v32);

    [v26 setValue:v29 forPasteboardType:v33];

    (*(v17 + 8))(v20, v16);
    return result;
  }

  outlined destroy of CharacterSet?(v15, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v45 = static DOCLog.UI;
  v22 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_249B9FA70;
  outlined init with copy of DOCGridLayout.Spec?(a1, v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v21(v11, 1, v16) == 1)
  {
    outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v24 = URL.path.getter();
    v25 = v35;
    (*(v17 + 8))(v11, v16);
  }

  v36 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v37 = lazy protocol witness table accessor for type String and conformance String();
  v38 = v37;
  *(v23 + 64) = v37;
  if (v25)
  {
    v39 = v24;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0xE000000000000000;
  if (v25)
  {
    v40 = v25;
  }

  *(v23 + 32) = v39;
  *(v23 + 40) = v40;
  if (!a2)
  {
    v43 = (v23 + 72);
    *(v23 + 96) = v36;
    *(v23 + 104) = v37;
    goto LABEL_17;
  }

  swift_getErrorValue();
  v41 = Error.localizedDescription.getter();
  v43 = (v23 + 72);
  *(v23 + 96) = v36;
  *(v23 + 104) = v38;
  if (!v42)
  {
LABEL_17:
    *v43 = 0;
    v42 = 0xE000000000000000;
    goto LABEL_18;
  }

  *v43 = v41;
LABEL_18:
  *(v23 + 80) = v42;
  os_log(_:dso:log:type:_:)("fetchCompletionBlock returned URL: %@ error: %@ unresolvedHandler %@", 68, 2, &dword_2493AC000, v45, v22, v23, v44);

  return result;
}

void UIPopoverPresentationController.doc_makeUpdateableWithReloadBlock(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v6 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v3, static UIPopoverPresentationController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[0] = partial apply for thunk for @callee_guaranteed () -> ();
  v10[1] = v8;
  v9 = *((*MEMORY[0x277D85000] & *v6) + 0x80);

  v9(v10, KeyPath);
}

Swift::Void __swiftcall UIPopoverPresentationController.doc_reloadableSourceInfoDidChange()()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v0, static UIPopoverPresentationController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x78))(v4);

  v2 = v4[0];
  if (v4[0])
  {
    v3 = v4[1];
    (v4[0])();
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v2, v3);
  }
}

uint64_t (*UIPopoverPresentationController._doc_sourceInfoReloader.getter())()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v0, static UIPopoverPresentationController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*MEMORY[0x277D85000] & *v1) + 0x78))(v6);

  v2 = v6[0];
  if (!v6[0])
  {
    return 0;
  }

  v3 = v6[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return thunk for @escaping @callee_guaranteed () -> (@out ())partial apply;
}

Swift::Void __swiftcall UIPopoverPresentationController.doc_invalidateUpdateableWithReloadBlock()()
{
  if (one-time initialization token for associatedObjectStorageKey != -1)
  {
    swift_once();
  }

  v1 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(v0, static UIPopoverPresentationController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v3[0] = 0;
  v3[1] = 0;
  (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v3, KeyPath);
}

uint64_t (*key path getter for UIPopoverPresentationController._doc_sourceInfoReloader : UIPopoverPresentationController@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = UIPopoverPresentationController._doc_sourceInfoReloader.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = thunk for @callee_guaranteed () -> ()partial apply;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t key path setter for UIPopoverPresentationController._doc_sourceInfoReloader : UIPopoverPresentationController(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = _sytIegr_Ieg_TRTA_0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1, v2);
  specialized UIPopoverPresentationController._doc_sourceInfoReloader.setter(v4, v3);

  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4, v3);
}

void static DOCPresentationLog.faultLog(if:_:)(char a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.UI);

    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v10);
      _os_log_impl(&dword_2493AC000, oslog, v6, "[Presentation Error] %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C1FE850](v8, -1, -1);
      MEMORY[0x24C1FE850](v7, -1, -1);
    }

    else
    {
    }
  }
}

void configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  swift_beginAccess();
  v43 = a4;
  LODWORD(a4) = *(a4 + 16);
  _StringGuts.grow(_:)(79);
  MEMORY[0x24C1FAEA0](0xD00000000000004DLL, 0x8000000249BDCD20);
  v10 = [a5 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x24C1FAEA0](v11, v13);

  _StringGuts.grow(_:)(38);

  v48[0] = 0xD000000000000024;
  v48[1] = 0x8000000249BDCCB0;
  MEMORY[0x24C1FAEA0](0, 0xE000000000000000);

  if (a4 == 1)
  {
    v14 = v48[0];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.UI);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v48[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, 0x8000000249BDCCB0, v48);
      _os_log_impl(&dword_2493AC000, v16, v17, "[Presentation Error] %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x24C1FE850](v19, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }
  }

  else
  {
  }

  swift_beginAccess();
  v20 = *(a6 + 16);
  _StringGuts.grow(_:)(77);
  MEMORY[0x24C1FAEA0](0xD00000000000004BLL, 0x8000000249BDCD70);
  v21 = [a5 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  MEMORY[0x24C1FAEA0](v22, v24);

  _StringGuts.grow(_:)(38);

  v47[0] = 0xD000000000000024;
  v47[1] = 0x8000000249BDCCB0;
  MEMORY[0x24C1FAEA0](0, 0xE000000000000000);

  if (v20 == 1)
  {
    v25 = v47[0];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.UI);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, 0x8000000249BDCCB0, v47);
      _os_log_impl(&dword_2493AC000, v27, v28, "[Presentation Error] %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }
  }

  else
  {
  }

  if (a1 == 7 && !a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.UI);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000059, 0x8000000249BDCDC0, v47);
      _os_log_impl(&dword_2493AC000, v32, v33, "[Presentation Error] %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C1FE850](v35, -1, -1);
      MEMORY[0x24C1FE850](v34, -1, -1);
    }
  }

  swift_beginAccess();
  *(v43 + 16) = 1;
  [a5 setModalPresentationStyle_];
  if ([a5 modalPresentationStyle] == 7 && a2)
  {

    v36 = [a5 popoverPresentationController];
    if (v36)
    {
      v37 = v36;
      a2();
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2, a3);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.UI);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v46 = v42;
        *v41 = 136315138;
        *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000066, 0x8000000249BDCE20, &v46);
        _os_log_impl(&dword_2493AC000, v39, v40, "[Presentation Error] %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x24C1FE850](v42, -1, -1);
        MEMORY[0x24C1FE850](v41, -1, -1);
      }

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2, a3);
    }
  }
}

id presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  _StringGuts.grow(_:)(66);
  MEMORY[0x24C1FAEA0](0xD000000000000040, 0x8000000249BDCC60);
  v9 = [a2 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  MEMORY[0x24C1FAEA0](v10, v12);

  _StringGuts.grow(_:)(38);

  v36[0] = 0xD000000000000024;
  v36[1] = 0x8000000249BDCCB0;
  MEMORY[0x24C1FAEA0](0, 0xE000000000000000);

  if (v8)
  {
  }

  else
  {
    v13 = v36[0];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.UI);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = a4;
      v19 = swift_slowAlloc();
      v36[0] = v19;
      *v17 = 136315138;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, 0x8000000249BDCCB0, v36);
      _os_log_impl(&dword_2493AC000, v15, v16, "[Presentation Error] %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v20 = v19;
      a4 = v18;
      MEMORY[0x24C1FE850](v20, -1, -1);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }
  }

  swift_beginAccess();
  v21 = *(a3 + 16);
  _StringGuts.grow(_:)(60);
  MEMORY[0x24C1FAEA0](0xD00000000000003ALL, 0x8000000249BDCCE0);
  v22 = [a2 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  MEMORY[0x24C1FAEA0](v23, v25);

  _StringGuts.grow(_:)(38);

  v35[0] = 0xD000000000000024;
  v35[1] = 0x8000000249BDCCB0;
  MEMORY[0x24C1FAEA0](0, 0xE000000000000000);

  if (v21 == 1)
  {
    v26 = v35[0];
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.UI);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = a4;
      v32 = swift_slowAlloc();
      v35[0] = v32;
      *v30 = 136315138;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, 0x8000000249BDCCB0, v35);
      _os_log_impl(&dword_2493AC000, v28, v29, "[Presentation Error] %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v33 = v32;
      a4 = v31;
      MEMORY[0x24C1FE850](v33, -1, -1);
      MEMORY[0x24C1FE850](v30, -1, -1);
    }
  }

  else
  {
  }

  swift_beginAccess();
  *(a3 + 16) = 1;
  return [*(a4 + OBJC_IVAR___DOCActionContext_presentingViewController) presentViewController:a2 animated:1 completion:0];
}

id closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = (*((*MEMORY[0x277D85000] & *a3) + 0xA8))(a1, a2);
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    swift_unknownObjectRetain();
    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(7, partial apply for closure #1 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:), v17, a4, a5, a6);
    swift_unknownObjectRelease();
  }

  else if (a1)
  {
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = a5;
    v18[4] = a7;
    v18[5] = a8;
    v19 = a1;
    v20 = a5;
    swift_unknownObjectRetain();
    v21 = a8;
    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(7, partial apply for closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:), v18, a4, v20, a6);
  }

  else
  {
    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(2, 0, 0, a4, a5, a6);
  }

  return presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(a4, a5, a6, a3);
}

double closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  [a1 setSourceView_];
  [a2 bounds];
  [a1 setSourceRect_];
  v19[2] = &unk_285D42468;
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (v9)
  {
    [a1 setDelegate_];
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  v12 = one-time initialization token for associatedObjectStorageKey;

  swift_unknownObjectRetain();
  v13 = a5;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo31UIPopoverPresentationControllerC_Tt1B5(a1, static UIPopoverPresentationController.associatedObjectStorageKey);
  KeyPath = swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:);
  *(v16 + 24) = v11;
  v19[0] = thunk for @callee_guaranteed () -> ()partial apply;
  v19[1] = v16;
  v17 = *((*MEMORY[0x277D85000] & *v14) + 0x80);

  v17(v19, KeyPath);

  return result;
}

void closure #1 in closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    aBlock[4] = partial apply for closure #1 in closure #1 in closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:);
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
    aBlock[3] = &block_descriptor_237;
    v8 = _Block_copy(aBlock);
    v9 = v6;

    [a2 getViewFor_waitForNewThumbnail:a3 :{0, v8}];
    _Block_release(v8);
  }
}

void closure #1 in closure #1 in closure #2 in closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v4 = a1;
    [a3 setSourceView_];
    [v4 bounds];
    [a3 setSourceRect_];
  }
}

double closure #1 in static UIDocumentBrowserAction.showInfo(for:inTagMode:actionContext:)(char *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = *&a1[OBJC_IVAR___DOCActionContext_configuration];
  v10 = *&a1[OBJC_IVAR___DOCActionContext_actionReporting];
  v11 = type metadata accessor for DOCServiceInfoViewController();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_isInPopoverMode] = 0;
  *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_configuration] = v9;
  v13 = objc_allocWithZone(DOCItemInfoViewController);
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16 = [v13 initWithNodes:isa configuration:v14 actionReporting:v10];

  v17 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController;
  *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController] = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v12[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoNavigationController] = v18;
  [v18 _setBuiltinTransitionStyle_];
  if (a3)
  {
    [*&v12[v17] displayTagView];
  }

  v76.receiver = v12;
  v76.super_class = v11;
  v19 = objc_msgSendSuper2(&v76, sel_init);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a4;
  v20[4] = v19;
  v20[5] = a5;
  v20[6] = a1;
  v21 = one-time initialization token for associatedObjectStorageKey;
  v22 = v19;
  v23 = a1;
  swift_unknownObjectRetain_n();
  v67 = a2;
  swift_bridgeObjectRetain_n();
  v24 = v22;
  v25 = v23;
  if (v21 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v24, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  v27 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v26) + 0x78))(&aBlock);

  if (aBlock)
  {
  }

  else
  {
    v75 = &unk_285D0A930;
    swift_dynamicCastObjCProtocolUnconditional();
    v28 = static UIViewController.associatedObjectStorageKey;
    v29 = v24;
    v30 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v29, v28);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v32 = swift_allocObject();
    *(v32 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v32 + 32) = MEMORY[0x277D84F90];
    *(v32 + 40) = 0;
    swift_unknownObjectWeakAssign();
    aBlock = v32;
    (*((*v27 & *v30) + 0x80))(&aBlock, KeyPath);
  }

  v33 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v24, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v27 & *v33) + 0x78))(&aBlock);

  v34 = aBlock;
  if (!aBlock)
  {
    if (v67 >> 62)
    {
      v48 = __CocoaSet.count.getter();
    }

    else
    {
      v48 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    v51 = *&v25[OBJC_IVAR___DOCActionContext_transitionProxy];
    swift_getObjectType();
    v52 = DOCNode.fpfs_syncFetchFPItem()();
    v47 = v52;
    if (v48 > 1 || !v51 || !v52)
    {
      if (v48 <= 1)
      {
        v64 = 7;
      }

      else
      {
        v64 = 2;
      }

      configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v64, 0, 0, v49, v24, v50);
      presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v49, v24, v50, v25);

      swift_unknownObjectRelease();

      goto LABEL_32;
    }

    v53 = swift_allocObject();
    v53[2] = v25;
    v53[3] = v49;
    v53[4] = v24;
    v53[5] = v50;
    v53[6] = v51;
    v53[7] = v47;
    v73 = closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)partial apply;
    v74 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v70 = 1107296256;
    v71 = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
    v72 = &block_descriptor_268;
    v54 = _Block_copy(&aBlock);
    v55 = v47;
    swift_unknownObjectRetain_n();
    v56 = v24;
    v57 = v25;
    v47 = v55;

    [v51 getViewFor_waitForNewThumbnail:v47 :{0, v54}];

    swift_unknownObjectRelease();

    _Block_release(v54);

LABEL_22:
    swift_unknownObjectRelease();

LABEL_32:
    return result;
  }

  v35 = v25;
  if (*(aBlock + 40) == 2)
  {
    if (v67 >> 62)
    {
      v36 = __CocoaSet.count.getter();
    }

    else
    {
      v36 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v39 = *&v25[OBJC_IVAR___DOCActionContext_transitionProxy];
    swift_getObjectType();
    v40 = DOCNode.fpfs_syncFetchFPItem()();
    v41 = v40;
    if (v36 <= 1 && v39 && v40)
    {
      v42 = swift_allocObject();
      v42[2] = v25;
      v42[3] = v37;
      v42[4] = v24;
      v42[5] = v38;
      v42[6] = v39;
      v42[7] = v41;
      v73 = closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)partial apply;
      v74 = v42;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
      v72 = &block_descriptor_281_0;
      v43 = _Block_copy(&aBlock);
      v44 = v41;
      swift_unknownObjectRetain_n();
      v45 = v24;
      v46 = v25;
      v47 = v44;

      [v39 getViewFor_waitForNewThumbnail:v47 :{0, v43}];
      _Block_release(v43);

      swift_unknownObjectRelease();

      goto LABEL_22;
    }

    if (v36 <= 1)
    {
      v66 = 7;
    }

    else
    {
      v66 = 2;
    }

    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v66, 0, 0, v37, v24, v38);
    v35 = v25;
    presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v37, v24, v38, v25);
  }

  else
  {
    v58 = swift_allocObject();
    *(v58 + 16) = partial apply for closure #1 in closure #1 in static UIDocumentBrowserAction.showInfo(for:inTagMode:actionContext:);
    *(v58 + 24) = v20;
    swift_beginAccess();
    v59 = *(v34 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 32) = v59;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
      *(v34 + 32) = v59;
    }

    v62 = v59[2];
    v61 = v59[3];
    if (v62 >= v61 >> 1)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v59);
    }

    v59[2] = v62 + 1;
    v63 = &v59[2 * v62];
    v63[4] = thunk for @callee_guaranteed () -> ()partial apply;
    v63[5] = v58;
    *(v34 + 32) = v59;
    swift_endAccess();
    DOCPresentationPreheatController.startIfNecessary()();

    v41 = v24;
  }

  swift_unknownObjectRelease();

  return result;
}

void closure #1 in closure #1 in static UIDocumentBrowserAction.showInfo(for:inTagMode:actionContext:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = *&a5[OBJC_IVAR___DOCActionContext_transitionProxy];
  swift_getObjectType();
  v11 = DOCNode.fpfs_syncFetchFPItem()();
  v20 = v11;
  if (v7 > 1 || (v10 ? (v12 = v11 == 0) : (v12 = 1), v12))
  {
    if (v7 <= 1)
    {
      v19 = 7;
    }

    else
    {
      v19 = 2;
    }

    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v19, 0, 0, v8, a3, v9);
    presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v8, a3, v9, a5);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = a5;
    v13[3] = v8;
    v13[4] = a3;
    v13[5] = v9;
    v13[6] = v10;
    v13[7] = v20;
    aBlock[4] = closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)partial apply;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
    aBlock[3] = &block_descriptor_290;
    v14 = _Block_copy(aBlock);
    v15 = v20;
    swift_unknownObjectRetain_n();
    v16 = v15;
    v17 = a5;

    v18 = a3;

    [v10 getViewFor_waitForNewThumbnail:v16 :{0, v14}];
    _Block_release(v14);

    swift_unknownObjectRelease();
  }
}

id closure #1 in static UIDocumentBrowserAction.showFolderCustomization(for:actionContext:)(void *a1)
{
  v2 = [objc_allocWithZone(DOCTagEditorViewController) init];
  v3 = [a1 tags];
  isa = DOCTagsFromFPTags();

  if (!isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v2 setSelectedTags_];

  return v2;
}

void closure #2 in static UIDocumentBrowserAction.showFolderCustomization(for:actionContext:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  type metadata accessor for DSFolderCustomizationNavigationController();
  v8 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *a2) + 0xA8))();
  _s10Foundation3URLVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type DOCFolderIconCustomizationApplicator and conformance DOCFolderIconCustomizationApplicator, type metadata accessor for DOCFolderIconCustomizationApplicator, &protocol conformance descriptor for DOCFolderIconCustomizationApplicator);
  v9 = static DSFolderCustomizationNavigationController.controller(forFolder:allTags:delegate:initialCustomIcon:retainDelegate:)();

  v10 = [v9 viewControllers];
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x24C1FC540](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  v14 = [v13 navigationItem];

  v15 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v9 action:sel_doc_dismissViewController];
  [v14 setLeftBarButtonItem_];

LABEL_9:
  (*((*v8 & *a2) + 0x158))(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = *&a6[OBJC_IVAR___DOCActionContext_transitionProxy];
  swift_getObjectType();
  v20 = DOCNode.fpfs_syncFetchFPItem()();
  v27 = v20;
  if (v19 && v20)
  {
    v21 = swift_allocObject();
    v21[2] = a6;
    v21[3] = v17;
    v21[4] = v9;
    v21[5] = v18;
    v21[6] = v19;
    v21[7] = v27;
    aBlock[4] = partial apply for closure #1 in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFErrorRef?) -> ();
    aBlock[3] = &block_descriptor_215_0;
    v22 = _Block_copy(aBlock);
    v23 = v27;
    swift_unknownObjectRetain_n();
    v24 = v23;
    v25 = a6;

    v26 = v9;

    [v19 getViewFor_waitForNewThumbnail:v24 :{0, v22}];

    _Block_release(v22);

    swift_unknownObjectRelease();
  }

  else
  {
    configureWithPreferredStyle #1 (_:ifResolvesToPopover:) in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(7, 0, 0, v17, v9, v18);
    presentConfiguredController #1 () in static UIDocumentBrowserAction.present(_:preferredStyle:node:actionContext:)(v17, v9, v18, a6);
  }
}

double static UIDocumentBrowserAction.showQuickLook(for:actionContext:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = a2;
  v6 = a1;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in static UIDocumentBrowserAction.showQuickLook(for:actionContext:)(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + OBJC_IVAR___DOCActionContext_presentingViewController);
  type metadata accessor for DOCItemCollectionViewController(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *((*MEMORY[0x277D85000] & *v3) + 0x1440);
    v5 = v7;
    v4(MEMORY[0x277D84F90], a2);
  }

  else
  {
    type metadata accessor for DOCItemInfoContentViewController();
    if (!swift_dynamicCastClass())
    {
      return;
    }

    v6 = v7;
    DOCItemInfoContentViewController.preview(items:defaultItem:)(MEMORY[0x277D84F90], a2);
  }
}

void closure #1 in presentViewController #1 (_:error:) in static UIDocumentBrowserAction.showManageShare(for:actionContext:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(type metadata accessor for DOCDocumentSharingController());
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v7 = [v3 initWithFileURL_];

  [v7 setModalPresentationStyle_];
  [*(a2 + OBJC_IVAR___DOCActionContext_presentingViewController) presentViewController:v7 animated:1 completion:0];
}

id DOCDocumentSharingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCDocumentSharingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized static UIDocumentBrowserAction.showManageShare(for:actionContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = aBlock - v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    swift_unknownObjectRetain();
    v12 = [v11 fileURL];
    if (v12)
    {
      v13 = v12;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
    }

    else
    {
      v20 = type metadata accessor for URL();
      (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    }

    specialized presentViewController #1 (_:error:) in static UIDocumentBrowserAction.showManageShare(for:actionContext:)(v9, 0, a1, a2);
    swift_unknownObjectRelease();
    outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v15 = [objc_opt_self() defaultManager];
    objc_opt_self();
    v16 = swift_dynamicCastObjCClassUnconditional();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    aBlock[4] = partial apply for closure #1 in static UIDocumentBrowserAction.showManageShare(for:actionContext:);
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_179_0;
    v18 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v19 = a2;

    [v15 fetchURLForItem:v16 completionHandler:v18];
    _Block_release(v18);
  }
}

void specialized presentViewController #1 (_:error:) in static UIDocumentBrowserAction.showManageShare(for:actionContext:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = a3;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  outlined init with copy of DOCGridLayout.Spec?(a1, v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for Application != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.Application);
    v20 = v40;
    v21 = v41;
    v22 = v41;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136446466;
      v27 = [v20 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v43);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      v42 = v21;
      v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v43);

      *(v25 + 14) = v35;
      _os_log_impl(&dword_2493AC000, v23, v24, "Failed to fetch URL for: %{public}s error: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }
  }

  else
  {
    v36 = *(v11 + 32);
    v36(v18, v9, v10);
    (*(v11 + 16))(v14, v18, v10);
    v37 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v38 = swift_allocObject();
    v36((v38 + v37), v14, v10);
    *(v38 + ((v12 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
    v39 = a4;
    DOCRunInMainThread(_:)();

    (*(v11 + 8))(v18, v10);
  }
}

{
  v40 = a3;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v40 - v17;
  outlined init with copy of DOCGridLayout.Spec?(a1, v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of CharacterSet?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for Application != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.Application);
    v20 = v40;
    swift_unknownObjectRetain();
    v21 = v41;
    v22 = v41;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43 = v26;
      *v25 = 136446466;
      v27 = [v20 description];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v43);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      v42 = v21;
      v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v43);

      *(v25 + 14) = v35;
      _os_log_impl(&dword_2493AC000, v23, v24, "Failed to fetch URL for: %{public}s error: %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }
  }

  else
  {
    v36 = *(v11 + 32);
    v36(v18, v9, v10);
    (*(v11 + 16))(v14, v18, v10);
    v37 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v38 = swift_allocObject();
    v36((v38 + v37), v14, v10);
    *(v38 + ((v12 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
    v39 = a4;
    DOCRunInMainThread(_:)();

    (*(v11 + 8))(v18, v10);
  }
}