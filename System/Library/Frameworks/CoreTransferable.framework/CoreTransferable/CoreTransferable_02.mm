void closure #1 in static NSItemProvider.Loader.loadFile<A>(exporting:transferable:completionHandler:)(uint64_t a1, _BYTE *a2, void (*a3)(char *, uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v16 - v12;
  *a2 = 1;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  a3(v13, a5, 0);
  outlined destroy of UTType?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  NSFileCoordinator.scheduleDeletion(url:queue:)(a6 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_url, *(a6 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_operationQueue));
}

uint64_t static NSItemProvider.Loader.shouldExport<A>(condition:item:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v12[3] = a4;
    v12[4] = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);

    v10 = a1(v12);
    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(a1, a2);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

id NSItemProvider.init<A>(transferable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1, uint64_t a2))
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  v10 = v8;

  NSItemProvider.register<A>(_:)(partial apply for implicit closure #1 in NSItemProvider.init<A>(transferable:), v9, a3, a4);

  return v10;
}

uint64_t NSItemProvider.register<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1, uint64_t a2))
{
  v118 = a2;
  v119 = a1;
  v130 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v127 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v7;
  MEMORY[0x28223BE20](v6);
  v135 = &v113 - v8;
  v123 = type metadata accessor for Optional();
  v122 = *(v123 - 8);
  v9 = MEMORY[0x28223BE20](v123);
  v120 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v114 = &v113 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v116 = &v113 - v14;
  MEMORY[0x28223BE20](v13);
  v131 = &v113 - v15;
  v132 = type metadata accessor for ResolvedTransferRepresentation(0);
  v16 = *(v132 - 8);
  v17 = MEMORY[0x28223BE20](v132);
  v133 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v121 = &v113 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v115 = &v113 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v117 = (&v113 - v24);
  MEMORY[0x28223BE20](v23);
  v26 = &v113 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = type metadata accessor for _TransferRepresentationValue(0, AssociatedTypeWitness, v28, v29);
  v136 = *(v30 - 8);
  v137 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v113 - v32;
  v34 = *(AssociatedTypeWitness - 8);
  v35 = MEMORY[0x28223BE20](v31);
  v37 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v113 - v38;
  (*(a4 + 3))(a3);
  swift_getDynamicType();
  v125 = v34;
  v40 = *(v34 + 16);
  v124 = v39;
  v40(v37, v39, AssociatedTypeWitness);
  _TransferRepresentationValue.init(_:)(v37, AssociatedTypeWitness, v33);
  _TransferRepresentationInputs.init()();
  v134 = a4;
  v41 = *(swift_getAssociatedConformanceWitness() + 48);
  v126 = AssociatedTypeWitness;
  v41(&aBlock, v33);
  (*(v136 + 8))(v33, v137);
  v42 = *(aBlock + 16);
  if (v42)
  {
    v136 = a3;
    v43 = &v26[*(v132 + 32)];
    v44 = aBlock + ((*(v16 + 80) + 32) & ~*(v16 + 80));

    v46 = 0;
    v137 = result;
    while (1)
    {
      if (v46 >= *(result + 16))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

      v47 = *(v16 + 72);
      outlined init with copy of ResolvedTransferRepresentation(v44 + v47 * v46, v26, type metadata accessor for ResolvedTransferRepresentation);
      v48 = *v43;
      v49 = v43[1];
      outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v43, v49);
      _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v26, type metadata accessor for ResolvedTransferRepresentation);
      if (v48)
      {
        break;
      }

      ++v46;
      result = v137;
      if (v42 == v46)
      {
        swift_bridgeObjectRelease_n();
        return (*(v125 + 8))(v124, v126);
      }
    }

    v50 = v137;

    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v48, v49);
    v51 = *(v130 + 56);
    v51(v131, 1, 1, v136);
    v52 = *(v50 + 16);

    v53 = v122;
    v54 = v121;
    if (v52)
    {
      v55 = 0;
      v56 = v44;
      while (1)
      {
        if (v55 >= *(v137 + 16))
        {
          goto LABEL_46;
        }

        outlined init with copy of ResolvedTransferRepresentation(v56, v54, type metadata accessor for ResolvedTransferRepresentation);
        if (*(v54 + 16) != 255)
        {
          break;
        }

        ++v55;
        result = _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v54, type metadata accessor for ResolvedTransferRepresentation);
        v56 += v47;
        if (v52 == v55)
        {
          goto LABEL_13;
        }
      }

      v61 = v115;
      _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v54, v115, type metadata accessor for ResolvedTransferRepresentation);
      v62 = v117;
      v63 = _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v61, v117, type metadata accessor for ResolvedTransferRepresentation);
      v64 = v116;
      (v119)(v63);
      v57 = v131;
      v65 = v123;
      v121 = *(v53 + 8);
      (v121)(v131, v123);
      v51(v64, 0, 1, v136);
      (*(v53 + 32))(v57, v64, v65);
      v66 = *(v62 + 16);
      if (v66 == 255)
      {
        v74 = 0;
        v58 = v130;
        v60 = v120;
      }

      else
      {
        v68 = *v62;
        v67 = *(v62 + 8);
        v69 = v57;
        v138 = *v62;
        v139 = v67;
        v70 = v66 & 1;
        v140 = v66 & 1;
        v71 = v114;
        (*(v53 + 16))(v114, v69, v65);
        v72 = v65;
        v58 = v130;
        v73 = v136;
        if ((*(v130 + 48))(v71, 1, v136) == 1)
        {
          outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage(v68, v67, v70);
          (v121)(v71, v72);
          v143 = 0;
          aBlock = 0u;
          v142 = 0u;
        }

        else
        {
          *(&v142 + 1) = v73;
          v143 = v134;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
          (*(v58 + 32))(boxed_opaque_existential_1, v71, v73);
          outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage(v68, v67, v70);
        }

        v76 = ResolvedTransferRepresentation.SuggestedFileNameStorage.resolved(_:)(&aBlock);
        v78 = v77;
        outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(v138, v139, v140);
        outlined destroy of UTType?(&aBlock, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
        v53 = v122;
        v57 = v131;
        v60 = v120;
        if (v78)
        {
          v74 = MEMORY[0x20F32D490](v76, v78);
        }

        else
        {
          v74 = 0;
        }
      }

      [v129 setSuggestedName_];

      _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v117, type metadata accessor for ResolvedTransferRepresentation);
      v59 = v136;
    }

    else
    {
LABEL_13:

      v58 = v130;
      v57 = v131;
      v59 = v136;
      v60 = v120;
    }

    (*(v53 + 16))(v60, v57, v123);
    v79 = *(v58 + 48);
    if (v79(v60, 1, v59) == 1)
    {
      v119();
      v80 = v79(v60, 1, v59);
      v82 = v132;
      v81 = v133;
      if (v80 != 1)
      {
        (*(v53 + 8))(v60, v123);
      }
    }

    else
    {
      (*(v58 + 32))(v135, v60, v59);
      v82 = v132;
      v81 = v133;
    }

    v83 = *(v137 + 16);
    v84 = v131;
    if (v83)
    {
      v119 = (v58 + 16);
      v118 = v58 + 32;
      v117 = &v142;
      while (1)
      {
        outlined init with copy of ResolvedTransferRepresentation(v44, v81, type metadata accessor for ResolvedTransferRepresentation);
        v85 = (v81 + v82[8]);
        v86 = *v85;
        if (*v85)
        {
          v87 = v85[1];
          v88 = v81 + v82[10];
          v89 = v81;
          v90 = *v88;
          v91 = *(v88 + 8);

          if (static NSItemProvider.Loader.shouldExport<A>(condition:item:)(v90, v91, v135, v136, v134))
          {
            v92 = *(v89 + v82[7]);
            if (v92 == MEMORY[0x277CC9318])
            {
              v93 = UTType.identifier.getter();
              v121 = MEMORY[0x20F32D490](v93);

              v138 = *&v133[*(v132 + 44)];
              v120 = TransferRepresentationVisibility.itemProviderVisibility.getter();
              v94 = v130;
              v95 = v127;
              v96 = v136;
              (*(v130 + 16))(v127, v135, v136);
              v97 = (*(v94 + 80) + 48) & ~*(v94 + 80);
              v98 = swift_allocObject();
              v99 = v134;
              *(v98 + 2) = v96;
              *(v98 + 3) = v99;
              *(v98 + 4) = v86;
              *(v98 + 5) = v87;
              v100 = v95;
              v81 = v133;
              (*(v94 + 32))(&v98[v97], v100, v96);
              v143 = partial apply for closure #3 in NSItemProvider.register<A>(_:);
              v144 = v98;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              *&v142 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
              *(&v142 + 1) = &block_descriptor_9;
              v101 = _Block_copy(&aBlock);

              v102 = v121;
              [v129 registerDataRepresentationForTypeIdentifier:v121 visibility:v120 loadHandler:v101];
              outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v86, v87);
              _Block_release(v101);
            }

            else
            {
              v81 = v89;
              if (v92 != type metadata accessor for SentTransferredFile(0))
              {
                outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v86, v87);
LABEL_40:
                _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v81, type metadata accessor for ResolvedTransferRepresentation);
                v84 = v131;
                goto LABEL_30;
              }

              v121 = *(v89 + v82[6]);
              v103 = UTType.identifier.getter();
              v120 = MEMORY[0x20F32D490](v103);

              v138 = *&v133[*(v132 + 44)];
              v116 = TransferRepresentationVisibility.itemProviderVisibility.getter();
              v104 = v130;
              v105 = v127;
              v106 = v136;
              (*(v130 + 16))(v127, v135, v136);
              v107 = (*(v104 + 80) + 48) & ~*(v104 + 80);
              v108 = swift_allocObject();
              v109 = v134;
              *(v108 + 2) = v106;
              *(v108 + 3) = v109;
              *(v108 + 4) = v86;
              *(v108 + 5) = v87;
              v110 = v105;
              v81 = v133;
              (*(v104 + 32))(&v108[v107], v110, v106);
              v143 = partial apply for closure #4 in NSItemProvider.register<A>(_:);
              v144 = v108;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              *&v142 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
              *(&v142 + 1) = &block_descriptor_1;
              v111 = _Block_copy(&aBlock);

              v112 = v120;
              [v129 registerFileRepresentationForTypeIdentifier:v120 fileOptions:v121 & 1 visibility:v116 loadHandler:v111];
              outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v86, v87);
              _Block_release(v111);
            }

            v82 = v132;
            goto LABEL_40;
          }

          _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v89, type metadata accessor for ResolvedTransferRepresentation);
          outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v86, v87);
          v81 = v89;
        }

        else
        {
          _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v81, type metadata accessor for ResolvedTransferRepresentation);
        }

LABEL_30:
        v44 += v47;
        if (!--v83)
        {

          v58 = v130;
          goto LABEL_43;
        }
      }
    }

LABEL_43:
    (*(v58 + 8))(v135, v136);
    (*(v122 + 8))(v84, v123);
  }

  else
  {
  }

  return (*(v125 + 8))(v124, v126);
}

uint64_t TransferRepresentationVisibility.itemProviderVisibility.getter()
{
  TransferRepresentationVisibility.all.unsafeMutableAddressor();
  lazy protocol witness table accessor for type TransferRepresentationVisibility and conformance TransferRepresentationVisibility();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return 0;
  }

  TransferRepresentationVisibility.ownProcess.unsafeMutableAddressor();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return 3;
  }

  TransferRepresentationVisibility.team.unsafeMutableAddressor();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return 1;
  }

  _StringGuts.grow(_:)(17);

  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F32D540](v1);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #3 in NSItemProvider.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v24 = a1;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a5, a6);
  v18 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v20 = v23;
  *(v19 + 4) = a6;
  *(v19 + 5) = v20;
  *(v19 + 6) = a3;
  *(v19 + 7) = a4;
  (*(v12 + 32))(&v19[v18], &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  v21 = &v19[(v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v21 = v24;
  v21[1] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in closure #3 in NSItemProvider.register<A>(_:), v19);
}

uint64_t closure #1 in closure #3 in NSItemProvider.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return static NSItemProvider.Loader.loadData<A>(exporting:transferable:completionHandler:)(a4, a5, a6, a7, a8, v17, v18);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSError?) -> ()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

uint64_t closure #4 in NSItemProvider.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v24 = a1;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  static TaskPriority.userInitiated.getter();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a5, a6);
  v18 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v20 = v23;
  *(v19 + 4) = a6;
  *(v19 + 5) = v20;
  *(v19 + 6) = a3;
  *(v19 + 7) = a4;
  (*(v12 + 32))(&v19[v18], &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  v21 = &v19[(v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v21 = v24;
  v21[1] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in closure #4 in NSItemProvider.register<A>(_:), v19);
}

uint64_t closure #1 in closure #4 in NSItemProvider.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = Transferable.file(contentType:fileHandler:);

  return static NSItemProvider.Loader.loadFile<A>(exporting:transferable:completionHandler:)(a4, a5, a6, a7, a8, v17, v18);
}

id thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?)(uint64_t a1, void *aBlock, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v8 = v5(a4, v7);

  return v8;
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned Bool, @unowned NSError?) -> ()(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  outlined init with copy of UTType?(a1, &v17 - v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v14 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v14 = v15;
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v16 = _convertErrorToNSError(_:)();
  }

  else
  {
    v16 = 0;
  }

  (*(a4 + 16))(a4, v14, a2 & 1, v16);
}

uint64_t NSItemProvider.registerTransferable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = *(a3 - 8);
  v5[24] = v6;
  v5[25] = *(v6 + 64);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v7 = type metadata accessor for Optional();
  v5[28] = v7;
  v5[29] = *(v7 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v8 = type metadata accessor for ResolvedTransferRepresentation(0);
  v5[34] = v8;
  v9 = *(v8 - 8);
  v5[35] = v9;
  v5[36] = *(v9 + 64);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[43] = AssociatedTypeWitness;
  v13 = type metadata accessor for _TransferRepresentationValue(0, AssociatedTypeWitness, v11, v12);
  v5[44] = v13;
  v5[45] = *(v13 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = *(AssociatedTypeWitness - 8);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](NSItemProvider.registerTransferable<A>(_:), 0, 0);
}

uint64_t NSItemProvider.registerTransferable<A>(_:)()
{
  v116 = v0;
  v2 = *(v0 + 384);
  v1 = *(v0 + 392);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  v111 = *(v0 + 352);
  v6 = *(v0 + 344);
  (*(*(v0 + 176) + 24))(*(v0 + 168), *(v0 + 176));
  swift_getDynamicType();
  (*(v4 + 16))(v2, v1, v6);
  _TransferRepresentationValue.init(_:)(v2, v6, v3);
  _TransferRepresentationInputs.init()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v113, v3);
  (*(v5 + 8))(v3, v111);
  v8 = *(v113 + 16);
  if (v8)
  {
    v9 = *(v0 + 280);
    v105 = *(v0 + 272);
    v10 = (*(v0 + 336) + *(v105 + 32));
    v104 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = v113 + v104;
    v112 = v113;

    v13 = 0;
    while (1)
    {
      if (v13 >= *(v112 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        return result;
      }

      v14 = *(v0 + 336);
      v15 = *(v9 + 72);
      outlined init with copy of ResolvedTransferRepresentation(v11 + v15 * v13, v14, type metadata accessor for ResolvedTransferRepresentation);
      v16 = *v10;
      v17 = v10[1];
      outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(*v10, v17);
      result = _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v14, type metadata accessor for ResolvedTransferRepresentation);
      if (v16)
      {
        break;
      }

      if (v8 == ++v13)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_39;
      }
    }

    v18 = *(v0 + 264);
    v19 = *(v0 + 192);
    v20 = *(v0 + 168);

    outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v16, v17);
    v21 = *(v19 + 56);
    v21(v18, 1, 1, v20);
    v22 = *(v112 + 16);

    if (v22)
    {
      v23 = 0;
      v24 = *(v0 + 312);
      v25 = v11;
      while (v23 < *(v112 + 16))
      {
        outlined init with copy of ResolvedTransferRepresentation(v25, *(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
        if (*(v24 + 16) != 255)
        {
          v106 = v21;
          v27 = *(v0 + 320);
          v28 = *(v0 + 328);
          v29 = *(v0 + 256);
          v30 = *(v0 + 224);
          v31 = *(v0 + 232);
          v98 = *(v0 + 264);
          v101 = *(v0 + 168);
          v92 = *(v0 + 312);
          v94 = *(v0 + 152);

          _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v92, v27, type metadata accessor for ResolvedTransferRepresentation);
          v32 = _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v27, v28, type metadata accessor for ResolvedTransferRepresentation);
          v94(v32);
          v33 = *(v31 + 8);
          v33(v98, v30);
          v106(v29, 0, 1, v101);
          (*(v31 + 32))(v98, v29, v30);
          v34 = *(v28 + 16);
          if (v34 == 255)
          {
            v48 = 0;
            v26 = v105;
          }

          else
          {
            v35 = v28;
            v107 = v33;
            v36 = *v28;
            v37 = *(v35 + 8);
            v38 = *(v0 + 264);
            v39 = *(v0 + 248);
            v40 = *(v0 + 224);
            v41 = *(v0 + 232);
            v42 = *(v0 + 192);
            v43 = *(v0 + 168);
            v113 = v36;
            v114 = v37;
            v44 = v34 & 1;
            v115 = v34 & 1;
            (*(v41 + 16))(v39, v38, v40);
            v45 = (*(v42 + 48))(v39, 1, v43);
            v46 = *(v0 + 248);
            if (v45 == 1)
            {
              v47 = *(v0 + 224);
              outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage(v36, v37, v44);
              v107(v46, v47);
              *(v0 + 144) = 0;
              *(v0 + 112) = 0u;
              *(v0 + 128) = 0u;
            }

            else
            {
              v49 = *(v0 + 192);
              v108 = *(v0 + 168);
              *(v0 + 136) = v108;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
              (*(v49 + 32))(boxed_opaque_existential_1, v46, v108);
              outlined copy of ResolvedTransferRepresentation.SuggestedFileNameStorage(v36, v37, v44);
            }

            v51 = ResolvedTransferRepresentation.SuggestedFileNameStorage.resolved(_:)(v0 + 112);
            v53 = v52;
            outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(v113, v114, v115);
            outlined destroy of UTType?(v0 + 112, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
            v26 = v105;
            if (v53)
            {
              v48 = MEMORY[0x20F32D490](v51, v53);
            }

            else
            {
              v48 = 0;
            }
          }

          v54 = *(v0 + 328);
          [*(v0 + 184) setSuggestedName_];

          _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v54, type metadata accessor for ResolvedTransferRepresentation);
          goto LABEL_23;
        }

        ++v23;
        result = _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(*(v0 + 312), type metadata accessor for ResolvedTransferRepresentation);
        v25 += v15;
        if (v22 == v23)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_43;
    }

LABEL_13:

    v26 = v105;
LABEL_23:
    v55 = *(v0 + 240);
    v56 = *(v0 + 192);
    v57 = *(v0 + 168);
    (*(*(v0 + 232) + 16))(v55, *(v0 + 264), *(v0 + 224));
    v58 = *(v56 + 48);
    v59 = v58(v55, 1, v57);
    v60 = *(v0 + 240);
    if (v59 == 1)
    {
      v61 = *(v0 + 168);
      (*(v0 + 152))();
      if (v58(v60, 1, v61) != 1)
      {
        (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
      }
    }

    else
    {
      (*(*(v0 + 192) + 32))(*(v0 + 216), *(v0 + 240), *(v0 + 168));
    }

    v62 = *(v112 + 16);
    if (v62)
    {
      v63 = *(v0 + 272);
      v88 = *(v0 + 288) + v104;
      v89 = *(v0 + 192);
      v90 = v63;
      do
      {
        v65 = *(v0 + 304);
        outlined init with copy of ResolvedTransferRepresentation(v11, v65, type metadata accessor for ResolvedTransferRepresentation);
        if (*(v65 + *(v26 + 32)) && (v66 = *(v0 + 304) + v63[10], (static NSItemProvider.Loader.shouldExport<A>(condition:item:)(*v66, *(v66 + 8), *(v0 + 216), *(v0 + 168), *(v0 + 176)) & 1) != 0))
        {
          v67 = *(v0 + 304);
          v68 = *(v67 + v63[7]);
          if (v68 == MEMORY[0x277CC9318])
          {
            v69 = *(v0 + 296);
            v71 = *(v0 + 208);
            v70 = *(v0 + 216);
            v93 = v71;
            v102 = *(v0 + 184);
            v109 = *(v0 + 168);
            v72 = UTType.identifier.getter();
            v99 = MEMORY[0x20F32D490](v72);

            v113 = *(v67 + v63[11]);
            v96 = TransferRepresentationVisibility.itemProviderVisibility.getter();
            outlined init with copy of ResolvedTransferRepresentation(v67, v69, type metadata accessor for ResolvedTransferRepresentation);
            (*(v89 + 16))(v71, v70, v109);
            v73 = (v88 + *(v89 + 80)) & ~*(v89 + 80);
            v74 = swift_allocObject();
            *(v74 + 16) = v109;
            _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v69, v74 + v104, type metadata accessor for ResolvedTransferRepresentation);
            v75 = v74 + v73;
            v26 = v105;
            v63 = v90;
            (*(v89 + 32))(v75, v93, v109);
            *(v0 + 96) = partial apply for closure #3 in NSItemProvider.registerTransferable<A>(_:);
            *(v0 + 104) = v74;
            *(v0 + 64) = MEMORY[0x277D85DD0];
            *(v0 + 72) = 1107296256;
            *(v0 + 80) = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
            *(v0 + 88) = &block_descriptor_21;
            v76 = _Block_copy((v0 + 64));

            [v102 registerDataRepresentationForTypeIdentifier:v99 visibility:v96 loadHandler:v76];
            _Block_release(v76);

            v64 = v67;
          }

          else
          {
            if (v68 == type metadata accessor for SentTransferredFile(0))
            {
              v77 = *(v0 + 296);
              v78 = *(v0 + 208);
              v91 = *(v0 + 216);
              v100 = *(v67 + v63[6]);
              v103 = *(v0 + 184);
              v110 = *(v0 + 168);
              v79 = UTType.identifier.getter();
              v97 = MEMORY[0x20F32D490](v79);

              v113 = *(v67 + v63[11]);
              v95 = TransferRepresentationVisibility.itemProviderVisibility.getter();
              outlined init with copy of ResolvedTransferRepresentation(v67, v77, type metadata accessor for ResolvedTransferRepresentation);
              (*(v89 + 16))(v78, v91, v110);
              v80 = (v88 + *(v89 + 80)) & ~*(v89 + 80);
              v81 = swift_allocObject();
              *(v81 + 16) = v110;
              _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v77, v81 + v104, type metadata accessor for ResolvedTransferRepresentation);
              v82 = v81 + v80;
              v63 = v90;
              v26 = v105;
              (*(v89 + 32))(v82, v78, v110);
              *(v0 + 48) = partial apply for closure #4 in NSItemProvider.registerTransferable<A>(_:);
              *(v0 + 56) = v81;
              *(v0 + 16) = MEMORY[0x277D85DD0];
              *(v0 + 24) = 1107296256;
              *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ()) -> (@owned NSProgress?);
              *(v0 + 40) = &block_descriptor_15;
              v83 = _Block_copy((v0 + 16));

              [v103 registerFileRepresentationForTypeIdentifier:v97 fileOptions:v100 & 1 visibility:v95 loadHandler:v83];
              _Block_release(v83);
            }

            v64 = v67;
          }
        }

        else
        {
          v64 = *(v0 + 304);
        }

        _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v64, type metadata accessor for ResolvedTransferRepresentation);
        v11 += v15;
        --v62;
      }

      while (v62);
    }

    v84 = *(v0 + 264);
    v85 = *(v0 + 224);
    v86 = *(v0 + 232);
    (*(*(v0 + 192) + 8))(*(v0 + 216), *(v0 + 168));
    (*(v86 + 8))(v84, v85);
  }

  else
  {
  }

LABEL_39:
  (*(*(v0 + 376) + 8))(*(v0 + 392), *(v0 + 344));

  v87 = *(v0 + 8);

  return v87();
}

uint64_t closure #3 in NSItemProvider.registerTransferable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v27 = a6;
  v28 = a1;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = type metadata accessor for ResolvedTransferRepresentation(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  outlined init with copy of ResolvedTransferRepresentation(a3, v14, type metadata accessor for ResolvedTransferRepresentation);
  (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26, a5);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = (v13 + *(v9 + 80) + v19) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v27;
  *(v21 + 4) = a5;
  *(v21 + 5) = v22;
  _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v14, &v21[v19], type metadata accessor for ResolvedTransferRepresentation);
  (*(v9 + 32))(&v21[v20], &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  v23 = &v21[(v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v23 = v28;
  v23[1] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #3 in NSItemProvider.registerTransferable<A>(_:), v21);
}

uint64_t closure #1 in closure #3 in NSItemProvider.registerTransferable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #3 in NSItemProvider.registerTransferable<A>(_:), 0, 0);
}

uint64_t closure #1 in closure #3 in NSItemProvider.registerTransferable<A>(_:)()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 32));
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #3 in NSItemProvider.registerTransferable<A>(_:);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return static NSItemProvider.Loader.loadData<A>(exporting:transferable:completionHandler:)(v4, v3, v10, v8, v9, v6, v7);
}

uint64_t closure #4 in NSItemProvider.registerTransferable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v27 = a6;
  v28 = a1;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = type metadata accessor for ResolvedTransferRepresentation(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  static TaskPriority.userInitiated.getter();
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  outlined init with copy of ResolvedTransferRepresentation(a3, v14, type metadata accessor for ResolvedTransferRepresentation);
  (*(v9 + 16))(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26, a5);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = (v13 + *(v9 + 80) + v19) & ~*(v9 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v27;
  *(v21 + 4) = a5;
  *(v21 + 5) = v22;
  _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v14, &v21[v19], type metadata accessor for ResolvedTransferRepresentation);
  (*(v9 + 32))(&v21[v20], &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  v23 = &v21[(v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v23 = v28;
  v23[1] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #4 in NSItemProvider.registerTransferable<A>(_:), v21);
}

uint64_t closure #1 in closure #4 in NSItemProvider.registerTransferable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #4 in NSItemProvider.registerTransferable<A>(_:), 0, 0);
}

uint64_t closure #1 in closure #4 in NSItemProvider.registerTransferable<A>(_:)()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for ResolvedTransferRepresentation(0) + 32));
  v4 = *v2;
  v3 = v2[1];
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #4 in NSItemProvider.registerTransferable<A>(_:);
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return static NSItemProvider.Loader.loadFile<A>(exporting:transferable:completionHandler:)(v4, v3, v10, v8, v9, v6, v7);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id NSItemProvider.load<A>(from:at:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v64 = a5;
  v11 = type metadata accessor for Result();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v58[-v13];
  v15 = type metadata accessor for ResolvedTransferRepresentation(0);
  v16 = *(*(v15 - 1) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v18 = &v58[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v17);
  v66 = &v58[-v21];
  v67 = a1;
  if (*(a1 + 16) <= a2)
  {
    lazy protocol witness table accessor for type TransferableSupportError and conformance TransferableSupportError();
    v33 = swift_allocError();
    *v34 = 0;
    *v14 = v33;
    swift_storeEnumTagMultiPayload();
    a3(v14);
    (*(v12 + 8))(v14, v11);
    return [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
  }

  else
  {
    v63 = a4;
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      v22 = *(v20 + 80);
      v24 = v66;
      v23 = v67;
      outlined init with copy of ResolvedTransferRepresentation(v67 + ((v22 + 32) & ~v22) + *(v20 + 72) * a2, v66, type metadata accessor for ResolvedTransferRepresentation);
      v62 = v15[5];
      v25 = UTType.identifier.getter();
      v26 = MEMORY[0x20F32D490](v25);

      v27 = [v68 hasRepresentationConformingToTypeIdentifier:v26 fileOptions:0];

      if (v27 && (v28 = &v24[v15[9]], (v29 = *v28) != 0))
      {
        v60 = v28[1];
        v30 = *&v24[v15[7]];
        v61 = v29;
        if (v30 == MEMORY[0x277CC9318])
        {
          v59 = 0;
        }

        else
        {
          v31 = v24[v15[6]];
          if (v31 == 2 || (v31 & 1) == 0)
          {
            v32 = 2;
          }

          else
          {
            v32 = 1;
          }

          v59 = v32;
        }

        outlined init with copy of ResolvedTransferRepresentation(v24, v18, type metadata accessor for ResolvedTransferRepresentation);
        v36 = (v22 + 48) & ~v22;
        v37 = (v16 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
        v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
        v39 = swift_allocObject();
        v40 = v65;
        v39[2] = v64;
        v39[3] = v40;
        v39[4] = a3;
        v39[5] = v63;
        _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(v18, v39 + v36, type metadata accessor for ResolvedTransferRepresentation);
        v42 = v67;
        v41 = v68;
        *(v39 + v37) = v68;
        *(v39 + v38) = v42;
        *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
        v43 = v41;
        v45 = v60;
        v44 = v61;
        outlined copy of (@escaping @callee_guaranteed @Sendable @async (@in_guaranteed TransferableCurrency) -> (@out Transferable, @error @owned Error))?(v61, v60);
        v46 = v66;

        v47 = UTType.identifier.getter();
        v48 = MEMORY[0x20F32D490](v47);

        if (v59)
        {
          if (v59 == 1)
          {
            v49 = swift_allocObject();
            v50 = v65;
            v49[2] = v64;
            v49[3] = v50;
            v49[4] = partial apply for closure #1 in NSItemProvider.load<A>(from:at:completionHandler:);
            v49[5] = v39;
            v49[6] = v44;
            v49[7] = v45;
            v73 = partial apply for closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);
            v74 = v49;
            aBlock = MEMORY[0x277D85DD0];
            v70 = 1107296256;
            v71 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @unowned Bool, @guaranteed Error?) -> ();
            v72 = &block_descriptor_43;
            v51 = _Block_copy(&aBlock);

            v52 = &selRef_loadInPlaceFileRepresentationForTypeIdentifier_completionHandler_;
          }

          else
          {
            v55 = swift_allocObject();
            v56 = v65;
            v55[2] = v64;
            v55[3] = v56;
            v55[4] = partial apply for closure #1 in NSItemProvider.load<A>(from:at:completionHandler:);
            v55[5] = v39;
            v55[6] = v44;
            v55[7] = v45;
            v73 = partial apply for closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);
            v74 = v55;
            aBlock = MEMORY[0x277D85DD0];
            v70 = 1107296256;
            v71 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
            v72 = &block_descriptor_37;
            v51 = _Block_copy(&aBlock);

            v52 = &selRef_loadFileRepresentationForTypeIdentifier_completionHandler_;
          }
        }

        else
        {
          v53 = swift_allocObject();
          v54 = v65;
          v53[2] = v64;
          v53[3] = v54;
          v53[4] = partial apply for closure #1 in NSItemProvider.load<A>(from:at:completionHandler:);
          v53[5] = v39;
          v53[6] = v44;
          v53[7] = v45;
          v73 = partial apply for closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:);
          v74 = v53;
          aBlock = MEMORY[0x277D85DD0];
          v70 = 1107296256;
          v71 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
          v72 = &block_descriptor_49;
          v51 = _Block_copy(&aBlock);

          v52 = &selRef_loadDataRepresentationForTypeIdentifier_completionHandler_;
        }

        v57 = [v43 *v52];
        _Block_release(v51);

        outlined consume of (@escaping @callee_guaranteed @async () -> ())?(v44, v45);
        _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v46, type metadata accessor for ResolvedTransferRepresentation);
        return v57;
      }

      else
      {
        v35 = NSItemProvider.load<A>(from:at:completionHandler:)(v23, a2 + 1, a3, v63, v64, v65);
        _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v24, type metadata accessor for ResolvedTransferRepresentation);
        return v35;
      }
    }
  }

  return result;
}

void closure #1 in NSItemProvider.load<A>(from:at:completionHandler:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a5;
  v46 = a7;
  v44 = a6;
  v47 = a4;
  v48 = a2;
  v43 = type metadata accessor for ResolvedTransferRepresentation(0);
  v12 = MEMORY[0x28223BE20](v43);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v18 = type metadata accessor for Result();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = (&v40 - v23);
  (*(v19 + 16))(&v40 - v23, a1, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = a8;
    v42 = a3;
    v25 = v48;
    v26 = *v24;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, logger);
    outlined init with copy of ResolvedTransferRepresentation(v47, v14, type metadata accessor for ResolvedTransferRepresentation);
    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = v33;
      *v31 = 136315394;
      v34 = UTType.identifier.getter();
      v36 = v35;
      _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v14, type metadata accessor for ResolvedTransferRepresentation);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v49);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2112;
      v38 = v26;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v39;
      *v32 = v39;
      _os_log_impl(&dword_20E3BF000, v29, v30, "Error loading %s: %@", v31, 0x16u);
      outlined destroy of UTType?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F32E080](v32, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x20F32E080](v33, -1, -1);
      MEMORY[0x20F32E080](v31, -1, -1);
    }

    else
    {

      _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(v14, type metadata accessor for ResolvedTransferRepresentation);
    }

    if (__OFADD__(v46, 1))
    {
      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    (*(v15 + 32))(v17, v24, a8);
    (*(v15 + 16))(v22, v17, a8);
    swift_storeEnumTagMultiPayload();
    v48(v22);
    (*(v19 + 8))(v22, v18);
    (*(v15 + 8))(v17, a8);
  }
}

id NSItemProvider.loadTransferable<A>(type:completionHandler:)(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v24 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for _TransferRepresentationValue(0, AssociatedTypeWitness, v8, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - v19;
  (*(a5 + 24))(a4, a5);
  swift_getDynamicType();
  (*(v15 + 16))(v18, v20, AssociatedTypeWitness);
  _TransferRepresentationValue.init(_:)(v18, AssociatedTypeWitness, v14);
  _TransferRepresentationInputs.init()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(&v26, v14);
  (*(v11 + 8))(v14, v10);
  v22 = NSItemProvider.load<A>(from:at:completionHandler:)(v26, 0, v24, v25, a4, a5);

  (*(v15 + 8))(v20, AssociatedTypeWitness);
  return v22;
}

uint64_t FileOperator.init(url:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  *(v1 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_token) = 0;
  v6 = OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_url;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v20 = a1;
  v9(v1 + v6, a1, v7);
  v10 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *(v1 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_operationQueue) = v10;
  v9(v5, a1, v7);
  v11 = *(v8 + 56);
  v11(v5, 0, 1, v7);
  v12 = type metadata accessor for FileOperator.FilePresenter(0);
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter_presentedItemURL;
  v11(&v13[OBJC_IVAR____TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter_presentedItemURL], 1, 1, v7);
  swift_beginAccess();
  v15 = v10;
  outlined assign with copy of URL?(v5, &v13[v14]);
  swift_endAccess();
  *&v13[OBJC_IVAR____TtCC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator13FilePresenter_presentedItemOperationQueue] = v15;
  v21.receiver = v13;
  v21.super_class = v12;
  v16 = v15;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  [objc_opt_self() addFilePresenter_];

  outlined destroy of UTType?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v1 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_presenter) = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  *(v1 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_coordinator) = v18;
  [*(v1 + OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_operationQueue) setMaxConcurrentOperationCount_];
  (*(v8 + 8))(v20, v7);
  return v1;
}

void NSFileCoordinator.scheduleDeletion(url:queue:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = objc_opt_self();
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v8 writingIntentWithURL:v10 options:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20E3FEFB0;
  *(v13 + 32) = v12;
  type metadata accessor for NSFileAccessIntent();
  v14 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = partial apply for closure #1 in NSFileCoordinator.scheduleDeletion(url:queue:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_93;
  v18 = _Block_copy(aBlock);
  v19 = v14;

  [v3 coordinateAccessWithIntents:isa queue:v21 byAccessor:v18];
  _Block_release(v18);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

id FileOperator.FilePresenter.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [objc_opt_self() removeFilePresenter_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t FileOperator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16CoreTransferableP33_2053C576535AE8DF09A03B43713BFB7612FileOperator_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void closure #1 in NSFileCoordinator.scheduleDeletion(url:queue:)(void *a1, uint64_t a2, void *a3)
{
  v63[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  if (a1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, logger);
    (*(v7 + 16))(v10, a2, v6);
    v14 = a1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v63[0] = v18;
      *v17 = 136315394;
      v19 = URL.path.getter();
      v21 = v20;
      (*(v7 + 8))(v10, v6);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v63);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      v62 = a1;
      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v24 = String.init<A>(describing:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v63);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_20E3BF000, v15, v16, "Error getting coordinated access to url %s: %s.", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F32E080](v18, -1, -1);
      MEMORY[0x20F32E080](v17, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    v27 = objc_opt_self();
    v28 = [v27 defaultManager];
    v29 = [a3 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v30);
    v32 = v31;
    v33 = *(v7 + 8);
    v33(v12, v6);
    v63[0] = 0;
    v34 = [v28 removeItemAtURL:v32 error:v63];

    v35 = v63[0];
    if (v34)
    {

      v36 = v35;
    }

    else
    {
      v61 = v63[0];
      v37 = v63[0];
      v38 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v39 = [v27 defaultManager];
      v40 = [a3 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = URL.path.getter();
      v43 = v42;
      v33(v12, v6);
      v44 = MEMORY[0x20F32D490](v41, v43);

      LOBYTE(v43) = [v39 fileExistsAtPath_];

      if (v43)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        __swift_project_value_buffer(v45, logger);
        v46 = a3;
        v47 = v38;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v63[0] = v61;
          *v50 = 136315394;
          v51 = [v46 URL];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v52 = URL.path.getter();
          v54 = v53;
          v33(v12, v6);
          v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v63);

          *(v50 + 4) = v55;
          *(v50 + 12) = 2112;
          v56 = v38;
          v57 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 14) = v57;
          v58 = v60;
          *v60 = v57;
          _os_log_impl(&dword_20E3BF000, v48, v49, "Failed to delete an item at %s:\n%@.", v50, 0x16u);
          outlined destroy of UTType?(v58, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x20F32E080](v58, -1, -1);
          v59 = v61;
          __swift_destroy_boxed_opaque_existential_0Tm(v61);
          MEMORY[0x20F32E080](v59, -1, -1);
          MEMORY[0x20F32E080](v50, -1, -1);

          return;
        }
      }
    }
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void backupDirectory()()
{
  v33[1] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v32 - v5;
  static URL.cachesDirectory.getter();
  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  URL.appendingPathComponent(_:)();

  v9 = *(v1 + 8);
  v9(v6, v0);
  v10 = [objc_opt_self() defaultManager];
  v11 = URL.path.getter();
  v12 = MEMORY[0x20F32D490](v11);

  v33[0] = 0;
  v13 = [v10 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:v33];

  v14 = v33[0];
  if (v13)
  {

    v15 = v14;
  }

  else
  {
    v32[0] = v33[0];
    v16 = v33[0];
    v17 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, logger);
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      v33[0] = v32[0];
      *v22 = 136315394;
      static URL.cachesDirectory.getter();
      v24 = URL.path.getter();
      v25 = v4;
      v27 = v26;
      v9(v25, v0);
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v27, v33);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2112;
      v29 = v17;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v30;
      *v23 = v30;
      _os_log_impl(&dword_20E3BF000, v20, v21, "Failed to create a directory in %s. Error: %@", v22, 0x16u);
      outlined destroy of UTType?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F32E080](v23, -1, -1);
      v31 = v32[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v32[0]);
      MEMORY[0x20F32E080](v31, -1, -1);
      MEMORY[0x20F32E080](v22, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t lazy protocol witness table accessor for type TransferRepresentationVisibility and conformance TransferRepresentationVisibility()
{
  result = lazy protocol witness table cache variable for type TransferRepresentationVisibility and conformance TransferRepresentationVisibility;
  if (!lazy protocol witness table cache variable for type TransferRepresentationVisibility and conformance TransferRepresentationVisibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferRepresentationVisibility and conformance TransferRepresentationVisibility);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ResolvedTransferRepresentation(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v5 = (v3 + 32) & ~v3;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v15 = *(v6 + 64);
  v8 = (v0 + v5);
  v9 = *(v0 + v5 + 16);
  if (v9 != 255)
  {
    outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(*v8, v8[1], v9 & 1);
  }

  v10 = v2[5];
  v11 = type metadata accessor for UTType();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  if (*(v8 + v2[8]))
  {
  }

  if (*(v8 + v2[9]))
  {
  }

  if (*(v8 + v2[10]))
  {
  }

  v12 = v3 | v7;
  v13 = (v5 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v13, v1);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v12 | 7);
}

uint64_t partial apply for closure #4 in NSItemProvider.registerTransferable<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  a3(a1, a2, v3 + v10, v3 + ((v10 + *(v9 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80)), v7, v8);
  return 0;
}

void partial apply for closure #1 in NSItemProvider.load<A>(from:at:completionHandler:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in NSItemProvider.load<A>(from:at:completionHandler:)(a1, *(v1 + 32), *(v1 + 40), v1 + v6, *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
}

uint64_t type metadata completion function for FileOperator(uint64_t a1)
{
  result = type metadata accessor for URL();
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

void type metadata completion function for FileOperator.FilePresenter(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t lazy protocol witness table accessor for type TransferableError and conformance TransferableError()
{
  result = lazy protocol witness table cache variable for type TransferableError and conformance TransferableError;
  if (!lazy protocol witness table cache variable for type TransferableError and conformance TransferableError)
  {
    type metadata accessor for TransferableError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferableError and conformance TransferableError);
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)()
{
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[10];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in closure #1 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_61(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = Transferable.file(contentType:fileHandler:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)()
{
  v2 = *(type metadata accessor for ReceivedTransferredFile(0) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in closure #1 in closure #2 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(v9, v10, v11, v6, v7, v0 + v3, v5, v8);
}

uint64_t outlined assign with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_72Tm()
{
  v1 = *(type metadata accessor for ReceivedTransferredFile(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)()
{
  v2 = *(type metadata accessor for ReceivedTransferredFile(0) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in closure #1 in closure #3 in static NSItemProvider.LoadingRequest.perform<A>(for:currency:provider:contentType:importing:completionHandler:)(v9, v10, v11, v6, v7, v0 + v3, v5, v8);
}

unint64_t type metadata accessor for NSFileAccessIntent()
{
  result = lazy cache variable for type metadata for NSFileAccessIntent;
  if (!lazy cache variable for type metadata for NSFileAccessIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSFileAccessIntent);
  }

  return result;
}

void partial apply for closure #1 in NSFileCoordinator.scheduleDeletion(url:queue:)(void *a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in NSFileCoordinator.scheduleDeletion(url:queue:)(a1, v1 + v4, v5);
}

uint64_t partial apply for closure #1 in closure #3 in NSItemProvider.registerTransferable<A>(_:)()
{
  v2 = *(v0 + 32);
  v3 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v6 = (v0 + ((*(*(v2 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in closure #3 in NSItemProvider.registerTransferable<A>(_:)(v9, v10, v11, v0 + v4, v0 + v5, v7, v8, v2);
}

uint64_t objectdestroy_95Tm()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for ResolvedTransferRepresentation(0);
  v3 = *(*(v2 - 1) + 80);
  v14 = *(*(v2 - 1) + 64);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();
  v8 = (v0 + v4);
  v9 = *(v0 + v4 + 16);
  if (v9 != 255)
  {
    outlined consume of ResolvedTransferRepresentation.SuggestedFileNameStorage(*v8, v8[1], v9 & 1);
  }

  v10 = v2[5];
  v11 = type metadata accessor for UTType();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  if (*(v8 + v2[8]))
  {
  }

  if (*(v8 + v2[9]))
  {
  }

  if (*(v8 + v2[10]))
  {
  }

  v12 = (v4 + v14 + v6) & ~v6;

  (*(v5 + 8))(v0 + v12, v1);

  return MEMORY[0x2821FE8E8](v0, ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v6 | 7);
}

uint64_t partial apply for closure #1 in closure #4 in NSItemProvider.registerTransferable<A>(_:)()
{
  v2 = *(v0 + 32);
  v3 = *(type metadata accessor for ResolvedTransferRepresentation(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v6 = (v0 + ((*(*(v2 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = Transferable.file(contentType:fileHandler:);

  return closure #1 in closure #4 in NSItemProvider.registerTransferable<A>(_:)(v9, v10, v11, v0 + v4, v0 + v5, v7, v8, v2);
}

uint64_t _s16CoreTransferable30ResolvedTransferRepresentationVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s16CoreTransferable30ResolvedTransferRepresentationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in closure #3 in NSItemProvider.register<A>(_:)()
{
  v2 = (*(*(v0[4] - 8) + 80) + 64) & ~*(*(v0[4] - 8) + 80);
  v3 = v0[6];
  v4 = v0[7];
  v5 = (v0 + ((*(*(v0[4] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in closure #3 in NSItemProvider.register<A>(_:)(v8, v9, v10, v3, v4, v0 + v2, v6, v7);
}

uint64_t objectdestroy_117Tm()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #4 in NSItemProvider.register<A>(_:)()
{
  v2 = (*(*(v0[4] - 8) + 80) + 64) & ~*(*(v0[4] - 8) + 80);
  v3 = v0[6];
  v4 = v0[7];
  v5 = (v0 + ((*(*(v0[4] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #4 in static URL.transferRepresentation.getter;

  return closure #1 in closure #4 in NSItemProvider.register<A>(_:)(v8, v9, v10, v3, v4, v0 + v2, v6, v7);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}