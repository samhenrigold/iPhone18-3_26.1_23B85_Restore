uint64_t SharingNLv4Intent.processCommonMessage(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology34UsoEntity_common_CollaborationModeC13DefinedValuesOSgMd, &_s12SiriOntology34UsoEntity_common_CollaborationModeC13DefinedValuesOSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v125 = &v117 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v122 = &v117 - v7;
  v126 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126 - 8, v8);
  v117 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v118 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v117 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v120 = &v117 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v119 = &v117 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCGMR);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v117 - v26;
  static Transformer<>.transformer.getter();
  v28 = dispatch thunk of UsoEntity_common_Message.recipients.getter();
  v121 = v17;
  if (v28)
  {
    v29 = v28;
    v127 = v27;
    v131[0] = MEMORY[0x277D84F90];
    v30 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 >> 62)
    {
LABEL_91:
      v31 = __CocoaSet.count.getter();
    }

    else
    {
      v31 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v128 = v1;
    v129 = v24;
    v124 = v23;
    if (v31)
    {
      v23 = 0;
      v1 = v29 & 0xC000000000000001;
      v24 = MEMORY[0x277D84F90];
      do
      {
        v32 = v23;
        while (1)
        {
          if (v1)
          {
            MEMORY[0x26D5ECB50](v32, v29);
            v23 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_89;
            }
          }

          else
          {
            if (v32 >= *(v30 + 16))
            {
              goto LABEL_90;
            }

            v23 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
              goto LABEL_91;
            }
          }

          dispatch thunk of CodeGenListEntry.entry.getter();

          if (v130)
          {
            break;
          }

          ++v32;
          if (v23 == v31)
          {
            goto LABEL_22;
          }
        }

        MEMORY[0x26D5EC910](v33);
        if (*((v131[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v24 = v131[0];
      }

      while (v23 != v31);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

LABEL_22:

    MEMORY[0x28223BE20](v35, v36);
    v27 = v127;
    *(&v117 - 2) = v127;
    v34 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in SharingNLv4Intent.processCommonMessage(_:), (&v117 - 4), v24);

    v23 = v124;
    v1 = v128;
    v24 = v129;
  }

  else
  {
    v34 = 0;
  }

  *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_recipients) = v34;

  if (dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter())
  {
    v37 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
    if (v37)
    {
      v38 = Array<A>.firstAppBundleIdentifier.getter(v37);
      v40 = v39;

      if (v40)
      {
        v41 = (v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_associatedAppIdentifier);
        *v41 = v38;
        v41[1] = v40;
      }
    }

    else
    {
    }
  }

  v42 = dispatch thunk of UsoEntity_common_Message.attachments.getter();
  if (!v42)
  {
    return (*(v24 + 8))(v27, v23);
  }

  v43 = v42;
  v44 = v42 & 0xFFFFFFFFFFFFFF8;
  if (!(v42 >> 62))
  {
    v45 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      if (v45 < 2)
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }

LABEL_95:

    return (*(v24 + 8))(v27, v23);
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_95;
  }

  if (__CocoaSet.count.getter() < 2)
  {
    goto LABEL_39;
  }

LABEL_32:
  v128 = v1;
  v1 = v27;
  if (one-time initialization token for default != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.default);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v129 = v24;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v131[0] = v50;
      *v49 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v131);
      *(v49 + 12) = 2080;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16CodeGenListEntryCyAA27UsoEntity_common_AttachmentCGMd, &_s12SiriOntology16CodeGenListEntryCyAA27UsoEntity_common_AttachmentCGMR);
      v52 = MEMORY[0x26D5EC930](v43, v51);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v131);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_266B9E000, v47, v48, "%s: Found more than one attachment, but only taking the first: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v50, -1, -1);
      MEMORY[0x26D5ED340](v49, -1, -1);

      v24 = v129;
    }

    else
    {
    }

    v27 = v1;
    v1 = v128;
LABEL_39:
    if ((v43 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(v44 + 16))
    {

      goto LABEL_42;
    }

    __break(1u);
LABEL_99:
    swift_once();
  }

  MEMORY[0x26D5ECB50](0, v43);
LABEL_42:

  dispatch thunk of CodeGenListEntry.entry.getter();

  if (v131[0])
  {

    v55 = CodeGenBase.entity.getter();

    *(v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_usoEntity) = v55;

    if (dispatch thunk of UsoEntity_common_Attachment.sharedApp.getter())
    {
      v56 = dispatch thunk of UsoEntity_common_App.name.getter();
      v57 = (v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName);
      *v57 = v56;
      v57[1] = v58;

      v59 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)();
      if (v59)
      {
        v60 = Array<A>.firstAppBundleIdentifier.getter(v59);
        v62 = v61;

        if (v62)
        {
          v63 = (v1 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appIdentifier);
          *v63 = v60;
          v63[1] = v62;
        }
      }

      else
      {
      }
    }

    v70 = v1;
    if (!dispatch thunk of UsoEntity_common_Attachment.type.getter())
    {
      goto LABEL_74;
    }

    v127 = v27;
    v129 = v24;
    v71 = v119;
    dispatch thunk of UsoEntity_common_AttachmentType.definedValue.getter();
    v72 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_type;
    swift_beginAccess();
    outlined assign with take of UsoEntity_common_AttachmentType.DefinedValues?(v71, v70 + v72);
    swift_endAccess();
    v73 = v120;
    outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v70 + v72, v120);
    v74 = v123;
    v75 = *(v123 + 48);
    v76 = v126;
    if (v75(v73, 1, v126))
    {
      outlined destroy of SharingResponse?(v73, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
    }

    else
    {
      v84 = v117;
      (*(v74 + 16))(v117, v73, v76);
      outlined destroy of SharingResponse?(v73, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
      v85 = v74;
      UsoEntity_common_AttachmentType.DefinedValues.matchingFirstPartyAppBundleID.getter();
      v87 = v86;
      (*(v85 + 8))(v84, v76);
      if (v87)
      {

        v88 = UsoEntity_common_AttachmentType.matchingSpan.getter();
        if (v89)
        {
          v90 = v89;
          v91 = (v70 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_typeMatchingSpan);
          v128 = v88;
          *v91 = v88;
          v91[1] = v89;

          if (one-time initialization token for default != -1)
          {
            swift_once();
          }

          v92 = type metadata accessor for Logger();
          __swift_project_value_buffer(v92, static Logger.default);

          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v93, v94))
          {
            LODWORD(v124) = v94;
            v95 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            v131[0] = v120;
            *v95 = 136315394;
            if (one-time initialization token for typeName != -1)
            {
              swift_once();
            }

            *(v95 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v131);
            *(v95 + 12) = 2080;
            v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v128, v90, v131);

            *(v95 + 14) = v96;
            _os_log_impl(&dword_266B9E000, v93, v124, "%s: typeMatchingSpan=%s'", v95, 0x16u);
            v97 = v120;
            swift_arrayDestroy();
            MEMORY[0x26D5ED340](v97, -1, -1);
            MEMORY[0x26D5ED340](v95, -1, -1);
          }

          else
          {
          }
        }
      }
    }

    v77 = v121;
    dispatch thunk of UsoEntity_common_AttachmentType.definedValue.getter();

    v78 = v126;
    v79 = v75(v77, 1, v126);
    v24 = v129;
    v27 = v127;
    if (v79 != 1)
    {
      v80 = v118;
      outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v77, v118);
      v81 = v123;
      v82 = (*(v123 + 88))(v80, v78);
      if (v82 == *MEMORY[0x277D5EF40])
      {
        v83 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToScreen;
      }

      else
      {
        if (v82 != *MEMORY[0x277D5EF00])
        {
          (*(v81 + 8))(v80, v78);
          goto LABEL_73;
        }

        v83 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToDisplayedContent;
      }

      *(v70 + v83) = 1;
    }

LABEL_73:
    outlined destroy of SharingResponse?(v77, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
LABEL_74:

    if (dispatch thunk of CodeGenGlobalArgs.usoQuantifier.getter())
    {
      v98 = v122;
      dispatch thunk of UsoEntity_common_Quantifier.definedValue.getter();
      v99 = v98;

      v100 = type metadata accessor for UsoEntity_common_Quantifier.DefinedValues();
      v101 = *(v100 - 8);
      if ((*(v101 + 48))(v99, 1, v100) == 1)
      {
        outlined destroy of SharingResponse?(v99, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMd, &_s12SiriOntology27UsoEntity_common_QuantifierC13DefinedValuesOSgMR);
      }

      else
      {
        v102 = (*(v101 + 88))(v99, v100);
        v103 = v99;
        v104 = v102;
        v105 = v23;
        v106 = *MEMORY[0x277D5EA28];
        (*(v101 + 8))(v103, v100);
        v107 = v104 == v106;
        v23 = v105;
        if (v107)
        {
          *(v70 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_refersToEverything) = 1;
        }
      }
    }

    v108 = dispatch thunk of CodeGenGlobalArgs.usoReferenceType.getter();

    if (v108)
    {

      *(v70 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_containsSharingReference) = 1;
    }

    v109 = dispatch thunk of UsoEntity_common_Attachment.collaborationMode.getter();
    v110 = v125;
    if (v109)
    {
      dispatch thunk of UsoEntity_common_CollaborationMode.definedValue.getter();

      v111 = type metadata accessor for UsoEntity_common_CollaborationMode.DefinedValues();
      v112 = *(v111 - 8);
      if ((*(v112 + 48))(v110, 1, v111) == 1)
      {
        outlined destroy of SharingResponse?(v110, &_s12SiriOntology34UsoEntity_common_CollaborationModeC13DefinedValuesOSgMd, &_s12SiriOntology34UsoEntity_common_CollaborationModeC13DefinedValuesOSgMR);
      }

      else
      {
        v113 = (*(v112 + 88))(v110, v111);
        v114 = v110;
        v115 = *MEMORY[0x277D5F1C8];
        (*(v112 + 8))(v114, v111);
        if (v113 == v115)
        {
          *(v70 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_isSharePlayRequest) = 1;
        }
      }
    }

    else
    {
    }

    return (*(v24 + 8))(v27, v23);
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  __swift_project_value_buffer(v64, static Logger.default);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = v23;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v131[0] = v69;
    *v68 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingNLv4Intent.typeName, *algn_2800C0B68, v131);
    _os_log_impl(&dword_266B9E000, v65, v66, "%s: CodeGenListEntry<UsoEntity_common_Attachment> missing UsoEntity_common_Attachment entry - file a radar on SiriOntology?", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x26D5ED340](v69, -1, -1);
    MEMORY[0x26D5ED340](v68, -1, -1);

    v23 = v67;
  }

  else
  {
  }

  return (*(v24 + 8))(v27, v23);
}

uint64_t closure #2 in SharingNLv4Intent.processCommonMessage(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology22UsoEntity_common_AgentCSo8INPersonCGMR);
  v5 = Transformer.transform.getter();
  v9 = v4;
  v5(&v8, &v9);
  if (v2)
  {

    v7 = 0;
  }

  else
  {

    v7 = v8;
  }

  *a2 = v7;
  return result;
}

uint64_t UsoEntity_common_AttachmentType.matchingSpan.getter()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UtteranceAlignment();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch thunk of CodeGenBase.getUtteranceAlignmentsHelper(attributeName:)();
  if (v10)
  {
    if (*(v10 + 16))
    {
      (*(v6 + 16))(v9, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      type metadata accessor for SiriEnvironment();
      if (static SiriEnvironment.forCurrentTask.getter())
      {
        SiriEnvironment.currentRequest.getter();
        v11 = CurrentRequest.speechPackage.getter();

        if (v11 && (v12 = [v11 recognition], v11, v12))
        {
          v13 = AFSpeechRecognition.extract(alignment:)();
          if (v14)
          {
            v28[0] = v13;
            v28[1] = v14;
            static CharacterSet.whitespaces.getter();
            lazy protocol witness table accessor for type String and conformance String();
            v26 = StringProtocol.trimmingCharacters(in:)();
            v27 = v15;
            (*(v1 + 8))(v4, v0);

            if (one-time initialization token for default != -1)
            {
              swift_once();
            }

            v16 = type metadata accessor for Logger();
            __swift_project_value_buffer(v16, static Logger.default);

            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              v20 = swift_slowAlloc();
              v28[0] = v20;
              *v19 = 136315138;
              *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v28);
              _os_log_impl(&dword_266B9E000, v17, v18, "UsoEntity_common_AttachmentType: matchingSpan=%s'", v19, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v20);
              MEMORY[0x26D5ED340](v20, -1, -1);
              MEMORY[0x26D5ED340](v19, -1, -1);
            }

            (*(v6 + 8))(v9, v5);
            return v26;
          }

          (*(v6 + 8))(v9, v5);
        }

        else
        {
          (*(v6 + 8))(v9, v5);
        }
      }

      else
      {
        (*(v6 + 8))(v9, v5);
      }
    }

    else
    {
    }
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.default);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_266B9E000, v23, v24, "UsoEntity_common_AttachmentType: unable to determine matchingSpan", v25, 2u);
    MEMORY[0x26D5ED340](v25, -1, -1);
  }

  return 0;
}

uint64_t Array<A>.firstAppBundleIdentifier.getter(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v4 = MEMORY[0x28223BE20](v2, v3);
  v87 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v88 = &v84 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v84 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v93 = &v84 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v84 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v24 = &v84 - v23;
  v25 = *(a1 + 16);
  v96 = v21;
  v91 = v12;
  v85 = v25;
  v86 = v22;
  v84 = a1;
  if (v25)
  {
    v94 = *(v22 + 16);
    v95 = (v22 + 16);
    v89 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v26 = a1 + v89;
    v27 = *(v22 + 72);
    v92 = (v22 + 32);
    v90 = (v22 + 8);
    v28 = MEMORY[0x277D84F90];
    (v94)(v24, a1 + v89, v2);
    while (1)
    {
      v29 = UsoIdentifier.namespace.getter();
      if (!v30)
      {
        break;
      }

      if (v29 == 0x64695F6D657469 && v30 == 0xE700000000000000)
      {
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v31 & 1) == 0)
        {
          break;
        }
      }

      v32 = *v92;
      (*v92)(v93, v24, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 16) + 1, 1);
        v28 = v99;
      }

      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v28 = v99;
      }

      *(v28 + 16) = v35 + 1;
      v36 = v28 + v89 + v35 * v27;
      v2 = v96;
      v32(v36, v93, v96);
      v12 = v91;
LABEL_4:
      v26 += v27;
      if (!--v25)
      {
        goto LABEL_17;
      }

      (v94)(v24, v26, v2);
    }

    (*v90)(v24, v2);
    goto LABEL_4;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_17:
  v37 = *(v28 + 16);
  if (v37)
  {
    v38 = *(v86 + 16);
    v39 = v28 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v93 = *(v86 + 72);
    v94 = v38;
    v95 = (v86 + 16);
    v40 = (v86 + 8);
    v41 = MEMORY[0x277D84F90];
    do
    {
      v42 = v96;
      (v94)(v19, v39, v96);
      v43 = UsoIdentifier.value.getter();
      v45 = v44;
      (*v40)(v19, v42);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
      }

      v47 = *(v41 + 2);
      v46 = *(v41 + 3);
      if (v47 >= v46 >> 1)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v41);
      }

      *(v41 + 2) = v47 + 1;
      v48 = &v41[16 * v47];
      *(v48 + 4) = v43;
      *(v48 + 5) = v45;
      v39 += v93;
      --v37;
    }

    while (v37);

    v12 = v91;
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
  }

  v49 = v96;
  if (*(v41 + 2))
  {
    goto LABEL_54;
  }

  v50 = v85;
  if (v85)
  {
    v51 = *(v86 + 16);
    v93 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v52 = v84 + v93;
    v53 = *(v86 + 72);
    v95 = (v86 + 32);
    v94 = MEMORY[0x277D84F90];
    v54 = (v86 + 8);
    v51(v12, v84 + v93, v49);
    while (1)
    {
      v55 = UsoIdentifier.namespace.getter();
      if (!v56)
      {
        break;
      }

      if (v55 == 0x656D614E707061 && v56 == 0xE700000000000000)
      {
      }

      else
      {
        v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v57 & 1) == 0)
        {
          break;
        }
      }

      v99 = UsoIdentifier.value.getter();
      v100 = v58;
      v97 = 46;
      v98 = 0xE100000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v59 = StringProtocol.contains<A>(_:)();

      if ((v59 & 1) == 0)
      {
        break;
      }

      v60 = v12;
      v61 = *v95;
      (*v95)(v87, v60, v49);
      v62 = v94;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v101 = v62;
      if ((v63 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v62 + 16) + 1, 1);
        v62 = v101;
      }

      v65 = *(v62 + 16);
      v64 = *(v62 + 24);
      if (v65 >= v64 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
        v62 = v101;
      }

      *(v62 + 16) = v65 + 1;
      v94 = v62;
      v66 = v62 + v93 + v65 * v53;
      v49 = v96;
      v61(v66, v87, v96);
      v12 = v91;
LABEL_30:
      v52 += v53;
      if (!--v50)
      {
        goto LABEL_44;
      }

      v51(v12, v52, v49);
    }

    (*v54)(v12, v49);
    goto LABEL_30;
  }

  v94 = MEMORY[0x277D84F90];
LABEL_44:
  v67 = *(v94 + 16);
  if (v67)
  {
    v68 = v86 + 16;
    v95 = *(v86 + 16);
    v69 = v94 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v70 = *(v86 + 72);
    v71 = (v86 + 8);
    v41 = MEMORY[0x277D84F90];
    do
    {
      v72 = v88;
      v73 = v96;
      v74 = v68;
      (v95)(v88, v69, v96);
      v75 = UsoIdentifier.value.getter();
      v77 = v76;
      (*v71)(v72, v73);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
      }

      v79 = *(v41 + 2);
      v78 = *(v41 + 3);
      if (v79 >= v78 >> 1)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v41);
        v68 = v74;
        v41 = v81;
      }

      else
      {
        v68 = v74;
      }

      *(v41 + 2) = v79 + 1;
      v80 = &v41[16 * v79];
      *(v80 + 4) = v75;
      *(v80 + 5) = v77;
      v69 += v70;
      --v67;
    }

    while (v67);

    if (*(v41 + 2))
    {
      goto LABEL_54;
    }

LABEL_57:

    return 0;
  }

  v41 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_57;
  }

LABEL_54:
  v82 = *(v41 + 4);

  return v82;
}

uint64_t SharingNLv4Intent.__deallocating_deinit()
{
  outlined destroy of SharingResponse?(v0 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_type, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SharingNLv4Intent(uint64_t a1)
{
  result = type metadata singleton initialization cache for SharingNLv4Intent;
  if (!type metadata singleton initialization cache for SharingNLv4Intent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SharingNLv4Intent(uint64_t a1)
{
  type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UsoEntity_common_AttachmentType.DefinedValues?)
  {
    type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UsoEntity_common_AttachmentType.DefinedValues?);
    }
  }
}

uint64_t protocol witness for SharingIntent.type.getter in conformance SharingNLv4Intent@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_type;
  swift_beginAccess();
  return outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v3 + v4, a1);
}

uint64_t protocol witness for SharingIntent.type.setter in conformance SharingNLv4Intent(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_type;
  swift_beginAccess();
  outlined assign with take of UsoEntity_common_AttachmentType.DefinedValues?(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t protocol witness for SharingIntent.appName.setter in conformance SharingNLv4Intent(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appName);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t protocol witness for SharingIntent.typeMatchingSpan.setter in conformance SharingNLv4Intent(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_typeMatchingSpan);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t protocol witness for SharingIntent.appIdentifier.setter in conformance SharingNLv4Intent(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC19SiriExpanseInternal17SharingNLv4Intent_appIdentifier);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t protocol witness for SharingIntent.appName.getter in conformance SharingNLv4Intent(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*v3 + *a3);

  return v4;
}

unint64_t instantiation function for generic protocol witness table for SharingNLv4Intent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SharingNLv4Intent and conformance SharingNLv4Intent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SharingNLv4Intent and conformance SharingNLv4Intent()
{
  result = lazy protocol witness table cache variable for type SharingNLv4Intent and conformance SharingNLv4Intent;
  if (!lazy protocol witness table cache variable for type SharingNLv4Intent and conformance SharingNLv4Intent)
  {
    type metadata accessor for SharingNLv4Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingNLv4Intent and conformance SharingNLv4Intent);
  }

  return result;
}

uint64_t AFSpeechRecognition.extract(alignment:)()
{
  v1 = type metadata accessor for UtteranceSpan();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v31 - v8;
  v10 = UtteranceAlignment.spans.getter();
  if (!*(v10 + 16))
  {
    goto LABEL_10;
  }

  (*(v2 + 16))(v6, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  (*(v2 + 32))(v9, v6, v1);
  v11 = [v0 nBestTranscripts];
  if (!v11)
  {
    (*(v2 + 8))(v9, v1);
    return 0;
  }

  v12 = v11;
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v13 + 16) <= UtteranceAlignment.asrHypothesisIndex.getter())
  {
LABEL_9:
    (*(v2 + 8))(v9, v1);
LABEL_10:

    return 0;
  }

  UtteranceAlignment.asrHypothesisIndex.getter();
  result = UtteranceAlignment.asrHypothesisIndex.getter();
  if (*(v13 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    v15 = v13 + 16 * result;
    v17 = *(v15 + 32);
    v16 = *(v15 + 40);

    UtteranceSpan.startIndex.getter();
    v18 = UtteranceSpan.startIndex.getter();
    if (v18 >= UtteranceSpan.endIndex.getter())
    {
      goto LABEL_9;
    }

    v19 = UtteranceSpan.endIndex.getter();

    v20 = MEMORY[0x26D5EC8C0](v17, v16);

    if (v20 < v19)
    {
      goto LABEL_9;
    }

    UtteranceSpan.startIndex.getter();
    v21 = String.UTF16View.index(_:offsetBy:)();

    UtteranceSpan.endIndex.getter();
    v22 = String.UTF16View.index(_:offsetBy:)();

    if (v22 >> 14 >= v21 >> 14)
    {
      v23 = MEMORY[0x26D5EC8E0](v21, v22, v17, v16);
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = MEMORY[0x26D5EC8F0](v23, v25, v27, v29);
      (*(v2 + 8))(v9, v1);
      return v30;
    }
  }

  __break(1u);
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x277D5E4F0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay19SiriExpanseInternal7Contact_pGGMd, &_ss23_ContiguousArrayStorageCySay19SiriExpanseInternal7Contact_pGGMR, &_sSay19SiriExpanseInternal7Contact_pGMd, &_sSay19SiriExpanseInternal7Contact_pGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR, &_sSaySSGMd, &_sSaySSGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR, MEMORY[0x277D55FF8]);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19SiriExpanseInternal23ConversationParticipant_pGMd, &_ss23_ContiguousArrayStorageCy19SiriExpanseInternal23ConversationParticipant_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal23ConversationParticipant_pMd, &_s19SiriExpanseInternal23ConversationParticipant_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void type metadata completion function for ExpanseUIModel.AppStorePunchoutSnippetModel(uint64_t a1)
{
  type metadata accessor for Loggable<String>();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Loggable<String>()
{
  if (!lazy cache variable for type metadata for Loggable<String>)
  {
    v0 = type metadata accessor for Loggable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Loggable<String>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void type metadata completion function for ExpanseUIModel.BinaryButtonSnippetModel(uint64_t a1)
{
  type metadata accessor for Loggable<ExpanseUIModel.ButtonModel>(319, &lazy cache variable for type metadata for Loggable<ExpanseUIModel.ButtonModel>, type metadata accessor for ExpanseUIModel.ButtonModel, MEMORY[0x277D637C8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata completion function for ExpanseUIModel(uint64_t a1)
{
  result = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_266BCD944(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, "Dc");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_266BCDA14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, "Dc");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for ExpanseUIModel.ButtonModel(uint64_t a1)
{
  type metadata accessor for Loggable<ExpanseUIModel.ButtonModel>(319, &lazy cache variable for type metadata for CodableAceObject<SAIntentGroupRunSiriKitExecutor>, type metadata accessor for SAIntentGroupRunSiriKitExecutor, MEMORY[0x277D63220]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for Loggable<ExpanseUIModel.ButtonModel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t ExpanseUIModel.AppStorePunchoutSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, MEMORY[0x277D637D0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
    v9[14] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExpanseUIModel.AppStorePunchoutSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v29 = *(v32 - 8);
  v5 = MEMORY[0x28223BE20](v32, v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v31 = v24 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO28AppStorePunchoutSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v10);
  v12 = v24 - v11;
  v13 = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v13;
  v26 = v16;
  v18 = v28;
  v17 = v29;
  v34 = 0;
  v19 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<String> and conformance <A> Loggable<A>, MEMORY[0x277D637E0]);
  v20 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24[1] = v19;
  v21 = v31;
  v31 = *(v17 + 32);
  (v31)(v26, v21, v32);
  v33 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v12, v20);
  v22 = v26;
  (v31)(&v26[*(v25 + 20)], v7, v32);
  outlined init with copy of ExpanseUIModel.AppStorePunchoutSnippetModel(v22, v27, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(v22, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
}

uint64_t ExpanseUIModel.BinaryButtonSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMR);
  lazy protocol witness table accessor for type Loggable<ExpanseUIModel.ButtonModel> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<ExpanseUIModel.ButtonModel> and conformance <A> Loggable<A>, MEMORY[0x277D637D0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
    v9[14] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExpanseUIModel.BinaryButtonSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMR);
  v29 = *(v32 - 8);
  v5 = MEMORY[0x28223BE20](v32, v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v31 = v24 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO24BinaryButtonSnippetModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v10);
  v12 = v24 - v11;
  v13 = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v13;
  v26 = v16;
  v18 = v28;
  v17 = v29;
  v34 = 0;
  v19 = lazy protocol witness table accessor for type Loggable<ExpanseUIModel.ButtonModel> and conformance <A> Loggable<A>(&lazy protocol witness table cache variable for type Loggable<ExpanseUIModel.ButtonModel> and conformance <A> Loggable<A>, MEMORY[0x277D637E0]);
  v20 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24[1] = v19;
  v21 = v31;
  v31 = *(v17 + 32);
  (v31)(v26, v21, v32);
  v33 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v12, v20);
  v22 = v26;
  (v31)(&v26[*(v25 + 20)], v7, v32);
  outlined init with copy of ExpanseUIModel.AppStorePunchoutSnippetModel(v22, v27, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(v22, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
}

uint64_t ExpanseUIModel.ButtonModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO11ButtonModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO11ButtonModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ExpanseUIModel.ButtonModel(0);
    v9[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, "Dc");
    lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, MEMORY[0x277D63228]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ExpanseUIModel.ButtonModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, "Dc");
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v4);
  v6 = v18 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO11ButtonModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO11ButtonModelV10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for ExpanseUIModel.ButtonModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = v10;
  v15 = v22;
  v14 = v23;
  v26 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v16;
  v18[1] = v16;
  v25 = 1;
  lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>, MEMORY[0x277D63230]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v14);
  outlined init with copy of ExpanseUIModel.AppStorePunchoutSnippetModel(v13, v21, type metadata accessor for ExpanseUIModel.ButtonModel);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(v13, type metadata accessor for ExpanseUIModel.ButtonModel);
}

uint64_t ExpanseUIModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO22BinaryButtonCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO22BinaryButtonCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v36 = &v30 - v4;
  v34 = type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
  MEMORY[0x28223BE20](v34, v5);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO26AppStorePunchoutCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO26AppStorePunchoutCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v30 - v9;
  v31 = type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel(0);
  MEMORY[0x28223BE20](v31, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ExpanseUIModel(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal0E7UIModelO10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v18 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v19);
  v21 = &v30 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of ExpanseUIModel.AppStorePunchoutSnippetModel(v39, v17, type metadata accessor for ExpanseUIModel);
  v22 = (v18 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v35;
    outlined init with take of ExpanseUIModel(v17, v35, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
    v42 = 1;
    lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys();
    v24 = v36;
    v25 = v40;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(&lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel, &protocol conformance descriptor for ExpanseUIModel.BinaryButtonSnippetModel);
    v26 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v37 + 8))(v24, v26);
    outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(v23, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel);
    return (*v22)(v21, v25);
  }

  else
  {
    outlined init with take of ExpanseUIModel(v17, v13, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    v41 = 0;
    lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys();
    v28 = v40;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(&lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel and conformance ExpanseUIModel.AppStorePunchoutSnippetModel, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel, &protocol conformance descriptor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    v29 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v32 + 8))(v10, v29);
    outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(v13, type metadata accessor for ExpanseUIModel.AppStorePunchoutSnippetModel);
    return (*v22)(v21, v28);
  }
}

uint64_t ExpanseUIModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO22BinaryButtonCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO22BinaryButtonCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v3);
  v50 = v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO26AppStorePunchoutCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO26AppStorePunchoutCodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v49 = v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMd, &_ss22KeyedDecodingContainerVy19SiriExpanseInternal0E7UIModelO10CodingKeys33_491269E9D3C35A76D996D69241718986LLOGMR);
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v40 - v10;
  v12 = type metadata accessor for ExpanseUIModel(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = v40 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = v40 - v22;
  v24 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys();
  v25 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v25)
  {
    v41 = v23;
    v42 = v16;
    v51 = v20;
    v26 = v50;
    v27 = v12;
    v28 = v48;
    v29 = KeyedDecodingContainer.allKeys.getter();
    if (*(v29 + 16) == 1)
    {
      v40[1] = v29;
      v53 = 1;
      lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys();
      v30 = v26;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel(0);
      lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(&lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel, type metadata accessor for ExpanseUIModel.BinaryButtonSnippetModel, &protocol conformance descriptor for ExpanseUIModel.BinaryButtonSnippetModel);
      v31 = v42;
      v32 = v30;
      v33 = v44;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v47 + 8))(v32, v33);
      (*(v28 + 8))(v11, v8);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v39 = v41;
      outlined init with take of ExpanseUIModel(v31, v41, type metadata accessor for ExpanseUIModel);
      outlined init with take of ExpanseUIModel(v39, v43, type metadata accessor for ExpanseUIModel);
    }

    else
    {
      v34 = v11;
      v35 = type metadata accessor for DecodingError();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v37 = v27;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
      swift_willThrow();
      (*(v28 + 8))(v34, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys()
{
  if (*v0)
  {
    return 0x656D614E707061;
  }

  else
  {
    return 0x614C6E6F74747562;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExpanseUIModel.AppStorePunchoutSnippetModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static Loggable<A>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Loggable<A>.== infix(_:_:)();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys()
{
  if (*v0)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x427972616D697270;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x427972616D697270 && a2 == 0xED00006E6F747475;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF6E6F7474754279)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ExpanseUIModel.ButtonModel.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExpanseUIModel.ButtonModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000266BEF3E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.ButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.ButtonModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.AppStorePunchoutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.AppStorePunchoutCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExpanseUIModel.AppStorePunchoutCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.BinaryButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.BinaryButtonCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ExpanseUIModel.CodingKeys()
{
  if (*v0)
  {
    return 0x75427972616E6962;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ExpanseUIModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000266BEF3C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x75427972616E6962 && a2 == 0xEC0000006E6F7474)
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
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpanseUIModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ExpanseUIModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys and conformance ExpanseUIModel.AppStorePunchoutSnippetModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys and conformance ExpanseUIModel.BinaryButtonSnippetModel.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of ExpanseUIModel.AppStorePunchoutSnippetModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ExpanseUIModel.AppStorePunchoutSnippetModel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Loggable<ExpanseUIModel.ButtonModel> and conformance <A> Loggable<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMd, &_s10SnippetKit8LoggableVy19SiriExpanseInternal0E7UIModelO11ButtonModelVGMR);
    lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(&lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel and conformance ExpanseUIModel.ButtonModel, type metadata accessor for ExpanseUIModel.ButtonModel, &protocol conformance descriptor for ExpanseUIModel.ButtonModel);
    lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonSnippetModel and conformance ExpanseUIModel.BinaryButtonSnippetModel(&lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel and conformance ExpanseUIModel.ButtonModel, type metadata accessor for ExpanseUIModel.ButtonModel, &protocol conformance descriptor for ExpanseUIModel.ButtonModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.CodingKeys and conformance ExpanseUIModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.BinaryButtonCodingKeys and conformance ExpanseUIModel.BinaryButtonCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.AppStorePunchoutCodingKeys and conformance ExpanseUIModel.AppStorePunchoutCodingKeys);
  }

  return result;
}

uint64_t outlined init with take of ExpanseUIModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseUIModel.ButtonModel.CodingKeys and conformance ExpanseUIModel.ButtonModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, "Dc");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ScreenShareAvailability.description.getter(unsigned __int8 a1)
{
  if (a1 == 5)
  {
    return 0xD00000000000001FLL;
  }

  if (a1 == 4)
  {
    return 0xD000000000000021;
  }

  _StringGuts.grow(_:)(47);

  v3 = 0xEA0000000000646CLL;
  v4 = 0x6F486E4F6C6C6163;
  v5 = 0x8000000266BEE350;
  v6 = 0xD000000000000013;
  if (a1 == 2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x8000000266BEE370;
  }

  if (!a1)
  {
    v4 = 0xD000000000000018;
    v3 = 0x8000000266BEE320;
  }

  if (a1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x26D5EC8A0](v7, v8);

  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return 0xD00000000000002CLL;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ScreenShareAvailability.UnavailabilityReason()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ScreenShareAvailability.UnavailabilityReason(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScreenShareAvailability.UnavailabilityReason(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ScreenShareAvailability.UnavailabilityReason@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ScreenShareAvailability.UnavailabilityReason.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ScreenShareAvailability.UnavailabilityReason(unint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000646CLL;
  v3 = 0x6F486E4F6C6C6163;
  v4 = 0x8000000266BEE350;
  v5 = 0xD000000000000013;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x8000000266BEE370;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000018;
    v2 = 0x8000000266BEE320;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScreenShareAvailability.UnavailabilityReason()
{
  v1 = 0x6F486E4F6C6C6163;
  v2 = 0xD000000000000013;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScreenShareAvailability(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 == 4)
  {
    return v3 == 4;
  }

  if ((v3 & 0xFE) == 4)
  {
    return 0;
  }

  return specialized == infix<A>(_:_:)(v2, v3);
}

uint64_t getEnumTagSinglePayload for ScreenShareAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type ScreenShareAvailability.UnavailabilityReason and conformance ScreenShareAvailability.UnavailabilityReason()
{
  result = lazy protocol witness table cache variable for type ScreenShareAvailability.UnavailabilityReason and conformance ScreenShareAvailability.UnavailabilityReason;
  if (!lazy protocol witness table cache variable for type ScreenShareAvailability.UnavailabilityReason and conformance ScreenShareAvailability.UnavailabilityReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenShareAvailability.UnavailabilityReason and conformance ScreenShareAvailability.UnavailabilityReason);
  }

  return result;
}

unint64_t specialized ScreenShareAvailability.UnavailabilityReason.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ScreenShareAvailability.UnavailabilityReason.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t Call.isFaceTimeCall.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 24))() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 32);

  return v4(a1, a2);
}

uint64_t Call.allowsScreenSharing.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 16))() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 48);

  return v4(a1, a2);
}

uint64_t Call.activeShareSession.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(&v25);
  if (!v26)
  {
    outlined destroy of SharingResponse?(&v25, &_s19SiriExpanseInternal12Conversation_pSgMd, &_s19SiriExpanseInternal12Conversation_pSgMR);
    return 0;
  }

  outlined init with take of ConversationParticipant(&v25, v28);
  v4 = v29;
  v5 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v5 + 16))(&v23, v4, v5);
  if (!v24)
  {
    outlined destroy of SharingResponse?(&v23, &_s19SiriExpanseInternal15ActivitySession_pSgMd, _s19SiriExpanseInternal15ActivitySession_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    return 0;
  }

  outlined init with take of ConversationParticipant(&v23, &v25);
  v6 = v26;
  v7 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, v26);
  LOBYTE(v6) = (*(v7 + 24))(v6, v7);
  v8 = v26;
  v9 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, v26);
  v10 = (*(v9 + 32))(v8, v9);
  if ((v6 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    return 0;
  }

  if ((v10 & 1) == 0)
  {
    v14 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    v16 = (*(v15 + 16))(v14, v15);
    v17 = v26;
    v18 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    (*(v18 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    return v16;
  }

  v11 = (*(a2 + 104))(a1, a2);
  if (!v11)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.default);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266B9E000, v20, v21, "Malformed call - screen sharing activity session is local, yet no screen share attributes are present. File a bug on TU?", v22, 2u);
      MEMORY[0x26D5ED340](v22, -1, -1);
    }

    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_18;
  }

  v12 = v11;
  if ([v11 isWindowed])
  {
    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    swift_allocError();
    swift_willThrow();

LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(&v25);
    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return 0;
}

uint64_t Call.isGroupCall.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(v6, a1);
  v2 = v7;
  if (v7)
  {
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = (*(v3 + 32))(v2, v3) & 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    outlined destroy of SharingResponse?(v6, &_s19SiriExpanseInternal12Conversation_pSgMd, &_s19SiriExpanseInternal12Conversation_pSgMR);
    return 2;
  }

  return v4;
}

uint64_t Call.screenShareAvailability.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  switch(v4)
  {
    case 3:
      if ((*(a2 + 56))(a1, a2))
      {
        v6 = (*(a2 + 144))(a1, a2);
        if (v6)
        {
          v7 = 4;
        }

        else
        {
          v7 = 2;
        }

        if (v6 == 2)
        {
          return 5;
        }

        else
        {
          return v7;
        }
      }

      else
      {
        return 0;
      }

    case 2:
      return (*(a2 + 56))(a1, a2) & 1;
    case 1:
      if ((*(a2 + 56))(a1, a2))
      {
        return 4;
      }

      else
      {
        return 0;
      }

    default:
      return 3;
  }
}

uint64_t Call.isScreenShareSalient.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  result = v4();
  if (result != 1)
  {
    return (v4)(a1, a2) == 3 || (v4)(a1, a2) == 2;
  }

  return result;
}

uint64_t TUCall.setLocalScreenShareAttributes(_:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = v1;
  if ([v4 isMainThread])
  {
    [v6 setScreenShareAttributes_];
  }

  else
  {
    type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v8 = static OS_dispatch_queue.main.getter();
    MEMORY[0x28223BE20](v8, v9);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

uint64_t TUCall.enableScreenSharing(with:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = v1;
  if ([v4 isMainThread])
  {
    [v6 setSharingScreen:1 attributes:v5];
  }

  else
  {
    type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v8 = static OS_dispatch_queue.main.getter();
    MEMORY[0x28223BE20](v8, v9);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

Swift::Void __swiftcall TUCall.disableScreenSharing()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  v2 = objc_opt_self();
  v3 = v0;
  if ([v2 isMainThread])
  {
    [v3 setSharingScreen_];
  }

  else
  {
    type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v4 = static OS_dispatch_queue.main.getter();
    MEMORY[0x28223BE20](v4, v5);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

id protocol witness for Call.providerIsFaceTime.getter in conformance TUCall()
{
  v1 = [*v0 provider];
  v2 = [v1 isFaceTimeProvider];

  return v2;
}

uint64_t protocol witness for Call.conversation.getter in conformance TUCall@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 activeConversationForCall_];

  if (v5)
  {
    result = type metadata accessor for LSBundleRecord(0, &lazy cache variable for type metadata for TUConversation, 0x277D6EE60);
    v7 = &protocol witness table for TUConversation;
  }

  else
  {
    result = 0;
    v7 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[3] = result;
  a1[4] = v7;
  return result;
}

id protocol witness for Call.isScreenSharingCapable.getter in conformance TUCall()
{
  result = [objc_opt_self() allowsScreenSharing];
  if (result)
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = [v1 conversationManager];

    v3 = [v2 isScreenSharingAvailable];
    return v3;
  }

  return result;
}

uint64_t protocol witness for Call.activeShareSession.getter in conformance TUCall(uint64_t a1, uint64_t a2)
{
  result = Call.activeShareSession.getter(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

id protocol witness for Call.localScreenShareAttributes.getter in conformance TUCall()
{
  v1 = *v0;
  if ([*v0 isSharingScreen])
  {
    return [v1 screenShareAttributes];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266BD23CC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_266BD2448()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t dispatch thunk of DialogExecuting.execute(catId:parameters:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of DialogExecuting.execute(catId:parameters:globals:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DialogExecuting.execute(catId:parameters:globals:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DialogExecuting.executeAsLabel(catId:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of DialogExecuting.executeAsLabel(catId:parameters:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DialogExecuting.executeAsLabel(catId:parameters:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t specialized Array<A>.containsAtLeastOneOf<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);

  if (!v4)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v5 = 0;
  v6 = a2 + 32;
  v7 = a1 + 56;
  while (1)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_4;
    }

    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(a1 + 32);
    v13 = v11 & ~v12;
    if ((*(v7 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v5 == v4)
    {
      goto LABEL_16;
    }
  }

  v14 = ~v12;
  while (1)
  {
    v15 = (*(a1 + 48) + 16 * v13);
    v16 = *v15 == v10 && v15[1] == v9;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v7 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v17 = 1;
LABEL_17:

  return v17;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);

  return v4;
}

unint64_t RecipientsResolver.resolve(persons:)(unint64_t a1)
{
  v2 = v1;
  v88 = type metadata accessor for ContactHandle();
  v79 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v4);
  v87 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ContactQuery();
  v6 = *(v89 - 8);
  v8 = MEMORY[0x28223BE20](v89, v7);
  i = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v69 - v12;
  if (!a1)
  {
    return 0;
  }

  v78 = v1;
  if (a1 >> 62)
  {
    goto LABEL_94;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    return 0;
  }

LABEL_4:
  v91[0] = MEMORY[0x277D84F90];

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    goto LABEL_100;
  }

  v16 = v91[0];
  v77 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v14; ++i)
    {
      MEMORY[0x26D5ECB50](i, v77);
      INPerson.toContactQuery()();
      swift_unknownObjectRelease();
      v91[0] = v16;
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v16 = v91[0];
      }

      *(v16 + 16) = v18 + 1;
      (*(v6 + 4))(v16 + ((v6[80] + 32) & ~v6[80]) + *(v6 + 9) * v18, v13, v89);
    }
  }

  else
  {
    v19 = (a1 + 32);
    v13 = v6 + 32;
    do
    {
      v20 = *v19;
      INPerson.toContactQuery()();

      v91[0] = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v16 = v91[0];
      }

      *(v16 + 16) = v22 + 1;
      (*(v6 + 4))(v16 + ((v6[80] + 32) & ~v6[80]) + *(v6 + 9) * v22, i, v89);
      ++v19;
      --v14;
    }

    while (v14);
  }

  v2 = v78;
LABEL_17:
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v23 = v75;
  v24 = ContactResolver.findMatches(queries:)(v16);
  v75 = v23;
  if (v23)
  {
  }

  v71 = v24;

  a1 = v71;
  v25 = 0;
  v26 = *(v71 + 16);
  v74 = v71 + 32;
  while (v26 != v25)
  {
    v27 = v71 + 8 * v25++;
    if (!*(*(v27 + 32) + 16))
    {
      goto LABEL_63;
    }
  }

  if (v26)
  {
    v94 = MEMORY[0x277D84F90];
    v70 = v26;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v28 = v70;
    v29 = v71;
    v30 = 0;
    v31 = v94;
    v85 = (v79 + 8);
    v86 = v79 + 16;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        goto LABEL_93;
      }

      v32 = *(v74 + 8 * v30);
      v81 = *(v32 + 16);
      if (v81)
      {
        break;
      }

      v13 = MEMORY[0x277D84F90];
LABEL_53:
      v94 = v31;
      i = *(v31 + 16);
      v55 = *(v31 + 24);
      a1 = i + 1;
      if (i >= v55 >> 1)
      {
        v6 = v30;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), i + 1, 1);
        v30 = v6;
        v28 = v70;
        v29 = v71;
        v31 = v94;
      }

      ++v30;
      *(v31 + 16) = a1;
      *(v31 + 8 * i + 32) = v13;
      if (v30 == v28)
      {
        i = v31;

        goto LABEL_58;
      }
    }

    v72 = v30;
    v73 = v31;
    v80 = v32 + 32;

    v33 = 0;
    v13 = MEMORY[0x277D84F90];
    v76 = v32;
    while (1)
    {
      if (v33 >= *(v32 + 16))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        v77 = a1;
        result = __CocoaSet.count.getter();
        if (!result)
        {
          return result;
        }

        v14 = __CocoaSet.count.getter();
        a1 = v77;
        if (v14)
        {
          goto LABEL_4;
        }

        v16 = MEMORY[0x277D84F90];
        goto LABEL_17;
      }

      outlined init with copy of ResponseExecuting(v80 + 40 * v33, v91);
      v34 = v92;
      v35 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      v36 = (*(v35 + 8))(v34, v35);
      v37 = *(v36 + 16);
      if (v37)
      {
        v83 = v33;
        v84 = v13;
        v90 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
        i = v90;
        v38 = *(v79 + 80);
        v82 = v36;
        v39 = v36 + ((v38 + 32) & ~v38);
        v89 = *(v79 + 72);
        v40 = *(v79 + 16);
        do
        {
          v41 = v87;
          v42 = v88;
          v40(v87, v39, v88);
          v43 = ContactHandle.value.getter();
          v45 = v44;
          (*v85)(v41, v42);
          v90 = i;
          v47 = *(i + 16);
          v46 = *(i + 24);
          if (v47 >= v46 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
            i = v90;
          }

          *(i + 16) = v47 + 1;
          v48 = i + 16 * v47;
          *(v48 + 32) = v43;
          *(v48 + 40) = v45;
          v39 += v89;
          --v37;
        }

        while (v37);

        v2 = v78;
        v33 = v83;
        v13 = v84;
        v32 = v76;
      }

      else
      {

        i = MEMORY[0x277D84F90];
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v91);
      a1 = *(i + 16);
      v49 = *(v13 + 2);
      v6 = (v49 + a1);
      if (__OFADD__(v49, a1))
      {
        goto LABEL_88;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v6 <= *(v13 + 3) >> 1)
      {
        if (*(i + 16))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v49 <= v6)
        {
          v51 = v49 + a1;
        }

        else
        {
          v51 = v49;
        }

        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v51, 1, v13);
        if (*(i + 16))
        {
LABEL_47:
          if ((*(v13 + 3) >> 1) - *(v13 + 2) < a1)
          {
            goto LABEL_90;
          }

          swift_arrayInitWithCopy();

          if (a1)
          {
            v52 = *(v13 + 2);
            v53 = __OFADD__(v52, a1);
            v54 = v52 + a1;
            if (v53)
            {
              goto LABEL_91;
            }

            *(v13 + 2) = v54;
          }

          goto LABEL_29;
        }
      }

      if (a1)
      {
        goto LABEL_89;
      }

LABEL_29:
      if (++v33 == v81)
      {

        v31 = v73;
        v29 = v71;
        v28 = v70;
        v30 = v72;
        goto LABEL_53;
      }
    }
  }

  i = MEMORY[0x277D84F90];
LABEL_58:
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  a1 = ScreenSharingCallManager.getRemoteCallParticipantHandles()();
  v56 = 0;
  v13 = *(i + 16);
  v57 = i;
  v89 = i + 32;
  while (v13 != v56)
  {
    if (v56 >= *(v57 + 16))
    {
      goto LABEL_92;
    }

    v6 = v56 + 1;
    v58 = *(v57 + 8 * v56 + 32);

    i = specialized Array<A>.containsAtLeastOneOf<A>(_:)(a1, v58);

    v56 = v6;
    if ((i & 1) == 0)
    {

LABEL_63:

      return 1;
    }
  }

  result = v57;
  if (!v13)
  {
    v60 = MEMORY[0x277D84F90];
LABEL_84:

    v68 = specialized Set.isSubset<A>(of:)(v60, a1);

    if ((v68 & 1) == 0)
    {
      return v77;
    }

    return 0;
  }

  v59 = 0;
  v60 = MEMORY[0x277D84F90];
  while (v59 < *(result + 16))
  {
    v61 = *(v89 + 8 * v59);
    v62 = *(v61 + 16);
    v63 = *(v60 + 16);
    v64 = v63 + v62;
    if (__OFADD__(v63, v62))
    {
      goto LABEL_98;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v64 <= *(v60 + 24) >> 1)
    {
      if (*(v61 + 16))
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (v63 <= v64)
      {
        v65 = v63 + v62;
      }

      else
      {
        v65 = v63;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v65, 1, v60);
      v60 = result;
      if (*(v61 + 16))
      {
LABEL_79:
        if ((*(v60 + 24) >> 1) - *(v60 + 16) < v62)
        {
          goto LABEL_101;
        }

        swift_arrayInitWithCopy();

        result = v57;
        if (v62)
        {
          v66 = *(v60 + 16);
          v53 = __OFADD__(v66, v62);
          v67 = v66 + v62;
          if (v53)
          {
            goto LABEL_102;
          }

          *(v60 + 16) = v67;
        }

        goto LABEL_68;
      }
    }

    result = v57;
    if (v62)
    {
      goto LABEL_99;
    }

LABEL_68:
    if (v13 == ++v59)
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  return result;
}

uint64_t specialized Set.isSubset<A>(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = specialized Collection.first.getter(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      MEMORY[0x28223BE20](result, v6);
      v7[2] = v8;
      v3 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v7, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return specialized _NativeSet.isSubset<A>(of:)(a1, a2);
  }

  return result;
}

uint64_t specialized _NativeSet.isSubset<A>(of:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v20 = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18 = &v16;
  v19 = a2;
  v6 = (1 << v4) + 63;
  v7 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v7 = v12, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v7);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = specialized closure #1 in _NativeSet.isSubset<A>(of:)(v9, v3, a2);
  }

  else
  {
    v13 = swift_slowAlloc();
    bzero(v13, v12);
    partial apply for specialized closure #1 in _NativeSet.isSubset<A>(of:)(v13, &v17);
    v14 = v17;
    MEMORY[0x26D5ED340](v13, -1, -1);
    v10 = v14;
  }

  return v10 & 1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized Set.subscript.getter(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #1 in _NativeSet.isSubset<A>(of:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized closure #1 in _NativeSet.isSubset<A>(of:)(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeSet.isSubset<A>(of:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v22 = 0;
  v4 = 0;
  v5 = *(a2 + 16);
  v24 = v5;
  v25 = a2 + 32;
  v6 = a3 + 56;
  while (v4 != v5)
  {
    while (1)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_27;
      }

      v8 = (v25 + 16 * v4);
      v10 = *v8;
      v9 = v8[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();
      v12 = -1 << *(a3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) != 0)
      {
        break;
      }

LABEL_5:

LABEL_6:
      v4 = v7;
      if (v7 == v5)
      {
        return 0;
      }
    }

    v16 = (*(a3 + 48) + 16 * v13);
    v17 = *v16 == v10 && v16[1] == v9;
    if (!v17)
    {
      v18 = ~v12;
      while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v13 = (v13 + 1) & v18;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) == 0)
        {
          v5 = v24;
          goto LABEL_5;
        }

        v19 = (*(a3 + 48) + 16 * v13);
        if (*v19 == v10 && v19[1] == v9)
        {
          break;
        }
      }
    }

    v20 = *(v23 + 8 * v14);
    *(v23 + 8 * v14) = v20 | v15;
    if ((v20 & v15) != 0)
    {
      v5 = v24;
      goto LABEL_6;
    }

    v21 = v22 + 1;
    v5 = v24;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_28;
    }

    ++v22;
    v17 = v21 == *(a3 + 16);
    v4 = v7;
    result = 1;
    if (v17)
    {
      return result;
    }
  }

  return 0;
}

id one-time initialization function for fullScreenAttributes()
{
  result = closure #1 in variable initialization expression of static TUCallScreenShareAttributes.fullScreenAttributes();
  static TUCallScreenShareAttributes.fullScreenAttributes = result;
  return result;
}

id closure #1 in variable initialization expression of static TUCallScreenShareAttributes.fullScreenAttributes()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D6EE30]) init];
  [v5 setStyle_];
  [v5 setDeviceFamily_];
  v6 = [objc_opt_self() mainConfiguration];
  [v6 pointScale];
  v8 = v7;

  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v5 setDisplayScale_];

  type metadata accessor for NSNumber();
  isa = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
  [v5 setScaleFactor_];

  [v5 setWindowed_];
  UUID.init()();
  v11 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setWindowUUID_];

  return v5;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t one-time initialization function for default()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.default);
  __swift_project_value_buffer(v0, static Logger.default);
  return Logger.init(subsystem:category:)();
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

void static OS_dispatch_queue.executeOnMain<A>(_:)(void (*a1)(void))
{
  if ([objc_opt_self() isMainThread])
  {
    a1();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v5 = static OS_dispatch_queue.main.getter();
    MEMORY[0x28223BE20](v5, v6);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in PromptManaging.executeYesNoConfirmationFlow(withPrompt:confirmationRejectedDialog:flowCancelledDialog:onYes:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v79 = a2;
  v6 = type metadata accessor for SimpleConfirmationResponseProvider();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v74[-v15];
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v74[-v18];
  SimpleConfirmationResponseProvider.confirmationResponse.getter();
  v20 = type metadata accessor for ConfirmationResponse();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v22 = v19;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.default);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_266B9E000, v24, v25, "PromptGiving: Confirmation response has no value - this should never happen", v26, 2u);
      MEMORY[0x26D5ED340](v26, -1, -1);
    }

    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    v27 = swift_allocError();
    v28 = *(a4 + 32);
    v81 = *(a4 + 16);
    v82 = v28;
    v83 = *(a4 + 48);
    v84 = *(a4 + 64);
    v29 = v84;
    v30 = *(a4 + 16);
    v31 = *(a4 + 24);
    v32 = *(a4 + 32);
    v33 = *(a4 + 40);
    v34 = *(a4 + 48);
    v35 = *(a4 + 56);
    *(a4 + 16) = v27;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0;
    *(a4 + 64) = 16;
    outlined init with copy of StartSharingConfirmationFlow.State(&v81, v80);
    v36 = v27;
    outlined consume of StartSharingConfirmationFlow.State(v30, v31, v32, v33, v34, v35, v29);
    StartSharingConfirmationFlow.state.didset(&v81);
    outlined destroy of StartSharingConfirmationFlow.State(&v81);

    v37 = v22;
    return outlined destroy of SharingResponse?(v37, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  }

  v76 = v19;
  outlined init with copy of ConfirmationResponse?(v19, v16);
  v38 = (*(v21 + 88))(v16, v20);
  if (v38 == *MEMORY[0x277D5BED8])
  {
    v79();
LABEL_21:
    v37 = v76;
    return outlined destroy of SharingResponse?(v37, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  }

  if (v38 != *MEMORY[0x277D5BED0])
  {
    (*(v21 + 8))(v16, v20);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.default);
    v54 = v77;
    v53 = v78;
    (*(v77 + 16))(v9, a1, v78);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v81 = v79;
      *v57 = 136315138;
      v75 = v56;
      SimpleConfirmationResponseProvider.confirmationResponse.getter();
      v58 = String.init<A>(describing:)();
      v60 = v59;
      (*(v54 + 8))(v9, v53);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &v81);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_266B9E000, v55, v75, "PromptGiving: Confirmation response has unknown value %s - add support for it!", v57, 0xCu);
      v62 = v79;
      __swift_destroy_boxed_opaque_existential_1Tm(v79);
      MEMORY[0x26D5ED340](v62, -1, -1);
      MEMORY[0x26D5ED340](v57, -1, -1);
    }

    else
    {

      (*(v54 + 8))(v9, v53);
    }

    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    v63 = swift_allocError();
    v64 = *(a4 + 32);
    v81 = *(a4 + 16);
    v82 = v64;
    v83 = *(a4 + 48);
    v84 = *(a4 + 64);
    v65 = v84;
    v66 = *(a4 + 16);
    v67 = *(a4 + 24);
    v68 = *(a4 + 32);
    v69 = *(a4 + 40);
    v70 = *(a4 + 48);
    v71 = *(a4 + 56);
    *(a4 + 16) = v63;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0;
    *(a4 + 64) = 16;
    outlined init with copy of StartSharingConfirmationFlow.State(&v81, v80);
    v72 = v63;
    outlined consume of StartSharingConfirmationFlow.State(v66, v67, v68, v69, v70, v71, v65);
    StartSharingConfirmationFlow.state.didset(&v81);
    outlined destroy of StartSharingConfirmationFlow.State(&v81);

    goto LABEL_21;
  }

  v39 = v76;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.default);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_266B9E000, v41, v42, "PromptGiving: User answered negatively to prompt - completing flow", v43, 2u);
    MEMORY[0x26D5ED340](v43, -1, -1);
  }

  v44 = *(a4 + 32);
  v81 = *(a4 + 16);
  v82 = v44;
  v83 = *(a4 + 48);
  v84 = *(a4 + 64);
  v45 = v84;
  v46 = *(a4 + 16);
  v47 = *(a4 + 24);
  v48 = *(a4 + 32);
  v49 = *(a4 + 40);
  v50 = *(a4 + 48);
  v51 = *(a4 + 56);
  *(a4 + 16) = 4;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  *(a4 + 64) = 32;
  outlined init with copy of StartSharingConfirmationFlow.State(&v81, v80);
  outlined consume of StartSharingConfirmationFlow.State(v46, v47, v48, v49, v50, v51, v45);
  StartSharingConfirmationFlow.state.didset(&v81);
  outlined destroy of StartSharingConfirmationFlow.State(&v81);
  v37 = v39;
  return outlined destroy of SharingResponse?(v37, &_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
}

void specialized PromptManaging.processPromptFlowExitValue<A>(_:onValueReceived:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(char *, uint64_t))
{
  v99 = a4;
  v100 = a5;
  v98 = a3;
  v101 = a2;
  v6 = type metadata accessor for SimpleConfirmationResponseProvider();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v97 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v97 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v97 - v21;
  v23 = *(v12 + 16);
  v23(&v97 - v21, a1, v11);
  v24 = (*(v12 + 88))(v22, v11);
  if (v24 == *MEMORY[0x277D5BC38])
  {
    (*(v12 + 96))(v22, v11);
    (*(v7 + 32))(v10, v22, v6);
    specialized closure #1 in closure #1 in PromptManaging.executeYesNoConfirmationFlow(withPrompt:confirmationRejectedDialog:flowCancelledDialog:onYes:)(v10, v98, v99, v100);
    (*(v7 + 8))(v10, v6);
    return;
  }

  if (v24 == *MEMORY[0x277D5BC30])
  {
    (*(v12 + 96))(v22, v11);
    v25 = *v22;
    v26 = v22[8];
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.default);
    v28 = v25;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v25;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_266B9E000, v29, v30, "PromptGiving: Error during execution of prompt flow: %@", v31, 0xCu);
      outlined destroy of SharingResponse?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x26D5ED340](v32, -1, -1);
      MEMORY[0x26D5ED340](v31, -1, -1);
    }

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    v37 = os_log_type_enabled(v35, v36);
    if (v26)
    {
      if (v37)
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_266B9E000, v35, v36, "PromptGiving: Error already handled - completing flow", v38, 2u);
        MEMORY[0x26D5ED340](v38, -1, -1);
      }

      v39 = v101;
      v40 = *(v101 + 32);
      v103 = *(v101 + 16);
      v104 = v40;
      v105 = *(v101 + 48);
      v106 = *(v101 + 64);
      v41 = v106;
      v43 = *(v101 + 16);
      v42 = *(v101 + 24);
      v44 = *(v101 + 32);
      v45 = *(v101 + 40);
      v46 = *(v101 + 48);
      v47 = *(v101 + 56);
      *(v101 + 16) = 4;
      *(v39 + 24) = 0u;
      *(v39 + 40) = 0u;
      *(v39 + 56) = 0;
      *(v39 + 64) = 32;
      outlined init with copy of StartSharingConfirmationFlow.State(&v103, v102);
      outlined consume of StartSharingConfirmationFlow.State(v43, v42, v44, v45, v46, v47, v41);
      StartSharingConfirmationFlow.state.didset(&v103);
      outlined destroy of StartSharingConfirmationFlow.State(&v103);
    }

    else
    {
      if (v37)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_266B9E000, v35, v36, "PromptGiving: Error not already handled - transitioning to .failedWithUnknownError state", v53, 2u);
        MEMORY[0x26D5ED340](v53, -1, -1);
      }

      v54 = v101;
      v55 = *(v101 + 32);
      v103 = *(v101 + 16);
      v104 = v55;
      v105 = *(v101 + 48);
      v106 = *(v101 + 64);
      v56 = v106;
      v58 = *(v101 + 16);
      v57 = *(v101 + 24);
      v59 = *(v101 + 32);
      v60 = *(v101 + 40);
      v61 = *(v101 + 48);
      v62 = *(v101 + 56);
      *(v101 + 16) = v25;
      *(v54 + 24) = 0u;
      *(v54 + 40) = 0u;
      *(v54 + 56) = 0;
      *(v54 + 64) = 16;
      v63 = v25;
      v64 = v25;
      outlined init with copy of StartSharingConfirmationFlow.State(&v103, v102);
      outlined consume of StartSharingConfirmationFlow.State(v58, v57, v59, v60, v61, v62, v56);
      StartSharingConfirmationFlow.state.didset(&v103);
      outlined destroy of StartSharingConfirmationFlow.State(&v103);
    }

    return;
  }

  if (v24 == *MEMORY[0x277D5BC40])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.default);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_27;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "PromptGiving: User responded to prompt with 'cancel' - completing flow";
LABEL_26:
    _os_log_impl(&dword_266B9E000, v49, v50, v52, v51, 2u);
    MEMORY[0x26D5ED340](v51, -1, -1);
LABEL_27:

    v66 = v101;
    v67 = *(v101 + 32);
    v103 = *(v101 + 16);
    v104 = v67;
    v105 = *(v101 + 48);
    v106 = *(v101 + 64);
    v68 = v106;
    v70 = *(v101 + 16);
    v69 = *(v101 + 24);
    v71 = *(v101 + 32);
    v72 = *(v101 + 40);
    v73 = *(v101 + 48);
    v74 = *(v101 + 56);
    *(v101 + 16) = 4;
    *(v66 + 24) = 0u;
    *(v66 + 40) = 0u;
    *(v66 + 56) = 0;
    *(v66 + 64) = 32;
    outlined init with copy of StartSharingConfirmationFlow.State(&v103, v102);
    outlined consume of StartSharingConfirmationFlow.State(v70, v69, v71, v72, v73, v74, v68);
    StartSharingConfirmationFlow.state.didset(&v103);
    outlined destroy of StartSharingConfirmationFlow.State(&v103);
    return;
  }

  if (v24 == *MEMORY[0x277D5BC28])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.default);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_27;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "PromptGiving: User provided no answer to the prompt - completing flow";
    goto LABEL_26;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  __swift_project_value_buffer(v75, static Logger.default);
  v23(v19, a1, v11);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *&v103 = v98;
    *v78 = 136315138;
    v79 = v97;
    v23(v97, v19, v11);
    v80 = *(v12 + 8);
    v99 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v80(v19, v11);
    lazy protocol witness table accessor for type PromptResult<SharingIntent?> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<SimpleConfirmationResponseProvider> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMd, &_s11SiriKitFlow12PromptResultOyAA34SimpleConfirmationResponseProviderVGMR);
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v82;
    v100 = v80;
    v80(v79, v11);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v103);

    *(v78 + 4) = v84;
    _os_log_impl(&dword_266B9E000, v76, v77, "PromptGiving: PromptForValueFlow exitValue has unknown value %s - add support for it!", v78, 0xCu);
    v85 = v98;
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    MEMORY[0x26D5ED340](v85, -1, -1);
    MEMORY[0x26D5ED340](v78, -1, -1);
  }

  else
  {
    v86 = *(v12 + 8);
    v99 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v100 = v86;
    v86(v19, v11);
  }

  lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
  v87 = swift_allocError();
  v88 = v101;
  v89 = *(v101 + 32);
  v103 = *(v101 + 16);
  v104 = v89;
  v105 = *(v101 + 48);
  v106 = *(v101 + 64);
  v90 = v106;
  v91 = *(v101 + 24);
  v98 = *(v101 + 16);
  v92 = *(v101 + 32);
  v93 = *(v101 + 40);
  v94 = *(v101 + 48);
  v95 = *(v101 + 56);
  *(v101 + 16) = v87;
  *(v88 + 24) = 0u;
  *(v88 + 40) = 0u;
  *(v88 + 56) = 0;
  *(v88 + 64) = 16;
  outlined init with copy of StartSharingConfirmationFlow.State(&v103, v102);
  v96 = v87;
  outlined consume of StartSharingConfirmationFlow.State(v98, v91, v92, v93, v94, v95, v90);
  StartSharingConfirmationFlow.state.didset(&v103);
  outlined destroy of StartSharingConfirmationFlow.State(&v103);

  v100(v22, v11);
}

uint64_t specialized PromptManaging.processPromptFlowExitValue<A>(_:onValueReceived:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v80 = a2;
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v10 = MEMORY[0x28223BE20](started, v9);
  v81 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v82 = (v76 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow12PromptResultOy0A15ExpanseInternal13SharingIntent_pSgGMd, "^Y");
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v78 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = v76 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = v76 - v24;
  v26 = *(v15 + 16);
  v26(v76 - v24, a1, v14);
  v27 = (*(v15 + 88))(v25, v14);
  if (v27 == *MEMORY[0x277D5BC38])
  {
    (*(v15 + 96))(v25, v14);
    v28 = *(v25 + 1);
    v83[0] = *v25;
    v83[1] = v28;
    v84 = *(v25 + 4);
    specialized closure #1 in closure #1 in StartSharingFlow.executeNeedsShareTargetFlow(with:onIntentReceived:)(v83, a3, a4, a5);
    return outlined destroy of SharingResponse?(v83, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  }

  if (v27 == *MEMORY[0x277D5BC30])
  {
    (*(v15 + 96))(v25, v14);
    v30 = *v25;
    v31 = v25[8];
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.default);
    v33 = v30;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v30;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_266B9E000, v34, v35, "PromptGiving: Error during execution of prompt flow: %@", v36, 0xCu);
      outlined destroy of SharingResponse?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x26D5ED340](v37, -1, -1);
      MEMORY[0x26D5ED340](v36, -1, -1);
    }

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    v42 = os_log_type_enabled(v40, v41);
    if (v31)
    {
      if (v42)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_266B9E000, v40, v41, "PromptGiving: Error already handled - completing flow", v43, 2u);
        MEMORY[0x26D5ED340](v43, -1, -1);
      }

      v44 = v82;
      swift_storeEnumTagMultiPayload();
      v45 = v80;
      v46 = *(*v80 + 104);
      swift_beginAccess();
      v47 = v81;
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v45 + v46, v81);
      swift_beginAccess();
    }

    else
    {
      if (v42)
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_266B9E000, v40, v41, "PromptGiving: Error not already handled - transitioning to .failedWithUnknownError state", v53, 2u);
        MEMORY[0x26D5ED340](v53, -1, -1);
      }

      v44 = v82;
      *v82 = v30;
      swift_storeEnumTagMultiPayload();
      v45 = v80;
      v46 = *(*v80 + 104);
      swift_beginAccess();
      v47 = v81;
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v45 + v46, v81);
      swift_beginAccess();
      v54 = v30;
    }

    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v44, v45 + v46);
    swift_endAccess();
    specialized SharingFlow.state.didset(v47);

    goto LABEL_28;
  }

  if (v27 == *MEMORY[0x277D5BC40])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.default);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_27;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "PromptGiving: User responded to prompt with 'cancel' - completing flow";
LABEL_26:
    _os_log_impl(&dword_266B9E000, v49, v50, v52, v51, 2u);
    MEMORY[0x26D5ED340](v51, -1, -1);
LABEL_27:

    v44 = v82;
    swift_storeEnumTagMultiPayload();
    v56 = v80;
    v57 = *(*v80 + 104);
    swift_beginAccess();
    v47 = v81;
    outlined init with copy of StartSharingFlow.StartSharingFlowState(v56 + v57, v81);
    swift_beginAccess();
    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v44, v56 + v57);
    swift_endAccess();
    specialized SharingFlow.state.didset(v47);
LABEL_28:
    outlined destroy of StartSharingFlow.StartSharingFlowState(v47);
    return outlined destroy of StartSharingFlow.StartSharingFlowState(v44);
  }

  if (v27 == *MEMORY[0x277D5BC28])
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static Logger.default);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_27;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "PromptGiving: User provided no answer to the prompt - completing flow";
    goto LABEL_26;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static Logger.default);
  v26(v22, a1, v14);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *&v83[0] = v77;
    *v61 = 136315138;
    v62 = v78;
    v26(v78, v22, v14);
    v63 = *(v15 + 8);
    v76[1] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v63(v22, v14);
    lazy protocol witness table accessor for type PromptResult<SharingIntent?> and conformance PromptResult<A>(&lazy protocol witness table cache variable for type PromptResult<SharingIntent?> and conformance PromptResult<A>, &_s11SiriKitFlow12PromptResultOy0A15ExpanseInternal13SharingIntent_pSgGMd, "^Y");
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v63(v62, v14);
    v67 = v63;
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v83);

    *(v61 + 4) = v68;
    _os_log_impl(&dword_266B9E000, v59, v60, "PromptGiving: PromptForValueFlow exitValue has unknown value %s - add support for it!", v61, 0xCu);
    v69 = v77;
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    MEMORY[0x26D5ED340](v69, -1, -1);
    v70 = v67;
    MEMORY[0x26D5ED340](v61, -1, -1);
  }

  else
  {
    v70 = *(v15 + 8);
    v70(v22, v14);
  }

  lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
  v71 = swift_allocError();
  v72 = v82;
  *v82 = v71;
  swift_storeEnumTagMultiPayload();
  v73 = v80;
  v74 = *(*v80 + 104);
  swift_beginAccess();
  v75 = v81;
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v73 + v74, v81);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v72, v73 + v74);
  swift_endAccess();
  specialized SharingFlow.state.didset(v75);
  outlined destroy of StartSharingFlow.StartSharingFlowState(v75);
  outlined destroy of StartSharingFlow.StartSharingFlowState(v72);
  return (v70)(v25, v14);
}

uint64_t outlined init with copy of StartSharingFlow.StartSharingFlowState(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t outlined assign with copy of StartSharingFlow.StartSharingFlowState(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  (*(*(started - 8) + 24))(a2, a1, started);
  return a2;
}

uint64_t outlined destroy of StartSharingFlow.StartSharingFlowState(uint64_t a1)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t lazy protocol witness table accessor for type PromptResult<SharingIntent?> and conformance PromptResult<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of ConfirmationResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ConfirmScreenShareOrMessageSendFlowStrategy.Decision.description.getter()
{
  outlined init with copy of ConfirmScreenShareOrMessageSendFlowStrategy.Decision(v0, &v3);
  if (!v4)
  {
    return 0x436E496572616873;
  }

  if (v4 == 1)
  {
    return 0x4D616956646E6573;
  }

  outlined init with take of SharingResponse(&v3, v2);
  _StringGuts.grow(_:)(19);
  MEMORY[0x26D5EC8A0](0xD000000000000010, 0x8000000266BEF510);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return 0;
}

uint64_t ConfirmScreenShareOrMessageSendFlowStrategy.actionForIntent(_:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if ((*(v5 + 216))(v4, v5))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.default);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v27[0] = v10;
      *v9 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ConfirmScreenShareOrMessageSendFlowStrategy.typeName, unk_2800C0E60, v27);
      _os_log_impl(&dword_266B9E000, v7, v8, "%s: User has opted to send via messages.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x26D5ED340](v10, -1, -1);
      MEMORY[0x26D5ED340](v9, -1, -1);
    }

    memset(v27, 0, 24);
    *(&v27[1] + 8) = xmmword_266BED4B0;
    goto LABEL_28;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 16))(v11, v12);
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_21;
    }
  }

  else if (!v13)
  {

LABEL_14:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.default);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v27[0] = v19;
      *v18 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ConfirmScreenShareOrMessageSendFlowStrategy.typeName, unk_2800C0E60, v27);
      _os_log_impl(&dword_266B9E000, v16, v17, "%s: User has opted to share in call.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D5ED340](v19, -1, -1);
      MEMORY[0x26D5ED340](v18, -1, -1);
    }

    memset(v27, 0, 40);
    goto LABEL_28;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_14;
  }

LABEL_21:
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.default);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v27[0] = v24;
    *v23 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ConfirmScreenShareOrMessageSendFlowStrategy.typeName, unk_2800C0E60, v27);
    _os_log_impl(&dword_266B9E000, v21, v22, "%s: The user did not directly answer the prompt, but responded with a new sharing intent.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D5ED340](v24, -1, -1);
    MEMORY[0x26D5ED340](v23, -1, -1);
  }

  outlined init with copy of ResponseExecuting(a1, v27);
LABEL_28:
  outlined init with copy of ConfirmScreenShareOrMessageSendFlowStrategy.Decision(v27, v26);
  swift_beginAccess();
  outlined assign with take of ConfirmScreenShareOrMessageSendFlowStrategy.Decision?(v26, v2 + 136);
  swift_endAccess();
  static ActionForInput.handle()();
  return outlined destroy of ConfirmScreenShareOrMessageSendFlowStrategy.Decision(v27);
}

uint64_t ConfirmScreenShareOrMessageSendFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  outlined destroy of SharingResponse?(v0 + 56, &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  outlined destroy of SharingResponse?(v0 + 136, &_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMd, &_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMR);

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t get_enum_tag_for_layout_string_19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ConfirmScreenShareOrMessageSendFlowStrategy.Decision(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConfirmScreenShareOrMessageSendFlowStrategy.Decision(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double destructiveInjectEnumTag for ConfirmScreenShareOrMessageSendFlowStrategy.Decision(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.actionForInput(_:) in conformance ConfirmScreenShareOrMessageSendFlowStrategy(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return SharingYesNoPromptFlowStrategy.actionForInput(_:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance ConfirmScreenShareOrMessageSendFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance NeedsShareTargetFlowStrategy;

  return specialized SharingPromptFlowStrategy.parseResponse(input:)(a1, a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance ConfirmScreenShareOrMessageSendFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse()(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ConfirmScreenShareOrMessageSendFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse()(a1, a2, WitnessTable);
}

unint64_t instantiation function for generic protocol witness table for ConfirmScreenShareOrMessageSendFlowStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ConfirmScreenShareOrMessageSendFlowStrategy and conformance ConfirmScreenShareOrMessageSendFlowStrategy();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ConfirmScreenShareOrMessageSendFlowStrategy and conformance ConfirmScreenShareOrMessageSendFlowStrategy()
{
  result = lazy protocol witness table cache variable for type ConfirmScreenShareOrMessageSendFlowStrategy and conformance ConfirmScreenShareOrMessageSendFlowStrategy;
  if (!lazy protocol witness table cache variable for type ConfirmScreenShareOrMessageSendFlowStrategy and conformance ConfirmScreenShareOrMessageSendFlowStrategy)
  {
    type metadata accessor for ConfirmScreenShareOrMessageSendFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmScreenShareOrMessageSendFlowStrategy and conformance ConfirmScreenShareOrMessageSendFlowStrategy);
  }

  return result;
}

uint64_t outlined assign with take of ConfirmScreenShareOrMessageSendFlowStrategy.Decision?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMd, &_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of ResponseExecuting.execute(response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return v11(a1, a2, a3, a4);
}

uint64_t type metadata accessor for ButtonLabelsCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for ButtonLabelsCATsSimple;
  if (!type metadata singleton initialization cache for ButtonLabelsCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ButtonLabelsCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v16 - v12;
  swift_allocObject();
  outlined init with copy of URL?(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v14;
}

uint64_t ButtonLabelsCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CATOption();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v7, a2, v3);
  v8 = CATWrapperSimple.init(useResponseMode:options:)();
  (*(v4 + 8))(a2, v3);
  return v8;
}

uint64_t specialized ShareTargetResolver.resolveShareTargetForStopSharing(target:call:)()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 64))(v2, v3);
  if ((v5 - 1) >= 4)
  {
    outlined consume of ShareSession?(v4, v5, v6, v7);
    LOBYTE(v8) = 2;
  }

  else
  {
    v8 = 0x30101u >> (8 * (v5 - 1));
  }

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t specialized ShareTargetResolver.resolveAppTargetForStartSharing(_:_:errorHandler:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](specialized ShareTargetResolver.resolveAppTargetForStartSharing(_:_:errorHandler:), 0, 0);
}

uint64_t specialized ShareTargetResolver.resolveAppTargetForStartSharing(_:_:errorHandler:)()
{
  v26 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.default);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25[0] = v5;
    *v4 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, v25);
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v25);
    _os_log_impl(&dword_266B9E000, v2, v3, "%s: Share target is the app: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v5, -1, -1);
    MEMORY[0x26D5ED340](v4, -1, -1);
  }

  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  v10 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v9, v8, 0);
  if (v10)
  {
    v22 = *(v0 + 32);

    v21 = v22;
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
  }

  else
  {
    v11 = String.localizedAppDisplayName.getter(*(v0 + 16), *(v0 + 24));
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136315650;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 16);
      v19 = *(v0 + 24);
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, v25);
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v25);
      *(v17 + 22) = 2080;
      *(v17 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v25);
      _os_log_impl(&dword_266B9E000, v15, v16, "%s: Share target is an uninstalled app appBundleID=%s appName=%s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v18, -1, -1);
      MEMORY[0x26D5ED340](v17, -1, -1);
    }

    v21 = 256;
  }

  v23 = *(v0 + 8);

  return v23(v13, v14, v21);
}

uint64_t specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:)(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for ShareTarget(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:), 0, 0);
}

uint64_t specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:)()
{
  v43 = v0;
  outlined init with copy of ShareTarget(v0[2], v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v30 = v0[4];
        v12 = *v30;
        v13 = v30[1];
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.default);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v42 = v35;
          *v34 = 136315394;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, &v42);
          *(v34 + 12) = 2080;
          *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v42);
          _os_log_impl(&dword_266B9E000, v32, v33, "%s: Share target is an uninstalled app '%s' - resolving immediately with unsupported", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5ED340](v35, -1, -1);
          MEMORY[0x26D5ED340](v34, -1, -1);
        }

        v15 = 0;
        v14 = 256;
        goto LABEL_45;
      }

      outlined destroy of ShareTarget(v0[4]);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Logger.default);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v42 = v6;
        *v5 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, &v42);
        _os_log_impl(&dword_266B9E000, v3, v4, "%s: Reference resolution is unsupported on the current platform.", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v6);
        MEMORY[0x26D5ED340](v6, -1, -1);
        MEMORY[0x26D5ED340](v5, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.default);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v42 = v20;
        *v19 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, &v42);
        _os_log_impl(&dword_266B9E000, v17, v18, "%s: Reference resolution is unsupported on the current platform.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x26D5ED340](v20, -1, -1);
        MEMORY[0x26D5ED340](v19, -1, -1);
      }

      v21 = v0[4];
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
      v23 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
      (*(*(v23 - 8) + 8))(v21 + v22, v23);
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
LABEL_45:

    v41 = v0[1];

    return v41(v12, v13, v14 | (v15 << 16));
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.default);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v42 = v11;
        *v10 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, &v42);
        _os_log_impl(&dword_266B9E000, v8, v9, "%s: Share target is the screen - resolving immediately with success", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x26D5ED340](v11, -1, -1);
        MEMORY[0x26D5ED340](v10, -1, -1);
      }

      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.default);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v42 = v40;
        *v39 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ShareTargetResolver.typeName, unk_2800C0E90, &v42);
        _os_log_impl(&dword_266B9E000, v37, v38, "%s: No target provided - resolving with needsValue", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        MEMORY[0x26D5ED340](v40, -1, -1);
        MEMORY[0x26D5ED340](v39, -1, -1);
      }

      v12 = 0;
      v13 = 0;
      v15 = 0;
      v14 = 512;
    }

    goto LABEL_45;
  }

  v24 = v0[4];
  v26 = *v24;
  v25 = *(v24 + 8);
  v0[5] = v25;
  v27 = *(v24 + 16);
  v28 = swift_task_alloc();
  v0[6] = v28;
  *v28 = v0;
  v28[1] = specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:);

  return specialized ShareTargetResolver.resolveAppTargetForStartSharing(_:_:errorHandler:)(v26, v25, v27);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4(v2, v3, v1 & 0x1FFFF);
}

uint64_t specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *v3;
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;

  return MEMORY[0x2822009F8](specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:), 0, 0);
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference5MatchVyAA7ContactVAA0D8ResolverC9SignalSetVGGMd, &_sSay13SiriInference5MatchVyAA7ContactVAA0D8ResolverC9SignalSetVGGMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriExpanseInternal7Contact_pGMd, &_sSay19SiriExpanseInternal7Contact_pGMR);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x26D5ECB50](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for TUConversationParticipant();
        v16 = &protocol witness table for TUConversationParticipant;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of ConversationParticipant(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for TUConversationParticipant();
        v16 = &protocol witness table for TUConversationParticipant;
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        outlined init with take of ConversationParticipant(&v14, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *ContactResolver.findMatches(queries:)(uint64_t a1)
{
  v24 = a1;
  v23 = type metadata accessor for RecommenderType();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SearchSuggestedContacts();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactResolverDomain();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for ContactResolverConfig();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.current.getter();
  static ContactResolverDomain.all.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D56148], v22);
  (*(v1 + 104))(v4, *MEMORY[0x277D560D0], v23);
  ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:recommender:customGenerator:)();
  v18 = v25;
  v19 = dispatch thunk of ContactResolver.findMatches(queries:config:)();
  if (v18)
  {
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v20 = v19;
    (*(v14 + 8))(v17, v13);
    v17 = specialized _arrayForceCast<A, B>(_:)(v20);
  }

  return v17;
}

unint64_t type metadata accessor for TUConversationParticipant()
{
  result = lazy cache variable for type metadata for TUConversationParticipant;
  if (!lazy cache variable for type metadata for TUConversationParticipant)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationParticipant);
  }

  return result;
}

unint64_t StartSharingFlow.StartSharingFlowState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ShareTarget(0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v64 - v8;
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v12 = MEMORY[0x28223BE20](started, v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v64 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = (&v64 - v20);
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v1, &v64 - v20, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x696C616974696E69;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v31 = *v21;
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);

      v32 = 0x8000000266BEF810;
      v33 = 0xD000000000000021;
      goto LABEL_9;
    case 2:
      v31 = *v21;
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v32 = 0x8000000266BEF7E0;
      v33 = 0xD000000000000022;
      goto LABEL_9;
    case 3:
      v31 = *v21;
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      v32 = 0x8000000266BEF7B0;
      v33 = 0xD000000000000026;
LABEL_9:
      v66 = v33;
      v67 = v32;
      v65 = v31;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D5EC8A0](v35);
      goto LABEL_32;
    case 4:
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMd, &_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMR);
      v42 = *(v21 + v41[12]);
      v43 = *(v21 + v41[16]);
      v44 = *(v21 + v41[20]);
      outlined init with take of ShareTarget(v21, v9);
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(82);
      MEMORY[0x26D5EC8A0](0xD000000000000010, 0x8000000266BEF750);
      v45 = ShareTarget.description.getter();
      MEMORY[0x26D5EC8A0](v45);

      MEMORY[0x26D5EC8A0](0x697069636572202CLL, 0xEE00203A73746E65);
      specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v42);

      MEMORY[0x26D5EC8A0](0xD000000000000013, 0x8000000266BEF770);
      v65 = v43;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D5EC8A0](v46);

      MEMORY[0x26D5EC8A0](0xD000000000000018, 0x8000000266BEF790);
      if (v44)
      {
        v47 = 1702195828;
      }

      else
      {
        v47 = 0x65736C6166;
      }

      if (v44)
      {
        v48 = 0xE400000000000000;
      }

      else
      {
        v48 = 0xE500000000000000;
      }

      MEMORY[0x26D5EC8A0](v47, v48);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      v49 = v66;
      outlined destroy of ShareTarget(v9, type metadata accessor for ShareTarget);
      return v49;
    case 5:
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);
      v51 = v21 + *(v50 + 48);
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = *(v21 + *(v50 + 64));
      v55 = v51[16];
      outlined init with take of ShareTarget(v21, v6);
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(73);
      MEMORY[0x26D5EC8A0](0xD000000000000022, 0x8000000266BEF700);
      v56 = ShareTarget.description.getter();
      MEMORY[0x26D5EC8A0](v56);

      MEMORY[0x26D5EC8A0](0xD000000000000012, 0x8000000266BEF730);
      v57 = ResolvedShareTarget.description.getter(v53, v52, v55);
      v59 = v58;

      MEMORY[0x26D5EC8A0](v57, v59);

      MEMORY[0x26D5EC8A0](0x697069636572202CLL, 0xEE00203A73746E65);
      specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v54);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      v60 = v66;
      outlined destroy of ShareTarget(v6, type metadata accessor for ShareTarget);
      return v60;
    case 6:
      v36 = *v21;
      v37 = v21[1];
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v66 = 0xD00000000000001CLL;
      v67 = 0x8000000266BEF660;
      v38 = StartSharingFlow.StartSharingFlowError.description.getter(v36, v37);
      v40 = v39;
      outlined consume of StartSharingFlow.StartSharingFlowError(v36, v37);
      MEMORY[0x26D5EC8A0](v38, v40);
      goto LABEL_32;
    case 7:
      v61 = 0xD000000000000010;
      v62 = *v21;
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v66 = 0xD000000000000016;
      v67 = 0x8000000266BEF640;
      if (v62 <= 1)
      {
        if (v62)
        {
          v63 = 0x8000000266BEE350;
        }

        else
        {
          v63 = 0xEA0000000000646CLL;
          v61 = 0x6F486E4F6C6C6163;
        }
      }

      else if (v62 == 2)
      {
        v63 = 0xE90000000000006CLL;
        v61 = 0x6C61436E49746F6ELL;
      }

      else if (v62 == 3)
      {
        v63 = 0x8000000266BEE390;
        v61 = 0xD000000000000014;
      }

      else
      {
        v63 = 0x8000000266BEE6B0;
        v61 = 0xD000000000000012;
      }

      MEMORY[0x26D5EC8A0](v61, v63);
LABEL_32:

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      return v66;
    case 8:
      v34 = *v21;
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);
      MEMORY[0x26D5EC8A0](0xD000000000000017, 0x8000000266BEE890);
      v65 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);

      return v66;
    case 9:
      return result;
    case 10:
      v30 = 35;
      goto LABEL_21;
    case 11:
      v30 = 38;
LABEL_21:
      result = v30 | 0xD000000000000010;
      break;
    case 12:
      result = 0x4D616956646E6573;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
      v25 = swift_projectBox();
      v26 = *(v24 + 48);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v25, v18, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v25 + v26, v14, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      v66 = 0;
      v67 = 0xE000000000000000;
      _StringGuts.grow(_:)(78);
      MEMORY[0x26D5EC8A0](0xD00000000000002ALL, 0x8000000266BEF840);
      v27 = StartSharingFlow.StartSharingFlowState.description.getter();
      MEMORY[0x26D5EC8A0](v27);

      MEMORY[0x26D5EC8A0](0xD00000000000001FLL, 0x8000000266BEF870);
      v28 = StartSharingFlow.StartSharingFlowState.description.getter();
      MEMORY[0x26D5EC8A0](v28);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      v29 = v66;
      outlined destroy of ShareTarget(v14, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v18, type metadata accessor for StartSharingFlow.StartSharingFlowState);

      result = v29;
      break;
  }

  return result;
}

unint64_t StartSharingFlow.StartSharingFlowError.description.getter(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0xD000000000000032;
    case 1:
      return 0xD000000000000031;
    case 2:
      return 0xD00000000000001ELL;
  }

  _StringGuts.grow(_:)(28);

  MEMORY[0x26D5EC8A0](a1, a2);
  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return 0xD000000000000019;
}

uint64_t StartSharingFlow.exitValue.getter@<X0>(char *a1@<X8>)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  MEMORY[0x28223BE20](started, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v1 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v1 + v7, v6, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  result = swift_getEnumCaseMultiPayload();
  if (result == 12)
  {
    v9 = 1;
  }

  else
  {
    result = outlined destroy of ShareTarget(v6, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t StartSharingFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.default);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v18);
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_266B9E000, v8, v9, "%s: received input %s - this flow should never receive input, ignoring it...", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v11, -1, -1);
    MEMORY[0x26D5ED340](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t StartSharingFlow.execute()(uint64_t a1)
{
  v2[78] = v1;
  v2[77] = a1;
  v2[79] = *v1;
  type metadata accessor for ShareTarget(0);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](StartSharingFlow.execute(), 0, 0);
}

uint64_t StartSharingFlow.execute()()
{
  v135 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 624);
  v3 = *(*v2 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v2 + v3, v1, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v45 = **(v0 + 680);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Logger.default);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v133 = v45;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v134 = v50;
        *v49 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v51 = *(v0 + 624);
        *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v134);
        *(v49 + 12) = 2080;
        v52 = *(*v51 + 112);
        swift_beginAccess();
        outlined init with copy of ResponseExecuting(v51 + v52, v0 + 376);
        __swift_project_boxed_opaque_existential_1((v0 + 376), *(v0 + 400));
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, &v134);

        *(v49 + 14) = v56;
        _os_log_impl(&dword_266B9E000, v47, v48, "%s: Intent before reformation: %s", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v50, -1, -1);
        MEMORY[0x26D5ED340](v49, -1, -1);

        v45 = v133;
      }

      else
      {
      }

      v108 = *(v0 + 624) + *(**(v0 + 624) + 112);
      swift_beginAccess();
      v109 = *(v108 + 24);
      v110 = *(v108 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
      LOBYTE(v109) = (*(v110 + 232))(v109, v110);
      v111 = swift_endAccess();
      specialized SharingFlow.intent.didset(v111);
      if (v109)
      {

        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v134 = v115;
          *v114 = 136315394;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v114 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v134);
          *(v114 + 12) = 2080;
          outlined init with copy of ResponseExecuting(v108, v0 + 336);
          __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));
          v116 = dispatch thunk of CustomStringConvertible.description.getter();
          v118 = v117;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
          v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, &v134);

          *(v114 + 14) = v119;
          _os_log_impl(&dword_266B9E000, v112, v113, "%s: Intent after reformation: %s", v114, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5ED340](v115, -1, -1);
          MEMORY[0x26D5ED340](v114, -1, -1);
        }
      }

      else
      {
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v134 = v123;
          *v122 = 136315138;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v134);
          _os_log_impl(&dword_266B9E000, v120, v121, "%s: Intent unchanged by reformation", v122, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v123);
          MEMORY[0x26D5ED340](v123, -1, -1);
          MEMORY[0x26D5ED340](v122, -1, -1);
        }
      }

      v124 = *(v0 + 672);
      v125 = *(v0 + 664);
      *v124 = v45;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v2 + v3, v125, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();
      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v124, v2 + v3);
      swift_endAccess();
      specialized SharingFlow.state.didset(v125);
      outlined destroy of ShareTarget(v125, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v124, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      goto LABEL_63;
    case 2u:
      v23 = *(v0 + 632);
      v24 = *(v0 + 624);
      v25 = **(v0 + 680);
      v26 = *(*v24 + 112);
      swift_beginAccess();
      outlined init with copy of ResponseExecuting(v24 + v26, v0 + 296);
      type metadata accessor for ValidateStartSharingIntentFlow();
      v27 = swift_allocObject();
      *(v27 + 16) = 2;
      outlined init with take of ConversationParticipant((v0 + 296), v27 + 24);
      *(v0 + 608) = v27;
      v28 = swift_allocObject();
      v28[2] = v24;
      v28[3] = v25;
      v28[4] = v23;
      lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type ValidateStartSharingIntentFlow and conformance ValidateStartSharingIntentFlow, type metadata accessor for ValidateStartSharingIntentFlow, &protocol conformance descriptor for ValidateStartSharingIntentFlow);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      goto LABEL_71;
    case 3u:
      StartSharingFlow.validateRecipientsForIntent(needsValueCount:)(**(v0 + 680), *(v0 + 616));
      goto LABEL_71;
    case 4u:
      v10 = *(v0 + 680);
      v11 = *(v0 + 648);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMd, &_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMR);
      v13 = *(v10 + *(v12 + 48));
      *(v0 + 688) = v13;
      v14 = *(v10 + *(v12 + 64));
      outlined init with take of ShareTarget(v10, v11);
      v15 = swift_task_alloc();
      *(v0 + 696) = v15;
      *v15 = v0;
      v15[1] = StartSharingFlow.execute();
      v16 = *(v0 + 648);
      v17 = *(v0 + 616);

      return StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:)(v17, v16, v13, v14);
    case 5u:
      v57 = *(v0 + 680);
      v58 = *(v0 + 648);
      v59 = *(v0 + 640);
      v128 = v59;
      v60 = *(v0 + 624);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);
      v62 = v57 + *(v61 + 48);
      v130 = *(v62 + 8);
      v131 = *v62;
      v129 = *(v62 + 16);
      v132 = *(v57 + *(v61 + 64));
      outlined init with take of ShareTarget(v57, v58);
      v63 = *(*v60 + 112);
      swift_beginAccess();
      outlined init with copy of ResponseExecuting(v60 + v63, v0 + 96);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v58, v59, type metadata accessor for ShareTarget);
      outlined init with copy of ResponseExecuting(v60 + *(*v60 + 120), v0 + 136);
      outlined init with copy of ResponseExecuting(v60 + *(*v60 + 128), v0 + 176);
      outlined init with copy of ResponseExecuting(v60 + *(*v60 + 136), v0 + 216);
      v64 = *(v0 + 200);
      v65 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v64);
      v66 = *(v64 - 8);
      v67 = swift_task_alloc();
      (*(v66 + 16))(v67, v65, v64);
      v68 = *v67;
      v69 = type metadata accessor for ResponseExecutor();
      *(v0 + 280) = v69;
      *(v0 + 288) = &protocol witness table for ResponseExecutor;
      *(v0 + 256) = v68;
      type metadata accessor for StartSharingConfirmationFlow(0);
      v70 = swift_allocObject();
      v71 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 256, v69);
      v72 = *(v69 - 8);
      v73 = swift_task_alloc();
      (*(v72 + 16))(v73, v71, v69);
      v74 = *v73;
      v75 = (v70 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_responseExecutor);
      v75[3] = v69;
      v75[4] = &protocol witness table for ResponseExecutor;
      *v75 = v74;
      *(v70 + 32) = 0u;
      *(v70 + 48) = 0u;
      *(v70 + 16) = 0u;
      *(v70 + 64) = 32;
      outlined init with take of ConversationParticipant((v0 + 96), v70 + 72);
      outlined init with take of ShareTarget(v128, v70 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_requestedTarget);
      v76 = v70 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_resolvedTarget;
      *v76 = v131;
      *(v76 + 8) = v130;
      *(v76 + 16) = v129;
      *(v70 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_recipients) = v132;
      outlined init with take of ConversationParticipant((v0 + 136), v70 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_call);
      outlined init with take of ConversationParticipant((v0 + 216), v70 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_outputPublisher);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));

      *(v0 + 600) = v70;
      lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type StartSharingConfirmationFlow and conformance StartSharingConfirmationFlow, type metadata accessor for StartSharingConfirmationFlow, &protocol conformance descriptor for StartSharingConfirmationFlow);

      static ExecuteResponse.ongoing<A>(next:childCompletion:)();

      outlined destroy of ShareTarget(v58, type metadata accessor for ShareTarget);
      goto LABEL_71;
    case 6u:
      v77 = *(v0 + 680);
      v78 = *v77;
      v79 = v77[1];
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      __swift_project_value_buffer(v80, static Logger.default);
      outlined copy of StartSharingFlow.StartSharingFlowError(v78, v79);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      outlined consume of StartSharingFlow.StartSharingFlowError(v78, v79);
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v134 = v84;
        *v83 = 136315650;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v85 = static StartSharingFlow.typeName;
        v86 = qword_2800C0EB0;
        *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v134);
        *(v83 + 12) = 2080;
        *(v83 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v86, &v134);
        *(v83 + 22) = 2080;
        outlined copy of StartSharingFlow.StartSharingFlowError(v78, v79);
        started = StartSharingFlow.StartSharingFlowError.description.getter(v78, v79);
        v89 = v88;
        outlined consume of StartSharingFlow.StartSharingFlowError(v78, v79);
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(started, v89, &v134);

        *(v83 + 24) = v90;
        _os_log_impl(&dword_266B9E000, v81, v82, "%s: %s failed with start sharing error: %s", v83, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v84, -1, -1);
        MEMORY[0x26D5ED340](v83, -1, -1);
      }

      StartSharingFlow.makeResponseForStartSharingError(_:)(v78, v79);
      outlined consume of StartSharingFlow.StartSharingFlowError(v78, v79);
      goto LABEL_71;
    case 7u:
      v29 = **(v0 + 680);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.default);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v134 = v34;
        *v33 = 136315650;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v35 = static StartSharingFlow.typeName;
        v36 = qword_2800C0EB0;
        *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v134);
        *(v33 + 12) = 2080;
        *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v134);
        *(v33 + 22) = 2080;
        if (v29 <= 1)
        {
          if (v29)
          {
            v38 = 0xD000000000000010;
            v37 = 0x8000000266BEE350;
          }

          else
          {
            v37 = 0xEA0000000000646CLL;
            v38 = 0x6F486E4F6C6C6163;
          }
        }

        else if (v29 == 2)
        {
          v37 = 0xE90000000000006CLL;
          v38 = 0x6C61436E49746F6ELL;
        }

        else if (v29 == 3)
        {
          v37 = 0x8000000266BEE390;
          v38 = 0xD000000000000014;
        }

        else
        {
          v37 = 0x8000000266BEE6B0;
          v38 = 0xD000000000000012;
        }

        v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v134);

        *(v33 + 24) = v126;
        _os_log_impl(&dword_266B9E000, v31, v32, "%s: %s failed with common error: %s", v33, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v34, -1, -1);
        MEMORY[0x26D5ED340](v33, -1, -1);
      }

      specialized SharingFlow.makeResponseForCommonError(_:)(v29);
      goto LABEL_71;
    case 8u:
      v93 = **(v0 + 680);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      __swift_project_value_buffer(v94, static Logger.default);
      v95 = v93;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v134 = v99;
        *v98 = 136315650;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v100 = static StartSharingFlow.typeName;
        v101 = qword_2800C0EB0;
        *(v98 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v134);
        *(v98 + 12) = 2080;
        *(v98 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v134);
        *(v98 + 22) = 2080;
        *(v0 + 584) = v93;
        v102 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
        v103 = String.init<A>(describing:)();
        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, &v134);

        *(v98 + 24) = v105;
        _os_log_impl(&dword_266B9E000, v96, v97, "%s: %s failed with unknown/unexpected error: %s", v98, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v99, -1, -1);
        MEMORY[0x26D5ED340](v98, -1, -1);
      }

      v106 = type metadata accessor for Responses.Common.GenericError(0);
      *(v0 + 40) = v106;
      *(v0 + 48) = &protocol witness table for Responses.Common.GenericError;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      static DialogPhase.completion.getter();
      *boxed_opaque_existential_1 = -112;
      *(boxed_opaque_existential_1 + *(v106 + 24)) = 1;
      specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(v0 + 16);

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      goto LABEL_71;
    case 9u:
      v19 = *(v0 + 672);
      v20 = *(v0 + 664);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
      v21 = swift_allocBox();
      *v22 = 0;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      *v19 = v21;
      swift_storeEnumTagMultiPayload();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v2 + v3, v20, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();
      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v19, v2 + v3);
      swift_endAccess();
      specialized SharingFlow.state.didset(v20);
      outlined destroy of ShareTarget(v20, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v19, type metadata accessor for StartSharingFlow.StartSharingFlowState);
LABEL_63:
      static ExecuteResponse.ongoing(requireInput:)();
      goto LABEL_71;
    case 0xAu:
      v91 = swift_task_alloc();
      *(v0 + 704) = v91;
      *v91 = v0;
      v91[1] = StartSharingFlow.execute();
      v92 = *(v0 + 616);

      return StartSharingFlow.shareTarget(_:)(v92);
    case 0xBu:
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.default);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v134 = v8;
        *v7 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v134);
        *(v7 + 12) = 2080;
        *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v134);
        _os_log_impl(&dword_266B9E000, v5, v6, "%s: Successfully shared %s; dismissing Siri and completing flow", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v8, -1, -1);
        MEMORY[0x26D5ED340](v7, -1, -1);
      }

      outlined init with copy of ResponseExecuting(*(v0 + 624) + *(**(v0 + 624) + 136), v0 + 56);
      type metadata accessor for DismissSiriFlow();
      v9 = swift_allocObject();
      outlined init with take of ConversationParticipant((v0 + 56), v9 + 16);
      *(v0 + 592) = v9;
      lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type DismissSiriFlow and conformance DismissSiriFlow, type metadata accessor for DismissSiriFlow, &protocol conformance descriptor for DismissSiriFlow);
      static ExecuteResponse.complete<A>(next:)();

      goto LABEL_71;
    case 0xCu:
    case 0xDu:
      static ExecuteResponse.complete()();
      goto LABEL_71;
    default:
      v39 = *(v0 + 672);
      v40 = *(v0 + 664);
      v41 = *(v0 + 616);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
      v43 = swift_projectBox();
      v44 = *(v42 + 48);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v43, v39, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v43 + v44, v40, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      specialized SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(v39, v40, v41);
      outlined destroy of ShareTarget(v40, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v39, type metadata accessor for StartSharingFlow.StartSharingFlowState);

LABEL_71:

      v127 = *(v0 + 8);

      return v127();
  }
}

{

  return MEMORY[0x2822009F8](StartSharingFlow.execute(), 0, 0);
}

{
  outlined destroy of ShareTarget(*(v0 + 648), type metadata accessor for ShareTarget);

  v1 = *(v0 + 8);

  return v1();
}

{

  return MEMORY[0x2822009F8](StartSharingFlow.execute(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in StartSharingFlow.validateIntent(needsValueCount:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v8 = MEMORY[0x28223BE20](started, v7);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v32[-v12];
  v14 = *a1;
  if (v14 == 2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.default);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33[0] = v19;
      *v18 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, v33);
      _os_log_impl(&dword_266B9E000, v16, v17, "%s: intent to be handled as a screen sharing or app casting intent", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x26D5ED340](v19, -1, -1);
      MEMORY[0x26D5ED340](v18, -1, -1);
    }

    *v13 = a3;
  }

  else if (v14)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.default);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, v33);
      _os_log_impl(&dword_266B9E000, v21, v22, "%s: intent should be handled via message sending - sending back to SiriMessages", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D5ED340](v24, -1, -1);
      MEMORY[0x26D5ED340](v23, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.default);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v33[0] = v29;
      *v28 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, v33);
      _os_log_impl(&dword_266B9E000, v26, v27, "%s: intent is a SharePlay request, which is unsupported", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x26D5ED340](v29, -1, -1);
      MEMORY[0x26D5ED340](v28, -1, -1);
    }

    *v13 = 3;
  }

  swift_storeEnumTagMultiPayload();
  v30 = *(*a2 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v30, v10, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v13, a2 + v30);
  swift_endAccess();
  specialized SharingFlow.state.didset(v10);
  outlined destroy of ShareTarget(v10, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  return outlined destroy of ShareTarget(v13, type metadata accessor for StartSharingFlow.StartSharingFlowState);
}

uint64_t StartSharingFlow.validateRecipientsForIntent(needsValueCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23[1] = a2;
  v5 = *v2;
  v6 = *(*v2 + 112);
  swift_beginAccess();
  outlined init with copy of ResponseExecuting(v2 + v6, v26);
  v7 = v27;
  v8 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v9 = (*(v8 + 176))(v7, v8);
  v10 = type metadata accessor for ContactResolver();
  swift_allocObject();
  v25[3] = v10;
  v25[4] = &protocol witness table for ContactResolver;
  v25[0] = ContactResolver.init()();
  v25[8] = &type metadata for ScreenSharingCallManager;
  v25[9] = &protocol witness table for ScreenSharingCallManager;
  v11 = swift_allocObject();
  v25[5] = v11;
  v12 = [objc_opt_self() sharedInstance];
  v11[5] = type metadata accessor for TUCallCenter();
  v11[6] = &protocol witness table for TUCallCenter;
  v11[2] = v12;
  v24[3] = &type metadata for RecipientsResolver;
  v24[4] = &protocol witness table for RecipientsResolver;
  v24[0] = swift_allocObject();
  outlined init with copy of RecipientsResolver(v25, v24[0] + 16);
  type metadata accessor for ValidateRecipientsFlow();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v24, &type metadata for RecipientsResolver);
  MEMORY[0x28223BE20](v14, v14);
  v16 = (v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  *(v13 + 64) = &type metadata for RecipientsResolver;
  *(v13 + 72) = &protocol witness table for RecipientsResolver;
  v18 = swift_allocObject();
  *(v13 + 32) = v9;
  *(v13 + 40) = v18;
  v19 = v16[3];
  v18[3] = v16[2];
  v18[4] = v19;
  v18[5] = v16[4];
  v20 = v16[1];
  v18[1] = *v16;
  v18[2] = v20;
  *(v13 + 16) = 1;
  *(v13 + 24) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  outlined destroy of RecipientsResolver(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v25[0] = v13;
  v21 = swift_allocObject();
  v21[2] = v3;
  v21[3] = v13;
  v21[4] = a1;
  v21[5] = v5;
  lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type ValidateRecipientsFlow and conformance ValidateRecipientsFlow, type metadata accessor for ValidateRecipientsFlow, &protocol conformance descriptor for ValidateRecipientsFlow);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t closure #1 in StartSharingFlow.validateRecipientsForIntent(needsValueCount:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v10 = MEMORY[0x28223BE20](started, v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v40 - v14;
  if (*a1)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.default);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v47[0] = v20;
      *v19 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, v47);
      _os_log_impl(&dword_266B9E000, v17, v18, "%s: recipients validation failed - falling back on SiriMessages sharing", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x26D5ED340](v20, -1, -1);
      MEMORY[0x26D5ED340](v19, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
    v21 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v21, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v15, a2 + v21);
    swift_endAccess();
    specialized SharingFlow.state.didset(v12);
    outlined destroy of ShareTarget(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    return outlined destroy of ShareTarget(v15, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.default);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v26 = os_log_type_enabled(v24, v25);
    v42 = a4;
    v43 = started;
    v41 = a3;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47[0] = v28;
      *v27 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, v47);
      _os_log_impl(&dword_266B9E000, v24, v25, "%s: recipients validation passed", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D5ED340](v28, -1, -1);
      MEMORY[0x26D5ED340](v27, -1, -1);
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMd, &_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMR);
    v30 = v29[12];
    v31 = v29[16];
    v32 = v29[20];
    v33 = *(*a2 + 112);
    swift_beginAccess();
    outlined init with copy of ResponseExecuting(a2 + v33, v47);
    v34 = v48;
    v35 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    (*(v35 + 192))(v34, v35);
    *&v15[v30] = *(v41 + 24);
    *&v15[v31] = v42;
    outlined init with copy of ResponseExecuting(a2 + v33, v44);
    v36 = v45;
    v37 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v38 = *(v37 + 224);

    v15[v32] = v38(v36, v37) & 1;
    swift_storeEnumTagMultiPayload();
    v39 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v39, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v15, a2 + v39);
    swift_endAccess();
    specialized SharingFlow.state.didset(v12);
    outlined destroy of ShareTarget(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    outlined destroy of ShareTarget(v15, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    return __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }
}

uint64_t StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[34] = a4;
  v5[35] = v4;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v5[36] = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = type metadata accessor for Responses.StartSharing.NeedsTarget(0);
  v5[40] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[41] = v7;
  *v7 = v5;
  v7[1] = StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:);

  return specialized ShareTargetResolver.resolveShareTargetForStartSharing(target:)(a2);
}

uint64_t StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *v3;
  *(v4 + 336) = a1;
  *(v4 + 344) = a2;
  *(v4 + 352) = a3;

  return MEMORY[0x2822009F8](StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:), 0, 0);
}

uint64_t StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:)()
{
  v59 = v0;
  v1 = *(v0 + 352);
  if ((v1 & 0x10000) != 0)
  {
    v8 = *(v0 + 336);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.default);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v58 = v13;
      *v12 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 336);
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v58);
      *(v12 + 12) = 2080;
      *(v0 + 356) = v14 & 1;
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v58);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_266B9E000, v10, v11, "%s: Target resolution failed with error %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v13, -1, -1);
      MEMORY[0x26D5ED340](v12, -1, -1);
    }

    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    v20 = *(v0 + 280);
    if (v8)
    {
      lazy protocol witness table accessor for type StartSharingTargetResolutionError and conformance StartSharingTargetResolutionError();
      v21 = swift_allocError();
      *v22 = 1;
      *v18 = v21;
      swift_storeEnumTagMultiPayload();
      v23 = *(*v20 + 104);
      swift_beginAccess();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v20 + v23, v19, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();
      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v18, v20 + v23);
    }

    else
    {
      v25 = *(v0 + 256);
      v24 = *(v0 + 264);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);
      v27 = v18 + *(v26 + 48);
      v28 = *(v26 + 64);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v25, v18, type metadata accessor for ShareTarget);
      *v27 = xmmword_266BED810;
      v27[16] = 2;
      *(v18 + v28) = v24;
      swift_storeEnumTagMultiPayload();
      v29 = *(*v20 + 104);
      swift_beginAccess();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v20 + v29, v19, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();

      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v18, v20 + v29);
    }

    swift_endAccess();
    specialized SharingFlow.state.didset(v19);
    outlined destroy of ShareTarget(v19, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    outlined destroy of ShareTarget(v18, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    static ExecuteResponse.ongoing(requireInput:)();
  }

  else
  {
    if (!BYTE1(v1))
    {
      v3 = *(v0 + 336);
      v2 = *(v0 + 344);
      v30 = *(v0 + 304);
      v31 = *(v0 + 280);
      v57 = *(v0 + 296);
      v32 = *(v0 + 256);
      v33 = *(v0 + 264);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);
      v35 = v30 + *(v34 + 48);
      v36 = *(v34 + 64);
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v32, v30, type metadata accessor for ShareTarget);
      *v35 = v3;
      *(v35 + 8) = v2;
      *(v35 + 16) = v1;
      *(v30 + v36) = v33;
      swift_storeEnumTagMultiPayload();
      v37 = *(*v31 + 104);
      swift_beginAccess();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v31 + v37, v57, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();
      outlined copy of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(v3, v2, v1, 0);
      outlined copy of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(v3, v2, v1, 0);

      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v30, v31 + v37);
      swift_endAccess();
      specialized SharingFlow.state.didset(v57);
      outlined destroy of ShareTarget(v57, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v30, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      static ExecuteResponse.ongoing(requireInput:)();
      outlined consume of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(v3, v2, v1, 0);
      goto LABEL_16;
    }

    if (BYTE1(v1) == 1)
    {
      v3 = *(v0 + 336);
      v2 = *(v0 + 344);
      v5 = *(v0 + 296);
      v4 = *(v0 + 304);
      v6 = *(v0 + 280);
      *v4 = v3;
      v4[1] = v2;
      swift_storeEnumTagMultiPayload();
      v7 = *(*v6 + 104);
      swift_beginAccess();
      outlined init with copy of StartSharingFlow.StartSharingFlowState(v6 + v7, v5, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      swift_beginAccess();
      outlined copy of StartSharingTargetResolution(v3, v2, v1, 1u);
      outlined assign with copy of StartSharingFlow.StartSharingFlowState(v4, v6 + v7);
      swift_endAccess();
      specialized SharingFlow.state.didset(v5);
      outlined destroy of ShareTarget(v5, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      outlined destroy of ShareTarget(v4, type metadata accessor for StartSharingFlow.StartSharingFlowState);
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_16:
      outlined consume of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(v3, v2, v1, 0);
      goto LABEL_24;
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.default);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58 = v42;
      *v41 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v58);
      _os_log_impl(&dword_266B9E000, v39, v40, "%s: Resolved needs value -> pushing needs value flow", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x26D5ED340](v42, -1, -1);
      MEMORY[0x26D5ED340](v41, -1, -1);
    }

    v43 = *(v0 + 352);
    v45 = *(v0 + 336);
    v44 = *(v0 + 344);
    v47 = *(v0 + 312);
    v46 = *(v0 + 320);
    v49 = *(v0 + 272);
    v48 = *(v0 + 280);
    v50 = *(v0 + 248);
    *v46 = -109;
    static DialogPhase.clarification.getter();
    v51 = *(v47 + 24);
    static SharingNLContextProvider.makeNLContextUpdateForShareTargetPrompt()();
    v52 = type metadata accessor for NLContextUpdate();
    (*(*(v52 - 8) + 56))(&v46[v51], 0, 1, v52);
    *(v0 + 40) = v47;
    *(v0 + 48) = &protocol witness table for Responses.StartSharing.NeedsTarget;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    outlined init with copy of StartSharingFlow.StartSharingFlowState(v46, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.NeedsTarget);
    v54 = swift_allocObject();
    *(v54 + 16) = v48;
    *(v54 + 24) = v49;

    StartSharingFlow.executeNeedsShareTargetFlow(with:onIntentReceived:)(v0 + 16, partial apply for closure #1 in StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:), v54, v50);

    outlined consume of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(v45, v44, v43, 0);
    outlined destroy of ShareTarget(v46, type metadata accessor for Responses.StartSharing.NeedsTarget);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

LABEL_24:

  v55 = *(v0 + 8);

  return v55();
}

uint64_t closure #1 in StartSharingFlow.resolveTarget(_:recipients:needsValueCount:isShareInCallRequest:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v8 = MEMORY[0x28223BE20](started, v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18[-v12];
  outlined init with copy of ResponseExecuting(a1, v19);
  v14 = *(*a2 + 112);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a2 + v14), v19);
  v15 = swift_endAccess();
  specialized SharingFlow.intent.didset(v15);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v19);
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    *v13 = a3 + 1;
    swift_storeEnumTagMultiPayload();
    v17 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v17, v10, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v13, a2 + v17);
    swift_endAccess();
    specialized SharingFlow.state.didset(v10);
    outlined destroy of ShareTarget(v10, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    return outlined destroy of ShareTarget(v13, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  }

  return result;
}

uint64_t closure #1 in StartSharingFlow.confirmTarget(requestedTarget:resolvedTarget:recipients:)(uint64_t *a1, uint64_t a2)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v6 = MEMORY[0x28223BE20](started, v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v23[-v10];
  v12 = *a1;
  if (v12 <= 1)
  {
    if (!v12)
    {
      *v11 = 0;
      v11[1] = 0;
      goto LABEL_12;
    }

    if (v12 == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v12 == 2)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal16StartSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
    v14 = swift_allocBox();
    v16 = v15;
    v17 = *(v13 + 48);
    swift_storeEnumTagMultiPayload();
    *(v16 + v17) = 2;
    swift_storeEnumTagMultiPayload();
    *v11 = v14;
    goto LABEL_12;
  }

  if (v12 == 3)
  {
    goto LABEL_12;
  }

  if (v12 != 4)
  {
LABEL_14:
    *v11 = v12;
    swift_storeEnumTagMultiPayload();
    v21 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v21, v8, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    v22 = v12;
    v19 = a2 + v21;
    goto LABEL_13;
  }

  *v11 = xmmword_266BED820;
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v18 = *(*a2 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v18, v8, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  v19 = a2 + v18;
LABEL_13:
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v11, v19);
  swift_endAccess();
  specialized SharingFlow.state.didset(v8);
  outlined destroy of ShareTarget(v8, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  return outlined destroy of ShareTarget(v11, type metadata accessor for StartSharingFlow.StartSharingFlowState);
}

uint64_t StartSharingFlow.shareTarget(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing(0);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](StartSharingFlow.shareTarget(_:), 0, 0);
}

uint64_t StartSharingFlow.shareTarget(_:)()
{
  v13 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = __swift_project_value_buffer(v1, static Logger.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v12);
    _os_log_impl(&dword_266B9E000, v2, v3, "%s: Informing user that screen sharing is starting...", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D5ED340](v5, -1, -1);
    MEMORY[0x26D5ED340](v4, -1, -1);
  }

  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[19];
  *v6 = -110;
  static DialogPhase.confirmed.getter();
  __swift_project_boxed_opaque_existential_1((v8 + *(*v8 + 128)), *(v8 + *(*v8 + 128) + 24));
  v0[10] = v7;
  v0[11] = &protocol witness table for Responses.StartSharing.InterstitialStartingScreenSharing;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v6, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = StartSharingFlow.shareTarget(_:);

  return ResponseExecutor.execute(response:)((v0 + 2), (v0 + 7));
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = StartSharingFlow.shareTarget(_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
    v3 = StartSharingFlow.shareTarget(_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = (*(v0 + 152) + *(**(v0 + 152) + 136));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = StartSharingFlow.shareTarget(_:);

  return MEMORY[0x2821BB5D0](v0 + 16, v2, v3);
}

{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = StartSharingFlow.shareTarget(_:);
  }

  else
  {
    v2 = StartSharingFlow.shareTarget(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v29 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[27];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = &unk_266BE9000;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v6 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v9 = v0[24];
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v28);
    *(v6 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v7 = v11;
    _os_log_impl(&dword_266B9E000, v3, v4, "%s: Error producing or outputting InterstitialStartingScreenSharing dialog: %@", v6, 0x16u);
    outlined destroy of SharingResponse?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x26D5ED340](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D5ED340](v8, -1, -1);
    MEMORY[0x26D5ED340](v6, -1, -1);

    outlined destroy of ShareTarget(v9, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
    v5 = &unk_266BE9000;
  }

  else
  {
    v12 = v0[24];

    outlined destroy of ShareTarget(v12, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.default);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = v5[87];
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v28);
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v28);
    _os_log_impl(&dword_266B9E000, v14, v15, "%s: Starting sharing target %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v17, -1, -1);
    MEMORY[0x26D5ED340](v16, -1, -1);
  }

  specialized Sharer.setScreenSharingEnabled(_:for:in:)(1, (v0[19] + *(*v0[19] + 120)));
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v28);
    _os_log_impl(&dword_266B9E000, v18, v19, "%s: Successfully shared target", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D5ED340](v21, -1, -1);
    MEMORY[0x26D5ED340](v20, -1, -1);
  }

  v22 = v0[21];
  v23 = v0[22];
  v24 = v0[19];
  swift_storeEnumTagMultiPayload();
  v25 = *(*v24 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v24 + v25, v22, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v23, v24 + v25);
  swift_endAccess();
  specialized SharingFlow.state.didset(v22);
  outlined destroy of ShareTarget(v22, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined destroy of ShareTarget(v23, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  static ExecuteResponse.ongoing(requireInput:)();

  v26 = v0[1];

  return v26();
}

{
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = StartSharingFlow.shareTarget(_:);

  return MEMORY[0x282200480](3000000000);
}

{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = StartSharingFlow.shareTarget(_:);
  }

  else
  {
    v2 = StartSharingFlow.shareTarget(_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v18 = v0;
  v1 = v0[24];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined destroy of ShareTarget(v1, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.default);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v17);
    *(v5 + 12) = 2080;
    *(v5 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v17);
    _os_log_impl(&dword_266B9E000, v3, v4, "%s: Starting sharing target %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v6, -1, -1);
    MEMORY[0x26D5ED340](v5, -1, -1);
  }

  specialized Sharer.setScreenSharingEnabled(_:for:in:)(1, (v0[19] + *(*v0[19] + 120)));
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v17);
    _os_log_impl(&dword_266B9E000, v7, v8, "%s: Successfully shared target", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D5ED340](v10, -1, -1);
    MEMORY[0x26D5ED340](v9, -1, -1);
  }

  v11 = v0[21];
  v12 = v0[22];
  v13 = v0[19];
  swift_storeEnumTagMultiPayload();
  v14 = *(*v13 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v13 + v14, v11, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v12, v13 + v14);
  swift_endAccess();
  specialized SharingFlow.state.didset(v11);
  outlined destroy of ShareTarget(v11, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined destroy of ShareTarget(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  static ExecuteResponse.ongoing(requireInput:)();

  v15 = v0[1];

  return v15();
}

{
  v29 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[29];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = &unk_266BE9000;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v6 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v9 = v0[24];
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v28);
    *(v6 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v7 = v11;
    _os_log_impl(&dword_266B9E000, v3, v4, "%s: Error producing or outputting InterstitialStartingScreenSharing dialog: %@", v6, 0x16u);
    outlined destroy of SharingResponse?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x26D5ED340](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D5ED340](v8, -1, -1);
    MEMORY[0x26D5ED340](v6, -1, -1);

    outlined destroy of ShareTarget(v9, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
    v5 = &unk_266BE9000;
  }

  else
  {
    v12 = v0[24];

    outlined destroy of ShareTarget(v12, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.default);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = v5[87];
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v28);
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v28);
    _os_log_impl(&dword_266B9E000, v14, v15, "%s: Starting sharing target %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v17, -1, -1);
    MEMORY[0x26D5ED340](v16, -1, -1);
  }

  specialized Sharer.setScreenSharingEnabled(_:for:in:)(1, (v0[19] + *(*v0[19] + 120)));
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v28);
    _os_log_impl(&dword_266B9E000, v18, v19, "%s: Successfully shared target", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D5ED340](v21, -1, -1);
    MEMORY[0x26D5ED340](v20, -1, -1);
  }

  v22 = v0[21];
  v23 = v0[22];
  v24 = v0[19];
  swift_storeEnumTagMultiPayload();
  v25 = *(*v24 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v24 + v25, v22, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v23, v24 + v25);
  swift_endAccess();
  specialized SharingFlow.state.didset(v22);
  outlined destroy of ShareTarget(v22, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined destroy of ShareTarget(v23, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  static ExecuteResponse.ongoing(requireInput:)();

  v26 = v0[1];

  return v26();
}

{
  v29 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[31];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = &unk_266BE9000;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v6 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v9 = v0[24];
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v28);
    *(v6 + 12) = 2112;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v7 = v11;
    _os_log_impl(&dword_266B9E000, v3, v4, "%s: Error producing or outputting InterstitialStartingScreenSharing dialog: %@", v6, 0x16u);
    outlined destroy of SharingResponse?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x26D5ED340](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D5ED340](v8, -1, -1);
    MEMORY[0x26D5ED340](v6, -1, -1);

    outlined destroy of ShareTarget(v9, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
    v5 = &unk_266BE9000;
  }

  else
  {
    v12 = v0[24];

    outlined destroy of ShareTarget(v12, type metadata accessor for Responses.StartSharing.InterstitialStartingScreenSharing);
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.default);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = v5[87];
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v28);
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v28);
    _os_log_impl(&dword_266B9E000, v14, v15, "%s: Starting sharing target %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v17, -1, -1);
    MEMORY[0x26D5ED340](v16, -1, -1);
  }

  specialized Sharer.setScreenSharingEnabled(_:for:in:)(1, (v0[19] + *(*v0[19] + 120)));
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v28);
    _os_log_impl(&dword_266B9E000, v18, v19, "%s: Successfully shared target", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D5ED340](v21, -1, -1);
    MEMORY[0x26D5ED340](v20, -1, -1);
  }

  v22 = v0[21];
  v23 = v0[22];
  v24 = v0[19];
  swift_storeEnumTagMultiPayload();
  v25 = *(*v24 + 104);
  swift_beginAccess();
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v24 + v25, v22, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StartSharingFlow.StartSharingFlowState(v23, v24 + v25);
  swift_endAccess();
  specialized SharingFlow.state.didset(v22);
  outlined destroy of ShareTarget(v22, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined destroy of ShareTarget(v23, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  static ExecuteResponse.ongoing(requireInput:)();

  v26 = v0[1];

  return v26();
}

uint64_t StartSharingFlow.makeResponseForStartSharingError(_:)(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      started = type metadata accessor for Responses.StartSharing.AlreadySharingTarget(0);
      v13 = started;
      v14 = &protocol witness table for Responses.StartSharing.AlreadySharingTarget;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
      *boxed_opaque_existential_1 = 0x80;
      static DialogPhase.completion.getter();
      goto LABEL_7;
    case 1:
      started = type metadata accessor for Responses.StartSharing.UnableToStartSharingTarget(0);
      v13 = started;
      v14 = &protocol witness table for Responses.StartSharing.UnableToStartSharingTarget;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
      *boxed_opaque_existential_1 = -99;
      static DialogPhase.error.getter();
LABEL_7:
      v4 = boxed_opaque_existential_1 + *(started + 24);
      *v4 = 1;
      *(v4 + 2) = 0;
      *(v4 + 3) = 0;
      *(v4 + 1) = 0;
      break;
    case 2:
      v13 = type metadata accessor for Responses.StartSharing.SingleWindowSharingUnsupported(0);
      v14 = &protocol witness table for Responses.StartSharing.SingleWindowSharingUnsupported;
      *__swift_allocate_boxed_opaque_existential_1(v12) = -100;
      static DialogPhase.completion.getter();
      break;
    default:
      v7 = type metadata accessor for Responses.StartSharing.AppNotInstalled(0);
      v13 = v7;
      v14 = &protocol witness table for Responses.StartSharing.AppNotInstalled;
      v8 = __swift_allocate_boxed_opaque_existential_1(v12);
      *v8 = -126;

      static DialogPhase.completion.getter();
      v9 = (v8 + *(v7 + 24));
      *v9 = a1;
      v9[1] = a2;
      v10 = v8 + *(v7 + 28);
      *v10 = 0;
      *(v10 + 1) = a1;
      *(v10 + 2) = a2;
      *(v10 + 3) = 0;

      break;
  }

  specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(v12);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t StartSharingFlow.executeNeedsShareTargetFlow(with:onIntentReceived:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v33 = a2;
  v34 = a4;
  v8 = *v5;
  started = type metadata accessor for Responses.StartSharing.ShareRequestCancelled(0);
  MEMORY[0x28223BE20](started, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = -101;
  static DialogPhase.canceled.getter();
  outlined init with copy of ResponseExecuting(a1, v40);
  *(&v38 + 1) = started;
  v39 = &protocol witness table for Responses.StartSharing.ShareRequestCancelled;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
  outlined init with copy of StartSharingFlow.StartSharingFlowState(v12, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.ShareRequestCancelled);
  outlined init with copy of ResponseExecuting(v5 + *(*v5 + 128), v36);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v36, v36[3]);
  MEMORY[0x28223BE20](v14, v14);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v19 = type metadata accessor for ResponseExecutor();
  v35[3] = v19;
  v35[4] = &protocol witness table for ResponseExecutor;
  v35[0] = v18;
  type metadata accessor for NeedsShareTargetFlowStrategy();
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v35, v19);
  MEMORY[0x28223BE20](v21, v21);
  v23 = (&v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  *(v20 + 120) = v19;
  *(v20 + 128) = &protocol witness table for ResponseExecutor;
  *(v20 + 96) = v25;
  *(v20 + 136) = 0u;
  *(v20 + 152) = 0u;
  *(v20 + 168) = 0;
  outlined init with take of ConversationParticipant(v40, v20 + 16);
  v26 = v38;
  *(v20 + 56) = v37;
  *(v20 + 72) = v26;
  *(v20 + 88) = v39;
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  outlined init with copy of ResponseExecuting(v5 + *(*v5 + 136), v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal25PromptForValueFlowWrapperCyAA016NeedsShareTargetG8StrategyCGMd, &_s19SiriExpanseInternal25PromptForValueFlowWrapperCyAA016NeedsShareTargetG8StrategyCGMR);
  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  outlined init with copy of ResponseExecuting(v40, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow014PromptForValueC5AsyncCy0A15ExpanseInternal13SharingIntent_pSgGMd, _s11SiriKitFlow014PromptForValueC5AsyncCy0A15ExpanseInternal13SharingIntent_pSgGMR);
  swift_allocObject();
  lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy, type metadata accessor for NeedsShareTargetFlowStrategy, "!:d\x1B");

  v28 = PromptForValueFlowAsync.init<A>(strategy:outputPublisher:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  *(v27 + 24) = v28;
  *&v40[0] = v27;
  v29 = swift_allocObject();
  v30 = v33;
  v29[2] = v5;
  v29[3] = v30;
  v29[4] = a3;
  v29[5] = v8;
  lazy protocol witness table accessor for type PromptForValueFlowWrapper<NeedsShareTargetFlowStrategy> and conformance PromptForValueFlowWrapper<A>();

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  return outlined destroy of ShareTarget(v12, type metadata accessor for Responses.StartSharing.ShareRequestCancelled);
}

uint64_t closure #1 in StartSharingFlow.executeNeedsShareTargetFlow(with:onIntentReceived:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{

  specialized PromptManaging.processPromptFlowExitValue<A>(_:onValueReceived:)(a1, a2, a2, a3, a4);
}

uint64_t StartSharingFlow.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StartSharingFlow.shareTargetResolver));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StartSharingFlow.sharer));
  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StartSharingFlow.sharePlayHelper));
}

uint64_t StartSharingFlow.__deallocating_deinit()
{

  outlined destroy of ShareTarget(v0 + *(*v0 + 104), type metadata accessor for StartSharingFlow.StartSharingFlowState);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 112)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 120)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 128)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 136)));
  v1 = direct field offset for StartSharingFlow.shareTargetResolver;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v1));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StartSharingFlow.sharer));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StartSharingFlow.sharePlayHelper));

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

void type metadata completion function for StartSharingFlow.StartSharingFlowState(uint64_t a1)
{
  type metadata accessor for (needsValueCount: Int)();
  if (v1 <= 0x3F)
  {
    type metadata accessor for (ShareTarget, recipients: PermittedRecipients, needsValueCount: Int, isShareInCallRequest: Bool)(319, v1);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (requestedTarget: ShareTarget, resolvedTarget: ResolvedShareTarget, recipients: PermittedRecipients)(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Error();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for (needsValueCount: Int)()
{
  result = lazy cache variable for type metadata for (needsValueCount: Int);
  if (!lazy cache variable for type metadata for (needsValueCount: Int))
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &lazy cache variable for type metadata for (needsValueCount: Int));
  }

  return result;
}

void type metadata accessor for (ShareTarget, recipients: PermittedRecipients, needsValueCount: Int, isShareInCallRequest: Bool)(uint64_t a1, uint64_t a2)
{
  if (!lazy cache variable for type metadata for (ShareTarget, recipients: PermittedRecipients, needsValueCount: Int, isShareInCallRequest: Bool))
  {
    MEMORY[0x28223BE20](a1, a2);
    type metadata accessor for ShareTarget(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (ShareTarget, recipients: PermittedRecipients, needsValueCount: Int, isShareInCallRequest: Bool));
    }
  }
}

void type metadata accessor for (requestedTarget: ShareTarget, resolvedTarget: ResolvedShareTarget, recipients: PermittedRecipients)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (requestedTarget: ShareTarget, resolvedTarget: ResolvedShareTarget, recipients: PermittedRecipients))
  {
    type metadata accessor for ShareTarget(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (requestedTarget: ShareTarget, resolvedTarget: ResolvedShareTarget, recipients: PermittedRecipients));
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriExpanseInternal16StartSharingFlowC0deF5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for StartSharingFlow.StartSharingFlowError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for StartSharingFlow.StartSharingFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for StartSharingFlow.StartSharingFlowError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for StartSharingFlow.StartSharingFlowState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState, type metadata accessor for StartSharingFlow.StartSharingFlowState, &protocol conformance descriptor for StartSharingFlow.StartSharingFlowState);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(&lazy protocol witness table cache variable for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState, type metadata accessor for StartSharingFlow.StartSharingFlowState, &protocol conformance descriptor for StartSharingFlow.StartSharingFlowState);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type StartSharingFlow.StartSharingFlowState and conformance StartSharingFlow.StartSharingFlowState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined consume of StartSharingFlow.StartSharingFlowError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t outlined init with take of ShareTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareTarget(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ShareTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of StartSharingFlow.StartSharingFlowError(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t outlined init with copy of StartSharingFlow.StartSharingFlowState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266BDF95C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266BDF9A0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t lazy protocol witness table accessor for type PromptForValueFlowWrapper<NeedsShareTargetFlowStrategy> and conformance PromptForValueFlowWrapper<A>()
{
  result = lazy protocol witness table cache variable for type PromptForValueFlowWrapper<NeedsShareTargetFlowStrategy> and conformance PromptForValueFlowWrapper<A>;
  if (!lazy protocol witness table cache variable for type PromptForValueFlowWrapper<NeedsShareTargetFlowStrategy> and conformance PromptForValueFlowWrapper<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriExpanseInternal25PromptForValueFlowWrapperCyAA016NeedsShareTargetG8StrategyCGMd, &_s19SiriExpanseInternal25PromptForValueFlowWrapperCyAA016NeedsShareTargetG8StrategyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptForValueFlowWrapper<NeedsShareTargetFlowStrategy> and conformance PromptForValueFlowWrapper<A>);
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in StartSharingFlow.executeNeedsShareTargetFlow(with:onIntentReceived:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v10 = MEMORY[0x28223BE20](started, v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = (v31 - v14);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.default);
  outlined init with copy of SharingIntent?(a1, v40);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v31[1] = a4;
    v32 = a3;
    v33 = started;
    v34 = v15;
    v35 = v12;
    v36 = a2;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, &v37);
    *(v19 + 12) = 2080;
    outlined init with copy of SharingIntent?(v40, &v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    outlined destroy of SharingResponse?(v40, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v37);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_266B9E000, v17, v18, "%s: needs value flow succeeded with intent %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v20, -1, -1);
    MEMORY[0x26D5ED340](v19, -1, -1);

    v12 = v35;
    a2 = v36;
    v15 = v34;
    a3 = v32;
  }

  else
  {

    outlined destroy of SharingResponse?(v40, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  }

  outlined init with copy of SharingIntent?(a1, &v38);
  if (v39)
  {
    outlined init with take of ConversationParticipant(&v38, v40);
    a3(v40);
    return __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    outlined destroy of SharingResponse?(&v38, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40[0] = v29;
      *v28 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingFlow.typeName, qword_2800C0EB0, v40);
      _os_log_impl(&dword_266B9E000, v26, v27, "%s: Encountered a nil intent - this should never happen", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x26D5ED340](v29, -1, -1);
      MEMORY[0x26D5ED340](v28, -1, -1);
    }

    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    *v15 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v30 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StartSharingFlow.StartSharingFlowState(a2 + v30, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StartSharingFlow.StartSharingFlowState(v15, a2 + v30);
    swift_endAccess();
    specialized SharingFlow.state.didset(v12);
    outlined destroy of ShareTarget(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    return outlined destroy of ShareTarget(v15, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  }
}

uint64_t outlined init with copy of SharingIntent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of StartSharingTargetResolution(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t outlined consume of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return outlined consume of StartSharingTargetResolution(result, a2, a3, BYTE1(a3));
  }

  return result;
}

uint64_t outlined consume of StartSharingTargetResolution(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t outlined copy of Result<StartSharingTargetResolution, StartSharingTargetResolutionError>(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return outlined copy of StartSharingTargetResolution(result, a2, a3, BYTE1(a3));
  }

  return result;
}

uint64_t sub_266BE0030()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_266BE028C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266BE02C4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_266BE03B4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t UsoEntity_common_AttachmentType.DefinedValues.preferSharingInCall.getter()
{
  v1 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v20 - v8;
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20 - v11;
  v13 = *MEMORY[0x277D5EF30];
  v23 = *(v2 + 104);
  v23(&v20 - v11, v13, v1);
  lazy protocol witness table accessor for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues();
  v22 = v0;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v26 == v24 && v27 == v25)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v15 = *(v2 + 8);
  v15(v12, v1);

  if (v14)
  {
    goto LABEL_10;
  }

  v23(v9, *MEMORY[0x277D5EF38], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v26 == v24 && v27 == v25)
  {
    v15(v9, v1);

LABEL_10:
    v17 = 1;
    return v17 & 1;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v15(v9, v1);

  if (v16)
  {
    goto LABEL_10;
  }

  v19 = v21;
  v23(v21, *MEMORY[0x277D5EF68], v1);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v26 == v24 && v27 == v25)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v15(v19, v1);

  return v17 & 1;
}

unint64_t ValidateStartSharingIntentFlow.ValidationResult.description.getter(char a1)
{
  if (a1 == 2)
  {
    return 0xD000000000000015;
  }

  _StringGuts.grow(_:)(33);

  if (a1)
  {
    v3 = 0x4D616956646E6573;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (a1)
  {
    v4 = 0xEF73656761737365;
  }

  else
  {
    v4 = 0x8000000266BEE390;
  }

  MEMORY[0x26D5EC8A0](v3, v4);

  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason(unint64_t *a1@<X8>)
{
  v2 = 0x8000000266BEE390;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x4D616956646E6573;
    v2 = 0xEF73656761737365;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4D616956646E6573;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = 0x8000000266BEE390;
  }

  else
  {
    v4 = 0xEF73656761737365;
  }

  if (*a2)
  {
    v5 = 0x4D616956646E6573;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*a2)
  {
    v6 = 0xEF73656761737365;
  }

  else
  {
    v6 = 0x8000000266BEE390;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason()
{
  if (*v0)
  {
    return 0x4D616956646E6573;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t ValidateStartSharingIntentFlow.execute()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for ShareTarget(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](ValidateStartSharingIntentFlow.execute(), 0, 0);
}

uint64_t ValidateStartSharingIntentFlow.execute()()
{
  v30 = v0;
  v1 = v0[3];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  if ((*(v3 + 200))(v2, v3) & 1) != 0 && (v5 = v0[5], v4 = v0[6], v6 = v1[6], v7 = v1[7], __swift_project_boxed_opaque_existential_1(v1 + 3, v6), (*(v7 + 192))(v6, v7), swift_storeEnumTagMultiPayload(), v8 = specialized static ShareTarget.== infix(_:_:)(v4, v5), outlined destroy of ShareTarget(v5), outlined destroy of ShareTarget(v4), (v8))
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.default);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v29 = v13;
      *v12 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateStartSharingIntentFlow.typeName, *algn_2800C0F88, &v29);
      _os_log_impl(&dword_266B9E000, v10, v11, "%s: intent cannot be handled as a screen sharing or app casting intent because it is a SharePlay request with no target", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x26D5ED340](v13, -1, -1);
      MEMORY[0x26D5ED340](v12, -1, -1);
    }

    v14 = 0;
  }

  else
  {
    v15 = v1[6];
    v16 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v15);
    if ((*(v16 + 216))(v15, v16))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.default);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29 = v21;
        *v20 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateStartSharingIntentFlow.typeName, *algn_2800C0F88, &v29);
        _os_log_impl(&dword_266B9E000, v18, v19, "%s: intent cannot be handled as a screen sharing or app casting intent because it should use message sending", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x26D5ED340](v21, -1, -1);
        MEMORY[0x26D5ED340](v20, -1, -1);
      }

      v14 = 1;
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.default);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v29 = v26;
        *v25 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateStartSharingIntentFlow.typeName, *algn_2800C0F88, &v29);
        _os_log_impl(&dword_266B9E000, v23, v24, "%s: intent to be handled as a screen sharing or app casting intent", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x26D5ED340](v26, -1, -1);
        MEMORY[0x26D5ED340](v25, -1, -1);
      }

      v14 = 2;
    }
  }

  *(v0[3] + 16) = v14;
  static ExecuteResponse.complete()();

  v27 = v0[1];

  return v27();
}

uint64_t protocol witness for Flow.execute() in conformance ValidateStartSharingIntentFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return ValidateStartSharingIntentFlow.execute()(a1);
}

BOOL specialized static ValidateStartSharingIntentFlow.ValidationResult.== infix(_:_:)(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0x4D616956646E6573;
  }

  else
  {
    v4 = 0xD000000000000014;
  }

  if (v3)
  {
    v5 = 0x8000000266BEE390;
  }

  else
  {
    v5 = 0xEF73656761737365;
  }

  if (a2)
  {
    v6 = 0x4D616956646E6573;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (a2)
  {
    v7 = 0xEF73656761737365;
  }

  else
  {
    v7 = 0x8000000266BEE390;
  }

  if (v4 == v6 && v5 == v7)
  {

    return 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v8 & 1;
  }
}

uint64_t specialized ValidateStartSharingIntentFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.default);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ValidateStartSharingIntentFlow.typeName, *algn_2800C0F88, &v18);
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input();
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_266B9E000, v8, v9, "%s: received input %s - this flow should never receive input, ignoring it...", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v11, -1, -1);
    MEMORY[0x26D5ED340](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason and conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason()
{
  result = lazy protocol witness table cache variable for type ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason and conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason;
  if (!lazy protocol witness table cache variable for type ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason and conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason and conformance ValidateStartSharingIntentFlow.ValidationResult.ValidationFailureReason);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PermittedRecipients(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PermittedRecipients(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PermittedRecipients(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t PermittedRecipients.description.getter(uint64_t a1)
{
  v1 = 0xD000000000000013;
  if (a1)
  {
    _StringGuts.grow(_:)(33);

    v3 = type metadata accessor for INPerson();
    v4 = MEMORY[0x26D5EC930](a1, v3);
    MEMORY[0x26D5EC8A0](v4);

    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    return 0xD00000000000001ELL;
  }

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PermittedRecipients(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8INPersonC_Tt1g5(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8INPersonC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for INPerson();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26D5ECB50](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26D5ECB50](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = __CocoaSet.count.getter();
  }

  result = __CocoaSet.count.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t specialized logIfThrows<A>(message:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 160) = a6;
  *(v7 + 128) = a5;
  *(v7 + 136) = a7;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  return MEMORY[0x2822009F8](specialized logIfThrows<A>(message:_:), 0, 0);
}

uint64_t specialized logIfThrows<A>(message:_:)()
{
  v1 = *(v0 + 136);
  outlined init with copy of ResponseExecuting(v1 + 16, v0 + 16);
  outlined init with copy of ResponseExecuting(v1 + 96, v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = specialized logIfThrows<A>(message:_:);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 96);
  v6 = *(v0 + 160);

  return ExpanseUIModelConverter.convert(utils:)(v5, v0 + 16, v3, v4, v6);
}

{
  v2 = *v1;
  *(v2 + 152) = v0;

  outlined destroy of ExpanseUIModelConverter.Utils(v2 + 16);
  if (v0)
  {
    v3 = specialized logIfThrows<A>(message:_:);
  }

  else
  {
    v3 = specialized logIfThrows<A>(message:_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 160);
  v5 = type metadata accessor for ExpanseUIModel(0);
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  outlined consume of ExpanseUIModelConverter(v2, v1, v4);

  v6 = *(v0 + 8);

  return v6();
}

{
  v23 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.default);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315394;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v22);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_266B9E000, v4, v5, "%s: %@", v10, 0x16u);
    outlined destroy of NSObject?(v11);
    MEMORY[0x26D5ED340](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D5ED340](v12, -1, -1);
    MEMORY[0x26D5ED340](v10, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 128);
  v16 = *(v0 + 120);
  v17 = *(v0 + 96);
  v18 = *(v0 + 160);
  v19 = type metadata accessor for ExpanseUIModel(0);
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  outlined consume of ExpanseUIModelConverter(v16, v15, v18);

  v20 = *(v0 + 8);

  return v20();
}

void specialized SharingFlow.state.didset(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  v9 = v5;
  v11 = a2(0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v35 - v17;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.default);
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a1, v18, a3);
  swift_retain_n();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v22 = 136315650;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v9 + 16), *(v9 + 24), &v37);
    *(v22 + 12) = 2080;
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v18, v15, a3);
    v23 = _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v18, a4);
    v24 = a5(v23);
    v26 = v25;
    _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v15, a4);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v37);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2080;
    v28 = *(*v9 + 104);
    swift_beginAccess();
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v9 + v28, v15, a3);

    v30 = a5(v29);
    v32 = v31;

    _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v15, a4);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v37);

    *(v22 + 24) = v33;
    _os_log_impl(&dword_266B9E000, v20, v21, "%s: transitioned from state %s to %s", v22, 0x20u);
    v34 = v36;
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v34, -1, -1);
    MEMORY[0x26D5ED340](v22, -1, -1);
  }

  else
  {

    _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v18, a4);
  }
}

void specialized SharingFlow.intent.didset()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.default);

  v16 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17 = v4;
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 16), *(v0 + 24), &v17);
    *(v3 + 12) = 2080;
    v5 = (v0 + *(*v0 + 112));
    swift_beginAccess();
    v6 = v5[3];
    v7 = __swift_project_boxed_opaque_existential_1(v5, v6);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7, v7);
    v10 = &v15 - v9;
    (*(v8 + 16))(&v15 - v9);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v8 + 8))(v10, v6);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v17);

    *(v3 + 14) = v14;
    _os_log_impl(&dword_266B9E000, v16, v2, "%s: intent set to: %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v4, -1, -1);
    MEMORY[0x26D5ED340](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v6 = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6 - 8, v9);
  v11 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - v13;
  outlined init with copy of ResponseExecuting(v3 + *(*v3 + 120), v22);
  type metadata accessor for ValidateCallStatusFlow();
  v15 = swift_allocObject();
  *(v15 + 16) = 5;
  outlined init with take of ConversationParticipant(v22, v15 + 24);
  *&v22[0] = v15;
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a1, v14, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a2, v11, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  v16 = *(v7 + 80);
  v17 = (v16 + 24) & ~v16;
  v18 = (v8 + v16 + v17) & ~v16;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  outlined init with take of ShareTarget(v14, v19 + v17, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  outlined init with take of ShareTarget(v11, v19 + v18, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type ValidateCallStatusFlow and conformance ValidateCallStatusFlow, type metadata accessor for ValidateCallStatusFlow, &protocol conformance descriptor for ValidateCallStatusFlow);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

{
  v21 = a3;
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v7 = *(started - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](started - 8, v9);
  v11 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - v13;
  outlined init with copy of ResponseExecuting(v3 + *(*v3 + 120), v22);
  type metadata accessor for ValidateCallStatusFlow();
  v15 = swift_allocObject();
  *(v15 + 16) = 5;
  outlined init with take of ConversationParticipant(v22, v15 + 24);
  *&v22[0] = v15;
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a1, v14, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a2, v11, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  v16 = *(v7 + 80);
  v17 = (v16 + 24) & ~v16;
  v18 = (v8 + v16 + v17) & ~v16;
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  outlined init with take of ShareTarget(v14, v19 + v17, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  outlined init with take of ShareTarget(v11, v19 + v18, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type ValidateCallStatusFlow and conformance ValidateCallStatusFlow, type metadata accessor for ValidateCallStatusFlow, &protocol conformance descriptor for ValidateCallStatusFlow);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v10, v13);
  v15 = v34 - v14 + 16;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        *v15 = 0;
        goto LABEL_13;
      }

      v16 = 1;
    }

    else
    {
      v16 = 4;
    }

    *v15 = v16;
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v17 = *(*a2 + 112);
    swift_beginAccess();
    outlined init with copy of ResponseExecuting(a2 + v17, v34);
    v18 = v35;
    v19 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v20 = (*(v19 + 200))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      outlined init with copy of ResponseExecuting(a2 + v17, v34);
      v27 = v35;
      v28 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v29 = (*(v28 + 224))(v27, v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      if ((v29 & 1) == 0)
      {
        outlined init with copy of StopSharingFlow.StopSharingFlowState(a4, v15, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        v30 = *(*a2 + 104);
        swift_beginAccess();
        v31 = a2 + v30;
        v32 = v12;
        goto LABEL_21;
      }

      v21 = 2;
    }

    *v15 = v21;
    swift_storeEnumTagMultiPayload();
    v30 = *(*a2 + 104);
    swift_beginAccess();
    v31 = a2 + v30;
    v32 = v12;
LABEL_21:
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v31, v32, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StopSharingFlow.StopSharingFlowState(v15, a2 + v30, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    goto LABEL_15;
  }

  if (a1 != 4)
  {
    outlined init with copy of StopSharingFlow.StopSharingFlowState(a3, v34 - v14 + 16, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    v26 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StopSharingFlow.StopSharingFlowState(a2 + v26, v12, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    swift_beginAccess();
    v23 = a2 + v26;
    v24 = v15;
    goto LABEL_14;
  }

  lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
  *v15 = swift_allocError();
LABEL_13:
  swift_storeEnumTagMultiPayload();
  v22 = *(*a2 + 104);
  swift_beginAccess();
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a2 + v22, v12, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  swift_beginAccess();
  v23 = a2 + v22;
  v24 = v15;
LABEL_14:
  outlined assign with copy of StopSharingFlow.StopSharingFlowState(v24, v23, type metadata accessor for StopSharingFlow.StopSharingFlowState);
LABEL_15:
  swift_endAccess();
  specialized SharingFlow.state.didset(v12, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v12, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  return _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v15, type metadata accessor for StopSharingFlow.StopSharingFlowState);
}

{
  started = type metadata accessor for StartSharingFlow.StartSharingFlowState(0);
  v10 = MEMORY[0x28223BE20](started, v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v10, v13);
  v15 = v34 - v14 + 16;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        *v15 = 0;
        goto LABEL_13;
      }

      v16 = 1;
    }

    else
    {
      v16 = 4;
    }

    *v15 = v16;
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v17 = *(*a2 + 112);
    swift_beginAccess();
    outlined init with copy of ResponseExecuting(a2 + v17, v34);
    v18 = v35;
    v19 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v20 = (*(v19 + 200))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      outlined init with copy of ResponseExecuting(a2 + v17, v34);
      v27 = v35;
      v28 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v29 = (*(v28 + 224))(v27, v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      if ((v29 & 1) == 0)
      {
        outlined init with copy of StopSharingFlow.StopSharingFlowState(a4, v15, type metadata accessor for StartSharingFlow.StartSharingFlowState);
        v30 = *(*a2 + 104);
        swift_beginAccess();
        v31 = a2 + v30;
        v32 = v12;
        goto LABEL_21;
      }

      v21 = 2;
    }

    *v15 = v21;
    swift_storeEnumTagMultiPayload();
    v30 = *(*a2 + 104);
    swift_beginAccess();
    v31 = a2 + v30;
    v32 = v12;
LABEL_21:
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v31, v32, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StopSharingFlow.StopSharingFlowState(v15, a2 + v30, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    goto LABEL_15;
  }

  if (a1 != 4)
  {
    outlined init with copy of StopSharingFlow.StopSharingFlowState(a3, v34 - v14 + 16, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    v26 = *(*a2 + 104);
    swift_beginAccess();
    outlined init with copy of StopSharingFlow.StopSharingFlowState(a2 + v26, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
    swift_beginAccess();
    v23 = a2 + v26;
    v24 = v15;
    goto LABEL_14;
  }

  lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
  *v15 = swift_allocError();
LABEL_13:
  swift_storeEnumTagMultiPayload();
  v22 = *(*a2 + 104);
  swift_beginAccess();
  outlined init with copy of StopSharingFlow.StopSharingFlowState(a2 + v22, v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  swift_beginAccess();
  v23 = a2 + v22;
  v24 = v15;
LABEL_14:
  outlined assign with copy of StopSharingFlow.StopSharingFlowState(v24, v23, type metadata accessor for StartSharingFlow.StartSharingFlowState);
LABEL_15:
  swift_endAccess();
  specialized SharingFlow.state.didset(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState, type metadata accessor for StartSharingFlow.StartSharingFlowState, type metadata accessor for StartSharingFlow.StartSharingFlowState, StartSharingFlow.StartSharingFlowState.description.getter);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v12, type metadata accessor for StartSharingFlow.StartSharingFlowState);
  return _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v15, type metadata accessor for StartSharingFlow.StartSharingFlowState);
}

uint64_t specialized SharingFlow.makeResponseForCommonError(_:)(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v1 = type metadata accessor for Responses.Common.CallOutgoing1on1(0);
      v2 = -124;
      v3 = &protocol witness table for Responses.Common.CallOutgoing1on1;
    }

    else
    {
      v1 = type metadata accessor for Responses.Common.CallOnHold(0);
      v2 = -125;
      v3 = &protocol witness table for Responses.Common.CallOnHold;
    }
  }

  else if (a1 == 2)
  {
    v1 = type metadata accessor for Responses.Common.NotInCall(0);
    v2 = -107;
    v3 = &protocol witness table for Responses.Common.NotInCall;
  }

  else if (a1 == 3)
  {
    v1 = type metadata accessor for Responses.Common.SharePlayUnsupported(0);
    v2 = -102;
    v3 = &protocol witness table for Responses.Common.SharePlayUnsupported;
  }

  else
  {
    v1 = type metadata accessor for Responses.Common.ScreenSharingUnsupported(0);
    v2 = -103;
    v3 = &protocol witness table for Responses.Common.ScreenSharingUnsupported;
  }

  v5[3] = v1;
  v5[4] = v3;
  *__swift_allocate_boxed_opaque_existential_1(v5) = v2;
  static DialogPhase.completion.getter();
  specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.default);
  outlined init with copy of ResponseExecuting(a1, v32);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), v31);
    *(v7 + 12) = 2080;
    v9 = v33;
    v10 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v11 = (*(v10 + 8))(v9, v10);
    v12 = CATIdentifier.stringValue.getter(v11);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v31);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_266B9E000, v5, v6, "%s: Outputting %s dialog and completing flow", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v8, -1, -1);
    MEMORY[0x26D5ED340](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  outlined init with copy of ResponseExecuting(a1, v32);
  outlined init with copy of ResponseExecuting(v2 + *(*v2 + 128), v31);
  outlined init with copy of ResponseExecuting(v2 + *(*v2 + 136), v30);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v31[3]);
  MEMORY[0x28223BE20](v16, v16);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v21 = v33;
  v22 = v34;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x28223BE20](v23, v23);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  v27 = _s19SiriExpanseInternal16OutputDialogFlowC8response0G8Executor15outputPublisherAcA15SharingResponse_p_AA0L9Executing_p0a3KitF00dJ5Async_ptcfCTf4nenn_nAA0lH0C_Tt2g5Tf4enn_n(v25, v20, v30, v21, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  v32[0] = v27;
  type metadata accessor for OutputDialogFlow();
  lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type OutputDialogFlow and conformance OutputDialogFlow, type metadata accessor for OutputDialogFlow, &protocol conformance descriptor for OutputDialogFlow);
  static ExecuteResponse.complete<A>(next:)();
}

unint64_t StopSharingFlow.StopSharingFlowState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ShareTarget(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = v36 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = v36 - v16;
  outlined init with copy of StopSharingFlow.StopSharingFlowState(v1, v36 - v16, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v22 = 35;
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          return 0xD000000000000010;
        }

        v22 = 46;
      }

      return v22 | 0xD000000000000010;
    }

    if (EnumCaseMultiPayload == 5)
    {
      return 0x696C616974696E69;
    }

    else
    {
      return 0x6E696D726F666572;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v30 = *v17;
        v37 = 0;
        v38 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);

        v37 = 0xD00000000000001BLL;
        v38 = 0x8000000266BEF9A0;
        if (v30)
        {
          v31 = 0xD000000000000012;
        }

        else
        {
          v31 = 0xD000000000000020;
        }

        if (v30)
        {
          v32 = "failedWithStopSharingError(";
        }

        else
        {
          v32 = "nothingBeingShared";
        }

        MEMORY[0x26D5EC8A0](v31, v32 | 0x8000000000000000);
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          v33 = *v17;
          v37 = 0;
          v38 = 0xE000000000000000;
          _StringGuts.grow(_:)(26);
          MEMORY[0x26D5EC8A0](0xD000000000000017, 0x8000000266BEE890);
          v36[1] = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
          _print_unlocked<A, B>(_:_:)();
          MEMORY[0x26D5EC8A0](41, 0xE100000000000000);

          return v37;
        }

        v19 = 0xD000000000000010;
        v20 = *v17;
        v37 = 0;
        v38 = 0xE000000000000000;
        _StringGuts.grow(_:)(25);

        v37 = 0xD000000000000016;
        v38 = 0x8000000266BEF640;
        if (v20 <= 1)
        {
          if (v20)
          {
            v21 = 0x8000000266BEE350;
          }

          else
          {
            v21 = 0xEA0000000000646CLL;
            v19 = 0x6F486E4F6C6C6163;
          }
        }

        else if (v20 == 2)
        {
          v21 = 0xE90000000000006CLL;
          v19 = 0x6C61436E49746F6ELL;
        }

        else if (v20 == 3)
        {
          v21 = 0x8000000266BEE390;
          v19 = 0xD000000000000014;
        }

        else
        {
          v21 = 0x8000000266BEE6B0;
          v19 = 0xD000000000000012;
        }

        MEMORY[0x26D5EC8A0](v19, v21);
      }

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      return v37;
    }

    if (EnumCaseMultiPayload)
    {
      outlined init with take of ShareTarget(v17, v5, type metadata accessor for ShareTarget);
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      v37 = 0xD000000000000010;
      v38 = 0x8000000266BEF750;
      v34 = ShareTarget.description.getter();
      MEMORY[0x26D5EC8A0](v34);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      v35 = v37;
      _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v5, type metadata accessor for ShareTarget);
      return v35;
    }

    else
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
      v24 = swift_projectBox();
      v25 = *(v23 + 48);
      outlined init with copy of StopSharingFlow.StopSharingFlowState(v24, v14, type metadata accessor for StopSharingFlow.StopSharingFlowState);
      outlined init with copy of StopSharingFlow.StopSharingFlowState(v24 + v25, v10, type metadata accessor for StopSharingFlow.StopSharingFlowState);
      v37 = 0;
      v38 = 0xE000000000000000;
      _StringGuts.grow(_:)(78);
      MEMORY[0x26D5EC8A0](0xD00000000000002ALL, 0x8000000266BEF840);
      v26 = StopSharingFlow.StopSharingFlowState.description.getter();
      MEMORY[0x26D5EC8A0](v26);

      MEMORY[0x26D5EC8A0](0xD00000000000001FLL, 0x8000000266BEF870);
      v27 = StopSharingFlow.StopSharingFlowState.description.getter();
      MEMORY[0x26D5EC8A0](v27);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      v28 = v37;
      _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v10, type metadata accessor for StopSharingFlow.StopSharingFlowState);
      _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v14, type metadata accessor for StopSharingFlow.StopSharingFlowState);

      return v28;
    }
  }
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance StopSharingFlow.StopSharingFlowError()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t StopSharingFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.default);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v18);
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_266B9E000, v8, v9, "%s: received input %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v11, -1, -1);
    MEMORY[0x26D5ED340](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t StopSharingFlow.execute()(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  type metadata accessor for ShareTarget(0);
  v2[51] = swift_task_alloc();
  v2[52] = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](StopSharingFlow.execute(), 0, 0);
}

uint64_t StopSharingFlow.execute()()
{
  v101 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 400);
  v3 = *(*v2 + 104);
  swift_beginAccess();
  outlined init with copy of StopSharingFlow.StopSharingFlowState(v2 + v3, v1, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v28 = *(v0 + 424);
        v27 = *(v0 + 432);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
        v30 = swift_allocBox();
        v32 = v31;
        v33 = *(v29 + 48);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
        *(v32 + v33) = swift_allocError();
        swift_storeEnumTagMultiPayload();
        *v27 = v30;
        swift_storeEnumTagMultiPayload();
        outlined init with copy of StopSharingFlow.StopSharingFlowState(v2 + v3, v28, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        swift_beginAccess();
        outlined assign with copy of StopSharingFlow.StopSharingFlowState(v27, v2 + v3, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        swift_endAccess();
        specialized SharingFlow.state.didset(v28, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
        _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v28, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v27, type metadata accessor for StopSharingFlow.StopSharingFlowState);
      }

      else
      {
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        __swift_project_value_buffer(v68, static Logger.default);

        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v100 = v72;
          *v71 = 136315394;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          v73 = *(v0 + 400);
          *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v100);
          *(v71 + 12) = 2080;
          v74 = *(*v73 + 112);
          swift_beginAccess();
          outlined init with copy of ResponseExecuting(v73 + v74, v0 + 216);
          __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
          v75 = dispatch thunk of CustomStringConvertible.description.getter();
          v77 = v76;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
          v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v100);

          *(v71 + 14) = v78;
          _os_log_impl(&dword_266B9E000, v69, v70, "%s: Intent before reformation: %s", v71, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D5ED340](v72, -1, -1);
          MEMORY[0x26D5ED340](v71, -1, -1);
        }

        v79 = *(v0 + 400) + *(**(v0 + 400) + 112);
        swift_beginAccess();
        v80 = *(v79 + 24);
        v81 = *(v79 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
        LOBYTE(v80) = (*(v81 + 232))(v80, v81);
        swift_endAccess();
        specialized SharingFlow.intent.didset();
        if (v80)
        {

          v82 = Logger.logObject.getter();
          v83 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v100 = v85;
            *v84 = 136315394;
            if (one-time initialization token for typeName != -1)
            {
              swift_once();
            }

            *(v84 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v100);
            *(v84 + 12) = 2080;
            outlined init with copy of ResponseExecuting(v79, v0 + 176);
            __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
            v86 = dispatch thunk of CustomStringConvertible.description.getter();
            v88 = v87;
            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
            v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v100);

            *(v84 + 14) = v89;
            _os_log_impl(&dword_266B9E000, v82, v83, "%s: Intent after reformation: %s", v84, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D5ED340](v85, -1, -1);
            MEMORY[0x26D5ED340](v84, -1, -1);
          }
        }

        else
        {
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v100 = v93;
            *v92 = 136315138;
            if (one-time initialization token for typeName != -1)
            {
              swift_once();
            }

            *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v100);
            _os_log_impl(&dword_266B9E000, v90, v91, "%s: Intent unchanged by reformation", v92, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v93);
            MEMORY[0x26D5ED340](v93, -1, -1);
            MEMORY[0x26D5ED340](v92, -1, -1);
          }
        }

        v95 = *(v0 + 424);
        v94 = *(v0 + 432);
        outlined init with copy of ResponseExecuting(v79, v0 + 136);
        v96 = *(v0 + 160);
        v97 = *(v0 + 168);
        __swift_project_boxed_opaque_existential_1((v0 + 136), v96);
        (*(v97 + 192))(v96, v97);
        swift_storeEnumTagMultiPayload();
        outlined init with copy of StopSharingFlow.StopSharingFlowState(v2 + v3, v95, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        swift_beginAccess();
        outlined assign with copy of StopSharingFlow.StopSharingFlowState(v94, v2 + v3, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        swift_endAccess();
        specialized SharingFlow.state.didset(v95, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
        _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v95, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v94, type metadata accessor for StopSharingFlow.StopSharingFlowState);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      }

      static ExecuteResponse.ongoing(requireInput:)();
    }

    else if (EnumCaseMultiPayload == 7)
    {
      StopSharingFlow.stopSharingTarget(_:)(*(v0 + 392));
    }

    else if (EnumCaseMultiPayload == 8)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.default);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v100 = v19;
        *v18 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v100);
        *(v18 + 12) = 2080;
        *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, &v100);
        _os_log_impl(&dword_266B9E000, v16, v17, "%s: Successfully stopped sharing %s; dismissing Siri and completing flow", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v19, -1, -1);
        MEMORY[0x26D5ED340](v18, -1, -1);
      }

      outlined init with copy of ResponseExecuting(*(v0 + 400) + *(**(v0 + 400) + 136), v0 + 96);
      type metadata accessor for DismissSiriFlow();
      v20 = swift_allocObject();
      outlined init with take of ConversationParticipant((v0 + 96), v20 + 16);
      *(v0 + 384) = v20;
      lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type DismissSiriFlow and conformance DismissSiriFlow, type metadata accessor for DismissSiriFlow, &protocol conformance descriptor for DismissSiriFlow);
      static ExecuteResponse.complete<A>(next:)();
    }

    else
    {
      static ExecuteResponse.complete()();
    }

    goto LABEL_83;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = **(v0 + 440);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.default);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v100 = v39;
        *v38 = 136315650;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v40 = static StopSharingFlow.typeName;
        v41 = *algn_2800C0FA8;
        *(v38 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v100);
        *(v38 + 12) = 2080;
        *(v38 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v100);
        *(v38 + 22) = 2080;
        if (v34)
        {
          v42 = 0xD000000000000012;
        }

        else
        {
          v42 = 0xD000000000000020;
        }

        if (v34)
        {
          v43 = "failedWithStopSharingError(";
        }

        else
        {
          v43 = "nothingBeingShared";
        }

        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43 | 0x8000000000000000, &v100);

        *(v38 + 24) = v44;
        _os_log_impl(&dword_266B9E000, v36, v37, "%s: %s failed with stop sharing error: %s", v38, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v39, -1, -1);
        MEMORY[0x26D5ED340](v38, -1, -1);
      }

      if (v34)
      {
        v45 = type metadata accessor for Responses.StopSharing.NothingBeingShared(0);
        v46 = -106;
        v47 = &protocol witness table for Responses.StopSharing.NothingBeingShared;
      }

      else
      {
        v45 = type metadata accessor for Responses.StopSharing.CannotUnshareRemotelyOwnedTarget(0);
        v46 = -120;
        v47 = &protocol witness table for Responses.StopSharing.CannotUnshareRemotelyOwnedTarget;
      }

      *(v0 + 80) = v45;
      *(v0 + 88) = v47;
      *__swift_allocate_boxed_opaque_existential_1((v0 + 56)) = v46;
      static DialogPhase.completion.getter();
      specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(v0 + 56);
      v63 = (v0 + 56);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v5 = **(v0 + 440);
        if (one-time initialization token for default != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        __swift_project_value_buffer(v6, static Logger.default);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v100 = v10;
          *v9 = 136315650;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          v11 = static StopSharingFlow.typeName;
          v12 = *algn_2800C0FA8;
          *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v100);
          *(v9 + 12) = 2080;
          *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v100);
          *(v9 + 22) = 2080;
          if (v5 <= 1)
          {
            if (v5)
            {
              v13 = 0x8000000266BEE350;
              v14 = 0xD000000000000010;
            }

            else
            {
              v13 = 0xEA0000000000646CLL;
              v14 = 0x6F486E4F6C6C6163;
            }
          }

          else if (v5 == 2)
          {
            v13 = 0xE90000000000006CLL;
            v14 = 0x6C61436E49746F6ELL;
          }

          else if (v5 == 3)
          {
            v13 = 0x8000000266BEE390;
            v14 = 0xD000000000000014;
          }

          else
          {
            v14 = 0xD000000000000012;
            v13 = 0x8000000266BEE6B0;
          }

          v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v100);

          *(v9 + 24) = v98;
          _os_log_impl(&dword_266B9E000, v7, v8, "%s: %s failed with common error: %s", v9, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26D5ED340](v10, -1, -1);
          MEMORY[0x26D5ED340](v9, -1, -1);
        }

        specialized SharingFlow.makeResponseForCommonError(_:)(v5);
        goto LABEL_83;
      }

      v48 = **(v0 + 440);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      __swift_project_value_buffer(v49, static Logger.default);
      v50 = v48;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v100 = v54;
        *v53 = 136315650;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        v55 = static StopSharingFlow.typeName;
        v56 = *algn_2800C0FA8;
        *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v100);
        *(v53 + 12) = 2080;
        *(v53 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v100);
        *(v53 + 22) = 2080;
        *(v0 + 376) = v48;
        v57 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
        v58 = String.init<A>(describing:)();
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v100);

        *(v53 + 24) = v60;
        _os_log_impl(&dword_266B9E000, v51, v52, "%s: %s failed with unknown/unexpected error: %s", v53, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v54, -1, -1);
        MEMORY[0x26D5ED340](v53, -1, -1);
      }

      v61 = type metadata accessor for Responses.Common.GenericError(0);
      *(v0 + 40) = v61;
      *(v0 + 48) = &protocol witness table for Responses.Common.GenericError;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      static DialogPhase.completion.getter();
      *boxed_opaque_existential_1 = -112;
      *(boxed_opaque_existential_1 + *(v61 + 24)) = 0;
      specialized SharingFlow.makeOutputDialogAndCompleteFlowResponse(dialogResponse:)(v0 + 16);

      v63 = (v0 + 16);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v63);
LABEL_83:

    v99 = *(v0 + 8);

    return v99();
  }

  if (!EnumCaseMultiPayload)
  {
    v21 = *(v0 + 432);
    v22 = *(v0 + 424);
    v23 = *(v0 + 392);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
    v25 = swift_projectBox();
    v26 = *(v24 + 48);
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v25, v21, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v25 + v26, v22, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    specialized SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(v21, v22, v23);
    _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v22, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v21, type metadata accessor for StopSharingFlow.StopSharingFlowState);

    goto LABEL_83;
  }

  outlined init with take of ShareTarget(*(v0 + 440), *(v0 + 408), type metadata accessor for ShareTarget);
  v64 = swift_task_alloc();
  *(v0 + 448) = v64;
  *v64 = v0;
  v64[1] = StopSharingFlow.execute();
  v65 = *(v0 + 408);
  v66 = *(v0 + 392);

  return StopSharingFlow.resolveTarget(_:)(v66, v65);
}

{

  return MEMORY[0x2822009F8](StopSharingFlow.execute(), 0, 0);
}

{
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(*(v0 + 408), type metadata accessor for ShareTarget);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StopSharingFlow.resolveTarget(_:)(uint64_t a1, uint64_t a2)
{
  v3[32] = a1;
  v3[33] = v2;
  v3[34] = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v5 = *(*v2 + 120);
  v6 = swift_task_alloc();
  v3[37] = v6;
  *v6 = v3;
  v6[1] = StopSharingFlow.resolveTarget(_:);

  return specialized ShareTargetResolver.resolveShareTargetForStopSharing(target:call:)(a2, v2 + v5);
}

uint64_t StopSharingFlow.resolveTarget(_:)(__int16 a1)
{
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](StopSharingFlow.resolveTarget(_:), 0, 0);
}

uint64_t StopSharingFlow.resolveTarget(_:)()
{
  v24 = v0;
  v1 = *(v0 + 304);
  if ((v1 & 0x100) != 0)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.default);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, &v23);
      *(v9 + 12) = 2080;
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v23);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_266B9E000, v7, v8, "%s: Target resolution failed with error %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v10, -1, -1);
      MEMORY[0x26D5ED340](v9, -1, -1);
    }

    v3 = *(v0 + 280);
    v2 = *(v0 + 288);
    v14 = *(v0 + 264);
    lazy protocol witness table accessor for type StopSharingTargetResolutionError and conformance StopSharingTargetResolutionError();
    *v2 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v15 = *(*v14 + 104);
    swift_beginAccess();
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v14 + v15, v3, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StopSharingFlow.StopSharingFlowState(v2, v14 + v15, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  }

  else
  {
    v3 = *(v0 + 280);
    v2 = *(v0 + 288);
    v4 = *(v0 + 264);
    if (v1 > 1u)
    {
      if (v1 == 2)
      {
        *v2 = 3;
      }

      else
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMd, &_s19SiriExpanseInternal15StopSharingFlowC0deF5StateO014validationPassG0_AE0h12FailFallbackG0tMR);
        v19 = swift_allocBox();
        v21 = v20;
        v22 = *(v18 + 48);
        swift_storeEnumTagMultiPayload();
        *(v21 + v22) = 2;
        swift_storeEnumTagMultiPayload();
        *v2 = v19;
      }
    }

    else if (v1)
    {
      *v2 = 0;
    }

    else
    {
      *v2 = 1;
    }

    swift_storeEnumTagMultiPayload();
    v5 = *(*v4 + 104);
    swift_beginAccess();
    outlined init with copy of StopSharingFlow.StopSharingFlowState(v4 + v5, v3, type metadata accessor for StopSharingFlow.StopSharingFlowState);
    swift_beginAccess();
    outlined assign with copy of StopSharingFlow.StopSharingFlowState(v2, v4 + v5, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  }

  swift_endAccess();
  specialized SharingFlow.state.didset(v3, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v3, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v2, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  static ExecuteResponse.ongoing(requireInput:)();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t StopSharingFlow.stopSharingTarget(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StopSharingFlow.StopSharingFlowState(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v23 - v10;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.default);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v23[1] = a1;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24[0] = v16;
    *v15 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, v24);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000266BEE4B0, v24);
    _os_log_impl(&dword_266B9E000, v13, v14, "%s: Stopping sharing of target %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v16, -1, -1);
    MEMORY[0x26D5ED340](v15, -1, -1);
  }

  else
  {
  }

  specialized Sharer.setScreenSharingEnabled(_:for:in:)(0, (v1 + *(*v1 + 120)));
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24[0] = v20;
    *v19 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StopSharingFlow.typeName, *algn_2800C0FA8, v24);
    _os_log_impl(&dword_266B9E000, v17, v18, "%s: Successfully stopped sharing target", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D5ED340](v20, -1, -1);
    MEMORY[0x26D5ED340](v19, -1, -1);
  }

  swift_storeEnumTagMultiPayload();
  v21 = *(*v2 + 104);
  swift_beginAccess();
  outlined init with copy of StopSharingFlow.StopSharingFlowState(v2 + v21, v8, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  swift_beginAccess();
  outlined assign with copy of StopSharingFlow.StopSharingFlowState(v11, v2 + v21, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  swift_endAccess();
  specialized SharingFlow.state.didset(v8, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v8, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v11, type metadata accessor for StopSharingFlow.StopSharingFlowState);
  return static ExecuteResponse.ongoing(requireInput:)();
}

uint64_t StopSharingFlow.__deallocating_deinit()
{

  _s19SiriExpanseInternal11ShareTargetOWOhTm_0(v0 + *(*v0 + 104), type metadata accessor for StopSharingFlow.StopSharingFlowState);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 112)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 120)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 128)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 136)));
  v1 = direct field offset for StopSharingFlow.shareTargetResolver;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v1));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + direct field offset for StopSharingFlow.sharer));

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

unint64_t type metadata completion function for StopSharingFlow.StopSharingFlowState(uint64_t a1)
{
  result = type metadata accessor for ShareTarget(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Error();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowError and conformance StopSharingFlow.StopSharingFlowError()
{
  result = lazy protocol witness table cache variable for type StopSharingFlow.StopSharingFlowError and conformance StopSharingFlow.StopSharingFlowError;
  if (!lazy protocol witness table cache variable for type StopSharingFlow.StopSharingFlowError and conformance StopSharingFlow.StopSharingFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StopSharingFlow.StopSharingFlowError and conformance StopSharingFlow.StopSharingFlowError);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for StopSharingFlow.StopSharingFlowState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, &protocol conformance descriptor for StopSharingFlow.StopSharingFlowState);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(&lazy protocol witness table cache variable for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState, type metadata accessor for StopSharingFlow.StopSharingFlowState, &protocol conformance descriptor for StopSharingFlow.StopSharingFlowState);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type StopSharingFlow.StopSharingFlowState and conformance StopSharingFlow.StopSharingFlowState(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s19SiriExpanseInternal11ShareTargetOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_266BE66D8()
{
  v1 = *(type metadata accessor for StopSharingFlow.StopSharingFlowState(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = (v0 + v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (!EnumCaseMultiPayload)
    {
    }

    goto LABEL_14;
  }

  type metadata accessor for ShareTarget(0);
  v8 = swift_getEnumCaseMultiPayload();
  if (v8 > 1)
  {
    if (v8 != 2 && v8 != 3)
    {
      goto LABEL_14;
    }

LABEL_12:

    goto LABEL_14;
  }

  if (!v8)
  {

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
    v10 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
    goto LABEL_14;
  }

  if (v8 == 1)
  {
    goto LABEL_12;
  }

LABEL_14:
  v11 = (v0 + v5);
  v12 = swift_getEnumCaseMultiPayload();
  if (v12 == 4)
  {

    goto LABEL_27;
  }

  if (v12 != 1)
  {
    if (!v12)
    {
    }

    goto LABEL_27;
  }

  type metadata accessor for ShareTarget(0);
  v13 = swift_getEnumCaseMultiPayload();
  if (v13 > 1)
  {
    if (v13 != 2 && v13 != 3)
    {
      goto LABEL_27;
    }

LABEL_25:

    goto LABEL_27;
  }

  if (!v13)
  {

    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
    v15 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
    goto LABEL_27;
  }

  if (v13 == 1)
  {
    goto LABEL_25;
  }

LABEL_27:

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t outlined init with take of ShareTarget(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(unsigned __int8 *a1)
{
  return partial apply for specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(a1, type metadata accessor for StopSharingFlow.StopSharingFlowState, specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:));
}

{
  return partial apply for specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(a1, type metadata accessor for StartSharingFlow.StartSharingFlowState, specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:));
}

uint64_t outlined init with copy of StopSharingFlow.StopSharingFlowState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266BE6AA0()
{
  v1 = *(type metadata accessor for StartSharingFlow.StartSharingFlowState(0) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = v0 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (!EnumCaseMultiPayload)
    {

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_30;
    }

    type metadata accessor for ShareTarget(0);
    v8 = swift_getEnumCaseMultiPayload();
    if (v8 > 1)
    {
      if (v8 != 2 && v8 != 3)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (!v8)
      {

        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
        v13 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
        (*(*(v13 - 8) + 8))(v6 + v12, v13);
        goto LABEL_28;
      }

      if (v8 != 1)
      {
        goto LABEL_28;
      }
    }

LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMd, &_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMR);
    goto LABEL_29;
  }

  switch(EnumCaseMultiPayload)
  {
    case 5:
      type metadata accessor for ShareTarget(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 1)
      {
        if (v9 != 2 && v9 != 3)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v9)
        {

          v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
          v11 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
          (*(*(v11 - 8) + 8))(v6 + v10, v11);
          goto LABEL_26;
        }

        if (v9 != 1)
        {
          goto LABEL_26;
        }
      }

LABEL_26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);

      goto LABEL_29;
    case 6:
      if (*(v6 + 8) < 3uLL)
      {
        break;
      }

LABEL_29:

      break;
    case 8:

      break;
  }

LABEL_30:
  v14 = v0 + v5;
  v15 = swift_getEnumCaseMultiPayload();
  if (v15 <= 4)
  {
    if (!v15)
    {

      goto LABEL_59;
    }

    if (v15 != 4)
    {
      goto LABEL_59;
    }

    type metadata accessor for ShareTarget(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 1)
    {
      if (v16 != 2 && v16 != 3)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (!v16)
      {

        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
        v21 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
        (*(*(v21 - 8) + 8))(v14 + v20, v21);
        goto LABEL_57;
      }

      if (v16 != 1)
      {
        goto LABEL_57;
      }
    }

LABEL_57:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMd, &_s19SiriExpanseInternal11ShareTargetO_AA19PermittedRecipientsO10recipientsSi15needsValueCountSb02isD13InCallRequesttMR);
    goto LABEL_58;
  }

  switch(v15)
  {
    case 5:
      type metadata accessor for ShareTarget(0);
      v17 = swift_getEnumCaseMultiPayload();
      if (v17 > 1)
      {
        if (v17 != 2 && v17 != 3)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (!v17)
        {

          v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
          v19 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
          (*(*(v19 - 8) + 8))(v14 + v18, v19);
          goto LABEL_55;
        }

        if (v17 != 1)
        {
          goto LABEL_55;
        }
      }

LABEL_55:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMd, &_s19SiriExpanseInternal11ShareTargetO09requestedE0_AA08ResolveddE0O08resolvedE0AA19PermittedRecipientsO10recipientstMR);

      goto LABEL_58;
    case 6:
      if (*(v14 + 8) < 3uLL)
      {
        break;
      }

LABEL_58:

      break;
    case 8:

      break;
  }

LABEL_59:

  return MEMORY[0x2821FE8E8](v0, v5 + v3, v2 | 7);
}

uint64_t partial apply for specialized closure #1 in SharingFlow.validateCallStatus(validationPassState:validationFailFallbackState:)(unsigned __int8 *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v3 + 16);
  v9 = *a1;
  v10 = v3 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return a3(v9, v8, v3 + v7, v10);
}

uint64_t outlined assign with copy of StopSharingFlow.StopSharingFlowState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}