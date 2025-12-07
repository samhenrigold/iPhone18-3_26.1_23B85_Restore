uint64_t GroupSessionJournal.add<A>(_:)()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = GroupSessionJournal.add<A>(_:);
  }

  else
  {
    v2 = GroupSessionJournal.add<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  (*(v0 + 168))(v4, *(v0 + 160), *(v0 + 136));
  v7 = v4 + *(v5 + 24);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMd, &_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMR) + 48);
  (*(v2 + 16))(v7, v1, v3);
  *(v7 + v8) = xmmword_1AF011260;
  type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  swift_storeEnumTagMultiPayload();
  swift_weakInit();
  v9 = *(v6 + 24);
  ObjectType = swift_getObjectType();
  v15 = (*(v9 + 40) + **(v9 + 40));
  v11 = swift_task_alloc();
  *(v0 + 208) = v11;
  *v11 = v0;
  v11[1] = GroupSessionJournal.add<A>(_:);
  v12 = *(v0 + 160);
  v13 = *(v0 + 88);

  return v15(v12, v13, 0, 0xF000000000000000, ObjectType, v9);
}

{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = GroupSessionJournal.add<A>(_:);
  }

  else
  {
    v2 = GroupSessionJournal.add<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  outlined init with take of GroupSessionJournal.Attachment(v0[8], v0[2], type metadata accessor for GroupSessionJournal.Attachment);
  (*(v4 + 8))(v5, v6);
  v1(v2, v3);

  v7 = v0[1];

  return v7();
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  outlined destroy of GroupSessionJournal.Attachment(*(v0 + 64), type metadata accessor for GroupSessionJournal.Attachment);
  (*(v2 + 8))(v1, v3);
  (*(v0 + 184))(*(v0 + 160), *(v0 + 136));

  v4 = *(v0 + 8);

  return v4();
}

{
  (*(v0 + 184))(*(v0 + 160), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static URL.file<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[23] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v7 = type metadata accessor for ResolvedTransferRepresentation();
  v4[32] = v7;
  v4[33] = *(v7 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v8 = type metadata accessor for _TransferRepresentationInputs();
  v4[36] = v8;
  v4[37] = *(v8 - 8);
  v4[38] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[39] = AssociatedTypeWitness;
  v10 = type metadata accessor for _TransferRepresentationValue();
  v4[40] = v10;
  v4[41] = *(v10 - 8);
  v4[42] = swift_task_alloc();
  v11 = type metadata accessor for _TransferRepresentationOutputs();
  v4[43] = v11;
  v4[44] = *(v11 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = *(AssociatedTypeWitness - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v12 = type metadata accessor for UTType();
  v4[49] = v12;
  v4[50] = *(v12 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static URL.file<A>(from:), 0, 0);
}

uint64_t static URL.file<A>(from:)()
{
  v99 = v0;
  v98[1] = *MEMORY[0x1E69E9840];
  v1 = static Transferable.readableContentTypes.getter();
  v2 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC22UniformTypeIdentifiers6UTTypeV_SayAFGTt0g5Tf4g_n(v1);

  *(v0 + 120) = v2;
  if (one-time initialization token for default != -1)
  {
LABEL_41:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v0 + 488) = v3;
  *(v0 + 496) = __swift_project_value_buffer(v3, static Log.default);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v98[0] = v7;
    *v6 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v98);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8460]);

    v11 = Set.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v98);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v4, v5, "ItemType: %s has readableContentTypes: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v15 = *(v0 + 480);
  v16 = *(v0 + 456);
  v17 = *(v0 + 392);
  v18 = *(v0 + 400);
  static UTType.fileURL.getter();
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v16, v15);
  swift_endAccess();
  v19 = *(v18 + 8);
  *(v0 + 504) = v19;
  *(v0 + 512) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88 = v19;
  v19(v16, v17);
  v20 = *(v18 + 48);
  *(v0 + 520) = v20;
  *(v0 + 528) = (v18 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v21 = v20(v15, 1, v17);
  outlined destroy of NSObject?(v15, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v21 == 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    static UTType.fileURL.getter();
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v25 = v23[2];
    v24 = v23[3];
    v26 = v23;
    if (v25 >= v24 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
    }

    v27 = *(v0 + 448);
    v28 = *(v0 + 392);
    v29 = *(v0 + 400);
    v26[2] = v25 + 1;
    v30 = v26 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25;
    v22 = v26;
    (*(v29 + 32))(v30, v27, v28);
  }

  v31 = *(v0 + 400);
  v32 = *(v0 + 120);
  *(v0 + 536) = v32;
  v33 = v32 + 56;
  v34 = -1;
  v35 = -1 << *(v32 + 32);
  if (-v35 < 64)
  {
    v34 = ~(-1 << -v35);
  }

  v36 = v34 & *(v32 + 56);
  v37 = (63 - v35) >> 6;
  v97 = v31;
  v91 = v32;
  swift_bridgeObjectRetain_n();
  v38 = 0;
  *(v0 + 544) = v22;
  if (v36)
  {
    while (1)
    {
      v95 = v22;
LABEL_17:
      v41 = *(v0 + 432);
      v40 = *(v0 + 440);
      v42 = *(v0 + 392);
      v93 = *(v97 + 72);
      v43 = *(v97 + 16);
      v43(v40, *(v91 + 48) + v93 * (__clz(__rbit64(v36)) | (v38 << 6)), v42);
      v43(v41, v40, v42);
      v44 = v95;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95[2] + 1, 1, v95);
      }

      v46 = v44[2];
      v45 = v44[3];
      v47 = v44;
      if (v46 >= v45 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v44);
      }

      v36 &= v36 - 1;
      v48 = *(v0 + 432);
      v49 = *(v0 + 440);
      v50 = *(v0 + 392);
      v47[2] = v46 + 1;
      v22 = v47;
      (*(v97 + 32))(v47 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + v46 * v93, v48, v50);
      v88(v49, v50);
      *(v0 + 544) = v22;
      if (!v36)
      {
        goto LABEL_13;
      }
    }
  }

  while (1)
  {
LABEL_13:
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v39 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v39);
    ++v38;
    if (v36)
    {
      v95 = v22;
      v38 = v39;
      goto LABEL_17;
    }
  }

  v51 = v22[2];
  *(v0 + 552) = v51;
  if (v51)
  {
    *(v0 + 560) = 0;
    if (*(*(v0 + 544) + 16))
    {
      while (1)
      {
        v90 = *(v0 + 424);
        v52 = *(v0 + 400);
        v54 = *(v0 + 376);
        v53 = *(v0 + 384);
        v55 = *(v0 + 368);
        v86 = *(v0 + 360);
        v94 = *(v0 + 352);
        v96 = *(v0 + 344);
        v85 = *(v0 + 336);
        v89 = *(v0 + 328);
        v56 = *(v0 + 312);
        v92 = *(v0 + 320);
        v58 = *(v0 + 296);
        v57 = *(v0 + 304);
        v87 = *(v0 + 288);
        v59 = *(v52 + 16);
        *(v0 + 568) = v59;
        *(v0 + 576) = (v52 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v59();
        dispatch thunk of static Transferable.transferRepresentation.getter();
        swift_getDynamicType();
        (*(v55 + 16))(v54, v53, v56);
        _TransferRepresentationValue.init(_:)();
        _TransferRepresentationInputs.init()();
        swift_getAssociatedConformanceWitness();
        dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
        (*(v58 + 8))(v57, v87);
        (*(v89 + 8))(v85, v92);
        v60 = _TransferRepresentationOutputs.storage.getter();
        (*(v94 + 8))(v86, v96);
        v61 = swift_task_alloc();
        *(v61 + 16) = v90;
        v62 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static URL.file<A>(from:), v61, v60);
        v63 = MEMORY[0x1E6969080];
        *(v0 + 584) = v62;

        v64 = *(v62 + 16);
        *(v0 + 592) = v64;
        if (v64)
        {
          break;
        }

LABEL_30:
        v72 = *(v0 + 384);
        v73 = *(v0 + 368);
        v74 = *(v0 + 312);

        (*(v73 + 8))(v72, v74);
        v75 = *(v0 + 552);
        v76 = *(v0 + 560) + 1;
        (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
        if (v76 == v75)
        {
          goto LABEL_36;
        }

        v77 = *(v0 + 560) + 1;
        *(v0 + 560) = v77;
        if (v77 >= *(*(v0 + 544) + 16))
        {
          goto LABEL_32;
        }
      }

      v65 = 0;
      *(v0 + 704) = *(*(v0 + 264) + 80);
      while (1)
      {
        *(v0 + 600) = v65;
        v66 = *(v0 + 584);
        if (v65 >= *(v66 + 16))
        {
          goto LABEL_40;
        }

        v67 = *(v0 + 280);
        v68 = *(v0 + 256);
        v69 = *(v0 + 264);
        v70 = *(v69 + 16);
        v69 += 16;
        v71 = v66 + ((*(v0 + 704) + 32) & ~*(v0 + 704)) + *(v69 + 56) * v65;
        *(v0 + 608) = v70;
        *(v0 + 616) = v69 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v70(v67, v71, v68);
        if (ResolvedTransferRepresentation.representationType.getter() == v63)
        {
          goto LABEL_33;
        }

        (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
        v65 = *(v0 + 600) + 1;
        if (v65 == *(v0 + 592))
        {
          goto LABEL_30;
        }
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    v78 = swift_task_alloc();
    *(v0 + 624) = v78;
    *v78 = v0;
    v78[1] = static URL.file<A>(from:);
    v79 = *(v0 + 168);
    v80 = *(v0 + 176);
    v81 = *(v0 + 160);

    return ResolvedTransferRepresentation.data<A>(from:)(v81, v79, v80);
  }

  else
  {
LABEL_36:
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v83 = 1;
    swift_willThrow();

    v84 = *(v0 + 8);

    return v84();
  }
}

{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v118 = *(v0 + 168);
  outlined copy of Data._Representation(*(v0 + 640), *(v0 + 648));

  UUID.init()();
  UUID.uuidString.getter();
  (*(v2 + 8))(v1, v3);
  v7 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:isDirectory:)();

  v8 = *(v6 + 8);
  *(v0 + 656) = v8;
  *(v0 + 664) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v5);
  if (v5 != v118)
  {
    v9 = *(v0 + 632);
    goto LABEL_3;
  }

  v34 = ResolvedTransferRepresentation.importing.getter();
  *(v0 + 672) = v34;
  *(v0 + 680) = v35;
  if (!v34)
  {
    v56 = *(v0 + 192);
    v57 = *(v0 + 200);
    v58 = *(v0 + 184);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    outlined destroy of NSObject?(v0 + 16, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    (*(v57 + 56))(v58, 1, 1, v56);
    v9 = *(v0 + 632);
    outlined destroy of NSObject?(*(v0 + 184), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_3:
    Data.write(to:options:)();
    if (v9)
    {
      v10 = *(v0 + 656);
      v11 = *(v0 + 648);
      v12 = *(v0 + 640);
      v13 = *(v0 + 280);
      v119 = v9;
      v15 = *(v0 + 256);
      v14 = *(v0 + 264);
      v16 = *(v0 + 224);
      v17 = *(v0 + 192);
      outlined consume of Data._Representation(v12, v11);
      outlined consume of Data._Representation(v12, v11);
      v10(v16, v17);
      (*(v14 + 8))(v13, v15);
      v18 = *(v0 + 568);
      v20 = *(v0 + 416);
      v19 = *(v0 + 424);
      v21 = *(v0 + 392);
      (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 312));
      v18(v20, v19, v21);
      v22 = v119;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v114 = v24;
        v116 = v23;
        v25 = *(v0 + 568);
        v109 = *(v0 + 520);
        v27 = *(v0 + 464);
        v26 = *(v0 + 472);
        v28 = *(v0 + 416);
        v30 = *(v0 + 392);
        v29 = *(v0 + 400);
        v31 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *(v0 + 128) = v112;
        *v31 = 136315394;
        v25(v26, v28, v30);
        (*(v29 + 56))(v26, 0, 1, v30);
        outlined init with copy of URL?(v26, v27, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
        if (v109(v27, 1, v30) == 1)
        {
          v32 = 0xE300000000000000;
          v33 = 7104878;
        }

        else
        {
          v59 = *(v0 + 568);
          v60 = *(v0 + 504);
          v61 = *(v0 + 456);
          v62 = *(v0 + 408);
          v63 = *(v0 + 392);
          (*(*(v0 + 400) + 32))(v61, *(v0 + 464), v63);
          v59(v62, v61, v63);
          v33 = String.init<A>(reflecting:)();
          v32 = v64;
          v60(v61, v63);
        }

        v65 = *(v0 + 504);
        v66 = *(v0 + 416);
        v67 = *(v0 + 392);
        outlined destroy of NSObject?(*(v0 + 472), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
        v65(v66, v67);
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, (v0 + 128));

        *(v31 + 4) = v68;
        *(v31 + 12) = 2080;
        *(v0 + 136) = v119;
        v69 = v119;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v70 = String.init<A>(reflecting:)();
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, (v0 + 128));

        *(v31 + 14) = v72;
        _os_log_impl(&dword_1AEE80000, v116, v114, "Failed to get file from type: %s, error: %s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v112, -1, -1);
        MEMORY[0x1B2715BA0](v31, -1, -1);
      }

      else
      {
        v53 = *(v0 + 504);
        v54 = *(v0 + 416);
        v55 = *(v0 + 392);

        v53(v54, v55);
      }

      v73 = *(v0 + 552);
      v74 = *(v0 + 560) + 1;
      (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
      if (v74 != v73)
      {
        while (1)
        {
          v81 = *(v0 + 560) + 1;
          *(v0 + 560) = v81;
          if (v81 >= *(*(v0 + 544) + 16))
          {
            goto LABEL_34;
          }

          v111 = *(v0 + 424);
          v82 = *(v0 + 400);
          v84 = *(v0 + 376);
          v83 = *(v0 + 384);
          v85 = *(v0 + 368);
          v107 = *(v0 + 360);
          v115 = *(v0 + 352);
          v86 = *(v0 + 336);
          v117 = *(v0 + 344);
          v110 = *(v0 + 328);
          v87 = *(v0 + 312);
          v113 = *(v0 + 320);
          v89 = *(v0 + 296);
          v88 = *(v0 + 304);
          v108 = *(v0 + 288);
          v90 = *(v82 + 16);
          *(v0 + 568) = v90;
          *(v0 + 576) = (v82 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v90();
          dispatch thunk of static Transferable.transferRepresentation.getter();
          swift_getDynamicType();
          (*(v85 + 16))(v84, v83, v87);
          v91 = MEMORY[0x1E6969080];
          _TransferRepresentationValue.init(_:)();
          _TransferRepresentationInputs.init()();
          swift_getAssociatedConformanceWitness();
          dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
          (*(v89 + 8))(v88, v108);
          (*(v110 + 8))(v86, v113);
          v92 = _TransferRepresentationOutputs.storage.getter();
          (*(v115 + 8))(v107, v117);
          v93 = swift_task_alloc();
          *(v93 + 16) = v111;
          v94 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static URL.file<A>(from:), v93, v92);
          *(v0 + 584) = v94;

          v95 = *(v94 + 16);
          *(v0 + 592) = v95;
          if (v95)
          {
            break;
          }

LABEL_22:
          v76 = *(v0 + 384);
          v77 = *(v0 + 368);
          v78 = *(v0 + 312);

          (*(v77 + 8))(v76, v78);
          v79 = *(v0 + 552);
          v80 = *(v0 + 560) + 1;
          (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
          if (v80 == v79)
          {
            goto LABEL_17;
          }
        }

        v96 = 0;
        *(v0 + 704) = *(*(v0 + 264) + 80);
        while (1)
        {
          *(v0 + 600) = v96;
          v97 = *(v0 + 584);
          if (v96 >= *(v97 + 16))
          {
            break;
          }

          v98 = *(v0 + 280);
          v99 = *(v0 + 256);
          v100 = *(v0 + 264);
          v101 = *(v100 + 16);
          v100 += 16;
          v102 = v97 + ((*(v0 + 704) + 32) & ~*(v0 + 704)) + *(v100 + 56) * v96;
          *(v0 + 608) = v101;
          *(v0 + 616) = v100 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v101(v98, v102, v99);
          if (ResolvedTransferRepresentation.representationType.getter() == v91)
          {
            v103 = swift_task_alloc();
            *(v0 + 624) = v103;
            *v103 = v0;
            v103[1] = static URL.file<A>(from:);
            v104 = *(v0 + 168);
            v105 = *(v0 + 176);
            v106 = *(v0 + 160);

            return ResolvedTransferRepresentation.data<A>(from:)(v106, v104, v105);
          }

          (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
          v96 = *(v0 + 600) + 1;
          if (v96 == *(v0 + 592))
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
      }

LABEL_17:
      lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
      swift_allocError();
      *v75 = 1;
      swift_willThrow();

      v52 = *(v0 + 8);
    }

    else
    {
      v42 = *(v0 + 648);
      v43 = *(v0 + 640);
      v44 = *(v0 + 200);
      (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
      outlined consume of Data._Representation(v43, v42);
      outlined consume of Data._Representation(v43, v42);
      v45 = *(v44 + 32);
      v46 = *(v0 + 504);
      v47 = *(v0 + 424);
      v49 = *(v0 + 384);
      v48 = *(v0 + 392);
      v50 = *(v0 + 368);
      v51 = *(v0 + 312);
      v45(*(v0 + 152));
      (*(v50 + 8))(v49, v51);
      v46(v47, v48);

      v52 = *(v0 + 8);
    }

    return v52();
  }

  v36 = v34;
  v37 = *(v0 + 648);
  v38 = *(v0 + 640);
  v39 = MEMORY[0x1E6965B68];
  *(v0 + 80) = MEMORY[0x1E6969080];
  *(v0 + 88) = v39;
  *(v0 + 56) = v38;
  *(v0 + 64) = v37;
  outlined copy of Data._Representation(v38, v37);
  v120 = (v36 + *v36);
  v40 = swift_task_alloc();
  *(v0 + 688) = v40;
  *v40 = v0;
  v40[1] = static URL.file<A>(from:);

  return v120(v0 + 16, v0 + 56);
}

{
  v2 = *v1;
  *(*v1 + 696) = v0;

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2[84], v2[85]);
  if (v0)
  {
    v3 = static URL.file<A>(from:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v3 = static URL.file<A>(from:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v4 = swift_dynamicCast();
  (*(v2 + 56))(v3, v4 ^ 1u, 1, v1);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 696);
    outlined destroy of NSObject?(*(v0 + 184), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    Data.write(to:options:)();
    if (v5)
    {
      v6 = *(v0 + 656);
      v7 = *(v0 + 648);
      v8 = *(v0 + 640);
      v125 = *(v0 + 280);
      v10 = *(v0 + 256);
      v9 = *(v0 + 264);
      v11 = *(v0 + 224);
      v12 = *(v0 + 192);
      outlined consume of Data._Representation(v8, v7);
      outlined consume of Data._Representation(v8, v7);
      v6(v11, v12);
      (*(v9 + 8))(v125, v10);
      v13 = v5;
      goto LABEL_7;
    }

    v55 = *(v0 + 648);
    v56 = *(v0 + 640);
    v57 = *(v0 + 200);
    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    outlined consume of Data._Representation(v56, v55);
    outlined consume of Data._Representation(v56, v55);
    v31 = *(v57 + 32);
LABEL_12:
    v58 = *(v0 + 504);
    v59 = *(v0 + 424);
    v61 = *(v0 + 384);
    v60 = *(v0 + 392);
    v62 = *(v0 + 368);
    v63 = *(v0 + 312);
    v31(*(v0 + 152));
    (*(v62 + 8))(v61, v63);
    v58(v59, v60);

    v64 = *(v0 + 8);
LABEL_17:

    return v64();
  }

  v14 = *(*(v0 + 200) + 32);
  (v14)(*(v0 + 208), *(v0 + 184), *(v0 + 192));
  v15 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  *(v0 + 144) = 0;
  v22 = [v15 copyItemAtURL:v18 toURL:v20 error:v0 + 144];

  v23 = *(v0 + 144);
  v25 = *(v0 + 648);
  v24 = *(v0 + 656);
  v26 = *(v0 + 640);
  v126 = *(v0 + 280);
  v27 = *(v0 + 264);
  v120 = *(v0 + 256);
  if (v22)
  {
    v28 = *(v0 + 208);
    v29 = *(v0 + 192);
    v30 = v23;
    outlined consume of Data._Representation(v26, v25);
    outlined consume of Data._Representation(v26, v25);
    v24(v28, v29);
    (*(v27 + 8))(v126, v120);
    v31 = v14;
    goto LABEL_12;
  }

  v32 = *(v0 + 224);
  v33 = *(v0 + 208);
  v34 = *(v0 + 192);
  v35 = v23;
  v13 = _convertNSErrorToError(_:)();

  swift_willThrow();
  outlined consume of Data._Representation(v26, v25);
  outlined consume of Data._Representation(v26, v25);
  v24(v33, v34);
  v24(v32, v34);
  (*(v27 + 8))(v126, v120);
LABEL_7:
  v36 = *(v0 + 568);
  v38 = *(v0 + 416);
  v37 = *(v0 + 424);
  v39 = *(v0 + 392);
  (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 312));
  v36(v38, v37, v39);
  v40 = v13;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v123 = v42;
    v127 = v41;
    v43 = *(v0 + 568);
    v117 = *(v0 + 520);
    v45 = *(v0 + 464);
    v44 = *(v0 + 472);
    v46 = *(v0 + 416);
    v48 = *(v0 + 392);
    v47 = *(v0 + 400);
    v49 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *(v0 + 128) = v121;
    *v49 = 136315394;
    v43(v44, v46, v48);
    (*(v47 + 56))(v44, 0, 1, v48);
    outlined init with copy of URL?(v44, v45, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    if (v117(v45, 1, v48) == 1)
    {
      v50 = 0xE300000000000000;
      v51 = 7104878;
    }

    else
    {
      v65 = *(v0 + 568);
      v66 = *(v0 + 504);
      v67 = *(v0 + 456);
      v68 = *(v0 + 408);
      v69 = *(v0 + 392);
      (*(*(v0 + 400) + 32))(v67, *(v0 + 464), v69);
      v65(v68, v67, v69);
      v51 = String.init<A>(reflecting:)();
      v50 = v70;
      v66(v67, v69);
    }

    v71 = *(v0 + 504);
    v72 = *(v0 + 416);
    v73 = *(v0 + 392);
    outlined destroy of NSObject?(*(v0 + 472), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v71(v72, v73);
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, (v0 + 128));

    *(v49 + 4) = v74;
    *(v49 + 12) = 2080;
    *(v0 + 136) = v13;
    v75 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v76 = String.init<A>(reflecting:)();
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, (v0 + 128));

    *(v49 + 14) = v78;
    _os_log_impl(&dword_1AEE80000, v127, v123, "Failed to get file from type: %s, error: %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v121, -1, -1);
    MEMORY[0x1B2715BA0](v49, -1, -1);
  }

  else
  {
    v52 = *(v0 + 504);
    v53 = *(v0 + 416);
    v54 = *(v0 + 392);

    v52(v53, v54);
  }

  v79 = *(v0 + 552);
  v80 = *(v0 + 560) + 1;
  (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
  if (v80 == v79)
  {
LABEL_16:
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v81 = 1;
    swift_willThrow();

    v64 = *(v0 + 8);
    goto LABEL_17;
  }

  while (1)
  {
    v88 = *(v0 + 560) + 1;
    *(v0 + 560) = v88;
    if (v88 >= *(*(v0 + 544) + 16))
    {
      goto LABEL_33;
    }

    v118 = *(v0 + 424);
    v89 = *(v0 + 400);
    v91 = *(v0 + 376);
    v90 = *(v0 + 384);
    v92 = *(v0 + 368);
    v114 = *(v0 + 360);
    v122 = *(v0 + 352);
    v93 = *(v0 + 336);
    v124 = *(v0 + 344);
    v116 = *(v0 + 328);
    v94 = *(v0 + 312);
    v119 = *(v0 + 320);
    v96 = *(v0 + 296);
    v95 = *(v0 + 304);
    v115 = *(v0 + 288);
    v97 = *(v89 + 16);
    *(v0 + 568) = v97;
    *(v0 + 576) = (v89 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v97();
    dispatch thunk of static Transferable.transferRepresentation.getter();
    swift_getDynamicType();
    (*(v92 + 16))(v91, v90, v94);
    v98 = MEMORY[0x1E6969080];
    _TransferRepresentationValue.init(_:)();
    _TransferRepresentationInputs.init()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
    (*(v96 + 8))(v95, v115);
    (*(v116 + 8))(v93, v119);
    v99 = _TransferRepresentationOutputs.storage.getter();
    (*(v122 + 8))(v114, v124);
    v100 = swift_task_alloc();
    *(v100 + 16) = v118;
    v101 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static URL.file<A>(from:), v100, v99);
    *(v0 + 584) = v101;

    v102 = *(v101 + 16);
    *(v0 + 592) = v102;
    if (v102)
    {
      break;
    }

LABEL_21:
    v83 = *(v0 + 384);
    v84 = *(v0 + 368);
    v85 = *(v0 + 312);

    (*(v84 + 8))(v83, v85);
    v86 = *(v0 + 552);
    v87 = *(v0 + 560) + 1;
    (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
    if (v87 == v86)
    {
      goto LABEL_16;
    }
  }

  v103 = 0;
  *(v0 + 704) = *(*(v0 + 264) + 80);
  while (1)
  {
    *(v0 + 600) = v103;
    v104 = *(v0 + 584);
    if (v103 >= *(v104 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
    }

    v105 = *(v0 + 280);
    v106 = *(v0 + 256);
    v107 = *(v0 + 264);
    v108 = *(v107 + 16);
    v107 += 16;
    v109 = v104 + ((*(v0 + 704) + 32) & ~*(v0 + 704)) + *(v107 + 56) * v103;
    *(v0 + 608) = v108;
    *(v0 + 616) = v107 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v108(v105, v109, v106);
    if (ResolvedTransferRepresentation.representationType.getter() == v98)
    {
      break;
    }

    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    v103 = *(v0 + 600) + 1;
    if (v103 == *(v0 + 592))
    {
      goto LABEL_21;
    }
  }

  v110 = swift_task_alloc();
  *(v0 + 624) = v110;
  *v110 = v0;
  v110[1] = static URL.file<A>(from:);
  v111 = *(v0 + 168);
  v112 = *(v0 + 176);
  v113 = *(v0 + 160);

  return ResolvedTransferRepresentation.data<A>(from:)(v113, v111, v112);
}

{
  v75 = v0;
  v74[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for ledger != -1)
  {
LABEL_21:
    swift_once();
  }

  v1 = *(v0 + 632);
  v2 = *(v0 + 608);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  __swift_project_value_buffer(*(v0 + 488), static Log.ledger);
  v2(v3, v4, v5);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 632);
  if (v9)
  {
    v66 = *(v0 + 504);
    v11 = *(v0 + 456);
    v62 = *(v0 + 392);
    v12 = *(v0 + 272);
    v73 = *(v0 + 280);
    v13 = *(v0 + 264);
    v64 = *(v0 + 256);
    v69 = *(v0 + 632);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v74[0] = v71;
    *v14 = 136315394;
    ResolvedTransferRepresentation.contentType.getter();
    v16 = UTType.identifier.getter();
    v18 = v17;
    v66(v11, v62);
    v19 = *(v13 + 8);
    v19(v12, v64);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v74);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    v21 = v69;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v22;
    *v15 = v22;
    _os_log_impl(&dword_1AEE80000, v7, v8, "Error loading data for type identifier\n%s: %@", v14, 0x16u);
    outlined destroy of NSObject?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x1B2715BA0](v71, -1, -1);
    MEMORY[0x1B2715BA0](v14, -1, -1);

    v19(v73, v64);
  }

  else
  {
    v24 = *(v0 + 272);
    v23 = *(v0 + 280);
    v25 = *(v0 + 256);
    v26 = *(v0 + 264);

    v27 = *(v26 + 8);
    v27(v24, v25);
    v27(v23, v25);
  }

  while (1)
  {
    v28 = *(v0 + 600) + 1;
    if (v28 == *(v0 + 592))
    {
      break;
    }

LABEL_10:
    *(v0 + 600) = v28;
    v48 = *(v0 + 584);
    if (v28 >= *(v48 + 16))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v49 = *(v0 + 280);
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    v52 = *(v51 + 16);
    v51 += 16;
    v53 = v48 + ((*(v0 + 704) + 32) & ~*(v0 + 704)) + *(v51 + 56) * v28;
    *(v0 + 608) = v52;
    *(v0 + 616) = v51 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v52(v49, v53, v50);
    if (ResolvedTransferRepresentation.representationType.getter() == MEMORY[0x1E6969080])
    {
      v57 = swift_task_alloc();
      *(v0 + 624) = v57;
      *v57 = v0;
      v57[1] = static URL.file<A>(from:);
      v58 = *(v0 + 168);
      v59 = *(v0 + 176);
      v60 = *(v0 + 160);

      return ResolvedTransferRepresentation.data<A>(from:)(v60, v58, v59);
    }

    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
  }

  while (1)
  {
    v29 = *(v0 + 384);
    v30 = *(v0 + 368);
    v31 = *(v0 + 312);

    (*(v30 + 8))(v29, v31);
    v32 = *(v0 + 552);
    v33 = *(v0 + 560) + 1;
    (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
    if (v33 == v32)
    {
      break;
    }

    v34 = *(v0 + 560) + 1;
    *(v0 + 560) = v34;
    if (v34 >= *(*(v0 + 544) + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v67 = *(v0 + 424);
    v35 = *(v0 + 400);
    v37 = *(v0 + 376);
    v36 = *(v0 + 384);
    v38 = *(v0 + 368);
    v61 = *(v0 + 360);
    v70 = *(v0 + 352);
    v39 = *(v0 + 336);
    v72 = *(v0 + 344);
    v65 = *(v0 + 328);
    v40 = *(v0 + 312);
    v68 = *(v0 + 320);
    v42 = *(v0 + 296);
    v41 = *(v0 + 304);
    v63 = *(v0 + 288);
    v43 = *(v35 + 16);
    *(v0 + 568) = v43;
    *(v0 + 576) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v43();
    dispatch thunk of static Transferable.transferRepresentation.getter();
    swift_getDynamicType();
    (*(v38 + 16))(v37, v36, v40);
    _TransferRepresentationValue.init(_:)();
    _TransferRepresentationInputs.init()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
    (*(v42 + 8))(v41, v63);
    (*(v65 + 8))(v39, v68);
    v44 = _TransferRepresentationOutputs.storage.getter();
    v70[1](v61, v72);
    v45 = swift_task_alloc();
    *(v45 + 16) = v67;
    v46 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static URL.file<A>(from:), v45, v44);
    *(v0 + 584) = v46;

    v47 = *(v46 + 16);
    *(v0 + 592) = v47;
    if (v47)
    {
      v28 = 0;
      *(v0 + 704) = *(*(v0 + 264) + 80);
      goto LABEL_10;
    }
  }

  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v54 = 1;
  swift_willThrow();

  v55 = *(v0 + 8);

  return v55();
}

{
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 224);
  v8 = *(v0 + 192);
  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v3, v2);
  v1(v7, v8);
  (*(v6 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v9 = *(v0 + 696);
  v10 = *(v0 + 568);
  v12 = *(v0 + 416);
  v11 = *(v0 + 424);
  v13 = *(v0 + 392);
  (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 312));
  v10(v12, v11, v13);
  v14 = v9;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v87 = v16;
    v89 = v15;
    v17 = *(v0 + 568);
    v82 = *(v0 + 520);
    v19 = *(v0 + 464);
    v18 = *(v0 + 472);
    v20 = *(v0 + 416);
    v22 = *(v0 + 392);
    v21 = *(v0 + 400);
    v23 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *(v0 + 128) = v85;
    *v23 = 136315394;
    v17(v18, v20, v22);
    (*(v21 + 56))(v18, 0, 1, v22);
    outlined init with copy of URL?(v18, v19, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    if (v82(v19, 1, v22) == 1)
    {
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      v29 = *(v0 + 568);
      v30 = *(v0 + 504);
      v31 = *(v0 + 456);
      v32 = *(v0 + 408);
      v33 = *(v0 + 392);
      (*(*(v0 + 400) + 32))(v31, *(v0 + 464), v33);
      v29(v32, v31, v33);
      v25 = String.init<A>(reflecting:)();
      v24 = v34;
      v30(v31, v33);
    }

    v35 = *(v0 + 504);
    v36 = *(v0 + 416);
    v37 = *(v0 + 392);
    outlined destroy of NSObject?(*(v0 + 472), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v35(v36, v37);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, (v0 + 128));

    *(v23 + 4) = v38;
    *(v23 + 12) = 2080;
    *(v0 + 136) = v9;
    v39 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v40 = String.init<A>(reflecting:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, (v0 + 128));

    *(v23 + 14) = v42;
    _os_log_impl(&dword_1AEE80000, v89, v87, "Failed to get file from type: %s, error: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v85, -1, -1);
    MEMORY[0x1B2715BA0](v23, -1, -1);
  }

  else
  {
    v26 = *(v0 + 504);
    v27 = *(v0 + 416);
    v28 = *(v0 + 392);

    v26(v27, v28);
  }

  v43 = *(v0 + 552);
  v44 = *(v0 + 560) + 1;
  (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
  if (v44 == v43)
  {
LABEL_8:
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();

    v46 = *(v0 + 8);

    return v46();
  }

  while (1)
  {
    v53 = *(v0 + 560) + 1;
    *(v0 + 560) = v53;
    if (v53 >= *(*(v0 + 544) + 16))
    {
      goto LABEL_24;
    }

    v83 = *(v0 + 424);
    v54 = *(v0 + 400);
    v56 = *(v0 + 376);
    v55 = *(v0 + 384);
    v57 = *(v0 + 368);
    v79 = *(v0 + 360);
    v86 = *(v0 + 352);
    v58 = *(v0 + 336);
    v88 = *(v0 + 344);
    v81 = *(v0 + 328);
    v59 = *(v0 + 312);
    v84 = *(v0 + 320);
    v61 = *(v0 + 296);
    v60 = *(v0 + 304);
    v80 = *(v0 + 288);
    v62 = *(v54 + 16);
    *(v0 + 568) = v62;
    *(v0 + 576) = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v62();
    dispatch thunk of static Transferable.transferRepresentation.getter();
    swift_getDynamicType();
    (*(v57 + 16))(v56, v55, v59);
    v63 = MEMORY[0x1E6969080];
    _TransferRepresentationValue.init(_:)();
    _TransferRepresentationInputs.init()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
    (*(v61 + 8))(v60, v80);
    (*(v81 + 8))(v58, v84);
    v64 = _TransferRepresentationOutputs.storage.getter();
    (*(v86 + 8))(v79, v88);
    v65 = swift_task_alloc();
    *(v65 + 16) = v83;
    v66 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static URL.file<A>(from:), v65, v64);
    *(v0 + 584) = v66;

    v67 = *(v66 + 16);
    *(v0 + 592) = v67;
    if (v67)
    {
      break;
    }

LABEL_12:
    v48 = *(v0 + 384);
    v49 = *(v0 + 368);
    v50 = *(v0 + 312);

    (*(v49 + 8))(v48, v50);
    v51 = *(v0 + 552);
    v52 = *(v0 + 560) + 1;
    (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
    if (v52 == v51)
    {
      goto LABEL_8;
    }
  }

  v68 = 0;
  *(v0 + 704) = *(*(v0 + 264) + 80);
  while (1)
  {
    *(v0 + 600) = v68;
    v69 = *(v0 + 584);
    if (v68 >= *(v69 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
    }

    v70 = *(v0 + 280);
    v71 = *(v0 + 256);
    v72 = *(v0 + 264);
    v73 = *(v72 + 16);
    v72 += 16;
    v74 = v69 + ((*(v0 + 704) + 32) & ~*(v0 + 704)) + *(v72 + 56) * v68;
    *(v0 + 608) = v73;
    *(v0 + 616) = v72 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v73(v70, v74, v71);
    if (ResolvedTransferRepresentation.representationType.getter() == v63)
    {
      break;
    }

    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    v68 = *(v0 + 600) + 1;
    if (v68 == *(v0 + 592))
    {
      goto LABEL_12;
    }
  }

  v75 = swift_task_alloc();
  *(v0 + 624) = v75;
  *v75 = v0;
  v75[1] = static URL.file<A>(from:);
  v76 = *(v0 + 168);
  v77 = *(v0 + 176);
  v78 = *(v0 + 160);

  return ResolvedTransferRepresentation.data<A>(from:)(v78, v76, v77);
}

uint64_t static URL.file<A>(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 632) = v2;

  if (v2)
  {
    v7 = static URL.file<A>(from:);
  }

  else
  {
    *(v6 + 640) = a1;
    *(v6 + 648) = a2;
    v7 = static URL.file<A>(from:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t GroupSessionJournal.add(id:attachmentData:developerMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.add(id:attachmentData:developerMetadata:), 0, 0);
}

uint64_t GroupSessionJournal.add(id:attachmentData:developerMetadata:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(v5, v6, v7);
  v8 = v5 + *(type metadata accessor for GroupSessionJournal.Attachment(0) + 24);
  v9 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMd, &_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMR) + 48));
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 16))(v8, v4, v10);
  *v9 = v3;
  v9[1] = v1;
  type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  swift_storeEnumTagMultiPayload();
  swift_weakInit();
  v11 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 40);
  outlined copy of Data?(v3, v1);
  v20 = (v13 + *v13);
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = GroupSessionJournal.add(id:attachmentData:developerMetadata:);
  v15 = v0[5];
  v16 = v0[6];
  v18 = v0[3];
  v17 = v0[4];

  return v20(v18, v17, v15, v16, ObjectType, v11);
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](GroupSessionJournal.add(id:attachmentData:developerMetadata:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  outlined destroy of GroupSessionJournal.Attachment(*(v0 + 16), type metadata accessor for GroupSessionJournal.Attachment);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupSessionJournal.add<A, B>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a8;
  v9[9] = v8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v9[10] = type metadata accessor for GroupSessionJournal.Attachment(0);
  v9[11] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v9[12] = v12;
  v9[13] = *(v12 - 8);
  v9[14] = swift_task_alloc();
  v13 = type metadata accessor for Optional();
  v9[15] = v13;
  v9[16] = *(v13 - 8);
  v9[17] = swift_task_alloc();
  v14 = type metadata accessor for Optional();
  v9[18] = v14;
  v9[19] = *(v14 - 8);
  v9[20] = swift_task_alloc();
  v9[21] = *(a5 - 8);
  v9[22] = swift_task_alloc();
  v9[23] = *(a4 - 8);
  v9[24] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v9[25] = v15;
  v9[26] = *(v15 - 8);
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.add<A, B>(_:metadata:), 0, 0);
}

uint64_t GroupSessionJournal.add<A, B>(_:metadata:)(uint64_t a1)
{
  v65 = v1;
  UUID.init()();
  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v60 = v1[27];
  v62 = v1[28];
  v2 = v1[26];
  v58 = v1[25];
  v3 = v1[23];
  v4 = v1[24];
  v5 = v1[21];
  v6 = v1[22];
  v8 = v1[5];
  v7 = v1[6];
  v10 = v1[3];
  v9 = v1[4];
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.ledger);
  v54 = *(v3 + 16);
  v54(v4, v10, v8);
  v56 = *(v5 + 16);
  v56(v6, v9, v7);
  v12 = *(v2 + 16);
  v1[29] = v12;
  v1[30] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v60, v62, v58);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v1[26];
  v17 = v1[27];
  v18 = v1[24];
  v19 = v1[25];
  v20 = v1[23];
  v63 = v1[22];
  v21 = v1[21];
  if (v15)
  {
    v61 = v13;
    v57 = v1[25];
    v23 = v1[19];
    v22 = v1[20];
    v49 = v1[17];
    v50 = v1[16];
    v51 = v1[15];
    v47 = v1[18];
    v48 = v1[6];
    v53 = v1[27];
    v24 = v1[5];
    v52 = v1[26];
    v25 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *v25 = 136315650;
    v54(v22, v18, v24);
    (*(v20 + 56))(v22, 0, 1, v24);
    v26 = >> prefix<A>(_:)(v22, v24);
    v55 = v14;
    v28 = v27;
    (*(v23 + 8))(v22, v47);
    (*(v20 + 8))(v18, v24);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v64);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v56(v49, v63, v48);
    (*(v21 + 56))(v49, 0, 1, v48);
    v30 = >> prefix<A>(_:)(v49, v48);
    v32 = v31;
    (*(v50 + 8))(v49, v51);
    (*(v21 + 8))(v63, v48);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v64);

    *(v25 + 14) = v33;
    *(v25 + 22) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = *(v52 + 8);
    v37(v53, v57);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v64);

    *(v25 + 24) = v38;
    _os_log_impl(&dword_1AEE80000, v61, v55, "Received add request for item: %s, metadata: %s, using ID: %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v59, -1, -1);
    MEMORY[0x1B2715BA0](v25, -1, -1);
  }

  else
  {
    v39 = v1[5];
    v40 = v1[6];

    v37 = *(v16 + 8);
    v37(v17, v19);
    (*(v21 + 8))(v63, v40);
    (*(v20 + 8))(v18, v39);
  }

  v1[31] = v37;
  v41 = swift_task_alloc();
  v1[32] = v41;
  *v41 = v1;
  v41[1] = GroupSessionJournal.add<A, B>(_:metadata:);
  v42 = v1[14];
  v43 = v1[7];
  v44 = v1[5];
  v45 = v1[3];

  return static URL.file<A>(from:)(v42, v45, v44, v43);
}

uint64_t GroupSessionJournal.add<A, B>(_:metadata:)()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = GroupSessionJournal.add<A, B>(_:metadata:);
  }

  else
  {
    v2 = GroupSessionJournal.add<A, B>(_:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 264);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 272) = JSONEncoder.init()();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 280) = v2;
  *(v0 + 288) = v3;
  if (v1)
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 96);

    (*(v5 + 8))(v4, v6);
    (*(v0 + 248))(*(v0 + 224), *(v0 + 200));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 232);
    v10 = *(v0 + 224);
    v11 = *(v0 + 200);
    v12 = *(v0 + 104);
    v13 = *(v0 + 88);
    v26 = *(v0 + 96);
    v27 = *(v0 + 112);
    v14 = *(v0 + 80);
    v29 = *(v0 + 72);
    v15 = v2;
    v16 = v3;
    v17 = outlined copy of Data._Representation(v2, v3);
    v9(v13, v10, v11, v17);
    v18 = v13 + *(v14 + 24);
    v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMd, &_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMR) + 48));
    (*(v12 + 16))(v18, v27, v26);
    *v19 = v15;
    v19[1] = v16;
    type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
    swift_storeEnumTagMultiPayload();
    swift_weakInit();
    v20 = *(v29 + 24);
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 40);
    outlined copy of Data._Representation(v15, v16);
    v28 = (v22 + *v22);
    v23 = swift_task_alloc();
    *(v0 + 296) = v23;
    *v23 = v0;
    v23[1] = GroupSessionJournal.add<A, B>(_:metadata:);
    v24 = *(v0 + 224);
    v25 = *(v0 + 112);

    return v28(v24, v25, v15, v16, ObjectType, v20);
  }
}

{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = GroupSessionJournal.add<A, B>(_:metadata:);
  }

  else
  {
    v2 = GroupSessionJournal.add<A, B>(_:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[28];
  v12 = v0[31];
  v11 = v0[25];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[2];
  outlined consume of Data._Representation(v2, v1);
  outlined init with take of GroupSessionJournal.Attachment(v6, v8, type metadata accessor for GroupSessionJournal.Attachment);

  outlined consume of Data._Representation(v2, v1);
  (*(v5 + 8))(v4, v7);
  v12(v3, v11);

  v9 = v0[1];

  return v9();
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  outlined consume of Data._Representation(v1, v2);
  outlined destroy of GroupSessionJournal.Attachment(v6, type metadata accessor for GroupSessionJournal.Attachment);

  outlined consume of Data._Representation(v1, v2);
  (*(v4 + 8))(v3, v5);
  (*(v0 + 248))(*(v0 + 224), *(v0 + 200));

  v7 = *(v0 + 8);

  return v7();
}

{
  (*(v0 + 248))(*(v0 + 224), *(v0 + 200));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupSessionJournal.Attachment.init(id:ledger:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for GroupSessionJournal.Attachment(0);
  swift_weakInit();

  return outlined init with take of GroupSessionJournal.Attachment(a2, a3 + *(v7 + 24), type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
}

uint64_t GroupSessionJournal.remove(attachment:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.remove(attachment:), 0, 0);
}

uint64_t GroupSessionJournal.remove(attachment:)()
{
  v1 = *(v0[3] + 24);
  ObjectType = swift_getObjectType();
  v6 = (*(v1 + 64) + **(v1 + 64));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = GroupSessionJournal.remove(attachment:);
  v4 = v0[2];

  return v6(v4, ObjectType, v1);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *GroupSessionJournal.__allocating_init<A>(session:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GroupSession(0, *(*a1 + 80), *(*a1 + 88), a4);
  v6 = swift_allocObject();

  return specialized GroupSessionJournal.init(transportSession:)(a1, v6, v5, &protocol witness table for GroupSession<A>);
}

char *GroupSessionJournal.__allocating_init(transportSession:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized GroupSessionJournal.__allocating_init(transportSession:)(a1, v2, ObjectType, a2);
}

char *GroupSessionJournal.init(transportSession:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized GroupSessionJournal.init(transportSession:)(a1, v2, ObjectType, a2);
}

uint64_t closure #1 in GroupSessionJournal.init(transportSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for GroupSessionJournal.Attachment(0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UUID();
  v8 = *(v27 - 8);
  result = MEMORY[0x1EEE9AC00](v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*a1 + 16);
  if (v12)
  {
    v13 = *a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    swift_beginAccess();
    v15 = *(v8 + 16);
    v14 = v8 + 16;
    v25 = *(v14 + 56);
    v26 = v15;
    v24 = (v14 - 8);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = v26;
      v17 = v27;
      v26(v11, v13, v27);
      v19 = v14;
      v18(v7, v11, v17);
      v20 = a2;
      swift_weakLoadStrong();
      (*v24)(v11, v17);
      type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
      swift_storeEnumTagMultiPayload();
      swift_weakInit();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
      }

      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v16);
      }

      v16[2] = v22 + 1;
      result = outlined init with take of GroupSessionJournal.Attachment(v7, v16 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22, type metadata accessor for GroupSessionJournal.Attachment);
      v13 += v25;
      --v12;
      a2 = v20;
      v14 = v19;
    }

    while (v12);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  *v23 = v16;
  return result;
}

uint64_t closure #2 in GroupSessionJournal.init(transportSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v78 = a2;
  v79 = a3;
  v70 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  MEMORY[0x1EEE9AC00](v70);
  v6 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for GroupSessionJournal.Attachment(0);
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v64 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v76 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - v15;
  v17 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v84 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v80 = &v64 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v73 = &v64 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v74 = &v64 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v64 - v30;
  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = __swift_project_value_buffer(v32, static Log.ledger);
  v34 = *(v21 + 16);
  v82 = a1;
  v34(v31, a1, v20);
  outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v79, v19, type metadata accessor for Participant);
  v79 = v33;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v77 = v21 + 16;
  v83 = v34;
  if (v37)
  {
    v66 = v36;
    v67 = v6;
    v38 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v85[0] = v65;
    *v38 = 136315394;
    v34(v16, v31, v20);
    (*(v21 + 56))(v16, 0, 1, v20);
    v39 = v76;
    outlined init with copy of URL?(v16, v76, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v21 + 48))(v39, 1, v20) == 1)
    {
      v40 = 7104878;
      v41 = 0xE300000000000000;
    }

    else
    {
      v42 = *(v21 + 32);
      v64 = v35;
      v43 = v74;
      v42(v74, v39, v20);
      v34(v73, v43, v20);
      v40 = String.init<A>(reflecting:)();
      v41 = v44;
      v45 = v43;
      v35 = v64;
      (*(v21 + 8))(v45, v20);
    }

    outlined destroy of NSObject?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v21 + 8))(v31, v20);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v85);

    *(v38 + 4) = v46;
    *(v38 + 12) = 2080;
    v47 = Participant.description.getter();
    v49 = v48;
    outlined destroy of GroupSessionJournal.Attachment(v19, type metadata accessor for Participant);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v85);

    *(v38 + 14) = v50;
    _os_log_impl(&dword_1AEE80000, v35, v66, "Received new attachment: %s from: %s", v38, 0x16u);
    v51 = v65;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v51, -1, -1);
    MEMORY[0x1B2715BA0](v38, -1, -1);

    v6 = v67;
  }

  else
  {

    outlined destroy of GroupSessionJournal.Attachment(v19, type metadata accessor for Participant);
    (*(v21 + 8))(v31, v20);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v53 = v80;
  v81 = result;
  if (result)
  {
    v83(v80, v82, v20);
    *v6 = Data.init(contentsOf:options:)();
    v6[1] = v54;
    swift_storeEnumTagMultiPayload();
    v55 = v71;
    (*(v21 + 32))(v71, v53, v20);
    v56 = v69;
    swift_weakInit();
    outlined init with take of GroupSessionJournal.Attachment(v6, v55 + *(v56 + 24), type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
    swift_getKeyPath();
    swift_getKeyPath();
    v57 = static Published.subscript.modify();
    v59 = v58;
    v60 = *v58;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v59 = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v60[2] + 1, 1, v60);
      *v59 = v60;
    }

    v63 = v60[2];
    v62 = v60[3];
    if (v63 >= v62 >> 1)
    {
      v60 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v60);
      *v59 = v60;
    }

    v60[2] = v63 + 1;
    outlined init with take of GroupSessionJournal.Attachment(v55, v60 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v63, type metadata accessor for GroupSessionJournal.Attachment);
    v57(v85, 0);
  }

  return result;
}

uint64_t GroupSessionJournal.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal___attachments;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMd, &_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t GroupSessionJournal.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal___attachments;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMd, &_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t GroupSessionJournal.Attachment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GroupSessionJournal.Attachment.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t key path getter for GroupSessionJournal.Attachment.ledger : GroupSessionJournal.Attachment@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for GroupSessionJournal.Attachment(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(a1, v6, type metadata accessor for GroupSessionJournal.Attachment);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of GroupSessionJournal.Attachment(v6, type metadata accessor for GroupSessionJournal.Attachment);
  *a2 = Strong;
  return result;
}

uint64_t GroupSessionJournal.Attachment.ledger.getter()
{
  type metadata accessor for GroupSessionJournal.Attachment(0);

  return swift_weakLoadStrong();
}

uint64_t GroupSessionJournal.Attachment.ledger.setter(uint64_t a1)
{
  type metadata accessor for GroupSessionJournal.Attachment(0);
  swift_weakAssign();
}

uint64_t (*GroupSessionJournal.Attachment.ledger.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(type metadata accessor for GroupSessionJournal.Attachment(0) + 20);
  *a1 = swift_weakLoadStrong();
  return GroupSessionJournal.Attachment.ledger.modify;
}

uint64_t GroupSessionJournal.Attachment.ledger.modify(uint64_t a1)
{
  swift_weakAssign();
}

uint64_t GroupSessionJournal.Attachment.source.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GroupSessionJournal.Attachment(0) + 24);

  return outlined assign with take of GroupSessionJournal.Attachment.AttachmentSource(a1, v3);
}

uint64_t GroupSessionJournal.Attachment.load<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[119] = v4;
  v5[118] = a4;
  v5[117] = a3;
  v5[116] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A14SessionJournalC10AttachmentVSgMd, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMR);
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  v6 = type metadata accessor for GroupSessionJournal.Attachment(0);
  v5[122] = v6;
  v5[123] = *(v6 - 8);
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
  v5[127] = swift_task_alloc();
  v5[128] = swift_task_alloc();
  v7 = type metadata accessor for Optional();
  v5[129] = v7;
  v5[130] = *(v7 - 8);
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v8 = type metadata accessor for UTType();
  v5[133] = v8;
  v5[134] = *(v8 - 8);
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v5[137] = swift_task_alloc();
  v9 = type metadata accessor for ResolvedTransferRepresentation();
  v5[138] = v9;
  v5[139] = *(v9 - 8);
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v10 = type metadata accessor for _TransferRepresentationInputs();
  v5[147] = v10;
  v5[148] = *(v10 - 8);
  v5[149] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[150] = AssociatedTypeWitness;
  v12 = type metadata accessor for _TransferRepresentationValue();
  v5[151] = v12;
  v5[152] = *(v12 - 8);
  v5[153] = swift_task_alloc();
  v13 = type metadata accessor for _TransferRepresentationOutputs();
  v5[154] = v13;
  v5[155] = *(v13 - 8);
  v5[156] = swift_task_alloc();
  v5[157] = *(AssociatedTypeWitness - 8);
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v5[160] = v14;
  v5[161] = *(v14 - 8);
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v5[164] = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  v5[165] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5[166] = swift_task_alloc();
  v5[167] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.Attachment.load<A>(_:), 0, 0);
}

uint64_t GroupSessionJournal.Attachment.load<A>(_:)()
{
  v152 = v0;
  outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v0[119] + *(v0[122] + 24), v0[165], type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = v0[165];
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMd, &_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMR);
    outlined consume of Data?(*(v6 + *(v7 + 48)), *(v6 + *(v7 + 48) + 8));
    v8 = v0[167];
    v9 = v0[166];
    v10 = v0[161];
    v11 = v0[160];
    v12 = *(v10 + 32);
    v12(v8, v0[165], v11);
    (*(v10 + 56))(v8, 0, 1, v11);
    outlined init with copy of URL?(v8, v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v10 + 48))(v9, 1, v11) == 1)
    {
      outlined destroy of NSObject?(v0[166], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (one-time initialization token for ledger == -1)
      {
LABEL_6:
        v13 = v0[126];
        v14 = v0[119];
        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static Log.ledger);
        outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v14, v13, type metadata accessor for GroupSessionJournal.Attachment);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        v18 = os_log_type_enabled(v16, v17);
        v19 = v0[126];
        if (v18)
        {
          v20 = v0[123];
          v21 = v0[122];
          v22 = v0[121];
          v23 = v0[120];
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v151[0] = v25;
          *v24 = 136315138;
          outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v19, v22, type metadata accessor for GroupSessionJournal.Attachment);
          (*(v20 + 56))(v22, 0, 1, v21);
          outlined init with copy of URL?(v22, v23, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMd, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMR);
          if ((*(v20 + 48))(v23, 1, v21) == 1)
          {
            v26 = 7104878;
            v27 = 0xE300000000000000;
          }

          else
          {
            v128 = v0[125];
            v129 = v0[124];
            outlined init with take of GroupSessionJournal.Attachment(v0[120], v128, type metadata accessor for GroupSessionJournal.Attachment);
            outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v128, v129, type metadata accessor for GroupSessionJournal.Attachment);
            v26 = String.init<A>(reflecting:)();
            v27 = v130;
            outlined destroy of GroupSessionJournal.Attachment(v128, type metadata accessor for GroupSessionJournal.Attachment);
          }

          v131 = v0[126];
          outlined destroy of NSObject?(v0[121], &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMd, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMR);
          outlined destroy of GroupSessionJournal.Attachment(v131, type metadata accessor for GroupSessionJournal.Attachment);
          v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v151);

          *(v24 + 4) = v132;
          _os_log_impl(&dword_1AEE80000, v16, v17, "Failed to find URL for attachment %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x1B2715BA0](v25, -1, -1);
          MEMORY[0x1B2715BA0](v24, -1, -1);
        }

        else
        {

          outlined destroy of GroupSessionJournal.Attachment(v19, type metadata accessor for GroupSessionJournal.Attachment);
        }

        v133 = v0[167];
        lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
        swift_allocError();
        *v134 = 2;
        swift_willThrow();
        outlined destroy of NSObject?(v133, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        goto LABEL_50;
      }
    }

    else
    {
      v36 = v0[159];
      v37 = v0[158];
      v38 = v0[157];
      v139 = v0[156];
      v146 = v0[155];
      v149 = v0[154];
      v138 = v0[153];
      v141 = v0[152];
      v142 = v0[151];
      v39 = v0[150];
      v40 = v0[149];
      v41 = v0[148];
      v140 = v0[147];
      v12(v0[162], v0[166], v0[160]);
      dispatch thunk of static Transferable.transferRepresentation.getter();
      swift_getDynamicType();
      (*(v38 + 16))(v37, v36, v39);
      _TransferRepresentationValue.init(_:)();
      _TransferRepresentationInputs.init()();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
      (*(v41 + 8))(v40, v140);
      (*(v141 + 8))(v138, v142);
      v42 = _TransferRepresentationOutputs.storage.getter();
      (*(v146 + 1))(v139, v149);
      v43 = v42;
      v150 = v0;
      v143 = *(v42 + 16);
      if (v143)
      {
        v44 = 0;
        v45 = v0[139];
        v46 = MEMORY[0x1E69E7CC0];
        while (v44 < v43[2])
        {
          v47 = v150[146];
          v48 = v150[145];
          v49 = v150[138];
          v50 = (*(v45 + 80) + 32) & ~*(v45 + 80);
          v0 = v43;
          v51 = *(v45 + 72);
          (*(v45 + 16))(v47, v43 + v50 + v51 * v44, v49);
          v52 = *(v45 + 32);
          v52(v48, v47, v49);
          v151[0] = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 16) + 1, 1);
            v46 = v151[0];
          }

          v54 = *(v46 + 16);
          v53 = *(v46 + 24);
          if (v54 >= v53 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
            v46 = v151[0];
          }

          ++v44;
          v55 = v150[145];
          v56 = v150[138];
          *(v46 + 16) = v54 + 1;
          v52(v46 + v50 + v54 * v51, v55, v56);
          v43 = v0;
          if (v143 == v44)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
      }

      else
      {
        v46 = MEMORY[0x1E69E7CC0];
LABEL_25:
        v0 = v150;
        v150[172] = v46;

        if (one-time initialization token for ledger != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        v150[173] = __swift_project_value_buffer(v58, static Log.ledger);

        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v151[0] = v62;
          *v61 = 136315138;
          v150[115] = v46;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CoreTransferable30ResolvedTransferRepresentationVGMd, &_sSay16CoreTransferable30ResolvedTransferRepresentationVGMR);
          v63 = String.init<A>(reflecting:)();
          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v151);

          *(v61 + 4) = v65;
          _os_log_impl(&dword_1AEE80000, v59, v60, "Supported representations: %s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v62);
          MEMORY[0x1B2715BA0](v62, -1, -1);
          MEMORY[0x1B2715BA0](v61, -1, -1);
        }

        v66 = *(v46 + 16);
        v150[174] = v66;
        if (!v66)
        {
LABEL_43:
          v116 = v150[167];
          v117 = v150[162];
          v118 = v150[161];
          v119 = v150[160];
          v120 = v150[159];
          v121 = v150[157];
          v122 = v150[150];

          lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
          swift_allocError();
          *v123 = 0;
          swift_willThrow();
          (*(v118 + 8))(v117, v119);
          outlined destroy of NSObject?(v116, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*(v121 + 8))(v120, v122);
          goto LABEL_50;
        }

        v67 = 0;
        *(v150 + 386) = *(v150[139] + 80);
        while (1)
        {
          v150[175] = v67;
          v68 = v150[172];
          if (v67 >= *(v68 + 16))
          {
            break;
          }

          v69 = v150[144];
          v70 = v150[139];
          v71 = v150[138];
          v73 = *(v70 + 16);
          v70 += 16;
          v72 = v73;
          v74 = v68 + ((*(v150 + 1544) + 32) & ~*(v150 + 1544)) + *(v70 + 56) * v67;
          v150[176] = v73;
          v150[177] = v70 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v73(v69, v74, v71);
          v75 = ResolvedTransferRepresentation.importing.getter();
          v150[178] = v75;
          v150[179] = v76;
          if (v75)
          {
            v77 = v75;
            v78 = v150[137];
            v79 = v150[136];
            v80 = v150[134];
            v81 = v150[133];
            ResolvedTransferRepresentation.contentType.getter();
            static UTType.url.getter();
            v82 = static UTType.== infix(_:_:)();
            v83 = *(v80 + 8);
            v150[180] = v83;
            v150[181] = (v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v83(v79, v81);
            v83(v78, v81);
            if (v82 & 1) != 0 || (v84 = v150[137], v85 = v150[136], v86 = v150[133], ResolvedTransferRepresentation.contentType.getter(), static UTType.fileURL.getter(), v87 = static UTType.== infix(_:_:)(), v83(v85, v86), v83(v84, v86), (v87))
            {
              ResolvedTransferRepresentation.contentType.getter();
              v124 = swift_task_alloc();
              v150[182] = v124;
              v125 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6965B58]);
              *v124 = v150;
              v124[1] = GroupSessionJournal.Attachment.load<A>(_:);
              v126 = v150[160];
              v127 = v150[135];

              return MEMORY[0x1EEDBF578](v127, v126, v125);
            }

            else
            {
              v88 = Data.init(contentsOf:options:)();
              v150[189] = v88;
              v150[190] = v89;
              v136 = MEMORY[0x1E6965B68];
              v150[25] = MEMORY[0x1E6969080];
              v150[26] = v136;
              v150[22] = v88;
              v150[23] = v89;
              outlined copy of Data._Representation(v88, v89);
              v148 = (v77 + *v77);
              v137 = swift_task_alloc();
              v150[191] = v137;
              *v137 = v150;
              v137[1] = GroupSessionJournal.Attachment.load<A>(_:);

              return (v148)(v150 + 17, v150 + 22);
            }
          }

          v72(v150[142], v150[144], v150[138]);
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v147 = v91;
            v92 = v150[142];
            v93 = v150[139];
            v94 = v150[138];
            v95 = v150[128];
            v96 = v150[127];
            v97 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v150[107] = v144;
            *v97 = 136315138;
            v72(v95, v92, v94);
            (*(v93 + 56))(v95, 0, 1, v94);
            outlined init with copy of URL?(v95, v96, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
            if ((*(v93 + 48))(v96, 1, v94) == 1)
            {
              v98 = 0xE300000000000000;
              v99 = 7104878;
            }

            else
            {
              v105 = v150[141];
              v106 = v150[140];
              v107 = v150[139];
              v108 = v150[138];
              (*(v107 + 32))(v105, v150[127], v108);
              v72(v106, v105, v108);
              v99 = String.init<A>(reflecting:)();
              v98 = v109;
              (*(v107 + 8))(v105, v108);
            }

            v110 = v150[144];
            v111 = v150[142];
            v112 = v150[139];
            v113 = v150[138];
            outlined destroy of NSObject?(v150[128], &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
            v114 = *(v112 + 8);
            v114(v111, v113);
            v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v98, v150 + 107);

            *(v97 + 4) = v115;
            _os_log_impl(&dword_1AEE80000, v90, v147, "Failed to find importing closure from representation %s", v97, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v144);
            MEMORY[0x1B2715BA0](v144, -1, -1);
            MEMORY[0x1B2715BA0](v97, -1, -1);

            v114(v110, v113);
          }

          else
          {
            v100 = v150[144];
            v101 = v150[142];
            v102 = v150[139];
            v103 = v150[138];

            v104 = *(v102 + 8);
            v104(v101, v103);
            v104(v100, v103);
          }

          v67 = v150[175] + 1;
          if (v67 == v150[174])
          {
            goto LABEL_43;
          }
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v2 = v0[165];
    v4 = *v2;
    v3 = v2[1];
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    swift_allocError();
    *v5 = 11;
    swift_willThrow();
    outlined consume of Data._Representation(v4, v3);
LABEL_50:

    v135 = v0[1];

    return v135();
  }

  Strong = swift_weakLoadStrong();
  v0[168] = Strong;
  if (!Strong)
  {
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v57 = 2;
    swift_willThrow();
    goto LABEL_50;
  }

  v0[169] = *(Strong + 16);
  v29 = *(Strong + 24);
  ObjectType = swift_getObjectType();
  v31 = *(v29 + 48);
  swift_unknownObjectRetain();
  v145 = (v31 + *v31);
  v32 = swift_task_alloc();
  v0[170] = v32;
  *v32 = v0;
  v32[1] = GroupSessionJournal.Attachment.load<A>(_:);
  v33 = v0[163];
  v34 = v0[119];

  return (v145)(v33, v34, ObjectType, v29);
}

{
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v2 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  else
  {
    v2 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v161 = v0;

  swift_unknownObjectRelease();
  v1 = *(v0 + 1368);
  v2 = *(v0 + 1336);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 1288);
  v5 = *(v0 + 1280);
  v6 = *(v4 + 32);
  v6(v2, *(v0 + 1304), v5);
  (*(v4 + 56))(v2, 0, 1, v5);
  outlined init with copy of URL?(v2, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v4 + 48))(v3, 1, v5) == 1)
  {
    outlined destroy of NSObject?(*(v0 + 1328), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for ledger == -1)
    {
LABEL_3:
      v7 = *(v0 + 1008);
      v8 = *(v0 + 952);
      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Log.ledger);
      outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v8, v7, type metadata accessor for GroupSessionJournal.Attachment);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 1008);
      if (v12)
      {
        v14 = *(v0 + 984);
        v15 = *(v0 + 976);
        v16 = *(v0 + 968);
        v17 = *(v0 + 960);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v160[0] = v19;
        *v18 = 136315138;
        outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v13, v16, type metadata accessor for GroupSessionJournal.Attachment);
        (*(v14 + 56))(v16, 0, 1, v15);
        outlined init with copy of URL?(v16, v17, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMd, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMR);
        if ((*(v14 + 48))(v17, 1, v15) == 1)
        {
          v20 = 7104878;
          v21 = 0xE300000000000000;
        }

        else
        {
          v133 = *(v0 + 1000);
          v134 = *(v0 + 992);
          outlined init with take of GroupSessionJournal.Attachment(*(v0 + 960), v133, type metadata accessor for GroupSessionJournal.Attachment);
          outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v133, v134, type metadata accessor for GroupSessionJournal.Attachment);
          v20 = String.init<A>(reflecting:)();
          v21 = v135;
          outlined destroy of GroupSessionJournal.Attachment(v133, type metadata accessor for GroupSessionJournal.Attachment);
        }

        v136 = *(v0 + 1008);
        outlined destroy of NSObject?(*(v0 + 968), &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMd, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMR);
        outlined destroy of GroupSessionJournal.Attachment(v136, type metadata accessor for GroupSessionJournal.Attachment);
        v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v160);

        *(v18 + 4) = v137;
        _os_log_impl(&dword_1AEE80000, v10, v11, "Failed to find URL for attachment %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1B2715BA0](v19, -1, -1);
        MEMORY[0x1B2715BA0](v18, -1, -1);
      }

      else
      {

        outlined destroy of GroupSessionJournal.Attachment(v13, type metadata accessor for GroupSessionJournal.Attachment);
      }

      v138 = *(v0 + 1336);
      lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
      swift_allocError();
      *v139 = 2;
      swift_willThrow();
      outlined destroy of NSObject?(v138, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_46;
    }

LABEL_54:
    swift_once();
    goto LABEL_3;
  }

  v147 = v1;
  v22 = *(v0 + 1272);
  v23 = *(v0 + 1264);
  v24 = *(v0 + 1256);
  v145 = *(v0 + 1248);
  v154 = *(v0 + 1240);
  v157 = *(v0 + 1232);
  v144 = *(v0 + 1224);
  v149 = *(v0 + 1216);
  v151 = *(v0 + 1208);
  v25 = *(v0 + 1200);
  v26 = *(v0 + 1192);
  v27 = *(v0 + 1184);
  v146 = *(v0 + 1176);
  v6(*(v0 + 1296), *(v0 + 1328), *(v0 + 1280));
  dispatch thunk of static Transferable.transferRepresentation.getter();
  swift_getDynamicType();
  (*(v24 + 16))(v23, v22, v25);
  _TransferRepresentationValue.init(_:)();
  _TransferRepresentationInputs.init()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
  (*(v27 + 8))(v26, v146);
  (*(v149 + 8))(v144, v151);
  v28 = _TransferRepresentationOutputs.storage.getter();
  (*(v154 + 8))(v145, v157);
  v29 = v28;
  v158 = v0;
  v152 = *(v28 + 16);
  if (v152)
  {
    v30 = 0;
    v31 = *(v0 + 1112);
    v32 = MEMORY[0x1E69E7CC0];
    while (v30 < *(v29 + 16))
    {
      v33 = *(v158 + 1168);
      v34 = *(v158 + 1160);
      v35 = *(v158 + 1104);
      v36 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v37 = v29;
      v38 = *(v31 + 72);
      (*(v31 + 16))(v33, v29 + v36 + v38 * v30, v35);
      v0 = *(v31 + 32);
      (v0)(v34, v33, v35);
      v160[0] = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1);
        v32 = v160[0];
      }

      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v32 = v160[0];
      }

      ++v30;
      v41 = *(v158 + 1160);
      v42 = *(v158 + 1104);
      *(v32 + 16) = v40 + 1;
      (v0)(v32 + v36 + v40 * v38, v41, v42);
      v29 = v37;
      if (v152 == v30)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v0 = v158;
  *(v158 + 1376) = v32;

  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  *(v158 + 1384) = __swift_project_value_buffer(v43, static Log.ledger);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  v46 = v147;
  if (os_log_type_enabled(v44, v45))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v160[0] = v48;
    *v47 = 136315138;
    *(v158 + 920) = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CoreTransferable30ResolvedTransferRepresentationVGMd, &_sSay16CoreTransferable30ResolvedTransferRepresentationVGMR);
    v49 = String.init<A>(reflecting:)();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v160);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_1AEE80000, v44, v45, "Supported representations: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x1B2715BA0](v48, -1, -1);
    MEMORY[0x1B2715BA0](v47, -1, -1);
  }

  v52 = *(v32 + 16);
  *(v158 + 1392) = v52;
  if (v52)
  {
    v53 = 0;
    *(v158 + 1544) = *(*(v158 + 1112) + 80);
    while (1)
    {
      *(v0 + 1400) = v53;
      v54 = *(v0 + 1376);
      if (v53 >= *(v54 + 16))
      {
        break;
      }

      v55 = *(v0 + 1152);
      v56 = *(v0 + 1112);
      v57 = *(v0 + 1104);
      v59 = *(v56 + 16);
      v56 += 16;
      v58 = v59;
      v60 = v54 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v56 + 56) * v53;
      *(v0 + 1408) = v59;
      *(v0 + 1416) = v56 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v59(v55, v60, v57);
      v61 = ResolvedTransferRepresentation.importing.getter();
      *(v0 + 1424) = v61;
      *(v0 + 1432) = v62;
      if (v61)
      {
        v63 = v61;
        v64 = v62;
        v65 = *(v0 + 1096);
        v66 = *(v0 + 1088);
        v67 = *(v0 + 1072);
        v68 = *(v0 + 1064);
        ResolvedTransferRepresentation.contentType.getter();
        static UTType.url.getter();
        v69 = static UTType.== infix(_:_:)();
        v70 = *(v67 + 8);
        *(v0 + 1440) = v70;
        *(v0 + 1448) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v70(v66, v68);
        v70(v65, v68);
        if (v69 & 1) != 0 || (v71 = *(v0 + 1096), v72 = *(v0 + 1088), v73 = *(v0 + 1064), ResolvedTransferRepresentation.contentType.getter(), static UTType.fileURL.getter(), v74 = static UTType.== infix(_:_:)(), v70(v72, v73), v70(v71, v73), (v74))
        {
          ResolvedTransferRepresentation.contentType.getter();
          v129 = swift_task_alloc();
          *(v0 + 1456) = v129;
          v130 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6965B58]);
          *v129 = v0;
          v129[1] = GroupSessionJournal.Attachment.load<A>(_:);
          v131 = *(v0 + 1280);
          v132 = *(v0 + 1080);

          return MEMORY[0x1EEDBF578](v132, v131, v130);
        }

        v75 = Data.init(contentsOf:options:)();
        *(v0 + 1512) = v75;
        *(v0 + 1520) = v76;
        if (!v46)
        {
          v141 = MEMORY[0x1E6965B68];
          *(v0 + 200) = MEMORY[0x1E6969080];
          *(v0 + 208) = v141;
          *(v0 + 176) = v75;
          *(v0 + 184) = v76;
          outlined copy of Data._Representation(v75, v76);
          v159 = (v63 + *v63);
          v142 = swift_task_alloc();
          *(v0 + 1528) = v142;
          *v142 = v0;
          v142[1] = GroupSessionJournal.Attachment.load<A>(_:);

          return v159(v0 + 136, v0 + 176);
        }

        $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(*(v0 + 952), *(v0 + 1296));
        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v63, v64);
        v77 = v46;
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.error.getter();

        v80 = os_log_type_enabled(v78, v79);
        v81 = *(v0 + 1152);
        v82 = *(v0 + 1112);
        v83 = *(v0 + 1104);
        if (v80)
        {
          v84 = *(v0 + 936);
          v85 = swift_slowAlloc();
          v155 = v81;
          v86 = swift_slowAlloc();
          v160[0] = v86;
          *v85 = 136315394;
          *(v158 + 912) = v84;
          MetatypeMetadata = swift_getMetatypeMetadata();
          v88 = >> prefix<A>(_:)(v158 + 912, MetatypeMetadata);
          v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v160);

          *(v85 + 4) = v90;
          *(v85 + 12) = 2080;
          *(v158 + 904) = v46;
          v91 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v92 = String.init<A>(reflecting:)();
          v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v160);

          *(v85 + 14) = v94;
          _os_log_impl(&dword_1AEE80000, v78, v79, "Failed load %s, error: %s", v85, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B2715BA0](v86, -1, -1);
          v0 = v158;
          MEMORY[0x1B2715BA0](v85, -1, -1);

          (*(v82 + 8))(v155, v83);
        }

        else
        {

          (*(v82 + 8))(v81, v83);
        }

        v46 = 0;
      }

      else
      {
        v58(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v95, v96))
        {
          v156 = v96;
          v148 = v46;
          v97 = *(v0 + 1136);
          v98 = *(v0 + 1112);
          v99 = *(v0 + 1104);
          v100 = *(v0 + 1024);
          v101 = *(v0 + 1016);
          v102 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          *(v0 + 856) = v150;
          v153 = v102;
          *v102 = 136315138;
          v58(v100, v97, v99);
          (*(v98 + 56))(v100, 0, 1, v99);
          outlined init with copy of URL?(v100, v101, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
          if ((*(v98 + 48))(v101, 1, v99) == 1)
          {
            v103 = 0xE300000000000000;
            v104 = 7104878;
          }

          else
          {
            v110 = *(v0 + 1128);
            v111 = *(v0 + 1120);
            v112 = *(v0 + 1112);
            v113 = *(v0 + 1104);
            (*(v112 + 32))(v110, *(v0 + 1016), v113);
            v58(v111, v110, v113);
            v104 = String.init<A>(reflecting:)();
            v103 = v114;
            (*(v112 + 8))(v110, v113);
          }

          v115 = *(v0 + 1152);
          v116 = *(v0 + 1136);
          v117 = *(v0 + 1112);
          v118 = *(v0 + 1104);
          outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
          v119 = *(v117 + 8);
          v119(v116, v118);
          v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v103, (v0 + 856));

          *(v153 + 1) = v120;
          _os_log_impl(&dword_1AEE80000, v95, v156, "Failed to find importing closure from representation %s", v153, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v150);
          MEMORY[0x1B2715BA0](v150, -1, -1);
          MEMORY[0x1B2715BA0](v153, -1, -1);

          v119(v115, v118);
          v46 = v148;
        }

        else
        {
          v105 = *(v0 + 1152);
          v106 = *(v0 + 1136);
          v107 = *(v0 + 1112);
          v108 = *(v0 + 1104);

          v109 = *(v107 + 8);
          v109(v106, v108);
          v109(v105, v108);
        }
      }

      v53 = *(v0 + 1400) + 1;
      if (v53 == *(v0 + 1392))
      {
        goto LABEL_39;
      }
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_39:
  v121 = *(v0 + 1336);
  v122 = *(v0 + 1296);
  v123 = *(v0 + 1288);
  v124 = *(v0 + 1280);
  v125 = *(v0 + 1272);
  v126 = *(v0 + 1256);
  v127 = *(v0 + 1200);

  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v128 = 0;
  swift_willThrow();
  (*(v123 + 8))(v122, v124);
  outlined destroy of NSObject?(v121, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v126 + 8))(v125, v127);
LABEL_46:

  v140 = *(v0 + 8);

  return v140();
}

{
  v35 = v0;
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  (*(v0 + 1408))(*(v0 + 1144), *(v0 + 1152), *(v0 + 1104));
  outlined copy of Data._Representation(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  outlined consume of Data._Representation(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1464);
    v28 = *(v0 + 1440);
    v6 = *(v0 + 1144);
    v7 = *(v0 + 1112);
    v29 = *(v0 + 1104);
    v30 = *(v0 + 1472);
    v8 = *(v0 + 1096);
    v9 = *(v0 + 1064);
    v10 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v10 = 136315394;
    v31 = v4;
    ResolvedTransferRepresentation.contentType.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8480]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    v28(v8, v9);
    v14 = *(v7 + 8);
    v14(v6, v29);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v34);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    outlined copy of Data._Representation(v5, v30);
    v16 = Data.description.getter();
    v18 = v17;
    outlined consume of Data._Representation(v5, v30);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v34);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_1AEE80000, v3, v31, "Exported data from attachmentURL to contentType: %s successfully. %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v32, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  else
  {
    v20 = *(v0 + 1144);
    v21 = *(v0 + 1112);
    v22 = *(v0 + 1104);

    v14 = *(v21 + 8);
    v14(v20, v22);
  }

  *(v0 + 1488) = v14;
  v23 = *(v0 + 1472);
  v24 = *(v0 + 1464);
  v25 = *(v0 + 1424);
  *(v0 + 600) = MEMORY[0x1E6969080];
  *(v0 + 608) = MEMORY[0x1E6965B68];
  *(v0 + 576) = v24;
  *(v0 + 584) = v23;
  outlined copy of Data._Representation(v24, v23);
  v33 = (v25 + *v25);
  v26 = swift_task_alloc();
  *(v0 + 1496) = v26;
  *v26 = v0;
  v26[1] = GroupSessionJournal.Attachment.load<A>(_:);

  return v33(v0 + 536, v0 + 576);
}

{
  v2 = *v1;
  *(*v1 + 1504) = v0;

  if (v0)
  {
    v3 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 576));
    v3 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v140 = v0;
  outlined init with copy of Transferable(v0 + 536, v0 + 616);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *(v0 + 880) = v4;
    *v3 = 136315138;
    outlined init with copy of Transferable(v0 + 616, v0 + 416);
    outlined init with copy of URL?(v0 + 416, v0 + 296, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    if (*(v0 + 320))
    {
      outlined init with take of Transferable((v0 + 296), v0 + 96);
      outlined init with copy of Transferable(v0 + 96, v0 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
      v5 = String.init<A>(reflecting:)();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    else
    {
      v5 = 7104878;
      v7 = 0xE300000000000000;
    }

    outlined destroy of NSObject?(v0 + 416, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    __swift_destroy_boxed_opaque_existential_0((v0 + 616));
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, (v0 + 880));

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1AEE80000, v1, v2, "Imported attachmentURL successfully. %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1B2715BA0](v4, -1, -1);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 616));
  }

  outlined init with copy of Transferable(v0 + 536, v0 + 656);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 1472);
    v10 = *(v0 + 1464);
    v131 = *(v0 + 1336);
    v127 = *(v0 + 1296);
    v129 = *(v0 + 1488);
    v11 = *(v0 + 1288);
    v125 = *(v0 + 1280);
    v12 = *(v0 + 1152);
    v13 = *(v0 + 1104);
    v14 = *(v0 + 1056);
    v15 = *(v0 + 936);
    v134 = *(v0 + 928);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 1424), *(v0 + 1432));
    outlined consume of Data._Representation(v10, v9);

    __swift_destroy_boxed_opaque_existential_0((v0 + 536));
    v129(v12, v13);
    (*(v11 + 8))(v127, v125);
    outlined destroy of NSObject?(v131, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v16 = *(v15 - 8);
    (*(v16 + 56))(v14, 0, 1, v15);
    (*(v16 + 32))(v134, v14, v15);
    (*(*(v0 + 1256) + 8))(*(v0 + 1272), *(v0 + 1200));

    v17 = *(v0 + 8);
LABEL_17:

    return v17();
  }

  v18 = *(v0 + 1056);
  v19 = *(v0 + 1040);
  v20 = *(v0 + 1032);
  (*(*(*(v0 + 936) - 8) + 56))(v18, 1, 1);
  (*(v19 + 8))(v18, v20);
  outlined init with copy of Transferable(v0 + 536, v0 + 696);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *(v0 + 872) = v24;
    *v23 = 136315394;
    outlined init with copy of Transferable(v0 + 696, v0 + 776);
    outlined init with copy of URL?(v0 + 776, v0 + 816, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    if (*(v0 + 840))
    {
      outlined init with take of Transferable((v0 + 816), v0 + 16);
      outlined init with copy of Transferable(v0 + 16, v0 + 736);
      v25 = String.init<A>(reflecting:)();
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v135 = *(v0 + 1488);
    v124 = *(v0 + 1464);
    v126 = *(v0 + 1472);
    v36 = *(v0 + 1432);
    v37 = *(v0 + 1424);
    v132 = *(v0 + 1152);
    v38 = *(v0 + 936);
    v130 = *(v0 + 1104);
    outlined destroy of NSObject?(v0 + 776, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    __swift_destroy_boxed_opaque_existential_0((v0 + 696));
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, (v0 + 872));

    *(v23 + 4) = v39;
    *(v23 + 12) = 2080;
    *(v0 + 864) = v38;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v41 = >> prefix<A>(_:)(v0 + 864, MetatypeMetadata);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, (v0 + 872));

    *(v23 + 14) = v43;
    _os_log_impl(&dword_1AEE80000, v21, v22, "Failed to convert %s to %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v24, -1, -1);
    MEMORY[0x1B2715BA0](v23, -1, -1);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v37, v36);

    outlined consume of Data._Representation(v124, v126);
    __swift_destroy_boxed_opaque_existential_0((v0 + 536));
    v33 = (v135)(v132, v130);
  }

  else
  {
    v28 = *(v0 + 1488);
    v29 = *(v0 + 1472);
    v30 = *(v0 + 1464);
    v31 = *(v0 + 1152);
    v32 = *(v0 + 1104);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 1424), *(v0 + 1432));

    outlined consume of Data._Representation(v30, v29);
    __swift_destroy_boxed_opaque_existential_0((v0 + 696));
    __swift_destroy_boxed_opaque_existential_0((v0 + 536));
    v33 = v28(v31, v32);
  }

  v44 = *(v0 + 1400) + 1;
  if (v44 == *(v0 + 1392))
  {
LABEL_16:
    v45 = *(v0 + 1336);
    v46 = *(v0 + 1296);
    v47 = *(v0 + 1288);
    v48 = *(v0 + 1280);
    v49 = *(v0 + 1272);
    v50 = *(v0 + 1256);
    v51 = *(v0 + 1200);

    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
    (*(v47 + 8))(v46, v48);
    outlined destroy of NSObject?(v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v50 + 8))(v49, v51);

    v17 = *(v0 + 8);
    goto LABEL_17;
  }

  v128 = *(v0 + 1504);
  while (1)
  {
    *(v0 + 1400) = v44;
    v59 = *(v0 + 1376);
    if (v44 >= *(v59 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEDBF578](v33, v34, v35);
    }

    v60 = *(v0 + 1152);
    v61 = *(v0 + 1112);
    v62 = *(v0 + 1104);
    v64 = *(v61 + 16);
    v61 += 16;
    v63 = v64;
    v65 = v59 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v61 + 56) * v44;
    *(v0 + 1408) = v64;
    *(v0 + 1416) = v61 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v64(v60, v65, v62);
    v66 = ResolvedTransferRepresentation.importing.getter();
    *(v0 + 1424) = v66;
    *(v0 + 1432) = v67;
    if (v66)
    {
      break;
    }

    v63(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v136 = v69;
      v70 = *(v0 + 1136);
      v71 = *(v0 + 1112);
      v72 = *(v0 + 1104);
      v73 = *(v0 + 1024);
      v74 = *(v0 + 1016);
      v75 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *(v0 + 856) = v133;
      *v75 = 136315138;
      v63(v73, v70, v72);
      (*(v71 + 56))(v73, 0, 1, v72);
      outlined init with copy of URL?(v73, v74, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v71 + 48))(v74, 1, v72) == 1)
      {
        v76 = 0xE300000000000000;
        v77 = 7104878;
      }

      else
      {
        v78 = *(v0 + 1128);
        v79 = *(v0 + 1120);
        v80 = *(v0 + 1112);
        v81 = *(v0 + 1104);
        (*(v80 + 32))(v78, *(v0 + 1016), v81);
        v63(v79, v78, v81);
        v77 = String.init<A>(reflecting:)();
        v76 = v82;
        (*(v80 + 8))(v78, v81);
      }

      v83 = *(v0 + 1152);
      v84 = *(v0 + 1136);
      v85 = *(v0 + 1112);
      v86 = *(v0 + 1104);
      outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v87 = *(v85 + 8);
      v87(v84, v86);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v76, (v0 + 856));

      *(v75 + 4) = v88;
      _os_log_impl(&dword_1AEE80000, v68, v136, "Failed to find importing closure from representation %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v133);
      MEMORY[0x1B2715BA0](v133, -1, -1);
      MEMORY[0x1B2715BA0](v75, -1, -1);

      v33 = (v87)(v83, v86);
    }

    else
    {
      v54 = *(v0 + 1152);
      v55 = *(v0 + 1136);
      v56 = *(v0 + 1112);
      v57 = *(v0 + 1104);

      v58 = *(v56 + 8);
      v58(v55, v57);
      v33 = (v58)(v54, v57);
    }

LABEL_22:
    v44 = *(v0 + 1400) + 1;
    if (v44 == *(v0 + 1392))
    {
      goto LABEL_16;
    }
  }

  v89 = v67;
  v90 = v66;
  v91 = *(v0 + 1096);
  v92 = *(v0 + 1088);
  v93 = *(v0 + 1072);
  v94 = *(v0 + 1064);
  ResolvedTransferRepresentation.contentType.getter();
  static UTType.url.getter();
  v95 = static UTType.== infix(_:_:)();
  v96 = *(v93 + 8);
  *(v0 + 1440) = v96;
  *(v0 + 1448) = (v93 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v96(v92, v94);
  v96(v91, v94);
  if (v95 & 1) != 0 || (v97 = *(v0 + 1096), v98 = *(v0 + 1088), v99 = *(v0 + 1064), ResolvedTransferRepresentation.contentType.getter(), static UTType.fileURL.getter(), v100 = static UTType.== infix(_:_:)(), v96(v98, v99), v96(v97, v99), (v100))
  {
    ResolvedTransferRepresentation.contentType.getter();
    v121 = swift_task_alloc();
    *(v0 + 1456) = v121;
    v35 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6965B58]);
    *v121 = v0;
    v121[1] = GroupSessionJournal.Attachment.load<A>(_:);
    v34 = *(v0 + 1280);
    v33 = *(v0 + 1080);

    return MEMORY[0x1EEDBF578](v33, v34, v35);
  }

  v101 = Data.init(contentsOf:options:)();
  *(v0 + 1512) = v101;
  *(v0 + 1520) = v102;
  if (v128)
  {
    $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(*(v0 + 952), *(v0 + 1296));
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v90, v89);
    v103 = v128;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.error.getter();

    v106 = os_log_type_enabled(v104, v105);
    v107 = *(v0 + 1152);
    v108 = *(v0 + 1112);
    v109 = *(v0 + 1104);
    if (v106)
    {
      v137 = *(v0 + 1104);
      v110 = *(v0 + 936);
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v139[0] = v112;
      *v111 = 136315394;
      *(v0 + 912) = v110;
      v113 = swift_getMetatypeMetadata();
      v114 = >> prefix<A>(_:)(v0 + 912, v113);
      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, v139);

      *(v111 + 4) = v116;
      *(v111 + 12) = 2080;
      *(v0 + 904) = v128;
      v117 = v128;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v118 = String.init<A>(reflecting:)();
      v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v119, v139);

      *(v111 + 14) = v120;
      _os_log_impl(&dword_1AEE80000, v104, v105, "Failed load %s, error: %s", v111, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v112, -1, -1);
      MEMORY[0x1B2715BA0](v111, -1, -1);

      v33 = (*(v108 + 8))(v107, v137);
    }

    else
    {

      v33 = (*(v108 + 8))(v107, v109);
    }

    v128 = 0;
    goto LABEL_22;
  }

  v122 = MEMORY[0x1E6965B68];
  *(v0 + 200) = MEMORY[0x1E6969080];
  *(v0 + 208) = v122;
  *(v0 + 176) = v101;
  *(v0 + 184) = v102;
  outlined copy of Data._Representation(v101, v102);
  v138 = (v90 + *v90);
  v123 = swift_task_alloc();
  *(v0 + 1528) = v123;
  *v123 = v0;
  v123[1] = GroupSessionJournal.Attachment.load<A>(_:);

  return (v138)(v0 + 136, v0 + 176);
}

{
  v2 = *v1;
  *(*v1 + 1536) = v0;

  if (v0)
  {
    v3 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 176));
    v3 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v132 = v0;
  outlined init with copy of Transferable(v0 + 136, v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 1520);
    v2 = *(v0 + 1512);
    v124 = *(v0 + 1432);
    v121 = *(v0 + 1424);
    v3 = *(v0 + 1296);
    v4 = *(v0 + 1288);
    v125 = *(v0 + 1280);
    v127 = *(v0 + 1336);
    v122 = *(v0 + 1152);
    v5 = *(v0 + 1112);
    v6 = *(v0 + 1048);
    v119 = *(v0 + 952);
    v120 = *(v0 + 1104);
    v7 = *(v0 + 936);
    v8 = *(v0 + 928);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    outlined consume of Data._Representation(v2, v1);

    v9 = *(v7 - 8);
    (*(v9 + 56))(v6, 0, 1, v7);
    (*(v9 + 32))(v8, v6, v7);
    $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(v119, v3);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v121, v124);
    (*(v5 + 8))(v122, v120);
    (*(v4 + 8))(v3, v125);
    outlined destroy of NSObject?(v127, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(*(v0 + 1256) + 8))(*(v0 + 1272), *(v0 + 1200));

    v10 = *(v0 + 8);
LABEL_11:

    return v10();
  }

  v11 = *(v0 + 1048);
  v12 = *(v0 + 1040);
  v13 = *(v0 + 1032);
  (*(*(*(v0 + 936) - 8) + 56))(v11, 1, 1);
  (*(v12 + 8))(v11, v13);
  outlined init with copy of Transferable(v0 + 136, v0 + 256);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *(v0 + 896) = v17;
    *v16 = 136315394;
    outlined init with copy of Transferable(v0 + 256, v0 + 336);
    outlined init with copy of URL?(v0 + 336, v0 + 376, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    if (*(v0 + 400))
    {
      outlined init with take of Transferable((v0 + 376), v0 + 456);
      outlined init with copy of Transferable(v0 + 456, v0 + 496);
      v18 = String.init<A>(reflecting:)();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_0((v0 + 456));
    }

    else
    {
      v20 = 0xE300000000000000;
      v18 = 7104878;
    }

    v23 = *(v0 + 1520);
    v24 = *(v0 + 1512);
    v25 = *(v0 + 936);
    outlined destroy of NSObject?(v0 + 336, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, (v0 + 896));

    *(v16 + 4) = v26;
    *(v16 + 12) = 2080;
    *(v0 + 888) = v25;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v28 = >> prefix<A>(_:)(v0 + 888, MetatypeMetadata);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, (v0 + 896));

    *(v16 + 14) = v30;
    _os_log_impl(&dword_1AEE80000, v14, v15, "Failed to convert %s to %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v17, -1, -1);
    MEMORY[0x1B2715BA0](v16, -1, -1);

    outlined consume of Data._Representation(v24, v23);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  else
  {
    v21 = *(v0 + 1520);
    v22 = *(v0 + 1512);

    outlined consume of Data._Representation(v22, v21);
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  v31 = *(v0 + 1432);
  v32 = *(v0 + 1424);
  v33 = *(v0 + 1152);
  v34 = *(v0 + 1112);
  v35 = *(v0 + 1104);
  $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(*(v0 + 952), *(v0 + 1296));
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v32, v31);
  v36 = (*(v34 + 8))(v33, v35);
  v39 = *(v0 + 1400) + 1;
  if (v39 == *(v0 + 1392))
  {
LABEL_10:
    v40 = *(v0 + 1336);
    v41 = *(v0 + 1296);
    v42 = *(v0 + 1288);
    v43 = *(v0 + 1280);
    v44 = *(v0 + 1272);
    v45 = *(v0 + 1256);
    v46 = *(v0 + 1200);

    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v47 = 0;
    swift_willThrow();
    (*(v42 + 8))(v41, v43);
    outlined destroy of NSObject?(v40, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v45 + 8))(v44, v46);

    v10 = *(v0 + 8);
    goto LABEL_11;
  }

  v123 = *(v0 + 1536);
  while (1)
  {
    *(v0 + 1400) = v39;
    v54 = *(v0 + 1376);
    if (v39 >= *(v54 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEDBF578](v36, v37, v38);
    }

    v55 = *(v0 + 1152);
    v56 = *(v0 + 1112);
    v57 = *(v0 + 1104);
    v59 = *(v56 + 16);
    v56 += 16;
    v58 = v59;
    v60 = v54 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v56 + 56) * v39;
    *(v0 + 1408) = v59;
    *(v0 + 1416) = v56 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v59(v55, v60, v57);
    v61 = ResolvedTransferRepresentation.importing.getter();
    *(v0 + 1424) = v61;
    *(v0 + 1432) = v62;
    if (v61)
    {
      break;
    }

    v58(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v128 = v64;
      v65 = *(v0 + 1136);
      v66 = *(v0 + 1112);
      v67 = *(v0 + 1104);
      v68 = *(v0 + 1024);
      v69 = *(v0 + 1016);
      v70 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *(v0 + 856) = v126;
      *v70 = 136315138;
      v58(v68, v65, v67);
      (*(v66 + 56))(v68, 0, 1, v67);
      outlined init with copy of URL?(v68, v69, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v66 + 48))(v69, 1, v67) == 1)
      {
        v71 = 0xE300000000000000;
        v72 = 7104878;
      }

      else
      {
        v73 = *(v0 + 1128);
        v74 = *(v0 + 1120);
        v75 = *(v0 + 1112);
        v76 = *(v0 + 1104);
        (*(v75 + 32))(v73, *(v0 + 1016), v76);
        v58(v74, v73, v76);
        v72 = String.init<A>(reflecting:)();
        v71 = v77;
        (*(v75 + 8))(v73, v76);
      }

      v78 = *(v0 + 1152);
      v79 = *(v0 + 1136);
      v80 = *(v0 + 1112);
      v81 = *(v0 + 1104);
      outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v82 = *(v80 + 8);
      v82(v79, v81);
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v71, (v0 + 856));

      *(v70 + 4) = v83;
      _os_log_impl(&dword_1AEE80000, v63, v128, "Failed to find importing closure from representation %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v126);
      MEMORY[0x1B2715BA0](v126, -1, -1);
      MEMORY[0x1B2715BA0](v70, -1, -1);

      v36 = (v82)(v78, v81);
    }

    else
    {
      v49 = *(v0 + 1152);
      v50 = *(v0 + 1136);
      v51 = *(v0 + 1112);
      v52 = *(v0 + 1104);

      v53 = *(v51 + 8);
      v53(v50, v52);
      v36 = (v53)(v49, v52);
    }

LABEL_16:
    v39 = *(v0 + 1400) + 1;
    if (v39 == *(v0 + 1392))
    {
      goto LABEL_10;
    }
  }

  v84 = v62;
  v85 = v61;
  v86 = *(v0 + 1096);
  v87 = *(v0 + 1088);
  v88 = *(v0 + 1072);
  v89 = *(v0 + 1064);
  ResolvedTransferRepresentation.contentType.getter();
  static UTType.url.getter();
  v90 = static UTType.== infix(_:_:)();
  v91 = *(v88 + 8);
  *(v0 + 1440) = v91;
  *(v0 + 1448) = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v91(v87, v89);
  v91(v86, v89);
  if (v90 & 1) != 0 || (v92 = *(v0 + 1096), v93 = *(v0 + 1088), v94 = *(v0 + 1064), ResolvedTransferRepresentation.contentType.getter(), static UTType.fileURL.getter(), v95 = static UTType.== infix(_:_:)(), v91(v93, v94), v91(v92, v94), (v95))
  {
    ResolvedTransferRepresentation.contentType.getter();
    v116 = swift_task_alloc();
    *(v0 + 1456) = v116;
    v38 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6965B58]);
    *v116 = v0;
    v116[1] = GroupSessionJournal.Attachment.load<A>(_:);
    v37 = *(v0 + 1280);
    v36 = *(v0 + 1080);

    return MEMORY[0x1EEDBF578](v36, v37, v38);
  }

  v96 = Data.init(contentsOf:options:)();
  *(v0 + 1512) = v96;
  *(v0 + 1520) = v97;
  if (v123)
  {
    $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(*(v0 + 952), *(v0 + 1296));
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v85, v84);
    v98 = v123;
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    v101 = os_log_type_enabled(v99, v100);
    v102 = *(v0 + 1152);
    v103 = *(v0 + 1112);
    v104 = *(v0 + 1104);
    if (v101)
    {
      v129 = *(v0 + 1104);
      v105 = *(v0 + 936);
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v131[0] = v107;
      *v106 = 136315394;
      *(v0 + 912) = v105;
      v108 = swift_getMetatypeMetadata();
      v109 = >> prefix<A>(_:)(v0 + 912, v108);
      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, v131);

      *(v106 + 4) = v111;
      *(v106 + 12) = 2080;
      *(v0 + 904) = v123;
      v112 = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v113 = String.init<A>(reflecting:)();
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v131);

      *(v106 + 14) = v115;
      _os_log_impl(&dword_1AEE80000, v99, v100, "Failed load %s, error: %s", v106, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v107, -1, -1);
      MEMORY[0x1B2715BA0](v106, -1, -1);

      v36 = (*(v103 + 8))(v102, v129);
    }

    else
    {

      v36 = (*(v103 + 8))(v102, v104);
    }

    v123 = 0;
    goto LABEL_16;
  }

  v117 = MEMORY[0x1E6965B68];
  *(v0 + 200) = MEMORY[0x1E6969080];
  *(v0 + 208) = v117;
  *(v0 + 176) = v96;
  *(v0 + 184) = v97;
  outlined copy of Data._Representation(v96, v97);
  v130 = (v85 + *v85);
  v118 = swift_task_alloc();
  *(v0 + 1528) = v118;
  *v118 = v0;
  v118[1] = GroupSessionJournal.Attachment.load<A>(_:);

  return (v130)(v0 + 136, v0 + 176);
}

{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  v91 = v0;
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 1424), *(v0 + 1432));
  v1 = *(v0 + 1480);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1152);
  v7 = *(v0 + 1112);
  v8 = *(v0 + 1104);
  if (v5)
  {
    v9 = *(v0 + 936);
    v10 = swift_slowAlloc();
    v88 = v6;
    v90[0] = swift_slowAlloc();
    v11 = v90[0];
    *v10 = 136315394;
    *(v0 + 912) = v9;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v13 = >> prefix<A>(_:)(v0 + 912, MetatypeMetadata);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v90);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v0 + 904) = v1;
    v16 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v90);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed load %s, error: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);

    v20 = (*(v7 + 8))(v88, v8);
  }

  else
  {

    v20 = (*(v7 + 8))(v6, v8);
  }

  while (1)
  {
    v28 = *(v0 + 1400) + 1;
    if (v28 == *(v0 + 1392))
    {
      break;
    }

    *(v0 + 1400) = v28;
    v29 = *(v0 + 1376);
    if (v28 >= *(v29 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEDBF578](v20, v21, v22);
    }

    v30 = *(v0 + 1152);
    v31 = *(v0 + 1112);
    v32 = *(v0 + 1104);
    v34 = *(v31 + 16);
    v31 += 16;
    v33 = v34;
    v35 = v29 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v31 + 56) * v28;
    *(v0 + 1408) = v34;
    *(v0 + 1416) = v31 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v30, v35, v32);
    v36 = ResolvedTransferRepresentation.importing.getter();
    *(v0 + 1424) = v36;
    *(v0 + 1432) = v37;
    if (v36)
    {
      v59 = v36;
      v60 = *(v0 + 1096);
      v61 = *(v0 + 1088);
      v62 = *(v0 + 1072);
      v63 = *(v0 + 1064);
      ResolvedTransferRepresentation.contentType.getter();
      static UTType.url.getter();
      v64 = static UTType.== infix(_:_:)();
      v65 = *(v62 + 8);
      *(v0 + 1440) = v65;
      *(v0 + 1448) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v65(v61, v63);
      v65(v60, v63);
      if ((v64 & 1) == 0)
      {
        v66 = *(v0 + 1096);
        v67 = *(v0 + 1088);
        v68 = *(v0 + 1064);
        ResolvedTransferRepresentation.contentType.getter();
        static UTType.fileURL.getter();
        v69 = static UTType.== infix(_:_:)();
        v65(v67, v68);
        v65(v66, v68);
        if ((v69 & 1) == 0)
        {
          v70 = Data.init(contentsOf:options:)();
          *(v0 + 1512) = v70;
          *(v0 + 1520) = v71;
          v83 = MEMORY[0x1E6965B68];
          *(v0 + 200) = MEMORY[0x1E6969080];
          *(v0 + 208) = v83;
          *(v0 + 176) = v70;
          *(v0 + 184) = v71;
          outlined copy of Data._Representation(v70, v71);
          v89 = (v59 + *v59);
          v84 = swift_task_alloc();
          *(v0 + 1528) = v84;
          *v84 = v0;
          v84[1] = GroupSessionJournal.Attachment.load<A>(_:);

          return v89(v0 + 136, v0 + 176);
        }
      }

      ResolvedTransferRepresentation.contentType.getter();
      v82 = swift_task_alloc();
      *(v0 + 1456) = v82;
      v22 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6965B58]);
      *v82 = v0;
      v82[1] = GroupSessionJournal.Attachment.load<A>(_:);
      v21 = *(v0 + 1280);
      v20 = *(v0 + 1080);

      return MEMORY[0x1EEDBF578](v20, v21, v22);
    }

    v33(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v87 = v38;
      v40 = *(v0 + 1136);
      v41 = *(v0 + 1112);
      v42 = *(v0 + 1104);
      v43 = *(v0 + 1024);
      v44 = *(v0 + 1016);
      v45 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *(v0 + 856) = v86;
      *v45 = 136315138;
      v33(v43, v40, v42);
      (*(v41 + 56))(v43, 0, 1, v42);
      outlined init with copy of URL?(v43, v44, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v41 + 48))(v44, 1, v42) == 1)
      {
        v46 = 0xE300000000000000;
        v47 = 7104878;
      }

      else
      {
        v48 = *(v0 + 1128);
        v49 = *(v0 + 1120);
        v85 = v39;
        v50 = *(v0 + 1112);
        v51 = *(v0 + 1104);
        (*(v50 + 32))(v48, *(v0 + 1016), v51);
        v33(v49, v48, v51);
        v47 = String.init<A>(reflecting:)();
        v46 = v52;
        (*(v50 + 8))(v48, v51);
        v39 = v85;
      }

      v53 = *(v0 + 1152);
      v54 = *(v0 + 1136);
      v55 = *(v0 + 1112);
      v56 = *(v0 + 1104);
      outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v57 = *(v55 + 8);
      v57(v54, v56);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, (v0 + 856));

      *(v45 + 4) = v58;
      _os_log_impl(&dword_1AEE80000, v87, v39, "Failed to find importing closure from representation %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x1B2715BA0](v86, -1, -1);
      MEMORY[0x1B2715BA0](v45, -1, -1);

      v20 = (v57)(v53, v56);
    }

    else
    {
      v23 = *(v0 + 1152);
      v24 = *(v0 + 1136);
      v25 = *(v0 + 1112);
      v26 = *(v0 + 1104);

      v27 = *(v25 + 8);
      v27(v24, v26);
      v20 = (v27)(v23, v26);
    }
  }

  v72 = *(v0 + 1336);
  v73 = *(v0 + 1296);
  v74 = *(v0 + 1288);
  v75 = *(v0 + 1280);
  v76 = *(v0 + 1272);
  v77 = *(v0 + 1256);
  v78 = *(v0 + 1200);

  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v79 = 0;
  swift_willThrow();
  (*(v74 + 8))(v73, v75);
  outlined destroy of NSObject?(v72, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v77 + 8))(v76, v78);

  v80 = *(v0 + 8);

  return v80();
}

{
  v93 = v0;
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  outlined consume of Data._Representation(*(v0 + 1464), *(v0 + 1472));
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v3 = *(v0 + 1504);
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1152);
  v9 = *(v0 + 1112);
  v10 = *(v0 + 1104);
  if (v7)
  {
    v11 = *(v0 + 936);
    v12 = swift_slowAlloc();
    v90 = v8;
    v92[0] = swift_slowAlloc();
    v13 = v92[0];
    *v12 = 136315394;
    *(v0 + 912) = v11;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v15 = >> prefix<A>(_:)(v0 + 912, MetatypeMetadata);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v92);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v0 + 904) = v3;
    v18 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v92);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Failed load %s, error: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);

    v22 = (*(v9 + 8))(v90, v10);
  }

  else
  {

    v22 = (*(v9 + 8))(v8, v10);
  }

  while (1)
  {
    v30 = *(v0 + 1400) + 1;
    if (v30 == *(v0 + 1392))
    {
      break;
    }

    *(v0 + 1400) = v30;
    v31 = *(v0 + 1376);
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEDBF578](v22, v23, v24);
    }

    v32 = *(v0 + 1152);
    v33 = *(v0 + 1112);
    v34 = *(v0 + 1104);
    v36 = *(v33 + 16);
    v33 += 16;
    v35 = v36;
    v37 = v31 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v33 + 56) * v30;
    *(v0 + 1408) = v36;
    *(v0 + 1416) = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v36(v32, v37, v34);
    v38 = ResolvedTransferRepresentation.importing.getter();
    *(v0 + 1424) = v38;
    *(v0 + 1432) = v39;
    if (v38)
    {
      v61 = v38;
      v62 = *(v0 + 1096);
      v63 = *(v0 + 1088);
      v64 = *(v0 + 1072);
      v65 = *(v0 + 1064);
      ResolvedTransferRepresentation.contentType.getter();
      static UTType.url.getter();
      v66 = static UTType.== infix(_:_:)();
      v67 = *(v64 + 8);
      *(v0 + 1440) = v67;
      *(v0 + 1448) = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v67(v63, v65);
      v67(v62, v65);
      if ((v66 & 1) == 0)
      {
        v68 = *(v0 + 1096);
        v69 = *(v0 + 1088);
        v70 = *(v0 + 1064);
        ResolvedTransferRepresentation.contentType.getter();
        static UTType.fileURL.getter();
        v71 = static UTType.== infix(_:_:)();
        v67(v69, v70);
        v67(v68, v70);
        if ((v71 & 1) == 0)
        {
          v72 = Data.init(contentsOf:options:)();
          *(v0 + 1512) = v72;
          *(v0 + 1520) = v73;
          v85 = MEMORY[0x1E6965B68];
          *(v0 + 200) = MEMORY[0x1E6969080];
          *(v0 + 208) = v85;
          *(v0 + 176) = v72;
          *(v0 + 184) = v73;
          outlined copy of Data._Representation(v72, v73);
          v91 = (v61 + *v61);
          v86 = swift_task_alloc();
          *(v0 + 1528) = v86;
          *v86 = v0;
          v86[1] = GroupSessionJournal.Attachment.load<A>(_:);

          return v91(v0 + 136, v0 + 176);
        }
      }

      ResolvedTransferRepresentation.contentType.getter();
      v84 = swift_task_alloc();
      *(v0 + 1456) = v84;
      v24 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6965B58]);
      *v84 = v0;
      v84[1] = GroupSessionJournal.Attachment.load<A>(_:);
      v23 = *(v0 + 1280);
      v22 = *(v0 + 1080);

      return MEMORY[0x1EEDBF578](v22, v23, v24);
    }

    v35(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v89 = v40;
      v42 = *(v0 + 1136);
      v43 = *(v0 + 1112);
      v44 = *(v0 + 1104);
      v45 = *(v0 + 1024);
      v46 = *(v0 + 1016);
      v47 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      *(v0 + 856) = v88;
      *v47 = 136315138;
      v35(v45, v42, v44);
      (*(v43 + 56))(v45, 0, 1, v44);
      outlined init with copy of URL?(v45, v46, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v43 + 48))(v46, 1, v44) == 1)
      {
        v48 = 0xE300000000000000;
        v49 = 7104878;
      }

      else
      {
        v50 = *(v0 + 1128);
        v51 = *(v0 + 1120);
        v87 = v41;
        v52 = *(v0 + 1112);
        v53 = *(v0 + 1104);
        (*(v52 + 32))(v50, *(v0 + 1016), v53);
        v35(v51, v50, v53);
        v49 = String.init<A>(reflecting:)();
        v48 = v54;
        (*(v52 + 8))(v50, v53);
        v41 = v87;
      }

      v55 = *(v0 + 1152);
      v56 = *(v0 + 1136);
      v57 = *(v0 + 1112);
      v58 = *(v0 + 1104);
      outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v59 = *(v57 + 8);
      v59(v56, v58);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, (v0 + 856));

      *(v47 + 4) = v60;
      _os_log_impl(&dword_1AEE80000, v89, v41, "Failed to find importing closure from representation %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v88);
      MEMORY[0x1B2715BA0](v88, -1, -1);
      MEMORY[0x1B2715BA0](v47, -1, -1);

      v22 = (v59)(v55, v58);
    }

    else
    {
      v25 = *(v0 + 1152);
      v26 = *(v0 + 1136);
      v27 = *(v0 + 1112);
      v28 = *(v0 + 1104);

      v29 = *(v27 + 8);
      v29(v26, v28);
      v22 = (v29)(v25, v28);
    }
  }

  v74 = *(v0 + 1336);
  v75 = *(v0 + 1296);
  v76 = *(v0 + 1288);
  v77 = *(v0 + 1280);
  v78 = *(v0 + 1272);
  v79 = *(v0 + 1256);
  v80 = *(v0 + 1200);

  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v81 = 0;
  swift_willThrow();
  (*(v76 + 8))(v75, v77);
  outlined destroy of NSObject?(v74, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v79 + 8))(v78, v80);

  v82 = *(v0 + 8);

  return v82();
}

{
  v95 = v0;
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 952);
  outlined consume of Data._Representation(*(v0 + 1512), *(v0 + 1520));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(v4, v3);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2, v1);
  v5 = *(v0 + 1536);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1152);
  v11 = *(v0 + 1112);
  v12 = *(v0 + 1104);
  if (v9)
  {
    v13 = *(v0 + 936);
    v14 = swift_slowAlloc();
    v92 = v10;
    v94[0] = swift_slowAlloc();
    v15 = v94[0];
    *v14 = 136315394;
    *(v0 + 912) = v13;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v17 = >> prefix<A>(_:)(v0 + 912, MetatypeMetadata);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v94);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v0 + 904) = v5;
    v20 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v94);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_1AEE80000, v7, v8, "Failed load %s, error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v15, -1, -1);
    MEMORY[0x1B2715BA0](v14, -1, -1);

    v24 = (*(v11 + 8))(v92, v12);
  }

  else
  {

    v24 = (*(v11 + 8))(v10, v12);
  }

  while (1)
  {
    v32 = *(v0 + 1400) + 1;
    if (v32 == *(v0 + 1392))
    {
      break;
    }

    *(v0 + 1400) = v32;
    v33 = *(v0 + 1376);
    if (v32 >= *(v33 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEDBF578](v24, v25, v26);
    }

    v34 = *(v0 + 1152);
    v35 = *(v0 + 1112);
    v36 = *(v0 + 1104);
    v38 = *(v35 + 16);
    v35 += 16;
    v37 = v38;
    v39 = v33 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v35 + 56) * v32;
    *(v0 + 1408) = v38;
    *(v0 + 1416) = v35 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v38(v34, v39, v36);
    v40 = ResolvedTransferRepresentation.importing.getter();
    *(v0 + 1424) = v40;
    *(v0 + 1432) = v41;
    if (v40)
    {
      v63 = v40;
      v64 = *(v0 + 1096);
      v65 = *(v0 + 1088);
      v66 = *(v0 + 1072);
      v67 = *(v0 + 1064);
      ResolvedTransferRepresentation.contentType.getter();
      static UTType.url.getter();
      v68 = static UTType.== infix(_:_:)();
      v69 = *(v66 + 8);
      *(v0 + 1440) = v69;
      *(v0 + 1448) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v69(v65, v67);
      v69(v64, v67);
      if ((v68 & 1) == 0)
      {
        v70 = *(v0 + 1096);
        v71 = *(v0 + 1088);
        v72 = *(v0 + 1064);
        ResolvedTransferRepresentation.contentType.getter();
        static UTType.fileURL.getter();
        v73 = static UTType.== infix(_:_:)();
        v69(v71, v72);
        v69(v70, v72);
        if ((v73 & 1) == 0)
        {
          v74 = Data.init(contentsOf:options:)();
          *(v0 + 1512) = v74;
          *(v0 + 1520) = v75;
          v87 = MEMORY[0x1E6965B68];
          *(v0 + 200) = MEMORY[0x1E6969080];
          *(v0 + 208) = v87;
          *(v0 + 176) = v74;
          *(v0 + 184) = v75;
          outlined copy of Data._Representation(v74, v75);
          v93 = (v63 + *v63);
          v88 = swift_task_alloc();
          *(v0 + 1528) = v88;
          *v88 = v0;
          v88[1] = GroupSessionJournal.Attachment.load<A>(_:);

          return v93(v0 + 136, v0 + 176);
        }
      }

      ResolvedTransferRepresentation.contentType.getter();
      v86 = swift_task_alloc();
      *(v0 + 1456) = v86;
      v26 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6965B58]);
      *v86 = v0;
      v86[1] = GroupSessionJournal.Attachment.load<A>(_:);
      v25 = *(v0 + 1280);
      v24 = *(v0 + 1080);

      return MEMORY[0x1EEDBF578](v24, v25, v26);
    }

    v37(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v91 = v42;
      v44 = *(v0 + 1136);
      v45 = *(v0 + 1112);
      v46 = *(v0 + 1104);
      v47 = *(v0 + 1024);
      v48 = *(v0 + 1016);
      v49 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *(v0 + 856) = v90;
      *v49 = 136315138;
      v37(v47, v44, v46);
      (*(v45 + 56))(v47, 0, 1, v46);
      outlined init with copy of URL?(v47, v48, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v45 + 48))(v48, 1, v46) == 1)
      {
        v50 = 0xE300000000000000;
        v51 = 7104878;
      }

      else
      {
        v52 = *(v0 + 1128);
        v53 = *(v0 + 1120);
        v89 = v43;
        v54 = *(v0 + 1112);
        v55 = *(v0 + 1104);
        (*(v54 + 32))(v52, *(v0 + 1016), v55);
        v37(v53, v52, v55);
        v51 = String.init<A>(reflecting:)();
        v50 = v56;
        (*(v54 + 8))(v52, v55);
        v43 = v89;
      }

      v57 = *(v0 + 1152);
      v58 = *(v0 + 1136);
      v59 = *(v0 + 1112);
      v60 = *(v0 + 1104);
      outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v61 = *(v59 + 8);
      v61(v58, v60);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, (v0 + 856));

      *(v49 + 4) = v62;
      _os_log_impl(&dword_1AEE80000, v91, v43, "Failed to find importing closure from representation %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x1B2715BA0](v90, -1, -1);
      MEMORY[0x1B2715BA0](v49, -1, -1);

      v24 = (v61)(v57, v60);
    }

    else
    {
      v27 = *(v0 + 1152);
      v28 = *(v0 + 1136);
      v29 = *(v0 + 1112);
      v30 = *(v0 + 1104);

      v31 = *(v29 + 8);
      v31(v28, v30);
      v24 = (v31)(v27, v30);
    }
  }

  v76 = *(v0 + 1336);
  v77 = *(v0 + 1296);
  v78 = *(v0 + 1288);
  v79 = *(v0 + 1280);
  v80 = *(v0 + 1272);
  v81 = *(v0 + 1256);
  v82 = *(v0 + 1200);

  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v83 = 0;
  swift_willThrow();
  (*(v78 + 8))(v77, v79);
  outlined destroy of NSObject?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v81 + 8))(v80, v82);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t GroupSessionJournal.Attachment.load<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[183] = a1;
  v5[184] = a2;
  v5[185] = v2;

  (v4[180])(v4[135], v4[133]);
  if (v2)
  {
    v6 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  else
  {
    v6 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for ResolvedTransferRepresentation();
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v37;
  }

  return result;
}

void $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(uint64_t a1, uint64_t a2)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GroupSessionJournal.Attachment(0);
  outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(a1 + *(v11 + 24), v10, type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  outlined destroy of GroupSessionJournal.Attachment(v10, type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
  if (a1 == 2)
  {
    v12 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    v36[0] = 0;
    v16 = [v12 removeItemAtURL:v14 error:v36];

    v17 = v36[0];
    if (v16)
    {

      v18 = v17;
    }

    else
    {
      v35[1] = v36[0];
      v19 = v36[0];
      v20 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for ledger != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Log.ledger);
      (*(v5 + 16))(v7, a2, v4);
      v22 = v20;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v36[0] = v26;
        *v25 = 136315394;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        (*(v5 + 8))(v7, v4);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v36);

        *(v25 + 4) = v30;
        *(v25 + 12) = 2080;
        v35[2] = v20;
        v31 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v32 = String.init<A>(reflecting:)();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v36);

        *(v25 + 14) = v34;
        _os_log_impl(&dword_1AEE80000, v23, v24, "Failed to remove file: %s, reason: %s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v26, -1, -1);
        MEMORY[0x1B2715BA0](v25, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v7, v4);
      }
    }
  }
}

uint64_t GroupSessionJournal.Attachment.loadMetadata<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v5[6] = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.Attachment.loadMetadata<A>(of:), 0, 0);
}

uint64_t GroupSessionJournal.Attachment.loadMetadata<A>(of:)()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = type metadata accessor for GroupSessionJournal.Attachment(0);
  outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v2 + *(v3 + 24), v1, type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v6 = v0[7];
    v7 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMd, &_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMR) + 48));
    v8 = *v7;
    v9 = v7[1];
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(v6, v10);
    if (v9 >> 60 == 15)
    {
      if (one-time initialization token for ledger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Log.ledger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1AEE80000, v12, v13, "Failed to find the metadata", v14, 2u);
        MEMORY[0x1B2715BA0](v14, -1, -1);
      }

      lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
      swift_allocError();
      *v15 = 2;
      swift_willThrow();
      outlined consume of Data?(v8, v9);
    }

    else
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      outlined consume of Data._Representation(v8, v9);
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined destroy of GroupSessionJournal.Attachment(v0[7], type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
LABEL_14:

    v19 = v0[1];

    return v19();
  }

  v16 = swift_task_alloc();
  v0[8] = v16;
  *v16 = v0;
  v16[1] = GroupSessionJournal.Attachment.loadMetadata<A>(of:);
  v17 = v0[5];

  return GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:)(v17);
}

{
  v2 = v0[10];
  v1 = v0[11];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v1, v2);

  v3 = v0[1];

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupSessionJournal.Attachment.loadMetadata<A>(of:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = GroupSessionJournal.Attachment.loadMetadata<A>(of:);
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = GroupSessionJournal.Attachment.loadMetadata<A>(of:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:), 0, 0);
}

uint64_t GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:)()
{
  type metadata accessor for GroupSessionJournal.Attachment(0);
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v0[5] = *(Strong + 16);
    v2 = *(Strong + 24);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 56);
    swift_unknownObjectRetain();
    v10 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v5[1] = GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:);
    v6 = v0[2];

    return v10(v6, ObjectType, v2);
  }

  else
  {
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

{
  swift_unknownObjectRelease();

  v1 = v0[1];
  v3 = v0[8];
  v2 = v0[9];

  return v1(v2, v3);
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:);
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:), 0, 0);
}

uint64_t GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:)()
{
  type metadata accessor for GroupSessionJournal.Attachment(0);
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v0[6] = *(Strong + 16);
    v2 = *(Strong + 24);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 48);
    swift_unknownObjectRetain();
    v11 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:);
    v6 = v0[2];
    v7 = v0[3];

    return v11(v6, v7, ObjectType, v2);
  }

  else
  {
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v9 = 2;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:);
  }

  else
  {
    v2 = GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupSessionJournal.Attachments.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMR);
  v2 = swift_allocObject();

  v3 = swift_slowAlloc();
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = static Subscribers.Demand.none.getter();
  *v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[GroupSessionJournal.Attachment], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMR, MEMORY[0x1E695BED8]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<[GroupSessionJournal.Attachment], Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMR, &protocol conformance descriptor for _PublisherElements<A>.Iterator.Inner);
  Publisher.subscribe<A>(_:)();

  *a1 = v2;
  return result;
}

uint64_t GroupSessionJournal.Attachments.Iterator.baseIterator.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t GroupSessionJournal.Attachments.Iterator.next()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.Attachments.Iterator.next(), 0, 0);
}

{
  v1 = v0[3];
  v2 = *v1;
  v0[4] = *v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A14SessionJournalC10AttachmentVGSgMd, &_sSay15GroupActivities0A14SessionJournalC10AttachmentVGSgMR);
  *v4 = v0;
  v4[1] = GroupSessionJournal.Attachments.Iterator.next();

  return MEMORY[0x1EEE6DE18](v0 + 2, &async function pointer to partial apply for specialized closure #2 in _PublisherElements.Iterator.next(), v3, partial apply for specialized closure #1 in _PublisherElements.Iterator.next(), v2, 0, 0, v5);
}

void GroupSessionJournal.Attachments.Iterator.next()()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 16);

    v5 = *(v3 + 8);

    v5(v4);
  }
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator()
{
  v1 = v0[4];
  v2 = *v1;
  v0[5] = *v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A14SessionJournalC10AttachmentVGSgMd, &_sSay15GroupActivities0A14SessionJournalC10AttachmentVGSgMR);
  *v4 = v0;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator;

  return MEMORY[0x1EEE6DE18](v0 + 2, &closure #2 in _PublisherElements.Iterator.next()specialized partial apply, v3, closure #1 in _PublisherElements.Iterator.next()specialized partial apply, v2, 0, 0, v5);
}

{
  **(v0 + 24) = *(v0 + 64);
  return (*(v0 + 8))();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    *(v2 + 64) = *(v2 + 16);

    MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator, 0, 0);
  }
}

uint64_t _s15GroupActivities0A14SessionJournalC11AttachmentsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = _s15GroupActivities0A14SessionJournalC11AttachmentsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5(a2, a3);
}

uint64_t _s15GroupActivities0A14SessionJournalC11AttachmentsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance GroupSessionJournal.Attachments@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMR);
  v2 = swift_allocObject();

  v3 = swift_slowAlloc();
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = static Subscribers.Demand.none.getter();
  *v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[GroupSessionJournal.Attachment], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMR, MEMORY[0x1E695BED8]);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<[GroupSessionJournal.Attachment], Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMR, &protocol conformance descriptor for _PublisherElements<A>.Iterator.Inner);
  Publisher.subscribe<A>(_:)();

  *a1 = v2;
}

Swift::Int GroupSessionJournal.InternalErrors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

Swift::Int GroupSessionJournal.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

uint64_t closure #2 in static URL.file<A>(from:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ResolvedTransferRepresentation.contentType.getter();
  v6 = static UTType.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t ResolvedTransferRepresentation.data<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x1EEE6DFA0](ResolvedTransferRepresentation.data<A>(from:), 0, 0);
}

uint64_t ResolvedTransferRepresentation.data<A>(from:)()
{
  v1 = ResolvedTransferRepresentation.exporting.getter();
  *(v0 + 144) = v1;
  *(v0 + 152) = v2;
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 112);
    v11 = *(v0 + 120);
    *(v0 + 80) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v4);
    v12 = (v3 + *v3);
    v6 = swift_task_alloc();
    *(v0 + 160) = v6;
    *v6 = v0;
    v6[1] = ResolvedTransferRepresentation.data<A>(from:);

    return v12(v0 + 16, v0 + 56);
  }

  else
  {
    v8 = type metadata accessor for TransferableError();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8], MEMORY[0x1E6965BE0]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x1E6965BC8], v8);
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = ResolvedTransferRepresentation.data<A>(from:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v3 = ResolvedTransferRepresentation.data<A>(from:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[18], v0[19]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  if (swift_dynamicCast())
  {
    v1 = v0[12];
    v2 = v0[13];
    v3 = v0[1];

    return v3(v1, v2);
  }

  else
  {
    v5 = type metadata accessor for TransferableError();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8], MEMORY[0x1E6965BE0]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E6965BC8], v5);
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

{
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[18], v0[19]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[1];

  return v1();
}

uint64_t key path getter for GroupSessionJournal._attachments : GroupSessionJournal@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for GroupSessionJournal._attachments : GroupSessionJournal(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t outlined init with take of GroupSessionJournal.Attachment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized closure #2 in _PublisherElements.Iterator.next()(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

uint64_t specialized closure #2 in _PublisherElements.Iterator.next()()
{
  *(v0 + 104) = **(v0 + 96);

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

{
  v1 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = specialized closure #2 in _PublisherElements.Iterator.next();
  v2 = swift_continuation_init();
  specialized closure #1 in _PublisherElements.Iterator.Inner.next()(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v3 = *v0;
  **(*v0 + 88) = *(*v0 + 80);
  v1 = *(v3 + 8);

  return v1();
}

{
  *(v0 + 104) = **(v0 + 96);

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

{
  v1 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = specialized closure #2 in _PublisherElements.Iterator.next();
  v2 = swift_continuation_init();
  specialized closure #1 in _PublisherElements.Iterator.Inner.next()(v2, v1, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0K0VGs5NeverOG___GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A24SessionAttachmentManagerC0K0VGs5NeverOG___GMR, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

char *specialized GroupSessionJournal.__allocating_init(transportSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();

  return specialized GroupSessionJournal.init(transportSession:)(a1, v7, a3, a4);
}

char *specialized GroupSessionJournal.init(transportSession:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMR);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I14SessionJournalC10AttachmentVGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I14SessionJournalC10AttachmentVGGMR);
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMd, &_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMR);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  *(a2 + 4) = 0;
  v20 = OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal___attachments;
  v36[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A14SessionJournalC10AttachmentVGMd, &_sSay15GroupActivities0A14SessionJournalC10AttachmentVGMR);
  Published.init(initialValue:)();
  (*(v17 + 32))(&a2[v20], v19, v16);
  *&a2[OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal_cancellables] = MEMORY[0x1E69E7CD0];
  *(a2 + 2) = a1;
  *(a2 + 3) = a4;
  v36[0] = (*(a4 + 24))(v30, a4);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR);
  v30 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGMR, MEMORY[0x1E695BED8]);
  Publisher.map<A>(_:)();

  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UUID], Never>, [GroupSessionJournal.Attachment]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I14SessionJournalC10AttachmentVGGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySay10Foundation4UUIDVGs5NeverOGSay15GroupActivities0I14SessionJournalC10AttachmentVGGMR, MEMORY[0x1E695BD60]);
  v21 = v31;
  Publisher<>.assign(to:)();
  (*(v32 + 8))(v15, v21);
  v22 = v34;
  v23 = v35;
  (*(v34 + 16))(v33, v11, v35);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v22 + 8))(v11, v23);
  v24 = *(a2 + 3);
  ObjectType = swift_getObjectType();
  v36[0] = (*(v24 + 32))(ObjectType, v24);
  v26 = swift_allocObject();
  swift_weakInit();

  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for closure #2 in GroupSessionJournal.init(transportSession:);
  *(v27 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(UUID, URL, Participant), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine12AnyPublisherVy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR, v30);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  GroupSessionJournal.attachments.getter(v36);

  return a2;
}

uint64_t outlined assign with take of GroupSessionJournal.Attachment.AttachmentSource(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors()
{
  result = lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors;
  if (!lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors;
  if (!lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors);
  }

  return result;
}

uint64_t outlined destroy of GroupSessionJournal.Attachment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for specialized closure #1 in _PublisherElements.Iterator.next()()
{
  return specialized _PublisherElements.Iterator.Inner.cancel()(&_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG___GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG___GMR, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG___GSgMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerC5StateOy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG___GSgMR);
}

{
  return specialized closure #1 in _PublisherElements.Iterator.next()();
}

uint64_t partial apply for specialized closure #2 in _PublisherElements.Iterator.next()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return specialized closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return specialized closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

unint64_t lazy protocol witness table accessor for type GroupSessionJournal.Attachments.Iterator and conformance GroupSessionJournal.Attachments.Iterator()
{
  result = lazy protocol witness table cache variable for type GroupSessionJournal.Attachments.Iterator and conformance GroupSessionJournal.Attachments.Iterator;
  if (!lazy protocol witness table cache variable for type GroupSessionJournal.Attachments.Iterator and conformance GroupSessionJournal.Attachments.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionJournal.Attachments.Iterator and conformance GroupSessionJournal.Attachments.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupSessionJournal.InternalErrors and conformance GroupSessionJournal.InternalErrors()
{
  result = lazy protocol witness table cache variable for type GroupSessionJournal.InternalErrors and conformance GroupSessionJournal.InternalErrors;
  if (!lazy protocol witness table cache variable for type GroupSessionJournal.InternalErrors and conformance GroupSessionJournal.InternalErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionJournal.InternalErrors and conformance GroupSessionJournal.InternalErrors);
  }

  return result;
}

void type metadata completion function for GroupSessionJournal(uint64_t a1)
{
  type metadata accessor for Published<[GroupSessionJournal.Attachment]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[GroupSessionJournal.Attachment]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[GroupSessionJournal.Attachment]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15GroupActivities0A14SessionJournalC10AttachmentVGMd, &_sSay15GroupActivities0A14SessionJournalC10AttachmentVGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[GroupSessionJournal.Attachment]>);
    }
  }
}

uint64_t type metadata completion function for GroupSessionJournal.Attachment(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for GroupSessionJournal.Attachment.AttachmentSource(uint64_t a1)
{
  type metadata accessor for (attachmentData: URL, developerMetadata: Data?)(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (attachmentData: URL, developerMetadata: Data?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (attachmentData: URL, developerMetadata: Data?))
  {
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (attachmentData: URL, developerMetadata: Data?));
    }
  }
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t closure #2 in _PublisherElements.Iterator.next()specialized partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return specialized closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return specialized closure #2 in _PublisherElements.Iterator.next()(a1, v4);
}

uint64_t outlined assign with take of _PublisherElements<AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never>>.Iterator.Inner.State(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t specialized GroupSessionProvider.uuid.getter()
{
  (*(*v0 + 176))();
  static SharableObjectIdentifier.identifier<A, B>(ofType:with:)();

  _s15GroupActivities0A15SessionProviderPAAE18providerIdentifierSSvgZAA07CKShareacD0CyAA21CollaborationActivityCG_Ttg5();

  MEMORY[0x1B27141F0]();

  type metadata accessor for UUID();
  static SharableObjectIdentifier.identifier<A>(ofType:with:)();
}

uint64_t _s15GroupActivities0A15SessionProviderPAAE18providerIdentifierSSvgZAA07CKShareacD0CyAA21CollaborationActivityCG_Ttg5()
{
  v0 = [objc_opt_self() processInfo];
  v1 = NSProcessInfo.stableAppIdentifier.getter();
  v3 = v2;

  if (v3)
  {
    goto LABEL_4;
  }

  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_4:
    MEMORY[0x1B27141F0](46, 0xE100000000000000);
    MEMORY[0x1B27141F0](0xD000000000000032, 0x80000001AF01C230);
    return v1;
  }

  _StringGuts.grow(_:)(147);
  MEMORY[0x1B27141F0](0xD000000000000090, 0x80000001AF01B4C0);
  MEMORY[0x1B27141F0](0xD000000000000032, 0x80000001AF01C230);
  MEMORY[0x1B27141F0](46, 0xE100000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized GroupSessionProvider.join()()
{
  *(v1 + 72) = v0;
  return MEMORY[0x1EEE6DFA0](specialized GroupSessionProvider.join(), 0, 0);
}

{
  result = swift_conformsToProtocol2();
  if (result)
  {
    v2 = result;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for GroupSessionProviderTestingOverrides(0);
    __swift_project_value_buffer(v3, static GroupSessionProviderTestingOverrides.default);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
    Testable.wrappedValue.getter();
    v4 = v0[5];
    if (v4)
    {
      v5 = v0[6];
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v4 = static BackgroundGroupSessionManager.shared;

      v5 = &protocol witness table for BackgroundGroupSessionManager;
    }

    v0[10] = v4;
    ObjectType = swift_getObjectType();
    v9 = (v5[3] + *v5[3]);
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = specialized GroupSessionProvider.join();
    v8 = v0[9];

    return v9(v8, v2, ObjectType, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = specialized GroupSessionProvider.join();
  }

  else
  {
    v2 = specialized GroupSessionProvider.join();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Successfully started tracking GroupSessionProvider on join()", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = v0[9];

  (*(*v5 + 200))();
  v0[8] = 1;
  CurrentValueSubject.send(_:)();

  v6 = v0[1];

  return v6();
}

{
  swift_unknownObjectRelease();
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Failed to start tracking GroupSessionProvider on join()", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = *(v0 + 96);
  v6 = *(v0 + 72);

  (*(*v6 + 200))();
  *(v0 + 56) = v5;
  v7 = v5;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 56));
  swift_willThrow();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t specialized GroupSessionProvider.leave()()
{
  v1[9] = v0;
  v2 = type metadata accessor for UUID();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized GroupSessionProvider.leave(), 0, 0);
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for GroupSessionProviderTestingOverrides(0);
  __swift_project_value_buffer(v1, static GroupSessionProviderTestingOverrides.default);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMd, &_s14CopresenceCore8TestableVy15GroupActivities0D22SessionServiceProvider_pSgGMR);
  Testable.wrappedValue.getter();
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v2 = static BackgroundGroupSessionManager.shared;

    v3 = &protocol witness table for BackgroundGroupSessionManager;
  }

  v0[13] = v2;
  ObjectType = swift_getObjectType();
  specialized GroupSessionProvider.uuid.getter();
  v8 = (v3[4] + *v3[4]);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = specialized GroupSessionProvider.leave();
  v6 = v0[12];

  return v8(v6, ObjectType, v3);
}

{
  v2 = *v1;
  *(*v1 + 120) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  swift_unknownObjectRelease();
  if (v0)
  {
    v3 = specialized GroupSessionProvider.leave();
  }

  else
  {
    v3 = specialized GroupSessionProvider.leave();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Successfully left GroupSessionProvider", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = v0[9];

  (*(*v5 + 200))();
  v0[8] = 0;
  CurrentValueSubject.send(_:)();

  v6 = v0[1];

  return v6();
}

{
  if (one-time initialization token for groupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupSessionProvider);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Failed to leave GroupSessionProvider", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = *(v0 + 120);
  v6 = *(v0 + 72);

  (*(*v6 + 200))();
  *(v0 + 56) = v5;
  v7 = v5;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 56));
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t CollaborationActivity.activate()()
{
  *(v1 + 32) = v0;
  return MEMORY[0x1EEE6DFA0](CollaborationActivity.activate(), 0, 0);
}

{
  v1 = v0[4];
  v2 = *(*v1 + 136);
  v3 = (*v1 + 136) & 0xFFFFFFFFFFFFLL | 0x51B000000000000;
  v0[5] = v2;
  v0[6] = v3;
  if (v2())
  {

    v5 = (v0[5])(v4);
    v0[12] = v5;
    if (v5)
    {
      v6 = swift_task_alloc();
      v0[13] = v6;
      *v6 = v0;
      v6[1] = CollaborationActivity.activate();

      return specialized GroupSessionProvider.join()();
    }

    else
    {
      v11 = v0[1];

      return v11();
    }
  }

  else
  {
    v8 = v0[4];
    v0[7] = v8[2];
    v0[8] = v8[3];
    v9 = *(*v8 + 128);

    v12 = (v9 + *v9);
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = CollaborationActivity.activate();

    return v12();
  }
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  v6 = [objc_opt_self() defaultContainer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities07CKShareA15SessionProviderCyAA21CollaborationActivityCGMd, &_s15GroupActivities07CKShareA15SessionProviderCyAA21CollaborationActivityCGMR);
  swift_allocObject();

  v7 = specialized CKShareGroupSessionProvider.init(id:activity:share:container:)(v4, v3, v5, v1, v6);
  if (v2)
  {
    v8 = *(v0 + 8);
LABEL_3:

    return v8(0);
  }

  v10 = (*(**(v0 + 32) + 144))(v7);
  v11 = (*(v0 + 40))(v10);
  *(v0 + 96) = v11;
  if (!v11)
  {
    v8 = *(v0 + 8);
    goto LABEL_3;
  }

  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *v12 = v0;
  v12[1] = CollaborationActivity.activate();

  return specialized GroupSessionProvider.join()();
}

{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = CollaborationActivity.activate();
  }

  else
  {
    v2 = CollaborationActivity.activate();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96) != 0;

  return v1(v2);
}

{
  v20 = v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.ckShareGroupSessionProvider);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315394;
    v0[2] = v7;
    type metadata accessor for CollaborationActivity(0);

    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[3] = v6;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v19);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to active activity %s, error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  swift_willThrow();

  v17 = v0[1];

  return v17(0);
}

uint64_t CollaborationActivity.activate()(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 88) = a1;

    return MEMORY[0x1EEE6DFA0](CollaborationActivity.activate(), 0, 0);
  }
}

void *specialized IdentifiableGroupActivity.uuid.getter()
{
  type metadata accessor for UUID();
  return static SharableObjectIdentifier.identifier<A, B>(ofType:with:)();
}

{
  type metadata accessor for UUID();
  return static SharableObjectIdentifier.identifier<A, B>(ofType:with:)();
}

char *specialized CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v66 = a3;
  v6 = v5;
  v67 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMd, &_sScS12ContinuationV15BufferingPolicyOyyyYaYbc__GMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v63 - v15;
  v68[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities0E20SessionProviderStateOs5NeverOGMR);
  swift_allocObject();
  *(v5 + 4) = CurrentValueSubject.init(_:)();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v68[0] = static PresenceSessionInfo.default;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  swift_allocObject();

  *(v5 + 12) = CurrentValueSubject.init(_:)();
  static TaskPriority.userInitiated.getter();
  v17 = type metadata accessor for TaskPriority();
  v18 = *(v17 - 8);
  v64 = *(v18 + 56);
  v65 = v17;
  v63[1] = v18 + 56;
  (v64)(v16, 0, 1);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8650], v10);
  AsyncSerialQueue.init(priority:bufferingPolicy:)();
  *&v5[*(*v5 + 168)] = MEMORY[0x1E69E7CD0];
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  *(v5 + 6) = v66;
  v19 = [a4 containerID];
  v20 = v19;
  if (!v19)
  {
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Log.ckShareGroupSessionProvider);
    v54 = a4;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_18;
    }

    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v68[0] = v47;
    *v46 = 136315138;
    v69 = v54;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v55 = v54;
    v56 = String.init<A>(reflecting:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v68);

    *(v46 + 4) = v58;
    v52 = "Share %s doesn't have a containerID";
    goto LABEL_17;
  }

  v68[0] = CKShare.members.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
  swift_allocObject();
  *(v5 + 5) = CurrentValueSubject.init(_:)();
  v21 = [a4 currentUserParticipant];
  if (v21)
  {
    v22 = v21;
    v23 = CKShareParticipant.handle.getter();

    if (v23)
    {
      v24 = [v23 normalizedValue];
      if (!v24)
      {
        v24 = [v23 value];
      }

      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v23;
      v27 = v26;
      v29 = v28;

      v30 = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
      *(v6 + 7) = v27;
      *(v6 + 8) = v29;
      *(v6 + 10) = &type metadata for AddressableMember;
      *(v6 + 11) = v30;
      v31 = v67;
      *&v6[*(*v6 + 152)] = v67;
      swift_beginAccess();
      v69 = a4;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      v63[0] = a4;
      v67 = v31;
      Published.init(initialValue:)();
      swift_endAccess();
      v32 = v64;
      v33 = v65;
      v64(v16, 1, 1, v65);
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = v6;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), v34);
      swift_beginAccess();
      type metadata accessor for AnyCancellable();
      swift_allocObject();

      v35 = AnyCancellable.init(_:)();
      specialized Set._Variant.insert(_:)(&v69, v35);

      swift_endAccess();

      v32(v16, 1, 1, v33);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v37 = v63[0];
      v36[4] = v6;
      v36[5] = v37;
      v38 = v67;
      v36[6] = v67;
      v39 = v37;
      v40 = v38;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:), v36);
      swift_beginAccess();
      swift_allocObject();

      v41 = AnyCancellable.init(_:)();
      specialized Set._Variant.insert(_:)(&v69, v41);

      swift_endAccess();

      return v6;
    }
  }

  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Log.ckShareGroupSessionProvider);
  v43 = a4;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v68[0] = v47;
    *v46 = 136315138;
    v69 = v43;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v48 = v43;
    v49 = String.init<A>(reflecting:)();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v68);

    *(v46 + 4) = v51;
    v52 = "Share %s doesn't have a currentUserParticipant";
LABEL_17:
    _os_log_impl(&dword_1AEE80000, v44, v45, v52, v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x1B2715BA0](v47, -1, -1);
    MEMORY[0x1B2715BA0](v46, -1, -1);
  }

LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities07CKShareA15SessionProviderC6ErrorsOyAA21CollaborationActivityC_GMd, &_s15GroupActivities07CKShareA15SessionProviderC6ErrorsOyAA21CollaborationActivityC_GMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CKShareGroupSessionProvider<CollaborationActivity>.Errors and conformance CKShareGroupSessionProvider<A>.Errors, &_s15GroupActivities07CKShareA15SessionProviderC6ErrorsOyAA21CollaborationActivityC_GMd, &_s15GroupActivities07CKShareA15SessionProviderC6ErrorsOyAA21CollaborationActivityC_GMR, &protocol conformance descriptor for CKShareGroupSessionProvider<A>.Errors);
  swift_allocError();
  *v59 = 0;
  swift_willThrow();

  if (v20)
  {
  }

  v60 = *(*v6 + 144);
  v61 = type metadata accessor for AsyncSerialQueue();
  (*(*(v61 - 8) + 8))(&v6[v60], v61);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities07CKShareA15SessionProviderCyAA21CollaborationActivityCGMd, &_s15GroupActivities07CKShareA15SessionProviderCyAA21CollaborationActivityCGMR);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo7CKShareC_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySo7CKShareC_GGMR);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySo7CKShareC_G_GMR);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
}

uint64_t specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  (*(**(v0 + 32) + 344))();
  v7 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<CKShare>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMd, &_s7Combine9PublishedV9PublisherVySo7CKShareC_GMR, MEMORY[0x1E695C068]);
  MEMORY[0x1B2713ED0](v3, v7);
  (*(v2 + 8))(v1, v3);
  AsyncPublisher.makeAsyncIterator()();
  (*(v6 + 8))(v4, v5);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:);

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5(0, 0);
}

{
  v34 = v0;
  v1 = v0[15];
  if (v1)
  {
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.ckShareGroupSessionProvider);

    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[4];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v33 = v9;
      *v8 = 136315394;
      v10 = (*(*v7 + 408))();
      v12 = v11;

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v33);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      v0[3] = v3;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      v14 = v3;
      v15 = String.init<A>(reflecting:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v33);

      *(v8 + 14) = v17;
      _os_log_impl(&dword_1AEE80000, v4, v5, "%s Saw an updated CKShare: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    else
    {
    }

    (*(*v0[4] + 224))(v18);
    v0[2] = CKShare.members.getter();
    CurrentValueSubject.send(_:)();

    v30 = swift_task_alloc();
    v0[14] = v30;
    *v30 = v0;
    v30[1] = specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:);

    return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF7Combine14AsyncPublisherV8IteratorVyAI9PublishedV0G0VySo7CKShareC_G_G_Tg5(0, 0);
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.ckShareGroupSessionProvider);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[4];
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      v26 = (*(*v23 + 408))();
      v28 = v27;

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v33);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1AEE80000, v20, v21, "%s Stopped listening for updated CKShares", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B2715BA0](v25, -1, -1);
      MEMORY[0x1B2715BA0](v24, -1, -1);
    }

    else
    {
    }

    v32 = v0[1];

    return v32();
  }
}

uint64_t specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  *(*v2 + 120) = a1;

  if (!v1)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
  }

  return result;
}

uint64_t specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for AsyncSerialQueue();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySo7CKShareCs5Error_pGMd, &_sScsySo7CKShareCs5Error_pGMR);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVySo7CKShareCs5Error_p_GMd, &_sScs8IteratorVySo7CKShareCs5Error_p_GMR);
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:), 0, 0);
}

uint64_t specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v35 = v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v3, static Log.ckShareGroupSessionProvider);

  v4 = v2;
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[9];
    v33 = v0[10];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315650;
    v12 = (*(*v9 + 408))();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v34);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v0[6] = v8;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
    v16 = v8;
    v17 = String.init<A>(reflecting:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v34);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2080;
    v0[7] = v33;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKContainer, 0x1E695B888);
    v20 = v33;
    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v34);

    *(v10 + 24) = v23;
    _os_log_impl(&dword_1AEE80000, v6, v7, "%s Starting task to listen for CKShare updates on share: %s, container: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  else
  {
    v9 = v0[8];
  }

  v0[21] = v9;
  v25 = v0[15];
  v24 = v0[16];
  v26 = v0[14];
  v27 = v0[9];
  v28 = v0[10];
  type metadata accessor for ShareChangeObserver();
  swift_allocObject();
  v29 = ShareChangeObserver.init(share:container:)(v27, v28);
  v0[22] = v29;
  (*(*v29 + 128))();
  MEMORY[0x1B27145A0](v26);
  (*(v25 + 8))(v24, v26);
  v30 = swift_task_alloc();
  v0[23] = v30;
  *v30 = v0;
  v30[1] = specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  v31 = v0[17];

  return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v31, v0 + 3);
}

{

  if (v0)
  {
    v1 = closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  }

  else
  {
    v1 = specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

{
  v33 = v0;
  v1 = v0[2];
  if (v1)
  {

    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[8];
      v6 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v6 = 136315650;
      v7 = (*(*v5 + 408))();
      v9 = v8;

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v32);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      v0[4] = v2;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShare, 0x1E695BAC8);
      v11 = v2;
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v32);

      *(v6 + 14) = v14;
      *(v6 + 22) = 2080;
      v15 = [v11 participants];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKShareParticipant, 0x1E695BAD8);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v0[5] = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18CKShareParticipantCGMd, &_sSaySo18CKShareParticipantCGMR);
      v17 = String.init<A>(reflecting:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v32);

      *(v6 + 24) = v19;
      _os_log_impl(&dword_1AEE80000, v3, v4, "%s Saw share %s updated with participants: %s", v6, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v31, -1, -1);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    else
    {
    }

    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[11];
    v26 = v0[8];
    (*(*v26 + 272))(v20);
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v2;

    v28 = v2;
    AsyncSerialQueue.perform(_:)();

    (*(v24 + 8))(v23, v25);
    v29 = swift_task_alloc();
    v0[23] = v29;
    *v29 = v0;
    v29[1] = specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:);
    v30 = v0[17];

    return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v30, v0 + 3);
  }

  else
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v21 = v0[1];

    return v21();
  }
}

uint64_t CollaborationActivity.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CollaborationActivity.fetchShare.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare);

  return v1;
}

uint64_t CollaborationActivity.share.getter()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](CollaborationActivity.share.getter, 0, 0);
}

{
  v3 = (*(*(v0 + 16) + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare) + **(*(v0 + 16) + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = CollaborationActivity.share.getter;

  return v3();
}

uint64_t CollaborationActivity.share.getter(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

double CollaborationActivity.groupSessionProvider.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t CollaborationActivity.groupSessionProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t CollaborationActivity.__allocating_init(id:metadata:container:fetchShare:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager;
  if (one-time initialization token for shared != -1)
  {
    v17 = v12;
    swift_once();
    v12 = v17;
  }

  *(v12 + v13) = static BackgroundGroupSessionManager.shared;
  *(v12 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider) = 0;
  v14 = v12;
  outlined init with take of GroupActivityMetadata(a3, v12 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);
  *(v14 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_container) = a4;
  v15 = (v14 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare);
  *v15 = a5;
  v15[1] = a6;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  return v14;
}

uint64_t CollaborationActivity.init(id:metadata:container:fetchShare:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v6 + v13) = static BackgroundGroupSessionManager.shared;
  *(v6 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider) = 0;
  outlined init with take of GroupActivityMetadata(a3, v6 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);
  *(v6 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_container) = a4;
  v14 = (v6 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare);
  *v14 = a5;
  v14[1] = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  return v6;
}

uint64_t CollaborationActivity.__allocating_init(id:metadata:share:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  CollaborationActivity.init(id:metadata:share:)(a1, a2, a3, a4);
  return v8;
}

id CollaborationActivity.init(id:metadata:share:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v4 + v9) = static BackgroundGroupSessionManager.shared;
  *(v4 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider) = 0;

  result = [a4 containerID];
  if (result)
  {
    v11 = result;
    v12 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID_];

    outlined init with take of GroupActivityMetadata(a3, v4 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);
    *(v4 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_container) = v12;
    v13 = swift_allocObject();
    *(v13 + 16) = a4;
    v14 = (v4 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare);
    *v14 = &async function pointer to partial apply for closure #1 in CollaborationActivity.init(id:metadata:share:);
    v14[1] = v13;
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in CollaborationActivity.init(id:metadata:share:)(void *a1)
{
  v4 = *(v1 + 8);
  v2 = a1;

  return v4(v2);
}

uint64_t CollaborationActivity.updateShare(_:)()
{
  v1[2] = v0;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](CollaborationActivity.updateShare(_:), 0, 0);
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager);
  specialized IdentifiableGroupActivity.uuid.getter();

  return MEMORY[0x1EEE6DFA0](CollaborationActivity.updateShare(_:), v1, 0);
}

{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  specialized BackgroundGroupSessionManager.updateShare(_:activityID:)();
  v0[6] = 0;
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Int CollaborationActivity.CollaborationActivityError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

uint64_t CollaborationActivity.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 25705;
  }

  return 0x656E6961746E6F63;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CollaborationActivity.CodingKeys()
{
  v1 = 25705;
  if (*v0 != 1)
  {
    v1 = 0x656E6961746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CollaborationActivity.CodingKeys@<X0>(uint64_t a1@<X0>, GroupActivities::CollaborationActivity::CodingKeys_optional *a2@<X8>, uint64_t a3@<X1>)
{
  result = specialized CollaborationActivity.CodingKeys.init(stringValue:)(a1, a3);
  a2->value = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CollaborationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CollaborationActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CollaborationActivity.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  CollaborationActivity.init(from:)(a1);
  return v2;
}

void *CollaborationActivity.init(from:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for GroupActivityMetadata(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities21CollaborationActivityC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities21CollaborationActivityC10CodingKeysOGMR);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager;
  if (one-time initialization token for shared != -1)
  {
    v24 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_sessionManager;
    swift_once();
    v11 = v24;
  }

  v27 = v11;
  v28 = a1;
  *(v3 + v11) = static BackgroundGroupSessionManager.shared;
  *(v3 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_groupSessionProvider) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys();

  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v29) = 0;
    lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(&lazy protocol witness table cache variable for type GroupActivityMetadata and conformance GroupActivityMetadata, type metadata accessor for GroupActivityMetadata, &protocol conformance descriptor for GroupActivityMetadata);
    v13 = v26;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata;
    outlined init with take of GroupActivityMetadata(v7, v3 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);
    LOBYTE(v29) = 1;
    *(v3 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 24) = v17;
    v31 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CKContainerSetupInfo, 0x1E695B8B8);
    v18 = v29;
    v19 = v30;
    v20 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    outlined consume of Data._Representation(v18, v19);
    if (v20)
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerSetupInfo_];

      (*(v25 + 8))(v10, v13);
      *(v3 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_container) = v21;
      v22 = (v3 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_fetchShare);
      *v22 = &async function pointer to closure #1 in CollaborationActivity.init(from:);
      v22[1] = 0;
      v14 = v28;
      goto LABEL_6;
    }

    lazy protocol witness table accessor for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
    (*(v25 + 8))(v10, v13);

    outlined destroy of GroupActivityMetadata(v3 + v16);
  }

  v12 = v28;

  type metadata accessor for CollaborationActivity(0);
  swift_deallocPartialClassInstance();
  v14 = v12;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v3;
}

uint64_t closure #1 in CollaborationActivity.init(from:)(uint64_t a1)
{
  lazy protocol witness table accessor for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError();
  swift_allocError();
  *v2 = 0;
  swift_willThrow();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t CollaborationActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v21 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities21CollaborationActivityC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities21CollaborationActivityC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  type metadata accessor for GroupActivityMetadata(0);
  lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(&lazy protocol witness table cache variable for type GroupActivityMetadata and conformance GroupActivityMetadata, type metadata accessor for GroupActivityMetadata, &protocol conformance descriptor for GroupActivityMetadata);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = objc_opt_self();
    v11 = [*(v3 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_container) setupInfo];
    v19 = 0;
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v19];

    v13 = v19;
    if (v12)
    {
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v19 = v14;
      v20 = v16;
      v18[7] = 2;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      outlined consume of Data._Representation(v19, v20);
    }

    else
    {
      v17 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CollaborationActivity.deactivate()()
{
  *(v1 + 32) = v0;
  return MEMORY[0x1EEE6DFA0](CollaborationActivity.deactivate(), 0, 0);
}

{
  v1 = (*(**(v0 + 32) + 136))();
  *(v0 + 40) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = CollaborationActivity.deactivate();

    return specialized GroupSessionProvider.leave()();
  }

  else
  {
    if (one-time initialization token for ckShareGroupSessionProvider != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.ckShareGroupSessionProvider);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1AEE80000, v5, v6, "deactivate called on legacy API, but activate() was never called.", v7, 2u);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = CollaborationActivity.deactivate();
  }

  else
  {
    v2 = CollaborationActivity.deactivate();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v20 = v0;
  if (one-time initialization token for ckShareGroupSessionProvider != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.ckShareGroupSessionProvider);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315394;
    v0[2] = v7;
    type metadata accessor for CollaborationActivity(0);

    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[3] = v6;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v19);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to leave activity %s, error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t CollaborationActivity.deinit()
{

  outlined destroy of GroupActivityMetadata(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);

  return v0;
}

uint64_t CollaborationActivity.__deallocating_deinit()
{

  outlined destroy of GroupActivityMetadata(v0 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CollaborationGroupActivity.share.getter in conformance CollaborationActivity()
{
  v4 = (*(**v0 + 128) + **(**v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for CollaborationGroupActivity.share.getter in conformance CollaborationActivity;

  return v4();
}

uint64_t protocol witness for CollaborationGroupActivity.share.getter in conformance CollaborationActivity(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance CollaborationActivity(uint64_t a1)
{
  outlined init with copy of GroupActivityMetadata(*v1 + OBJC_IVAR____TtC15GroupActivities21CollaborationActivity_metadata, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t protocol witness for Identifiable.id.getter in conformance CollaborationActivity@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t protocol witness for Decodable.init(from:) in conformance CollaborationActivity@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t static CollaborationActivity.== infix(_:_:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  specialized IdentifiableGroupActivity.uuid.getter();
  specialized IdentifiableGroupActivity.uuid.getter();
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CollaborationActivity()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  specialized IdentifiableGroupActivity.uuid.getter();
  specialized IdentifiableGroupActivity.uuid.getter();
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t CKUserIdentity.loggingIdentity.getter()
{
  v1 = [v0 lookupInfo];
  if (!v1)
  {
    return 0x6E776F6E6B6E75;
  }

  v2 = v1;
  v3 = [v1 emailAddress];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v2 phoneNumber];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (!v7)
    {
      if (v12)
      {

        return v10;
      }

      goto LABEL_11;
    }

LABEL_10:

    return v5;
  }

  if (v7)
  {
    goto LABEL_10;
  }

LABEL_11:

  return 0x6E776F6E6B6E75;
}

uint64_t type metadata accessor for CollaborationActivity(uint64_t a1)
{
  result = type metadata singleton initialization cache for CollaborationActivity;
  if (!type metadata singleton initialization cache for CollaborationActivity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of GroupActivityMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GroupActivityMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in CollaborationActivity.init(id:metadata:share:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in CollaborationActivity.init(id:metadata:share:);

  return closure #1 in CollaborationActivity.init(id:metadata:share:)(v2);
}

uint64_t specialized CollaborationActivity.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xED00006F666E4972)
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

unint64_t lazy protocol witness table accessor for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CodingKeys and conformance CollaborationActivity.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of GroupActivityMetadata(uint64_t a1)
{
  v2 = type metadata accessor for GroupActivityMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError()
{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError;
  if (!lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollaborationActivity.CollaborationActivityError and conformance CollaborationActivity.CollaborationActivityError);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for CollaborationActivity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(&lazy protocol witness table cache variable for type CollaborationActivity and conformance CollaborationActivity, type metadata accessor for CollaborationActivity, &protocol conformance descriptor for CollaborationActivity);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CollaborationActivity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for CollaborationActivity(a1, a2, a3, &lazy protocol witness table cache variable for type CollaborationActivity and conformance CollaborationActivity, &protocol conformance descriptor for CollaborationActivity, &lazy protocol witness table cache variable for type CollaborationActivity and conformance CollaborationActivity, &protocol conformance descriptor for CollaborationActivity);
}

{
  return instantiation function for generic protocol witness table for CollaborationActivity(a1, a2, a3, &lazy protocol witness table cache variable for type CollaborationActivity and conformance CollaborationActivity, &protocol conformance descriptor for CollaborationActivity, &lazy protocol witness table cache variable for type CollaborationActivity and conformance CollaborationActivity, &protocol conformance descriptor for CollaborationActivity);
}

uint64_t instantiation function for generic protocol witness table for CollaborationActivity(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  *(a1 + 8) = lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(a4, type metadata accessor for CollaborationActivity, a5);
  result = lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(a6, type metadata accessor for CollaborationActivity, a7);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type GroupActivityMetadata and conformance GroupActivityMetadata(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of CollaborationGroupActivity.share.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v7(a1, a2);
}

uint64_t type metadata completion function for CollaborationActivity(uint64_t a1)
{
  result = type metadata accessor for GroupActivityMetadata(319);
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

uint64_t dispatch thunk of CollaborationActivity.share.getter()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in CollaborationActivity.init(id:metadata:share:);

  return v4();
}

uint64_t dispatch thunk of CollaborationActivity.updateShare(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6(a1);
}

uint64_t dispatch thunk of CollaborationActivity.deactivate()()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v4();
}

uint64_t partial apply for specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return specialized closure #1 in CKShareGroupSessionProvider.init(id:activity:share:container:)(a1, v4, v5, v6);
}

uint64_t partial apply for specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return specialized closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for specialized closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #2 in CKShareGroupSessionProvider.init(id:activity:share:container:)(v2, v3);
}

uint64_t one-time initialization function for _groupActivity()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v3, static UTType._groupActivity);
  __swift_project_value_buffer(v3, static UTType._groupActivity);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t static UTType._groupActivity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _groupActivity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for UTType();
  v3 = __swift_project_value_buffer(v2, static UTType._groupActivity);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void NSItemProvider.registerGroupActivity<A>(preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.default);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v26 = a1;
    v13 = a4;
    v14 = v5;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    v17 = _typeName(_:qualified:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1AEE80000, v11, v12, "Async registerGroupActivity called for type %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1B2715BA0](v16, -1, -1);
    v20 = v15;
    v5 = v14;
    a4 = v13;
    a1 = v26;
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  if (one-time initialization token for _groupActivity != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for UTType();
  __swift_project_value_buffer(v21, static UTType._groupActivity);
  v22 = UTType.identifier.getter();
  v23 = MEMORY[0x1B2714130](v22);

  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a1;
  v24[5] = a2;
  aBlock[4] = partial apply for closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?, @unowned @thick Swift.AnyObject.Type?, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_8;
  v25 = _Block_copy(aBlock);

  [v5 registerItemForTypeIdentifier:v23 loadHandler:v25];
  _Block_release(v25);
}

uint64_t closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v20 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a1;
  v18[9] = a2;

  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(a1, a2);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:), v18);
}

uint64_t closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v17;
  v8[4] = a6;
  v8[5] = a7;
  v11 = *(type metadata accessor for AnyGroupActivity(0) - 8);
  v8[8] = v11;
  v8[9] = *(v11 + 64);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v8[12] = *(a8 - 8);
  v12 = swift_task_alloc();
  v8[13] = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[14] = v13;
  *v13 = v8;
  v13[1] = closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:);

  return v15(v12);
}

uint64_t closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:);
  }

  else
  {
    v2 = closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v32 = v0;
  v1 = *(v0 + 120);
  GroupActivity.eraseToAnyGroupActivity()(*(v0 + 48), *(v0 + 56), *(v0 + 88));
  if (v1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 48));
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.default);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31[0] = v7;
      *v6 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v31);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      *(v0 + 16) = v1;
      v11 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v31);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_1AEE80000, v4, v5, "Activity conversion failed for type %s, error: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v7, -1, -1);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    v15 = *(v0 + 32);
    if (v15)
    {
      v16 = v1;
      v15(0, v1);
    }
  }

  else
  {
    v17 = *(v0 + 96);
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);
    v20 = *(v0 + 64);
    v21 = *(v0 + 40);
    v29 = *(v0 + 48);
    v30 = *(v0 + 104);
    v22 = *(v0 + 32);
    outlined init with copy of AnyGroupActivity(v19, v18);
    v23 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v24 = swift_allocObject();
    outlined init with take of AnyGroupActivity(v18, v24 + v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
    swift_allocObject();
    *(v0 + 24) = Future.init(_:)();
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v21;
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = v21;
    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v22, v21);
    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v22, v21);
    lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>();
    Publisher.sinkOnce(_:onError:)();

    outlined destroy of AnyGroupActivity(v19);
    (*(v17 + 8))(v30, v29);
  }

  v27 = *(v0 + 8);

  return v27();
}

{
  v20 = v0;
  v1 = v0[15];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v19);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v0[2] = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Activity conversion failed for type %s, error: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v15 = v0[4];
  if (v15)
  {
    v16 = v1;
    v15(0, v1);
  }

  v17 = v0[1];

  return v17();
}

void closure #2 in closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)(void **a1, void (*a2)(void, void *))
{
  v3 = *a1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Failed to convert from AnyGroupActivity to TUConversationActivity, error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  if (a2)
  {
    a2(0, v3);
  }
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSecureCoding?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void NSItemProvider.registerGroupActivity<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  v10 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v43 = v12;
  v44 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - v13;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);
  v16 = *(v10 + 16);
  v16(v14, a1, a2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v42 = v16;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v38 = a1;
    v21 = v20;
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v21 = 136315138;
    v16(v9, v14, a2);
    (*(v10 + 56))(v9, 0, 1, a2);
    v22 = >> prefix<A>(_:)(v9, a2);
    v39 = a3;
    v23 = v22;
    v25 = v24;
    (*(v40 + 8))(v9, v41);
    (*(v10 + 8))(v14, a2);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, aBlock);

    *(v21 + 4) = v26;
    a3 = v39;
    _os_log_impl(&dword_1AEE80000, v17, v18, "Synchronous registerGroupActivity called for activity %s", v21, 0xCu);
    v27 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1B2715BA0](v27, -1, -1);
    v28 = v21;
    a1 = v38;
    MEMORY[0x1B2715BA0](v28, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, a2);
  }

  if (one-time initialization token for _groupActivity != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for UTType();
  __swift_project_value_buffer(v29, static UTType._groupActivity);
  v30 = UTType.identifier.getter();
  v31 = MEMORY[0x1B2714130](v30);

  v32 = v44;
  v42(v44, a1, a2);
  v33 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  *(v34 + 24) = a3;
  (*(v10 + 32))(v34 + v33, v32, a2);
  aBlock[4] = partial apply for closure #1 in NSItemProvider.registerGroupActivity<A>(_:);
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?, @unowned @thick Swift.AnyObject.Type?, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_6_0;
  v35 = _Block_copy(aBlock);

  [v45 registerItemForTypeIdentifier:v31 loadHandler:v35];
  _Block_release(v35);
}

uint64_t closure #1 in NSItemProvider.registerGroupActivity<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v28 = a2;
  v9 = type metadata accessor for Optional();
  v26[3] = *(v9 - 8);
  v26[4] = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v26[2] = v26 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v12 = type metadata accessor for AnyGroupActivity(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - v17;
  GroupActivity.eraseToAnyGroupActivity()(a6, a7, (v26 - v17));
  outlined init with copy of AnyGroupActivity(v18, v16);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = swift_allocObject();
  outlined init with take of AnyGroupActivity(v16, v20 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
  swift_allocObject();
  v29 = Future.init(_:)();
  v21 = swift_allocObject();
  v23 = v27;
  v22 = v28;
  *(v21 + 16) = v27;
  *(v21 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v23, v22);
  outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v23, v22);
  lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>();
  Publisher.sinkOnce(_:onError:)();

  return outlined destroy of AnyGroupActivity(v18);
}

id NSItemProvider.loadGroupActivity(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() progressWithTotalUnitCount_];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;
  v10[7] = v8;

  v11 = v2;
  v12 = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in NSItemProvider.loadGroupActivity(completionHandler:), v10);

  return v12;
}

uint64_t closure #1 in NSItemProvider.loadGroupActivity(completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in NSItemProvider.loadGroupActivity(completionHandler:), 0, 0);
}

uint64_t closure #1 in NSItemProvider.loadGroupActivity(completionHandler:)()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = type metadata accessor for TUConversationActivity();
  *v3 = v0;
  v3[1] = closure #1 in NSItemProvider.loadGroupActivity(completionHandler:);

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001AF01C2B0, closure #1 in NSItemProvider.loadGroupActivity()partial apply, v2, v4);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = closure #1 in NSItemProvider.loadGroupActivity(completionHandler:);
  }

  else
  {

    v2 = closure #1 in NSItemProvider.loadGroupActivity(completionHandler:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v23 = v0;
  v1 = *(v0 + 96);
  AnyGroupActivity.init(tuConversationActivity:)(*(v0 + 16), *(v0 + 72));
  if (v1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.default);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v22 = v7;
      *v6 = 136315138;
      *(v0 + 24) = v1;
      v8 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v9 = String.init<A>(reflecting:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v22);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to load GroupActivity, error %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B2715BA0](v7, -1, -1);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    v12 = *(v0 + 64);
    v13 = *(v0 + 32);
    v14 = type metadata accessor for AnyGroupActivity(0);
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = v1;
    v13(v12, v1);

    outlined destroy of AnyGroupActivity?(v12);
  }

  else
  {
    v16 = *(v0 + 72);
    v17 = *(v0 + 56);
    v18 = *(v0 + 32);
    v19 = type metadata accessor for AnyGroupActivity(0);
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
    v18(v16, 0);
    outlined destroy of AnyGroupActivity?(v16);
    [v17 setCompletedUnitCount_];
  }

  v20 = *(v0 + 8);

  return v20();
}

{
  v19 = v0;

  v1 = v0[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v0[3] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Failed to load GroupActivity, error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v12 = v0[8];
  v13 = v0[4];
  v14 = type metadata accessor for AnyGroupActivity(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = v1;
  v13(v12, v1);

  outlined destroy of AnyGroupActivity?(v12);

  v16 = v0[1];

  return v16();
}

uint64_t NSItemProvider.loadGroupActivity()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](NSItemProvider.loadGroupActivity(), 0, 0);
}

uint64_t NSItemProvider.loadGroupActivity()()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = type metadata accessor for TUConversationActivity();
  *v3 = v0;
  v3[1] = NSItemProvider.loadGroupActivity();

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001AF01C2B0, partial apply for closure #1 in NSItemProvider.loadGroupActivity(), v2, v4);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = NSItemProvider.loadGroupActivity();
  }

  else
  {

    v2 = NSItemProvider.loadGroupActivity();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  AnyGroupActivity.init(tuConversationActivity:)(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](NSItemProvider.loadGroupActivity(), 0, 0);
}

{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
  *v3 = v0;
  v3[1] = NSItemProvider.loadGroupActivity();

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000013, 0x80000001AF01C2B0, partial apply for closure #1 in NSItemProvider.loadGroupActivity(), v2, v4);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = NSItemProvider.loadGroupActivity();
  }

  else
  {

    v2 = AnyGroupActivity.tuConversationActivity<A>(as:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in NSItemProvider.loadGroupActivity(completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return closure #1 in NSItemProvider.loadGroupActivity(completionHandler:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t outlined destroy of AnyGroupActivity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *partial apply for closure #2 in closure #1 in NSItemProvider.registerGroupActivity<A>(_:)(void *result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(0, *result);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(preparationHandler:)(a1, v5, v6, v7, v8, v10, v9, v4);
}

void *partial apply for closure #1 in closure #1 in NSItemProvider.registerGroupActivity<A>(_:)(void *result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(*result, 0);
  }

  return result;
}

uint64_t objectdestroy_19Tm_0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t CodingUserInfoKey.typedPayloadDecoderMap.unsafeMutableAddressor()
{
  if (one-time initialization token for typedPayloadDecoderMap != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CodingUserInfoKey();

  return __swift_project_value_buffer(v0, static CodingUserInfoKey.typedPayloadDecoderMap);
}

uint64_t one-time initialization function for typedPayloadDecoderMap()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static CodingUserInfoKey.typedPayloadDecoderMap);
  v4 = __swift_project_value_buffer(v3, static CodingUserInfoKey.typedPayloadDecoderMap);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.typedPayloadDecoderMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typedPayloadDecoderMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static CodingUserInfoKey.typedPayloadDecoderMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *TypedPayloadDecoder.decode(fromDecodingContainer:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    __break(1u);
  }

  else
  {
    a4[3] = a1;
    a4[4] = a2;
    a4[5] = a3;
    __swift_allocate_boxed_opaque_existential_1(a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMR);
    result = KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v4)
    {
      return __swift_deallocate_boxed_opaque_existential_2(a4);
    }
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B2715BA0);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type BroadcastOptions and conformance BroadcastOptions()
{
  result = lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions;
  if (!lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions;
  if (!lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions;
  if (!lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions;
  if (!lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BroadcastOptions and conformance BroadcastOptions);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

double AnySpatialTemplateRole.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    outlined init with take of Transferable(a1, v5);
    outlined init with take of Transferable(v5, v6);
    result = *v6;
    v4 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v4;
    *(a2 + 32) = v7;
  }

  else
  {
    outlined destroy of SpatialTemplateRole?(a1);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t outlined destroy of SpatialTemplateRole?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19SpatialTemplateRole_pSgMd, &_s15GroupActivities19SpatialTemplateRole_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int AnySpatialTemplateRole.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnySpatialTemplateRole()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnySpatialTemplateRole(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static AnySpatialTemplateRole.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Transferable(a1, v26);
  outlined init with copy of Transferable(a2, v23);
  v3 = v27;
  v4 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = v24;
  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = 0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v14 = __swift_project_boxed_opaque_existential_1(v26, v27);
  MEMORY[0x1EEE9AC00](v14);
  (*(v16 + 16))(v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  AnyHashable.init<A>(_:)();
  v17 = __swift_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x1EEE9AC00](v17);
  (*(v19 + 16))(v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  AnyHashable.init<A>(_:)();
  v13 = MEMORY[0x1B2714A90](v22, v21);
  outlined destroy of AnyHashable(v21);
  outlined destroy of AnyHashable(v22);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v13 & 1;
}

unint64_t lazy protocol witness table accessor for type AnySpatialTemplateRole and conformance AnySpatialTemplateRole()
{
  result = lazy protocol witness table cache variable for type AnySpatialTemplateRole and conformance AnySpatialTemplateRole;
  if (!lazy protocol witness table cache variable for type AnySpatialTemplateRole and conformance AnySpatialTemplateRole)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnySpatialTemplateRole and conformance AnySpatialTemplateRole);
  }

  return result;
}

uint64_t GroupSessionProviderObserver.groupSessionService.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*GroupSessionProviderObserver.groupSessionService.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PresenceGroupSessionProviderObserver.groupSessionService.modify;
}

double GroupSessionProviderObserver.membershipObserver.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t GroupSessionProviderObserver.membershipObserver.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t GroupSessionProviderObserver.unknownParticipants.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void *GroupSessionProviderObserver.__allocating_init(provider:groupSessionService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[3] = 0;
  swift_unknownObjectWeakInit();
  v8 = MEMORY[0x1E69E7CD0];
  v7[6] = 0;
  v7[7] = v8;
  v7[4] = a1;
  v7[5] = a2;
  swift_beginAccess();
  v7[3] = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v7;
}

void *GroupSessionProviderObserver.init(provider:groupSessionService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v8 = MEMORY[0x1E69E7CD0];
  v4[6] = 0;
  v4[7] = v8;
  v4[4] = a1;
  v4[5] = a2;
  swift_beginAccess();
  v4[3] = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v4;
}

Swift::Void __swiftcall GroupSessionProviderObserver.start()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v41 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v8;
  if (one-time initialization token for groupSessionProviderObserver != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.groupSessionProviderObserver);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v39 = v5;
    v13 = v4;
    v14 = v12;
    v15 = swift_slowAlloc();
    v44 = v15;
    *v14 = 136315138;
    v43 = *(v1 + 32);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v44);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1AEE80000, v10, v11, "ProviderObserver for %s started", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1B2715BA0](v15, -1, -1);
    v19 = v14;
    v4 = v13;
    v5 = v39;
    MEMORY[0x1B2715BA0](v19, -1, -1);
  }

  if ((*(*v1 + 136))())
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136315138;
      v43 = *(v1 + 32);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
      v24 = String.init<A>(reflecting:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v44);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1AEE80000, v20, v21, "ProviderObserver for %s already started.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B2715BA0](v23, -1, -1);
      MEMORY[0x1B2715BA0](v22, -1, -1);
    }
  }

  else
  {
    v27 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    *&v43 = (*(v27 + 72))(ObjectType, v27);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR);
    v30 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Set<AddressableMember>, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGMR, MEMORY[0x1E695BFB0]);
    v31 = v42;
    MEMORY[0x1B2713ED0](v29, v30);

    v32 = type metadata accessor for TaskPriority();
    v33 = v41;
    (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = v40;
    (*(v5 + 16))(v40, v31, v4);
    v36 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    (*(v5 + 32))(v37 + v36, v35, v4);
    *(v37 + ((v6 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
    v38 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #1 in GroupSessionProviderObserver.start(), v37);
    (*(*v1 + 144))(v38);
    (*(v5 + 8))(v42, v4);
  }
}

uint64_t closure #1 in GroupSessionProviderObserver.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = type metadata accessor for UUID();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMR);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in GroupSessionProviderObserver.start(), 0, 0);
}

uint64_t closure #1 in GroupSessionProviderObserver.start()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMR);
  AsyncPublisher.makeAsyncIterator()();
  swift_beginAccess();
  swift_beginAccess();
  v1 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Set<AddressableMember>, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = closure #1 in GroupSessionProviderObserver.start();
  v3 = *(v0 + 168);

  return MEMORY[0x1EEE6D8C8](v0 + 64, v3, v1);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = closure #1 in GroupSessionProviderObserver.start();
  }

  else
  {
    v2 = closure #1 in GroupSessionProviderObserver.start();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(v0 + 208) = *(v0 + 64);
  return MEMORY[0x1EEE6DFA0](closure #1 in GroupSessionProviderObserver.start(), 0, 0);
}

{
  v1 = v0[26];
  if (v1)
  {
    if (one-time initialization token for groupSessionProviderObserver != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    v0[27] = __swift_project_value_buffer(v2, static Log.groupSessionProviderObserver);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v0[12] = v6;
      *v5 = 136315394;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v0[14] = Strong;
        type metadata accessor for GroupSessionProviderObserver();
        v8 = String.init<A>(reflecting:)();
        v10 = v9;
      }

      else
      {
        v10 = 0xE300000000000000;
        v8 = 7104878;
      }

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v0 + 12);

      *(v5 + 4) = v11;
      *(v5 + 12) = 2080;
      v0[13] = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities17AddressableMemberVGMd, &_sShy15GroupActivities17AddressableMemberVGMR);
      v12 = String.init<A>(reflecting:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v0 + 12);

      *(v5 + 14) = v14;
      _os_log_impl(&dword_1AEE80000, v3, v4, "%s received updated members: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v6, -1, -1);
      MEMORY[0x1B2715BA0](v5, -1, -1);
    }

    v15 = swift_weakLoadStrong();
    v0[28] = v15;
    if (v15)
    {
      v16 = v15;
      v17 = (*(*v15 + 112))(v15);
      v0[29] = v17;
      if (v17)
      {
        v19 = v0[20];
        v0[30] = v18;
        v20 = v18;
        ObjectType = swift_getObjectType();
        v0[31] = ObjectType;
        v22 = *(v16 + 40);
        v23 = swift_getObjectType();
        GroupSessionProvider.uuid.getter(v23, v22, v19);
        v28 = (*(v20 + 40) + **(v20 + 40));
        v24 = swift_task_alloc();
        v0[32] = v24;
        *v24 = v0;
        v24[1] = closure #1 in GroupSessionProviderObserver.start();
        v25 = v0[20];

        return v28(v25, v1, ObjectType, v20);
      }

      (*(v0[22] + 8))(v0[23], v0[21]);
    }

    else
    {
      (*(v0[22] + 8))(v0[23], v0[21]);
    }
  }

  else
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
  }

  v27 = v0[1];

  return v27();
}

{
  *(v0 + 72) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  v2 = *v1;
  v2[33] = v0;

  v3 = v2[20];
  v4 = v2[18];
  v5 = v2[17];
  if (v0)
  {
    v6 = *(v4 + 8);
    v2[34] = v6;
    v2[35] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v5);

    v7 = closure #1 in GroupSessionProviderObserver.start();
  }

  else
  {

    (*(v4 + 8))(v3, v5);
    v7 = closure #1 in GroupSessionProviderObserver.start();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{

  swift_unknownObjectRelease();
  v1 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<Set<AddressableMember>, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOG_GMR, MEMORY[0x1E695BF38]);
  v2 = swift_task_alloc();
  *(v0 + 192) = v2;
  *v2 = v0;
  v2[1] = closure #1 in GroupSessionProviderObserver.start();
  v3 = *(v0 + 168);

  return MEMORY[0x1EEE6D8C8](v0 + 64, v3, v1);
}

{
  v22 = v0;
  v1 = v0[33];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[33];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    v0[11] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(reflecting:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Failed to update members for reason: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  v12 = v0[30];
  v13 = v0[19];
  v14 = *(v0[28] + 40);
  ObjectType = swift_getObjectType();
  GroupSessionProvider.uuid.getter(ObjectType, v14, v13);
  v20 = (*(v12 + 32) + **(v12 + 32));
  v16 = swift_task_alloc();
  v0[36] = v16;
  *v16 = v0;
  v16[1] = closure #1 in GroupSessionProviderObserver.start();
  v17 = v0[31];
  v18 = v0[19];

  return v20(v18, v17, v12);
}

{
  v2 = *v1;

  v3 = v2[34];
  v4 = v2[19];
  v5 = v2[17];
  if (v0)
  {

    v3(v4, v5);
    v6 = closure #1 in GroupSessionProviderObserver.start();
  }

  else
  {
    v3(v4, v5);
    v6 = closure #1 in GroupSessionProviderObserver.start();
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(*(v0 + 224) + 40);
  ObjectType = swift_getObjectType();
  (*(v5 + 64))(ObjectType, v5);
  *(v0 + 80) = v1;
  v7 = v1;
  CurrentValueSubject.send(_:)();

  outlined consume of GroupSession<A>.State<A>(*(v0 + 80));
  swift_willThrow();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v3, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:), 0, 0);
}

uint64_t GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = *(*(v2 + 152) + 32);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A15SessionProvider_pMd, &_s15GroupActivities0A15SessionProvider_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities013ErrorRecoveryA15SessionProvider_pMd, &_s15GroupActivities013ErrorRecoveryA15SessionProvider_pMR);
  if (!swift_dynamicCast())
  {
    *(v2 + 88) = 0;
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    outlined destroy of ErrorRecoveryGroupSessionProvider?(v2 + 56);
LABEL_9:
    v17 = *(v2 + 8);

    return v17();
  }

  v4 = *(v2 + 144);
  v3 = *(v2 + 152);
  v26 = (v2 + 16);
  v5 = outlined init with take of Transferable((v2 + 56), v2 + 16);
  v6 = *(*v3 + 160);
  v7 = v6(v5);
  v8 = *(*v3 + 176);

  v9 = v8(v2 + 96);
  specialized Set.formUnion<A>(_:)(v4);
  v10 = v9(v2 + 96, 0);
  v11 = v6(v10);
  v12 = _sSh2eeoiySbShyxG_ABtFZ15GroupActivities17AddressableMemberV_Tt1g5(v7, v11);

  if (v12)
  {
    if (one-time initialization token for groupSessionProviderObserver != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.groupSessionProviderObserver);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1AEE80000, v14, v15, "No change in unknown participants", v16, 2u);
      MEMORY[0x1B2715BA0](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v26);
    goto LABEL_9;
  }

  if (one-time initialization token for groupSessionProviderObserver != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.groupSessionProviderObserver);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1AEE80000, v20, v21, "Detected a difference in unknown participants, fetching membership update.", v22, 2u);
    MEMORY[0x1B2715BA0](v22, -1, -1);
  }

  v23 = *(v2 + 40);
  v24 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1(v26, v23);
  v27 = (*(v24 + 8) + **(v24 + 8));
  v25 = swift_task_alloc();
  *(v2 + 160) = v25;
  *v25 = v2;
  v25[1] = GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:);

  return v27(v23, v24);
}

uint64_t GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:)()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:);
  }

  else
  {
    v2 = AttachmentLedgerTopic.refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
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
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      specialized Set._Variant.insert(_:)(&v13, v11, v12);

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

uint64_t GroupSessionProviderObserver.deinit()
{
  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t GroupSessionProviderObserver.__deallocating_deinit()
{
  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in GroupSessionProviderObserver.start()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCyShy15GroupActivities17AddressableMemberVGs5NeverOGGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in GroupSessionProviderObserver.start()(a1, v6, v7, v1 + v5, v8);
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ15GroupActivities17AddressableMemberV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of ErrorRecoveryGroupSessionProvider?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities013ErrorRecoveryA15SessionProvider_pSgMd, &_s15GroupActivities013ErrorRecoveryA15SessionProvider_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of GroupSessionProviderObserver.handleUnknownParticipants(unknownParticipants:)(uint64_t a1)
{
  v6 = (*(*v1 + 200) + **(*v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v6(a1);
}

uint64_t GroupSession.MessageQueue.init(queueState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PubSubTopic.QueueState();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t GroupSession.MessageQueue.queueState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PubSubTopic.QueueState();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}