uint64_t TrashItemsIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = type metadata accessor for ConfirmationActionName();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for ConfirmationConditions();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for IntentDialog();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[23] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[24] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource();
  v2[27] = v7;
  v2[28] = *(v7 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v8 = type metadata accessor for FINodeEntity(0);
  v2[33] = v8;
  v2[34] = *(v8 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](TrashItemsIntent.perform(), 0, 0);
}

uint64_t TrashItemsIntent.perform()()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D84F90];
  v83 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(v0 + 288);
    v5 = *(v0 + 272);
    v6 = *(*(v0 + 264) + 32);
    v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = *(v5 + 72);
    do
    {
      v9 = *(v0 + 288);
      outlined init with copy of FINodeEntity(v7, v9);
      v10 = *(v4 + v6);
      v11 = outlined destroy of FINodeEntity(v9);
      MEMORY[0x24C1FB090](v11);
      if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 += v8;
      --v3;
    }

    while (v3);

    v12 = v83;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  *(v0 + 296) = v12;
  if (v12 >> 62)
  {
    v71 = v12;
    v13 = __CocoaSet.count.getter();
    v12 = v71;
    if (v13)
    {
LABEL_10:
      v14 = v12;
      *(v0 + 24) = v2;
      *(v0 + 32) = v2;
      v82 = objc_opt_self();
      *(v0 + 304) = v82;
      if (v13 < 1)
      {
        __break(1u);
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = v14;
        v78 = v14 & 0xC000000000000001;
        v18 = MEMORY[0x277D84F90];
        v77 = MEMORY[0x277D84F90];
        v79 = v14;
        do
        {
          if (v78)
          {
            v20 = MEMORY[0x24C1FC540](v15, v17);
          }

          else
          {
            v20 = *(v17 + 8 * v15 + 32);
          }

          v21 = v20;
          v22 = MEMORY[0x24C1FDA70]();
          v23 = [v82 defaultManager];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_249BA0290;
          *(v24 + 32) = v21;
          type metadata accessor for FPItem();
          v25 = v21;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v27 = [v23 eligibleActionsForItems_];

          type metadata accessor for FPAction(0);
          _sSo8FPActionaABSHSCWlTm_0(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
          static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if (specialized Set.contains(_:)())
          {

            v19 = v25;
            MEMORY[0x24C1FB090]();
            if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v18 = *(v0 + 24);
          }

          else
          {
            v28 = specialized Set.contains(_:)();

            if (v28)
            {
              v29 = v25;
              MEMORY[0x24C1FB090]();
              if (*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v77 = *(v0 + 32);
            }
          }

          ++v15;
          *(v0 + 312) = v18;
          *(v0 + 320) = v18;
          v16 |= [v25 isCloudItem];
          objc_autoreleasePoolPop(v22);

          v17 = v79;
        }

        while (v13 != v15);
        v13 = v77;
        v14 = v77 >> 62;
        if (!(v77 >> 62))
        {
          v30 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30)
          {
            goto LABEL_26;
          }

LABEL_47:
          *(v0 + 368) = v13;
          v74 = [*(v0 + 304) defaultManager];
          *(v0 + 376) = v74;
          v75 = swift_task_alloc();
          *(v0 + 384) = v75;
          *v75 = v0;
          v75[1] = TrashItemsIntent.perform();
          v76 = *(v0 + 296);

          return specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:)(v76, 1, v74);
        }
      }

      if (__CocoaSet.count.getter())
      {
        v30 = __CocoaSet.count.getter();
LABEL_26:
        if (v30 != 1)
        {
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v51._object = 0x8000000249BDDBC0;
          v51._countAndFlagsBits = 0xD00000000000002FLL;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v51);
          if (v14)
          {
            v52 = __CocoaSet.count.getter();
          }

          else
          {
            v52 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v53 = *(v0 + 176);
          v54 = *(v0 + 160);
          v55 = *(v0 + 168);
          *(v0 + 40) = v52;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v56._countAndFlagsBits = 0;
          v56._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v56);
          String.LocalizationValue.init(stringInterpolation:)();
          static Locale.current.getter();
          v57 = *MEMORY[0x277CC9110];
          v58 = *(v55 + 104);
          v58(v53, v57, v54);
          LocalizedStringResource.init(_:table:locale:bundle:comment:)();
          v59 = *(v0 + 176);
          v60 = *(v0 + 160);
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v58(v59, v57, v60);
          goto LABEL_37;
        }

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v31._countAndFlagsBits = 0xD000000000000031;
        v31._object = 0x8000000249BDDDA0;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v31);
        if (v13 >> 62)
        {
          v36 = __CocoaSet.count.getter();
          if (v36)
          {
LABEL_29:
            if ((v13 & 0xC000000000000001) == 0)
            {
              if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return MEMORY[0x28210B508](v36, v32, v33, v34, v35);
              }

              v37 = *(v13 + 32);
              goto LABEL_32;
            }

LABEL_52:
            v37 = MEMORY[0x24C1FC540](0, v13);
LABEL_32:
            v38 = v37;
            v40 = *(v0 + 168);
            v39 = *(v0 + 176);
            v80 = *(v0 + 160);
            v41 = [v37 displayName];

            v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v44 = v43;

            v45._countAndFlagsBits = v42;
            v45._object = v44;
            String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v45);

            v46._countAndFlagsBits = 63;
            v46._object = 0xE100000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v46);
            String.LocalizationValue.init(stringInterpolation:)();
            static Locale.current.getter();
            v47 = *MEMORY[0x277CC9110];
            v48 = *(v40 + 104);
            v48(v39, v47, v80);
            LocalizedStringResource.init(_:table:locale:bundle:comment:)();
            v49 = *(v0 + 176);
            v50 = *(v0 + 160);
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v48(v49, v47, v50);
LABEL_37:
            LocalizedStringResource.init(_:table:locale:bundle:comment:)();
            *(v0 + 328) = v77;
            v61 = *(v0 + 248);
            v63 = *(v0 + 232);
            v62 = *(v0 + 240);
            v64 = *(v0 + 216);
            v65 = *(v0 + 224);
            v81 = v64;
            v66 = *(v0 + 80);
            v67 = *(v65 + 16);
            v67(v62, *(v0 + 256), v64);
            v67(v63, v61, v64);
            v68 = v62;
            IntentDialog.init(full:supporting:)();
            *(v0 + 48) = v66;
            *(v0 + 56) = MEMORY[0x277D84F90];
            _sSo8FPActionaABSHSCWlTm_0(&lazy protocol witness table cache variable for type ConfirmationConditions and conformance ConfirmationConditions, MEMORY[0x277CBA298], MEMORY[0x277CBA2A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10AppIntents22ConfirmationConditionsVGMd, &_sSay10AppIntents22ConfirmationConditionsVGMR);
            lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [ConfirmationConditions] and conformance [A], &_sSay10AppIntents22ConfirmationConditionsVGMd, &_sSay10AppIntents22ConfirmationConditionsVGMR, MEMORY[0x277D83970]);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            LocalizedStringResource.init(stringLiteral:)();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, _ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR);
            *(swift_allocObject() + 16) = xmmword_249B9A480;
            LocalizedStringResource.init(stringLiteral:)();
            LocalizedStringResource.init(stringLiteral:)();
            *(swift_allocObject() + 16) = xmmword_249B9A480;
            LocalizedStringResource.init(stringLiteral:)();
            static ConfirmationActionName.custom(acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:destructive:)();

            v69 = *(v65 + 8);
            *(v0 + 336) = v69;
            *(v0 + 344) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v69(v63, v81);
            v69(v68, v81);
            v70 = swift_task_alloc();
            *(v0 + 352) = v70;
            v35 = lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent();
            *v70 = v0;
            v70[1] = TrashItemsIntent.perform();
            v33 = *(v0 + 152);
            v36 = *(v0 + 128);
            v32 = *(v0 + 104);
            v34 = &type metadata for TrashItemsIntent;

            return MEMORY[0x28210B508](v36, v32, v33, v34, v35);
          }
        }

        else
        {
          v36 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
        goto LABEL_52;
      }

      goto LABEL_47;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_10;
    }
  }

  lazy protocol witness table accessor for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError();
  swift_allocError();
  swift_willThrow();

  v72 = *(v0 + 8);

  return v72();
}

{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = v2[15];
    v3 = v2[16];
    v6 = v2[13];
    v5 = v2[14];
    v9 = v2 + 11;
    v7 = v2[11];
    v8 = v9[1];

    (*(v8 + 8))(v6, v7);
    (*(v4 + 8))(v3, v5);
    v10 = TrashItemsIntent.perform();
  }

  else
  {
    v12 = v2[15];
    v11 = v2[16];
    v13 = v2[14];
    (*(v2[12] + 8))(v2[13], v2[11]);
    (*(v12 + 8))(v11, v13);
    v10 = TrashItemsIntent.perform();
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

{
  v1 = *(v0 + 336);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 216);
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  v1(v2, v4);
  v1(v3, v4);
  *(v0 + 368) = *(v0 + 328);
  v5 = [*(v0 + 304) defaultManager];
  *(v0 + 376) = v5;
  v6 = swift_task_alloc();
  *(v0 + 384) = v6;
  *v6 = v0;
  v6[1] = TrashItemsIntent.perform();
  v7 = *(v0 + 296);

  return specialized FPItemManager.trashOrDeleteItems(_:confirmationHandler:forceConfirmation:)(v7, 1, v5);
}

{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 376);
  if (v0)
  {

    v4 = TrashItemsIntent.perform();
  }

  else
  {

    v4 = TrashItemsIntent.perform();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[42];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[27];
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void *TrashItemsIntent.perform()()
{
  v1 = v0[40];
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v0[34];
    v3 = v13;
    v7 = v0[40] + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](v5, v0[40]);
      }

      else
      {
        v8 = *(v7 + 8 * v5);
      }

      FINodeEntity.init(item:)(v8, v0[35]);
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[35];
      ++v5;
      *(v13 + 16) = v10 + 1;
      outlined init with take of FINodeEntity(v11, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10);
    }

    while (v2 != v5);
  }

  v0[8] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGSgMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGSgMR);
  lazy protocol witness table accessor for type [FINodeEntity]? and conformance <A> A?();
  static IntentResult.result<A>(value:)();

  v12 = v0[1];

  return v12();
}

uint64_t closure #3 in TrashItemsIntent.perform()()
{
  return MEMORY[0x2822009F8](closure #3 in TrashItemsIntent.perform(), 0, 0);
}

{
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.AppIntents);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2493AC000, v2, v3, "Items are about to be deleted/trashed without usual confirmation because confirmation happened as part of the DeleteIntent flow ahead of the intent execution", v4, 2u);
    MEMORY[0x24C1FE850](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t TrashItemsIntent.TrashError.localizedStringResource.getter(double a1)
{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

Swift::Int TrashItemsIntent.TrashError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  return Hasher._finalize()();
}

uint64_t TrashItemsIntent.authenticationPolicy.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static TrashItemsIntent.__assistantSchemaIntent.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for __assistantSchemaIntent != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AssistantSchema();
  v4 = __swift_project_value_buffer(v3, static TrashItemsIntent.__assistantSchemaIntent);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t protocol witness for static AppIntent.title.getter in conformance TrashItemsIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent();

  return MEMORY[0x28210BFE8](a1, v2);
}

uint64_t protocol witness for AppIntent.perform() in conformance TrashItemsIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return TrashItemsIntent.perform()(a1, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance TrashItemsIntent@<X0>(uint64_t *a1@<X8>)
{
  result = default argument 0 of TrashItemsIntent.init(entities:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance TrashItemsIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t lazy protocol witness table accessor for type TrashItemsIntent and conformance TrashItemsIntent()
{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent and conformance TrashItemsIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [FINodeEntity]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [FINodeEntity]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [FINodeEntity]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGSgMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGSgMR);
    lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FINodeEntity]? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError()
{
  result = lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError;
  if (!lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrashItemsIntent.TrashError and conformance TrashItemsIntent.TrashError);
  }

  return result;
}

uint64_t default argument 0 of TrashItemsIntent.init(entities:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v21 - v15;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd, &_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMR);
  v17 = type metadata accessor for LocalizedStringResource();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v21[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  v18 = type metadata accessor for IntentDialog();
  v19 = *(*(v18 - 8) + 56);
  v19(v12, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v1 + 104))(v4, *MEMORY[0x277CBA308], v0);
  _sSo8FPActionaABSHSCWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
  return IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t _sSo8FPActionaABSHSCWlTm_0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

id key path getter for NSProgress.fractionCompleted : NSProgress@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t DOCGenericOperationProgress.__allocating_init(operation:observing:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v10[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v5, v4);
  outlined init with copy of DOCSidebarItemIconProvider(a1, v9);
  v7 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v10, v9, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

void DOCProgressState.init(_:)(void *a1@<X0>, char *a2@<X8>)
{
  if ([a1 isCancelled])
  {

    v4 = 1;
  }

  else if ([a1 isFinished] || (objc_msgSend(a1, sel_fractionCompleted), v5 >= 1.0))
  {

    v4 = 0;
  }

  else
  {
    v6 = [a1 isPaused];

    if (v6)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  *a2 = v4;
}

uint64_t DOCFileOperationProgress.__allocating_init(operation:observing:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCFileOperation(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - v10;
  v12 = swift_allocObject();
  outlined init with copy of DOCFileOperation(a1, v11);
  outlined init with copy of DOCFileOperation(a1, v7);
  v13 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v11, v7, a2, v12);
  outlined destroy of DOCFileOperation(a1);
  return v13;
}

uint64_t DOCProgressValue.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x6D72657465646E69;
  }

  Double.write<A>(to:)();
  MEMORY[0x24C1FAEA0](0x6C706D6F63202520, 0xEC00000064657465);
  return 0;
}

BOOL static DOCProgressValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t DOCProgressValue.hash(into:)()
{
  if (v0[1])
  {
    return MEMORY[0x24C1FCBD0](0);
  }

  v2 = *v0;
  MEMORY[0x24C1FCBD0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x24C1FCC00](v3);
}

Swift::Int DOCProgressValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x24C1FCC00](v3);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCProgressValue()
{
  if (v0[1])
  {
    return MEMORY[0x24C1FCBD0](0);
  }

  v2 = *v0;
  MEMORY[0x24C1FCBD0](1);
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return MEMORY[0x24C1FCC00](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCProgressValue(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x24C1FCBD0](0);
  }

  else
  {
    MEMORY[0x24C1FCBD0](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x24C1FCC00](v4);
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCProgressValue(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCProgressValue()
{
  if (*(v0 + 8))
  {
    return 0x6D72657465646E69;
  }

  Double.write<A>(to:)();
  MEMORY[0x24C1FAEA0](0x6C706D6F63202520, 0xEC00000064657465);
  return 0;
}

BOOL static DOCProgressState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

void DOCProgressState.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 3)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x24C1FCBD0](v2);
    return;
  }

  MEMORY[0x24C1FCBD0](2);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int DOCProgressState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x24C1FCBD0](2);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCProgressState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x24C1FCBD0](2);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
    }

    v2 = 1;
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DOCProgressState()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 3)
  {
    v2 = 1;
LABEL_5:
    MEMORY[0x24C1FCBD0](v2);
    return;
  }

  MEMORY[0x24C1FCBD0](2);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCProgressState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    if (v2 != 3)
    {
      MEMORY[0x24C1FCBD0](2);
      Hasher._combine(_:)(v2 & 1);
      return Hasher._finalize()();
    }

    v3 = 1;
  }

  MEMORY[0x24C1FCBD0](v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCProgressState(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t DOCFileOperationProgress.init(operation:observing:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DOCFileOperation(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15 - v11;
  outlined init with copy of DOCFileOperation(a1, &v15 - v11);
  outlined init with copy of DOCFileOperation(a1, v8);
  v13 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v12, v8, a2, v2);
  outlined destroy of DOCFileOperation(a1);
  return v13;
}

_BYTE *specialized DOCOperationProgress.deinit()
{
  swift_beginAccess();
  v0[25] = 1;
  (*(*v0 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd, &_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMR);
  swift_dynamicCast();
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v7);
  v6 = v0;

  swift_dynamicCast();
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 40))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  outlined destroy of CharacterSet?(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState], &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd, &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMR);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*&v6[direct field offset for DOCOperationProgress.updateHandler], *&v6[direct field offset for DOCOperationProgress.updateHandler + 8]);
  outlined destroy of DOCFileOperation(&v6[*(*v6 + 312)]);
  outlined destroy of AnyHashable(&v6[*(*v6 + 320)]);

  __swift_destroy_boxed_opaque_existential_0(&v6[*(*v6 + 352)]);

  outlined destroy of CharacterSet?(&v6[*(*v6 + 384)], &_sypSgMd, &_sypSgMR);

  return v0;
}

{
  swift_beginAccess();
  v0[25] = 1;
  (*(*v0 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd, &_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMR);
  swift_dynamicCast();
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v7);
  v6 = v0;

  swift_dynamicCast();
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v4 + 40))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  outlined destroy of CharacterSet?(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState], &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd, &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMR);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*&v6[direct field offset for DOCOperationProgress.updateHandler], *&v6[direct field offset for DOCOperationProgress.updateHandler + 8]);
  __swift_destroy_boxed_opaque_existential_0(&v6[*(*v6 + 312)]);
  outlined destroy of AnyHashable(&v6[*(*v6 + 320)]);

  __swift_destroy_boxed_opaque_existential_0(&v6[*(*v6 + 352)]);

  outlined destroy of CharacterSet?(&v6[*(*v6 + 384)], &_sypSgMd, &_sypSgMR);

  return v0;
}

_BYTE *DOCOperationProgress.deinit()
{
  v1 = *v0;
  swift_beginAccess();
  v0[25] = 1;
  (*(*v0 + 168))(0);
  type metadata accessor for DOCAbstractPacedPropertyUpdater(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd, &_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMR);
  swift_dynamicCast();
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v8);
  v7 = v0;

  swift_dynamicCast();
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v5 + 40))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v8);
  outlined destroy of CharacterSet?(&v0[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState], &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMd, &_s26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdaterC17ClientNotifyState33_E7CE5D8A171BAD2BCF9AA23BED53B5B3LLVSgMR);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*&v7[direct field offset for DOCOperationProgress.updateHandler], *&v7[direct field offset for DOCOperationProgress.updateHandler + 8]);
  (*(*(*(v1 + 296) - 8) + 8))(&v7[*(*v7 + 312)]);
  outlined destroy of AnyHashable(&v7[*(*v7 + 320)]);

  __swift_destroy_boxed_opaque_existential_0(&v7[*(*v7 + 352)]);

  outlined destroy of CharacterSet?(&v7[*(*v7 + 384)], &_sypSgMd, &_sypSgMR);

  return v0;
}

uint64_t DOCOperationProgress.updateHandler.getter()
{
  v1 = (v0 + direct field offset for DOCOperationProgress.updateHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1, v1[1]);
  return v2;
}

uint64_t DOCOperationProgress.updateHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for DOCOperationProgress.updateHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6, v7);
}

uint64_t DOCOperationProgress.operation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 312);
  swift_beginAccess();
  return (*(*(*(v3 + 296) - 8) + 16))(a1, v1 + v4);
}

uint64_t DOCOperationProgress.operation.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 312);
  swift_beginAccess();
  (*(*(*(v3 + 296) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t DOCOperationProgress.operationIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 320);
  swift_beginAccess();
  return outlined init with copy of AnyHashable(v1 + v3, a1);
}

uint64_t DOCOperationProgress.operationIdentifier.setter(uint64_t a1)
{
  v3 = *(*v1 + 320);
  swift_beginAccess();
  outlined assign with take of AnyHashable(a1, v1 + v3);
  return swift_endAccess();
}

void DOCOperationProgress.progressValue.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(*v1 + 328);
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;
}

void DOCOperationProgress.progressValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(*v1 + 328);
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
}

void DOCOperationProgress.state.getter(_BYTE *a1@<X8>)
{
  v3 = *(*v1 + 336);
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void DOCOperationProgress.state.setter(char *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 336);
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t DOCOperationProgress.localizedOperationDescription.getter()
{
  v0 = specialized DOCOperationProgress.cachedLocalizedOperationDescription.getter();

  return v0;
}

uint64_t DOCOperationProgress.localizedProgressDescription.getter()
{
  v0 = specialized DOCOperationProgress.cachedLocalizedProgressDescription.getter();

  return v0;
}

id DOCOperationProgress.icon(size:scale:)(double a1, double a2, double a3)
{
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DOCProgressProvidingOperationIconType(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v23[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DOCSidebarItemIconProvider(v3 + *(*v3 + 352), v23);
  v16 = v24;
  v17 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v17 + 32))(v16, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v8 + 32))(v11, v15, v7);
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v20 = DOCProgressIconForUTType(isa, a1, a2, a3);

    (*(v8 + 8))(v11, v7);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = DOCProgressIconForGenericDocument(a1, a2, a3);
    goto LABEL_7;
  }

  result = specialized static UIImage.doc_executablesFrameworkImage(named:)(*v15, v15[1]);
  if (result)
  {
    v20 = result;

LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(v23);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t DOCOperationProgress.debugID.getter()
{
  v1 = (v0 + *(*v0 + 344));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double DOCOperationProgress.debugID.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + *(*v4 + 344));
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;

  return result;
}

uint64_t DOCOperationProgress.progress.getter()
{
  outlined init with copy of DOCSidebarItemIconProvider(v0 + *(*v0 + 352), v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 24))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

Swift::String __swiftcall DOCOperationProgress.description(includingProgressDetails:)(Swift::Bool includingProgressDetails)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v50 - v15;
  v17 = DOCOperationProgress.progress.getter();
  v18 = [v17 fileURL];

  if (v18)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  outlined init with take of URL?(v12, v16);
  if ((*(v5 + 48))(v16, 1, v4))
  {
    v19 = outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v20 = 0xE500000000000000;
    v52 = 0x273F3F3F27;
  }

  else
  {
    (*(v5 + 16))(v8, v16, v4);
    outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v52 = URL.lastPathComponent.getter();
    v20 = v21;
    v19 = (*(v5 + 8))(v8, v4);
  }

  (*(*v2 + 464))(&v53, v19);
  v22 = AnyHashable.description.getter();
  v24 = v23;
  outlined destroy of AnyHashable(&v53);
  v51 = specialized Collection.prefix(_:)(6, v22, v24);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  if (includingProgressDetails)
  {
    v53 = 32;
    v54 = 0xE100000000000000;
    v31 = DOCOperationProgress.progress.getter();
    v32 = [v31 description];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    MEMORY[0x24C1FAEA0](v33, v35);

    MEMORY[0x24C1FAEA0](59, 0xE100000000000000);
    v37 = v53;
    v36 = v54;
  }

  else
  {
    v37 = 0;
    v36 = 0xE000000000000000;
  }

  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v53 = 60;
  v54 = 0xE100000000000000;
  v38 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v38);

  v39 = MEMORY[0x24C1FAEA0](0x496775626564203ALL, 0xEC000000203D2044);
  v40 = (*(*v2 + 560))(v39);
  v41 = MEMORY[0x24C1FAE00](v40);
  v43 = v42;

  MEMORY[0x24C1FAEA0](v41, v43);

  MEMORY[0x24C1FAEA0](0x203D204449706F20, 0xE800000000000000);
  v44 = MEMORY[0x24C1FAE00](v51, v26, v28, v30);
  v46 = v45;

  MEMORY[0x24C1FAEA0](v44, v46);

  MEMORY[0x24C1FAEA0](0x3D20656C6966203BLL, 0xEA00000000002720);
  MEMORY[0x24C1FAEA0](v52, v20);

  MEMORY[0x24C1FAEA0](15143, 0xE200000000000000);
  MEMORY[0x24C1FAEA0](v37, v36);

  MEMORY[0x24C1FAEA0](62, 0xE100000000000000);
  v47 = v53;
  v48 = v54;
  result._object = v48;
  result._countAndFlagsBits = v47;
  return result;
}

DocumentManagerExecutables::DOCPacedPropertyUpdaterNotifyType __swiftcall DOCOperationProgress.updateProperties()()
{
  v1 = (*(*v0 + 680))(&v16);
  v2 = LOBYTE(v16);
  (*(*v0 + 512))(&v16, v1);
  if (v2 == 2)
  {
    if (LOBYTE(v16) == 2)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (v2 == 3)
  {
    if (LOBYTE(v16) != 3)
    {
      goto LABEL_8;
    }

LABEL_6:
    v3 = 0;
    goto LABEL_10;
  }

  if ((LOBYTE(v16) & 0xFE) == 2)
  {
LABEL_8:
    v3 = 1;
    goto LABEL_10;
  }

  v3 = LOBYTE(v16) ^ v2;
LABEL_10:
  v4 = DOCOperationProgress.progress.getter();
  v5 = [v4 isIndeterminate];
  if (v5)
  {

    v6 = 0.0;
  }

  else
  {
    [v4 fractionCompleted];
    v8 = v7;

    v9 = fmin(v8, 1.0);
    if (v9 < 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v9;
    }
  }

  (*(*v0 + 488))(&v16);
  if ((v5 & 1) == 0)
  {
    if ((v17 & 1) == 0)
    {
      v10 = v6 != v16;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if ((v17 & 1) == 0)
  {
LABEL_19:
    v10 = 1;
    goto LABEL_21;
  }

  v10 = 0;
LABEL_21:
  v11 = *(*v0 + 336);
  swift_beginAccess();
  *(v0 + v11) = v2;
  v12 = v0 + *(*v0 + 328);
  swift_beginAccess();
  *v12 = v6;
  *(v12 + 8) = v5;
  v13 = *(*v0 + 368);
  swift_beginAccess();
  *(v0 + v13) = 0;
  v14 = *(*v0 + 376);
  swift_beginAccess();
  *(v0 + v14) = 0;
  return (v3 | v10) & 1;
}

void DOCOperationProgress.calculateState()(char *a1@<X8>)
{
  v3 = DOCOperationProgress.progress.getter();
  if ([v3 isCancelled])
  {

    v4 = 1;
  }

  else if (([v3 isFinished] & 1) != 0 || (objc_msgSend(v3, sel_fractionCompleted), v5 >= 1.0))
  {

    v4 = 0;
  }

  else
  {
    v6 = [v3 isPaused];

    if (v6)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }
  }

  if (*(v1 + *(*v1 + 392)))
  {
    v4 = 1;
  }

  *a1 = v4;
}

Swift::Void __swiftcall DOCOperationProgress.notifyClient()()
{
  v1 = (*(*v0 + 416))();
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v1();

    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  }
}

uint64_t DOCOperationProgress.progressPubSubObservance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 384);
  swift_beginAccess();
  return outlined init with copy of Any?(v1 + v3, a1);
}

uint64_t DOCOperationProgress.progressPubSubObservance.setter(uint64_t a1)
{
  v3 = *(*v1 + 384);
  swift_beginAccess();
  outlined assign with take of Any?(a1, v1 + v3);
  return swift_endAccess();
}

double DOCOperationProgress.kvoObservancesProgressState.setter(uint64_t a1)
{
  v3 = *(*v1 + 400);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double DOCOperationProgress.kvoObservancesProgressValue.setter(uint64_t a1)
{
  v3 = *(*v1 + 408);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

Swift::Void __swiftcall DOCOperationProgress.installObservations()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v67 = &v65 - v5;
  v6 = type metadata accessor for URL();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 296);
  v12 = type metadata accessor for DOCOperationProgress(255, v9, v10, v11);
  type metadata accessor for DOCWeakUncheckedSendable(0, v12, v13, v14);
  v18 = specialized DOCWeakUncheckedSendable.__allocating_init(_:)(v0, v15, v16, v17);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v9;
  *(v20 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in DOCOperationProgress.installObservations();
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for closure #1 in DOCOperationProgress.installObservations();
  *(v22 + 24) = v20;
  v71 = v22;
  aBlock[0] = *(v1 + *(*v1 + 360));
  v73 = 1;
  type metadata accessor for DOCOperationProgress.ObservedEvent(255, v9, v23, v24);
  type metadata accessor for Array();
  swift_retain_n();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v25 = Sequence<>.contains(_:)();
  aBlock[0] = *(v1 + *(*v1 + 360));
  v73 = 0;
  v26 = Sequence<>.contains(_:)();
  v70 = v25;
  if (v25)
  {
    v65 = v18;
    v27 = DOCOperationProgress.progress.getter();
    aBlock[0] = v27;
    swift_getKeyPath();
    v28 = swift_allocObject();
    *(v28 + 16) = partial apply for closure #2 in DOCOperationProgress.installObservations();
    *(v28 + 24) = v21;

    _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v29 = *(*v0 + 408);
    v30 = swift_beginAccess();
    MEMORY[0x24C1FB090](v30);
    if (*((*(v0 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v31 = DOCOperationProgress.progress.getter();
    aBlock[0] = v31;
    swift_getKeyPath();
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for closure #3 in DOCOperationProgress.installObservations();
    *(v32 + 24) = v71;

    v33 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v34 = static DOCLog.UI;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_249B9FA70;
    v36 = DOCOperationProgress.progress.getter();
    *(v35 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
    *(v35 + 64) = lazy protocol witness table accessor for type NSProgress and conformance NSObject();
    *(v35 + 32) = v36;
    *(v35 + 96) = type metadata accessor for NSKeyValueObservation();
    *(v35 + 104) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type NSKeyValueObservation and conformance NSObject, MEMORY[0x277CC9100], MEMORY[0x277D85388]);
    *(v35 + 72) = v33;
    v37 = v33;
    v38 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Progress: [Operation Progress] ADD fractionCompleted observer for: %{public}@, observation: {public}%@", 102, 2, &dword_2493AC000, v34, v38, v35);

    swift_beginAccess();
    v39 = v37;
    MEMORY[0x24C1FB090]();
    if (*((*(v1 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    v18 = v65;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_21;
  }

  v40 = DOCOperationProgress.progress.getter();
  aBlock[0] = v40;
  swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for closure #2 in DOCOperationProgress.installObservations();
  *(v41 + 24) = v21;

  _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v42 = *(*v1 + 400);
  v43 = swift_beginAccess();
  MEMORY[0x24C1FB090](v43);
  if (*((*(v1 + v42) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v42) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v44 = DOCOperationProgress.progress.getter();
  aBlock[0] = v44;
  swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for closure #2 in DOCOperationProgress.installObservations();
  *(v45 + 24) = v21;

  _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v46 = swift_beginAccess();
  MEMORY[0x24C1FB090](v46);
  if (*((*(v1 + v42) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v42) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if ((v70 & 1) == 0)
  {
    v47 = DOCOperationProgress.progress.getter();
    aBlock[0] = v47;
    swift_getKeyPath();
    v48 = swift_allocObject();
    *(v48 + 16) = partial apply for closure #2 in DOCOperationProgress.installObservations();
    *(v48 + 24) = v21;

    _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v49 = swift_beginAccess();
    MEMORY[0x24C1FB090](v49);
    if (*((*(v1 + v42) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v42) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v50 = DOCOperationProgress.progress.getter();
  if ([v50 isCancelled] || objc_msgSend(v50, sel_isFinished))
  {

LABEL_21:

LABEL_22:

    return;
  }

  [v50 fractionCompleted];
  if (v51 >= 1.0)
  {

    goto LABEL_22;
  }

  [v50 isPaused];

  v52 = DOCOperationProgress.progress.getter();
  v53 = v67;
  NSProgress.publishedFileURL.getter(v67);

  v54 = v68;
  if ((*(v68 + 48))(v53, 1, v69) == 1)
  {

    outlined destroy of CharacterSet?(v53, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v55 = v66;
    (*(v54 + 32))();
    v56 = v54;
    v57 = objc_opt_self();
    v58 = v55;
    URL._bridgeToObjectiveC()(v59);
    v61 = v60;
    v62 = swift_allocObject();
    *(v62 + 16) = partial apply for closure #9 in DOCOperationProgress.installObservations();
    *(v62 + 24) = v18;
    aBlock[4] = _sSo10NSProgressCIeg_SgIeghgo_ABIegh_SgIeghgo_TRTA_0;
    aBlock[5] = v62;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSProgress) -> (@owned (@escaping @callee_guaranteed @Sendable () -> ())?);
    aBlock[3] = &block_descriptor_60;
    v63 = _Block_copy(aBlock);

    v64 = [v57 addSubscriberForFileURL:v61 withPublishingHandler:v63];
    _Block_release(v63);

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    DOCOperationProgress.progressPubSubObservance.setter(aBlock);

    (*(v56 + 8))(v58, v69);
  }
}

Swift::Void __swiftcall DOCOperationProgress.uninstallObservations()()
{
  v1 = v0;
  v2 = *(*v0 + 400);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (i)
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x24C1FC540](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        dispatch thunk of NSKeyValueObservation.invalidate()();

        ++v5;
        if (v8 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_12:

    DOCOperationProgress.kvoObservancesProgressState.setter(MEMORY[0x277D84F90]);
    v9 = *(*v1 + 408);
    swift_beginAccess();
    v3 = *(v1 + v9);
    v10 = v3 >> 62 ? __CocoaSet.count.getter() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v10)
    {
      break;
    }

    v11 = 0;
    v1 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v11, v3);
      }

      else
      {
        if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v12 = *(v3 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v15 = static DOCLog.UI;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_249B9A480;
      *(v16 + 56) = type metadata accessor for NSKeyValueObservation();
      *(v16 + 64) = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type NSKeyValueObservation and conformance NSObject, MEMORY[0x277CC9100], MEMORY[0x277D85388]);
      *(v16 + 32) = v13;
      v17 = v13;
      v18 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Progress: [Operation Progress] REMOVE observation: %{public}@", 61, 2, &dword_2493AC000, v15, v18, v16);

      dispatch thunk of NSKeyValueObservation.invalidate()();

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_25;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_25:

  DOCOperationProgress.kvoObservancesProgressValue.setter(MEMORY[0x277D84F90]);
  DOCOperationProgress.progressPubSubObservance.getter(&v20);
  if (*(&v21 + 1))
  {
    outlined init with take of Any(&v20, &v22);
    v19 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    [v19 removeSubscriber_];
    swift_unknownObjectRelease();
    v20 = 0u;
    v21 = 0u;
    DOCOperationProgress.progressPubSubObservance.setter(&v20);
    __swift_destroy_boxed_opaque_existential_0(&v22);
  }

  else
  {
    outlined destroy of CharacterSet?(&v20, &_sypSgMd, &_sypSgMR);
  }
}

uint64_t DOCGenericOperationProgress.init(operation:observing:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v10[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v5, v4);
  outlined init with copy of DOCSidebarItemIconProvider(a1, v9);
  v7 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(v10, v9, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t DOCFileOperationProgress.__deallocating_deinit(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t (*key path getter for DOCOperationProgress.updateHandler : <A>DOCOperationProgress<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>))()
{
  v5 = *(a2 + a3 - 8);
  result = (*(**a1 + 416))();
  if (result)
  {
    v8 = result;
    v9 = v7;
    result = swift_allocObject();
    *(result + 2) = v5;
    *(result + 3) = v8;
    *(result + 4) = v9;
    v10 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCOperationProgress<A>) -> ();
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  a4[1] = result;
  return result;
}

uint64_t key path setter for DOCOperationProgress.updateHandler : <A>DOCOperationProgress<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 424);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  return v7(v6, v5);
}

uint64_t key path setter for DOCOperationProgress.operation : <A>DOCOperationProgress<A>(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1, a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return DOCOperationProgress.operation.setter(v3);
}

Swift::Int DOCOperationProgress.ObservedEvent.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCOperationProgress<A>.ObservedEvent(uint64_t a1)
{
  Hasher.init(_seed:)();
  DOCOperationProgress.ObservedEvent.hash(into:)();
  return Hasher._finalize()();
}

uint64_t DOCOperationProgress.OperationWithProvider.init(operation:progressProvider:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v9 = a4 + *(type metadata accessor for DOCOperationProgress.OperationWithProvider(0, a3, v7, v8) + 28);

  return outlined init with take of DOCDSCopyEngineConnection(a2, v9);
}

uint64_t static DOCOperationProgress._new(withOperation:progressProvider:observing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 296);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DOCOperationProgress.OperationWithProvider(0, v7, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v22 - v16;
  type metadata accessor for DOCOperationProgress(0, v7, v18, v19);
  (*(v8 + 16))(v10, a1, v7);
  outlined init with copy of DOCSidebarItemIconProvider(a2, v23);
  DOCOperationProgress.OperationWithProvider.init(operation:progressProvider:)(v10, v23, v7, v17);

  v20 = specialized DOCOperationProgress.__allocating_init(operationWithProvider:observing:)(v17, a3);
  (*(v14 + 8))(v17, v13);
  return v20;
}

void *DOCOperationProgress.__allocating_init(_:progressProvider:observing:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_allocObject();
  v8 = specialized DOCOperationProgress.init(_:progressProvider:observing:)(a1, a2, a3);
  (*(*(*(v4 + 296) - 8) + 8))(a1);
  return v8;
}

void closure #1 in DOCOperationProgress.cachedLocalizedOperationDescription.getter(uint64_t *a1@<X8>)
{
  v2 = DOCOperationProgress.progress.getter();
  v3 = [v2 localizedDescription];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in DOCOperationProgress.cachedLocalizedProgressDescription.getter(uint64_t *a1@<X8>)
{
  v2 = DOCOperationProgress.progress.getter();
  [v2 fractionCompleted];
  if (v3 <= 0.0)
  {
    v5 = [v2 fileOperationKind];
    v6 = specialized static DOCProgressUI.preparingToStartMessage(forOperation:)(v5);
    goto LABEL_5;
  }

  v4 = [v2 localizedAdditionalDescription];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_5:
    v8 = v6;
    v9 = v7;

    *a1 = v8;
    a1[1] = v9;
    return;
  }

  __break(1u);
}

void DOCOperationProgress.progressDidUnpublish.didset()
{
  if (*(v0 + 32) <= 0)
  {
    v4[0] = 0;
    v4[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    MEMORY[0x24C1FAEA0](0xD000000000000023, 0x8000000249BD88B0);
    type metadata accessor for DOCAbstractPacedPropertyUpdater(0);
    _print_unlocked<A, B>(_:_:)();

    v7 = v0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMd, &_s26DocumentManagerExecutables23DOCPacedPropertyUpdater_pMR);
    swift_dynamicCast();
    v1 = v5;
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v4);
    if (v3)
    {
      DOCAbstractPacedPropertyUpdater.triggerNotifyClient(immediate:)(v3 == 2);
    }
  }
}

double closure #1 in DOCOperationProgress.installObservations()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a6;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a4;
  v14[7] = a5;
  v14[8] = a3;

  v15 = a3;
  DOCRunInMainThread(_:)();

  return result;
}

double closure #1 in closure #1 in DOCOperationProgress.installObservations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = (*(*Strong + 96))(Strong);

    if (v13)
    {
      _StringGuts.grow(_:)(37);

      MEMORY[0x24C1FAEA0](a2, a3);
      v14 = MEMORY[0x24C1FAEA0](543584032, 0xE400000000000000);
      v15 = (*(*v13 + 560))(v14);
      v16 = MEMORY[0x24C1FAE00](v15);
      v18 = v17;

      MEMORY[0x24C1FAEA0](v16, v18);

      MEMORY[0x24C1FAEA0](0x6465676E61686320, 0xED0000203A6F7420);
      MEMORY[0x24C1FAEA0](a4, a5);

      if (([a6 isCancelled] & 1) != 0 || objc_msgSend(a6, sel_isFinished) || (objc_msgSend(a6, sel_fractionCompleted), v19 >= 1.0))
      {
        v20 = 1;
      }

      else
      {
        [a6 isPaused];
        v20 = 0;
      }

      DOCAbstractPacedPropertyUpdater.setNeedsUpdateProperties(notifyImmediately:)(v20);
    }
  }

  return result;
}

double closure #2 in DOCOperationProgress.installObservations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24NSKeyValueObservedChangeVySbGMd, &_s10Foundation24NSKeyValueObservedChangeVySbGMR);
  NSKeyValueObservedChange.oldValue.getter();
  NSKeyValueObservedChange.newValue.getter();
  if (v16 == 2)
  {
    if (v15 == 2)
    {
      return result;
    }
  }

  else if (v15 != 2 && ((v16 ^ v15) & 1) == 0)
  {
    return result;
  }

  NSKeyValueObservedChange.newValue.getter();
  v10 = 1702195828;
  if ((v14 & 1) == 0)
  {
    v10 = 0x65736C6166;
  }

  v11 = 0xE400000000000000;
  if ((v14 & 1) == 0)
  {
    v11 = 0xE500000000000000;
  }

  if (v14 == 2)
  {
    v12 = 0x2A6C696E2ALL;
  }

  else
  {
    v12 = v10;
  }

  if (v14 == 2)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = v11;
  }

  a5(a1, a2, a3, v12, v13);

  return result;
}

void closure #3 in DOCOperationProgress.installObservations()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24NSKeyValueObservedChangeVySdGMd, &_s10Foundation24NSKeyValueObservedChangeVySdGMR);
  NSKeyValueObservedChange.oldValue.getter();
  NSKeyValueObservedChange.newValue.getter();
  if (v15)
  {
    if (v13)
    {
      return;
    }
  }

  else if ((v13 & 1) == 0 && v14 == v12)
  {
    return;
  }

  NSKeyValueObservedChange.newValue.getter();
  if (v15)
  {
    v9 = 0xE500000000000000;
    v10 = 0x2A6C696E2ALL;
  }

  else
  {
    v10 = Double.description.getter();
    v9 = v11;
  }

  a5(a1, a2, a3, v10, v9);
}

uint64_t closure #1 in closure #9 in DOCOperationProgress.installObservations()(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = *(*(v1 + 80) + 296);
  *(v14 + 24) = v13;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #9 in DOCOperationProgress.installObservations();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_210;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

double closure #1 in closure #1 in closure #9 in DOCOperationProgress.installObservations()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = (*(*Strong + 96))();

    if (v3)
    {
      *(v3 + *(*v3 + 392)) = 1;
      DOCOperationProgress.progressDidUnpublish.didset();
    }
  }

  return result;
}

double DOCOperationProgress.__ivar_destroyer()
{
  v1 = *v0;
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*(v0 + direct field offset for DOCOperationProgress.updateHandler), *(v0 + direct field offset for DOCOperationProgress.updateHandler + 8));
  (*(*(*(v1 + 296) - 8) + 8))(v0 + *(*v0 + 312));
  outlined destroy of AnyHashable(v0 + *(*v0 + 320));

  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 352)));

  outlined destroy of CharacterSet?(v0 + *(*v0 + 384), &_sypSgMd, &_sypSgMR);

  return result;
}

uint64_t DOCOperationProgress.__deallocating_deinit()
{
  DOCOperationProgress.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized DOCOperationProgress.init(_:progressProvider:observing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v36 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[3] = type metadata accessor for DOCFileOperation(0);
  v37[4] = &protocol witness table for DOCFileOperation;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  outlined init with take of DOCFileOperation(a2, boxed_opaque_existential_1);
  v12 = (a4 + direct field offset for DOCOperationProgress.updateHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = a4 + *(*a4 + 328);
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = *(*a4 + 336);
  *(a4 + v14) = 2;
  v15 = (a4 + *(*a4 + 344));
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  v19 = specialized Collection.prefix(_:)(6, v16, v18);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  *v15 = v19;
  v15[1] = v21;
  v15[2] = v23;
  v15[3] = v25;
  v26 = a4 + *(*a4 + 368);
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0xE000000000000000;
  v27 = a4 + *(*a4 + 376);
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0xE000000000000000;
  v28 = (a4 + *(*a4 + 384));
  *v28 = 0u;
  v28[1] = 0u;
  *(a4 + *(*a4 + 392)) = 0;
  v29 = MEMORY[0x277D84F90];
  *(a4 + *(*a4 + 400)) = MEMORY[0x277D84F90];
  *(a4 + *(*a4 + 408)) = v29;
  v30 = v35;
  outlined init with copy of DOCFileOperation(v35, a4 + *(*a4 + 312));
  outlined init with copy of AnyHashable(boxed_opaque_existential_1, a4 + *(*a4 + 320));
  outlined init with copy of DOCSidebarItemIconProvider(v37, a4 + *(*a4 + 352));
  *(a4 + *(*a4 + 360)) = v36;
  swift_beginAccess();
  *(a4 + v14) = 2;
  swift_beginAccess();
  *v13 = 0;
  *(v13 + 8) = 1;
  *(a4 + 24) = 256;
  *(a4 + 32) = 0;
  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  v32 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v32 - 8) + 56))(a4 + v31, 1, 1, v32);
  *(a4 + 16) = 0x3FE0000000000000;
  DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(0);
  outlined destroy of DOCFileOperation(v30);
  __swift_destroy_boxed_opaque_existential_0(v37);
  return a4;
}

uint64_t specialized DOCOperationProgress.init(_:progressProvider:observing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a6;
  v42 = a1;
  v43 = a3;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[3] = a5;
  v46[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v15 = (a4 + direct field offset for DOCOperationProgress.updateHandler);
  *v15 = 0;
  v15[1] = 0;
  v16 = a4 + *(*a4 + 328);
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = *(*a4 + 336);
  *(a4 + v17) = 2;
  v18 = (a4 + *(*a4 + 344));
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v11 + 8))(v14, v10);
  v22 = specialized Collection.prefix(_:)(6, v19, v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  *v18 = v22;
  v18[1] = v24;
  v18[2] = v26;
  v18[3] = v28;
  v29 = a4 + *(*a4 + 368);
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0xE000000000000000;
  v30 = a4 + *(*a4 + 376);
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0xE000000000000000;
  v31 = (a4 + *(*a4 + 384));
  *v31 = 0u;
  v31[1] = 0u;
  *(a4 + *(*a4 + 392)) = 0;
  v32 = MEMORY[0x277D84F90];
  *(a4 + *(*a4 + 400)) = MEMORY[0x277D84F90];
  *(a4 + *(*a4 + 408)) = v32;
  v33 = v42;
  outlined init with copy of DOCFileOperation(v42, a4 + *(*a4 + 312));
  (*(v41 + 8))(v44, a5);
  v34 = a4 + *(*a4 + 320);
  v35 = v44[1];
  *v34 = v44[0];
  *(v34 + 16) = v35;
  *(v34 + 32) = v45;
  outlined init with copy of DOCSidebarItemIconProvider(v46, a4 + *(*a4 + 352));
  *(a4 + *(*a4 + 360)) = v43;
  swift_beginAccess();
  *(a4 + v17) = 2;
  swift_beginAccess();
  *v16 = 0;
  *(v16 + 8) = 1;
  *(a4 + 24) = 256;
  *(a4 + 32) = 0;
  v36 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  v37 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v37 - 8) + 56))(a4 + v36, 1, 1, v37);
  *(a4 + 16) = 0x3FE0000000000000;
  DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(0);
  outlined destroy of DOCFileOperation(v33);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return a4;
}

void *specialized DOCOperationProgress.init(_:progressProvider:observing:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v39 = a3;
  v37 = *v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v4 + direct field offset for DOCOperationProgress.updateHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = v4 + *(*v4 + 328);
  *v12 = 0;
  v12[8] = 1;
  v13 = *(*v4 + 336);
  *(v4 + v13) = 2;
  v14 = (v4 + *(*v4 + 344));
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  v18 = specialized Collection.prefix(_:)(6, v15, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  *v14 = v18;
  v14[1] = v20;
  v14[2] = v22;
  v14[3] = v24;
  v25 = v4 + *(*v4 + 368);
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0xE000000000000000;
  v26 = v4 + *(*v4 + 376);
  *v26 = 0;
  *(v26 + 1) = 0;
  *(v26 + 2) = 0xE000000000000000;
  v27 = (v4 + *(*v4 + 384));
  *v27 = 0u;
  v27[1] = 0u;
  *(v4 + *(*v4 + 392)) = 0;
  v28 = MEMORY[0x277D84F90];
  *(v4 + *(*v4 + 400)) = MEMORY[0x277D84F90];
  *(v4 + *(*v4 + 408)) = v28;
  (*(*(*(v37 + 296) - 8) + 16))(v4 + *(*v4 + 312), v38);
  v29 = a2[3];
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  (*(v30 + 8))(v40, v29, v30);
  v31 = v4 + *(*v4 + 320);
  v32 = v40[1];
  *v31 = v40[0];
  *(v31 + 1) = v32;
  *(v31 + 4) = v41;
  outlined init with copy of DOCSidebarItemIconProvider(a2, v4 + *(*v4 + 352));
  *(v4 + *(*v4 + 360)) = v39;
  swift_beginAccess();
  *(v4 + v13) = 2;
  swift_beginAccess();
  *v12 = 0;
  v12[8] = 1;
  *(v4 + 12) = 256;
  v4[4] = 0;
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCAbstractPacedPropertyUpdater____lazy_storage___clientNotifyState;
  v34 = type metadata accessor for DOCAbstractPacedPropertyUpdater.ClientNotifyState(0);
  (*(*(v34 - 8) + 56))(v4 + v33, 1, 1, v34);
  v4[2] = 0x3FE0000000000000;
  DOCAbstractPacedPropertyUpdater.triggerUpdateProperties(notifyType:)(0);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v4;
}

uint64_t specialized DOCOperationProgress.cachedLocalizedOperationDescription.getter()
{
  v1 = v0 + *(*v0 + 368);
  swift_beginAccess();
  if ((*v1 & 1) == 0)
  {
    closure #1 in DOCOperationProgress.cachedLocalizedOperationDescription.getter(v5);
    v2 = v5[1];
    *(v1 + 8) = v5[0];
    *(v1 + 16) = v2;

    *v1 = 1;
  }

  v3 = *(v1 + 8);
  swift_endAccess();
  return v3;
}

uint64_t specialized DOCOperationProgress.cachedLocalizedProgressDescription.getter()
{
  v1 = v0 + *(*v0 + 376);
  swift_beginAccess();
  if ((*v1 & 1) == 0)
  {
    closure #1 in DOCOperationProgress.cachedLocalizedProgressDescription.getter(v5);
    v2 = v5[1];
    *(v1 + 8) = v5[0];
    *(v1 + 16) = v2;

    *v1 = 1;
  }

  v3 = *(v1 + 8);
  swift_endAccess();
  return v3;
}

uint64_t specialized DOCOperationProgress.__allocating_init(operationWithProvider:observing:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 296);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v9 + 16))(v8, a1, v5, v6);
  v12 = type metadata accessor for DOCOperationProgress.OperationWithProvider(0, v5, v10, v11);
  outlined init with copy of DOCSidebarItemIconProvider(a1 + *(v12 + 28), v15);
  return (*(v2 + 640))(v8, v15, a2);
}

unint64_t lazy protocol witness table accessor for type DOCProgressValue and conformance DOCProgressValue()
{
  result = lazy protocol witness table cache variable for type DOCProgressValue and conformance DOCProgressValue;
  if (!lazy protocol witness table cache variable for type DOCProgressValue and conformance DOCProgressValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProgressValue and conformance DOCProgressValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCProgressState and conformance DOCProgressState()
{
  result = lazy protocol witness table cache variable for type DOCProgressState and conformance DOCProgressState;
  if (!lazy protocol witness table cache variable for type DOCProgressState and conformance DOCProgressState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCProgressState and conformance DOCProgressState);
  }

  return result;
}

uint64_t type metadata completion function for DOCOperationProgress(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t type metadata completion function for DOCOperationProgress.OperationWithProvider(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DOCProgressProvidingOperation();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCOperationProgress.OperationWithProvider(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for DOCOperationProgress.OperationWithProvider(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

unint64_t type metadata accessor for DOCProgressProvidingOperation()
{
  result = lazy cache variable for type metadata for DOCProgressProvidingOperation;
  if (!lazy cache variable for type metadata for DOCProgressProvidingOperation)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DOCProgressProvidingOperation);
  }

  return result;
}

uint64_t type metadata completion function for CachedValue(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CachedValue(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for CachedValue(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t UITraitCollection.doc_browserLayoutConfiguration.getter()
{
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  return v1;
}

objc_class *DOCBrowserLayoutConfiguration.SizeSetting.localizedName.getter(uint64_t a1)
{
  v1 = a1;
  result = _DocumentManagerBundle();
  v3 = result;
  if (!v1)
  {
    if (result)
    {
      v4 = "ist Size's 'Custom' Setting";
      v15 = 0x8000000249BDE4A0;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0x6361706D6F43;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v1 == 1)
  {
    if (result)
    {
      v4 = "ist Size's 'Compact' Setting";
      v15 = 0x8000000249BDE4F0;
      v5 = 0x617A696C61636F4CLL;
      v6 = 0xEB00000000656C62;
      v7 = 0x6C7561666544;
LABEL_7:
      v8 = v7 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      v9 = v4 | 0x8000000000000000;
      v10 = 0xD00000000000002CLL;
      v11 = 0xD000000000000016;
      v12.super.isa = v3;
      v13 = 0xE700000000000000;
LABEL_10:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v5, v12, *&v8, *(&v15 - 1))._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result)
  {
    v11 = 0xD000000000000015;
    v15 = 0x8000000249BDE450;
    v5 = 0x617A696C61636F4CLL;
    v6 = 0xEB00000000656C62;
    v8 = 0x6D6F74737543;
    v9 = 0x8000000249BDE430;
    v10 = 0xD00000000000002BLL;
    v12.super.isa = v3;
    v13 = 0xE600000000000000;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static DOCBrowserLayoutConfiguration.nextSizeSliderValue(sizeSliderValue:direction:)(uint64_t a1, _BYTE *a2)
{
  v2 = -4;
  if (!*a2)
  {
    v2 = 4;
  }

  v3 = __OFADD__(a1, v2);
  result = a1 + v2;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

DocumentManagerExecutables::DOCBrowserLayoutConfiguration::SizeSetting_optional __swiftcall DOCBrowserLayoutConfiguration.SizeSetting.nextSizeSetting(direction:)(DocumentManagerExecutables::DOCAdjustmentDirection direction)
{
  v2 = *direction;
  result.value = DocumentManagerExecutables_DOCBrowserLayoutConfiguration_SizeSetting_unknownDefault;
  if (v1)
  {
    if (v1 != 1)
    {
      return result;
    }

    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2)
  {
    v5 = v4 - 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5)
  {
    v6.value = DocumentManagerExecutables_DOCBrowserLayoutConfiguration_SizeSetting_unknownDefault;
  }

  else
  {
    v6.value = DocumentManagerExecutables_DOCBrowserLayoutConfiguration_SizeSetting_regular;
  }

  if (v5 == -1)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

DocumentManagerExecutables::DOCBrowserLayoutConfiguration::SizeSetting_optional __swiftcall DOCBrowserLayoutConfiguration.SizeSetting.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 1) >= 4)
  {
    return 3;
  }

  else
  {
    return (0x2030100u >> (8 * (rawValue + 1)));
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCBrowserLayoutConfiguration.SizeSetting()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](qword_249BAA640[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCBrowserLayoutConfiguration.SizeSetting(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](qword_249BAA640[v2]);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DOCBrowserLayoutConfiguration.SizeSetting@<X0>(void *result@<X0>, char *a2@<X8>)
{
  v2 = *result + 1;
  if (v2 >= 4)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x2030100u >> (8 * v2);
  }

  *a2 = v3;
  return result;
}

BOOL static DOCBrowserLayoutConfiguration.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  return qword_249BAA640[a2] == qword_249BAA640[a5] && a3 == a6;
}

uint64_t DOCBrowserLayoutConfiguration.hash(into:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  MEMORY[0x24C1FCBD0](a2);
  MEMORY[0x24C1FCBD0](qword_249BAA640[a3]);
  return MEMORY[0x24C1FCBD0](a4);
}

Swift::Int DOCBrowserLayoutConfiguration.hashValue.getter(uint64_t a1, char a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  MEMORY[0x24C1FCBD0](qword_249BAA640[a2]);
  MEMORY[0x24C1FCBD0](a3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCBrowserLayoutConfiguration(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return qword_249BAA640[*(a1 + 8)] == qword_249BAA640[*(a2 + 8)] && *(a1 + 16) == *(a2 + 16);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCBrowserLayoutConfiguration()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  MEMORY[0x24C1FCBD0](qword_249BAA640[v2]);
  MEMORY[0x24C1FCBD0](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DOCBrowserLayoutConfiguration()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x24C1FCBD0](*v0);
  MEMORY[0x24C1FCBD0](qword_249BAA640[v1]);
  return MEMORY[0x24C1FCBD0](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCBrowserLayoutConfiguration(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v2);
  MEMORY[0x24C1FCBD0](qword_249BAA640[v3]);
  MEMORY[0x24C1FCBD0](v4);
  return Hasher._finalize()();
}

uint64_t static DOCBrowserLayoutConfiguration.Trait.name.getter()
{
  swift_beginAccess();
  v0 = static DOCBrowserLayoutConfiguration.Trait.name;

  return v0;
}

double static DOCBrowserLayoutConfiguration.Trait.name.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static DOCBrowserLayoutConfiguration.Trait.name = a1;
  off_27EEEAC78 = a2;

  return result;
}

double key path setter for static DOCBrowserLayoutConfiguration.Trait.name : DOCBrowserLayoutConfiguration.Trait.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static DOCBrowserLayoutConfiguration.Trait.name = v2;
  off_27EEEAC78 = v1;

  return result;
}

void static DOCBrowserLayoutConfiguration.Trait.defaultValue.setter(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  static DOCBrowserLayoutConfiguration.Trait.defaultValue = a1;
  byte_27EEEAC88 = a2;
  qword_27EEEAC90 = a3;
}

void protocol witness for static UITraitDefinition.defaultValue.getter in conformance DOCBrowserLayoutConfiguration.Trait(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27EEEAC88;
  v3 = qword_27EEEAC90;
  *a1 = static DOCBrowserLayoutConfiguration.Trait.defaultValue;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t protocol witness for static UITraitDefinition.name.getter in conformance DOCBrowserLayoutConfiguration.Trait()
{
  swift_beginAccess();
  v0 = static DOCBrowserLayoutConfiguration.Trait.name;

  return v0;
}

uint64_t UIMutableTraits.doc_browserLayoutConfiguration.getter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v3;
}

void (*UIMutableTraits.doc_browserLayoutConfiguration.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[7] = a3;
  v7[8] = v3;
  v7[6] = a2;
  v7[3] = UIMutableTraits.doc_browserLayoutConfiguration.getter(a2, a3);
  v8 += 3;
  *(v8 + 8) = v9;
  v8[2] = v10;
  return UIMutableTraits.doc_browserLayoutConfiguration.modify;
}

void UIMutableTraits.doc_browserLayoutConfiguration.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  *v1 = *(*a1 + 24);
  v1[8] = v2;
  *(v1 + 2) = v3;
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  dispatch thunk of UIMutableTraits.subscript.setter();

  free(v1);
}

void protocol witness for static EnvironmentKey.defaultValue.getter in conformance BrowserConfigurationKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 42;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance BrowserConfigurationKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration and conformance DOCBrowserLayoutConfiguration();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.browserConfiguration.getter()
{
  lazy protocol witness table accessor for type BrowserConfigurationKey and conformance BrowserConfigurationKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t (*EnvironmentValues.browserConfiguration.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = lazy protocol witness table accessor for type BrowserConfigurationKey and conformance BrowserConfigurationKey();
  EnvironmentValues.subscript.getter();
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  return EnvironmentValues.browserConfiguration.modify;
}

void EnvironmentValues.browserConfiguration.modify(void **a1)
{
  v2 = *(*a1 + 8);
  v3 = (*a1)[2];
  v1 = *a1;
  *(v1 + 3) = **a1;
  v1[32] = v2;
  *(v1 + 5) = v3;
  EnvironmentValues.subscript.setter();

  free(v1);
}

uint64_t static BrowserConfigurationKey.read(from:)()
{
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  UITraitCollection.subscript.getter();
  return v1;
}

uint64_t static BrowserConfigurationKey.write(to:value:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

void *protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance BrowserConfigurationKey@<X0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration.Trait and conformance DOCBrowserLayoutConfiguration.Trait();
  result = UITraitCollection.subscript.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t protocol witness for static UITraitBridgedEnvironmentKey.write(to:value:) in conformance BrowserConfigurationKey(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  return UIMutableTraits.doc_browserLayoutConfiguration.setter(v2, v6, v3, v4, v5);
}

uint64_t DOCBrowserLayoutConfiguration.SizeSetting.accessibilityIdentifierComponent.getter(char a1)
{
  if (!a1)
  {
    return 0x746361706D6F63;
  }

  if (a1 == 1)
  {
    return 0x72616C75676572;
  }

  return 0x6D6F74737563;
}

unint64_t lazy protocol witness table accessor for type BrowserConfigurationKey and conformance BrowserConfigurationKey()
{
  result = lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey;
  if (!lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey;
  if (!lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BrowserConfigurationKey and conformance BrowserConfigurationKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCBrowserLayoutConfiguration and conformance DOCBrowserLayoutConfiguration()
{
  result = lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration and conformance DOCBrowserLayoutConfiguration;
  if (!lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration and conformance DOCBrowserLayoutConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCBrowserLayoutConfiguration and conformance DOCBrowserLayoutConfiguration);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCBrowserLayoutConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCBrowserLayoutConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t DateCalculator.__allocating_init(date:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_cache;
  *(v2 + v3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables10FormattersO_AC10DateResultVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  v7 = [objc_opt_self() defaultCenter];
  [v7 addObserver:v2 selector:sel_clearCache name:*MEMORY[0x277D766F0] object:0];

  (*(v6 + 8))(a1, v5);
  return v2;
}

id one-time initialization function for mediumNonToday()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v0 setDoesRelativeDateFormatting_];
  [v0 setTimeStyle_];
  result = [v0 setDateStyle_];
  static FormatterCache.mediumNonToday = v0;
  return result;
}

id one-time initialization function for shortToday(uint64_t a1, SEL *a2, uint64_t a3, SEL *a4, void *a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v9 setDoesRelativeDateFormatting_];
  [v9 *a2];
  result = [v9 *a4];
  *a5 = v9;
  return result;
}

uint64_t Formatters.string(for:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = type metadata accessor for Calendar();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v8 = Calendar.isDateInToday(_:)();
  (*(v4 + 8))(v7, v3);
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (v8)
      {
        if (one-time initialization token for mediumToday != -1)
        {
          swift_once();
        }

        v9 = &static FormatterCache.mediumToday;
      }

      else
      {
        if (one-time initialization token for mediumNonToday != -1)
        {
          swift_once();
        }

        v9 = &static FormatterCache.mediumNonToday;
      }
    }

    else if (v8)
    {
      if (one-time initialization token for shortToday != -1)
      {
        swift_once();
      }

      v9 = &static FormatterCache.shortToday;
    }

    else
    {
      if (one-time initialization token for shortNonToday != -1)
      {
        swift_once();
      }

      v9 = &static FormatterCache.shortNonToday;
    }
  }

  else if (a2)
  {
    if (v8)
    {
      if (one-time initialization token for longToday != -1)
      {
        swift_once();
      }

      v9 = &static FormatterCache.longToday;
    }

    else
    {
      if (one-time initialization token for longNonToday != -1)
      {
        swift_once();
      }

      v9 = &static FormatterCache.longNonToday;
    }
  }

  else if (v8)
  {
    if (one-time initialization token for fullToday != -1)
    {
      swift_once();
    }

    v9 = &static FormatterCache.fullToday;
  }

  else
  {
    if (one-time initialization token for fullNonToday != -1)
    {
      swift_once();
    }

    v9 = &static FormatterCache.fullNonToday;
  }

  v10 = *v9;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v12 = [v10 stringFromDate_];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v13;
}

Swift::Int Formatters.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

double DateCache.dateToDateCalculatorCache.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t DateCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DateCache.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_26DocumentManagerExecutables0D10CalculatorCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t DateCalculator.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double DateCalculator.cache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_cache;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t DateCalculator.init(date:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_cache;
  *(v1 + v3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables10FormattersO_AC10DateResultVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, a1, v5);
  v7 = [objc_opt_self() defaultCenter];
  [v7 addObserver:v1 selector:sel_clearCache name:*MEMORY[0x277D766F0] object:0];

  (*(v6 + 8))(a1, v5);
  return v1;
}

Swift::Void __swiftcall DateCalculator.clearCache()()
{
  v1 = (*(*v0 + 112))(v4);
  v3 = v2;

  *v3 = MEMORY[0x277D84F98];
  v1(v4, 0);
}

uint64_t DateCalculator.bestFormatter(targetSize:)(double a1)
{
  v2 = v1;
  v4 = 0;
  while (1)
  {
    v5 = outlined read-only object #0 of DateCalculator.bestFormatter(targetSize:)[v4 + 32];
    v6 = (*(*v2 + 96))();
    if (*(v6 + 16))
    {
      v7 = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v8)
      {
        v9 = (*(v6 + 56) + 32 * v7);
        v10 = *v9;
        v11 = v9[1];

        if (v11 < a1)
        {
          return v10;
        }
      }
    }

    v12 = (*(*v2 + 144))(v5);
    v14 = v13;
    v15 = v12;
    v17 = v16;
    v18 = *(*v2 + 112);
    swift_bridgeObjectRetain_n();
    v10 = v18(v39);
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    v38 = *v20;
    *v20 = 0x8000000000000000;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)();
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v22[3] < v28)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_23;
      }

LABEL_10:
      v31 = v38;
      if ((v29 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v33 = v23;
    specialized _NativeDictionary.copy()();
    v23 = v33;
    v31 = v38;
    if ((v29 & 1) == 0)
    {
LABEL_13:
      v31[(v23 >> 6) + 8] |= 1 << v23;
      *(v31[6] + v23) = v5;
      v34 = v31[7] + 32 * v23;
      *v34 = v5;
      *(v34 + 8) = v14;
      *(v34 + 16) = v15;
      *(v34 + 24) = v17;
      v35 = v31[2];
      v27 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v27)
      {
        goto LABEL_22;
      }

      v31[2] = v36;
      goto LABEL_15;
    }

LABEL_11:
    v32 = v31[7] + 32 * v23;
    *v32 = v5;
    *(v32 + 8) = v14;
    *(v32 + 16) = v15;
    *(v32 + 24) = v17;

LABEL_15:
    *v20 = v31;

    (v10)(v39, 0);

    if (v14 < a1 || v5 == 3)
    {
      return v5;
    }

    ++v4;

    if (v4 == 4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return v10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t one-time initialization function for sizingView()
{
  v0 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for DateView(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);
  v13 = &v7[*(v12 + 48)];
  v14 = *(v12 + 64);
  Date.init()();
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v7[v14] = xmmword_249BAA660;
  swift_storeEnumTagMultiPayload();
  v15 = &v11[*(v8 + 24)];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  outlined init with copy of Column(v7, v3);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of Column(v3);
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    v18 = &v3[*(v12 + 48)];
    v19 = *v18;
    v20 = *(v18 + 1);
    outlined consume of ColumnType(*&v3[*(v12 + 64)], *&v3[*(v12 + 64) + 8]);
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 8))(v3, v21);
    if (v20)
    {
      v16 = v19;
    }

    else
    {
      v16 = 0;
    }

    v17 = 0xE000000000000000;
    if (v20)
    {
      v17 = v20;
    }
  }

  v22 = &v11[*(v8 + 20)];
  *v22 = v16;
  *(v22 + 1) = v17;
  outlined init with take of Column(v7, v11);
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables04DateD0VGMd, &_s7SwiftUI14_UIHostingViewCy26DocumentManagerExecutables04DateD0VGMR));
  result = _UIHostingView.init(rootView:)();
  static DateCalculator.sizingView = result;
  return result;
}

uint64_t *DateCalculator.sizingView.unsafeMutableAddressor()
{
  if (one-time initialization token for sizingView != -1)
  {
    swift_once();
  }

  return &static DateCalculator.sizingView;
}

id static DateCalculator.sizingView.getter()
{
  if (one-time initialization token for sizingView != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DateCalculator.sizingView;

  return v0;
}

void static DateCalculator.sizingView.setter(uint64_t a1)
{
  if (one-time initialization token for sizingView != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DateCalculator.sizingView;
  static DateCalculator.sizingView = a1;
}

uint64_t (*static DateCalculator.sizingView.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for sizingView != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

id key path getter for static DateCalculator.sizingView : DateCalculator.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for sizingView != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DateCalculator.sizingView;
  *a1 = static DateCalculator.sizingView;

  return v2;
}

void key path setter for static DateCalculator.sizingView : DateCalculator.Type(id *a1)
{
  v1 = one-time initialization token for sizingView;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static DateCalculator.sizingView;
  static DateCalculator.sizingView = v2;
}

uint64_t DateCalculator.size(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Column(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v53 - v10;
  v60 = type metadata accessor for DateView(0);
  v13 = MEMORY[0x28223BE20](v60, v12);
  v59 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*v1 + 96))(v13);
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 32 * v16 + 16);
  }

  else
  {
    v53 = v7;
    v56 = v4;

    v19 = *(*v2 + 152);
    v57 = a1;
    v58 = v19(a1);
    v54 = v20;
    if (one-time initialization token for sizingView != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v55 = static DateCalculator.sizingView;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMd, _s10Foundation4DateV_SSSg26DocumentManagerExecutables10ColumnTypeOtMR);
    v22 = &v11[*(v21 + 48)];
    v23 = *(v21 + 64);
    v24 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
    v25 = type metadata accessor for Date();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v11, v2 + v24, v25);
    v27 = v58;
    v28 = v54;
    *v22 = v58;
    v22[1] = v28;
    *&v11[v23] = xmmword_249BAA660;
    swift_storeEnumTagMultiPayload();
    v29 = &v59[*(v60 + 24)];
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    v30 = v53;
    outlined init with copy of Column(v11, v53);
    v31 = v28;
    if (swift_getEnumCaseMultiPayload())
    {
      v18 = v27;
      v32 = v55;
      v33 = v55;

      outlined destroy of Column(v30);
      v34 = 0;
      v35 = 0xE000000000000000;
    }

    else
    {
      v36 = (v30 + *(v21 + 48));
      v37 = v36[1];
      v56 = *v36;
      v38 = (v30 + *(v21 + 64));
      v39 = v30;
      v40 = *v38;
      v41 = v38[1];
      v32 = v55;
      v42 = v55;

      outlined consume of ColumnType(v40, v41);
      (*(v26 + 8))(v39, v25);
      v34 = v56;
      if (!v37)
      {
        v34 = 0;
      }

      v35 = 0xE000000000000000;
      if (v37)
      {
        v35 = v37;
      }

      v18 = v58;
    }

    v43 = v59;
    v44 = &v59[*(v60 + 20)];
    *v44 = v34;
    *(v44 + 1) = v35;
    outlined init with take of Column(v11, v43);
    dispatch thunk of _UIHostingView.rootView.setter();

    [static DateCalculator.sizingView _layoutSizeThatFits_fixedAxes_];
    v46 = v45;
    v47 = *(*v2 + 112);

    v48 = v47(v62);
    v50 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *v50;
    *v50 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, v18, v31, v57, isUniquelyReferenced_nonNull_native, v46);
    *v50 = v61;
    v48(v62, 0);
  }

  return v18;
}

Swift::String __swiftcall DateCalculator.string(for:)(DocumentManagerExecutables::Formatters a1)
{
  v2 = v1;
  v3 = a1;
  v4 = (*(*v1 + 96))();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 32 * v5;
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
  }

  else
  {

    v8 = Formatters.string(for:)(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date, v3);
    v9 = v10;
    v11 = *(*v2 + 112);

    v12 = v11(v20);
    v14 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v14;
    *v14 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v8, v9, v3, isUniquelyReferenced_nonNull_native, 10000.0);
    *v14 = v19;
    v12(v20, 0);
  }

  v16 = v8;
  v17 = v9;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t DateCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DateCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DateCalculator_date;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t outlined init with take of Column(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Column(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Formatters and conformance Formatters()
{
  result = lazy protocol witness table cache variable for type Formatters and conformance Formatters;
  if (!lazy protocol witness table cache variable for type Formatters and conformance Formatters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Formatters and conformance Formatters);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Formatters] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Formatters] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Formatters] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables10FormattersOGMd, &_sSay26DocumentManagerExecutables10FormattersOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Formatters] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DateResult(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DateResult(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for DateCalculator(uint64_t a1)
{
  result = type metadata singleton initialization cache for DateCalculator;
  if (!type metadata singleton initialization cache for DateCalculator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DateCalculator(uint64_t a1)
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

double static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a8;
  v17[7] = a9;
  v17[8] = a5;
  v17[9] = a6;
  v17[10] = a7;

  v18 = a7;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2)
  {
    v14 = MEMORY[0x24C1FAD20](a1);
  }

  else
  {
    v14 = 0;
  }

  v15 = MEMORY[0x24C1FAD20](a3, a4);
  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v53 = partial apply for closure #1 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
  v54 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v52 = &block_descriptor_61;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  [v19 addTextFieldWithConfigurationHandler_];
  _Block_release(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = (v20 + 16);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = a5;
  v22[4] = a6;
  v23 = swift_allocObject();
  v23[2] = partial apply for closure #2 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
  v23[3] = v22;
  v23[4] = v17;

  v24 = MEMORY[0x24C1FAD20](a7, a8);
  v53 = partial apply for closure #3 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
  v54 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v52 = &block_descriptor_15_1;
  v25 = _Block_copy(&aBlock);

  v48 = objc_opt_self();
  v26 = [v48 actionWithTitle:v24 style:0 handler:v25];
  _Block_release(v25);

  [v26 setEnabled_];
  v27 = [objc_opt_self() defaultCenter];
  v28 = *MEMORY[0x277D770B0];
  swift_beginAccess();
  v29 = *(v17 + 16);
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 mainQueue];
  v33 = swift_allocObject();
  *(v33 + 16) = v26;
  v53 = partial apply for closure #4 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
  v54 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v52 = &block_descriptor_21_1;
  v34 = _Block_copy(&aBlock);
  v35 = v26;

  v36 = [v27 addObserverForName:v28 object:v31 queue:v32 usingBlock:v34];
  _Block_release(v34);

  swift_beginAccess();
  *v21 = v36;
  swift_unknownObjectRelease();
  v37 = _DocumentManagerBundle();
  if (v37)
  {
    v38 = v37;
    v55._object = 0xE600000000000000;
    v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v39.value._object = 0xEB00000000656C62;
    v40._countAndFlagsBits = 0x6C65636E6143;
    v40._object = 0xE600000000000000;
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    v55._countAndFlagsBits = 0x6C65636E6143;
    v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v39, v38, v41, v55);

    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for closure #2 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
    *(v43 + 24) = v22;

    v44 = MEMORY[0x24C1FAD20](v42._countAndFlagsBits, v42._object);

    v53 = partial apply for closure #5 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:);
    v54 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v52 = &block_descriptor_27_2;
    v45 = _Block_copy(&aBlock);

    v46 = [v48 actionWithTitle:v44 style:1 handler:v45];
    _Block_release(v45);

    [v19 addAction_];
    [v19 addAction_];
    [v19 setPreferredAction_];

    [a9 presentViewController:v19 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(void *a1, uint64_t a2)
{
  [a1 setSecureTextEntry_];
  swift_beginAccess();
  v3 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t closure #2 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = objc_opt_self();
    swift_unknownObjectRetain();
    v12 = [v11 defaultCenter];
    [v12 removeObserver_];
    swift_unknownObjectRelease();
  }

  return a5(a1, a2, a3);
}

void closure #3 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a4 + 16);
  if (v6)
  {
    v7 = [v6 text];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      a2(v9, v11, 0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id closure #4 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, void *a2)
{
  Notification.object.getter();
  if (!v13)
  {
    outlined destroy of Any?(v12);
    goto LABEL_9;
  }

  type metadata accessor for UITextField();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v9 = 0;
    return [a2 setEnabled_];
  }

  v3 = [v11 text];
  if (!v3)
  {

    goto LABEL_9;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v9 = v8 != 0;
  return [a2 setEnabled_];
}

void closure #5 in closure #1 in static UIAlertController.doc_presentPassphraseInputAlert(title:message:actionTitle:alertPresenting:completionHandler:)(uint64_t a1, void (*a2)(void, void, id))
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  a2(0, 0, v3);
}

unint64_t type metadata accessor for UITextField()
{
  result = lazy cache variable for type metadata for UITextField;
  if (!lazy cache variable for type metadata for UITextField)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITextField);
  }

  return result;
}

void *DOCBackgroundColorView.layerBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_layerBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCBackgroundColorView.layerBackgroundColor.setter(id a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_layerBackgroundColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v1;
      type metadata accessor for UIColor();
      a1 = a1;
      v6 = v4;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {

        v4 = v6;
LABEL_10:

        return;
      }

      v1 = v5;
    }

    else
    {
      a1 = a1;
    }

LABEL_9:
    [v1 setNeedsLayout];

    goto LABEL_10;
  }

  if (v4)
  {
    goto LABEL_9;
  }
}

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

void (*DOCBackgroundColorView.layerBackgroundColor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_layerBackgroundColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCBackgroundColorView.layerBackgroundColor.modify;
}

void DOCBackgroundColorView.layerBackgroundColor.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        type metadata accessor for UIColor();
        v5 = v3;
        v9 = v8;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    [*(v2 + 32) setNeedsLayout];

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  DOCBackgroundColorView.layerBackgroundColor.setter(v3);
  v5 = *(v2 + 24);
LABEL_11:

LABEL_12:

  free(v2);
}

id DOCBackgroundColorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *DOCBackgroundColorView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_backgroundLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_layerBackgroundColor] = 0;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for DOCBackgroundColorView();
  v10 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_backgroundLayer;
  [v11 addSublayer_];

  v13 = *&v10[v12];
  [v10 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v13 setFrame_];
  return v10;
}

id DOCBackgroundColorView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCBackgroundColorView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_backgroundLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_layerBackgroundColor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DOCBackgroundColorView.layoutSubviews()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for DOCBackgroundColorView();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  v2 = [v1 setDisableActions_];
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_backgroundLayer);
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))(v2);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 CGColor];
  }

  else
  {
    v6 = 0;
  }

  [v3 setBackgroundColor_];

  [v0 bounds];
  [v3 setFrame_];
  [v1 commit];
}

id DOCBackgroundColorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBackgroundColorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_Sis5NeverOTg5125_s26DocumentManagerExecutables31DOCItemCollectionViewControllerC29StringWidthCalculationContextC6update5usingySS_tFSiSSXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v22 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = a1 + 56;
    v3 = _HashTable.startBucket.getter();
    v4 = a1;
    v5 = 0;
    v20 = v1;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v4 + 32))
    {
      v8 = v3 >> 6;
      if ((*(v2 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(v4 + 36);

      v9 = String.count.getter();

      v11 = *(v22 + 16);
      v10 = *(v22 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v22 + 16) = v11 + 1;
      *(v22 + 8 * v11 + 32) = v9;
      v6 = 1 << *(v4 + 32);
      if (v3 >= v6)
      {
        goto LABEL_22;
      }

      v2 = a1 + 56;
      v12 = *(a1 + 56 + 8 * v8);
      if ((v12 & (1 << v3)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(v4 + 36))
      {
        goto LABEL_24;
      }

      v13 = v12 & (-2 << (v3 & 0x3F));
      if (v13)
      {
        v6 = __clz(__rbit64(v13)) | v3 & 0x7FFFFFFFFFFFFFC0;
        v7 = v20;
      }

      else
      {
        v14 = v8 << 6;
        v15 = v8 + 1;
        v16 = (a1 + 64 + 8 * v8);
        v7 = v20;
        while (v15 < (v6 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            outlined consume of Set<UIPress>.Index._Variant(v3, v21, 0);
            v4 = a1;
            v6 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        outlined consume of Set<UIPress>.Index._Variant(v3, v21, 0);
        v4 = a1;
      }

LABEL_4:
      ++v5;
      v3 = v6;
      if (v5 == v7)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, void *a2)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_26;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      while ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, v3);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_22;
        }

LABEL_9:
        swift_getObjectType();
        DOCNode.identifierKey.getter();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *a2;
        v9 = v24;
        *a2 = 0x8000000000000000;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
        v12 = v9[2];
        v13 = (v11 & 1) == 0;
        v14 = __OFADD__(v12, v13);
        v15 = v12 + v13;
        if (v14)
        {
          goto LABEL_24;
        }

        v16 = v11;
        if (v9[3] < v15)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
          v10 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
          if ((v16 & 1) != (v17 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_14:
          v18 = v24;
          if (v16)
          {
            goto LABEL_4;
          }

          goto LABEL_15;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_14;
        }

        v22 = v10;
        specialized _NativeDictionary.copy()();
        v10 = v22;
        v18 = v24;
        if (v16)
        {
LABEL_4:
          *(v18[7] + 8 * v10) = v6;
          swift_unknownObjectRelease();
          goto LABEL_5;
        }

LABEL_15:
        v18[(v10 >> 6) + 8] |= 1 << v10;
        v19 = v10;
        outlined init with copy of AnyHashable(v23, v18[6] + 40 * v10);
        *(v18[7] + 8 * v19) = v6;
        v20 = v18[2];
        v14 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v14)
        {
          goto LABEL_25;
        }

        v18[2] = v21;
LABEL_5:
        outlined destroy of AnyHashable(v23);
        *a2 = v18;
        result = swift_unknownObjectRelease();
        ++v5;
        if (v7 == v4)
        {
          return result;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v6 = *(v3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v7 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_9;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      result = __CocoaSet.count.getter();
      v4 = result;
    }

    while (result);
  }

  return result;
}

void specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return;
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v26 = a1 + 32;
  while (1)
  {
    v3 = *(v26 + 8 * v1);
    v4 = v3 >> 62;
    if (v3 >> 62)
    {
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = __CocoaSet.count.getter();
      v8 = v24 + v5;
      if (__OFADD__(v24, v5))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v7 + v5;
      if (__OFADD__(v7, v5))
      {
        goto LABEL_32;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v31 = v5;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v6)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v8 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v6)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v4)
    {
      break;
    }

    v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v31)
    {
      goto LABEL_35;
    }

    v28 = v1;
    v29 = v2;
    v16 = v10 + 8 * v11 + 32;
    v25 = v10;
    if (v4)
    {
      if (v13 < 1)
      {
        goto LABEL_37;
      }

      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCUIImageMenuItem] and conformance [A], &_sSay26DocumentManagerExecutables18DOCUIImageMenuItemCGMd, _sSay26DocumentManagerExecutables18DOCUIImageMenuItemCGMR, MEMORY[0x277D83988]);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables18DOCUIImageMenuItemCGMd, _sSay26DocumentManagerExecutables18DOCUIImageMenuItemCGMR);
        v18 = specialized protocol witness for Collection.subscript.read in conformance [A](v30, i, v3);
        v20 = *v19;
        (v18)(v30, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      type metadata accessor for DOCUIImageMenuItem();
      swift_arrayInitWithCopy();
    }

    v1 = v28;
    v2 = v29;
    if (v31 >= 1)
    {
      v21 = *(v25 + 16);
      v22 = __OFADD__(v21, v31);
      v23 = v21 + v31;
      if (v22)
      {
        goto LABEL_36;
      }

      *(v25 + 16) = v23;
    }

LABEL_4:
    if (++v1 == v27)
    {
      return;
    }
  }

  v14 = v10;
  v15 = __CocoaSet.count.getter();
  v10 = v14;
  v13 = v15;
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v31 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return;
  }

  type metadata accessor for DOCBrowserHistoryItem(0);
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v3 = &_sSaySo19DOCConcreteLocationCGMd;
  while (1)
  {
    v4 = DOCBrowserHistoryItem.underlyingLocations.getter();
    v5 = v4;
    v6 = v4 >> 62;
    if (v4 >> 62)
    {
      v7 = __CocoaSet.count.getter();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = __CocoaSet.count.getter();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v33 = v7;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v8)
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      __CocoaSet.count.getter();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v12 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v33)
    {
      goto LABEL_35;
    }

    v30 = v1;
    v31 = v2;
    v18 = v12 + 8 * v13 + 32;
    v28 = v12;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_37;
      }

      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCConcreteLocation] and conformance [A], v3, &_sSaySo19DOCConcreteLocationCGMR, MEMORY[0x277D83988]);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &_sSaySo19DOCConcreteLocationCGMR);
        v20 = v3;
        v21 = specialized protocol witness for Collection.subscript.read in conformance [A](v32, i, v5);
        v23 = *v22;
        (v21)(v32, 0);
        v3 = v20;
        *(v18 + 8 * i) = v23;
      }
    }

    else
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
      swift_arrayInitWithCopy();
    }

    v1 = v30;
    v2 = v31;
    if (v33 >= 1)
    {
      v24 = *(v28 + 16);
      v25 = __OFADD__(v24, v33);
      v26 = v24 + v33;
      if (v25)
      {
        goto LABEL_36;
      }

      *(v28 + 16) = v26;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return;
    }
  }

  v16 = v12;
  v17 = __CocoaSet.count.getter();
  v12 = v16;
  v15 = v17;
  if (v17)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void specialized EnumeratedSequence.Iterator.next()(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = (*v1 + 40 * v2);
  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[6];
  v8 = v4[7];
  v9 = v4[8];
  v1[1] = v2 + 1;
  v10 = v1[2];
  if (__OFADD__(v10, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v1[2] = v10 + 1;
  *a1 = v10;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
}

char *DOCItemCollectionViewController._tapBehavior.unsafeMutableAddressor()
{
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  return &static DOCItemCollectionViewController._tapBehavior;
}

BOOL specialized OptionSet<>.insert(_:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *v4;
  _StringGuts.grow(_:)(18);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v8);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);

  _StringGuts.grow(_:)(18);

  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v9);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v10 = 0xEF3A65756C615677;
  if ((v7 & a2) == a2)
  {
    v11 = 0x6172287469617254;
  }

  else
  {

    v10 = a4;

    UITraitCollection.Traits.init(rawValue:)(v7 | a2, v4);
    v11 = a3;
  }

  result = (v7 & a2) != a2;
  *a1 = a2;
  a1[1] = v11;
  a1[2] = v10;
  return result;
}

void specialized Array<A>.fetchURLPairs(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v7);
  v27 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  v10 = dispatch_group_create();
  if (!(a3 >> 62))
  {
    v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    v19 = v26;
    v18[2] = v25;
    v18[3] = v19;
    v18[4] = v9;
    v38 = partial apply for closure #2 in Array<A>.fetchURLPairs(_:);
    v39 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v37 = &block_descriptor_991;
    v20 = _Block_copy(&aBlock);

    v21 = v27;
    static DispatchQoS.unspecified.getter();
    v33 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v22 = v29;
    v23 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v20);

    (*(v31 + 8))(v22, v23);
    (*(v28 + 8))(v21, v30);

    return;
  }

  v11 = __CocoaSet.count.getter();
  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1FC540](v12, a3);
      }

      else
      {
        v13 = *(a3 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      ++v12;
      dispatch_group_enter(v10);
      v14 = swift_allocObject();
      v14[2] = v10;
      v14[3] = v13;
      v14[4] = v9;
      v38 = partial apply for specialized closure #1 in Array<A>.fetchURLPairs(_:);
      v39 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v35 = 1107296256;
      v36 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
      v37 = &block_descriptor_985;
      v15 = _Block_copy(&aBlock);

      v16 = v10;
      swift_unknownObjectRetain();

      [v13 fetchURL_];
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    while (v11 != v12);
    goto LABEL_10;
  }

  __break(1u);
}

void specialized closure #1 in Array<A>.fetchURLPairs(_:)(uint64_t a1, void *a2, NSObject *a3, void *a4, uint64_t a5)
{
  v56 = a4;
  v57 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_p4node_10Foundation3URLV3urltMd, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.UI);
    v23 = v56;
    swift_unknownObjectRetain();
    v24 = a2;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58[0] = v29;
      *v27 = 136446466;
      v30 = [v23 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v58);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2112;
      v35 = a2;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v36;
      *v28 = v36;
      _os_log_impl(&dword_2493AC000, v25, v26, "Error fetching the url for item %{public}s: %@", v27, 0x16u);
      outlined destroy of CharacterSet?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v27, -1, -1);
    }

    v37 = v57;

    dispatch_group_leave(v37);
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(a1, v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      outlined destroy of CharacterSet?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.UI);
      v39 = v56;
      swift_unknownObjectRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v58[0] = v43;
        *v42 = 136446210;
        v44 = [v39 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v58);

        *(v42 + 4) = v48;
        _os_log_impl(&dword_2493AC000, v40, v41, "Error fetching the url for item: %{public}s but also did not get an error", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1FE850](v43, -1, -1);
        MEMORY[0x24C1FE850](v42, -1, -1);
      }
    }

    else
    {
      (*(v18 + 32))(v21, v16, v17);
      v49 = *(v8 + 48);
      *v12 = v56;
      (*(v18 + 16))(&v12[v49], v21, v17);
      v50 = a5;
      swift_beginAccess();
      v51 = *(a5 + 16);
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 16) = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
        *(a5 + 16) = v51;
      }

      v54 = v51[2];
      v53 = v51[3];
      if (v54 >= v53 >> 1)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v51);
      }

      v51[2] = v54 + 1;
      outlined init with take of (key: URL, value: FPItem)(v12, v51 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v54, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMd, &_sSo7DOCNode_p4node_10Foundation3URLV3urltMR);
      *(v50 + 16) = v51;
      swift_endAccess();
      (*(v18 + 8))(v21, v17);
    }

    dispatch_group_leave(v57);
  }
}

uint64_t specialized DOCFocusableCollectionView.focusItem(at:isUserInteraction:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v73 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v9);
  v71 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v67 = v14;
  v68 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v79 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v80 = &v64 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v64 - v23;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v29 = &v64 - v28;
  v30 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v2) + 0xD8))(v27))
  {
    v32 = v31;
    ObjectType = swift_getObjectType();
    (*(v32 + 64))(v2, &protocol witness table for DOCItemCollectionView, a1, a2 & 1, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  v70 = a2;
  v34 = *(v12 + 16);
  v69 = a1;
  v66 = v12 + 16;
  v65 = v34;
  v34(v29, a1, v11);
  v35 = *(v12 + 56);
  v36 = v35(v29, 0, 1, v11);
  v37 = *v30 & *v2;
  v81 = v11;
  v82 = v12;
  v38 = *(v37 + 240);
  v39 = v37 + 240;
  v40 = v38(v36);
  outlined init with copy of DOCGridLayout.Spec?(v29, v24, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*(*v40 + 112))(v24);

  outlined destroy of CharacterSet?(v29, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v41 = v35(v29, 1, 1, v81);
  v42 = v38(v41);
  outlined init with copy of DOCGridLayout.Spec?(v29, v24, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*(*v42 + 136))(v24);

  outlined destroy of CharacterSet?(v29, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMd, &_ss23_ContiguousArrayStorageCy10Foundation9IndexPathVGMR);
  v43 = *(v82 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_249B9A480;
  v77 = v39;
  v78 = v38;
  v45 = (v38)();
  v47 = v81;
  v46 = v82;
  v48 = v80;
  (*(*v45 + 104))(v45);

  v49 = *(v46 + 48);
  result = v49(v48, 1, v47);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v80 = *(v46 + 32);
    (v80)(v44 + ((v43 + 32) & ~v43), v48, v47);
    specialized DOCFocusableCollectionView.setIndexPathsForSelectedItems(_:animated:scrollPosition:)(v44, 0, 0);
    swift_setDeallocating();
    swift_arrayDestroy();
    v51 = swift_deallocClassInstance();
    v52 = v78(v51);
    v53 = v79;
    (*(*v52 + 104))(v52);

    result = v49(v53, 1, v47);
    if (result != 1)
    {
      specialized DOCFocusableCollectionView.scrollToItemIfNeeded(at:)(v53);
      (*(v46 + 8))(v53, v47);
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v54 = static OS_dispatch_queue.main.getter();
      v55 = v68;
      v65(v68, v69, v47);
      v56 = (v43 + 24) & ~v43;
      v57 = v56 + v67;
      v58 = swift_allocObject();
      *(v58 + 16) = v3;
      (v80)(v58 + v56, v55, v47);
      *(v58 + v57) = v70 & 1;
      aBlock[4] = partial apply for specialized closure #1 in DOCFocusableCollectionView.focusItem(at:isUserInteraction:);
      aBlock[5] = v58;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_1024;
      v59 = _Block_copy(aBlock);
      v60 = v3;

      v61 = v71;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v62 = v73;
      v63 = v76;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x24C1FB9A0](0, v61, v62, v59);
      _Block_release(v59);

      (*(v75 + 8))(v62, v63);
      return (*(v72 + 8))(v61, v74);
    }
  }

  __break(1u);
  return result;
}

uint64_t DOCItemCollectionViewController.performWhenSafeToChangeFirstResponder(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x8D8))();
  if (!v6)
  {
    return a1();
  }

  v8 = *((*v5 & *v2) + 0x910);

  return v8(a1, a2);
}

uint64_t one-time initialization function for DOCItemCollectionViewDropSessionDidExit()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000027, 0x8000000249BE14B0);
  static NSNotificationName.DOCItemCollectionViewDropSessionDidExit = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionViewDropSessionDidExit.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionViewDropSessionDidExit != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionViewDropSessionDidExit;
}

uint64_t one-time initialization function for DOCItemCollectionDidUpdateIsScrollEnabled()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000029, 0x8000000249BE1480);
  static NSNotificationName.DOCItemCollectionDidUpdateIsScrollEnabled = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionDidUpdateIsScrollEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionDidUpdateIsScrollEnabled != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionDidUpdateIsScrollEnabled;
}

uint64_t one-time initialization function for DOCItemCollectionDidUpdateContentOffset()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000027, 0x8000000249BE1450);
  static NSNotificationName.DOCItemCollectionDidUpdateContentOffset = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionDidUpdateContentOffset.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionDidUpdateContentOffset != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionDidUpdateContentOffset;
}

uint64_t one-time initialization function for DOCItemCollectionViewDidLayoutSubviews()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000026, 0x8000000249BE14E0);
  static NSNotificationName.DOCItemCollectionViewDidLayoutSubviews = result;
  return result;
}

uint64_t one-time initialization function for DOCItemCollectionViewDidUpdateContents()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000026, 0x8000000249BE1420);
  static NSNotificationName.DOCItemCollectionViewDidUpdateContents = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionViewDidUpdateContents.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionViewDidUpdateContents != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionViewDidUpdateContents;
}

uint64_t one-time initialization function for DOCItemCollectionViewDidChangeEditMode()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000026, 0x8000000249BE13F0);
  static NSNotificationName.DOCItemCollectionViewDidChangeEditMode = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionViewDidChangeEditMode.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionViewDidChangeEditMode != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionViewDidChangeEditMode;
}

uint64_t one-time initialization function for DOCItemCollectionViewDidLoadContents()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000024, 0x8000000249BE13C0);
  static NSNotificationName.DOCItemCollectionViewDidLoadContents = result;
  return result;
}

uint64_t *NSNotificationName.DOCItemCollectionViewDidLoadContents.unsafeMutableAddressor()
{
  if (one-time initialization token for DOCItemCollectionViewDidLoadContents != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.DOCItemCollectionViewDidLoadContents;
}

uint64_t one-time initialization function for DOCItemCollectionViewDidFinishGathering()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000027, 0x8000000249BE1390);
  static NSNotificationName.DOCItemCollectionViewDidFinishGathering = result;
  return result;
}

uint64_t ScrollPositionInfo.description.getter()
{
  _StringGuts.grow(_:)(65);
  MEMORY[0x24C1FAEA0](0xD000000000000011, 0x8000000249BE0B40);
  v1 = ScrollPositionInfo.ItemOffset.description.getter();
  MEMORY[0x24C1FAEA0](v1);

  MEMORY[0x24C1FAEA0](0xD000000000000014, 0x8000000249BE0B60);
  v2 = type metadata accessor for ScrollPositionInfo(0);
  if (*(v0 + *(v2 + 20)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 20)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C1FAEA0](v3, v4);

  MEMORY[0x24C1FAEA0](0xD000000000000016, 0x8000000249BE0B80);
  type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  lazy protocol witness table accessor for type DOCCollectionSection and conformance DOCCollectionSection();
  v5 = Dictionary.description.getter();
  MEMORY[0x24C1FAEA0](v5);

  return 0;
}

uint64_t ScrollPositionInfo.ItemOffset.description.getter()
{
  _StringGuts.grow(_:)(46);
  MEMORY[0x24C1FAEA0](0x203A65646F6E28, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](0x507865646E69203BLL, 0xED0000203A687461);
  type metadata accessor for ScrollPositionInfo.ItemOffset(0);
  type metadata accessor for IndexPath();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v0);

  MEMORY[0x24C1FAEA0](0xD000000000000013, 0x8000000249BE08E0);
  v1 = Double.description.getter();
  MEMORY[0x24C1FAEA0](v1);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0;
}

uint64_t RestorableSearchInfo.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(25);
  MEMORY[0x24C1FAEA0](0x5468637261657328, 0xED0000203A6D7265);
  MEMORY[0x24C1FAEA0](a1, a2);
  MEMORY[0x24C1FAEA0](0x3A65706F6373203BLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSearchScope_pMd, &_s26DocumentManagerExecutables14DOCSearchScope_pMR);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

Swift::Int DOCItemHierarchyEvent.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  return Hasher._finalize()();
}

id DOCDragMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *DOCDragMonitor.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static DOCDragMonitor.shared;
}

id static DOCDragMonitor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static DOCDragMonitor.shared;

  return v0;
}

void static DOCDragMonitor.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCDragMonitor.shared;
  static DOCDragMonitor.shared = a1;
}

uint64_t (*static DOCDragMonitor.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DOCFileProviderSyncStateObserverCache.shared.modify;
}

id key path getter for static DOCDragMonitor.shared : DOCDragMonitor.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static DOCDragMonitor.shared;
  *a1 = static DOCDragMonitor.shared;

  return v2;
}

void key path setter for static DOCDragMonitor.shared : DOCDragMonitor.Type(id *a1)
{
  v1 = one-time initialization token for shared;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static DOCDragMonitor.shared;
  static DOCDragMonitor.shared = v2;
}

id DOCDragMonitor.init()()
{
  v0[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCDragMonitor_isItemCollectionDragActive] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCDragMonitor();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t DOCItemCollectionViewController.editingMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_editingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.editingMode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_editingMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void static DOCItemCollectionViewController._tapBehavior.getter(_BYTE *a1@<X8>)
{
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCItemCollectionViewController._tapBehavior;
}

void static DOCItemCollectionViewController._tapBehavior.setter(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCItemCollectionViewController._tapBehavior = v1;
}

uint64_t (*static DOCItemCollectionViewController._tapBehavior.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

void key path getter for static DOCItemCollectionViewController._tapBehavior : DOCItemCollectionViewController.Type(_BYTE *a1@<X8>)
{
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DOCItemCollectionViewController._tapBehavior;
}

void key path setter for static DOCItemCollectionViewController._tapBehavior : DOCItemCollectionViewController.Type(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for _tapBehavior != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DOCItemCollectionViewController._tapBehavior = v1;
}

void DOCItemCollectionViewController.familySharedFolderTip.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___familySharedFolderTip) == 1)
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___familySharedFolderTip) = 0;
  }
}

uint64_t (*DOCItemCollectionViewController.familySharedFolderTip.modify(void *a1))()
{
  *a1 = v1;
  DOCItemCollectionViewController.familySharedFolderTip.getter();
  return DOCItemCollectionViewController.familySharedFolderTip.modify;
}

void DOCItemCollectionViewController.cancelPendingTasks()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTasks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = MEMORY[0x277D84A98];
  v12 = MEMORY[0x277D84AC0];
  if (v8)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      *(v0 + v1) = MEMORY[0x277D84FA0];

      return;
    }

    v8 = *(v4 + 8 * v13);
    ++v10;
    if (v8)
    {
      v10 = v13;
      do
      {
LABEL_9:
        v8 &= v8 - 1;

        MEMORY[0x24C1FB330](v14, MEMORY[0x277D84F78] + 8, v11, v12);
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
}

uint64_t DOCItemCollectionViewController.isOptionKeyPressed.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isOptionKeyPressed;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.isOptionKeyPressed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isOptionKeyPressed;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double DOCItemCollectionViewController.diffableDataSource.getter@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fiNodeDataSource);
  if (v3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FINodeCGMd, &_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FINodeCGMR);
    v10 = &protocol witness table for DOCNodeDiffableDataSource<A>;
    *&v8 = v3;
    outlined init with take of DOCGoToFolderCandidate(&v8, a1);
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fpNodeDataSource);
    if (v4)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FPItemCGMd, &_s26DocumentManagerExecutables25DOCNodeDiffableDataSourceCySo6FPItemCGMR);
      v6 = &protocol witness table for DOCNodeDiffableDataSource<A>;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = v4;
    a1[3] = v5;
    a1[4] = v6;
  }

  return result;
}

uint64_t DOCItemCollectionViewController.isActiveDragSource.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isActiveDragSource;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.isActiveDragSource.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isActiveDragSource;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    if (a1)
    {
      v6 = v1;
      v7 = v1;
    }

    else
    {
      v7 = 0;
    }

    v8 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf] = v7;
  }
}

void (*DOCItemCollectionViewController.isActiveDragSource.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isActiveDragSource;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionViewController.isActiveDragSource.modify;
}

void DOCItemCollectionViewController.isActiveDragSource.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if ((a2 & 1) == 0)
  {
    if (((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_9;
    }

    v7 = v2[3];
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = v7;
    v7 = v7;
    goto LABEL_8;
  }

  if (((v5 ^ v6) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[3];
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 0;
LABEL_8:
  v9 = *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf];
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf] = v8;

LABEL_9:

  free(v2);
}

uint64_t DOCItemCollectionViewController.wantsTipsHeader.getter()
{
  if ([*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) isFilesApp] && (v1 = objc_msgSend(objc_opt_self(), sel_showTips), v2 = objc_msgSend(v1, sel_isEnabled), v1, v2))
  {
    DOCItemCollectionViewController.getCurrentLocation()(v3);
    v5 = v4;
    v6 = [objc_opt_self() sharedItemsLocation];
    v7 = v6;
    if (v5)
    {
      if (v6)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
        v8 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v8 = 0;
      }

      v7 = v5;
    }

    else
    {
      if (!v6)
      {
        v8 = 1;
        return v8 & 1;
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __swiftcall DOCItemCollectionViewController.getCurrentLocation()(DOCConcreteLocation_optional *__return_ptr retstr)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xC70))();
  if (v3)
  {
    v4 = v3;
    v5 = (*((*v2 & *v1) + 0xA68))();
    v6 = [v5 identifier];

    [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v6 node:v4];
    swift_unknownObjectRelease();
  }

  else
  {
    (*((*v2 & *v1) + 0xA50))(v8);
    v7 = v8[3];
    outlined destroy of DOCItemCollectionConfiguration(v8);
  }
}

uint64_t DOCItemCollectionViewController.familyFetcher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_familyFetcher;
  swift_beginAccess();
  return outlined init with copy of DOCSidebarItemIconProvider(v1 + v3, a1);
}

uint64_t DOCItemCollectionViewController.familyFetcher.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_familyFetcher;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  outlined init with take of DOCGoToFolderCandidate(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t DOCItemCollectionViewController.tipViewIsAvailable.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipViewIsAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.tipViewIsAvailable.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipViewIsAvailable;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.currentDragSession.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDragSession;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  [static DOCDragMonitor.shared setIsItemCollectionDragActive_];
  return swift_unknownObjectRelease();
}

uint64_t (*DOCItemCollectionViewController.currentDragSession.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDragSession;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionViewController.currentDragSession.modify;
}

void DOCItemCollectionViewController.currentDragSession.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v5 = v3[3];
    v4 = v3[4];
    swift_beginAccess();
    [static DOCDragMonitor.shared setIsItemCollectionDragActive_];
  }

  free(v3);
}

void *DOCItemCollectionViewController.currentClickyOrbMenu.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbMenu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.currentClickyOrbMenu.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbMenu;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.currentClickyOrbConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.currentClickyOrbConfiguration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path getter for DOCItemCollectionViewController.blockToRunWhenMenuInteractionFinishedDismissing : DOCItemCollectionViewController@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x908))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCItemCollectionViewController.blockToRunWhenMenuInteractionFinishedDismissing : DOCItemCollectionViewController(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x910);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  return v7(v6, v5);
}

uint64_t DOCItemCollectionViewController.itemHierarchyEventListener.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemHierarchyEventListener;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCItemCollectionViewController.itemHierarchyEventListener.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemHierarchyEventListener;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

id DOCItemCollectionViewController.sortOptionsAccessibilityModelView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortOptionsAccessibilityModelView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemCollectionViewController.sortOptionsAccessibilityModelView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortOptionsAccessibilityModelView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Int DOCItemCollectionRowColumn.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

uint64_t DOCItemCollectionViewController.multiselectActionStatus.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_multiselectActionStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.multiselectActionStatus.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_multiselectActionStatus;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v1) + 0xAE8))(v4);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 effectiveFullBrowser];

    if (v8)
    {
      v9 = *(v1 + v3);
      v10 = [v8 effectiveBrowserViewController];
      if (v10)
      {
        v11 = v10;
        v12 = (*((*v5 & *v10) + 0xE8))();

        if (v12)
        {
          type metadata accessor for DOCItemCollectionViewController(0);
          v13 = swift_dynamicCastClass();
          if (v13)
          {
            v14 = v13;
            v15 = swift_allocObject();
            *(v15 + 16) = v14;
            *(v15 + 24) = v9 == 1;
            *(v15 + 32) = v8;
            v16 = v12;
            v8 = v8;
            DOCRunInMainThread(_:)();
          }

          else
          {

            v8 = v12;
          }
        }
      }
    }
  }
}

void (*DOCItemCollectionViewController.multiselectActionStatus.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_multiselectActionStatus;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCItemCollectionViewController.multiselectActionStatus.modify;
}

void DOCItemCollectionViewController.multiselectActionStatus.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & **(v3 + 24)) + 0xAE8))(v4);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 effectiveFullBrowser];

      if (v8)
      {
        v9 = *(*(v3 + 24) + *(v3 + 32));
        v10 = [v8 effectiveBrowserViewController];
        if (v10)
        {
          v11 = *((*v5 & *v10) + 0xE8);
          v12 = v10;
          v13 = v11();

          if (v13)
          {
            type metadata accessor for DOCItemCollectionViewController(0);
            v14 = swift_dynamicCastClass();
            if (v14)
            {
              v15 = v14;
              v16 = swift_allocObject();
              *(v16 + 16) = v15;
              *(v16 + 24) = v9 == 1;
              *(v16 + 32) = v8;
              v17 = v13;
              v13 = v8;
              DOCRunInMainThread(_:)();

              v8 = v17;
            }

            v8 = v13;
          }
        }
      }
    }
  }

  free(v3);
}

uint64_t key path setter for DOCItemCollectionViewController.lastDropIndexPath : DOCItemCollectionViewController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x988))(v7);
}

uint64_t DOCItemCollectionViewController.lastDropIndexPath.didset(uint64_t a1)
{
  v62 = a1;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v58 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v7);
  v60 = &v55[-v8];
  MEMORY[0x28223BE20](v9, v10);
  v57 = &v55[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v61 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v55[-v17];
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v55[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSg_ADtMd, &_s10Foundation9IndexPathVSg_ADtMR);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v55[-v26];
  v28 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastDropIndexPath;
  swift_beginAccess();
  v29 = *(v24 + 56);
  v59 = v28;
  v63 = v1;
  v30 = v1 + v28;
  v31 = v62;
  outlined init with copy of DOCGridLayout.Spec?(v30, v27, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(v31, &v27[v29], &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v64 = v3;
  v32 = *(v3 + 48);
  if (v32(v27, 1, v2) == 1)
  {
    if (v32(&v27[v29], 1, v2) == 1)
    {
      return outlined destroy of CharacterSet?(v27, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    }
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(v27, v22, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    if (v32(&v27[v29], 1, v2) != 1)
    {
      v52 = v64;
      v53 = v57;
      (*(v64 + 32))(v57, &v27[v29], v2);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = *(v52 + 8);
      v54(v53, v2);
      v54(v22, v2);
      v31 = v62;
      result = outlined destroy of CharacterSet?(v27, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
      if (v56)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v64 + 8))(v22, v2);
  }

  outlined destroy of CharacterSet?(v27, &_s10Foundation9IndexPathVSg_ADtMd, &_s10Foundation9IndexPathVSg_ADtMR);
LABEL_7:
  outlined init with copy of DOCGridLayout.Spec?(v31, v18, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  v34 = v32(v18, 1, v2);
  v35 = MEMORY[0x277D85000];
  if (v34 == 1)
  {
    outlined destroy of CharacterSet?(v18, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  else
  {
    v36 = (*(v64 + 32))(v60, v18, v2);
    v37 = (*((*v35 & *v63) + 0x1010))(v36);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v39 = [v37 cellForItemAtIndexPath_];

    if (v39)
    {
      type metadata accessor for DOCItemCollectionCell();
      v40 = swift_dynamicCastClass();
      if (v40)
      {
        v41 = (*((*v35 & *v40) + 0x208))();
        if (v41)
        {
          v42 = v41;
          (*((*v35 & *v41) + 0x4E0))(0);

          v39 = v42;
        }
      }
    }

    (*(v64 + 8))(v60, v2);
  }

  v43 = v61;
  outlined init with copy of DOCGridLayout.Spec?(v63 + v59, v61, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  if (v32(v43, 1, v2) == 1)
  {
    return outlined destroy of CharacterSet?(v43, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  v44 = v58;
  v45 = (*(v64 + 32))(v58, v43, v2);
  v46 = (*((*v35 & *v63) + 0x1010))(v45);
  v47 = IndexPath._bridgeToObjectiveC()().super.isa;
  v48 = [v46 cellForItemAtIndexPath_];

  if (v48)
  {
    type metadata accessor for DOCItemCollectionCell();
    v49 = swift_dynamicCastClass();
    if (v49)
    {
      v50 = (*((*v35 & *v49) + 0x208))();
      if (v50)
      {
        v51 = v50;
        (*((*v35 & *v50) + 0x4E0))(1);

        v48 = v51;
      }
    }
  }

  return (*(v64 + 8))(v44, v2);
}

uint64_t DOCItemCollectionViewController.lastDropIndexPath.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastDropIndexPath;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v7, v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  swift_beginAccess();
  outlined assign with copy of IndexPath?(a1, v1 + v7, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  swift_endAccess();
  DOCItemCollectionViewController.lastDropIndexPath.didset(v6);
  outlined destroy of CharacterSet?(a1, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  return outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
}

void (*DOCItemCollectionViewController.lastDropIndexPath.modify(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastDropIndexPath;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v9, v8, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  return DOCItemCollectionViewController.lastDropIndexPath.modify;
}

void DOCItemCollectionViewController.lastDropIndexPath.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    outlined init with copy of DOCGridLayout.Spec?(*(*a1 + 12), v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    outlined init with copy of DOCGridLayout.Spec?(v7 + v4, v5, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    swift_beginAccess();
    outlined assign with copy of IndexPath?(v6, v7 + v4, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    swift_endAccess();
    DOCItemCollectionViewController.lastDropIndexPath.didset(v5);
    outlined destroy of CharacterSet?(v5, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(v7 + v4, v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    swift_beginAccess();
    outlined assign with copy of IndexPath?(v3, v7 + v4, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
    swift_endAccess();
    DOCItemCollectionViewController.lastDropIndexPath.didset(v6);
  }

  outlined destroy of CharacterSet?(v6, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  outlined destroy of CharacterSet?(v3, &_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t DOCItemCollectionViewController.isUserInteractionEnabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_isUserInteractionEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.isUserInteractionEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_isUserInteractionEnabled;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  if (((*((*MEMORY[0x277D85000] & *v1) + 0x998))(v4) & 1) == 0)
  {
    v5 = [objc_opt_self() sharedManager];
    [v5 unregisterKeyboardFocusable_];
  }
}

uint64_t (*DOCItemCollectionViewController.isUserInteractionEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = DOCBrowserContainedViewController.isUserInteractionEnabled.modify(v3);
  return DOCItemCollectionViewController.isUserInteractionEnabled.modify;
}

void DOCItemCollectionViewController.isUserInteractionEnabled.modify(void *a1, char a2)
{
  v3 = *a1;
  v4 = (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0 && ((*((*MEMORY[0x277D85000] & *v3[4]) + 0x998))(v4) & 1) == 0)
  {
    v5 = v3[4];
    v6 = [objc_opt_self() sharedManager];
    [v6 unregisterKeyboardFocusable_];
  }

  free(v3);
}

void *DOCItemCollectionViewController.dropTargetHighlightedCell.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_dropTargetHighlightedCell;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.dropTargetHighlightedCell.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_dropTargetHighlightedCell;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void DOCItemCollectionViewController.titleMenuContext.didset(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_titleMenuContext;
  swift_beginAccess();
  v5 = *(v2 + v4);

  LOBYTE(a1) = specialized static DOCItemCollectionViewController.TitleMenuContext.isConfigurationChange(_:_:)(a1, v5);

  if ((a1 & 1) == 0)
  {
    return;
  }

  v7 = 1061109567;
  DOCItemCollectionViewController.getCurrentLocation()(v6);
  if (!v8 || (v9 = v8, v10 = [v8 displayName], v9, !v10))
  {
    v12 = 0xE400000000000000;
    v13 = *(v2 + v4);
    if (!v13)
    {
      goto LABEL_5;
    }

LABEL_7:
    v16 = *(*v13 + 120);

    v15 = v16(v17);
    v14 = v18;

    goto LABEL_8;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = *(v2 + v4);
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_5:
  v14 = 0xE500000000000000;
  v15 = 0x2A6C696E2ALL;
LABEL_8:
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.UI);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315394;
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v12, &v26);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2080;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v26);

    *(v22 + 14) = v25;
    _os_log_impl(&dword_2493AC000, v20, v21, "[TitleMenus] did update '%s' menus to %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v23, -1, -1);
    MEMORY[0x24C1FE850](v22, -1, -1);
  }

  else
  {
  }

  DOCItemCollectionViewController.applyOverlayTitleMenus()();
}

double DOCItemCollectionViewController.titleMenuContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_titleMenuContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  DOCItemCollectionViewController.titleMenuContext.didset(v4);

  return result;
}

void (*DOCItemCollectionViewController.titleMenuContext.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_titleMenuContext;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return DOCItemCollectionViewController.titleMenuContext.modify;
}

void DOCItemCollectionViewController.titleMenuContext.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    DOCItemCollectionViewController.titleMenuContext.didset(v6);
  }

  else
  {
    DOCItemCollectionViewController.titleMenuContext.didset(v6);
  }

  free(v3);
}

uint64_t static DOCItemCollectionViewController.NextReloadPendingValues.== infix(_:_:)(int a1, int a2)
{
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      return 1;
    }
  }

  else if (a2 != 2 && ((a2 ^ a1) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCItemCollectionViewController.NextReloadPendingValues(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t closure #1 in DOCItemCollectionViewController.valuesPendingUntilNextReload.didset(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x9F8))();
  result = (*((*v2 & *a1) + 0xA00))(2);
  if (v3 != 2)
  {
    return (*((*v2 & *a1) + 0xA30))(v3 & 1);
  }

  return result;
}

uint64_t DOCItemCollectionViewController.valuesPendingUntilNextReload.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_valuesPendingUntilNextReload;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.valuesPendingUntilNextReload.setter(int a1)
{
  v2 = v1;
  v4 = a1;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v29 - v19;
  v21 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_valuesPendingUntilNextReload;
  swift_beginAccess();
  v22 = v2[v21];
  v2[v21] = a1;
  if (v4 == 2)
  {
    if (v22 == 2)
    {
      return;
    }

LABEL_6:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v23 = *(v13 + 8);
    v31 = v12;
    v23(v16, v12);
    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in DOCItemCollectionViewController.valuesPendingUntilNextReload.didset;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_62;
    v25 = _Block_copy(aBlock);
    v26 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v27 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v30;
    MEMORY[0x24C1FB940](v20, v11, v7, v25);
    _Block_release(v25);

    (*(v35 + 8))(v7, v27);
    (*(v33 + 8))(v11, v34);
    v23(v20, v31);
    return;
  }

  if (v22 == 2 || ((v22 ^ a1) & 1) != 0)
  {
    goto LABEL_6;
  }
}

void (*DOCItemCollectionViewController.valuesPendingUntilNextReload.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_valuesPendingUntilNextReload;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return DOCItemCollectionViewController.valuesPendingUntilNextReload.modify;
}

void DOCItemCollectionViewController.valuesPendingUntilNextReload.modify(uint64_t a1)
{
  v1 = *a1;
  DOCItemCollectionViewController.valuesPendingUntilNextReload.setter(*(*a1 + 32));

  free(v1);
}

id DOCItemCollectionViewController.contentUnavailableConfigurationWhenEmpty.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0xA28))() & 1) == 0)
  {
    return 0;
  }

  v3 = *((*v2 & *v0) + 0xA68);
  v4 = v3();
  type metadata accessor for DOCExternalDeviceSource();
  if (swift_dynamicCastClass())
  {
    v6 = v3();
    v7 = [v6 identifier];

    DOCItemCollectionViewController.getSource(for:)(v8, v7);
    v10 = v9;

    if (v10)
    {
      v11 = v3();
      v12 = [v11 displayName];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = [v10 displayName];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (v13 == v17 && v15 == v19)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
        }

        else
        {
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for Logger();
          __swift_project_value_buffer(v27, static Logger.UI);
          v28 = v10;
          v29 = v1;
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v48 = v46;
            *v32 = 136315394;
            v45 = v31;
            v33 = [v28 displayName];
            v47 = v28;
            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v48);

            *(v32 + 4) = v37;
            *(v32 + 12) = 2080;
            v39 = (v3)(v38);
            v40 = [v39 displayName];

            v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;

            v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v48);

            *(v32 + 14) = v44;
            _os_log_impl(&dword_2493AC000, v30, v45, "Observed source displayName changed. Using the updated source for Content Unavailable. New Source displayName: %s Old Source displayName: %s)", v32, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v46, -1, -1);
            MEMORY[0x24C1FE850](v32, -1, -1);

            v4 = v47;
          }

          else
          {

            v4 = v28;
          }
        }
      }
    }
  }

  DOCItemCollectionViewController.getCurrentLocation()(v5);
  v24 = v23;
  v25 = [objc_opt_self() emptyProminentConfiguration];
  if (v24)
  {
    if (DOCConcreteLocation.isRootContentBrowsingLocation.getter())
    {
      v4 = v4;
      v26 = specialized DOCContentUnavailableConfiguration.configuredForRootContainer(in:)(v4);
    }

    else
    {
      v26 = DOCConcreteLocation.contentUnavailableConfiguration(withTemplate:)();
    }

    return v26;
  }

  else
  {

    return 0;
  }
}

void __swiftcall DOCItemCollectionViewController.getSource(for:)(DOCDocumentSource_optional *__return_ptr retstr, __C::DOCDocumentSourceIdentifier a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  if (v4)
  {
    v5 = [*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDocumentManager_sourceObserver) sourceForIdentifier_];
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.UI);
    v7 = a2._rawValue;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v15);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2493AC000, v8, v9, "_getSource unable to return source for %s because documentManager is nil", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }
  }
}

id DOCItemCollectionViewController.contentUnavailableConfigurationWhenProtected.getter()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0xA28))() & 1) == 0)
  {
    return 0;
  }

  v2 = *((*v1 & *v0) + 0xA68);
  v3 = v2();
  type metadata accessor for DOCExternalDeviceSource();
  if (swift_dynamicCastClass())
  {
    v4 = v2();
    v5 = [v4 identifier];

    DOCItemCollectionViewController.getSource(for:)(v6, v5);
    v8 = v7;

    if (v8)
    {
      v9 = v2();
      v10 = [v9 displayName];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v8 displayName];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
        }

        else
        {
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          __swift_project_value_buffer(v23, static Logger.UI);
          v24 = v8;
          v25 = v0;
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v43 = v41;
            *v28 = 136315394;
            v29 = [v24 displayName];
            v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v24;
            v32 = v31;

            v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v43);

            *(v28 + 4) = v33;
            *(v28 + 12) = 2080;
            v35 = (v2)(v34);
            v36 = [v35 displayName];

            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v43);

            *(v28 + 14) = v40;
            _os_log_impl(&dword_2493AC000, v26, v27, "Observed source displayName changed. Using the updated source for Content Unavailable. New Source displayName: %s Old Source displayName: %s)", v28, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v41, -1, -1);
            MEMORY[0x24C1FE850](v28, -1, -1);

            v3 = v42;
          }

          else
          {

            v3 = v24;
          }
        }
      }
    }
  }

  v21 = [objc_opt_self() emptyProminentConfiguration];
  v22 = specialized DOCContentUnavailableConfiguration.configuredForProtectedLocation.getter();

  return v22;
}

uint64_t DOCItemCollectionViewController.contentUnavailableUIAllowed.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_contentUnavailableUIAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.contentUnavailableUIAllowed.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_contentUnavailableUIAllowed;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0xA40))(v5);
  }
}

void (*DOCItemCollectionViewController.contentUnavailableUIAllowed.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_contentUnavailableUIAllowed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionViewController.contentUnavailableUIAllowed.modify;
}

void DOCItemCollectionViewController.contentUnavailableUIAllowed.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    (*((*MEMORY[0x277D85000] & *v1[3]) + 0xA40))();
  }

  free(v1);
}

id DOCItemCollectionViewController.docContentUnavailableConfigurationState.getter()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v1 = objc_msgSendSuper2(&v9, sel_docContentUnavailableConfigurationState);
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xF18))())
  {
    v2 = [v0 presentingViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 docUnavailableSearchResultsText];

      if (v4)
      {
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v6;

        v4 = MEMORY[0x24C1FAD20](v5, v7);
      }
    }

    else
    {
      v4 = 0;
    }

    [v1 setSearchControllerText_];
  }

  return v1;
}

Swift::Void __swiftcall DOCItemCollectionViewController.docUpdateContentUnavailableConfiguration(using:)(DOCContentUnavailableConfigurationState using)
{
  v2 = v1;
  isa = using.super.super.isa;
  v4 = DOCItemCollectionViewController.wantsTipsHeader.getter();
  v5 = MEMORY[0x277D85000];
  if (v4 & 1) != 0 && ((*((*MEMORY[0x277D85000] & *v1) + 0x890))())
  {
    goto LABEL_29;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.UI);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = isa;
    v48 = swift_slowAlloc();
    v12 = v48;
    *v10 = 136315906;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDE760, &v48);
    *(v10 + 12) = 1024;
    *(v10 + 14) = (*((*MEMORY[0x277D85000] & *v7) + 0xAE0))() & 1;
    *(v10 + 18) = 1024;
    v5 = MEMORY[0x277D85000];
    *(v10 + 20) = (*((*MEMORY[0x277D85000] & *v7) + 0xAB0))() & 1;

    *(v10 + 24) = 2112;
    *(v10 + 26) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&dword_2493AC000, v8, v9, "[PROTECTED APPS] %s shouldShowAppProtectionShieldUI: %{BOOL}d locationIsProtected: %{BOOL}d self: %@", v10, 0x22u);
    outlined destroy of CharacterSet?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v14 = v12;
    isa = v45;
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  else
  {
  }

  if (((*((*v5 & *v7) + 0xAE0))() & 1) == 0)
  {
    v18 = (*((*v5 & *v7) + 0xCB8))();
    if (v18 >> 62)
    {
      v44 = __CocoaSet.count.getter();
      v5 = MEMORY[0x277D85000];

      if (v44)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v19)
      {
        goto LABEL_29;
      }
    }

    v20 = *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection);
    if (!v20)
    {
      goto LABEL_56;
    }

    if ([v20 isGathering])
    {
      goto LABEL_29;
    }

    v21 = DOCItemCollectionViewController.contentUnavailableConfigurationWhenEmpty.getter();
    if (!v21)
    {
      goto LABEL_29;
    }

    v16 = v21;
    if ((*((*v5 & *v7) + 0xBD8))() != 2)
    {
      goto LABEL_11;
    }

    v22 = (*((*v5 & *v7) + 0xD60))();
    if (*(v22 + 16))
    {
      v23 = *(v22 + 64);

      v25 = (*(*v23 + 112))(v24);

      if (v25 >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          goto LABEL_21;
        }
      }

      else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        if ((v25 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](0, v25);
          goto LABEL_24;
        }

        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          swift_unknownObjectRetain();
LABEL_24:

          swift_getObjectType();
          Document = DOCNode.isCreateDocumentSentinel()();
          swift_unknownObjectRelease();
          if (!Document)
          {
            goto LABEL_11;
          }

LABEL_29:
          v17 = 0;
          goto LABEL_30;
        }

        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }
    }

    goto LABEL_11;
  }

  v15 = DOCItemCollectionViewController.contentUnavailableConfigurationWhenProtected.getter();
  if (!v15)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v48 = v30;
      *v29 = 136315138;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x8000000249BDE760, &v48);
      _os_log_impl(&dword_2493AC000, v27, v28, "[PROTECTED APPS] %s could not get configuration for protected app", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }

    goto LABEL_29;
  }

  v16 = v15;
LABEL_11:
  v46 = [v16 updatedConfigurationForState_];

  v17 = v46;
LABEL_30:
  v47 = v17;
  [v2 doc_setContentUnavailableConfiguration_];
  v31 = [v2 docContentUnavailableConfiguration];
  v32 = v31;
  if (v31)
  {
  }

  v33 = DOCItemCollectionViewController.globalSupplementaryViews.getter();
  v34 = v33;
  if (v33 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v36 = 0;
    while (1)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x24C1FC540](v36, v34);
      }

      else
      {
        if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v37 = *(v34 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      [v37 setHidden_];

      ++v36;
      if (v39 == i)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_45:

  v41 = MEMORY[0x277D85000];
  v42 = (*((*MEMORY[0x277D85000] & *v2) + 0x1018))(v40);
  if (v42)
  {
    v43 = v42;
    (*((*v41 & *v42) + 0x178))(v32 != 0);
  }
}

uint64_t key path setter for DOCItemCollectionViewController.itemCollectionConfiguration : DOCItemCollectionViewController(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v15 = a1[2];
  v16 = v2;
  v17 = a1[4];
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v4 = (*a2 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionConfiguration);
  swift_beginAccess();
  v18[0] = *v4;
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[4];
  v18[3] = v4[3];
  v18[4] = v7;
  v18[1] = v5;
  v18[2] = v6;
  v8 = v15;
  v9 = v17;
  v10 = v14;
  v4[3] = v16;
  v4[4] = v9;
  v4[1] = v10;
  v4[2] = v8;
  *v4 = v13;
  outlined init with copy of DOCItemCollectionConfiguration(&v13, v12);
  return outlined destroy of DOCItemCollectionConfiguration(v18);
}

uint64_t DOCItemCollectionViewController.itemCollectionConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionConfiguration);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return outlined init with copy of DOCItemCollectionConfiguration(v10, v9);
}

id DOCItemCollectionViewController.source.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xA50))(v3);
  v1 = v3[0];
  outlined destroy of DOCItemCollectionConfiguration(v3);
  return v1;
}

id DOCItemCollectionViewController.defaultCollection.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xA50))(v4);
  v1 = v5;
  v2 = v5;
  outlined destroy of DOCItemCollectionConfiguration(v4);
  return v1;
}

uint64_t DOCItemCollectionViewController.defaultNode.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xA50))(v3);
  v1 = v3[8];
  swift_unknownObjectRetain();
  outlined destroy of DOCItemCollectionConfiguration(v3);
  return v1;
}

uint64_t DOCItemCollectionViewController.interactionDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_interactionDelegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 1) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    if (!Strong)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_5;
  }

  v7 = v6;
  swift_unknownObjectRelease();
  if (v7 != Strong)
  {
LABEL_5:
    if ([v2 doc_hasAppearedOrIsAppearing])
    {
      specialized DOCItemCollectionViewController.reloadNodeTitleMenuConfigurations(canFetchURLIfNecessary:)();
    }
  }

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void (*DOCItemCollectionViewController.interactionDelegate.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_interactionDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCItemCollectionViewController.interactionDelegate.modify;
}

void DOCItemCollectionViewController.interactionDelegate.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[6] + (*a1)[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v5 + 1) = v4;
  swift_unknownObjectWeakAssign();
  v7 = swift_unknownObjectWeakLoadStrong();
  v8 = v7;
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      swift_unknownObjectRelease();
      if (Strong)
      {
        v10 = v8 == Strong;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
LABEL_25:
        swift_unknownObjectRelease();
        goto LABEL_26;
      }
    }

    else if (!Strong)
    {
      goto LABEL_26;
    }

    if ([v3[5] doc_hasAppearedOrIsAppearing])
    {
      specialized DOCItemCollectionViewController.reloadNodeTitleMenuConfigurations(canFetchURLIfNecessary:)();
    }

    goto LABEL_25;
  }

  if (!v7)
  {
    if (!Strong)
    {
      goto LABEL_26;
    }

    swift_unknownObjectRetain();
    goto LABEL_18;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (Strong)
  {
    v9 = v8 == Strong;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
LABEL_18:
    if ([v3[5] doc_hasAppearedOrIsAppearing])
    {
      specialized DOCItemCollectionViewController.reloadNodeTitleMenuConfigurations(canFetchURLIfNecessary:)();
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_26:
  swift_unknownObjectRelease();

  free(v3);
}

uint64_t DOCItemCollectionViewController.locationIsProtected.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationIsProtected;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.locationIsProtected.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationIsProtected;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.locationHasAuthenticated.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationHasAuthenticated;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.locationHasAuthenticated.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationHasAuthenticated;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.shouldShowAppProtectionShieldUI.getter()
{
  if ([objc_opt_self() protectedAppsEnabled] && (v1 = MEMORY[0x277D85000], ((*((*MEMORY[0x277D85000] & *v0) + 0xAB0))() & 1) != 0))
  {
    v2 = (*((*v1 & *v0) + 0xAC8))() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void DOCItemCollectionViewController.actionReporting.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v2 = [v1 navigationItem];
  v3 = [v2 searchController];

  if (v3)
  {
    v4 = [v3 searchResultsController];

    if (v4)
    {
      type metadata accessor for DOCItemCollectionViewController(0);
      v5 = swift_dynamicCastClass();
      if (!v5)
      {
        swift_unknownObjectRelease();

        return;
      }

      v6 = v5;
      v7 = MEMORY[0x277D85000];
      v8 = (*((*MEMORY[0x277D85000] & *v1) + 0xE8))();
      (*((*v7 & *v6) + 0xF0))(v8);
    }
  }

  swift_unknownObjectRelease();
}

void (*DOCItemCollectionViewController.actionReporting.modify(uint64_t **a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = DOCBrowserContainedViewController.actionReporting.modify(v3);
  return DOCItemCollectionViewController.actionReporting.modify;
}

void DOCItemCollectionViewController.actionReporting.modify(id **a1, char a2)
{
  v3 = *a1;
  ((*a1)[5])(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = [v3[4] navigationItem];
    v5 = [v4 searchController];

    if (v5)
    {
      v6 = [v5 searchResultsController];

      if (v6)
      {
        type metadata accessor for DOCItemCollectionViewController(0);
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v8 = v7;
          v9 = MEMORY[0x277D85000];
          v10 = (*((*MEMORY[0x277D85000] & *v3[4]) + 0xE8))();
          (*((*v9 & *v8) + 0xF0))(v10);
        }
      }
    }
  }

  free(v3);
}

id DOCItemCollectionViewController.tabbedBrowserViewController.getter()
{
  v1 = objc_opt_self();
  v2 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) sceneIdentifier];
  v3 = [v1 globalTabbedBrowserControllerForIdentifier_];

  return v3;
}

id DOCItemCollectionViewController.outlineManager.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___outlineManager;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___outlineManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___outlineManager);
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v0) + 0x1160))(&v5);
    if (v6)
    {
      v3 = v5;
    }

    else
    {
      v3 = 2;
    }

    outlined consume of DOCItemSortDescriptor?(v5, v6, v7);
    LOBYTE(v5) = v3;
    type metadata accessor for OutlineManager();
    swift_allocObject();
    v2 = OutlineManager.init(sortMode:)(&v5);
    *(v0 + v1) = v2;
  }

  return v2;
}

double DOCItemCollectionViewController.outlineManager.setter(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___outlineManager) = a1;

  return result;
}

double (*DOCItemCollectionViewController.outlineManager.modify(id *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = DOCItemCollectionViewController.outlineManager.getter();
  return DOCItemCollectionViewController.outlineManager.modify;
}

void *DOCItemCollectionViewController.outerScrollView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_outerScrollView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.outerScrollView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_outerScrollView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.linkCreateFolderInteraction.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkCreateFolderInteraction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.linkCreateFolderInteraction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkCreateFolderInteraction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.linkTrashFileInteraction.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkTrashFileInteraction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.linkTrashFileInteraction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkTrashFileInteraction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.linkSetFileExtensionVisibilityInteraction.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetFileExtensionVisibilityInteraction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.linkSetFileExtensionVisibilityInteraction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetFileExtensionVisibilityInteraction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCItemCollectionViewController.linkSetGroupingModeInteraction.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetGroupingModeInteraction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionViewController.linkSetGroupingModeInteraction.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetGroupingModeInteraction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionViewController.visibleItemsCorpus.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___visibleItemsCorpus;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___visibleItemsCorpus))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___visibleItemsCorpus);
  }

  else
  {
    v3 = v0;
    type metadata accessor for SiriVocabulary.Corpus();
    swift_allocObject();
    v2 = SiriVocabulary.Corpus.init(contents:capacity:)();
    *(v3 + v1) = v2;
  }

  return v2;
}

double DOCItemCollectionViewController.visibleItemsCorpus.setter(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___visibleItemsCorpus) = a1;

  return result;
}

double (*DOCItemCollectionViewController.visibleItemsCorpus.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = DOCItemCollectionViewController.visibleItemsCorpus.getter();
  return DOCItemCollectionViewController.visibleItemsCorpus.modify;
}

double DOCItemCollectionViewController.outlineManager.modify(uint64_t *a1, uint64_t a2, void *a3)
{
  *(a1[1] + *a3) = *a1;

  return result;
}

char *DOCItemCollectionViewController.init(configuration:collectionViewPool:documentManager:actionManager:)(__int128 *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_editingMode) = 0;
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsManager) = 0;
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___familySharedFolderTip) = 1;
  v6 = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_subscriptions) = MEMORY[0x277D84FA0];
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTasks) = v6;
  v7 = a1[3];
  v151 = a1[2];
  v152 = v7;
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isOptionKeyPressed) = 0;
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_loadingView) = 0;
  v8 = a1[4];
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_emptyTargetedPreview) = 0;
  v9 = (v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_existingOverlayTitleBeforeRename);
  *v9 = 0;
  v9[1] = 0;
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fiNodeDataSource) = 0;
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_fpNodeDataSource) = 0;
  v153 = v8;
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemIdentifierForNewFolderAnimation) = 0;
  v11 = *a1;
  v10 = a1[1];
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeDragStrongReferenceToSelf) = 0;
  v149 = v11;
  v150 = v10;
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isActiveDragSource) = 0;
  *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipsHeaderView) = 0;
  v12 = (v4 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_familyFetcher);
  v13 = type metadata accessor for FamilyFetcher();
  v14 = swift_allocObject();
  v12[3] = v13;
  v12[4] = &protocol witness table for FamilyFetcher;
  *v12 = v14;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tipViewIsAvailable) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDragSession) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentDropSession) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbMenu) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentClickyOrbConfiguration) = 0;
  v15 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_blockToRunWhenMenuInteractionFinishedDismissing);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registeredItemCellClassByIdentifier;
  v17 = MEMORY[0x277D84F90];
  *(v5 + v16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_26DocumentManagerExecutables21DOCItemCollectionCellCmTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemHierarchyEventListener + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortOptionsAccessibilityModelView;
  *(v5 + v18) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_multiselectActionStatus) = 2;
  v19 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastDropIndexPath;
  v20 = type metadata accessor for IndexPath();
  v21 = *(*(v20 - 8) + 56);
  v21(v5 + v19, 1, 1, v20);
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_dropTargetHighlightedCell) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_titleMenuContext) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingTitleMenuContext) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_valuesPendingUntilNextReload) = 2;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_contentUnavailableUIAllowed) = 1;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_urlToItemCache) = MEMORY[0x277D84F98];
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_interactionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationIsProtected) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_locationHasAuthenticated) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSelectingUsingGesture) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___outlineManager) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_outerScrollView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkCreateFolderInteraction) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkTrashFileInteraction) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetFileExtensionVisibilityInteraction) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_linkSetGroupingModeInteraction) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___visibleItemsCorpus) = 0;
  v22 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionListCellIdentifier);
  *v22 = 0xD000000000000020;
  v22[1] = 0x8000000249BDE7A0;
  v23 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionOutlineCellIdentifier);
  *v23 = 0xD000000000000023;
  v23[1] = 0x8000000249BDE7D0;
  v24 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGridCellIdentifier);
  *v24 = 0xD000000000000020;
  v24[1] = 0x8000000249BDE800;
  v25 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionLargeTextListCellIdentifier);
  *v25 = 0xD000000000000029;
  v25[1] = 0x8000000249BDE830;
  v26 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionCreateCellIdentifier);
  *v26 = 0xD000000000000022;
  v26[1] = 0x8000000249BDE860;
  v27 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionFooterIdentifier);
  *v27 = 0xD00000000000002BLL;
  v27[1] = 0x8000000249BDE890;
  v28 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyFooterIdentifier);
  *v28 = 0xD000000000000030;
  v28[1] = 0x8000000249BDE8C0;
  v29 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionHeaderIdentifier);
  *v29 = 0xD00000000000002BLL;
  v29[1] = 0x8000000249BDE900;
  v30 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionGroupedSectionHeaderIdentifier);
  *v30 = 0xD00000000000002CLL;
  v30[1] = 0x8000000249BDE930;
  v31 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionStatusSectionEmptyHeaderIdentifier);
  *v31 = 0xD000000000000030;
  v31[1] = 0x8000000249BDE960;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_searchPresentationState) = 4;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_displayMode) = 0;
  v32 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentLoadingProgress);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentTransitionVisibility);
  *v33 = 0;
  v33[1] = 0;
  v34 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_cellContentPool;
  type metadata accessor for DOCItemCollectionCellContentPool();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v35[4] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_26DocumentManagerExecutables32DOCItemCollectionCellContentPoolC0jK7PromiseOTt0g5Tf4g_n(v17);
  *(v5 + v34) = v35;
  v36 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_imageCache;
  type metadata accessor for ImageCache();
  swift_allocObject();
  *(v5 + v36) = ImageCache.init()();
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isApplyingSnapshot) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsUpdateDiffableSnapshot) = 1;
  v37 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_appLaunchOptimizationsActive;
  v139 = objc_opt_self();
  v38 = [v139 shared];
  v39 = [v38 locked];

  *(v5 + v37) = v39;
  v21(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_currentFocusEngineIndexPath, 1, 1, v20);
  v40 = v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsController;
  *v40 = v17;
  *(v40 + 8) = v17;
  *(v40 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_So7DOCNode_pTt0g5Tf4g_n(v17);
  *(v40 + 24) = 11;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__groupingBehavior) = 10;
  v41 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldShowAllFilenameExtensionPublisher;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v42 = static DOCFileExtensionManager.shared;
  *(v5 + v41) = (*(*static DOCFileExtensionManager.shared + 192))();
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsBeforeModelUpdate) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringObservation) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemsOriginObservation) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_defaultSaveLocationDidChangeNotificationToken) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_activeThumbnailBatchingTokens) = v17;
  v21(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathForRememberedFocusNode, 1, 1, v20);
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_postBatchUpdateBlocks) = v17;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderContainerView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_additionalHeaderView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_syncStateHeaderView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_firstItemInsertionRequestsFocus) = 0;
  v43 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController;
  *(v5 + v43) = [objc_allocWithZone(type metadata accessor for DOCTypeToFocusController()) init];
  v21(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_indexPathOfSwipedItem, 1, 1, v20);
  v44 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___listLayoutConfiguration;
  v45 = type metadata accessor for UICollectionLayoutListConfiguration();
  (*(*(v45 - 8) + 56))(v5 + v44, 1, 1, v45);
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___collectionViewLayout) = 0;
  v46 = v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_tableLayoutSidebarPlainAppearanceMetrics;
  *v46 = 0;
  *(v46 + 8) = xmmword_249BAA8A0;
  *(v46 + 24) = xmmword_249BAA8B0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__loadedCollectionView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__footerView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage____headerContainerView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___promptView) = 1;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shareBannerView) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetricsSourceTraits) = 0;
  v47 = v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_stackViewMetrics;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v48 = qword_27EEE8FE0;
  v49 = *algn_27EEE8FD0;
  *v47 = static DOCItemCollectionCellStackMetrics.zero;
  *(v47 + 16) = v49;
  *(v47 + 32) = v48;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_moreActionsBarButton) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isSpringLoading) = 0;
  v50 = v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sortingDescriptor;
  *(v50 + 8) = 0;
  *(v50 + 16) = 0;
  *v50 = 0;
  *(v50 + 24) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchUpdates) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__showsCreateButton) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewLayoutTraits) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_gatheringThumbnails) = 1;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updatedIsScrollEnabled) = 2;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_didKickstartNotifyContentDidLoad) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_sourceEjectableObservation) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastPreviewedFPItem) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController__selectedChildNode) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_selectedIndexPathWasAlreadySelected) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_performingBatchSelection) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForBrowserLayoutChanges) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForUIPChanges) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_registrationForInsetChanges) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForceLayoutForFooter) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_updateSnapshot) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_liveResizeDidSkip_computeStackMetrics) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_endingInlineRename) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preparingForInlineRename) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_renamingNewlyCreatedFolder) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_inlineRenameController) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_wantsNavBarHiddenForRenaming) = 0;
  v51 = v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preSnapshotConfiguration;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  *(v51 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___notificationsController) = 0;
  v52 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___untitledFolderName);
  *v52 = 0;
  v52[1] = 0;
  v53 = v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_overridenEstimatedCollectionViewSize;
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 16) = 1;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_pendingNodeContexts) = v17;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToReveal) = v17;
  v54 = v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeToSelectAndScroll;
  *v54 = 0;
  *(v54 + 8) = 0;
  v55 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodeScrollPositionInfo;
  v56 = type metadata accessor for ScrollPositionInfo(0);
  (*(*(v56 - 8) + 56))(v5 + v55, 1, 1, v56);
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticApplyRestorableSettingsAllowed) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_automaticSaveRestorableSettingsAllowed) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsForcedUnderNavBarAppearanceOnAppear) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_hasDeferredRepositionInlineEditingCell) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_shouldDeferRepositionInlineEditingCell) = 0;
  v57 = v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_lastCollectionViewSafeInsets;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 32) = 1;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_updateStackViewMetrics) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_needsCollectionReload) = 0;
  v58 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_bbiStorage;
  type metadata accessor for DOCItemCollectionViewController.BBIStorage();
  swift_allocObject();
  DOCItemCollectionViewController.BBIStorage.init()();
  *(v5 + v58) = v59;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController____lazy_storage___viewOptionsViewModel) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_viewOptionsViewController) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedCreatedFolderToBeRenamed) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enqueuedNodesToBeMovedIntoCreatedFolder) = v17;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_newFolderReadyForRenameTimer) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_repositionRenamingCellTimer) = 0;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_collectionViewPool) = a2;
  v60 = a2;
  static FolderIconFetcher.prewarmGenericFolder()();
  v61 = (v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_itemCollectionConfiguration);
  v62 = v152;
  v61[2] = v151;
  v61[3] = v62;
  v61[4] = v153;
  v63 = v150;
  *v61 = v149;
  v61[1] = v63;
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_preventLoadingView) = v150 == 3;
  v64 = *(*v42 + 168);
  v65 = outlined init with copy of DOCItemCollectionConfiguration(&v149, &aBlock);
  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_isShowingAllFilenameExtensions) = v64(v65) & 1;
  v66 = *(&v153 + 1);
  if (*(&v153 + 1))
  {
    v141 = v60;
    v67 = *(&v150 + 1);
    v68 = v149;
    v69 = *((*MEMORY[0x277D85000] & *v149) + 0x1A0);
    v70 = *(&v150 + 1);
    v71 = v66;
    v138 = v70;
    if (v69())
    {
      if (v67 && (v72 = [v70 representedTag]) != 0)
      {
        v73 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_249B9A480;
        v75 = [v73 displayName];
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        *(v74 + 32) = v76;
        *(v74 + 40) = v78;

        v79 = *(&v149 + 1);
        v80.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v79 = *(&v149 + 1);
        v80.super.isa = 0;
      }

      v98 = [objc_allocWithZone(MEMORY[0x277D061F8]) initWithConfiguration:v79 tags:v80.super.isa];
    }

    else
    {
      v98 = 0;
    }

    v99 = [v68 identifier];
    v146 = v151;
    v147 = v152;
    v148 = v153;
    aBlock = v149;
    v145 = v150;
    v100 = MEMORY[0x277D85000];
    v101 = (*((*MEMORY[0x277D85000] & *v71) + 0x230))();
    v102 = [objc_opt_self() defaultPermission];
    v103 = specialized static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v99, v98, v102, &aBlock, v101);

    v104 = *((*v100 & *v71) + 0x238);
    v105 = v103;
    v104(v103);

    v106 = &v68[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
    if (v68[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8] == 1)
    {
      v96 = *v106;
      v107 = *v106;
    }

    else
    {
      v96 = 0;
    }

    v60 = v141;
    *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationProperties) = v98;
    v97 = &OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection;
    v92 = MEMORY[0x277D85000];
  }

  else
  {
    v81 = v153;
    if (!v153)
    {
LABEL_26:
      *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection) = 0;
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v82 = v149;
    swift_unknownObjectRetain();
    v83 = [v82 identifier];
    v146 = v151;
    v147 = v152;
    v148 = v153;
    aBlock = v149;
    v145 = v150;
    v84 = [objc_opt_self() defaultPermission];
    v85 = specialized static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v83, 0, v84, &aBlock, 0);

    v86 = type metadata accessor for DOCNodeCollection();
    v87 = *(&v149 + 1);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v89 = v87;
    v90 = v82;
    LOBYTE(aBlock) = 1;
    v91 = specialized DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(v81, v87, v82, 0x100000000uLL, v86, ObjectType);
    *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection) = v91;
    v92 = MEMORY[0x277D85000];
    v93 = *((*MEMORY[0x277D85000] & *v91) + 0x238);
    v94 = v91;
    v95 = v85;
    v93(v85);

    swift_unknownObjectRelease();
    v96 = 0;
    v66 = 0;
    v97 = &OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationProperties;
  }

  *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_enumerationIdentifier) = v96;
  *(v5 + *v97) = v66;
  v108 = *(&v149 + 1);
  v109 = a4;
  v110 = v108;
  v111 = a3;
  v112 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v110, a3, a4);
  v113 = *&v112[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_nodeCollection];
  if (!v113)
  {
    __break(1u);
    goto LABEL_26;
  }

  v114 = *((*v92 & *v113) + 0x198);
  v115 = v112;
  v116 = v112;
  v117 = v113;
  v114(v115, &protocol witness table for DOCItemCollectionViewController);

  v118 = *&v116[OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_typeToFocusController];
  v119 = *((*v92 & *v118) + 0x80);
  v120 = v118;
  v119(v115, &protocol witness table for DOCItemCollectionViewController);

  if (DOCItemCollectionViewController.wantsTipsHeader.getter())
  {
    v121 = [v139 shared];
    v122 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v123 = swift_allocObject();
    *(v123 + 16) = v122;
    *(v123 + 24) = v110;
    *&v146 = partial apply for closure #1 in DOCItemCollectionViewController.setUpTips(configuration:);
    *(&v146 + 1) = v123;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v145 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v145 + 1) = &block_descriptor_26_0;
    v124 = _Block_copy(&aBlock);
    v125 = v110;

    [v121 performAfterLaunch_];
    _Block_release(v124);
  }

  outlined destroy of DOCItemCollectionConfiguration(&v149);
  DOCItemCollectionViewController.applyCommonConfiguration()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_249B9A480;
  v127 = type metadata accessor for UITraitHorizontalSizeClass();
  v128 = MEMORY[0x277D74C50];
  *(v126 + 32) = v127;
  *(v126 + 40) = v128;
  MEMORY[0x24C1FB8A0](v126, sel_checkIfOutlineModeNeedsChange);
  swift_unknownObjectRelease();

  v129 = specialized DOCItemCollectionViewController.footerView(createIfNeeded:)(1);
  if (v129)
  {
    v130 = v129;
    DOCStatusFooterView.updateQuotaLabel()(v131);
  }

  v132 = *&v116[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_249BA37E0;
  v134 = specialized static UIDocumentBrowserAction.tagsAction()(v133);
  *(v133 + 32) = v134;
  v135 = specialized static UIDocumentBrowserAction.folderCustomizationAction()(v134);
  *(v133 + 40) = v135;
  *(v133 + 48) = specialized static UIDocumentBrowserAction.infoAction()(v135);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v132 setActions_];

  return v116;
}

id DOCItemCollectionViewController.description.getter()
{
  if ([v0 isViewLoaded])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_249B9A480;
    result = [v0 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    *(v1 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    *(v1 + 64) = lazy protocol witness table accessor for type UIView and conformance NSObject();
    *(v1 + 32) = v3;
    v4 = String.init(format:_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xE600000000000000;
    v4 = 0x296C6C756E28;
  }

  v33.receiver = v0;
  v33.super_class = type metadata accessor for DOCItemCollectionViewController(0);
  v7 = objc_msgSendSuper2(&v33, sel_description);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v34[0] = v8;
  v34[1] = v10;
  v11 = v0;
  MEMORY[0x24C1FAEA0](32, 0xE100000000000000);
  MEMORY[0x24C1FAEA0](v4, v6);

  v12 = MEMORY[0x24C1FAEA0](32, 0xE100000000000000);
  v13 = MEMORY[0x277D85000];
  v14 = (*((*MEMORY[0x277D85000] & *v0) + 0xA68))(v12);
  v15 = [v14 identifier];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  MEMORY[0x24C1FAEA0](v16, v18);

  v20 = v34[0];
  (*((*v13 & *v11) + 0xA50))(v34, v19);
  v21 = v35;
  v22 = v35;
  outlined destroy of DOCItemCollectionConfiguration(v34);
  if (v21)
  {
    v23 = [v22 shortDescription];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    MEMORY[0x24C1FAEA0](v24, v26);

    MEMORY[0x24C1FAEA0](32, 0xE100000000000000);

    v27 = [v22 representedTag];
    if (v27)
    {
      v28 = v27;
      _StringGuts.grow(_:)(20);

      v29 = [v28 displayName];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      MEMORY[0x24C1FAEA0](v30, v32);

      MEMORY[0x24C1FAEA0](0xD000000000000012, 0x8000000249BDEA20);
    }

    else
    {
    }
  }

  return v20;
}

void *DOCItemCollectionViewController.docSearchController.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xF18))())
  {
    return 0;
  }

  result = (*((*v1 & *v0) + 0x198))();
  if (result)
  {
    v3 = result;
    v4 = [result searchController];

    if (v4)
    {
      type metadata accessor for DOCSearchController();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DOCItemCollectionViewController.searchPresentationState.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_searchPresentationState;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionViewController.searchPresentationState.setter(int a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_searchPresentationState;
  v5 = swift_beginAccess();
  v6 = *(v2 + v4);
  *(v2 + v4) = a1;
  switch(a1)
  {
    case 2u:
      if (v6 == 2)
      {
        return;
      }

      break;
    case 3u:
      if (v6 == 3)
      {
        return;
      }

      break;
    case 4u:
      if (v6 == 4)
      {
        return;
      }

      break;
    default:
      if ((v6 - 2) >= 3 && ((v6 ^ a1) & 1) == 0)
      {
        return;
      }

      break;
  }

  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *v2) + 0xBB8))(v5);
  if (v8)
  {
    v9 = v8;
    (*((*v7 & *v8) + 0x3C0))(&v10);
    if (BYTE1(v10))
    {
      specialized DOCItemCollectionViewController.updateOverlay(animated:)();
    }
  }
}

void (*DOCItemCollectionViewController.searchPresentationState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables31DOCItemCollectionViewController_searchPresentationState;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionViewController.searchPresentationState.modify;
}

void DOCItemCollectionViewController.searchPresentationState.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if ((a2 & 1) == 0)
  {
    switch(v3)
    {
      case 2:
        if (v6 == 2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
        if (v6 == 3)
        {
          goto LABEL_31;
        }

        break;
      case 4:
        if (v6 == 4)
        {
          goto LABEL_31;
        }

        break;
      default:
        if ((v6 - 2) >= 3 && ((v6 ^ v3) & 1) == 0)
        {
          goto LABEL_31;
        }

        break;
    }

    v10 = MEMORY[0x277D85000];
    v11 = (*((*MEMORY[0x277D85000] & *v2[3]) + 0xBB8))();
    if (!v11)
    {
      goto LABEL_31;
    }

    v9 = v11;
    (*((*v10 & *v11) + 0x3C0))(&v12 + 3);
    if (!BYTE4(v12))
    {
      goto LABEL_30;
    }

LABEL_29:
    specialized DOCItemCollectionViewController.updateOverlay(animated:)();
LABEL_30:

    goto LABEL_31;
  }

  switch(v3)
  {
    case 2:
      if (v6 != 2)
      {
        goto LABEL_22;
      }

      break;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_22;
      }

      break;
    case 4:
      if (v6 == 4)
      {
        break;
      }

LABEL_22:
      v7 = MEMORY[0x277D85000];
      v8 = (*((*MEMORY[0x277D85000] & *v2[3]) + 0xBB8))();
      if (!v8)
      {
        break;
      }

      v9 = v8;
      (*((*v7 & *v8) + 0x3C0))(&v12);
      if (!BYTE1(v12))
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    default:
      if (v6 - 2) < 3 || ((v6 ^ v3))
      {
        goto LABEL_22;
      }

      break;
  }

LABEL_31:

  free(v2);
}