id String.init(localized:defaultValue:options:table:bundle:locale:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t *a9)
{
  v119 = *MEMORY[0x1E69E9840];
  v10 = *a4;
  v11 = *a5;
  v98 = *(a5 + 8);
  v97 = *(a5 + 16);
  v100 = *(a5 + 17);
  v12 = *(a5 + 32);
  v102 = *(a5 + 24);
  v101 = *(a5 + 40);
  v13 = *a9;
  v14 = a9[1];
  StaticString.description.getter();
  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v111 = v15;
  v112 = 0;
  swift_unknownObjectRetain();
  v104 = v11;

  v107 = v14;
  v16 = v14;
  v17 = a8;
  v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v10, &v111, v13, v16);

  v106 = v13;
  swift_unknownObjectRelease();
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = [objc_opt_self() mainBundle];
  }

  v105 = v12;
  if (v12)
  {
    if (v101)
    {
      v20 = v17;

      v96 = v19;
      v21 = [v19 localizations];
      v22 = v12;
      v23 = v21;
      if (!v21)
      {
        v23 = _ContiguousArrayBuffer._asCocoaArray()();
      }

      v24 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_181218E20;
      *(v25 + 32) = v102;
      *(v25 + 40) = v22;
      v26 = [v24 preferredLocalizationsFromArray:v23 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

      swift_unknownObjectRelease();
      if (!v26)
      {
        v28 = MEMORY[0x1E69E7CC0];
        v30 = a7;
        v19 = v96;
        goto LABEL_22;
      }

      type metadata accessor for __SwiftDeferredNSArray();
      v19 = v96;
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        v31 = v26;
      }

      v32 = swift_dynamicCastClass();
      if (v32)
      {
        v28 = v32;
      }

      else
      {
        swift_unknownObjectRelease();
        [v26 copy];
        v33 = _bridgeCocoaArray<A>(_:)();
        swift_unknownObjectRelease();
        v28 = specialized _arrayForceCast<A, B>(_:)(v33);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_181218E20;
      *(v28 + 32) = v102;
      *(v28 + 40) = v12;
      v29 = v17;
    }
  }

  else
  {
    v27 = v17;
    v28 = 0;
  }

  v30 = a7;
LABEL_22:
  v34 = String._bridgeToObjectiveCImpl()();

  v35 = String._bridgeToObjectiveCImpl()();
  if (v30)
  {
    v36 = String._bridgeToObjectiveCImpl()();
    if (v28)
    {
LABEL_24:
      v37 = _ContiguousArrayBuffer._asCocoaArray()();
      goto LABEL_27;
    }
  }

  else
  {
    v36 = 0;
    if (v28)
    {
      goto LABEL_24;
    }
  }

  v37 = 0;
LABEL_27:
  v38 = [v19 _localizedStringForKey_value_table_localizations_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v99 = v17;
  if (v38)
  {
    isTaggedPointer = _objc_isTaggedPointer(v38);
    v40 = v38;
    v41 = v40;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v40);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v109[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v51 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v52)
          {
            [v41 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v43 = v118;

            v45 = *(v18 + 16);
            v44 = v106;
            if (v45)
            {
              goto LABEL_59;
            }

            goto LABEL_56;
          }

          v43 = v51;

          goto LABEL_37;
        case 0x16:
          result = [v41 UTF8String];
          if (result)
          {
            result = String.init(utf8String:)(result);
            v44 = v106;
            if (v50)
            {
              v43 = result;

              goto LABEL_55;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_131;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v43 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_37;
      }
    }

    LOBYTE(v118) = 0;
    v111 = 0;
    LOBYTE(v109[0]) = 0;
    if (__CFStringIsCF())
    {
      v43 = v111;
      v44 = v106;
      if (v111)
      {
LABEL_54:
        v43 = String.init(_cocoaString:)();

LABEL_55:
        v45 = *(v18 + 16);
        if (v45)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v46 = v41;
      v47 = String.init(_nativeStorage:)();
      v44 = v106;
      if (v48)
      {
        v43 = v47;

        v45 = *(v18 + 16);
        if (v45)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }

      v111 = [v46 length];
      if (v111)
      {
        goto LABEL_54;
      }

      v43 = 0;
    }

    v45 = *(v18 + 16);
    if (v45)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v43 = 0;
LABEL_37:
  v44 = v106;
  v45 = *(v18 + 16);
  if (v45)
  {
    goto LABEL_59;
  }

LABEL_56:
  if ((v100 & 1) != 0 || (String._bridgeToObjectiveCImpl()(), v53 = _CFStringGetFormatSpecifierConfiguration(), swift_unknownObjectRelease(), !v53))
  {

    swift_unknownObjectRelease();
    goto LABEL_125;
  }

  v45 = *(v18 + 16);
  if (!v45)
  {

    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_64;
  }

LABEL_59:
  v108 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45, 0);
  v54 = v108;
  v55 = v18 + 32;
  do
  {
    outlined init with copy of String.LocalizationValue.FormatArgument(v55, &v111);
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(&v118, v109, 0, v44, v107);
    outlined destroy of String.LocalizationValue.FormatArgument(&v111);
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v109[0], v109[1], v110);
    v57 = *(v108 + 16);
    v56 = *(v108 + 24);
    if (v57 >= v56 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
    }

    *(v108 + 16) = v57 + 1;
    outlined init with take of Equatable(&v118, v108 + 40 * v57 + 32);
    v55 += 112;
    --v45;
  }

  while (v45);

LABEL_64:
  type metadata accessor for __VaListBuilder();
  v58 = swift_allocObject();
  v58[2] = 8;
  v58[3] = 0;
  v59 = v58 + 3;
  v58[4] = 0;
  v58[5] = 0;
  v43 = *(v54 + 16);
  if (!v43)
  {
LABEL_89:

    swift_unknownObjectRetain();

LABEL_90:
    v76 = __VaListBuilder.va_list()();
    v77 = objc_opt_self();
    v78 = String._bridgeToObjectiveCImpl()();
    ObjectType = swift_getObjectType();
    v80 = (*(v107 + 488))(ObjectType);
    v111 = v104;
    v112 = v98;
    v113 = v97;
    v114 = v100;
    v115 = v102;
    v116 = v105;
    v117 = v101;
    v81 = String.LocalizationOptions._nsOptions.getter();
    v82 = [v77 _stringWithFormat_locale_options_arguments_];

    swift_unknownObjectRelease();
    LODWORD(v78) = _objc_isTaggedPointer(v82);
    v83 = v82;
    v66 = v83;
    if (!v78)
    {
      goto LABEL_95;
    }

    v84 = _objc_getTaggedPointerTag(v83);
    if (!v84)
    {
      LOWORD(v109[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v91 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v92)
      {
        v43 = v91;

        goto LABEL_124;
      }

      [v66 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v43 = v118;

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease_n();
      swift_bridgeObjectRelease_n();

      goto LABEL_125;
    }

    if (v84 != 22)
    {
      if (v84 == 2)
      {
        MEMORY[0x1EEE9AC00](v84);
        v85 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        v43 = v85;
        goto LABEL_124;
      }

LABEL_95:
      LOBYTE(v118) = 0;
      v111 = 0;
      LOBYTE(v109[0]) = 0;
      IsCF = __CFStringIsCF();
      if (IsCF)
      {
        v43 = v111;
        if (!v111)
        {
          goto LABEL_102;
        }

        if (v109[0])
        {
          if (v118 != 1)
          {
            IsCF = [v66 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v93 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v95 = HIBYTE(v94) & 0xF;
          if ((v94 & 0x2000000000000000) == 0)
          {
            v95 = v93 & 0xFFFFFFFFFFFFLL;
          }

          if (v95)
          {
            v43 = v93;
            goto LABEL_120;
          }
        }
      }

      else
      {
        v87 = v66;
        v88 = String.init(_nativeStorage:)();
        if (v89)
        {
          v43 = v88;

          goto LABEL_124;
        }

        v111 = [v87 length];
        if (!v111)
        {

          v43 = 0;
          goto LABEL_124;
        }
      }

      v43 = String.init(_cocoaString:)();
      goto LABEL_123;
    }

    result = [v66 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v90)
      {
        v43 = result;
LABEL_120:

LABEL_123:
        goto LABEL_124;
      }

LABEL_132:
      __break(1u);
      return result;
    }

LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  swift_unknownObjectRetain();

  v60 = 0;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v54 + 32 + 40 * v60), *(v54 + 32 + 40 * v60 + 24));
    v61 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v62 = *v59;
    v63 = *(v61 + 16);
    v64 = __OFADD__(*v59, v63);
    v65 = *v59 + v63;
    if (v64)
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
    }

    v66 = v58[4];
    if (v66 >= v65)
    {
      goto LABEL_81;
    }

    if (v66 + 0x4000000000000000 < 0)
    {
      goto LABEL_127;
    }

    v67 = v58[5];
    if (2 * v66 > v65)
    {
      v65 = 2 * v66;
    }

    v58[4] = v65;
    if ((v65 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_128;
    }

    v68 = v61;
    v69 = swift_slowAlloc();
    v70 = v69;
    v58[5] = v69;
    if (v67)
    {
      if (v69 != v67 || v69 >= &v67[8 * v62])
      {
        memmove(v69, v67, 8 * v62);
      }

      v66 = v58;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v61 = v68;
LABEL_81:
      v70 = v58[5];
      if (!v70)
      {
        goto LABEL_88;
      }

      goto LABEL_82;
    }

    v61 = v68;
    if (!v70)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

LABEL_82:
    v72 = *(v61 + 16);
    if (v72)
    {
      break;
    }

LABEL_66:

    if (++v60 == v43)
    {
      goto LABEL_90;
    }
  }

  v73 = (v61 + 32);
  v74 = *v59;
  while (1)
  {
    v75 = *v73++;
    *&v70[8 * v74] = v75;
    v74 = *v59 + 1;
    if (__OFADD__(*v59, 1))
    {
      break;
    }

    *v59 = v74;
    if (!--v72)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_102:

LABEL_124:

  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_125:

  return v43;
}

id String.init(localized:options:table:bundle:localization:locale:comment:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v113 = *MEMORY[0x1E69E9840];
  v97 = *a1;
  v10 = *a2;
  v92 = *(a2 + 17);
  v11 = *(a2 + 32);
  v94 = *(a2 + 40);
  v100 = *a8;
  v101 = a8[1];
  v91 = *(a2 + 8);
  v90 = *(a2 + 16);
  if (a7)
  {

    v11 = a7;
  }

  else
  {
    a6 = *(a2 + 24);
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v105 = v13;
  v106 = 0;

  swift_unknownObjectRetain();

  v96 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v97, &v105, v100, v101);

  swift_unknownObjectRelease();
  if (a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
  }

  v98 = v10;
  v99 = v11;
  if (v11)
  {
    if (v94)
    {
      v15 = a5;

      v16 = [v14 localizations];
      if (!v16)
      {
        v16 = _ContiguousArrayBuffer._asCocoaArray()();
      }

      v17 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_181218E20;
      *(v18 + 32) = a6;
      *(v18 + 40) = v11;
      v19 = [v17 preferredLocalizationsFromArray:v16 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

      swift_unknownObjectRelease();
      if (v19)
      {
        type metadata accessor for __SwiftDeferredNSArray();
        if (swift_dynamicCastClass())
        {
        }

        else
        {
          v23 = v19;
        }

        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v21 = v24;
        }

        else
        {
          swift_unknownObjectRelease();
          [v19 copy];
          v25 = _bridgeCocoaArray<A>(_:)();
          swift_unknownObjectRelease();
          v21 = specialized _arrayForceCast<A, B>(_:)(v25);
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_181218E20;
      *(v21 + 32) = a6;
      *(v21 + 40) = v11;
      v22 = a5;
    }
  }

  else
  {
    v20 = a5;
    v21 = 0;
  }

  v26 = String._bridgeToObjectiveCImpl()();

  v27 = String._bridgeToObjectiveCImpl()();
  if (a4)
  {
    v28 = String._bridgeToObjectiveCImpl()();
    if (!v21)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v28 = 0;
  if (v21)
  {
LABEL_26:
    v21 = _ContiguousArrayBuffer._asCocoaArray()();
  }

LABEL_27:
  v29 = [v14 _localizedStringForKey_value_table_localizations_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!v29)
  {

    v93 = 0;
    v33 = v100;
    goto LABEL_39;
  }

  isTaggedPointer = _objc_isTaggedPointer(v29);
  v31 = v29;
  v32 = v31;
  v33 = v100;
  if ((isTaggedPointer & 1) == 0)
  {
    goto LABEL_33;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v31);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v93 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_39;
      }

LABEL_33:
      LOBYTE(v112) = 0;
      v105 = 0;
      LOBYTE(v103[0]) = 0;
      if (__CFStringIsCF())
      {
        if (!v105)
        {
          goto LABEL_90;
        }

        v84 = v96;
      }

      else
      {
        v69 = v32;
        v70 = String.init(_nativeStorage:)();
        if (v71)
        {
          v93 = v70;

          goto LABEL_39;
        }

        v105 = [v69 length];
        v84 = v96;
        if (!v105)
        {

          v93 = 0;
          goto LABEL_40;
        }
      }

      v93 = String.init(_cocoaString:)();
      goto LABEL_126;
    }

    result = [v32 UTF8String];
    if (!result)
    {
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    v93 = String.init(utf8String:)(result);
    v84 = v96;
    if (v76)
    {
LABEL_96:

      goto LABEL_40;
    }

    __break(1u);
  }

  LOWORD(v103[0]) = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v93 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  v84 = v96;
  if (v77)
  {
    goto LABEL_96;
  }

  [v32 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  v84 = v96;
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v93 = v112;
LABEL_126:

  while (1)
  {
LABEL_40:
    v35 = *(v84 + 2);
    if (!v35)
    {
LABEL_71:
      if ((v92 & 1) != 0 || (String._bridgeToObjectiveCImpl()(), v68 = _CFStringGetFormatSpecifierConfiguration(), swift_unknownObjectRelease(), !v68))
      {

        swift_unknownObjectRelease();
        v66 = v93;
LABEL_124:

        return v66;
      }

      v35 = *(v84 + 2);
      if (!v35)
      {

        v32 = MEMORY[0x1E69E7CC0];
        goto LABEL_46;
      }
    }

    v102 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v32 = v102;
    v36 = (v84 + 32);
    do
    {
      outlined init with copy of String.LocalizationValue.FormatArgument(v36, &v105);
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(&v112, v103, 0, v33, v101);
      outlined destroy of String.LocalizationValue.FormatArgument(&v105);
      outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v103[0], v103[1], v104);
      v38 = v102[2];
      v37 = v102[3];
      if (v38 >= v37 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
      }

      v102[2] = v38 + 1;
      outlined init with take of Equatable(&v112, &v102[5 * v38 + 4]);
      v36 += 112;
      --v35;
    }

    while (v35);

LABEL_46:
    v96 = a5;
    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v39 = v33 + 3;
    v33[4] = 0;
    v33[5] = 0;
    v84 = v32[2];
    if (!v84)
    {
      break;
    }

    a5 = (v32 + 4);

    swift_unknownObjectRetain();

    v40 = 0;
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(&a5[40 * v40], *&a5[40 * v40 + 24]);
      v41 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v42 = *v39;
      v43 = *(v41 + 16);
      v44 = __OFADD__(*v39, v43);
      v45 = *v39 + v43;
      if (v44)
      {
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
      }

      v14 = v33[4];
      if (v14 >= v45)
      {
        goto LABEL_63;
      }

      if (v14 + 0x4000000000000000 < 0)
      {
        goto LABEL_128;
      }

      v46 = v33[5];
      if (2 * v14 > v45)
      {
        v45 = 2 * v14;
      }

      v33[4] = v45;
      if ((v45 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_129;
      }

      v47 = v41;
      v48 = swift_slowAlloc();
      v49 = v48;
      v33[5] = v48;
      if (v46)
      {
        if (v48 != v46 || v48 >= &v46[8 * v42])
        {
          memmove(v48, v46, 8 * v42);
        }

        v14 = v33;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v41 = v47;
LABEL_63:
        v49 = v33[5];
        if (!v49)
        {
          goto LABEL_70;
        }

        goto LABEL_64;
      }

      v41 = v47;
      if (!v49)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

LABEL_64:
      v51 = *(v41 + 16);
      if (v51)
      {
        break;
      }

LABEL_48:

      if (++v40 == v84)
      {
        goto LABEL_74;
      }
    }

    v52 = (v41 + 32);
    v53 = *v39;
    while (1)
    {
      v54 = *v52++;
      *&v49[8 * v53] = v54;
      v53 = *v39 + 1;
      if (__OFADD__(*v39, 1))
      {
        break;
      }

      *v39 = v53;
      if (!--v51)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_90:

    v93 = 0;
LABEL_39:
    v84 = v96;
  }

  swift_unknownObjectRetain();

LABEL_74:
  v55 = __VaListBuilder.va_list()();
  v56 = objc_opt_self();
  v57 = String._bridgeToObjectiveCImpl()();
  ObjectType = swift_getObjectType();
  v59 = (*(v101 + 488))(ObjectType);
  v105 = v98;
  v106 = v91;
  v107 = v90;
  v108 = v92;
  v109 = a6;
  v110 = v99;
  v111 = v94;
  v60 = String.LocalizationOptions._nsOptions.getter();
  v61 = [v56 _stringWithFormat_locale_options_arguments_];

  swift_unknownObjectRelease();
  LODWORD(v57) = _objc_isTaggedPointer(v61);
  v62 = v61;
  v63 = v62;
  if (!v57)
  {
    goto LABEL_79;
  }

  v64 = _objc_getTaggedPointerTag(v62);
  if (!v64)
  {
    LOWORD(v103[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v79 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v80)
    {
      [v63 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v85 = v112;

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease_n();

      v66 = v85;
      a5 = v96;
      goto LABEL_124;
    }

    v66 = v79;

    a5 = v96;
LABEL_123:

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease_n();

    goto LABEL_124;
  }

  if (v64 != 22)
  {
    if (v64 == 2)
    {
      MEMORY[0x1EEE9AC00](v64);
      v65 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      v66 = v65;
      a5 = v96;
      goto LABEL_123;
    }

LABEL_79:
    LOBYTE(v112) = 0;
    v105 = 0;
    LOBYTE(v103[0]) = 0;
    IsCF = __CFStringIsCF();
    if (!IsCF)
    {
      v72 = v63;
      v73 = String.init(_nativeStorage:)();
      a5 = v96;
      if (v74)
      {
        v66 = v73;

        goto LABEL_123;
      }

      v105 = [v72 length];
      if (!v105)
      {

        v66 = 0;
        goto LABEL_123;
      }

      goto LABEL_121;
    }

    v66 = v105;
    a5 = v96;
    if (v105)
    {
      if ((v103[0] & 1) == 0)
      {
        goto LABEL_121;
      }

      if (v112 == 1)
      {
        MEMORY[0x1EEE9AC00](IsCF);
        v81 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v83 = HIBYTE(v82) & 0xF;
        if ((v82 & 0x2000000000000000) == 0)
        {
          v83 = v81 & 0xFFFFFFFFFFFFLL;
        }

        if (v83)
        {
          v66 = v81;

LABEL_122:
          goto LABEL_123;
        }

LABEL_120:

LABEL_121:
        v66 = String.init(_cocoaString:)();
        goto LABEL_122;
      }

      v86 = [v63 lengthOfBytesUsingEncoding_];
      MEMORY[0x1EEE9AC00](v86);
      v87 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v89 = HIBYTE(v88) & 0xF;
      if ((v88 & 0x2000000000000000) == 0)
      {
        v89 = v87 & 0xFFFFFFFFFFFFLL;
      }

      if (!v89)
      {
        goto LABEL_120;
      }

      v66 = v87;
    }

LABEL_100:

    goto LABEL_123;
  }

  result = [v63 UTF8String];
  if (!result)
  {
    goto LABEL_131;
  }

  result = String.init(utf8String:)(result);
  a5 = v96;
  if (v78)
  {
    v66 = result;
    goto LABEL_100;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance InflectionConcept.CodingKeys()
{
  if (*v0)
  {
    return 0x657A696C61636F6CLL;
  }

  else
  {
    return 0x41664F736D726574;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InflectionConcept.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x41664F736D726574 && a2 == 0xEE00737365726464;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEF65736172685064)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InflectionConcept.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InflectionConcept.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InflectionConcept.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation17InflectionConceptO10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation17InflectionConceptO10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMR);
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v11 = v18 - v10;
  v12 = *v1;
  v18[1] = v1[1];
  v19 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13)
  {
    v25 = 1;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v14 = v20;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v15 = v22;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v21 + 8))(v5, v15);
  }

  else
  {
    v24 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v14 = v20;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation13TermOfAddressVGMd, &_sSay10Foundation13TermOfAddressVGMR);
    lazy protocol witness table accessor for type [TermOfAddress] and conformance <A> [A](&lazy protocol witness table cache variable for type [TermOfAddress] and conformance <A> [A], lazy protocol witness table accessor for type TermOfAddress and conformance TermOfAddress, MEMORY[0x1E69E6300]);
    v16 = v22;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v21 + 8))(v8, v16);
  }

  return (*(v9 + 8))(v11, v14);
}

uint64_t InflectionConcept.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    MEMORY[0x1865CD060](1);

    return String.hash(into:)();
  }

  else
  {
    MEMORY[0x1865CD060](0);

    return specialized Array<A>.hash(into:)(a1, v3);
  }
}

Swift::Int InflectionConcept.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1865CD060](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1865CD060](0);
    specialized Array<A>.hash(into:)(v4, v1);
  }

  return Hasher._finalize()();
}

uint64_t InflectionConcept.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation17InflectionConceptO10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation17InflectionConceptO10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28[-v11];
  v13 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type InflectionConcept.CodingKeys and conformance InflectionConcept.CodingKeys();
  v14 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v32 = v10;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = (2 * *(v15 + 16)) | 1;
  v34 = v15;
  v35 = v15 + 32;
  v36 = 0;
  v37 = v16;
  v17 = specialized Collection<>.popFirst()();
  if (v17 == 2 || v36 != v37 >> 1)
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v21 = &type metadata for InflectionConcept;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v32 + 8))(v12, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v29 = v17;
  if (v17)
  {
    LOBYTE(v38) = 1;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v32;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v25;
    (*(v31 + 8))(v5, v3);
    (*(v18 + 8))(v12, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(v38) = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation13TermOfAddressVGMd, &_sSay10Foundation13TermOfAddressVGMR);
    lazy protocol witness table accessor for type [TermOfAddress] and conformance <A> [A](&lazy protocol witness table cache variable for type [TermOfAddress] and conformance <A> [A], lazy protocol witness table accessor for type TermOfAddress and conformance TermOfAddress, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v31 + 8))(v8, v3);
    (*(v22 + 8))(v12, v9);
    swift_unknownObjectRelease();
    v26 = 0;
    v24 = v38;
  }

  v27 = v30;
  *v30 = v24;
  v27[1] = v26;
  *(v27 + 16) = v29 & 1;
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InflectionConcept()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1865CD060](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1865CD060](0);
    specialized Array<A>.hash(into:)(v4, v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InflectionConcept(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    MEMORY[0x1865CD060](1);

    return String.hash(into:)();
  }

  else
  {
    MEMORY[0x1865CD060](0);

    return specialized Array<A>.hash(into:)(a1, v3);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InflectionConcept(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x1865CD060](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1865CD060](0);
    specialized Array<A>.hash(into:)(v5, v2);
  }

  return Hasher._finalize()();
}

uint64_t AttributedString.LocalizationOptions.replacements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AttributedString.LocalizationOptions.concepts.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

BOOL static AttributedString.LocalizationOptions._PluralizationNumber.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance String.LocalizationOptions._PluralizationNumber.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369666963657073 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t String.LocalizationOptions._PluralizationNumber.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v28 = a4;
  v8 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMd, &_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMR);
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v24 = &v22 - v11;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  v22 = *v8;
  v18 = *(v8 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    v30 = 1;
    lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
    v19 = v24;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v26 + 8))(v19, v27);
  }

  else
  {
    v29 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v25;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v23 + 8))(v13, v21);
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t String.LocalizationOptions._PluralizationNumber.hash(into:)()
{
  if (*(v0 + 8))
  {
    v1 = 1;
  }

  else
  {
    v1 = *v0;
    MEMORY[0x1865CD060](0);
  }

  return MEMORY[0x1865CD060](v1);
}

Swift::Int String.LocalizationOptions._PluralizationNumber.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x1865CD060](0);
  }

  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t AttributedString.LocalizationOptions._PluralizationNumber.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMR);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV19LocalizationOptionsV20_PluralizationNumberO10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV19LocalizationOptionsV20_PluralizationNumberO10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys and conformance AttributedString.LocalizationOptions._PluralizationNumber.CodingKeys();
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v9;
    v31 = v7;
    v36 = v11;
    v17 = v34;
    v18 = v35;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = (2 * *(v19 + 16)) | 1;
    v38 = v19;
    v39 = v19 + 32;
    v40 = 0;
    v41 = v20;
    v21 = specialized Collection<>.popFirst()();
    if (v21 == 2 || v40 != v41 >> 1)
    {
      v23 = type metadata accessor for DecodingError();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v25 = &type metadata for AttributedString.LocalizationOptions._PluralizationNumber;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v21;
      if (v21)
      {
        v43 = 1;
        lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v22 = v36;
        (*(v17 + 8))(v6, v33);
        (*(v22 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v28 = 0;
      }

      else
      {
        v43 = 0;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v27 = v36;
        v29 = v31;
        v28 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v32 + 8))(v16, v29);
        (*(v27 + 8))(v13, v10);
        swift_unknownObjectRelease();
      }

      *v18 = v28;
      *(v18 + 8) = v42 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationOptions._PluralizationNumber(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x1865CD060](0);
  }

  MEMORY[0x1865CD060](v2);
  return Hasher._finalize()();
}

void AttributedString.LocalizationOptions._pluralizationNumber.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t AttributedString.LocalizationOptions._pluralizationNumber.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  *(v1 + 33) = v3;
  return result;
}

uint64_t AttributedString.LocalizationOptions._localization.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AttributedString.LocalizationOptions._localization.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void AttributedString.LocalizationOptions.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 256;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

uint64_t static AttributedString.LocalizationOptions.termsOfAddressConcept(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 256;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation17InflectionConceptOGMd, &_ss23_ContiguousArrayStorageCy10Foundation17InflectionConceptOGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_181218E20;
  *(v4 + 32) = a1;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(a2 + 8) = v4;
}

uint64_t static AttributedString.LocalizationOptions.localizedPhraseConcept(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 256;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation17InflectionConceptOGMd, &_ss23_ContiguousArrayStorageCy10Foundation17InflectionConceptOGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_181218E20;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = 1;
  *(a3 + 8) = v6;
}

uint64_t AttributedString.LocalizationOptions._nsOptions.getter()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  result = [objc_allocWithZone(_NSStringFormattingOptions) init];
  if (result)
  {
    v6 = result;
    if (v4)
    {
      [result setPluralizationNumber_];
    }

    else
    {
      v7 = objc_allocWithZone(NSNumber);
      if (v3)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v2;
      }

      v9 = [v7 initWithInteger_];
      [v6 setPluralizationNumber_];
    }

    if (v1)
    {
      return 2;
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

  return result;
}

uint64_t AttributedString.init(localized:options:table:bundle:locale:comment:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = *a2;
  v16 = *a6;
  v15 = *(a6 + 8);
  v20[0] = 0;
  v20[1] = 0;
  v21 = 1;
  v22 = v14 & 1;
  v23 = 0;
  v24 = 256;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (!v16)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v19 = static LocaleCache.cache;
    v16 = LocaleCache._currentAndCache.getter();
    v15 = v17;
  }

  _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(0, 0, v20, a3, a4, a5, v16, v15, 1u, v11, v12, v13);
  swift_unknownObjectRelease();

  outlined destroy of AttributedString.LocalizationOptions(v20);

  *a7 = v19;
  return result;
}

uint64_t AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, id *a6@<X5>, void *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v18 = a2[1];
  v29[0] = *a2;
  v29[1] = v18;
  v30[0] = a2[2];
  *(v30 + 9) = *(a2 + 41);
  v20 = *a6;
  v19 = a6[1];
  v25 = v16;
  v26 = v15;
  v27 = v17;
  if (!v20)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v23 = static LocaleCache.cache;
    v24 = qword_1ED4404B0;
    v20 = LocaleCache._currentAndCache.getter();
  }

  *&v23 = v20;
  *(&v23 + 1) = v19;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(0, 0, a2, a3, a4, a5, &v23, a10, 1u, a10, a11);
  swift_unknownObjectRelease();

  outlined destroy of AttributedString.LocalizationOptions(v29);

  *a7 = v28;
  return result;
}

{
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v18 = a2[1];
  v29[0] = *a2;
  v29[1] = v18;
  v30[0] = a2[2];
  *(v30 + 9) = *(a2 + 41);
  v19 = *a6;
  v20 = a6[1];
  v25 = v16;
  v26 = v15;
  v27 = v17;
  if (!v19)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v23 = static LocaleCache.cache;
    v24 = qword_1ED4404B0;
    v19 = LocaleCache._currentAndCache.getter();
  }

  *&v23 = v19;
  *(&v23 + 1) = v20;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(0, 0, a2, a3, a4, a5, &v23, a9, 1u, a10, a11);
  swift_unknownObjectRelease();

  outlined destroy of AttributedString.LocalizationOptions(v29);

  *a7 = v28;
  return result;
}

uint64_t AttributedString.init(localized:defaultValue:options:table:bundle:locale:comment:)@<X0>(uint64_t *a2@<X3>, char *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>, void *a7@<X8>, uint64_t a8)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *a3;
  v16 = *a8;
  v17 = *(a8 + 8);
  v26[0] = 0;
  v26[1] = 0;
  v27 = 1;
  v28 = v15 & 1;
  v29 = 0;
  v30 = 256;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v18 = StaticString.description.getter();
  v20 = v19;
  if (!v16)
  {
    v24 = a7;
    v21 = v18;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v25 = static LocaleCache.cache;
    v16 = LocaleCache._currentAndCache.getter();
    v17 = v22;
    v18 = v21;
    a7 = v24;
  }

  _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(v18, v20, v26, a4, a5, a6, v16, v17, 1u, v12, v13, v14);
  swift_unknownObjectRelease();

  outlined destroy of AttributedString.LocalizationOptions(v26);

  *a7 = v25;
  return result;
}

uint64_t AttributedString.init<A>(localized:defaultValue:options:table:bundle:locale:comment:including:)@<X0>(uint64_t *a2@<X3>, _OWORD *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>, void *a7@<X8>, id *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = *a2;
  v17 = a2[1];
  v19 = a2[2];
  v20 = a3[1];
  v36[0] = *a3;
  v36[1] = v20;
  v37[0] = a3[2];
  *(v37 + 9) = *(a3 + 41);
  v22 = *a8;
  v21 = a8[1];
  v32 = v18;
  v33 = v17;
  v34 = v19;
  v23 = StaticString.description.getter();
  v25 = v24;
  if (!v22)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v30 = static LocaleCache.cache;
    v31 = qword_1ED4404B0;
    v22 = LocaleCache._currentAndCache.getter();
    v21 = v26;
  }

  *&v30 = v22;
  *(&v30 + 1) = v21;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(v23, v25, a3, a4, a5, a6, &v30, a13, 1u, a13, a14);
  swift_unknownObjectRelease();

  outlined destroy of AttributedString.LocalizationOptions(v36);

  *a7 = v35;
  return result;
}

{
  v18 = *a2;
  v17 = a2[1];
  v19 = a2[2];
  v20 = a3[1];
  v36[0] = *a3;
  v36[1] = v20;
  v37[0] = a3[2];
  *(v37 + 9) = *(a3 + 41);
  v22 = *a8;
  v21 = a8[1];
  v32 = v18;
  v33 = v17;
  v34 = v19;
  v23 = StaticString.description.getter();
  v25 = v24;
  if (!v22)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v30 = static LocaleCache.cache;
    v31 = qword_1ED4404B0;
    v22 = LocaleCache._currentAndCache.getter();
    v21 = v26;
  }

  *&v30 = v22;
  *(&v30 + 1) = v21;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(v23, v25, a3, a4, a5, a6, &v30, a12, 1u, a13, a14);
  swift_unknownObjectRelease();

  outlined destroy of AttributedString.LocalizationOptions(v36);

  *a7 = v35;
  return result;
}

uint64_t AttributedString.init(localized:options:table:bundle:locale:comment:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a2[1];
  v20[0] = *a2;
  v20[1] = v14;
  v21[0] = a2[2];
  *(v21 + 9) = *(a2 + 41);
  v15 = *a6;
  if (*a6)
  {
    v16 = *(a6 + 8);
  }

  else
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v19 = static LocaleCache.cache;
    v15 = LocaleCache._currentAndCache.getter();
    v16 = v17;
  }

  _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(0, 0, v20, a3, a4, a5, v15, v16, 1u, v11, v12, v13);
  swift_unknownObjectRelease();

  outlined destroy of AttributedString.LocalizationOptions(v20);

  *a7 = v19;
  return result;
}

uint64_t AttributedString.init(localized:defaultValue:options:table:bundle:locale:comment:)@<X0>(uint64_t *a2@<X3>, _OWORD *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>, void *a7@<X8>, uint64_t a8)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a3[1];
  v25[0] = *a3;
  v25[1] = v15;
  v26[0] = a3[2];
  *(v26 + 9) = *(a3 + 41);
  v16 = *a8;
  v17 = *(a8 + 8);
  v18 = StaticString.description.getter();
  v20 = v19;
  if (!v16)
  {
    v23 = v18;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v24 = static LocaleCache.cache;
    v16 = LocaleCache._currentAndCache.getter();
    v17 = v21;
    v18 = v23;
  }

  _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(v18, v20, v25, a4, a5, a6, v16, v17, 1u, v12, v13, v14);
  swift_unknownObjectRelease();

  outlined destroy of AttributedString.LocalizationOptions(v25);

  *a7 = v24;
  return result;
}

uint64_t AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, id *a6@<X5>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v18 = *a2;
  v19 = *a6;
  v20 = a6[1];
  v30 = 1;
  v31 = 0uLL;
  LOBYTE(v32) = 1;
  BYTE1(v32) = v18 & 1;
  v33 = 0;
  LOWORD(v34) = 256;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v26 = v16;
  v27 = v15;
  v28 = v17;
  v24[0] = 0uLL;
  v24[1] = v32;
  v25[0] = v34;
  *(v25 + 9) = 0u;
  if (!v19)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v22 = static LocaleCache.cache;
    v23 = qword_1ED4404B0;
    v19 = LocaleCache._currentAndCache.getter();
  }

  *&v22 = v19;
  *(&v22 + 1) = v20;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(0, 0, v24, a3, a4, a5, &v22, a10, 1u, a10, a11);
  swift_unknownObjectRelease();

  outlined destroy of AttributedString.LocalizationOptions(&v31);

  *a7 = v29;
  return result;
}

uint64_t AttributedString.init<A>(localized:defaultValue:options:table:bundle:locale:comment:including:)@<X0>(uint64_t *a2@<X3>, char *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>, uint64_t *a7@<X8>, id *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = *a2;
  v16 = a2[1];
  v18 = a2[2];
  v19 = *a3;
  v20 = *a8;
  v21 = a8[1];
  v37 = 1;
  v38 = 0uLL;
  LOBYTE(v39) = 1;
  BYTE1(v39) = v19 & 1;
  v40 = 0;
  LOWORD(v41) = 256;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v33 = v17;
  v34 = v16;
  v35 = v18;
  v22 = StaticString.description.getter();
  v24 = v23;
  v31[0] = 0uLL;
  v31[1] = v39;
  v32[0] = v41;
  *(v32 + 9) = 0u;
  if (!v20)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v29 = static LocaleCache.cache;
    v30 = qword_1ED4404B0;
    v20 = LocaleCache._currentAndCache.getter();
    v21 = v25;
  }

  *&v29 = v20;
  *(&v29 + 1) = v21;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(v22, v24, v31, a4, a5, a6, &v29, a13, 1u, a13, a14);
  swift_unknownObjectRelease();

  outlined destroy of AttributedString.LocalizationOptions(&v38);

  *a7 = v36;
  return result;
}

uint64_t AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, id *a6@<X5>, void *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = *a1;
  v15 = a1[1];
  v17 = a1[2];
  v18 = *a2;
  v19 = *a6;
  v20 = a6[1];
  v30 = v16;
  v31 = v15;
  v32 = v17;
  v29 = 1;
  v26 = 0uLL;
  LOBYTE(v27) = 1;
  BYTE1(v27) = v18 & 1;
  *(&v27 + 1) = 0;
  *v28 = 256;
  memset(&v28[8], 0, 17);
  if (!v19)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v23 = static LocaleCache.cache;
    *&v24 = qword_1ED4404B0;
    v19 = LocaleCache._currentAndCache.getter();
  }

  v22[0] = v19;
  v22[1] = v20;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(0, 0, &v26, a3, a4, a5, v22, a9, 1u, a10, a11);
  swift_unknownObjectRelease();

  v23 = v26;
  v24 = v27;
  v25[0] = *v28;
  *(v25 + 9) = *&v28[9];
  outlined destroy of AttributedString.LocalizationOptions(&v23);

  *a7 = v33;
  return result;
}

void String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x1EEE9AC00](a1);
  v638 = v13;
  v639 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v641 = v20;
  v22 = v21;
  v24 = v23;
  v627 = v25;
  v857[2] = *MEMORY[0x1E69E9840];
  v603 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
  MEMORY[0x1EEE9AC00](v603);
  v599 = &v593 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v602 = &v593 - v28;
  v598 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
  MEMORY[0x1EEE9AC00](v598);
  v604 = &v593 - v29;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  MEMORY[0x1EEE9AC00](v606);
  v615 = &v593 - v30;
  v617 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
  MEMORY[0x1EEE9AC00](v617);
  v611 = &v593 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v618 = &v593 - v33;
  *&v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v626 = *(v649 - 8);
  MEMORY[0x1EEE9AC00](v649);
  *&v609 = &v593 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v614 = &v593 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v622 = &v593 - v38;
  v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  MEMORY[0x1EEE9AC00](v612);
  *&v648 = &v593 - v39;
  v643 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v620 = *(v643 - 8);
  MEMORY[0x1EEE9AC00](v643);
  v607 = &v593 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v642 = &v593 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v619 = &v593 - v44;
  v613 = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v613);
  v601 = &v593 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v600 = (&v593 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v605 = (&v593 - v49);
  MEMORY[0x1EEE9AC00](v50);
  v616 = &v593 - v51;
  MEMORY[0x1EEE9AC00](v52);
  *(&v628 + 1) = &v593 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);
  MEMORY[0x1EEE9AC00](v54);
  v624 = &v593 - v55;
  v56 = *v22;
  v625 = v22[1];
  v660 = *(v22 + 16);
  v659 = *(v22 + 17);
  v857[0] = *(v22 + 18);
  *(v857 + 7) = *(v22 + 25);
  v658 = *(v22 + 33);
  v663 = *(v22 + 34);
  v664 = *(v22 + 19);
  v57 = v22[6];
  *(&v629 + 1) = v22[5];
  v633 = v57;
  LODWORD(v629) = *(v22 + 56);
  v58 = *v15;
  v59 = v15[1];
  v60 = *v11;
  *&v654 = v11[1];
  v644 = v24;
  *&v653 = v11[2];
  if (!v24)
  {
    v61 = v56;

    v56 = v61;
    v639 = v654;
    v644 = v62;
  }

  if (v56)
  {
    v63 = v56;
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

  v733 = v63;
  v64 = v56;
  swift_unknownObjectRetain();

  v621 = v64;

  v636 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v60, &v733, v58, v59);
  v655 = 0;

  v657 = v58;
  swift_unknownObjectRelease();
  v65 = v59;
  if (v17)
  {
    v647 = v17;
  }

  else
  {
    v647 = [objc_opt_self() mainBundle];
  }

  v66 = v19;
  v67 = v17;

  v68 = String.count.getter();

  v69 = v647;
  if (v68 < 1)
  {
    v66 = 0xEB00000000656C62;
    v641 = 0x617A696C61636F4CLL;
  }

  else
  {
    if (!v66)
    {
      __break(1u);
      goto LABEL_375;
    }
  }

  LODWORD(v640) = a9;
  v70 = v633;
  if (v633)
  {
    if (v629)
    {
      v71 = v59;
      v72 = v633;

      v73 = [v69 localizations];
      if (!v73)
      {
        v73 = _ContiguousArrayBuffer._asCocoaArray()();
      }

      v74 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_181218E20;
      *(v75 + 32) = *(&v629 + 1);
      *(v75 + 40) = v72;
      v76 = [v74 preferredLocalizationsFromArray:v73 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

      swift_unknownObjectRelease();
      if (v76)
      {
        type metadata accessor for __SwiftDeferredNSArray();
        if (swift_dynamicCastClass())
        {
        }

        else
        {
          v78 = v76;
        }

        v65 = v59;
        v79 = swift_dynamicCastClass();
        if (v79)
        {
          v77 = v79;
        }

        else
        {
          swift_unknownObjectRelease();
          [v76 copy];
          v80 = _bridgeCocoaArray<A>(_:)();
          swift_unknownObjectRelease();
          v77 = specialized _arrayForceCast<A, B>(_:)(v80);
        }
      }

      else
      {
        v77 = MEMORY[0x1E69E7CC0];
        v65 = v71;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_181218E20;
      *(v77 + 32) = *(&v629 + 1);
      *(v77 + 40) = v70;
    }
  }

  else
  {
    v77 = 0;
  }

  v81 = [v69 preferredLocalizations];
  v82 = MEMORY[0x1E69E7CC0];
  v610 = v54;
  if (!v81)
  {
LABEL_33:
    if (v77)
    {
      goto LABEL_34;
    }

LABEL_37:

    goto LABEL_38;
  }

  v83 = v81;
  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v84 = v83;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v85 = swift_dynamicCastClass();
  if (v85)
  {
    v82 = v85;

    goto LABEL_33;
  }

  swift_unknownObjectRelease();
  [v83 copy];
  v87 = _bridgeCocoaArray<A>(_:)();
  swift_unknownObjectRelease();
  v82 = specialized _arrayForceCast<A, B>(_:)(v87);

  if (!v77)
  {
    goto LABEL_37;
  }

LABEL_34:
  v86 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v77, v82);

  if (v86)
  {

    v77 = 0;
  }

LABEL_38:
  v646 = a11;
  v645 = a10;
  v656 = v65;
  *&v628 = v66;
  if ((v640 & 1) == 0)
  {
    if (*(v636 + 16))
    {
      *&v654 = v636 + 16;
      v634 = 0;
      v632 = 0;
      v92 = MEMORY[0x1E69E7CC8];
      v806[0] = MEMORY[0x1E69E7CC8];
LABEL_43:
      LODWORD(v623) = 1;
      goto LABEL_87;
    }

    v632 = 0;
    v634 = 0;
    goto LABEL_175;
  }

  v88 = String._bridgeToObjectiveCImpl()();
  v89 = String._bridgeToObjectiveCImpl()();
  v90 = String._bridgeToObjectiveCImpl()();
  if (v77)
  {

    v91 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  else
  {
    v91 = 0;
  }

  v733.i64[0] = 0;
  v725.i64[0] = 0;
  v93 = [v69 _localizedStringNoCacheNoMarkdownParsingForKey_value_table_localizations_actualTableURL_formatSpecifierConfiguration_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v94 = v733.i64[0];
  v632 = v725.i64[0];
  v95 = v725.i64[0];
  v634 = v94;
  v96 = v94;
  if (!v93)
  {
    v105 = v96;

    BigString.init(_:)();
    AttributedString.init(_:attributes:)(v733.i8, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v725.i64);

    v106 = v725.i64[0];
    goto LABEL_250;
  }

  objc_opt_self();
  v97 = swift_dynamicCastObjCClassUnconditional();
  isTaggedPointer = _objc_isTaggedPointer(v97);
  v99 = v97;
  v100 = v99;
  if (!isTaggedPointer)
  {
LABEL_51:
    v725.i8[0] = 0;
    v733.i64[0] = 0;
    LOBYTE(v715) = 0;
    LOBYTE(v823) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      if (v733.i64[0])
      {
        if (v823 == 1)
        {
          if (v725.i8[0])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v112 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_78;
        }

        if (v715)
        {
          if (v725.u8[0] != 1)
          {
            IsCF = [v100 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v114 = v655;
          v115 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v655 = v114;
          v117 = HIBYTE(v116) & 0xF;
          v639 = v115;
          v644 = v116;
          if ((v116 & 0x2000000000000000) == 0)
          {
            v117 = v115 & 0xFFFFFFFFFFFFLL;
          }

          if (v117)
          {
            goto LABEL_75;
          }
        }

LABEL_77:
        v112 = String.init(_cocoaString:)();
LABEL_78:
        v639 = v112;
        v644 = v113;
        goto LABEL_79;
      }

LABEL_60:

      v639 = 0;
      v644 = 0xE000000000000000;
      goto LABEL_80;
    }

    v107 = v100;
    v639 = String.init(_nativeStorage:)();
    v644 = v108;
    if (!v108)
    {
      v733.i64[0] = [v107 length];
      if (v733.i64[0])
      {
        goto LABEL_77;
      }

      goto LABEL_60;
    }

LABEL_75:

    goto LABEL_79;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v99);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v102 = v655;
        v639 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v644 = v103;
        v655 = v102;

        goto LABEL_80;
      }

      goto LABEL_51;
    }

    v109 = [v100 UTF8String];
    if (!v109)
    {
      goto LABEL_379;
    }

    v639 = String.init(utf8String:)(v109);
    v644 = v110;
    if (v110)
    {
      goto LABEL_75;
    }

    __break(1u);
  }

  LOWORD(v715) = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v639 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  v644 = v111;
  if (v111)
  {
    goto LABEL_75;
  }

  [v100 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v644 = v725.i64[1];
  v639 = v725.i64[0];
LABEL_79:

LABEL_80:
  v118 = *(v636 + 16);
  if (!v118)
  {
    if ((v658 & 1) == 0)
    {
      if (v95)
      {
        *&v654 = v636 + 16;
        v806[0] = MEMORY[0x1E69E7CC8];
        goto LABEL_86;
      }

      v632 = 0;
    }

LABEL_175:

    BigString.init(_:)();
    AttributedString.init(_:attributes:)(&v846, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v733.i64);
    LODWORD(v623) = 0;
    v245 = v733.i64[0];
    v254 = v647;
    goto LABEL_176;
  }

  *&v654 = v636 + 16;
  v92 = MEMORY[0x1E69E7CC8];
  v806[0] = MEMORY[0x1E69E7CC8];
  if (!v95)
  {
    v632 = 0;
    goto LABEL_43;
  }

LABEL_86:
  LODWORD(v623) = v118 != 0;
  v119 = String._bridgeToObjectiveCImpl()();
  *(&v734[0] + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
  v733.i64[0] = v95;
  v120 = v95;
  specialized Dictionary.subscript.setter(&v733, v119);
  v92 = v806[0];
LABEL_87:
  v635 = v77;
  v121 = objc_allocWithZone(NSAttributedString);
  v122 = String._bridgeToObjectiveCImpl()();
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage and conformance String.LocalizationValue.FormatArgument.CodableStorage(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);

  v608 = v92;
  *(&v609 + 1) = [v121 initWithString:v122 attributes:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v123 = *v654;
  if (!*v654)
  {

    v126 = MEMORY[0x1E69E7CC0];
LABEL_154:
    v733.i64[0] = v621;
    v733.i64[1] = v625;
    LOBYTE(v734[0]) = v660;
    BYTE1(v734[0]) = v659;
    *(v734 + 2) = v857[0];
    *(v734 + 9) = *(v857 + 7);
    BYTE1(v734[1]) = v658;
    *(&v734[1] + 2) = v663;
    WORD3(v734[1]) = v664;
    *(&v734[1] + 1) = *(&v629 + 1);
    *&v734[2] = v633;
    BYTE8(v734[2]) = v629;
    *&v654 = AttributedString.LocalizationOptions._nsOptions.getter();
    v223 = v222;
    ObjectType = swift_getObjectType();
    v225 = *(v65 + 488);
    v226 = v223;
    v227 = v225(ObjectType, v65);
    v228 = v227;
    v229 = *(v126 + 16);
    if (v229)
    {
      *&v652 = v227;
      *&v653 = v226;
      *&v823 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v229, 0);
      v230 = v823;
      v651 = v126;
      v231 = v126 + 32;
      v232 = v229;
      do
      {
        outlined init with copy of FloatingPointRoundingRule?(v231, &v733, &_ss7CVarArg_p6vararg_SS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSg11attrStrInfotMd, &_ss7CVarArg_p6vararg_SS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSg11attrStrInfotMR);
        v726 = v734[0];
        *v727 = v734[1];
        *&v727[9] = *(&v734[1] + 9);
        v725 = v733;
        outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(*&v727[8], *(&v734[1] + 9) >> 56, SBYTE8(v734[2]));
        outlined init with take of Equatable(v725.i8, &v715);
        *&v823 = v230;
        v234 = *(v230 + 16);
        v233 = *(v230 + 24);
        if (v234 >= v233 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v233 > 1), v234 + 1, 1);
          v230 = v823;
        }

        *(v230 + 16) = v234 + 1;
        outlined init with take of Equatable(&v715, v230 + 40 * v234 + 32);
        v231 += 64;
        --v232;
      }

      while (v232);
      v235 = v655;
      v126 = v651;
      v226 = v653;
      v228 = v652;
    }

    else
    {
      v235 = v655;
    }

    v236 = objc_opt_self();
    v237 = getVaList(_:)();

    v238 = v236;
    v239 = *(&v609 + 1);
    v240 = [v238 _attributedStringWithFormat_attributeOptions_formattingOptions_locale_arguments_];

    v242 = type metadata accessor for _FoundationPlusScope(0, v645, v646, v241);
    v243 = v240;
    v244 = static AttributeScope.scopeDescription.getter(v242);

    AttributedString.init(_:attributeTable:options:)(v243, v244, 0, v733.i64);
    if (v235)
    {

      BigString.init(_:)();
      AttributedString.init(_:attributes:)(v742, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v733.i64);

      v655 = 0;
      v245 = v733.i64[0];
    }

    else
    {

      *&v715 = v733.i64[0];
      v655 = 0;
      if (v229)
      {
        *&v653 = v226;
        *&v823 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)(v229);
        v651 = v126;
        v246 = v126 + 32;
        do
        {
          outlined init with copy of FloatingPointRoundingRule?(v246, &v733, &_ss7CVarArg_p6vararg_SS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSg11attrStrInfotMd, &_ss7CVarArg_p6vararg_SS10FoundationE17LocalizationValueV14FormatArgumentV15_AttributeFixupOSg11attrStrInfotMR);
          v726 = v734[0];
          *v727 = v734[1];
          *&v727[9] = *(&v734[1] + 9);
          v725 = v733;
          v247 = *&v727[8];
          v248 = *(&v734[1] + 9) >> 56;
          v249 = BYTE8(v734[2]);
          __swift_destroy_boxed_opaque_existential_1(&v725);
          v250 = v823;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v250 + 16) + 1, 1);
            v250 = v823;
          }

          v252 = *(v250 + 16);
          v251 = *(v250 + 24);
          if (v252 >= v251 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v251 > 1), v252 + 1, 1);
            v250 = v823;
          }

          *(v250 + 16) = v252 + 1;
          v253 = v250 + 24 * v252;
          *(v253 + 32) = v247;
          *(v253 + 40) = v248;
          *(v253 + 48) = v249;
          v246 += 64;
          --v229;
        }

        while (v229);

        v239 = *(&v609 + 1);
        v226 = v653;
      }

      else
      {

        v250 = MEMORY[0x1E69E7CC0];
      }

      String.LocalizationValue.restoreAttributedStringArguments(_:in:)(v250);

      v245 = v715;
    }

    v254 = v647;
    v77 = v635;
LABEL_176:
    v255 = *(v245 + 56);
    v256 = *(v245 + 64);
    v257 = *(v245 + 40);
    v653 = *(v245 + 24);
    v654 = v257;
    swift_unknownObjectRetain();
    v733 = v653;
    v734[0] = v654;
    *&v734[1] = v255;
    *(&v734[1] + 1) = v256;
    lazy protocol witness table accessor for type BigString and conformance BigString();
    lazy protocol witness table accessor for type BigString and conformance BigString();
    v644 = String.init<A>(_:)();
    v259 = v258;
    MEMORY[0x1EEE9AC00](v644);
    v647 = v254;
    if (v634)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)(v634, v733.i64);
      v260 = v733;
    }

    else
    {
      v260 = 0uLL;
    }

    v733 = v260;
    v261._countAndFlagsBits = 0x65686361636F6E2ELL;
    v261._object = 0xE800000000000000;
    v262 = String.hasSuffix(_:)(v261);

    v592 = v262 || v77 != 0 || (v640 & 1) == 0;
    v263 = v632;
    v264 = v623;
    String.LocalizationValue._parseLocalizedMarkdown<A>(_:bundlePreferredLocalization:tableURL:formatConfiguration:scope:appliesSourcePositionAttribute:ignoreCache:)(v644, v259, partial apply for implicit closure #6 in String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:), v733.i64, v632, v623, &v725, v592, v645, v646);
    swift_unknownObjectRelease();
    v265 = v725.i64[0];
    if (!v725.i64[0])
    {

      *v627 = v245;
      return;
    }

    v266 = v725.u8[8];
    v662 = v725.i64[0];
    v661 = MEMORY[0x1E69E7CC0];
    if (!v264)
    {

      v296 = MEMORY[0x1E69E7CC0];
      goto LABEL_245;
    }

    v639 = v259;
    v267 = *(v725.i64[0] + 40);
    v843 = *(v725.i64[0] + 24);
    v844 = v267;
    v845 = *(v725.i64[0] + 56);
    v127 = BigString.startIndex.getter();
    v269 = v268;
    v271 = v270;
    v273 = v272;
    isUniquelyReferenced_nonNull_native = BigString.endIndex.getter();
    if (isUniquelyReferenced_nonNull_native >> 10 < v127 >> 10)
    {
      goto LABEL_368;
    }

    LODWORD(v641) = v266;
    v645 = v245;
    v635 = v77;
    v733.i64[0] = v127;
    v733.i64[1] = v269;
    *&v734[0] = v271;
    *(&v734[0] + 1) = v273;
    *&v734[1] = isUniquelyReferenced_nonNull_native;
    *(&v734[1] + 1) = v274;
    *&v734[2] = v275;
    *(&v734[2] + 1) = v276;
    v277 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

    RangeSet.init(_:)();
    v651 = v265;
    **(&v628 + 1) = v265;
    v638 = v277;
    RangeSet.init()();
    v278 = v622;
    RangeSet.ranges.getter();
    v279 = v626;
    v280 = v648;
    v281 = v649;
    (*(v626 + 16))(v648, v278, v649);
    v282 = *(v612 + 36);
    v283 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
    dispatch thunk of Collection.startIndex.getter();
    v284 = *(v279 + 8);
    v626 = v279 + 8;
    v284(v278, v281);
    dispatch thunk of Collection.endIndex.getter();
    v285 = *(v280 + v282);
    v640 = v284;
    if (v285 != v733.i64[0])
    {
      *&v650 = v283;
      v646 = v282;
      do
      {
        v297 = dispatch thunk of Collection.subscript.read();
        v299 = v298[5];
        *&v654 = v298[4];
        *&v653 = v299;
        *&v652 = v298[6];
        v297(&v733, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v300 = v651;
        v301 = *(v651 + 40);
        v840 = *(v651 + 24);
        v841 = v301;
        v842 = *(v651 + 56);
        swift_unknownObjectRetain();
        v302 = BigString.UnicodeScalarView.index(roundingDown:)();
        v304 = v303;
        v306 = v305;
        v308 = v307;
        swift_unknownObjectRelease();
        v309 = *(v300 + 40);
        v837 = *(v300 + 24);
        v838 = v309;
        v839 = *(v300 + 56);
        swift_unknownObjectRetain();
        v310 = BigString.UnicodeScalarView.index(roundingDown:)();
        v312 = v311;
        v314 = v313;
        v316 = v315;
        swift_unknownObjectRelease();
        v733.i64[0] = v302;
        v733.i64[1] = v304;
        *&v734[0] = v306;
        *(&v734[0] + 1) = v308;
        *&v734[1] = v310;
        *(&v734[1] + 1) = v312;
        *&v734[2] = v314;
        v281 = v649;
        *(&v734[2] + 1) = v316;
        if ((v310 ^ v302) >= 0x400)
        {
          v317 = RangeSet._ranges.modify();
          RangeSet.Ranges._insert(contentsOf:)();
          v317(&v725, 0);
        }

        v280 = v648;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v280 + v646) != v733.i64[0]);
    }

    outlined destroy of TermOfAddress?(v280, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
    v286 = v613;
    v287 = *(v613 + 24);
    v288 = *(&v628 + 1);
    (*(v620 + 16))(*(&v628 + 1) + v287, v642, v643);
    v289 = v622;
    RangeSet.ranges.getter();
    v290 = RangeSet.Ranges.count.getter();
    v291 = v289;
    v292 = v640;
    (v640)(v291, v281);
    v293 = *(v286 + 28);
    LODWORD(v646) = v290 > 1;
    *(v288 + v293) = v646;
    v294 = v614;
    RangeSet.ranges.getter();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v725.i64[0] == v733.i64[0])
    {
      v292(v294, v281);
      v295 = v651;
    }

    else
    {
      v318 = dispatch thunk of Collection.subscript.read();
      v320 = *v319;
      v636 = v319[1];
      v637 = v320;
      v321 = v319[3];
      v633 = v319[2];
      v631 = v321;
      v318(&v733, 0);
      v292(v294, v281);
      v322 = v609;
      RangeSet.ranges.getter();
      v323 = dispatch thunk of Collection.isEmpty.getter();
      v324 = v281;
      v295 = v651;
      v325 = v292;
      if ((v323 & 1) == 0)
      {
        v612 = v287;
        dispatch thunk of Collection.endIndex.getter();
        lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v372 = dispatch thunk of Collection.subscript.read();
        v374 = v373[4];
        v375 = v373[5];
        v376 = v373[7];
        v630 = v373[6];
        v372(&v733, 0);
        v325(v322, v324);
        AttributedString.Guts.findRun(at:)(v637, v631, v733.i64);
        *&v654 = v733.i64[1];
        *&v653 = v733.i64[0];
        v613 = *(&v734[0] + 1);
        v614 = *&v734[0];
        *&v629 = *&v734[2];
        *(&v629 + 1) = *(&v734[1] + 1);
        *&v628 = *(&v734[2] + 1);
        *&v652 = v735;
        v377 = *(v295 + 40);
        v834 = *(v295 + 24);
        v835 = v377;
        v836 = *(v295 + 56);
        v378 = BigString.endIndex.getter();
        v623 = v375;
        v621 = v376;
        if ((v378 ^ v374) > 0x3FF)
        {
          *&v649 = v374;
          AttributedString.Guts.findRun(at:)(v374, v376, v733.i64);
          *&v648 = v733.i64[1];
          *&v650 = v733.i64[0];
          v609 = v734[0];
          v409 = v620;
          v339 = *(&v734[1] + 1);
          v343 = *(&v734[2] + 1);
          v341 = *&v734[2];
          v345 = v735;
          v410 = v622;
          RangeSet.ranges.getter();
          v361 = RangeSet.Ranges.count.getter();
          v411 = *(v409 + 8);
          v411(v619, v643);
          (v640)(v410, v324);
          v411(v642, v643);
          v349 = *(&v609 + 1);
          v350 = v609;
          v357 = v649;
          v351 = 0;
          v348 = v646;
          v362 = v654;
          v353 = v636;
          v352 = v637;
          v363 = v653;
          v354 = v633;
          v359 = v630;
          v356 = v631;
          v329 = *(&v629 + 1);
          v331 = v629;
          v333 = v628;
          v355 = v652;
          v358 = v623;
          v360 = v621;
          v346 = v613;
          v347 = v614;
        }

        else
        {
          v379 = v374;
          v380 = *(v295 + 72);
          if (v380)
          {
            v381 = *(v295 + 80);
          }

          else
          {
            v381 = 0;
          }

          *(&v609 + 1) = v381;
          v382 = *(v295 + 96);
          v383 = swift_unknownObjectRetain();
          *&v650 = v382;
          *&v648 = specialized Rope._endPath.getter(v383);
          if (v380)
          {
            swift_unknownObjectRelease();
          }

          v384 = v622;
          v385 = v643;
          RangeSet.ranges.getter();
          v386 = v649;
          v361 = RangeSet.Ranges.count.getter();
          v387 = *(v620 + 8);
          v387(v619, v385);
          v325(v384, v386);
          v387(v642, v385);
          v351 = 0;
          v350 = 0;
          v357 = v379;
          v339 = v379;
          v358 = v623;
          v341 = v623;
          v359 = v630;
          v356 = v631;
          v343 = v630;
          v360 = v621;
          v345 = v621;
          v348 = v646;
          v362 = v654;
          v353 = v636;
          v352 = v637;
          v363 = v653;
          v354 = v633;
          v329 = *(&v629 + 1);
          v331 = v629;
          v333 = v628;
          v355 = v652;
          v346 = v613;
          v347 = v614;
          v349 = *(&v609 + 1);
        }

LABEL_200:
        v364 = *(&v628 + 1);
        *(*(&v628 + 1) + 8) = v346;
        *(v364 + 16) = v363;
        *(v364 + 24) = v362;
        *(v364 + 32) = v347;
        *(v364 + 40) = v329;
        *(v364 + 48) = v331;
        *(v364 + 56) = v333;
        *(v364 + 64) = v355;
        *(v364 + 72) = v352;
        *(v364 + 80) = v353;
        *(v364 + 88) = v354;
        *(v364 + 96) = v356;
        *(v364 + 104) = v351;
        *(v364 + 112) = 0;
        *(v364 + 113) = v348;
        v365 = v650;
        *(v364 + 120) = v349;
        *(v364 + 128) = v365;
        *(v364 + 136) = v648;
        *(v364 + 144) = v350;
        *(v364 + 152) = v339;
        *(v364 + 160) = v341;
        *(v364 + 168) = v343;
        *(v364 + 176) = v345;
        *(v364 + 184) = v357;
        *(v364 + 192) = v358;
        *(v364 + 200) = v359;
        *(v364 + 208) = v360;
        *(v364 + 216) = v361;
        *(v364 + 224) = 0;
        *(v364 + 225) = v348;
        v366 = v616;
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v364, v616, type metadata accessor for AttributedString.Runs);
        v127 = v618;
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v366, v618, type metadata accessor for AttributedString.Runs);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        isUniquelyReferenced_nonNull_native = swift_allocObject();
        *(isUniquelyReferenced_nonNull_native + 16) = xmmword_181218E20;
        if (one-time initialization token for name != -1)
        {
          goto LABEL_369;
        }

        goto LABEL_201;
      }

      v292(v322, v324);
    }

    v326 = *(v295 + 72);
    v327 = v643;
    if (v326)
    {
      *&v654 = *(v326 + 18);
    }

    else
    {
      *&v654 = 0;
    }

    *&v653 = *(v295 + 96);
    v328 = *(v295 + 40);
    v834 = *(v295 + 24);
    v835 = v328;
    v836 = *(v295 + 56);
    v329 = BigString.startIndex.getter();
    v331 = v330;
    v333 = v332;
    *&v652 = v334;
    v335 = *(v295 + 72);
    *&v650 = *(v295 + 96);
    if (v335)
    {
      *&v648 = *(v335 + 18);
      v336 = *(v620 + 8);
      swift_unknownObjectRetain();
      v336(v619, v327);
      v336(v642, v327);
      swift_unknownObjectRelease();
    }

    else
    {
      v337 = *(v620 + 8);
      v337(v619, v327);
      v337(v642, v327);
      *&v648 = 0;
    }

    v338 = *(v295 + 40);
    v833[2] = *(v295 + 24);
    v833[3] = v338;
    v833[4] = *(v295 + 56);
    v339 = BigString.startIndex.getter();
    v341 = v340;
    v343 = v342;
    v345 = v344;
    v346 = 0;
    v347 = 0;
    v348 = 0;
    v349 = 0;
    v350 = 0;
    v351 = -1;
    v352 = v329;
    v353 = v331;
    v354 = v333;
    v355 = v652;
    v356 = v652;
    v357 = v339;
    v358 = v340;
    v359 = v343;
    v360 = v345;
    v361 = -1;
    v362 = v654;
    v363 = v653;
    goto LABEL_200;
  }

  v796 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123, 0);
  v125 = 0;
  *&v653 = v636 + 32;
  v126 = v796;
  v127 = &v733;
  *&v650 = v123;
  while (1)
  {
    if (v125 >= *v654)
    {
      __break(1u);
      goto LABEL_366;
    }

    outlined init with copy of String.LocalizationValue.FormatArgument(v653 + 112 * v125, &v733);
    v128 = swift_allocObject();
    *(v128 + 16) = 0;
    *(v128 + 24) = 0;
    *(v128 + 32) = -2;
    outlined init with copy of String.LocalizationValue.FormatArgument.Storage(&v733, &v725);
    if (v727[72] > 2u)
    {
      break;
    }

    if (v727[72])
    {
      if (v727[72] == 1)
      {
        v129 = v725;

        v131 = v655;
        v132 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v130);
        v655 = v131;
        if (v131)
        {
          goto LABEL_383;
        }

        v133 = v132;
        *(&v746 + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
        *&v747[0] = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
        *&v745 = v133;

        *(v747 + 8) = v129;
        BYTE8(v747[1]) = 0;
        v123 = v650;
        v127 = &v733;
        goto LABEL_147;
      }

      v717 = *v727;
      v718 = *&v727[16];
      v719[0] = *&v727[32];
      v719[1] = *&v727[48];
      v715 = v725;
      v716 = v726;
      *&v823 = v657;
      *(&v823 + 1) = v65;
      v195 = (v725.i64[0])(&v823);
      v197 = v196;
      *(&v746 + 1) = MEMORY[0x1E69E6158];
      *&v747[0] = lazy protocol witness table accessor for type String and conformance String();
      *&v745 = v195;
      *(&v745 + 1) = v197;
      getter of attributeFixup #1 in String.LocalizationValue.FormatArgument.resolve<A>(attributed:with:including:)(v128, 1, v747 + 8);
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v715);
    }

    else
    {
      outlined init with take of Any(&v725, &v715);
      outlined init with copy of Any(&v715, &v823);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
      swift_dynamicCast();
      getter of attributeFixup #1 in String.LocalizationValue.FormatArgument.resolve<A>(attributed:with:including:)(v128, 1, v747 + 8);
      __swift_destroy_boxed_opaque_existential_1(&v715);
    }

LABEL_147:
    outlined destroy of String.LocalizationValue.FormatArgument(&v733);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v796 = v126;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v126 + 16) + 1, 1);
      v126 = v796;
    }

    v217 = *(v126 + 16);
    v216 = *(v126 + 24);
    if (v217 >= v216 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v216 > 1), v217 + 1, 1);
      v126 = v796;
    }

    ++v125;
    *(v126 + 16) = v217 + 1;
    v218 = (v126 + (v217 << 6));
    v219 = v745;
    v220 = v746;
    v221 = v747[0];
    *(v218 + 73) = *(v747 + 9);
    v218[3] = v220;
    v218[4] = v221;
    v218[2] = v219;
    if (v125 == v123)
    {

      goto LABEL_154;
    }
  }

  *&v652 = v128;
  if (v727[72] > 4u)
  {
    if (v727[72] != 5)
    {
      goto LABEL_380;
    }

    v172 = v725.i64[0];
    v173 = v725.u8[8];
    LODWORD(v637) = v725.u8[9];
    v174 = v657;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v175 = v172;
    v176 = *(v172 + 16);
    v177 = v655;
    if (v176)
    {
      LODWORD(v631) = v173;
      v651 = v126;
      v178 = v175;
      *&v791 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)(v176);
      v179 = v791;
      v180 = v176 - 1;
      v630 = v178;
      for (i = v178 + 104; ; i += 104)
      {
        v182 = *(i - 72);
        v183 = *(i - 56);
        v815 = *(i - 40);
        v814 = v183;
        v813 = v182;
        v184 = *(i - 24);
        v185 = *(i - 8);
        v186 = *(i + 8);
        *&v819 = *(i + 24);
        v818 = v186;
        v817 = v185;
        v816 = v184;
        v828 = *(i - 72);
        v829 = *(i - 56);
        v830 = *(i - 40);
        *&v831 = *(i - 24);
        v187 = *(i + 16);
        v810 = *i;
        v811 = v187;
        outlined init with copy of LocalizedStringResource(&v813, v687);
        swift_unknownObjectRetain();
        outlined init with copy of LocalizedStringResource(&v813, v687);
        swift_unknownObjectRelease();
        v825 = v830;
        v824 = v829;
        v823 = v828;
        *&v826 = v831;
        *(&v826 + 1) = v174;
        v188 = v656;
        *&v827[0] = v656;
        *(&v827[1] + 8) = v811;
        *(v827 + 8) = v810;
        v687[4] = v827[0];
        v687[5] = v827[1];
        *&v688 = *(&v811 + 1);
        v687[0] = v828;
        v687[1] = v829;
        v687[2] = v830;
        v687[3] = v826;
        v680 = 0uLL;
        LOWORD(v681) = 256;
        *(&v681 + 1) = 0;
        *&v682 = 0;
        BYTE8(v682) = 0;
        outlined init with copy of LocalizedStringResource(&v823, &v754);
        v189 = String.init(localized:options:)(v687, &v680);
        v191 = v190;
        outlined destroy of LocalizedStringResource(&v813);
        v715 = v828;
        v716 = v829;
        v717 = v830;
        *&v718 = v831;
        *(&v718 + 1) = v174;
        *&v719[0] = v188;
        *(v719 + 8) = v810;
        *(&v719[1] + 8) = v811;
        outlined destroy of LocalizedStringResource(&v715);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v179 + 16) + 1, 1);
          v179 = v791;
        }

        v193 = *(v179 + 16);
        v192 = *(v179 + 24);
        if (v193 >= v192 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v192 > 1), v193 + 1, 1);
          v179 = v791;
        }

        *(v179 + 16) = v193 + 1;
        v194 = v179 + 16 * v193;
        *(v194 + 32) = v189;
        *(v194 + 40) = v191;
        if (!v180)
        {
          break;
        }

        --v180;
        v174 = v657;
      }

      v174 = v657;
      v177 = v655;
      v126 = v651;
      v123 = v650;
      v173 = v631;
    }

    else
    {

      v179 = MEMORY[0x1E69E7CC0];
    }

    if (v637)
    {
      v205 = 256;
    }

    else
    {
      v205 = 0;
    }

    v206 = v656;
    specialized ListFormatStyle.format(_:)(v179, v205 | v173, v174, v656);

    BigString.init(_:)();
    AttributedString.init(_:attributes:)(v744, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v715);
    v207 = v715;

    v209 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v208);
    v655 = v177;
    if (v177)
    {
      goto LABEL_382;
    }

    v210 = v209;
    *(&v746 + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
    *&v747[0] = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
    *&v745 = v210;

    swift_unknownObjectRelease();
    *(&v747[0] + 1) = v207;
    *&v747[1] = 0;
    BYTE8(v747[1]) = 0;
    v65 = v206;
    v127 = &v733;
    goto LABEL_147;
  }

  if (v727[72] != 3)
  {
    v651 = v126;
    v687[0] = v725;
    v687[1] = v726;
    v687[2] = *v727;
    *&v687[3] = *&v727[16];
    v754 = *&v727[40];
    v755 = *&v727[56];
    v198 = v657;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v716 = v687[1];
    v717 = v687[2];
    *&v718 = *&v687[3];
    *(&v718 + 1) = v198;
    *&v719[0] = v65;
    *(&v719[1] + 8) = v755;
    *(v719 + 8) = v754;
    v826 = v718;
    v715 = v687[0];
    v827[0] = v719[0];
    v827[1] = v719[1];
    *&v827[2] = *(&v755 + 1);
    v823 = v687[0];
    v824 = v687[1];
    v825 = v687[2];
    outlined init with copy of LocalizedStringResource(&v715, &v813);
    AttributedString.init<A>(localized:including:)(&v823, v638, v645, v646, &v813);
    v199 = v813;

    v201 = v655;
    v202 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v200);
    if (v201)
    {
      goto LABEL_381;
    }

    v203 = v202;
    *(&v746 + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
    v204 = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
    v823 = v687[0];
    v824 = v687[1];
    v825 = v687[2];
    *(v827 + 8) = v754;
    *&v747[0] = v204;
    *&v745 = v203;
    *(&v747[0] + 1) = v199;
    *&v747[1] = 0;
    BYTE8(v747[1]) = 0;
    *&v826 = *&v687[3];
    *(&v826 + 1) = v198;
    v65 = v656;
    *&v827[0] = v656;
    *(&v827[1] + 8) = v755;
    outlined destroy of LocalizedStringResource(&v823);

    v655 = 0;
    v126 = v651;
    v123 = v650;
    v127 = &v733;
    goto LABEL_147;
  }

  v717 = *v727;
  v718 = *&v727[16];
  v719[0] = *&v727[32];
  v719[1] = *&v727[48];
  v715 = v725;
  v716 = v726;
  *&v823 = v657;
  *(&v823 + 1) = v65;
  (v725.i64[0])(&v813, &v823);
  getter of attributeFixup #1 in String.LocalizationValue.FormatArgument.resolve<A>(attributed:with:including:)(v128, 1, &v823);
  if (v824 == 255)
  {
LABEL_145:
    v211 = v813;

    v213 = v655;
    v214 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v212);
    v655 = v213;
    if (v213)
    {
      goto LABEL_384;
    }

    v215 = v214;
    *(&v746 + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
    *&v747[0] = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, off_1E69EE1C0);
    *&v745 = v215;

    outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v715);

    *(&v747[0] + 1) = v211;
    *&v747[1] = 0;
    BYTE8(v747[1]) = 0;
    goto LABEL_147;
  }

  v134 = v823;
  if ((v824 & 1) == 0)
  {
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v823, *(&v823 + 1), v824);
    goto LABEL_145;
  }

  v637 = *(&v823 + 1);
  LODWORD(v630) = v824;
  v135 = v813;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v651 = v126;
  if ((v136 & 1) == 0)
  {
    v137 = *(v135 + 40);
    v856[0] = *(v135 + 24);
    v856[1] = v137;
    v856[2] = *(v135 + 56);
    v138 = *(v135 + 72);
    v139 = *(v135 + 80);
    v140 = *(v135 + 88);
    v631 = *(v135 + 96);
    type metadata accessor for AttributedString.Guts();
    swift_allocObject();
    outlined init with copy of BigString(v856, &v823);
    swift_unknownObjectRetain();
    v141 = AttributedString.Guts.init(string:runs:)(v856, v138, v139, v140, v631);

    *&v813 = v141;
    v135 = v141;
  }

  v127 = v134;
  if (one-time initialization token for _nextVersion != -1)
  {
    swift_once();
  }

  *(v135 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v142 = *(v135 + 40);
  v853 = *(v135 + 24);
  v854 = v142;
  v855 = *(v135 + 56);
  v143 = BigString.startIndex.getter();
  v145 = v144;
  v147 = v146;
  v631 = v135;
  v149 = v148;
  v150 = BigString.endIndex.getter();
  *&v846 = v143;
  *(&v846 + 1) = v145;
  v847 = v147;
  v848 = v149;
  v151 = v631;
  v849 = v150;
  v850 = v152;
  v851 = v153;
  v852 = v154;
  AttributedString.Guts.unicodeScalarRange(roundingDown:)(v743);
  v155 = v743[0] >> 11;
  v156 = v743[4] >> 11;

  v157 = v637;

  specialized AttributedString._InternalRunsSlice.updateEach(with:)(v151, v155, v156, v127, 0);

  if ((specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v127) & 1) == 0)
  {
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v127, v157, v630);
    v126 = v651;
LABEL_144:
    v127 = &v733;
    v123 = v650;
    goto LABEL_145;
  }

  v595 = v156;
  v596 = v155;
  v158 = 1 << *(v127 + 32);
  if (v158 < 64)
  {
    v159 = ~(-1 << v158);
  }

  else
  {
    v159 = -1;
  }

  v160 = v159 & *(v127 + 64);
  v161 = (v158 + 63) >> 6;

  v162 = 0;
  v597 = MEMORY[0x1E69E7CC0];
  while (v160)
  {
LABEL_108:
    v163 = __clz(__rbit64(v160));
    v160 &= v160 - 1;
    outlined init with copy of AttributedString._AttributeValue(*(v127 + 56) + 72 * (v163 | (v162 << 6)), &v823);
    v164 = *(&v825 + 1);
    v165 = v826;
    outlined copy of AttributedString.AttributeRunBoundaries?(*(&v825 + 1), v826);
    isUniquelyReferenced_nonNull_native = outlined destroy of AttributedString._AttributeValue(&v823);
    if (v165 != 1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v597 + 2) + 1, 1, v597);
        v597 = isUniquelyReferenced_nonNull_native;
      }

      v168 = *(v597 + 2);
      v167 = *(v597 + 3);
      v169 = v168 + 1;
      if (v168 >= v167 >> 1)
      {
        v594 = v168 + 1;
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 1, 1, v597);
        v169 = v594;
        v597 = isUniquelyReferenced_nonNull_native;
      }

      v170 = v597;
      *(v597 + 2) = v169;
      v171 = &v170[16 * v168];
      *(v171 + 4) = v164;
      *(v171 + 5) = v165;
    }
  }

  v126 = v651;
  while (1)
  {
    v166 = v162 + 1;
    if (__OFADD__(v162, 1))
    {
      break;
    }

    if (v166 >= v161)
    {

      AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v596, v595, 0, v597);

      outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v127, v637, v630);
      v65 = v656;
      goto LABEL_144;
    }

    v160 = *(v127 + 64 + 8 * v166);
    ++v162;
    if (v160)
    {
      v162 = v166;
      goto LABEL_108;
    }
  }

LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  v591 = isUniquelyReferenced_nonNull_native;
  swift_once();
  isUniquelyReferenced_nonNull_native = v591;
LABEL_201:
  v367 = qword_1EA7B25B0;
  *(isUniquelyReferenced_nonNull_native + 32) = static AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute.name;
  *(isUniquelyReferenced_nonNull_native + 40) = v367;
  *(v127 + *(v617 + 36)) = isUniquelyReferenced_nonNull_native;
  v640 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v368 = static _SetStorage.allocate(capacity:)();
  v369 = v368 + 56;

  v370 = qword_1EEECF0D0;
  v371 = unk_1EEECF0D8;
  Hasher.init(_seed:)();
  if (v371 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v371)
    {
      MEMORY[0x1865CD060](1);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x1865CD060](0);
    }
  }

  v388 = Hasher._finalize()();
  v389 = -1 << *(v368 + 32);
  v390 = v388 & ~v389;
  v391 = v390 >> 6;
  v392 = *(v369 + 8 * (v390 >> 6));
  v393 = 1 << v390;
  if (((1 << v390) & v392) == 0)
  {
LABEL_234:
    *(v369 + 8 * v391) = v392 | v393;
    v402 = (*(v368 + 48) + 16 * v390);
    *v402 = v370;
    v402[1] = v371;
    v403 = *(v368 + 16);
    v404 = __OFADD__(v403, 1);
    v405 = v403 + 1;
    if (!v404)
    {
      *(v368 + 16) = v405;
      v406 = v624;
      goto LABEL_242;
    }

LABEL_373:
    __break(1u);
  }

  v394 = ~v389;
  while (1)
  {
    v395 = (*(v368 + 48) + 16 * v390);
    v396 = *v395;
    v397 = v395[1];
    if (v397 == 1)
    {
      if (v371 == 1)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v395, 1);
        v407 = v396;
        v408 = 1;
        goto LABEL_241;
      }

LABEL_219:
      outlined copy of AttributedString.AttributeRunBoundaries?(*v395, v395[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v370, v371);
      outlined consume of AttributedString.AttributeRunBoundaries?(v396, v397);
      v398 = v370;
      v399 = v371;
LABEL_220:
      outlined consume of AttributedString.AttributeRunBoundaries?(v398, v399);
      goto LABEL_221;
    }

    if (v371 == 1)
    {
      goto LABEL_219;
    }

    if (!v397)
    {
      break;
    }

    if (!v371)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v395, v395[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v370, 0);
      outlined copy of AttributedString.AttributeRunBoundaries?(v396, v397);

      v398 = v396;
      v399 = v397;
      goto LABEL_220;
    }

    if (v396 == v370 && v397 == v371)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v370, v371);
      outlined copy of AttributedString.AttributeRunBoundaries?(v370, v371);

LABEL_239:
      v407 = v370;
      v408 = v371;
      goto LABEL_241;
    }

    v401 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of AttributedString.AttributeRunBoundaries?(v396, v397);
    outlined copy of AttributedString.AttributeRunBoundaries?(v370, v371);
    outlined copy of AttributedString.AttributeRunBoundaries?(v396, v397);

    if (v401)
    {
      outlined consume of AttributedString.AttributeRunBoundaries?(v370, v371);
      v370 = v396;
      v371 = v397;
      goto LABEL_239;
    }

    outlined consume of AttributedString.AttributeRunBoundaries?(v396, v397);
LABEL_221:
    v390 = (v390 + 1) & v394;
    v391 = v390 >> 6;
    v392 = *(v369 + 8 * (v390 >> 6));
    v393 = 1 << v390;
    if ((v392 & (1 << v390)) == 0)
    {
      goto LABEL_234;
    }
  }

  outlined copy of AttributedString.AttributeRunBoundaries?(*v395, 0);
  if (v371)
  {
    outlined copy of AttributedString.AttributeRunBoundaries?(v370, v371);

    v398 = v396;
    v399 = 0;
    goto LABEL_220;
  }

  swift_bridgeObjectRelease_n();
  v407 = v396;
  v408 = 0;
LABEL_241:
  outlined consume of AttributedString.AttributeRunBoundaries?(v407, v408);
  v406 = v624;
LABEL_242:
  v412 = v611;
  outlined destroy of TermOfAddress?(&qword_1EEECF0D0, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMR);
  outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(v616, type metadata accessor for AttributedString.Runs);
  outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(*(&v628 + 1), type metadata accessor for AttributedString.Runs);
  v413 = v618;
  *(v618 + *(v617 + 40)) = v368;
  outlined init with copy of FloatingPointRoundingRule?(v413, v412, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
  outlined init with copy of FloatingPointRoundingRule?(v412, v406, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
  v414 = *(v412 + 96);
  if (v414 == 2)
  {
LABEL_375:
    __break(1u);
LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

  v415 = *(v412 + 88);
  v654 = *(v412 + 72);
  outlined destroy of TermOfAddress?(v413, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
  v416 = *(*v412 + 16);
  outlined destroy of TermOfAddress?(v412, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionG0OGMR);
  v417 = v406 + *(v610 + 36);
  *v417 = v654;
  *(v417 + 16) = v415;
  *(v417 + 24) = v414;
  *(v417 + 32) = v416;
  specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v715);
  v729 = v721;
  v730 = v722;
  v731 = v723;
  v732 = v724;
  *&v727[32] = v719[0];
  *&v727[48] = v719[1];
  *&v727[64] = v719[2];
  v728 = v720;
  v725 = v715;
  v726 = v716;
  *v727 = v717;
  *&v727[16] = v718;
  v738 = v721;
  v739 = v722;
  v740 = v723;
  v741 = v724;
  v735 = v719[0];
  v736[0] = v719[1];
  v736[1] = v719[2];
  v737 = v720;
  v733 = v715;
  v734[0] = v716;
  v734[1] = v717;
  v734[2] = v718;
  v418 = _s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOg(&v733);
  v296 = MEMORY[0x1E69E7CC0];
  if (v418 == 1)
  {
    goto LABEL_244;
  }

  LODWORD(v637) = v641;
  v421 = v645;
  v422 = v639;
  do
  {
    v646 = v296;
    while (1)
    {
      while (1)
      {
        if (BYTE9(v736[1]))
        {
          goto LABEL_254;
        }

        v831 = v734[2];
        v832 = v735;
        v833[0] = v736[0];
        *(v833 + 9) = *(v736 + 9);
        v828 = v733;
        v829 = v734[0];
        v830 = v734[1];

        v423 = _sSn10FoundationSS5IndexVRszrlE_2inSnyACGSgAA16AttributedStringV22MarkdownSourcePositionV_qd__tcSyRd__lufCSS_Tt1B5(&v828, v644, v422);
        if (v425)
        {
          goto LABEL_254;
        }

        v426 = v423;
        v427 = v424;

        _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v426, v427, v421, &v709);
        v428 = *(&v710 + 1);
        if (*(&v710 + 1) == 2)
        {
          goto LABEL_254;
        }

        v429 = v710;
        v430 = *(&v709 + 1);
        v431 = v709;
        *(v812 + 8) = v712;
        *(&v812[1] + 8) = v713;
        *(&v812[2] + 1) = v714;
        v810 = v709;
        v811 = v710;
        v643 = v711;
        *&v812[0] = v711;

        AttributedString.UnicodeScalarView.init(_:)(v432, &v680);
        v707[1] = v681;
        v707[2] = v682;
        v707[3] = v683;
        v707[4] = v684;
        v704 = v682;
        v705 = v683;
        v706 = v684;
        v707[0] = v680;
        v702 = v680;
        v703 = v681;
        v687[2] = v812[0];
        v687[3] = v812[1];
        v687[4] = v812[2];
        v687[0] = v810;
        v687[1] = v811;
        AttributedString.UnicodeScalarView.subscript.getter(v687, &v715);
        outlined destroy of AttributedString.UnicodeScalarView(v707);
        v827[2] = v719[2];
        v827[3] = v720;
        v827[4] = v721;
        v827[5] = v722;
        v825 = v717;
        v826 = v718;
        v827[0] = v719[0];
        v827[1] = v719[1];
        v823 = v715;
        v824 = v716;

        AttributedString.UnicodeScalarView.init(_:)(v433, &v697);
        v708[2] = v699;
        v708[3] = v700;
        v708[4] = v701;
        v708[0] = v697;
        v708[1] = v698;
        v694 = v699;
        v695 = v700;
        v696 = v701;
        v692 = v697;
        v693 = v698;
        v686[2] = v739;
        v686[3] = v740;
        v686[4] = v741;
        v686[0] = v737;
        v686[1] = v738;
        AttributedString.UnicodeScalarView.subscript.getter(v686, v687);
        outlined destroy of AttributedString.UnicodeScalarView(v708);
        v819 = v688;
        v820 = v689;
        v821 = v690;
        v822 = v691;
        v815 = v687[2];
        v816 = v687[3];
        v817 = v687[4];
        v818 = v687[5];
        v813 = v687[0];
        v814 = v687[1];
        v434 = specialized Sequence<>.elementsEqual<A>(_:)(&v813);
        outlined destroy of TermOfAddress?(&v813, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMR);
        outlined destroy of TermOfAddress?(&v823, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV17UnicodeScalarViewVGMR);
        if (v434)
        {
          break;
        }

        v296 = v646;
        v406 = v624;
        v422 = v639;
LABEL_254:
        specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v715);
        v729 = v721;
        v730 = v722;
        v731 = v723;
        v732 = v724;
        *&v727[32] = v719[0];
        *&v727[48] = v719[1];
        *&v727[64] = v719[2];
        v728 = v720;
        v725 = v715;
        v726 = v716;
        *v727 = v717;
        *&v727[16] = v718;
        v738 = v721;
        v739 = v722;
        v740 = v723;
        v741 = v724;
        v735 = v719[0];
        v736[0] = v719[1];
        v736[1] = v719[2];
        v737 = v720;
        v733 = v715;
        v734[0] = v716;
        v734[1] = v717;
        v734[2] = v718;
        if (_s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOg(&v733) == 1)
        {
          goto LABEL_244;
        }
      }

      *&v628 = v431;
      *(&v628 + 1) = v430;
      *&v629 = v429;
      *(&v629 + 1) = v428;
      v435 = v737;
      v633 = *(&v738 + 1);
      v436 = v738;
      v631 = v739;
      specialized AttributedString.subscript.getter(v421, v687);
      v702 = v687[0];
      v703 = v687[1];
      v704 = v687[2];
      v705 = v687[3];
      v706 = v687[4];
      v437 = *&v687[0];
      v697 = *(v687 + 8);
      v698 = *(&v687[1] + 8);
      v699 = *(&v687[2] + 8);
      v700 = *(&v687[3] + 8);
      outlined init with copy of AttributedSubstring(&v702, &v680);
      v438 = v607;
      RangeSet.init(_:)();
      v439 = v605;
      AttributedString.Runs.init(_:in:)(v437, v438, v605);
      outlined destroy of AttributedSubstring(&v702);
      v440 = v615;
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v439, v615, type metadata accessor for AttributedString.Runs);
      v441 = v440 + *(v606 + 36);
      v442 = *(v439 + 9);
      v718 = *(v439 + 7);
      v719[0] = v442;
      v719[1] = *(v439 + 11);
      *(&v719[1] + 10) = *(v439 + 98);
      v443 = *(v439 + 3);
      v715 = *(v439 + 1);
      v716 = v443;
      v717 = *(v439 + 5);
      outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(v439, type metadata accessor for AttributedString.Runs);
      v444 = v719[1];
      *(v441 + 64) = v719[0];
      *(v441 + 80) = v444;
      *(v441 + 90) = *(&v719[1] + 10);
      v445 = v716;
      *v441 = v715;
      *(v441 + 16) = v445;
      v446 = v718;
      *(v441 + 32) = v717;
      *(v441 + 48) = v446;
      specialized IndexingIterator.next()(v687);
      v682 = v687[2];
      v683 = v687[3];
      v684 = v687[4];
      v685 = *&v687[5];
      v680 = v687[0];
      v681 = v687[1];
      v447 = *&v687[0];
      v623 = *(&v435 + 1);
      v626 = v435;
      if (!*&v687[0])
      {
        goto LABEL_304;
      }

      v642 = v631;
      *&v650 = v633;
      *&v653 = *(&v680 + 1);
      *&v649 = v436;
      *&v648 = *(&v435 + 1);
      *&v652 = v435;
      LODWORD(v636) = v641;
      v630 = v436;
      do
      {
        while (1)
        {
          *&v654 = v447;
          v448 = v652;
          v449 = v648;
          v450 = v649;
          v451 = v650;
          v452 = v685;

          v648 = v682;
          v652 = v683;
          v649 = v684;
          v650 = v681;
          AttributedString.UnicodeScalarView.init(_:)(v453, &v692);
          v454 = *(v452 + 16);
          v686[0] = v650;
          v686[1] = v648;
          *&v686[2] = v454;
          v675 = v652;
          v676 = v649;
          *&v677 = v454;
          AttributedString.UnicodeScalarView._distance(from:to:)(v686, &v675);
          v699 = v694;
          v700 = v695;
          v701 = v696;
          v697 = v692;
          v698 = v693;
          outlined destroy of AttributedString.UnicodeScalarView(&v697);

          AttributedString.UnicodeScalarView.init(_:)(v455, &v692);
          *&v675 = v448;
          *(&v675 + 1) = v449;
          *&v676 = v450;
          *(&v676 + 1) = v451;
          *&v677 = v642;
          AttributedString.UnicodeScalarView.index(_:offsetBy:)(&v675, v686);
          v687[2] = v694;
          v687[3] = v695;
          v687[4] = v696;
          v687[0] = v692;
          v687[1] = v693;
          outlined destroy of AttributedString.UnicodeScalarView(v687);
          *&v652 = *&v686[0];
          if (*&v686[0] >> 10 < v448 >> 10)
          {
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
            goto LABEL_373;
          }

          *&v648 = *(&v686[0] + 1);
          *&v650 = *(&v686[1] + 1);
          *&v649 = *&v686[1];
          v456 = *&v686[2];

          v457 = v662;
          v458 = swift_isUniquelyReferenced_nonNull_native();
          v641 = v451;
          v642 = v456;
          if (v458)
          {
            v459 = v457;
          }

          else
          {
            v460 = *(v457 + 40);
            v779[0] = *(v457 + 24);
            v779[1] = v460;
            v779[2] = *(v457 + 56);
            v461 = *(v457 + 72);
            v462 = *(v457 + 80);
            v463 = *(v457 + 88);
            v464 = *(v457 + 96);
            type metadata accessor for AttributedString.Guts();
            swift_allocObject();
            outlined init with copy of BigString(v779, &v692);
            swift_unknownObjectRetain();
            v459 = AttributedString.Guts.init(string:runs:)(v779, v461, v462, v463, v464);

            v662 = v459;
          }

          if (one-time initialization token for _nextVersion != -1)
          {
            swift_once();
          }

          *(v459 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          v465 = *(v459 + 40);
          v776 = *(v459 + 24);
          v777 = v465;
          v778 = *(v459 + 56);
          v466 = BigString.startIndex.getter();
          v468 = v467;
          v470 = v469;
          v472 = v471;
          v473 = BigString.endIndex.getter();
          *&v692 = v459;
          *(&v692 + 1) = v466;
          *&v693 = v468;
          *(&v693 + 1) = v470;
          *&v694 = v472;
          v127 = &v745;
          *(&v694 + 1) = v473;
          *&v695 = v474;
          *(&v695 + 1) = v475;
          v696 = v476;

          outlined destroy of AttributedString.CharacterView(&v692);
          v765 = v448;
          v766 = v449;
          v767 = v450;
          v768 = v641;
          v769 = v652;
          v770 = v648;
          v771 = v649;
          v772 = v650;
          v477 = *(v459 + 40);
          v773 = *(v459 + 24);
          v774 = v477;
          v775 = *(v459 + 56);
          swift_unknownObjectRetain();

          BigString.UnicodeScalarView.subscript.getter();
          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v745);
          v686[2] = v748;
          v686[3] = v749;
          v675 = v747[1];
          v676 = v747[2];
          v677 = v748;
          v678 = v749;
          if (one-time initialization token for currentIdentity != -1)
          {
            swift_once();
          }

          v478 = static AttributedString.currentIdentity;
          os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
          v479 = *(v478 + 16);
          v480 = v479 + 1;
          if (__OFADD__(v479, 1))
          {
            goto LABEL_371;
          }

          *(v478 + 16) = v480;
          os_unfair_lock_unlock((v478 + 24));
          BigString.init()();
          *&v686[0] = 0;
          MEMORY[0x1865D26B0](v686, 8);
          v481 = *&v686[0];
          type metadata accessor for AttributedString.Guts();
          v482 = swift_allocObject();
          if ((BigString.isEmpty.getter() & 1) == 0)
          {
            goto LABEL_372;
          }

          *(v482 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          v483 = v751;
          *(v482 + 24) = v750;
          *(v482 + 40) = v483;
          *(v482 + 56) = v752;
          *(v482 + 72) = 0;
          *(v482 + 80) = 0;
          *(v482 + 88) = 0;
          *(v482 + 96) = v481;
          *(v482 + 104) = MEMORY[0x1E69E7CC0];

          v662 = v482;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v484 = *(v459 + 40);
            v764[0] = *(v459 + 24);
            v764[1] = v484;
            v764[2] = *(v459 + 56);
            v485 = *(v459 + 72);
            v486 = *(v459 + 80);
            v127 = *(v459 + 88);
            v487 = *(v459 + 96);
            swift_allocObject();
            outlined init with copy of BigString(v764, v686);
            swift_unknownObjectRetain();
            v488 = AttributedString.Guts.init(string:runs:)(v764, v485, v486, v127, v487);

            v459 = v488;
          }

          v489 = v654;
          v760 = v675;
          v761 = v676;
          v762 = v677;
          v763 = v678;
          AttributedString.Guts.unicodeScalarRange(roundingDown:)(v753);
          v490 = v753[0] >> 11;
          v491 = v753[4] >> 11;

          specialized AttributedString._InternalRunsSlice.updateEach(with:)(v459, v490, v491, v489, 1);

          v492 = specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v489);
          v651 = v459;
          if (v492)
          {
            v493 = v489 + 64;
            v494 = 1 << *(v489 + 32);
            if (v494 < 64)
            {
              v495 = ~(-1 << v494);
            }

            else
            {
              v495 = -1;
            }

            v496 = v495 & *(v489 + 64);
            v497 = (v494 + 63) >> 6;

            v498 = 0;
            v641 = MEMORY[0x1E69E7CC0];
            while (v496)
            {
              v489 = v654;
LABEL_288:
              v500 = __clz(__rbit64(v496));
              v496 &= v496 - 1;
              outlined init with copy of AttributedString._AttributeValue(*(v489 + 56) + 72 * (v500 | (v498 << 6)), v686);
              v501 = *(&v686[2] + 1);
              v127 = *&v686[3];
              outlined copy of AttributedString.AttributeRunBoundaries?(*(&v686[2] + 1), *&v686[3]);
              isUniquelyReferenced_nonNull_native = outlined destroy of AttributedString._AttributeValue(v686);
              if (v127 != 1)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v641 + 16) + 1, 1, v641);
                  v641 = isUniquelyReferenced_nonNull_native;
                }

                v503 = *(v641 + 16);
                v502 = *(v641 + 24);
                v504 = (v503 + 1);
                if (v503 >= v502 >> 1)
                {
                  v621 = *(v641 + 16);
                  v622 = (v503 + 1);
                  isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v502 > 1), v503 + 1, 1, v641);
                  v503 = v621;
                  v504 = v622;
                  v641 = isUniquelyReferenced_nonNull_native;
                }

                v505 = v641;
                *(v641 + 16) = v504;
                v506 = v505 + 16 * v503;
                *(v506 + 32) = v501;
                *(v506 + 40) = v127;
              }
            }

            v489 = v654;
            while (1)
            {
              v499 = v498 + 1;
              if (__OFADD__(v498, 1))
              {
                goto LABEL_367;
              }

              if (v499 >= v497)
              {
                break;
              }

              v496 = *(v493 + 8 * v499);
              ++v498;
              if (v496)
              {
                v498 = v499;
                goto LABEL_288;
              }
            }

            v459 = v651;
            AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v490, v491, 0, v641);
          }

          else
          {
          }

          v662 = v459;
          *(v686 + 8) = v675;
          *(&v686[1] + 8) = v676;
          *(&v686[2] + 8) = v677;
          *(&v686[3] + 8) = v678;
          *&v686[0] = v459;
          *(&v686[4] + 1) = v480;
          outlined destroy of AttributedSubstring(v686);
          if ((v660 & 1) == 0)
          {
            outlined destroy of TermOfAddress?(&v680, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd, &_s10Foundation16AttributedStringV4RunsV3RunVSgMR);
            goto LABEL_263;
          }

          if (v637)
          {
            outlined destroy of TermOfAddress?(&v680, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd, &_s10Foundation16AttributedStringV4RunsV3RunVSgMR);
            LODWORD(v636) = 1;
            goto LABEL_263;
          }

          _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV014InflectionRuleD0O_Tt0g5(v489, v674);
          outlined destroy of TermOfAddress?(&v680, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd, &_s10Foundation16AttributedStringV4RunsV3RunVSgMR);

          if (*(&v674[0] + 1) == 1)
          {
            break;
          }

          outlined consume of AttributedString.AttributeRunBoundaries?(*&v674[0], *(&v674[0] + 1));
          specialized IndexingIterator.next()(v687);
          v682 = v687[2];
          v683 = v687[3];
          v684 = v687[4];
          v685 = *&v687[5];
          v680 = v687[0];
          v681 = v687[1];
          LODWORD(v637) = 1;
          LODWORD(v636) = 1;
          LODWORD(v641) = 1;
          *&v653 = *(&v687[0] + 1);
          v447 = *&v687[0];
          v436 = v630;
          if (!*&v687[0])
          {
            goto LABEL_304;
          }
        }

        LODWORD(v636) = 0;
LABEL_263:
        specialized IndexingIterator.next()(v687);
        v682 = v687[2];
        v683 = v687[3];
        v684 = v687[4];
        v685 = *&v687[5];
        v680 = v687[0];
        v681 = v687[1];
        *&v653 = *(&v687[0] + 1);
        v447 = *&v687[0];
      }

      while (*&v687[0]);
      LODWORD(v641) = v636;
      v436 = v630;
LABEL_304:
      outlined destroy of TermOfAddress?(v615, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
      if (v660 == 1)
      {
        break;
      }

      v406 = v624;
      specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v715);
      v729 = v721;
      v730 = v722;
      v731 = v723;
      v732 = v724;
      *&v727[32] = v719[0];
      *&v727[48] = v719[1];
      *&v727[64] = v719[2];
      v728 = v720;
      v725 = v715;
      v726 = v716;
      *v727 = v717;
      *&v727[16] = v718;
      v738 = v721;
      v739 = v722;
      v740 = v723;
      v741 = v724;
      v735 = v719[0];
      v736[0] = v719[1];
      v736[1] = v719[2];
      v737 = v720;
      v733 = v715;
      v734[0] = v716;
      v734[1] = v717;
      v734[2] = v718;
      v507 = _s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOg(&v733);
      v421 = v645;
      v296 = v646;
      v422 = v639;
      if (v507 == 1)
      {
        goto LABEL_244;
      }
    }

    v630 = v436;
    specialized AttributedString.subscript.getter(v645, v687);
    v697 = v687[0];
    v698 = v687[1];
    v699 = v687[2];
    v700 = v687[3];
    v701 = v687[4];
    v508 = *&v687[0];
    v686[0] = *(v687 + 8);
    v686[1] = *(&v687[1] + 8);
    v686[2] = *(&v687[2] + 8);
    v686[3] = *(&v687[3] + 8);
    outlined init with copy of AttributedSubstring(&v697, &v692);
    v509 = v607;
    RangeSet.init(_:)();
    v510 = v600;
    AttributedString.Runs.init(_:in:)(v508, v509, v600);
    outlined destroy of AttributedSubstring(&v697);
    v511 = v601;
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v510, v601, type metadata accessor for AttributedString.Runs);
    v512 = v511;
    v513 = v602;
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v512, v602, type metadata accessor for AttributedString.Runs);
    *(v513 + *(v603 + 36)) = &outlined read-only object #1 of String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:);
    v514 = static _SetStorage.allocate(capacity:)();
    v515 = qword_1EEECF130;
    v516 = unk_1EEECF138;
    Hasher.init(_seed:)();
    if (v516 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v516)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v406 = v624;
    v517 = v514 + 56;
    v518 = Hasher._finalize()();
    v519 = ~(-1 << *(v514 + 32));
    v520 = v518 & v519;
    v521 = (v518 & v519) >> 6;
    v522 = *(v514 + 56 + 8 * v521);
    v523 = 1 << (v518 & v519);
    if ((v523 & v522) == 0)
    {
LABEL_313:
      *(v517 + 8 * v521) = v522 | v523;
      v524 = (*(v514 + 48) + 16 * v520);
      *v524 = v515;
      v524[1] = v516;
      v525 = *(v514 + 16);
      v404 = __OFADD__(v525, 1);
      v526 = v525 + 1;
      if (!v404)
      {
        *(v514 + 16) = v526;
        v527 = v599;
        goto LABEL_337;
      }

LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
LABEL_380:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_381:
      swift_unexpectedError();
      __break(1u);
LABEL_382:
      swift_unexpectedError();
      __break(1u);
LABEL_383:
      swift_unexpectedError();
      __break(1u);
LABEL_384:
      swift_unexpectedError();
      __break(1u);
LABEL_385:
      __break(1u);
      return;
    }

    while (2)
    {
      v530 = (*(v514 + 48) + 16 * v520);
      v531 = *v530;
      v532 = v530[1];
      if (v532 == 1)
      {
        if (v516 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v530, 1);
          v535 = v531;
          v536 = 1;
          goto LABEL_336;
        }

LABEL_316:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v530, v530[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v515, v516);
        outlined consume of AttributedString.AttributeRunBoundaries?(v531, v532);
        v528 = v515;
        v529 = v516;
        goto LABEL_317;
      }

      if (v516 == 1)
      {
        goto LABEL_316;
      }

      if (v532)
      {
        if (v516)
        {
          if (v531 == v515 && v532 == v516)
          {
            outlined copy of AttributedString.AttributeRunBoundaries?(v515, v516);
            outlined copy of AttributedString.AttributeRunBoundaries?(v515, v516);

            goto LABEL_334;
          }

          v534 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of AttributedString.AttributeRunBoundaries?(v531, v532);
          outlined copy of AttributedString.AttributeRunBoundaries?(v515, v516);
          outlined copy of AttributedString.AttributeRunBoundaries?(v531, v532);

          if (v534)
          {
            outlined consume of AttributedString.AttributeRunBoundaries?(v515, v516);
            v515 = v531;
            v516 = v532;
LABEL_334:
            v535 = v515;
            v536 = v516;
            goto LABEL_336;
          }
        }

        else
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v530, v530[1]);
          outlined copy of AttributedString.AttributeRunBoundaries?(v515, 0);
          outlined copy of AttributedString.AttributeRunBoundaries?(v531, v532);
        }

        v528 = v531;
        v529 = v532;
        goto LABEL_317;
      }

      outlined copy of AttributedString.AttributeRunBoundaries?(*v530, 0);
      if (v516)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v515, v516);

        v528 = v531;
        v529 = 0;
LABEL_317:
        outlined consume of AttributedString.AttributeRunBoundaries?(v528, v529);
        v406 = v624;
        v520 = (v520 + 1) & v519;
        v521 = v520 >> 6;
        v522 = *(v517 + 8 * (v520 >> 6));
        v523 = 1 << v520;
        if ((v522 & (1 << v520)) == 0)
        {
          goto LABEL_313;
        }

        continue;
      }

      break;
    }

    swift_bridgeObjectRelease_n();
    v535 = v531;
    v536 = 0;
LABEL_336:
    outlined consume of AttributedString.AttributeRunBoundaries?(v535, v536);
    v527 = v599;
    v406 = v624;
LABEL_337:
    outlined destroy of TermOfAddress?(&qword_1EEECF130, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMR);
    outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(v601, type metadata accessor for AttributedString.Runs);
    outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(v600, type metadata accessor for AttributedString.Runs);
    v537 = v602;
    *(v602 + *(v603 + 40)) = v514;
    outlined init with copy of FloatingPointRoundingRule?(v537, v527, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
    v538 = v604;
    outlined init with copy of FloatingPointRoundingRule?(v527, v604, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
    v539 = *(v527 + 96);
    if (v539 == 2)
    {
      goto LABEL_385;
    }

    v540 = v527;
    *&v654 = *(v527 + 88);
    v653 = *(v527 + 72);
    outlined destroy of TermOfAddress?(v537, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
    v541 = *(*v527 + 16);
    outlined destroy of TermOfAddress?(v540, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
    v542 = v538 + *(v598 + 36);
    *v542 = v653;
    *(v542 + 16) = v654;
    *(v542 + 24) = v539;
    *(v542 + 32) = v541;
    v422 = v639;
    v296 = v646;
    while (1)
    {
      specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(v687);
      v543 = *(&v687[2] + 1);
      if (*(&v687[2] + 1) == 2)
      {
        break;
      }

      if ((BYTE8(v687[0]) & 1) == 0)
      {
        *&v649 = *&v687[0];
        v544 = v687[1];
        v545 = *&v687[2];
        v652 = *(&v687[4] + 8);
        v653 = *(&v687[3] + 8);
        v546 = *&v687[3];
        *&v650 = *(&v687[5] + 1);

        AttributedString.UnicodeScalarView.init(_:)(v547, v687);
        v692 = v628;
        v693 = v629;
        *&v694 = v643;
        v686[0] = v544;
        *&v686[1] = v545;
        *(&v686[1] + 1) = v543;
        *&v686[2] = v546;
        *&v654 = AttributedString.UnicodeScalarView._distance(from:to:)(&v692, v686);
        v674[2] = v687[2];
        v674[3] = v687[3];
        v674[4] = v687[4];
        v674[0] = v687[0];
        v674[1] = v687[1];
        outlined destroy of AttributedString.UnicodeScalarView(v674);

        AttributedString.UnicodeScalarView.init(_:)(v548, v687);
        v692 = v544;
        *&v693 = v545;
        *(&v693 + 1) = v543;
        *&v694 = v546;
        v686[0] = v653;
        v686[1] = v652;
        *&v686[2] = v650;
        AttributedString.UnicodeScalarView._distance(from:to:)(&v692, v686);
        v677 = v687[2];
        v678 = v687[3];
        v679 = v687[4];
        v675 = v687[0];
        v676 = v687[1];
        outlined destroy of AttributedString.UnicodeScalarView(&v675);

        AttributedString.UnicodeScalarView.init(_:)(v549, v687);
        *&v673[0] = v626;
        *(&v673[0] + 1) = v623;
        *&v673[1] = v630;
        *(&v673[1] + 1) = v633;
        *&v673[2] = v631;
        AttributedString.UnicodeScalarView.index(_:offsetBy:)(v673, &v692);
        v686[2] = v687[2];
        v686[3] = v687[3];
        v686[4] = v687[4];
        v686[0] = v687[0];
        v686[1] = v687[1];
        outlined destroy of AttributedString.UnicodeScalarView(v686);
        v550 = v692;
        v551 = v693;
        v552 = v694;

        AttributedString.UnicodeScalarView.init(_:)(v553, v687);
        *&v654 = *(&v550 + 1);
        *v665 = v550;
        *&v652 = v551 >> 64;
        *&v653 = v551;
        *&v665[16] = v551;
        *&v650 = v552;
        *&v665[32] = v552;
        AttributedString.UnicodeScalarView.index(_:offsetBy:)(v665, v673);
        v694 = v687[2];
        v695 = v687[3];
        v696 = v687[4];
        v692 = v687[0];
        v693 = v687[1];
        outlined destroy of AttributedString.UnicodeScalarView(&v692);
        v554 = *&v673[0];
        if (*&v673[0] >> 10 < v550 >> 10)
        {
          goto LABEL_376;
        }

        *&v648 = *(&v673[0] + 1);
        v555 = *(&v673[1] + 1);
        v646 = *&v673[1];
        v642 = *&v673[2];
        v806[0] = v550;
        v556 = v654;
        v806[1] = v654;
        v557 = v653;
        v806[2] = v653;
        v558 = v652;
        v806[3] = v652;
        v559 = v650;
        v806[4] = v650;
        v807 = v673[0];
        v808 = v673[1];
        v809 = *&v673[2];
        v560 = v662;

        v636 = _sSo8_NSRangeV10FoundationE_2inABx_q_tcSXRzAC24AttributedStringProtocolR_AC0dE0V5IndexV5BoundRtzr0_lufCSnyAIG_AGTt1B5(v806, v560);
        v621 = v555;
        v622 = v561;
        v620 = v550;
        v796 = v550;
        v797 = v556;
        v798 = v557;
        v799 = v558;
        v562 = v646;
        v800 = v559;
        v563 = v642;
        v564 = v554;
        v801 = v554;
        v565 = v648;
        v802 = v648;
        v803 = v646;
        v804 = v555;
        v805 = v642;
        v651 = v560;
        specialized AttributedString.subscript.getter(v560, v673);
        v793 = v673[2];
        v794 = v673[3];
        v795 = v673[4];
        v791 = v673[0];
        v792 = v673[1];
        _s10Foundation19AttributedSubstringVy5ValueQzSgxmcAA0B9StringKeyRzluigAA15AttributeScopesO0A10AttributesV09Localizede8ArgumentI0V0j7NumerickG0O_Tt0B5(v665);
        v687[2] = v673[2];
        v687[3] = v673[3];
        v687[4] = v673[4];
        v687[0] = v673[0];
        v687[1] = v673[1];
        outlined destroy of AttributedSubstring(v687);
        if (v665[20] == 255)
        {
          v781 = v620;
          v782 = v654;
          v783 = v653;
          v784 = v652;
          v785 = v650;
          v786 = v564;
          v787 = v565;
          v788 = v562;
          v789 = v621;
          v790 = v563;
          specialized AttributedString.subscript.getter(v651, v673);
          v566 = *&v673[0];
          v779[3] = *(v673 + 8);
          v779[4] = *(&v673[1] + 8);
          v779[5] = *(&v673[2] + 8);
          v779[6] = *(&v673[3] + 8);
          v567 = *(*&v673[0] + 24);
          v568 = *(*&v673[0] + 56);
          v780[1] = *(*&v673[0] + 40);
          v780[2] = v568;
          v780[0] = v567;

          outlined init with copy of BigString(v780, v665);
          BigString.subscript.getter();

          outlined destroy of BigString(v780);
          outlined destroy of BigSubstring(&v754);
          v669 = v756;
          v670 = v757;
          v671 = v758;
          v672 = v759;
          *&v665[8] = v756;
          *&v665[24] = v757;
          v666 = v758;
          v667 = v759;
          *v665 = v566;
          v668 = 0;
          lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
          String.init<A>(_:)();
          v569 = String._bridgeToObjectiveCImpl()();

          v570 = 0;
          *(&v673[1] + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString, off_1E69EE918);
          *&v673[0] = v569;
        }

        else
        {
          if (v665[20] > 1u)
          {
            if (v665[20] == 2)
            {
              v572 = *v665;
            }

            else
            {
              NSDecimal.doubleValue.getter(*v665, *&v665[8], *&v665[16]);
              v572 = v573;
            }

            v571 = [objc_allocWithZone(NSNumber) initWithDouble_];
          }

          else if (v665[20])
          {
            v571 = [objc_allocWithZone(NSNumber) initWithLongLong_];
          }

          else
          {
            v571 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong_];
          }

          v574 = v571;
          *(&v673[1] + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber, off_1E69EE6D0);
          *&v673[0] = v574;
          v570 = 1;
        }

        v575 = v639;
        outlined init with copy of FloatingPointRoundingRule?(v673, v665, &_sypSgMd, &_sypSgMR);
        v576 = *&v665[24];
        if (*&v665[24])
        {
          v577 = __swift_project_boxed_opaque_existential_1(v665, *&v665[24]);
          v578 = *(v576 - 8);
          v579 = v578[8];
          v580 = MEMORY[0x1EEE9AC00](v577);
          v581 = (v579 + 15) & 0xFFFFFFFFFFFFFFF0;
          v582 = (&v593 - v581);
          v583 = v578[2];
          v583(&v593 - v581, v580);
          isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
          if (isClassOrObjCExistentialType)
          {
            if (v579 != 8)
            {
              goto LABEL_378;
            }

            v585 = *v582;
            v586 = v578[1];
            swift_unknownObjectRetain();
            v586(&v593 - v581, v576);
          }

          else
          {
            *&v654 = &v593;
            v589 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
            (v583)(&v593 - v581, v582, v576, v589);
            v585 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
            (v578[1])(v582, v576);
          }

          __swift_destroy_boxed_opaque_existential_1(v665);
          v422 = v639;
        }

        else
        {
          v585 = 0;
          v422 = v575;
        }

        v587 = objc_allocWithZone(_NSAttributedStringReplacement);
        [v587 initWithIndex:v649 specifierRangeInFormatString:0x7FFFFFFFFFFFFFFFLL replacementRangeInResult:0x7FFFFFFFFFFFFFFFLL replacementKind:v636 argument:{v622, v570, v585}];
        v588 = swift_unknownObjectRelease();
        MEMORY[0x1865CB4D0](v588);
        if (*((v661 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v661 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v296 = v661;
        outlined destroy of TermOfAddress?(v673, &_sypSgMd, &_sypSgMR);
        v406 = v624;
      }
    }

    outlined destroy of TermOfAddress?(v604, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
    specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v715);
    v729 = v721;
    v730 = v722;
    v731 = v723;
    v732 = v724;
    *&v727[32] = v719[0];
    *&v727[48] = v719[1];
    *&v727[64] = v719[2];
    v728 = v720;
    v725 = v715;
    v726 = v716;
    *v727 = v717;
    *&v727[16] = v718;
    v738 = v721;
    v739 = v722;
    v740 = v723;
    v741 = v724;
    v735 = v719[0];
    v736[0] = v719[1];
    v736[1] = v719[2];
    v737 = v720;
    v733 = v715;
    v734[0] = v716;
    v734[1] = v717;
    v734[2] = v718;
    v590 = _s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOg(&v733);
    v421 = v645;
  }

  while (v590 != 1);
LABEL_244:
  outlined destroy of TermOfAddress?(v406, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V022MarkdownSourcePositionH0O_GMR);

  LOBYTE(v687[0]) = 1;
  v715 = 0u;
  v716 = 0u;
  v717 = 0u;
  v718 = 0u;
  memset(v719, 0, 41);
  BYTE9(v719[2]) = 1;
  _s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV022MarkdownSourcePositionF0O_Tt0B5(&v715);
  v263 = v632;
  LOBYTE(v266) = v641;
LABEL_245:
  v419 = v656;
  v420 = v657;
  if ((v659 & 1) == 0)
  {
    _s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV016ReplacementIndexF0O_Tt0g5(0, 1);
    v263 = v632;
  }

  if (v660 & v266)
  {
    *&v680 = v662;
    *&v687[0] = v420;
    *(&v687[0] + 1) = v419;
    memset(v727, 0, 64);
    v725 = 0u;
    v726 = 0u;
    *&v727[64] = 3;

    AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)(v687, &v725, v296, v625, 0, v627);

    v735 = *&v727[32];
    v736[0] = *&v727[48];
    *&v736[1] = *&v727[64];
    v733 = v725;
    v734[0] = v726;
    v734[1] = *v727;
    v734[2] = *&v727[16];
    outlined destroy of TermOfAddress?(&v733, &_s10Foundation13TermOfAddressVSgMd, &_s10Foundation13TermOfAddressVSgMR);

    return;
  }

  v106 = v662;
LABEL_250:
  *v627 = v106;
}

uint64_t AttributedString.init<A>(localized:defaultValue:options:table:bundle:locale:comment:including:)@<X0>(uint64_t *a2@<X3>, char *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>, void *a7@<X8>, id *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a2[1];
  v17 = a2[2];
  v18 = *a3;
  v20 = *a8;
  v19 = a8[1];
  v37 = *a2;
  v38 = v16;
  v39 = v17;
  v21 = StaticString.description.getter();
  v23 = v22;
  v36 = 1;
  v33 = 0uLL;
  LOBYTE(v34) = 1;
  BYTE1(v34) = v18 & 1;
  *(&v34 + 1) = 0;
  *v35 = 256;
  memset(&v35[8], 0, 17);
  if (!v20)
  {
    v26 = v21;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v30 = static LocaleCache.cache;
    *&v31 = qword_1ED4404B0;
    v20 = LocaleCache._currentAndCache.getter();
    v19 = v24;
    v21 = v26;
  }

  v29[0] = v20;
  v29[1] = v19;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(v21, v23, &v33, a4, a5, a6, v29, a12, 1u, a13, a14);
  swift_unknownObjectRelease();

  v30 = v33;
  v31 = v34;
  v32[0] = *v35;
  *(v32 + 9) = *&v35[9];
  outlined destroy of AttributedString.LocalizationOptions(&v30);

  *a7 = v40;
  return result;
}

uint64_t AttributedString.init(localized:options:table:bundle:localization:locale:comment:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v15 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v17 = *a2;
  v19 = *a8;
  v18 = *(a8 + 8);
  v37 = 1;
  v20 = v17 & 1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 1;
  v42 = v17 & 1;
  v43 = 0;
  v44 = 256;
  v45 = a6;
  v46 = a7;
  v47 = 0;
  if (!v19)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v24 = static LocaleCache.cache;
    v25 = qword_1ED4404B0;
    v19 = LocaleCache._currentAndCache.getter();
    v18 = v21;
  }

  _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(0, 0, v40, a3, a4, a5, v19, v18, 1u, v15, v14, v16);

  swift_unknownObjectRelease();

  *a9 = v34;
  v24 = 0uLL;
  LOBYTE(v25) = 1;
  BYTE1(v25) = v20;
  *(&v25 + 2) = v38;
  HIWORD(v25) = v39;
  v26 = 0;
  v27 = 0;
  v28 = v37;
  v29 = v35;
  v30 = v36;
  v31 = a6;
  v32 = a7;
  v33 = 0;
  return outlined destroy of AttributedString.LocalizationOptions(&v24);
}

uint64_t AttributedString.init<A>(localized:options:table:bundle:localization:locale:comment:including:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, id *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = a3;
  v20 = *a1;
  v19 = a1[1];
  v21 = a1[2];
  v22 = *a2;
  v24 = *a8;
  v23 = a8[1];
  v50 = 1;
  v25 = v22 & 1;
  v46 = v20;
  v47 = v19;
  v48 = v21;
  v38[0] = 0;
  v38[1] = 0;
  v39 = 1;
  v40 = v22 & 1;
  v41 = 0;
  v42 = 256;
  v43 = a6;
  v44 = a7;
  v45 = 0;
  if (!v24)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v30 = static LocaleCache.cache;
    v31 = qword_1ED4404B0;
    v24 = LocaleCache._currentAndCache.getter();
    v18 = a3;
  }

  *&v30 = v24;
  *(&v30 + 1) = v23;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(0, 0, v38, v18, a4, a5, &v30, a14, 1u, a14, a15);

  swift_unknownObjectRelease();

  *a9 = v49;
  v30 = 0uLL;
  LOBYTE(v31) = 1;
  BYTE1(v31) = v25;
  v32 = 0;
  v33 = 0;
  v34 = 1;
  v35 = a6;
  v36 = a7;
  v37 = 0;
  return outlined destroy of AttributedString.LocalizationOptions(&v30);
}

{
  v18 = *a1;
  v17 = a1[1];
  v19 = a1[2];
  v20 = *a2;
  v22 = *a8;
  v21 = a8[1];
  v51 = 1;
  v23 = v20 & 1;
  v45 = v18;
  v46 = v17;
  v47 = v19;
  v54 = 0uLL;
  LOBYTE(v55) = 1;
  BYTE1(v55) = v20 & 1;
  v56 = 0;
  *v57 = 256;
  *&v57[8] = a6;
  *&v57[16] = a7;
  v57[24] = 0;
  v42 = 0uLL;
  v43 = v55;
  v44[0] = *v57;
  *(v44 + 9) = *&v57[9];
  if (v22)
  {
    outlined init with copy of AttributedString.LocalizationOptions(&v54, &v32);
  }

  else
  {
    outlined init with copy of AttributedString.LocalizationOptions(&v54, &v32);
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v32 = static LocaleCache.cache;
    v33 = qword_1ED4404B0;
    v22 = LocaleCache._currentAndCache.getter();
    v21 = v24;
  }

  *&v32 = v22;
  *(&v32 + 1) = v21;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(0, 0, &v42, a3, a4, a5, &v32, a13, 1u, a14, a15);
  swift_unknownObjectRelease();

  v30[0] = v42;
  v30[1] = v43;
  v31[0] = v44[0];
  *(v31 + 9) = *(v44 + 9);
  outlined destroy of AttributedString.LocalizationOptions(v30);

  *a9 = v48;
  v32 = 0uLL;
  LOBYTE(v33) = 1;
  BYTE1(v33) = v23;
  *(&v33 + 2) = v52;
  HIWORD(v33) = v53;
  v34 = 0;
  v35 = 0;
  v36 = v51;
  v37 = v49;
  v38 = v50;
  v39 = a6;
  v40 = a7;
  v41 = 0;
  return outlined destroy of AttributedString.LocalizationOptions(&v32);
}

uint64_t AttributedString.init(localized:options:table:bundle:localization:locale:comment:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v11 = *a1;
  v24 = a1[1];
  v12 = a1[2];
  v13 = *(a2 + 16);
  v35 = *a2;
  v36 = v13;
  v37 = *(a2 + 32);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *a8;
  v17 = *(a8 + 8);
  if (a7)
  {

    v14 = a7;
  }

  else
  {
    a6 = *(a2 + 40);
  }

  v20 = *(a2 + 16);
  v38[0] = *a2;
  v38[1] = v20;
  v39 = *(a2 + 32);
  v40 = a6;
  v41 = v14;
  v42 = v15;
  if (!v16)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v28 = static LocaleCache.cache;
    *&v29 = qword_1ED4404B0;
    v16 = LocaleCache._currentAndCache.getter();
    v17 = v21;
  }

  _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(0, 0, v38, a3, a4, a5, v16, v17, 1u, v11, v24, v12);

  swift_unknownObjectRelease();

  v22 = v34;
  v28 = v35;
  v29 = v36;
  v30 = v37;
  v31 = a6;
  v32 = v14;
  v33 = v15;
  result = outlined destroy of AttributedString.LocalizationOptions(&v28);
  *a9 = v22;
  return result;
}

uint64_t AttributedString.init<A>(localized:options:table:bundle:localization:locale:comment:including:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, id *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = a1[1];
  v35 = *a1;
  v18 = a1[2];
  v19 = *(a2 + 16);
  v53 = *a2;
  v54 = v19;
  v55 = *(a2 + 32);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  v23 = *a8;
  v22 = a8[1];
  if (a7)
  {

    v20 = a7;
    v26 = a6;
  }

  else
  {
    v26 = *(a2 + 40);
  }

  v47 = v35;
  v48 = v17;
  v49 = v18;
  v27 = *(a2 + 32);
  v28 = *(a2 + 16);
  v51[0] = *a2;
  v51[1] = v28;
  *v52 = v27;
  *&v52[8] = v26;
  *&v52[16] = v20;
  v52[24] = v21;
  v44 = v51[0];
  v45 = v28;
  v46[0] = *v52;
  *(v46 + 9) = *&v52[9];
  v29 = v26;
  if (v23)
  {
    outlined init with copy of AttributedString.LocalizationOptions(v51, &v38);
  }

  else
  {
    outlined init with copy of AttributedString.LocalizationOptions(v51, &v38);
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v38 = static LocaleCache.cache;
    *&v39 = qword_1ED4404B0;
    v23 = LocaleCache._currentAndCache.getter();
    v22 = v30;
  }

  *&v38 = v23;
  *(&v38 + 1) = v22;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(0, 0, &v44, a3, a4, a5, &v38, a13, 1u, a14, a15);
  swift_unknownObjectRelease();

  v36[0] = v44;
  v36[1] = v45;
  v37[0] = v46[0];
  *(v37 + 9) = *(v46 + 9);
  outlined destroy of AttributedString.LocalizationOptions(v36);

  *a9 = v50;
  v38 = v53;
  v39 = v54;
  v40 = v55;
  v41 = v29;
  v42 = v20;
  v43 = v21;
  return outlined destroy of AttributedString.LocalizationOptions(&v38);
}

{
  v17 = a1[1];
  v36 = *a1;
  v18 = a1[2];
  v19 = *(a2 + 16);
  v54 = *a2;
  v55 = v19;
  v56 = *(a2 + 32);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  v23 = *a8;
  v22 = a8[1];
  if (a7)
  {

    v20 = a7;
    v26 = a6;
  }

  else
  {
    v26 = *(a2 + 40);
  }

  v48 = v36;
  v49 = v17;
  v50 = v18;
  v27 = *(a2 + 32);
  v28 = *(a2 + 16);
  v52[0] = *a2;
  v52[1] = v28;
  *v53 = v27;
  *&v53[8] = v26;
  *&v53[16] = v20;
  v53[24] = v21;
  v45 = v52[0];
  v46 = v28;
  v47[0] = *v53;
  *(v47 + 9) = *&v53[9];
  v29 = v26;
  if (v23)
  {
    outlined init with copy of AttributedString.LocalizationOptions(v52, &v39);
  }

  else
  {
    outlined init with copy of AttributedString.LocalizationOptions(v52, &v39);
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v39 = static LocaleCache.cache;
    *&v40 = qword_1ED4404B0;
    v23 = LocaleCache._currentAndCache.getter();
    v22 = v30;
  }

  *&v39 = v23;
  *(&v39 + 1) = v22;
  String.LocalizationValue.resolve<A>(key:options:table:bundle:locale:scope:performLocalization:)(0, 0, &v45, a3, a4, a5, &v39, a14, 1u, a14, a15);
  swift_unknownObjectRelease();

  v37[0] = v45;
  v37[1] = v46;
  v38[0] = v47[0];
  *(v38 + 9) = *(v47 + 9);
  outlined destroy of AttributedString.LocalizationOptions(v37);

  v31 = v51;
  v39 = v54;
  v40 = v55;
  v41 = v56;
  v42 = v29;
  v43 = v20;
  v44 = v21;
  result = outlined destroy of AttributedString.LocalizationOptions(&v39);
  *a9 = v31;
  return result;
}

uint64_t processPlaceholderReplacement(_:locale:)(void *a1, uint64_t a2, __int128 *a3)
{
  v24 = *a3;
  outlined init with copy of Hashable & Sendable(a2, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_FormatSpecifiable_pMd, &_s10Foundation18_FormatSpecifiable_pMR);
  if (!swift_dynamicCast())
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    outlined destroy of TermOfAddress?(&v26, &_s10Foundation18_FormatSpecifiable_pSgMd, &_s10Foundation18_FormatSpecifiable_pSgMR);
    v29 = 0u;
    v30 = 0u;
    AssociatedConformanceWitness = 0;
    goto LABEL_6;
  }

  v5 = *(&v27 + 1);
  v6 = v28;
  __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
  v7 = *(v6 + 32);
  *(&v30 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v29);
  v7(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(&v26);
  if (!*(&v30 + 1))
  {
LABEL_6:
    outlined destroy of TermOfAddress?(&v29, &_ss7CVarArg_s8SendablepSgMd, &_ss7CVarArg_s8SendablepSgMR);
    *v32 = v24;
    _convertObjectToSendableArgument(_:locale:)(a2, a1);
    return 16421;
  }

  outlined init with take of Equatable(&v29, v32);
  outlined init with copy of Hashable & Sendable(v32, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_s8SendablepMd, &_ss7CVarArg_s8SendablepMR);
  v8 = MEMORY[0x1E69E7360];
  if (swift_dynamicCast())
  {
    v9 = v26;
LABEL_9:
    v11 = MEMORY[0x1E69E73D8];
    a1[3] = v8;
    a1[4] = v11;
    *a1 = v9;
    __swift_destroy_boxed_opaque_existential_1(v32);
    return 1684827173;
  }

  outlined init with copy of Hashable & Sendable(v32, &v29);
  if (swift_dynamicCast())
  {
    v9 = v26;
    goto LABEL_9;
  }

  outlined init with copy of Hashable & Sendable(v32, &v29);
  v12 = MEMORY[0x1E69E76D8];
  if (swift_dynamicCast())
  {
    v13 = v26;
LABEL_14:
    v14 = MEMORY[0x1E69E7738];
    a1[3] = v12;
    a1[4] = v14;
    *a1 = v13;
    __swift_destroy_boxed_opaque_existential_1(v32);
    return 1970039845;
  }

  outlined init with copy of Hashable & Sendable(v32, &v29);
  if (swift_dynamicCast())
  {
    v13 = v26;
    goto LABEL_14;
  }

  outlined init with copy of Hashable & Sendable(v32, &v29);
  v15 = MEMORY[0x1E69E6448];
  if (swift_dynamicCast())
  {
    v16 = v26;
    v17 = MEMORY[0x1E69E64A8];
    a1[3] = v15;
    a1[4] = v17;
    *a1 = v16;
    __swift_destroy_boxed_opaque_existential_1(v32);
    return 26149;
  }

  outlined init with copy of Hashable & Sendable(v32, &v29);
  v18 = MEMORY[0x1E69E63B0];
  if (swift_dynamicCast())
  {
    v19 = v26;
    v20 = MEMORY[0x1E69E6438];
    a1[3] = v18;
    a1[4] = v20;
    *a1 = v19;
LABEL_21:
    __swift_destroy_boxed_opaque_existential_1(v32);
    return 6712357;
  }

  outlined init with copy of Hashable & Sendable(v32, &v29);
  v21 = MEMORY[0x1E69E7DE0];
  if (swift_dynamicCast())
  {
    v22 = v26;
    a1[3] = v21;
    a1[4] = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *a1 = v22;
    goto LABEL_21;
  }

  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  *&v29 = 0xD000000000000027;
  *(&v29 + 1) = 0x8000000181488F20;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  swift_getDynamicType();
  v23 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v23);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void String.LocalizationValue.AttributedStringCache.CacheKey.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return;
  }

  v6 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    v10 = v9 & 0xC;
    v11 = v9;
    if (v10 == v7)
    {
      v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, a2, a3);
    }

    v12 = v11 >> 16;
    if (v11 >> 16 >= v3)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v14 = String.UTF8View._foreignSubscript(position:)();
      if (v10 != v7)
      {
        goto LABEL_20;
      }
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v16[0] = a2;
      v16[1] = v15;
      v14 = *(v16 + v12);
      if (v10 != v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = v8;
      if ((a2 & 0x1000000000000000) == 0)
      {
        v13 = _StringObject.sharedUTF8.getter();
      }

      v14 = *(v13 + v12);
      if (v10 != v7)
      {
LABEL_20:
        if ((a3 & 0x1000000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }
    }

    v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, a2, a3);
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_8:
      v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_9;
    }

LABEL_21:
    if (v3 <= v9 >> 16)
    {
      goto LABEL_28;
    }

    v9 = String.UTF8View._foreignIndex(after:)();
LABEL_9:
    Hasher._combine(_:)(v14);
    if (4 * v3 == v9 >> 14)
    {
      return;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.AttributedStringCache.CacheKey()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.LocalizationValue.AttributedStringCache.CacheKey.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.AttributedStringCache.CacheKey(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  String.LocalizationValue.AttributedStringCache.CacheKey.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for attributedStringsCacheLock()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySSAAE17LocalizationValueV21AttributedStringCacheV_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySSAAE17LocalizationValueV21AttributedStringCacheV_GMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  static String.LocalizationValue.attributedStringsCacheLock = result;
  return result;
}

void _sSS10FoundationE17LocalizationValueV23_parseLocalizedMarkdown_015bundlePreferredB08tableURL19formatConfiguration5scope30appliesSourcePositionAttribute11ignoreCacheAA16AttributedStringV6parsed_Sb23hasInflectionAttributestSgSS_SSSgyXKAA0J0VSgSo12NSDictionaryCSgxmS2btAA0Q5ScopeRzlFAA0Q6ScopesO0aY0V_Tt4t7B506_sSS10a3E17bc62V7resolve3key7options5table6bundle6locale5scope07performB0AA16tu54VSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14Q18ScopeRzlFANyXEfu4_SbSo8NSBundleCTf1nncnnnn_n(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, void *a10)
{
  v10 = a8;
  v12 = a5;
  v16 = a1;
  v17 = 0;
  if ((a7 & 1) == 0)
  {
    v19 = a1;
    if (one-time initialization token for attributedStringsCacheLock != -1)
    {
      a1 = swift_once();
    }

    v20 = static String.LocalizationValue.attributedStringsCacheLock;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock((v20 + 24));
    _sSS10FoundationE17LocalizationValueV23_parseLocalizedMarkdown_015bundlePreferredB08tableURL19formatConfiguration5scope30appliesSourcePositionAttribute11ignoreCacheAA16AttributedStringV6parsed_Sb23hasInflectionAttributestSgSS_SSSgyXKAA0J0VSgSo12NSDictionaryCSgxmS2btAA0Q5ScopeRzlFAoC0tuS0VzYbXEfU_AA0Q6ScopesO0aY0V_Tt2g5TA((v20 + 16), &v95);
    os_unfair_lock_unlock((v20 + 24));
    v21 = v95;
    if (v95)
    {
      v22 = BYTE8(v95);

      *a9 = v21;
      *(a9 + 8) = v22;
      return;
    }

    v16 = v19;
    v12 = a5;
    v10 = a8;
  }

  if (one-time initialization token for localizedAttributedString != -1)
  {
LABEL_63:
    swift_once();
  }

  v85 = byte_1EA822149;
  v23 = unk_1EA822158;
  v89 = qword_1EA822150;
  v99 = static AttributedString.MarkdownParsingOptions.localizedAttributedString;
  v98 = byte_1EA82214A;
  v97 = a6 & 1;
  v86 = a2;
  if (!a3)
  {

    if (v23)
    {
      goto LABEL_33;
    }

LABEL_18:
    if ((v10 & 1) == 0)
    {
      goto LABEL_33;
    }

    v38 = [a10 preferredLocalizations];
    if (v38)
    {
      v39 = v38;
      type metadata accessor for __SwiftDeferredNSArray();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        v41 = v39;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v42 = swift_dynamicCastClass();
      if (v42)
      {
        v40 = v42;

        if (*(v40 + 2))
        {
          goto LABEL_28;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        [v39 copy];
        v43 = _bridgeCocoaArray<A>(_:)();
        swift_unknownObjectRelease();
        v40 = specialized _arrayForceCast<A, B>(_:)(v43);

        if (*(v40 + 2))
        {
LABEL_28:
          v89 = *(v40 + 4);
          v37 = *(v40 + 5);

          if (v12)
          {
            goto LABEL_34;
          }

LABEL_29:
          v95 = 0u;
          v96 = 0u;
LABEL_50:
          outlined destroy of TermOfAddress?(&v95, &_sypSgMd, &_sypSgMR);
LABEL_51:
          v56 = v99;
          v57 = v98;
          v58 = v97;

          v59 = a2;
          v60 = v16;
          if ((a2 & 0x1000000000000000) != 0)
          {
            v60 = static String._copying(_:)(v16, a2);
            v59 = v67;

            if ((v59 & 0x2000000000000000) == 0)
            {
              goto LABEL_53;
            }
          }

          else if ((a2 & 0x2000000000000000) == 0)
          {
LABEL_53:
            if ((v60 & 0x1000000000000000) != 0)
            {
              v61 = (v59 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v62 = v60 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v74 = _StringObject.sharedUTF8.getter();
              v62 = v75;
              v61 = v74;
            }

            v63 = v62 + v61;
            if (v61)
            {
              v64 = v63;
            }

            else
            {
              v64 = 0;
            }

            if (v57)
            {
              v65 = 0x10000;
            }

            else
            {
              v65 = 0;
            }

            v66 = _s10Foundation16AttributedStringV14_parseMarkdown33_4C994178458EBF836D449F281EBCAF0912markdownData9including7options7baseURLAC6result_Sb23hasInflectionAttributestSW_xmAC0E14ParsingOptionsVAA0P0VSgtKAA14AttributeScopeRzlFZAA0W6ScopesO0aT0V_Tt1t4B5(&v93, v61, v64, v56 | (v85 << 8) | v65, v89, v37, v58, 0, 0);
            goto LABEL_69;
          }

          *&v95 = v60;
          *(&v95 + 1) = v59 & 0xFFFFFFFFFFFFFFLL;
          if (v57)
          {
            v68 = 0x10000;
          }

          else
          {
            v68 = 0;
          }

          v66 = _s10Foundation16AttributedStringV14_parseMarkdown33_4C994178458EBF836D449F281EBCAF0912markdownData9including7options7baseURLAC6result_Sb23hasInflectionAttributestSW_xmAC0E14ParsingOptionsVAA0P0VSgtKAA14AttributeScopeRzlFZAA0W6ScopesO0aT0V_Tt1t4B5(&v93, &v95, &v95 + (HIBYTE(v59) & 0xF), v56 | (v85 << 8) | v68, v89, v37, v58, 0, 0);
LABEL_69:
          if (v17)
          {

            v70 = 0;
            v71 = 0;
            v72 = a9;
            if ((a7 & 1) == 0)
            {
LABEL_84:
              if (v71)
              {
                v78 = one-time initialization token for attributedStringsCacheLock;

                if (v78 != -1)
                {
                  v79 = swift_once();
                }

                v80 = static String.LocalizationValue.attributedStringsCacheLock;
                MEMORY[0x1EEE9AC00](v79);
                v73 = v70 & 1;
                os_unfair_lock_lock((v80 + 24));
                _sSS10FoundationE17LocalizationValueV23_parseLocalizedMarkdown_015bundlePreferredB08tableURL19formatConfiguration5scope30appliesSourcePositionAttribute11ignoreCacheAA16AttributedStringV6parsed_Sb23hasInflectionAttributestSgSS_SSSgyXKAA0J0VSgSo12NSDictionaryCSgxmS2btAA0Q5ScopeRzlFyAC0tuS0VzYbXEfU0_AA0Q6ScopesO0aY0V_Tt4g5TA((v80 + 16));
                os_unfair_lock_unlock((v80 + 24));

                goto LABEL_91;
              }

LABEL_88:
              if (one-time initialization token for attributedStringsCacheLock != -1)
              {
                v69 = swift_once();
              }

              v81 = static String.LocalizationValue.attributedStringsCacheLock;
              MEMORY[0x1EEE9AC00](v69);
              os_unfair_lock_lock((v81 + 24));
              _sSS10FoundationE17LocalizationValueV23_parseLocalizedMarkdown_015bundlePreferredB08tableURL19formatConfiguration5scope30appliesSourcePositionAttribute11ignoreCacheAA16AttributedStringV6parsed_Sb23hasInflectionAttributestSgSS_SSSgyXKAA0J0VSgSo12NSDictionaryCSgxmS2btAA0Q5ScopeRzlFyAC0tuS0VzYbXEfU1_AA0Q6ScopesO0aY0V_Tt2g5TA((v81 + 16));
              os_unfair_lock_unlock((v81 + 24));
              v71 = 0;
              v73 = 0;
              goto LABEL_91;
            }
          }

          else
          {
            v70 = v66;

            v72 = a9;
            v71 = v93;
            if ((a7 & 1) == 0)
            {
              goto LABEL_84;
            }
          }

          goto LABEL_73;
        }
      }
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_28;
      }
    }

    v37 = 0;
    if (v12)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v84 = v17;
  v17 = v12;
  v12 = v16;
  ObjectType = swift_getObjectType();
  v25 = *(a4 + 312);

  v26 = v25(ObjectType, a4);
  a3 = v26;
  a2 = *(v26 + 16);
  if (a2)
  {
    v16 = v26 + 16 * a2 + 24;
    a6 = 46;
    while (1)
    {
      if (a2 > *(a3 + 16))
      {
        __break(1u);
        goto LABEL_63;
      }

      a4 = *(v16 - 8);

      v27._countAndFlagsBits = 0x6A6F72706C2ELL;
      v27._object = 0xE600000000000000;
      if (String.hasSuffix(_:)(v27) && String.count.getter() >= 7)
      {
        break;
      }

      --a2;

      v16 -= 16;
      if (!a2)
      {
        goto LABEL_32;
      }
    }

    String.index(_:offsetBy:)();
    v28 = String.subscript.getter();
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v89 = MEMORY[0x1865CAE80](v28, v30, v32, v34);
    v36 = v35;

    v37 = v36;
    a2 = v86;
    v16 = v12;
    v12 = v17;
    v17 = v84;
    if (v12)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

LABEL_32:

  a2 = v86;
  v16 = v12;
  v12 = v17;
  v17 = v84;
  if (!v23)
  {
    goto LABEL_18;
  }

LABEL_33:
  v37 = v23;
  if (!v12)
  {
    goto LABEL_29;
  }

LABEL_34:
  *&v93 = 0xD000000000000022;
  *(&v93 + 1) = 0x8000000181488F50;
  v44 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v44)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v93 = 0u;
    v94 = 0u;
  }

  v95 = v93;
  v96 = v94;
  if (!*(&v94 + 1))
  {
    goto LABEL_50;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_51;
  }

  v45 = v93;
  v46 = v99;
  v47 = v98;
  v48 = v97;

  if ((*(&v93 + 1) & 0x1000000000000000) != 0)
  {
    v45 = static String._copying(_:)(v93, *(&v93 + 1));
    v49 = v76;

    if ((v49 & 0x2000000000000000) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v49 = *(&v93 + 1);
    if ((*(&v93 + 1) & 0x2000000000000000) == 0)
    {
LABEL_41:

      if ((v45 & 0x1000000000000000) != 0)
      {
        v50 = (v49 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v51 = v45 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v82 = _StringObject.sharedUTF8.getter();
        v51 = v83;
        v50 = v82;
      }

      v52 = v51 + v50;
      if (v50)
      {
        v53 = v52;
      }

      else
      {
        v53 = 0;
      }

      if (v47)
      {
        v54 = 0x10000;
      }

      else
      {
        v54 = 0;
      }

      v55 = _s10Foundation16AttributedStringV14_parseMarkdown33_4C994178458EBF836D449F281EBCAF0912markdownData9including7options7baseURLAC6result_Sb23hasInflectionAttributestSW_xmAC0E14ParsingOptionsVAA0P0VSgtKAA14AttributeScopeRzlFZAA0W6ScopesO0aT0V_Tt1t4B5(&v91, v50, v53, v46 | (v85 << 8) | v54, v89, v37, v48, 0, 0);
      goto LABEL_80;
    }
  }

  *&v95 = v45;
  *(&v95 + 1) = v49 & 0xFFFFFFFFFFFFFFLL;
  if (v47)
  {
    v77 = 0x10000;
  }

  else
  {
    v77 = 0;
  }

  v55 = _s10Foundation16AttributedStringV14_parseMarkdown33_4C994178458EBF836D449F281EBCAF0912markdownData9including7options7baseURLAC6result_Sb23hasInflectionAttributestSW_xmAC0E14ParsingOptionsVAA0P0VSgtKAA14AttributeScopeRzlFZAA0W6ScopesO0aT0V_Tt1t4B5(&v91, &v95, &v95 + (HIBYTE(v49) & 0xF), v46 | (v85 << 8) | v77, v89, v37, v48, 0, 0);
LABEL_80:
  if (!v17)
  {
    v92 = v55 & 1;

    v72 = a9;
    v70 = v92;
    *&v93 = v91;
    BYTE8(v93) = v92;

    _s10Foundation16AttributedStringV09_markdownC09including7options7baseURLACSS_xmAC22MarkdownParsingOptionsVAA0H0VSgtKcAA14AttributeScopeRzlufCAA0L6ScopesO0A10AttributesV_Tt1t4B5(v16, a2, 512, 0, 0, 0, 0, 0, &v95);
    v69 = _s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV021InflectionAlternativeF0O_Tt0B5(v95);
    v71 = v93;
    if ((a7 & 1) == 0)
    {
      goto LABEL_84;
    }

LABEL_73:
    v73 = (v71 != 0) & v70;
    goto LABEL_91;
  }

  v72 = a9;
  if ((a7 & 1) == 0)
  {
    goto LABEL_88;
  }

  v71 = 0;
  v73 = 0;
LABEL_91:
  *v72 = v71;
  *(v72 + 8) = v73;
}

void String.LocalizationValue._parseLocalizedMarkdown<A>(_:bundlePreferredLocalization:tableURL:formatConfiguration:scope:appliesSourcePositionAttribute:ignoreCache:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X4>, void *a5@<X5>, char a6@<W7>, uint64_t a7@<X8>, char a8, uint64_t a9, uint64_t a10)
{
  LOBYTE(ObjectType) = a6;
  v12 = a7;
  v14 = a9;
  v13 = a10;
  v112 = *MEMORY[0x1E69E9840];
  v16 = *a4;
  v15 = a4[1];
  v102 = a1;
  if ((a8 & 1) == 0)
  {
    if (one-time initialization token for attributedStringsCacheLock != -1)
    {
      swift_once();
      a1 = v102;
    }

    v17 = static String.LocalizationValue.attributedStringsCacheLock;
    MEMORY[0x1EEE9AC00](a1);
    v19 = v18;
    os_unfair_lock_lock((v17 + 24));
    partial apply for closure #1 in String.LocalizationValue._parseLocalizedMarkdown<A>(_:bundlePreferredLocalization:tableURL:formatConfiguration:scope:appliesSourcePositionAttribute:ignoreCache:)((v17 + 16), &v110);
    os_unfair_lock_unlock((v17 + 24));
    if (v110)
    {
      v20 = BYTE8(v110);
      *a7 = v110;
      *(a7 + 8) = v20;
      return;
    }

    v12 = a7;
    v13 = v19;
    v14 = a9;
  }

  if (one-time initialization token for localizedAttributedString != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v99 = v13;
    v96 = byte_1EA822149;
    v21 = qword_1EA822150;
    v22 = unk_1EA822158;
    v107 = static AttributedString.MarkdownParsingOptions.localizedAttributedString;
    v106 = byte_1EA82214A;
    v105 = ObjectType & 1;
    v97 = a2;
    if (!v16)
    {

      goto LABEL_17;
    }

    v100 = qword_1EA822150;
    a2 = v12;
    ObjectType = swift_getObjectType();
    v23 = *(v15 + 312);

    v24 = v23(ObjectType, v15);
    v15 = v24;
    v25 = *(v24 + 16);
    if (!v25)
    {
      break;
    }

    v12 = v24 + 16 * v25 + 24;
    v16 = 0x6A6F72706C2ELL;
    while (v25 <= *(v15 + 16))
    {
      ObjectType = *(v12 - 8);

      v26._countAndFlagsBits = 0x6A6F72706C2ELL;
      v26._object = 0xE600000000000000;
      if (String.hasSuffix(_:)(v26) && String.count.getter() > 6)
      {

        String.index(_:offsetBy:)();
        v27 = String.subscript.getter();
        v29 = v28;
        v31 = v30;
        v33 = v32;

        v34 = v31;
        v14 = a9;
        v101 = MEMORY[0x1865CAE80](v27, v29, v34, v33);
        v36 = v35;

        v22 = v36;
        v12 = a2;
        a2 = v97;
        v37 = a5;
        goto LABEL_21;
      }

      --v25;

      v12 -= 16;
      if (!v25)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_65:
    v79 = v13;
    swift_once();
    v13 = v79;
  }

LABEL_63:

  v12 = a2;
  a2 = v97;
  v21 = v100;
LABEL_17:
  v37 = a5;
  if (!v22)
  {
    v39 = a3(v38);
    v22 = v40;
    if (v40)
    {
      v21 = v39;
    }
  }

  v101 = v21;
LABEL_21:
  if (!v37)
  {
    v110 = 0u;
    v111 = 0u;
LABEL_36:
    outlined destroy of TermOfAddress?(&v110, &_sypSgMd, &_sypSgMR);
    goto LABEL_37;
  }

  *&v108 = 0xD000000000000022;
  *(&v108 + 1) = 0x8000000181488F50;
  v41 = [v37 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v41)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
  }

  v110 = v108;
  v111 = v109;
  if (!*(&v109 + 1))
  {
    goto LABEL_36;
  }

  if (swift_dynamicCast())
  {
    v42 = v108;

    if ((*(&v108 + 1) & 0x1000000000000000) != 0)
    {
      v42 = static String._copying(_:)(v108, *(&v108 + 1));
      v43 = v89;
    }

    else
    {
      v43 = *(&v108 + 1);
    }

    if ((v43 & 0x2000000000000000) != 0)
    {

      *&v108 = v42;
      *(&v108 + 1) = v43 & 0xFFFFFFFFFFFFFFLL;
      LOBYTE(v110) = v107;
      BYTE1(v110) = v96;
      BYTE2(v110) = v106;
      *(&v110 + 1) = v101;
      *&v111 = v22;
      BYTE8(v111) = v105;
      v64 = objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, v14, v99, v63));

      v65 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(v14, &v110);
      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedStringMarkdownParsingOptions, off_1E69EE1C8);
      LOBYTE(v110) = v107;
      BYTE1(v110) = v96;
      BYTE2(v110) = v106;
      *(&v110 + 1) = v101;
      *&v111 = v22;
      BYTE8(v111) = v105;

      v66 = v65;
      v67 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v110);
      *&v110 = 0;
      v68 = _NSAttributedStringFromMarkdownWithCreator(v66, &v108, HIBYTE(v43) & 0xF, v67, 0, &v110);

      if ((v68 & 1) == 0 && v110)
      {
        swift_willThrow();

LABEL_50:
        v60 = 0;
        v61 = 0;
        if (a8)
        {
          goto LABEL_72;
        }

LABEL_56:
        if (v60)
        {
          v75 = one-time initialization token for attributedStringsCacheLock;

          if (v75 != -1)
          {
            v76 = swift_once();
          }

          v77 = static String.LocalizationValue.attributedStringsCacheLock;
          MEMORY[0x1EEE9AC00](v76);
          os_unfair_lock_lock((v77 + 24));
          partial apply for closure #2 in String.LocalizationValue._parseLocalizedMarkdown<A>(_:bundlePreferredLocalization:tableURL:formatConfiguration:scope:appliesSourcePositionAttribute:ignoreCache:)((v77 + 16));
          os_unfair_lock_unlock((v77 + 24));
        }

        else
        {
          if (one-time initialization token for attributedStringsCacheLock != -1)
          {
            v50 = swift_once();
          }

          v78 = static String.LocalizationValue.attributedStringsCacheLock;
          MEMORY[0x1EEE9AC00](v50);
          os_unfair_lock_lock((v78 + 24));
          partial apply for closure #3 in String.LocalizationValue._parseLocalizedMarkdown<A>(_:bundlePreferredLocalization:tableURL:formatConfiguration:scope:appliesSourcePositionAttribute:ignoreCache:)((v78 + 16));
          os_unfair_lock_unlock((v78 + 24));
          v60 = 0;
          v61 = 0;
        }

        goto LABEL_73;
      }

      v69 = *&v66[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
      v70 = v66[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.hasInflectionAttributes];
      v71 = v110;

      v104 = v70;

      v72 = a8;
      goto LABEL_55;
    }

    if ((v42 & 0x1000000000000000) != 0)
    {
      v93 = (v43 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v92 = v42 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v90 = _StringObject.sharedUTF8.getter();
      if (!v90)
      {
        BigString.init(_:)();
        AttributedString.init(_:attributes:)(&v110, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v108);
        v73 = 0;
        v69 = v108;
LABEL_54:
        v72 = a8;
        v104 = v73;

LABEL_55:
        v61 = v104;

        _s10Foundation16AttributedStringV09_markdownC09including7options7baseURLACSS_xmAC22MarkdownParsingOptionsVAA0H0VSgtKcAA14AttributeScopeRzlufCAA0L6ScopesO0A10AttributesV_Tt1t4B5(v102, a2, 512, 0, 0, 0, 0, 0, &v108);
        v50 = _s10Foundation16AttributedStringVy5ValueQzSgxmcAA0bC3KeyRzluisAA15AttributeScopesO0A10AttributesV021InflectionAlternativeF0O_Tt0B5(v108);
        v60 = v69;
        if ((v72 & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_72;
      }

      v14 = a9;
      v93 = v90;
      v92 = v91;
    }

    LOBYTE(v110) = v107;
    BYTE1(v110) = v96;
    BYTE2(v110) = v106;
    *(&v110 + 1) = v101;
    *&v111 = v22;
    BYTE8(v111) = v105;
    v45 = objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, v14, v99, v44));

    v46 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(v14, &v110);
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedStringMarkdownParsingOptions, off_1E69EE1C8);
    LOBYTE(v110) = v107;
    BYTE1(v110) = v96;
    BYTE2(v110) = v106;
    *(&v110 + 1) = v101;
    *&v111 = v22;
    BYTE8(v111) = v105;

    v47 = v46;
    v48 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v110);
    *&v110 = 0;
    v49 = _NSAttributedStringFromMarkdownWithCreator(v47, v93, v92, v48, 0, &v110);

    if ((v49 & 1) == 0 && v110)
    {
      swift_willThrow();

      goto LABEL_50;
    }

    v69 = *&v47[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
    v73 = v47[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.hasInflectionAttributes];
    v74 = v110;

    goto LABEL_54;
  }

LABEL_37:

  v52 = a2;
  v53 = v102;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v53 = static String._copying(_:)(v102, a2);
    v52 = v80;

    if ((v52 & 0x2000000000000000) == 0)
    {
LABEL_39:
      if ((v53 & 0x1000000000000000) != 0)
      {
        v95 = (v52 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v54 = v53 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v87 = _StringObject.sharedUTF8.getter();
        if (!v87)
        {
          BigString.init(_:)();
          AttributedString.init(_:attributes:)(&v110, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v108);
          v61 = 0;
          v60 = v108;
          goto LABEL_45;
        }

        v95 = v87;
        v54 = v88;
      }

      LOBYTE(v110) = v107;
      BYTE1(v110) = v96;
      BYTE2(v110) = v106;
      *(&v110 + 1) = v101;
      *&v111 = v22;
      BYTE8(v111) = v105;
      v55 = objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, v14, v99, v51));

      v56 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(v14, &v110);
      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedStringMarkdownParsingOptions, off_1E69EE1C8);
      LOBYTE(v110) = v107;
      BYTE1(v110) = v96;
      BYTE2(v110) = v106;
      *(&v110 + 1) = v101;
      *&v111 = v22;
      BYTE8(v111) = v105;

      v57 = v56;
      v58 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v110);
      *&v110 = 0;
      v59 = _NSAttributedStringFromMarkdownWithCreator(v57, v95, v54, v58, 0, &v110);

      if ((v59 & 1) == 0 && v110)
      {
        swift_willThrow();

        v60 = 0;
        v61 = 0;
        goto LABEL_71;
      }

      v60 = *&v57[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
      v61 = v57[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.hasInflectionAttributes];
      v62 = v110;

LABEL_45:

      v12 = a7;
      if ((a8 & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_72;
    }
  }

  else if ((a2 & 0x2000000000000000) == 0)
  {
    goto LABEL_39;
  }

  *&v108 = v53;
  *(&v108 + 1) = v52 & 0xFFFFFFFFFFFFFFLL;
  LOBYTE(v110) = v107;
  BYTE1(v110) = v96;
  BYTE2(v110) = v106;
  *(&v110 + 1) = v101;
  *&v111 = v22;
  BYTE8(v111) = v105;
  v81 = objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, v14, v99, v51));

  v82 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(v14, &v110);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedStringMarkdownParsingOptions, off_1E69EE1C8);
  LOBYTE(v110) = v107;
  BYTE1(v110) = v96;
  BYTE2(v110) = v106;
  *(&v110 + 1) = v101;
  *&v111 = v22;
  BYTE8(v111) = v105;

  v83 = v82;
  v84 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v110);
  *&v110 = 0;
  v85 = _NSAttributedStringFromMarkdownWithCreator(v83, &v108, HIBYTE(v52) & 0xF, v84, 0, &v110);

  if ((v85 & 1) != 0 || !v110)
  {
    v60 = *&v83[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
    v61 = v83[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.hasInflectionAttributes];
    v86 = v110;
  }

  else
  {
    swift_willThrow();

    v60 = 0;
    v61 = 0;
  }

LABEL_71:
  v12 = a7;
  if ((a8 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_72:
  v61 &= v60 != 0;
LABEL_73:
  *v12 = v60;
  *(v12 + 8) = v61;
}

uint64_t *_sSS10FoundationE17LocalizationValueV23_parseLocalizedMarkdown_015bundlePreferredB08tableURL19formatConfiguration5scope30appliesSourcePositionAttribute11ignoreCacheAA16AttributedStringV6parsed_Sb23hasInflectionAttributestSgSS_SSSgyXKAA0J0VSgSo12NSDictionaryCSgxmS2btAA0Q5ScopeRzlFAoC0tuS0VzYbXEfU_AA0Q6ScopesO0aY0V_Tt2g5@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *result;
  if (*(*result + 16))
  {

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v11 & 1) == 0)
    {

      goto LABEL_8;
    }

    v12 = *(v6 + 56) + 32 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);

    if (v15 != &type metadata for AttributeScopes.FoundationAttributes || ((v16 ^ a4) & 1) != 0)
    {

LABEL_8:
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *a5 = v13;
  *(a5 + 8) = v14;
  return result;
}

uint64_t *closure #1 in String.LocalizationValue._parseLocalizedMarkdown<A>(_:bundlePreferredLocalization:tableURL:formatConfiguration:scope:appliesSourcePositionAttribute:ignoreCache:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = *result;
  if (*(*result + 16))
  {

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v13 & 1) == 0)
    {

      goto LABEL_8;
    }

    v14 = *(v7 + 56) + 32 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);

    if (v17 != a4 || v18 != (a5 & 1))
    {

LABEL_8:
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  *a6 = v15;
  *(a6 + 8) = v16;
  return result;
}

uint64_t _sSS10FoundationE17LocalizationValueV23_parseLocalizedMarkdown_015bundlePreferredB08tableURL19formatConfiguration5scope30appliesSourcePositionAttribute11ignoreCacheAA16AttributedStringV6parsed_Sb23hasInflectionAttributestSgSS_SSSgyXKAA0J0VSgSo12NSDictionaryCSgxmS2btAA0Q5ScopeRzlFyAC0tuS0VzYbXEfU0_AA0Q6ScopesO0aY0V_Tt4g5(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  v50 = *a1;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10FoundationE17LocalizationValueV21AttributedStringCacheV0H3Key33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLVAC0fG0V6parsed_Sb23hasInflectionAttributestSg3str_ypXp9scopeTypeSb0S15SourcePositionstGMd, &_ss18_DictionaryStorageCySS10FoundationE17LocalizationValueV21AttributedStringCacheV0H3Key33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLVAC0fG0V6parsed_Sb23hasInflectionAttributestSg3str_ypXp9scopeTypeSb0S15SourcePositionstGMR);
    v24 = static _DictionaryStorage.copy(original:)();
    v18 = v24;
    if (!*(v12 + 16))
    {
LABEL_27:

      goto LABEL_7;
    }

    v25 = (v24 + 64);
    v26 = (v12 + 64);
    v27 = ((1 << *(v18 + 32)) + 63) >> 6;
    if (v18 != v12 || v25 >= &v26[8 * v27])
    {
      memmove(v25, v26, 8 * v27);
    }

    v28 = 0;
    *(v18 + 16) = *(v12 + 16);
    v29 = 1 << *(v12 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v12 + 64);
    v32 = (v29 + 63) >> 6;
    if (v31)
    {
      do
      {
        v33 = __clz(__rbit64(v31));
        v47 = (v31 - 1) & v31;
LABEL_25:
        v36 = v33 | (v28 << 6);
        v37 = 16 * v36;
        v38 = (*(v12 + 48) + 16 * v36);
        v39 = *v38;
        v40 = v38[1];
        v36 *= 32;
        v41 = *(v12 + 56) + v36;
        v42 = *v41;
        v43 = *(v41 + 8);
        v44 = *(v41 + 16);
        LOBYTE(v41) = *(v41 + 24);
        v45 = (*(v18 + 48) + v37);
        *v45 = v39;
        v45[1] = v40;
        v46 = *(v18 + 56) + v36;
        *v46 = v42;
        *(v46 + 8) = v43;
        *(v46 + 16) = v44;
        *(v46 + 24) = v41;

        v31 = v47;
      }

      while (v47);
    }

    v34 = v28;
    while (1)
    {
      v28 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
        goto LABEL_27;
      }

      v35 = *(v12 + 64 + 8 * v28);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v47 = (v35 - 1) & v35;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v6 = v13;
  if (*(v12 + 24) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v18 = v12;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
  v18 = v50;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v6 & 1) != (v20 & 1))
  {
    goto LABEL_29;
  }

  v14 = v19;
LABEL_7:
  v21 = a5 & 1;
  if (v6)
  {
    v22 = *(v18 + 56) + 32 * v14;
    *v22 = a4;
    *(v22 + 8) = v21;
    *(v22 + 16) = &type metadata for AttributeScopes.FoundationAttributes;
    *(v22 + 24) = a6 & 1;
  }

  else
  {
    result = specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a3, a4, v21, &type metadata for AttributeScopes.FoundationAttributes, a6 & 1, v18);
  }

  *a1 = v18;
  return result;
}

uint64_t closure #2 in String.LocalizationValue._parseLocalizedMarkdown<A>(_:bundlePreferredLocalization:tableURL:formatConfiguration:scope:appliesSourcePositionAttribute:ignoreCache:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *a1;
  v52 = *a1;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10FoundationE17LocalizationValueV21AttributedStringCacheV0H3Key33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLVAC0fG0V6parsed_Sb23hasInflectionAttributestSg3str_ypXp9scopeTypeSb0S15SourcePositionstGMd, &_ss18_DictionaryStorageCySS10FoundationE17LocalizationValueV21AttributedStringCacheV0H3Key33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLVAC0fG0V6parsed_Sb23hasInflectionAttributestSg3str_ypXp9scopeTypeSb0S15SourcePositionstGMR);
    v25 = static _DictionaryStorage.copy(original:)();
    v19 = v25;
    if (!*(v13 + 16))
    {
LABEL_27:

      goto LABEL_7;
    }

    v26 = (v25 + 64);
    v27 = (v13 + 64);
    v28 = ((1 << *(v19 + 32)) + 63) >> 6;
    if (v19 != v13 || v26 >= &v27[8 * v28])
    {
      memmove(v26, v27, 8 * v28);
    }

    v29 = 0;
    *(v19 + 16) = *(v13 + 16);
    v30 = 1 << *(v13 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v13 + 64);
    v33 = (v30 + 63) >> 6;
    if (v32)
    {
      do
      {
        v34 = __clz(__rbit64(v32));
        v48 = (v32 - 1) & v32;
LABEL_25:
        v37 = v34 | (v29 << 6);
        v38 = 16 * v37;
        v39 = (*(v13 + 48) + 16 * v37);
        v40 = *v39;
        v41 = v39[1];
        v37 *= 32;
        v42 = *(v13 + 56) + v37;
        v43 = *v42;
        v44 = *(v42 + 8);
        v45 = *(v42 + 16);
        LOBYTE(v42) = *(v42 + 24);
        v46 = (*(v19 + 48) + v38);
        *v46 = v40;
        v46[1] = v41;
        v47 = *(v19 + 56) + v37;
        *v47 = v43;
        *(v47 + 8) = v44;
        *(v47 + 16) = v45;
        *(v47 + 24) = v42;

        v32 = v48;
      }

      while (v48);
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
        goto LABEL_27;
      }

      v36 = *(v13 + 64 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v48 = (v36 - 1) & v36;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v14;
  if (*(v13 + 24) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v19 = v13;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
  v19 = v52;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v7 & 1) != (v21 & 1))
  {
    goto LABEL_29;
  }

  v15 = v20;
LABEL_7:
  v22 = a5 & 1;
  if (v7)
  {
    v23 = *(v19 + 56) + 32 * v15;
    *v23 = a4;
    *(v23 + 8) = v22;
    *(v23 + 16) = a6;
    *(v23 + 24) = a7 & 1;
  }

  else
  {
    result = specialized _NativeDictionary._insert(at:key:value:)(v15, a2, a3, a4, v22, a6, a7 & 1, v19);
  }

  *a1 = v19;
  return result;
}

char *_sSS10FoundationE17LocalizationValueV23_parseLocalizedMarkdown_015bundlePreferredB08tableURL19formatConfiguration5scope30appliesSourcePositionAttribute11ignoreCacheAA16AttributedStringV6parsed_Sb23hasInflectionAttributestSgSS_SSSgyXKAA0J0VSgSo12NSDictionaryCSgxmS2btAA0Q5ScopeRzlFyAC0tuS0VzYbXEfU1_AA0Q6ScopesO0aY0V_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  v45 = *a1;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v4 = v12;
    if (*(v10 + 24) < v16)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
      v17 = v45;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v4 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

      v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v17 = v10;
LABEL_7:
      if (v4)
      {
LABEL_8:
        v19 = *(v17 + 56) + 32 * v11;
        *v19 = 0;
        *(v19 + 8) = 0;
        *(v19 + 16) = &type metadata for AttributeScopes.FoundationAttributes;
        *(v19 + 24) = a4 & 1;

LABEL_27:
        *a1 = v17;
        return result;
      }

LABEL_26:
      result = specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, 0, 0, &type metadata for AttributeScopes.FoundationAttributes, a4 & 1, v17);
      goto LABEL_27;
    }
  }

  v42 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10FoundationE17LocalizationValueV21AttributedStringCacheV0H3Key33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLVAC0fG0V6parsed_Sb23hasInflectionAttributestSg3str_ypXp9scopeTypeSb0S15SourcePositionstGMd, &_ss18_DictionaryStorageCySS10FoundationE17LocalizationValueV21AttributedStringCacheV0H3Key33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLVAC0fG0V6parsed_Sb23hasInflectionAttributestSg3str_ypXp9scopeTypeSb0S15SourcePositionstGMR);
  v21 = static _DictionaryStorage.copy(original:)();
  v17 = v21;
  if (!*(v10 + 16))
  {
LABEL_25:

    v11 = v42;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  result = (v21 + 64);
  __src = (v10 + 64);
  v22 = ((1 << *(v17 + 32)) + 63) >> 6;
  if (v17 != v10 || result >= &__src[8 * v22])
  {
    result = memmove(result, __src, 8 * v22);
  }

  v23 = 0;
  *(v17 + 16) = *(v10 + 16);
  v24 = 1 << *(v10 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v10 + 64);
  v27 = (v24 + 63) >> 6;
  if (v26)
  {
    do
    {
      v28 = __clz(__rbit64(v26));
      v43 = (v26 - 1) & v26;
LABEL_23:
      v31 = v28 | (v23 << 6);
      v32 = 16 * v31;
      v33 = (*(v10 + 48) + 16 * v31);
      v34 = *v33;
      v35 = v33[1];
      v31 *= 32;
      v36 = *(v10 + 56) + v31;
      v37 = *v36;
      v38 = *(v36 + 8);
      v39 = *(v36 + 16);
      LOBYTE(v36) = *(v36 + 24);
      v40 = (*(v17 + 48) + v32);
      *v40 = v34;
      v40[1] = v35;
      v41 = *(v17 + 56) + v31;
      *v41 = v37;
      *(v41 + 8) = v38;
      *(v41 + 16) = v39;
      *(v41 + 24) = v36;

      v26 = v43;
    }

    while (v43);
  }

  v29 = v23;
  while (1)
  {
    v23 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v23 >= v27)
    {
      goto LABEL_25;
    }

    v30 = *&__src[8 * v23];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v43 = (v30 - 1) & v30;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

char *closure #3 in String.LocalizationValue._parseLocalizedMarkdown<A>(_:bundlePreferredLocalization:tableURL:formatConfiguration:scope:appliesSourcePositionAttribute:ignoreCache:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  v48 = *a1;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v5 = v13;
    if (*(v11 + 24) < v17)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
      v18 = v48;
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v5 & 1) == (v19 & 1))
      {
        goto LABEL_7;
      }

      v12 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v18 = v11;
LABEL_7:
      v20 = a5;
      if (v5)
      {
LABEL_8:
        v21 = *(v18 + 56) + 32 * v12;
        *v21 = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = a4;
        *(v21 + 24) = v20 & 1;

LABEL_27:
        *a1 = v18;
        return result;
      }

LABEL_26:
      result = specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, 0, 0, a4, v20 & 1, v18);
      goto LABEL_27;
    }
  }

  v45 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10FoundationE17LocalizationValueV21AttributedStringCacheV0H3Key33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLVAC0fG0V6parsed_Sb23hasInflectionAttributestSg3str_ypXp9scopeTypeSb0S15SourcePositionstGMd, &_ss18_DictionaryStorageCySS10FoundationE17LocalizationValueV21AttributedStringCacheV0H3Key33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLVAC0fG0V6parsed_Sb23hasInflectionAttributestSg3str_ypXp9scopeTypeSb0S15SourcePositionstGMR);
  v23 = static _DictionaryStorage.copy(original:)();
  v18 = v23;
  if (!*(v11 + 16))
  {
LABEL_25:

    v12 = v45;
    v20 = a5;
    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  result = (v23 + 64);
  v24 = (v11 + 64);
  v25 = ((1 << *(v18 + 32)) + 63) >> 6;
  if (v18 != v11 || result >= &v24[8 * v25])
  {
    result = memmove(result, v24, 8 * v25);
  }

  v26 = 0;
  *(v18 + 16) = *(v11 + 16);
  v27 = 1 << *(v11 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v11 + 64);
  v30 = (v27 + 63) >> 6;
  if (v29)
  {
    do
    {
      v31 = __clz(__rbit64(v29));
      v46 = (v29 - 1) & v29;
LABEL_23:
      v34 = v31 | (v26 << 6);
      v35 = 16 * v34;
      v36 = (*(v11 + 48) + 16 * v34);
      v37 = *v36;
      v38 = v36[1];
      v34 *= 32;
      v39 = *(v11 + 56) + v34;
      v40 = *v39;
      v41 = *(v39 + 8);
      v42 = *(v39 + 16);
      LOBYTE(v39) = *(v39 + 24);
      v43 = (*(v18 + 48) + v35);
      *v43 = v37;
      v43[1] = v38;
      v44 = *(v18 + 56) + v34;
      *v44 = v40;
      *(v44 + 8) = v41;
      *(v44 + 16) = v42;
      *(v44 + 24) = v39;

      v29 = v46;
    }

    while (v46);
  }

  v32 = v26;
  while (1)
  {
    v26 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v26 >= v30)
    {
      goto LABEL_25;
    }

    v33 = *(v11 + 64 + 8 * v26);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v46 = (v33 - 1) & v33;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

void String.LocalizationValue.restoreAttributedStringArguments(_:in:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v904 = v3;
  v884 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  MEMORY[0x1EEE9AC00](v884);
  v909 = &v860 - v4;
  *&v922 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
  MEMORY[0x1EEE9AC00](v922);
  v916 = &v860 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  *&v923 = &v860 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v918 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v871 = &v860 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v880 = &v860 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v873 = &v860 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v883 = &v860 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v872 = &v860 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v882 = &v860 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v914 = &v860 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v917 = &v860 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v912 = &v860 - v25;
  v897 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  MEMORY[0x1EEE9AC00](v897);
  v905 = &v860 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v907 = &v860 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v906 = &v860 - v30;
  MEMORY[0x1EEE9AC00](v31);
  *&v930 = &v860 - v32;
  v926 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v927 = *(v926 - 8);
  MEMORY[0x1EEE9AC00](v926);
  v901 = &v860 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v885 = &v860 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v903 = &v860 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v887 = &v860 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v902 = &v860 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v886 = &v860 - v43;
  MEMORY[0x1EEE9AC00](v44);
  *&v928 = &v860 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v924 = &v860 - v47;
  v898 = type metadata accessor for AttributedString.Runs(0);
  MEMORY[0x1EEE9AC00](v898);
  v890 = (&v860 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v49);
  v879 = &v860 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v888 = (&v860 - v52);
  MEMORY[0x1EEE9AC00](v53);
  v910 = (&v860 - v54);
  MEMORY[0x1EEE9AC00](v55);
  v896 = (&v860 - v56);
  MEMORY[0x1EEE9AC00](v57);
  v881 = &v860 - v58;
  MEMORY[0x1EEE9AC00](v59);
  *&v921[8] = &v860 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = (&v860 - v62);
  MEMORY[0x1EEE9AC00](v64);
  *v921 = &v860 - v65;
  v915 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
  MEMORY[0x1EEE9AC00](v915);
  v900 = &v860 - v66;
  v67 = v2;
  v68 = *v2;
  v1166 = *(*v2 + 24);
  v1167 = *(v68 + 40);
  v1168 = *(v68 + 56);
  v69 = BigString.startIndex.getter();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = BigString.endIndex.getter();
  if (v76 >> 10 < v69 >> 10)
  {
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
    goto LABEL_333;
  }

  v919 = v67;
  *&v1076 = v69;
  *(&v1076 + 1) = v71;
  *&v1077 = v73;
  *(&v1077 + 1) = v75;
  *&v1078 = v76;
  *(&v1078 + 1) = v77;
  *&v1079 = v78;
  *(&v1079 + 1) = v79;
  v80 = lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();

  RangeSet.init(_:)();
  v920 = v63;
  v929 = v68;
  *v63 = v68;
  v895 = v80;
  RangeSet.init()();
  v81 = v912;
  RangeSet.ranges.getter();
  v82 = v918;
  v83 = v930;
  v893 = *(v918 + 16);
  v894 = v918 + 16;
  v893(v930, v81, v8);
  v84 = *(v897 + 36);
  v85 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.startIndex.getter();
  v86 = *(v82 + 8);
  v918 = v82 + 8;
  v913 = v86;
  v86(v81, v8);
  v87 = v83;
  dispatch thunk of Collection.endIndex.getter();
  v88 = *(v83 + v84);
  v933 = v8;
  v925 = v85;
  if (v88 != v1076)
  {
    *(&v928 + 1) = v84;
    do
    {
      v105 = dispatch thunk of Collection.subscript.read();
      v107 = v106[5];
      *&v934 = v106[4];
      v932 = v107;
      v931 = v106[7];
      v105(&v1076, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v108 = v929;
      v1163 = *(v929 + 24);
      v1164 = *(v929 + 40);
      v1165 = *(v929 + 56);
      swift_unknownObjectRetain();
      v109 = BigString.UnicodeScalarView.index(roundingDown:)();
      v111 = v110;
      v113 = v112;
      v115 = v114;
      swift_unknownObjectRelease();
      v1160 = *(v108 + 24);
      v1161 = *(v108 + 40);
      v1162 = *(v108 + 56);
      swift_unknownObjectRetain();
      v116 = BigString.UnicodeScalarView.index(roundingDown:)();
      v118 = v117;
      v120 = v119;
      v122 = v121;
      swift_unknownObjectRelease();
      *&v1076 = v109;
      *(&v1076 + 1) = v111;
      *&v1077 = v113;
      *(&v1077 + 1) = v115;
      v8 = v933;
      *&v1078 = v116;
      *(&v1078 + 1) = v118;
      *&v1079 = v120;
      *(&v1079 + 1) = v122;
      if ((v116 ^ v109) >= 0x400)
      {
        v123 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v123(v1006, 0);
      }

      v87 = v930;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v87 + *(&v928 + 1)) != v1076);
  }

  outlined destroy of TermOfAddress?(v87, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
  v89 = v898;
  v90 = *(v898 + 24);
  v91 = v920;
  v891 = *(v927 + 16);
  v892 = v927 + 16;
  v891(v920 + v90, v928, v926);
  v92 = v912;
  RangeSet.ranges.getter();
  v93 = RangeSet.Ranges.count.getter();
  v94 = v913;
  v913(v92, v8);
  v95 = *(v89 + 28);
  v911 = v93 > 1;
  *(v91 + v95) = v911;
  v96 = v917;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v1006[0] == v1076 || (v97 = dispatch thunk of Collection.subscript.read(), v99 = v98[1], v908 = *v98, v899 = v99, v100 = v98[3], v889 = v98[2], v878 = v100, v97(&v1076, 0), v94(v96, v8), v96 = v914, RangeSet.ranges.getter(), (dispatch thunk of Collection.isEmpty.getter() & 1) != 0))
  {
    v94(v96, v8);
    v101 = v929;
    v102 = *(v929 + 72);
    v103 = v928;
    v104 = v924;
    if (v102)
    {
      v932 = *(v102 + 18);
    }

    else
    {
      v932 = 0;
    }

    *&v934 = *(v929 + 96);
    v1157 = *(v929 + 24);
    v1158 = *(v929 + 40);
    v1159 = *(v929 + 56);
    v124 = BigString.startIndex.getter();
    v126 = v125;
    v931 = v127;
    *&v930 = v128;
    v129 = *(v101 + 72);
    v917 = *(v101 + 96);
    if (v129)
    {
      *(&v928 + 1) = *(v129 + 18);
      v130 = *(v927 + 8);
      swift_unknownObjectRetain();
      v131 = v104;
      v132 = v926;
      v130(v131, v926);
      v130(v103, v132);
      swift_unknownObjectRelease();
    }

    else
    {
      v133 = *(v927 + 8);
      v134 = v926;
      v133(v104, v926);
      v133(v103, v134);
      *(&v928 + 1) = 0;
    }

    v1154 = *(v101 + 24);
    v1155 = *(v101 + 40);
    v1156 = *(v101 + 56);
    v135 = BigString.startIndex.getter();
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = -1;
    v145 = v124;
    v146 = v126;
    v147 = v931;
    v148 = v931;
    v149 = v930;
    v150 = v930;
    v151 = v135;
    v152 = v136;
    v153 = v137;
    v154 = v138;
    v155 = -1;
    v156 = v917;
    v157 = v923;
  }

  else
  {
    v869 = v90;
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v166 = dispatch thunk of Collection.subscript.read();
    v167 = v94;
    v169 = v168[4];
    v170 = v168[5];
    v172 = v168[6];
    v171 = v168[7];
    v166(&v1076, 0);
    v167(v96, v8);
    v173 = v929;
    AttributedString.Guts.findRun(at:)(v908, v878, &v1076);
    v932 = *(&v1076 + 1);
    *&v934 = v1076;
    v870 = *(&v1077 + 1);
    v874 = v1077;
    v877 = *(&v1078 + 1);
    v931 = *(&v1079 + 1);
    v914 = v1079;
    *&v930 = v1080;
    v1157 = *(v173 + 24);
    v1158 = *(v173 + 40);
    v1159 = *(v173 + 56);
    v174 = BigString.endIndex.getter();
    v875 = v171;
    v876 = v172;
    if ((v174 ^ v169) > 0x3FF)
    {
      goto LABEL_302;
    }

    v151 = v169;
    v175 = v170;
    v176 = *(v173 + 72);
    if (v176)
    {
      v177 = *(v173 + 80);
    }

    else
    {
      v177 = 0;
    }

    v868 = v177;
    v156 = *(v173 + 96);
    v178 = swift_unknownObjectRetain();
    *(&v928 + 1) = specialized Rope._endPath.getter(v178);
    if (v176)
    {
      swift_unknownObjectRelease();
    }

    v179 = v912;
    v180 = v926;
    RangeSet.ranges.getter();
    v181 = v933;
    v155 = RangeSet.Ranges.count.getter();
    v182 = *(v927 + 8);
    v182(v924, v180);
    v913(v179, v181);
    v182(v928, v180);
    v144 = 0;
    v143 = 0;
    v135 = v151;
    v152 = v175;
    v136 = v175;
    v154 = v875;
    v153 = v876;
    v137 = v876;
    v138 = v875;
    v157 = v923;
    v141 = v911;
    v145 = v908;
    v146 = v899;
    v148 = v889;
    v124 = v877;
    v150 = v878;
    v126 = v914;
    v147 = v931;
    v149 = v930;
    v140 = v874;
    v139 = v870;
    v142 = v868;
  }

LABEL_16:
  v158 = v920;
  v920[1] = v139;
  *(v158 + 16) = v934;
  *(v158 + 24) = v932;
  *(v158 + 32) = v140;
  *(v158 + 40) = v124;
  *(v158 + 48) = v126;
  *(v158 + 56) = v147;
  *(v158 + 64) = v149;
  *(v158 + 72) = v145;
  *(v158 + 80) = v146;
  *(v158 + 88) = v148;
  *(v158 + 96) = v150;
  *(v158 + 104) = v144;
  *(v158 + 112) = 0;
  *(v158 + 113) = v141;
  *(v158 + 120) = v142;
  *(v158 + 128) = v156;
  *(v158 + 136) = *(&v928 + 1);
  *(v158 + 144) = v143;
  *(v158 + 152) = v135;
  *(v158 + 160) = v136;
  *(v158 + 168) = v137;
  *(v158 + 176) = v138;
  *(v158 + 184) = v151;
  *(v158 + 192) = v152;
  *(v158 + 200) = v153;
  *(v158 + 208) = v154;
  *(v158 + 216) = v155;
  *(v158 + 224) = 0;
  *(v158 + 225) = v141;
  v159 = *v921;
  outlined init with take of String.LocalizationValue.FormatArgument.CodableStorage(v158, *v921, type metadata accessor for AttributedString.Runs);
  v160 = v159;
  v161 = *&v921[8];
  _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v160, *&v921[8], type metadata accessor for AttributedString.Runs);
  _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v161, v157, type metadata accessor for AttributedString.Runs);
  *(v157 + *(v922 + 36)) = &outlined read-only object #0 of String.LocalizationValue.restoreAttributedStringArguments(_:in:);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd, &_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMR);
  v162 = static _SetStorage.allocate(capacity:)();
  v163 = v162 + 56;
  v164 = qword_1EEECEFB0;
  v165 = unk_1EEECEFB8;
  Hasher.init(_seed:)();
  if (v165 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v165)
    {
      MEMORY[0x1865CD060](1);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x1865CD060](0);
    }
  }

  v183 = Hasher._finalize()();
  v184 = -1 << *(v162 + 32);
  v185 = v183 & ~v184;
  v186 = v185 >> 6;
  v187 = *(v163 + 8 * (v185 >> 6));
  v188 = 1 << v185;
  if (((1 << v185) & v187) != 0)
  {
    v189 = ~v184;
    while (1)
    {
      v190 = (*(v162 + 48) + 16 * v185);
      v191 = *v190;
      v192 = v190[1];
      if (v192 == 1)
      {
        break;
      }

      if (v165 == 1)
      {
        goto LABEL_34;
      }

      if (!v192)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v190, 0);
        if (!v165)
        {
          swift_bridgeObjectRelease_n();
          outlined consume of AttributedString.AttributeRunBoundaries?(v191, 0);
          goto LABEL_51;
        }

        outlined copy of AttributedString.AttributeRunBoundaries?(v164, v165);

        v193 = v191;
        v194 = 0;
        goto LABEL_35;
      }

      if (!v165)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v190, v190[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v164, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v191, v192);

        v193 = v191;
        v194 = v192;
        goto LABEL_35;
      }

      if (v191 == v164 && v192 == v165)
      {
LABEL_304:
        outlined copy of AttributedString.AttributeRunBoundaries?(v164, v165);
        outlined copy of AttributedString.AttributeRunBoundaries?(v164, v165);

LABEL_306:
        outlined consume of AttributedString.AttributeRunBoundaries?(v164, v165);
        goto LABEL_51;
      }

      v196 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v191, v192);
      outlined copy of AttributedString.AttributeRunBoundaries?(v164, v165);
      outlined copy of AttributedString.AttributeRunBoundaries?(v191, v192);

      if (v196)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v164, v165);
        v164 = v191;
        v165 = v192;
        goto LABEL_306;
      }

      outlined consume of AttributedString.AttributeRunBoundaries?(v191, v192);
LABEL_36:
      v185 = (v185 + 1) & v189;
      v186 = v185 >> 6;
      v187 = *(v163 + 8 * (v185 >> 6));
      v188 = 1 << v185;
      if ((v187 & (1 << v185)) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v165 == 1)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v190, 1);
      outlined consume of AttributedString.AttributeRunBoundaries?(v191, 1);
      goto LABEL_51;
    }

LABEL_34:
    outlined copy of AttributedString.AttributeRunBoundaries?(*v190, v190[1]);
    outlined copy of AttributedString.AttributeRunBoundaries?(v164, v165);
    outlined consume of AttributedString.AttributeRunBoundaries?(v191, v192);
    v193 = v164;
    v194 = v165;
LABEL_35:
    outlined consume of AttributedString.AttributeRunBoundaries?(v193, v194);
    goto LABEL_36;
  }

LABEL_49:
  *(v163 + 8 * v186) = v187 | v188;
  v197 = (*(v162 + 48) + 16 * v185);
  *v197 = v164;
  v197[1] = v165;
  v198 = *(v162 + 16);
  v199 = __OFADD__(v198, 1);
  v200 = v198 + 1;
  if (v199)
  {
    goto LABEL_331;
  }

  *(v162 + 16) = v200;
LABEL_51:
  v201 = v919;
  v202 = v900;
  v203 = v916;
  v204 = v923;
  outlined destroy of TermOfAddress?(&qword_1EEECEFB0, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMR);
  outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(*&v921[8], type metadata accessor for AttributedString.Runs);
  outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(*v921, type metadata accessor for AttributedString.Runs);
  *(v204 + *(v922 + 40)) = v162;
  outlined init with copy of FloatingPointRoundingRule?(v204, v203, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
  outlined init with copy of FloatingPointRoundingRule?(v203, v202, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
  v205 = v202;
  v206 = *(v203 + 96);
  if (v206 != 2)
  {
    v207 = *(v203 + 88);
    v934 = *(v203 + 72);
    outlined destroy of TermOfAddress?(v204, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
    v208 = *(*v203 + 16);
    outlined destroy of TermOfAddress?(v203, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMR);
    v209 = v205 + *(v915 + 36);
    v210 = v904 + 32;
    *v209 = v934;
    *(v209 + 16) = v207;
    *(v209 + 24) = v206;
    v889 = (v927 + 8);
    *(v209 + 32) = v208;
    v899 = v210;
    for (i = v205; ; i = v900)
    {
      while (1)
      {
        do
        {
          do
          {
            specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(v966);
            v931 = *(&v966[2] + 1);
            if (*(&v966[2] + 1) == 2)
            {
              outlined destroy of TermOfAddress?(i, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMR);
              return;
            }
          }

          while ((BYTE8(v966[0]) & 1) != 0);
          v219 = *&v966[0] - 1;
          if (__OFSUB__(*&v966[0], 1))
          {
            goto LABEL_313;
          }

          if ((v219 & 0x8000000000000000) != 0)
          {
            goto LABEL_314;
          }

          if (v219 >= *(v904 + 16))
          {
            goto LABEL_315;
          }

          v220 = v210 + 24 * v219;
          v221 = *(v220 + 16);
        }

        while (v221 == 255);
        v928 = v966[1];
        v929 = *&v966[2];
        v917 = *(&v966[3] + 1);
        *v921 = v966[4];
        *&v922 = *&v967[0];
        v223 = *v220;
        v222 = *(v220 + 8);
        v911 = v221;
        v924 = v222;
        v932 = v223;
        if ((v221 & 1) == 0)
        {
          break;
        }

        outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup(v223, v222, 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v225 = *v201;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v1151 = *(v225 + 24);
          v1152 = *(v225 + 40);
          v1153 = *(v225 + 56);
          v226 = *(v225 + 72);
          v227 = *(v225 + 80);
          v228 = *(v225 + 88);
          v229 = *(v225 + 96);
          type metadata accessor for AttributedString.Guts();
          v225 = swift_allocObject();
          v230 = BigString.isEmpty.getter() & 1;
          outlined init with copy of BigString(&v1151, v966);
          v231 = swift_unknownObjectRetain();
          specialized Rope._endPath.getter(v231);
          if (v226)
          {
            v232 = v228 == 0;
          }

          else
          {
            v232 = 1;
          }

          v233 = v232;
          if (v233 != v230)
          {
            goto LABEL_322;
          }

          if (one-time initialization token for _nextVersion != -1)
          {
            swift_once();
          }

          *(v225 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          *(v225 + 24) = v1151;
          *(v225 + 40) = v1152;
          *(v225 + 56) = v1153;
          *(v225 + 72) = v226;
          *(v225 + 80) = v227;
          *(v225 + 88) = v228;
          *(v225 + 96) = v229;
          *(v225 + 104) = MEMORY[0x1E69E7CC0];

          *v201 = v225;
        }

        if (one-time initialization token for _nextVersion != -1)
        {
          swift_once();
        }

        *(v225 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v1148 = *(v225 + 24);
        v1149 = *(v225 + 40);
        v1150 = *(v225 + 56);
        v234 = BigString.startIndex.getter();
        v236 = v235;
        v238 = v237;
        v240 = v239;
        v241 = BigString.endIndex.getter();
        *&v966[0] = v225;
        *(&v966[0] + 1) = v234;
        *&v966[1] = v236;
        *(&v966[1] + 1) = v238;
        *&v966[2] = v240;
        *(&v966[2] + 1) = v241;
        *&v966[3] = v242;
        *(&v966[3] + 1) = v243;
        v966[4] = v244;

        outlined destroy of AttributedString.CharacterView(v966);
        v1138 = v928;
        v1139 = v929;
        v1140 = v931;
        v1141 = v917;
        v1142 = *v921;
        v1143 = *&v921[8];
        v1144 = v922;
        v1145 = *(v225 + 24);
        v1146 = *(v225 + 40);
        v1147 = *(v225 + 56);
        swift_unknownObjectRetain();

        BigString.UnicodeScalarView.subscript.getter();
        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(v1006);
        *&v934 = v1006[6];
        v931 = v1006[7];
        v245 = v1006[8];
        v246 = v1006[9];
        *(&v928 + 1) = v1006[10];
        v247 = v1006[11];
        v248 = v1006[12];
        v249 = v1006[13];
        if (one-time initialization token for currentIdentity != -1)
        {
          swift_once();
        }

        v250 = static AttributedString.currentIdentity;
        os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
        v251 = *(v250 + 16);
        v199 = __OFADD__(v251, 1);
        v252 = v251 + 1;
        if (v199)
        {
          goto LABEL_320;
        }

        v927 = v249;
        *&v928 = v248;
        *&v930 = v245;
        *&v922 = v252;
        *(v250 + 16) = v252;
        os_unfair_lock_unlock((v250 + 24));
        BigString.init()();
        *&v960 = 0;
        MEMORY[0x1865D26B0](&v960, 8);
        v253 = v960;
        type metadata accessor for AttributedString.Guts();
        v254 = swift_allocObject();
        if ((BigString.isEmpty.getter() & 1) == 0)
        {
          goto LABEL_321;
        }

        *&v923 = v247;
        v929 = v246;
        *(v254 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        *(v254 + 24) = v1007;
        *(v254 + 40) = v1008;
        *(v254 + 56) = v1009;
        *(v254 + 72) = 0;
        *(v254 + 80) = 0;
        *(v254 + 88) = 0;
        *(v254 + 96) = v253;
        *(v254 + 104) = MEMORY[0x1E69E7CC0];

        *v201 = v254;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1135 = *(v225 + 24);
          v1136 = *(v225 + 40);
          v1137 = *(v225 + 56);
          v344 = *(v225 + 72);
          v345 = *(v225 + 80);
          v346 = *(v225 + 88);
          v347 = *(v225 + 96);
          v348 = swift_allocObject();
          v349 = BigString.isEmpty.getter() & 1;
          outlined init with copy of BigString(&v1135, &v960);
          v350 = swift_unknownObjectRetain();
          specialized Rope._endPath.getter(v350);
          if (v344)
          {
            v351 = v346 == 0;
          }

          else
          {
            v351 = 1;
          }

          v352 = v351;
          if (v352 != v349)
          {
            goto LABEL_323;
          }

          *(v348 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          *(v348 + 24) = v1135;
          *(v348 + 40) = v1136;
          *(v348 + 56) = v1137;
          *(v348 + 72) = v344;
          *(v348 + 80) = v345;
          *(v348 + 88) = v346;
          *(v348 + 96) = v347;
          *(v348 + 104) = MEMORY[0x1E69E7CC0];

          v225 = v348;
        }

        v1132 = *(v225 + 24);
        v1133 = *(v225 + 40);
        v1134 = *(v225 + 56);
        swift_unknownObjectRetain();
        v353 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v1129 = *(v225 + 24);
        v1130 = *(v225 + 40);
        v1131 = *(v225 + 56);
        swift_unknownObjectRetain();
        v214 = *(&v928 + 1);
        v215 = v923;
        v216 = v928;
        v217 = v927;
        v354 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v355 = v353 >> 11;
        v356 = v354 >> 11;
        v212 = v932;

        v213 = v924;

        specialized AttributedString._InternalRunsSlice.updateEach(with:)(v225, v355, v356, v212, 0);

        if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v212))
        {
          v357 = v212 + 64;
          v358 = 1 << *(v212 + 32);
          if (v358 < 64)
          {
            v359 = ~(-1 << v358);
          }

          else
          {
            v359 = -1;
          }

          v360 = v359 & *(v212 + 64);
          v361 = (v358 + 63) >> 6;

          v362 = 0;
          *&v921[8] = MEMORY[0x1E69E7CC0];
          if (!v360)
          {
            goto LABEL_106;
          }

          do
          {
LABEL_104:
            while (1)
            {
              v363 = __clz(__rbit64(v360));
              v360 &= v360 - 1;
              outlined init with copy of AttributedString._AttributeValue(*(v932 + 56) + 72 * (v363 | (v362 << 6)), &v960);
              v364 = *(&v962 + 1);
              v365 = v963;
              outlined copy of AttributedString.AttributeRunBoundaries?(*(&v962 + 1), v963);
              outlined destroy of AttributedString._AttributeValue(&v960);
              if (v365 != 1)
              {
                break;
              }

              if (!v360)
              {
                goto LABEL_106;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v921[8] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&v921[8] + 16) + 1, 1, *&v921[8]);
            }

            v368 = *(*&v921[8] + 16);
            v367 = *(*&v921[8] + 24);
            v369 = v368 + 1;
            if (v368 >= v367 >> 1)
            {
              v920 = *(*&v921[8] + 16);
              *v921 = v368 + 1;
              v372 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v367 > 1), v368 + 1, 1, *&v921[8]);
              v368 = v920;
              v369 = *v921;
              *&v921[8] = v372;
            }

            v370 = *&v921[8];
            *(*&v921[8] + 16) = v369;
            v371 = v370 + 16 * v368;
            *(v371 + 32) = v364;
            *(v371 + 40) = v365;
          }

          while (v360);
LABEL_106:
          while (1)
          {
            v366 = v362 + 1;
            if (__OFADD__(v362, 1))
            {
              break;
            }

            if (v366 >= v361)
            {
              v212 = v932;

              AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v355, v356, 0, *&v921[8]);

              v213 = v924;
              v214 = *(&v928 + 1);
              v215 = v923;
              v216 = v928;
              v217 = v927;
              goto LABEL_54;
            }

            v360 = *(v357 + 8 * v366);
            ++v362;
            if (v360)
            {
              v362 = v366;
              goto LABEL_104;
            }
          }

          __break(1u);
LABEL_309:
          __break(1u);
          goto LABEL_310;
        }

LABEL_54:
        outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v212, v213, v911);
        v218 = v919;

        *v218 = v225;
        *&v960 = v225;
        *(&v960 + 1) = v934;
        *&v961 = v931;
        *(&v961 + 1) = v930;
        *&v962 = v929;
        *(&v962 + 1) = v214;
        *&v963 = v215;
        *(&v963 + 1) = v216;
        *&v964 = v217;
        v201 = v218;
        *(&v964 + 1) = v922;
        outlined destroy of AttributedSubstring(&v960);
        v210 = v899;
        i = v900;
      }

      v920 = *&v966[3];
      v916 = *(&v967[0] + 1);
      v1126 = *(v223 + 24);
      v1127 = *(v223 + 40);
      v1128 = *(v223 + 56);
      v255 = BigString.startIndex.getter();
      v257 = v256;
      v259 = v258;
      v261 = v260;
      v262 = BigString.endIndex.getter();
      v969 = v223;
      v970 = v255;
      v971 = v257;
      v263 = v924;
      v972 = v259;
      v973 = v261;
      v974 = v262;
      v975 = v264;
      v976 = v265;
      v977 = v266;
      v978 = 0;
      outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup?(v223, v924, v221);
      outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup?(v223, v263, v221);
      outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup(v223, v263, 0);
      outlined destroy of AttributedString.CharacterView(&v969);
      if ((v974 ^ v970) >= 0x400)
      {
        v267 = *v201;
        v1123 = *(v267 + 24);
        v1124 = *(v267 + 40);
        v1125 = *(v267 + 56);
        v268 = BigString.startIndex.getter();
        v270 = v269;
        v272 = v271;
        v274 = v273;
        v275 = BigString.endIndex.getter();
        v968[0] = v267;
        v968[1] = v268;
        v968[2] = v270;
        v968[3] = v272;
        v968[4] = v274;
        v968[5] = v275;
        v968[6] = v276;
        v968[7] = v277;
        v968[8] = v278;
        v968[9] = 0;
        swift_retain_n();
        outlined destroy of AttributedString.CharacterView(v968);
        v1113[10] = v928;
        v1114 = v929;
        v1115 = v931;
        v1116 = v917;
        v1117 = *v921;
        v1118 = *&v921[8];
        v1119 = v922;
        v1120 = *(v267 + 24);
        v1121 = *(v267 + 40);
        v1122 = *(v267 + 56);
        swift_unknownObjectRetain();

        BigString.UnicodeScalarView.subscript.getter();
        swift_unknownObjectRelease();

        outlined destroy of BigSubstring.UnicodeScalarView(&v979);
        v962 = v982;
        v963 = v983;
        *(v966 + 8) = v980;
        *(&v966[1] + 8) = v981;
        *(&v966[2] + 8) = v982;
        *(&v966[3] + 8) = v983;
        v1113[6] = v983;
        v1113[5] = v982;
        v1113[4] = v981;
        v1113[3] = v980;
        v1113[7] = *(v267 + 24);
        v1113[8] = *(v267 + 40);
        v1113[9] = *(v267 + 56);
        swift_unknownObjectRetain();

        BigString.UnicodeScalarView.subscript.getter();
        swift_unknownObjectRelease();

        outlined destroy of BigSubstring.UnicodeScalarView(v984);
        v962 = v985;
        v963 = v986;
        v1096 = v984[3];
        v1097 = v984[4];
        v1098 = v985;
        v1099 = v986;
        v927 = v267;
        v1095 = v267;
        v1100 = 0;
        v279 = *(v223 + 24);
        v280 = *(v223 + 40);
        v1113[2] = *(v223 + 56);
        v1113[1] = v280;
        v1113[0] = v279;
        v282 = *(v223 + 56);
        v281 = *(v223 + 64);
        v934 = *(v223 + 24);
        v930 = *(v223 + 40);
        v283 = BigString.startIndex.getter();
        v285 = v284;
        v287 = v286;
        v289 = v288;
        v290 = BigString.endIndex.getter();
        v1101 = v283;
        v1102 = v285;
        v1103 = v287;
        v1104 = v289;
        v1105 = v290;
        v1106 = v291;
        v1107 = v292;
        v1108 = v293;
        v1110 = v930;
        v1109 = v934;
        v1111 = v282;
        v1112 = v281;
        v294 = v924;
        v295 = v911;
        outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup?(v223, v924, v911);
        outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup?(v223, v294, v295);
        outlined init with copy of BigString(v1113, &v960);
        BigString.UnicodeScalarView.subscript.getter();
        outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v223, v294, v295);
        outlined destroy of BigString(v1113);
        outlined destroy of BigSubstring.UnicodeScalarView(v987);
        v962 = v988;
        v963 = v989;
        v1090 = v987[3];
        v1091 = v987[4];
        v1092 = v988;
        v1093 = v989;
        v1089 = v223;
        v1094 = 0;
        v296 = specialized Sequence<>.elementsEqual<A>(_:)(&v1089);
        outlined destroy of AttributedString.UnicodeScalarView(&v1089);
        outlined destroy of AttributedString.UnicodeScalarView(&v1095);
        if (v296)
        {
          v1069[18] = *(v223 + 24);
          v1069[19] = *(v223 + 40);
          v1069[20] = *(v223 + 56);
          v297 = BigString.startIndex.getter();
          v299 = v298;
          v301 = v300;
          v303 = v302;
          v304 = BigString.endIndex.getter();
          v308 = v223;
          v309 = v933;
          v310 = v912;
          v311 = v897;
          if (v304 >> 10 < v297 >> 10)
          {
            goto LABEL_326;
          }

          *&v966[0] = v297;
          *(&v966[0] + 1) = v299;
          *&v966[1] = v301;
          *(&v966[1] + 1) = v303;
          *&v966[2] = v304;
          *(&v966[2] + 1) = v305;
          *&v966[3] = v306;
          *(&v966[3] + 1) = v307;
          outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup(v308, v924, 0);
          RangeSet.init(_:)();
          *v896 = v308;
          RangeSet.init()();
          RangeSet.ranges.getter();
          v312 = v906;
          v893(v906, v310, v309);
          v313 = *(v311 + 36);
          dispatch thunk of Collection.startIndex.getter();
          v913(v310, v309);
          dispatch thunk of Collection.endIndex.getter();
          v314 = *(v312 + v313);
          *&v922 = v313;
          if (v314 != *&v966[0])
          {
            do
            {
              v325 = dispatch thunk of Collection.subscript.read();
              v327 = v326[5];
              *&v934 = v326[4];
              *&v930 = v327;
              *&v923 = v326[6];
              v325(v966, 0);
              dispatch thunk of Collection.formIndex(after:)();
              v328 = v932;
              v1069[15] = *(v932 + 24);
              v1069[16] = *(v932 + 40);
              v1069[17] = *(v932 + 56);
              swift_unknownObjectRetain();
              v329 = BigString.UnicodeScalarView.index(roundingDown:)();
              v331 = v330;
              v333 = v332;
              v335 = v334;
              swift_unknownObjectRelease();
              v1069[12] = *(v328 + 24);
              v1069[13] = *(v328 + 40);
              v1069[14] = *(v328 + 56);
              swift_unknownObjectRetain();
              v336 = BigString.UnicodeScalarView.index(roundingDown:)();
              v338 = v337;
              v340 = v339;
              v342 = v341;
              swift_unknownObjectRelease();
              *&v966[0] = v329;
              *(&v966[0] + 1) = v331;
              *&v966[1] = v333;
              *(&v966[1] + 1) = v335;
              v309 = v933;
              *&v966[2] = v336;
              *(&v966[2] + 1) = v338;
              *&v966[3] = v340;
              *(&v966[3] + 1) = v342;
              if ((v336 ^ v329) >= 0x400)
              {
                v343 = RangeSet._ranges.modify();
                RangeSet.Ranges._insert(contentsOf:)();
                v343(&v960, 0);
              }

              v312 = v906;
              dispatch thunk of Collection.endIndex.getter();
            }

            while (*(v312 + v922) != *&v966[0]);
          }

          outlined destroy of TermOfAddress?(v312, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
          v315 = v898;
          v316 = *(v898 + 24);
          v317 = v896;
          v891(v896 + v316, v902, v926);
          v318 = v912;
          RangeSet.ranges.getter();
          v319 = RangeSet.Ranges.count.getter();
          v320 = v318;
          v321 = v913;
          v913(v320, v309);
          v322 = v309;
          v323 = *(v315 + 28);
          LODWORD(v934) = v319 > 1;
          *(v317 + v323) = v934;
          v324 = v882;
          RangeSet.ranges.getter();
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          if (v960 == *&v966[0] || (v428 = dispatch thunk of Collection.subscript.read(), v430 = *v429, v914 = v429[1], v915 = v430, v431 = v429[3], v908 = v429[2], v878 = v431, v428(v966, 0), v321(v324, v309), v324 = v872, RangeSet.ranges.getter(), (dispatch thunk of Collection.isEmpty.getter() & 1) != 0))
          {
            v321(v324, v309);
            v432 = v932;
            v433 = *(v932 + 72);
            v917 = *(v932 + 96);
            if (v433)
            {
              v916 = *(v433 + 18);
            }

            else
            {
              v916 = 0;
            }

            v1069[6] = *(v932 + 24);
            v1069[7] = *(v932 + 40);
            v1069[8] = *(v932 + 56);
            v441 = BigString.startIndex.getter();
            *&v930 = v442;
            *&v923 = v443;
            *&v922 = v444;
            v445 = *(v432 + 72);
            *&v921[8] = *(v432 + 96);
            if (v445)
            {
              *v921 = *(v445 + 18);
              v446 = *v889;
              swift_unknownObjectRetain();
              v447 = v926;
              v446(v886, v926);
              v446(v902, v447);
              swift_unknownObjectRelease();
            }

            else
            {
              v531 = *v889;
              v532 = v926;
              (*v889)(v886, v926);
              v531(v902, v532);
              *v921 = 0;
            }

            v1069[3] = *(v432 + 24);
            v1069[4] = *(v432 + 40);
            v1069[5] = *(v432 + 56);
            v536 = BigString.startIndex.getter();
            v537 = v533;
            v538 = v534;
            v539 = v535;
            v540 = 0;
            v541 = 0;
            LODWORD(v934) = 0;
            v542 = 0;
            v543 = 0;
            v544 = -1;
            v545 = v441;
            v546 = v930;
            v547 = v930;
            v548 = v923;
            v549 = v923;
            v550 = v922;
            v551 = v922;
            v552 = v536;
            v553 = -1;
          }

          else
          {
            v867 = v316;
            dispatch thunk of Collection.endIndex.getter();
            lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
            dispatch thunk of BidirectionalCollection.index(before:)();
            v812 = dispatch thunk of Collection.subscript.read();
            v814 = v813[4];
            v815 = v813[6];
            v816 = v813[7];
            v876 = v813[5];
            v877 = v815;
            v812(v966, 0);
            v321(v324, v309);
            v817 = v932;
            AttributedString.Guts.findRun(at:)(v915, v878, v966);
            v916 = *(&v966[0] + 1);
            v917 = *&v966[0];
            v869 = *(&v966[1] + 1);
            v870 = *&v966[1];
            v875 = *(&v966[2] + 1);
            *&v923 = *(&v966[3] + 1);
            *&v930 = *&v966[3];
            *&v922 = *&v966[4];
            v1069[9] = *(v817 + 24);
            v1069[10] = *(v817 + 40);
            v1069[11] = *(v817 + 56);
            v818 = BigString.endIndex.getter();
            v874 = v816;
            if ((v818 ^ v814) > 0x3FF)
            {
              v866 = v814;
              AttributedString.Guts.findRun(at:)(v814, v816, v966);
              *v921 = *(&v966[0] + 1);
              *&v921[8] = *&v966[0];
              v868 = *(&v966[1] + 1);
              v865 = *&v966[1];
              v536 = *(&v966[2] + 1);
              v538 = *(&v966[3] + 1);
              v537 = *&v966[3];
              v539 = *&v966[4];
              v847 = v926;
              RangeSet.ranges.getter();
              v553 = RangeSet.Ranges.count.getter();
              v848 = *v889;
              (*v889)(v886, v847);
              v913(v912, v322);
              v848(v902, v847);
              v552 = v866;
              v543 = v865;
              v542 = v868;
              v540 = v869;
              v544 = 0;
              v547 = v914;
              v545 = v915;
              v549 = v908;
              v534 = v877;
              v551 = v878;
              v441 = v875;
              v533 = v876;
              v546 = v930;
              v548 = v923;
              v550 = v922;
              v535 = v874;
              v541 = v870;
            }

            else
            {
              v819 = v876;
              v820 = *(v817 + 72);
              if (v820)
              {
                v821 = *(v817 + 80);
              }

              else
              {
                v821 = 0;
              }

              v868 = v821;
              v822 = *(v817 + 96);
              v823 = swift_unknownObjectRetain();
              *&v921[8] = v822;
              *v921 = specialized Rope._endPath.getter(v823);
              if (v820)
              {
                swift_unknownObjectRelease();
              }

              v824 = v912;
              v825 = v926;
              RangeSet.ranges.getter();
              v826 = v933;
              v553 = RangeSet.Ranges.count.getter();
              v827 = *v889;
              (*v889)(v886, v825);
              v913(v824, v826);
              v827(v902, v825);
              v544 = 0;
              v543 = 0;
              v552 = v814;
              v536 = v814;
              v533 = v819;
              v537 = v819;
              v534 = v877;
              v551 = v878;
              v538 = v877;
              v535 = v874;
              v441 = v875;
              v539 = v874;
              v547 = v914;
              v545 = v915;
              v549 = v908;
              v546 = v930;
              v548 = v923;
              v550 = v922;
              v540 = v869;
              v541 = v870;
              v542 = v868;
            }
          }

          v554 = v896;
          v896[1] = v540;
          *(v554 + 16) = v917;
          *(v554 + 24) = v916;
          *(v554 + 32) = v541;
          *(v554 + 40) = v441;
          *(v554 + 48) = v546;
          *(v554 + 56) = v548;
          *(v554 + 64) = v550;
          *(v554 + 72) = v545;
          *(v554 + 80) = v547;
          *(v554 + 88) = v549;
          *(v554 + 96) = v551;
          *(v554 + 104) = v544;
          *(v554 + 112) = 0;
          v555 = v934;
          *(v554 + 113) = v934;
          v556 = *v921;
          v557 = *&v921[8];
          *(v554 + 120) = v542;
          *(v554 + 128) = v557;
          *(v554 + 136) = v556;
          *(v554 + 144) = v543;
          *(v554 + 152) = v536;
          *(v554 + 160) = v537;
          *(v554 + 168) = v538;
          *(v554 + 176) = v539;
          *(v554 + 184) = v552;
          *(v554 + 192) = v533;
          *(v554 + 200) = v534;
          *(v554 + 208) = v535;
          *(v554 + 216) = v553;
          *(v554 + 224) = 0;
          *(v554 + 225) = v555;
          v558 = v881;
          outlined init with take of String.LocalizationValue.FormatArgument.CodableStorage(v554, v881, type metadata accessor for AttributedString.Runs);
          v559 = v909;
          _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v558, v909, type metadata accessor for AttributedString.Runs);
          v560 = (v559 + *(v884 + 36));
          v561 = *(v558 + 72);
          v966[3] = *(v558 + 56);
          v966[4] = v561;
          v967[0] = *(v558 + 88);
          *(v967 + 10) = *(v558 + 98);
          v562 = *(v558 + 24);
          v966[0] = *(v558 + 8);
          v966[1] = v562;
          v966[2] = *(v558 + 40);
          outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(v558, type metadata accessor for AttributedString.Runs);
          v563 = v967[0];
          v560[4] = v966[4];
          v560[5] = v563;
          *(v560 + 90) = *(v967 + 10);
          v564 = v966[1];
          *v560 = v966[0];
          v560[1] = v564;
          v565 = v966[3];
          v560[2] = v966[2];
          v560[3] = v565;
          v201 = v919;
          v566 = v927;
          while (1)
          {
LABEL_149:
            specialized IndexingIterator.next()(&v954);
            v960 = v954;
            v961 = v955;
            v963 = v957;
            v964 = v958;
            v962 = v956;
            v965 = v959;
            v568 = v932;
            if (!v954.n128_u64[0])
            {
              v704 = v924;
              v705 = v911;
              outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v932, v924, v911);
              outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v568, v704, v705);
              outlined destroy of TermOfAddress?(v909, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
              goto LABEL_275;
            }

            *&v934 = v960;
            v927 = v566;
            *&v930 = *(&v960 + 1);
            v569 = v961;
            *v921 = v962;
            *&v921[8] = *(&v961 + 1);
            v916 = *(&v963 + 1);
            v570 = v963;
            v917 = *(&v962 + 1);
            v914 = *(&v964 + 1);
            v915 = v964;
            v571 = *(v932 + 24);
            v1069[1] = *(v932 + 40);
            v1069[2] = *(v932 + 56);
            v1069[0] = v571;
            v572 = *(v932 + 56);
            v573 = *(v932 + 64);
            v574 = *(v932 + 24);
            v922 = *(v932 + 40);
            v923 = v574;
            v575 = BigString.startIndex.getter();
            v577 = v576;
            v579 = v578;
            v581 = v580;
            v582 = BigString.endIndex.getter();
            v1057 = v575;
            v1058 = v577;
            v1059 = v579;
            v1060 = v581;
            v583 = v932;
            v1061 = v582;
            v1062 = v584;
            v1063 = v585;
            v1064 = v586;
            v1066 = v922;
            v1065 = v923;
            v1067 = v572;
            v1068 = v573;
            v587 = v924;
            LOBYTE(v575) = v911;
            outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup?(v932, v924, v911);
            outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup?(v583, v587, v575);
            outlined init with copy of BigString(v1069, v947);
            BigString.UnicodeScalarView.subscript.getter();
            outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v583, v587, v575);
            outlined destroy of BigString(v1069);
            outlined destroy of BigSubstring.UnicodeScalarView(v990);
            v947[2] = v991;
            v947[3] = v992;
            v949 = v990[3];
            v950 = v990[4];
            v951 = v991;
            v952 = v992;
            v948 = v583;
            v953 = 0;
            if (v991 >> 10 < v570 >> 10 || v570 >> 10 < v949 >> 10 || v569 >> 10 < v949 >> 10 || v991 >> 10 < v569 >> 10)
            {
              goto LABEL_311;
            }

            v1056[3] = *(v583 + 24);
            v1056[4] = *(v583 + 40);
            v1056[5] = *(v583 + 56);
            swift_unknownObjectRetain();
            *&v923 = BigString.UnicodeScalarView.distance(from:to:)();
            swift_unknownObjectRelease();
            outlined destroy of AttributedString.UnicodeScalarView(&v948);
            v588 = v927;
            v589 = *(v927 + 24);
            v1056[1] = *(v927 + 40);
            v1056[2] = *(v927 + 56);
            v1056[0] = v589;
            v590 = *(v927 + 56);
            v591 = *(v927 + 64);
            v592 = *(v927 + 24);
            *&v921[8] = *(v927 + 40);
            v922 = v592;
            v593 = BigString.startIndex.getter();
            v595 = v594;
            v597 = v596;
            v599 = v598;
            v600 = BigString.endIndex.getter();
            v1044 = v593;
            v1045 = v595;
            v1046 = v597;
            v1047 = v599;
            v1048 = v600;
            v1049 = v601;
            v1050 = v602;
            v1051 = v603;
            v1053 = *&v921[8];
            v1052 = v922;
            v1054 = v590;
            v1055 = v591;
            swift_retain_n();
            outlined init with copy of BigString(v1056, v947);
            BigString.UnicodeScalarView.subscript.getter();

            outlined destroy of BigString(v1056);
            outlined destroy of BigSubstring.UnicodeScalarView(&v993);
            v942 = v995;
            v941 = v994;
            v943 = v996;
            v944 = v997;
            *(v947 + 8) = v994;
            *(&v947[1] + 8) = v995;
            *(&v947[2] + 8) = v996;
            *(&v947[3] + 8) = v997;
            *&v947[0] = v588;
            *(&v947[4] + 1) = 0;
            v604 = v928;
            v935 = v928;
            v936 = v929;
            v937 = v931;
            v938 = v920;
            AttributedString.UnicodeScalarView.index(_:offsetBy:)(&v935, &v941);
            v956 = v947[2];
            v957 = v947[3];
            v958 = v947[4];
            v954 = v947[0];
            v955 = v947[1];
            outlined destroy of AttributedString.UnicodeScalarView(&v954);
            *&v923 = v941;
            if (v941 >> 10 < v604 >> 10)
            {
              goto LABEL_312;
            }

            *v921 = *(&v941 + 1);
            *&v922 = *(&v942 + 1);
            *&v921[8] = v942;
            v605 = v943;

            v201 = v919;
            v606 = swift_isUniquelyReferenced_nonNull_native();
            v607 = *v201;
            v920 = v605;
            if (v924)
            {
              break;
            }

            if ((v606 & 1) == 0)
            {
              v1043[0] = *(v607 + 24);
              v1043[1] = *(v607 + 40);
              v1043[2] = *(v607 + 56);
              v608 = *(v607 + 72);
              v609 = *(v607 + 80);
              v610 = *(v607 + 88);
              v611 = *(v607 + 96);
              type metadata accessor for AttributedString.Guts();
              swift_allocObject();
              outlined init with copy of BigString(v1043, v947);
              swift_unknownObjectRetain();
              v607 = AttributedString.Guts.init(string:runs:)(v1043, v608, v609, v610, v611);

              *v201 = v607;
            }

            if (one-time initialization token for _nextVersion != -1)
            {
              swift_once();
            }

            *(v607 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            v1040 = *(v607 + 24);
            v1041 = *(v607 + 40);
            v1042 = *(v607 + 56);
            v612 = BigString.startIndex.getter();
            v614 = v613;
            v616 = v615;
            v617 = v607;
            v619 = v618;
            v620 = BigString.endIndex.getter();
            *&v947[0] = v617;
            *(&v947[0] + 1) = v612;
            *&v947[1] = v614;
            *(&v947[1] + 1) = v616;
            *&v947[2] = v619;
            v566 = v617;
            *(&v947[2] + 1) = v620;
            *&v947[3] = v621;
            *(&v947[3] + 1) = v622;
            v947[4] = v623;

            outlined destroy of AttributedString.CharacterView(v947);
            v1030[3] = v928;
            v1031 = v929;
            v1032 = v931;
            v1033 = v923;
            v1034 = *v921;
            v1035 = *&v921[8];
            v1036 = v922;
            v1037 = *(v617 + 24);
            v1038 = *(v617 + 40);
            v1039 = *(v617 + 56);
            swift_unknownObjectRetain();

            BigString.UnicodeScalarView.subscript.getter();
            swift_unknownObjectRelease();
            outlined destroy of BigSubstring.UnicodeScalarView(v1002);
            v931 = v1002[6];
            v929 = v1002[7];
            *(&v928 + 1) = v1002[8];
            *&v928 = v1002[9];
            v916 = v1002[11];
            v917 = v1002[10];
            v914 = v1002[13];
            v915 = v1002[12];
            if (one-time initialization token for currentIdentity != -1)
            {
              swift_once();
            }

            v624 = static AttributedString.currentIdentity;
            os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
            v625 = *(v624 + 16);
            v626 = v625 + 1;
            if (__OFADD__(v625, 1))
            {
              goto LABEL_317;
            }

            *(v624 + 16) = v626;
            os_unfair_lock_unlock((v624 + 24));
            BigString.init()();
            *&v941 = 0;
            MEMORY[0x1865D26B0](&v941, 8);
            v627 = v941;
            type metadata accessor for AttributedString.Guts();
            v628 = swift_allocObject();
            if ((BigString.isEmpty.getter() & 1) == 0)
            {
              goto LABEL_318;
            }

            v908 = v626;
            *(v628 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            *(v628 + 24) = v1003;
            *(v628 + 40) = v1004;
            *(v628 + 56) = v1005;
            *(v628 + 72) = 0;
            *(v628 + 80) = 0;
            *(v628 + 88) = 0;
            *(v628 + 96) = v627;
            *(v628 + 104) = MEMORY[0x1E69E7CC0];

            *v201 = v628;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1030[0] = *(v566 + 24);
              v1030[1] = *(v566 + 40);
              v1030[2] = *(v566 + 56);
              v629 = *(v566 + 72);
              v630 = *(v566 + 80);
              v631 = *(v566 + 88);
              v632 = *(v566 + 96);
              swift_allocObject();
              outlined init with copy of BigString(v1030, &v941);
              swift_unknownObjectRetain();
              v633 = AttributedString.Guts.init(string:runs:)(v1030, v629, v630, v631, v632);

              v566 = v633;
            }

            v1029[6] = *(v566 + 24);
            v1029[7] = *(v566 + 40);
            v1029[8] = *(v566 + 56);
            swift_unknownObjectRetain();
            v634 = BigString.UnicodeScalarView.index(roundingDown:)();
            swift_unknownObjectRelease();
            v1029[3] = *(v566 + 24);
            v1029[4] = *(v566 + 40);
            v1029[5] = *(v566 + 56);
            swift_unknownObjectRetain();
            v165 = BigString.UnicodeScalarView.index(roundingDown:)();
            swift_unknownObjectRelease();
            v635 = v634 >> 11;
            v162 = v165 >> 11;
            v636 = v934;

            specialized AttributedString._InternalRunsSlice.updateEach(with:)(v566, v635, v165 >> 11, v636, 0);

            if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v636))
            {
              v927 = v566;
              v637 = v636 + 64;
              v638 = 1 << *(v636 + 32);
              if (v638 < 64)
              {
                v639 = ~(-1 << v638);
              }

              else
              {
                v639 = -1;
              }

              v640 = v639 & *(v636 + 64);
              v641 = (v638 + 63) >> 6;

              v642 = 0;
              v643 = MEMORY[0x1E69E7CC0];
              while (v640)
              {
                v164 = v934;
LABEL_178:
                v645 = __clz(__rbit64(v640));
                v640 &= v640 - 1;
                outlined init with copy of AttributedString._AttributeValue(*(v164 + 56) + 72 * (v645 | (v642 << 6)), &v941);
                v646 = *(&v943 + 1);
                v165 = v944;
                outlined copy of AttributedString.AttributeRunBoundaries?(*(&v943 + 1), v944);
                outlined destroy of AttributedString._AttributeValue(&v941);
                if (v165 != 1)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v643 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v643 + 2) + 1, 1, v643);
                  }

                  v648 = *(v643 + 2);
                  v647 = *(v643 + 3);
                  v649 = v648 + 1;
                  if (v648 >= v647 >> 1)
                  {
                    v878 = v648 + 1;
                    v651 = v643;
                    v652 = v648;
                    v653 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v647 > 1), v648 + 1, 1, v651);
                    v649 = v878;
                    v648 = v652;
                    v643 = v653;
                  }

                  *(v643 + 2) = v649;
                  v650 = &v643[16 * v648];
                  *(v650 + 4) = v646;
                  *(v650 + 5) = v165;
                }
              }

              v164 = v934;
              while (1)
              {
                v644 = v642 + 1;
                if (__OFADD__(v642, 1))
                {
                  break;
                }

                if (v644 >= v641)
                {

                  v566 = v927;
                  AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v635, v162, 0, v643);
                  outlined destroy of TermOfAddress?(&v960, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd, &_s10Foundation16AttributedStringV4RunsV3RunVSgMR);

                  v201 = v919;
                  goto LABEL_212;
                }

                v640 = *(v637 + 8 * v644);
                ++v642;
                if (v640)
                {
                  v642 = v644;
                  goto LABEL_178;
                }
              }

              __break(1u);
              goto LABEL_304;
            }

            outlined destroy of TermOfAddress?(&v960, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd, &_s10Foundation16AttributedStringV4RunsV3RunVSgMR);

LABEL_212:

            *v201 = v566;
            *&v941 = v566;
            *(&v941 + 1) = v931;
            *&v942 = v929;
            *(&v942 + 1) = *(&v928 + 1);
            *&v943 = v928;
            *(&v943 + 1) = v917;
            *&v944 = v916;
            *(&v944 + 1) = v915;
            v945 = v914;
            v946 = v908;
            outlined destroy of AttributedSubstring(&v941);
            *&v928 = v923;
            *(&v928 + 1) = *v921;
            v929 = *&v921[8];
            v931 = v922;
          }

          if ((v606 & 1) == 0)
          {
            v1029[0] = *(v607 + 24);
            v1029[1] = *(v607 + 40);
            v1029[2] = *(v607 + 56);
            v654 = *(v607 + 72);
            v655 = *(v607 + 80);
            v656 = *(v607 + 88);
            v657 = *(v607 + 96);
            type metadata accessor for AttributedString.Guts();
            swift_allocObject();
            outlined init with copy of BigString(v1029, v947);
            swift_unknownObjectRetain();
            v607 = AttributedString.Guts.init(string:runs:)(v1029, v654, v655, v656, v657);

            *v201 = v607;
          }

          if (one-time initialization token for _nextVersion != -1)
          {
            swift_once();
          }

          *(v607 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          v1026 = *(v607 + 24);
          v1027 = *(v607 + 40);
          v1028 = *(v607 + 56);
          v658 = BigString.startIndex.getter();
          v660 = v659;
          v662 = v661;
          v663 = v607;
          v665 = v664;
          v666 = BigString.endIndex.getter();
          *&v947[0] = v663;
          *(&v947[0] + 1) = v658;
          *&v947[1] = v660;
          *(&v947[1] + 1) = v662;
          *&v947[2] = v665;
          v667 = v663;
          *(&v947[2] + 1) = v666;
          *&v947[3] = v668;
          *(&v947[3] + 1) = v669;
          v947[4] = v670;

          outlined destroy of AttributedString.CharacterView(v947);
          v1016[3] = v928;
          v1017 = v929;
          v1018 = v931;
          v1019 = v923;
          v1020 = *v921;
          v1021 = *&v921[8];
          v1022 = v922;
          v1023 = *(v663 + 24);
          v1024 = *(v663 + 40);
          v1025 = *(v663 + 56);
          swift_unknownObjectRetain();

          BigString.UnicodeScalarView.subscript.getter();
          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(v998);
          v671 = v998[6];
          v931 = v998[7];
          v929 = v998[8];
          *(&v928 + 1) = v998[9];
          *&v928 = v998[10];
          v916 = v998[12];
          v917 = v998[11];
          v915 = v998[13];
          if (one-time initialization token for currentIdentity != -1)
          {
            swift_once();
          }

          v672 = static AttributedString.currentIdentity;
          os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
          v673 = *(v672 + 16);
          v199 = __OFADD__(v673, 1);
          v674 = v673 + 1;
          if (v199)
          {
            goto LABEL_316;
          }

          v914 = v674;
          *(v672 + 16) = v674;
          os_unfair_lock_unlock((v672 + 24));
          BigString.init()();
          *&v941 = 0;
          MEMORY[0x1865D26B0](&v941, 8);
          v675 = v941;
          type metadata accessor for AttributedString.Guts();
          v676 = swift_allocObject();
          if ((BigString.isEmpty.getter() & 1) == 0)
          {
            goto LABEL_319;
          }

          *(v676 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          v677 = v1000;
          *(v676 + 24) = v999;
          *(v676 + 40) = v677;
          *(v676 + 56) = v1001;
          *(v676 + 72) = 0;
          *(v676 + 80) = 0;
          *(v676 + 88) = 0;
          *(v676 + 96) = v675;
          *(v676 + 104) = MEMORY[0x1E69E7CC0];

          *v201 = v676;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1016[0] = *(v667 + 24);
            v1016[1] = *(v667 + 40);
            v1016[2] = *(v667 + 56);
            v678 = *(v667 + 72);
            v679 = *(v667 + 80);
            v680 = *(v667 + 88);
            v681 = *(v667 + 96);
            swift_allocObject();
            outlined init with copy of BigString(v1016, &v941);
            swift_unknownObjectRetain();
            v667 = AttributedString.Guts.init(string:runs:)(v1016, v678, v679, v680, v681);
          }

          v1013 = *(v667 + 24);
          v1014 = *(v667 + 40);
          v1015 = *(v667 + 56);
          swift_unknownObjectRetain();
          v908 = v671;
          v682 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          v1010 = *(v667 + 24);
          v1011 = *(v667 + 40);
          v1012 = *(v667 + 56);
          swift_unknownObjectRetain();
          v683 = BigString.UnicodeScalarView.index(roundingDown:)();
          swift_unknownObjectRelease();
          v684 = v682 >> 11;
          v685 = v667;
          v169 = v683 >> 11;
          v686 = (v683 >> 11) - (v682 >> 11);
          v927 = v685;
          v687 = v682 >> 11;
          v688 = v934;
          specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v687, v683 >> 11, v686, v934, v930);
          v689 = v688 + 64;
          v690 = 1 << *(v688 + 32);
          if (v690 < 64)
          {
            v691 = ~(-1 << v690);
          }

          else
          {
            v691 = -1;
          }

          v692 = v691 & *(v688 + 64);
          v8 = (v690 + 63) >> 6;

          v170 = 0;
          v171 = MEMORY[0x1E69E7CC0];
          if (!v692)
          {
            goto LABEL_200;
          }

          do
          {
LABEL_198:
            while (1)
            {
              v693 = __clz(__rbit64(v692));
              v692 &= v692 - 1;
              outlined init with copy of AttributedString._AttributeValue(*(v934 + 56) + 72 * (v693 | (v170 << 6)), &v935);
              v694 = v939;
              v695 = v940;
              outlined copy of AttributedString.AttributeRunBoundaries?(v939, v940);
              outlined destroy of AttributedString._AttributeValue(&v935);
              if (v695 != 1)
              {
                break;
              }

              if (!v692)
              {
                goto LABEL_200;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v171 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v171 + 2) + 1, 1, v171);
            }

            v698 = *(v171 + 2);
            v697 = *(v171 + 3);
            v699 = v698 + 1;
            if (v698 >= v697 >> 1)
            {
              v878 = v698 + 1;
              v701 = v171;
              v702 = v698;
              v703 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v697 > 1), v698 + 1, 1, v701);
              v699 = v878;
              v698 = v702;
              v171 = v703;
            }

            *(v171 + 2) = v699;
            v700 = &v171[16 * v698];
            *(v700 + 4) = v694;
            *(v700 + 5) = v695;
          }

          while (v692);
LABEL_200:
          while (1)
          {
            v696 = v170 + 1;
            if (__OFADD__(v170, 1))
            {
              break;
            }

            if (v696 >= v8)
            {

              v567 = v169;
              v566 = v927;
              AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v684, v567, 0, v171);
              outlined destroy of TermOfAddress?(&v960, &_s10Foundation16AttributedStringV4RunsV3RunVSgMd, &_s10Foundation16AttributedStringV4RunsV3RunVSgMR);

              v201 = v919;

              *v201 = v566;
              *&v941 = v566;
              *(&v941 + 1) = v908;
              *&v942 = v931;
              *(&v942 + 1) = v929;
              *&v943 = *(&v928 + 1);
              *(&v943 + 1) = v928;
              *&v944 = v917;
              *(&v944 + 1) = v916;
              v945 = v915;
              v946 = v914;
              outlined destroy of AttributedSubstring(&v941);

              *&v928 = v923;
              *(&v928 + 1) = *v921;
              v929 = *&v921[8];
              v931 = v922;
              goto LABEL_149;
            }

            v692 = *(v689 + 8 * v696);
            ++v170;
            if (v692)
            {
              v170 = v696;
              goto LABEL_198;
            }
          }

          __break(1u);
LABEL_302:
          AttributedString.Guts.findRun(at:)(v169, v171, &v1076);
          *(&v928 + 1) = *(&v1076 + 1);
          v917 = v1076;
          v143 = v1077;
          v867 = *(&v1078 + 1);
          v868 = *(&v1077 + 1);
          v865 = *(&v1079 + 1);
          v866 = v1079;
          v864 = v1080;
          v855 = v912;
          v929 = v169;
          v856 = v926;
          RangeSet.ranges.getter();
          v155 = RangeSet.Ranges.count.getter();
          v857 = v170;
          v858 = *(v927 + 8);
          v858(v924, v856);
          v859 = v8;
          v156 = v917;
          v913(v855, v859);
          v858(v928, v856);
          v135 = v867;
          v142 = v868;
          v152 = v857;
          v138 = v864;
          v136 = v866;
          v137 = v865;
          v144 = 0;
          v157 = v923;
          v141 = v911;
          v145 = v908;
          v146 = v899;
          v148 = v889;
          v124 = v877;
          v150 = v878;
          v126 = v914;
          v147 = v931;
          v149 = v930;
          v154 = v875;
          v153 = v876;
          v140 = v874;
          v139 = v870;
          v151 = v929;
          goto LABEL_16;
        }

        v373 = *(v223 + 40);
        v1088[35] = *(v223 + 24);
        v1088[36] = v373;
        v1088[37] = *(v223 + 56);
        v374 = BigString.startIndex.getter();
        v376 = v375;
        v378 = v377;
        v380 = v379;
        v381 = BigString.endIndex.getter();
        v385 = v223;
        v386 = v933;
        v387 = v912;
        v388 = v888;
        if (v381 >> 10 < v374 >> 10)
        {
          goto LABEL_325;
        }

        *&v966[0] = v374;
        *(&v966[0] + 1) = v376;
        *&v966[1] = v378;
        *(&v966[1] + 1) = v380;
        *&v966[2] = v381;
        *(&v966[2] + 1) = v382;
        *&v966[3] = v383;
        *(&v966[3] + 1) = v384;
        v389 = v897;
        outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup(v385, v924, 0);
        RangeSet.init(_:)();
        *v388 = v385;
        RangeSet.init()();
        RangeSet.ranges.getter();
        v390 = v907;
        v893(v907, v387, v386);
        v391 = *(v389 + 36);
        dispatch thunk of Collection.startIndex.getter();
        v913(v387, v386);
        dispatch thunk of Collection.endIndex.getter();
        v392 = *(v390 + v391);
        *&v923 = v391;
        if (v392 != *&v966[0])
        {
          do
          {
            v407 = dispatch thunk of Collection.subscript.read();
            v409 = v408[5];
            *&v934 = v408[4];
            *&v930 = v409;
            v927 = v408[6];
            v407(v966, 0);
            dispatch thunk of Collection.formIndex(after:)();
            v410 = v932;
            v411 = *(v932 + 40);
            v1088[32] = *(v932 + 24);
            v1088[33] = v411;
            v1088[34] = *(v932 + 56);
            swift_unknownObjectRetain();
            v412 = BigString.UnicodeScalarView.index(roundingDown:)();
            v414 = v413;
            v416 = v415;
            v418 = v417;
            swift_unknownObjectRelease();
            v419 = *(v410 + 40);
            v1088[29] = *(v410 + 24);
            v1088[30] = v419;
            v1088[31] = *(v410 + 56);
            swift_unknownObjectRetain();
            v420 = BigString.UnicodeScalarView.index(roundingDown:)();
            v422 = v421;
            v424 = v423;
            v426 = v425;
            swift_unknownObjectRelease();
            *&v966[0] = v412;
            *(&v966[0] + 1) = v414;
            *&v966[1] = v416;
            *(&v966[1] + 1) = v418;
            v386 = v933;
            *&v966[2] = v420;
            *(&v966[2] + 1) = v422;
            *&v966[3] = v424;
            *(&v966[3] + 1) = v426;
            if ((v420 ^ v412) >= 0x400)
            {
              v427 = RangeSet._ranges.modify();
              RangeSet.Ranges._insert(contentsOf:)();
              v427(&v960, 0);
            }

            v390 = v907;
            dispatch thunk of Collection.endIndex.getter();
          }

          while (*(v390 + v923) != *&v966[0]);
        }

        outlined destroy of TermOfAddress?(v390, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
        v393 = v898;
        v394 = v888;
        v891(v888 + *(v898 + 24), v903, v926);
        v395 = v912;
        RangeSet.ranges.getter();
        v396 = RangeSet.Ranges.count.getter();
        v913(v395, v386);
        v397 = v386;
        v398 = *(v393 + 28);
        LODWORD(v876) = v396 > 1;
        *(v394 + v398) = v876;
        v399 = v883;
        RangeSet.ranges.getter();
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (v960 == *&v966[0] || (v400 = dispatch thunk of Collection.subscript.read(), v403 = *v401, v402 = v401[1], v404 = v401[3], v874 = v401[2], v875 = v402, v870 = v404, v400(v966, 0), v913(v399, v397), v399 = v873, RangeSet.ranges.getter(), (dispatch thunk of Collection.isEmpty.getter() & 1) != 0))
        {
          v913(v399, v397);
          v405 = v932;
          v406 = *(v932 + 72);
          v908 = *(v932 + 96);
          if (v406)
          {
            v878 = *(v406 + 18);
          }

          else
          {
            v878 = 0;
          }

          v434 = *(v932 + 40);
          v1088[23] = *(v932 + 24);
          v1088[24] = v434;
          v1088[25] = *(v932 + 56);
          *&v934 = BigString.startIndex.getter();
          *&v930 = v435;
          v927 = v436;
          *&v923 = v437;
          v438 = *(v405 + 72);
          v915 = *(v405 + 96);
          if (v438)
          {
            v914 = *(v438 + 18);
            v439 = *v889;
            swift_unknownObjectRetain();
            v440 = v926;
            v439(v903, v926);
            v877 = v439;
            v439(v887, v440);
            swift_unknownObjectRelease();
          }

          else
          {
            v448 = *v889;
            v449 = v926;
            (*v889)(v903, v926);
            v877 = v448;
            v448(v887, v449);
            v914 = 0;
          }

          v450 = *(v405 + 40);
          v1088[20] = *(v405 + 24);
          v1088[21] = v450;
          v1088[22] = *(v405 + 56);
          v451 = BigString.startIndex.getter();
          v453 = v452;
          v455 = v454;
          v457 = v456;
          v458 = 0;
          v459 = 0;
          v460 = 0;
          v461 = 0;
          v462 = 0;
          v463 = -1;
          v464 = v934;
          v465 = v934;
          v466 = v930;
          v467 = v930;
          v468 = v927;
          v469 = v927;
          v470 = v923;
          v471 = v923;
          v472 = v451;
          v473 = v453;
          v474 = v455;
          v475 = v457;
          v476 = -1;
        }

        else
        {
          dispatch thunk of Collection.endIndex.getter();
          lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
          dispatch thunk of BidirectionalCollection.index(before:)();
          v795 = dispatch thunk of Collection.subscript.read();
          v797 = v796[4];
          v798 = v796[5];
          v799 = v796[6];
          v868 = v796[7];
          v869 = v799;
          v795(v966, 0);
          v913(v399, v397);
          v867 = v403;
          v800 = v403;
          v405 = v932;
          AttributedString.Guts.findRun(at:)(v800, v870, v966);
          v878 = *(&v966[0] + 1);
          v908 = *&v966[0];
          v864 = *(&v966[1] + 1);
          v865 = *&v966[1];
          *&v934 = *(&v966[2] + 1);
          v927 = *(&v966[3] + 1);
          *&v930 = *&v966[3];
          *&v923 = *&v966[4];
          v801 = *(v405 + 40);
          v1088[26] = *(v405 + 24);
          v1088[27] = v801;
          v1088[28] = *(v405 + 56);
          v802 = BigString.endIndex.getter();
          v866 = v798;
          if ((v802 ^ v797) > 0x3FF)
          {
            v862 = v797;
            AttributedString.Guts.findRun(at:)(v797, v868, v966);
            v914 = *(&v966[0] + 1);
            v915 = *&v966[0];
            v863 = *(&v966[1] + 1);
            v861 = *&v966[1];
            v451 = *(&v966[2] + 1);
            v455 = *(&v966[3] + 1);
            v453 = *&v966[3];
            v842 = v912;
            v457 = *&v966[4];
            RangeSet.ranges.getter();
            v860 = RangeSet.Ranges.count.getter();
            v843 = v842;
            v394 = v888;
            v913(v843, v397);
            v844 = *v889;
            v845 = v926;
            (*v889)(v903, v926);
            v846 = v845;
            v476 = v860;
            v877 = v844;
            v844(v887, v846);
            v472 = v862;
            v462 = v861;
            v461 = v863;
            v458 = v864;
            v463 = 0;
            v460 = v876;
            v473 = v866;
            v465 = v867;
            v469 = v874;
            v467 = v875;
            v474 = v869;
            v471 = v870;
            v464 = v934;
            v466 = v930;
            v468 = v927;
            v470 = v923;
            v475 = v868;
            v459 = v865;
          }

          else
          {
            v803 = v797;
            v804 = *(v405 + 72);
            if (v804)
            {
              v805 = *(v405 + 80);
            }

            else
            {
              v805 = 0;
            }

            v863 = v805;
            v806 = *(v405 + 96);
            v807 = swift_unknownObjectRetain();
            v915 = v806;
            v914 = specialized Rope._endPath.getter(v807);
            if (v804)
            {
              swift_unknownObjectRelease();
            }

            v808 = v912;
            v809 = v926;
            RangeSet.ranges.getter();
            v810 = v933;
            v476 = RangeSet.Ranges.count.getter();
            v913(v808, v810);
            v811 = *v889;
            (*v889)(v903, v809);
            v877 = v811;
            v811(v887, v809);
            v463 = 0;
            v462 = 0;
            v472 = v803;
            v451 = v803;
            v473 = v866;
            v465 = v867;
            v453 = v866;
            v475 = v868;
            v474 = v869;
            v455 = v869;
            v457 = v868;
            v405 = v932;
            v460 = v876;
            v469 = v874;
            v467 = v875;
            v471 = v870;
            v464 = v934;
            v466 = v930;
            v468 = v927;
            v470 = v923;
            v458 = v864;
            v459 = v865;
            v461 = v863;
          }
        }

        *(v394 + 8) = v458;
        *(v394 + 16) = v908;
        *(v394 + 24) = v878;
        *(v394 + 32) = v459;
        *(v394 + 40) = v464;
        *(v394 + 48) = v466;
        *(v394 + 56) = v468;
        *(v394 + 64) = v470;
        *(v394 + 72) = v465;
        *(v394 + 80) = v467;
        *(v394 + 88) = v469;
        *(v394 + 96) = v471;
        *(v394 + 104) = v463;
        *(v394 + 112) = 0;
        *(v394 + 113) = v460;
        v477 = v914;
        v478 = v915;
        *(v394 + 120) = v461;
        *(v394 + 128) = v478;
        *(v394 + 136) = v477;
        *(v394 + 144) = v462;
        *(v394 + 152) = v451;
        *(v394 + 160) = v453;
        *(v394 + 168) = v455;
        *(v394 + 176) = v457;
        *(v394 + 184) = v472;
        *(v394 + 192) = v473;
        *(v394 + 200) = v474;
        *(v394 + 208) = v475;
        *(v394 + 216) = v476;
        *(v394 + 224) = 0;
        *(v394 + 225) = v460;
        outlined init with take of String.LocalizationValue.FormatArgument.CodableStorage(v394, v910, type metadata accessor for AttributedString.Runs);
        v479 = *(v405 + 40);
        v1088[17] = *(v405 + 24);
        v1088[18] = v479;
        v1088[19] = *(v405 + 56);
        v480 = BigString.startIndex.getter();
        v482 = v481;
        v484 = v483;
        v486 = v485;
        v487 = BigString.endIndex.getter();
        if (v487 >> 10 < v480 >> 10)
        {
          goto LABEL_327;
        }

        *&v966[0] = v480;
        *(&v966[0] + 1) = v482;
        *&v966[1] = v484;
        *(&v966[1] + 1) = v486;
        *&v966[2] = v487;
        *(&v966[2] + 1) = v488;
        *&v966[3] = v489;
        *(&v966[3] + 1) = v490;
        outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup?(v405, v924, v911);
        RangeSet.init(_:)();
        *v890 = v405;
        RangeSet.init()();
        v491 = v912;
        RangeSet.ranges.getter();
        v492 = v905;
        v493 = v933;
        v893(v905, v491, v933);
        v494 = *(v897 + 36);
        dispatch thunk of Collection.startIndex.getter();
        v913(v491, v493);
        dispatch thunk of Collection.endIndex.getter();
        v495 = *(v492 + v494);
        *&v923 = v494;
        if (v495 != *&v966[0])
        {
          do
          {
            v510 = dispatch thunk of Collection.subscript.read();
            v512 = v511[5];
            *&v934 = v511[4];
            *&v930 = v512;
            v927 = v511[6];
            v510(v966, 0);
            dispatch thunk of Collection.formIndex(after:)();
            v513 = v932;
            v514 = *(v932 + 40);
            v1088[14] = *(v932 + 24);
            v1088[15] = v514;
            v1088[16] = *(v932 + 56);
            swift_unknownObjectRetain();
            v515 = BigString.UnicodeScalarView.index(roundingDown:)();
            v517 = v516;
            v519 = v518;
            v521 = v520;
            swift_unknownObjectRelease();
            v522 = *(v513 + 40);
            v1088[11] = *(v513 + 24);
            v1088[12] = v522;
            v1088[13] = *(v513 + 56);
            swift_unknownObjectRetain();
            v523 = BigString.UnicodeScalarView.index(roundingDown:)();
            v525 = v524;
            v527 = v526;
            v529 = v528;
            swift_unknownObjectRelease();
            *&v966[0] = v515;
            *(&v966[0] + 1) = v517;
            *&v966[1] = v519;
            *(&v966[1] + 1) = v521;
            v493 = v933;
            *&v966[2] = v523;
            *(&v966[2] + 1) = v525;
            *&v966[3] = v527;
            *(&v966[3] + 1) = v529;
            if ((v523 ^ v515) >= 0x400)
            {
              v530 = RangeSet._ranges.modify();
              RangeSet.Ranges._insert(contentsOf:)();
              v530(&v960, 0);
            }

            v492 = v905;
            dispatch thunk of Collection.endIndex.getter();
          }

          while (*(v492 + v923) != *&v966[0]);
        }

        outlined destroy of TermOfAddress?(v492, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMR);
        v496 = v493;
        v497 = v898;
        v498 = v890;
        v891(v890 + *(v898 + 24), v901, v926);
        v499 = v912;
        RangeSet.ranges.getter();
        v500 = RangeSet.Ranges.count.getter();
        v913(v499, v493);
        v501 = *(v497 + 28);
        LODWORD(v878) = v500 > 1;
        *(v498 + v501) = v878;
        v502 = v880;
        RangeSet.ranges.getter();
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (v960 == *&v966[0] || (v503 = dispatch thunk of Collection.subscript.read(), v505 = *v504, v875 = v504[1], v876 = v505, v506 = v504[3], v874 = v504[2], v870 = v506, v503(v966, 0), v913(v502, v493), v502 = v871, RangeSet.ranges.getter(), (dispatch thunk of Collection.isEmpty.getter() & 1) != 0))
        {
          v913(v502, v493);
          v507 = v932;
          v508 = *(v932 + 72);
          *&v934 = *(v932 + 96);
          v509 = v926;
          if (v508)
          {
            *&v930 = *(v508 + 18);
          }

          else
          {
            *&v930 = 0;
          }

          v706 = *(v932 + 40);
          v1088[5] = *(v932 + 24);
          v1088[6] = v706;
          v1088[7] = *(v932 + 56);
          v707 = BigString.startIndex.getter();
          v927 = v708;
          *&v923 = v709;
          v710 = *(v507 + 72);
          v914 = *(v507 + 96);
          v915 = v711;
          if (v710)
          {
            v908 = *(v710 + 18);
            swift_unknownObjectRetain();
            v712 = v877;
            v877(v901, v509);
            v712(v885, v509);
            swift_unknownObjectRelease();
          }

          else
          {
            v713 = v877;
            v877(v901, v509);
            v713(v885, v509);
            v908 = 0;
          }

          v714 = *(v507 + 40);
          v1088[2] = *(v507 + 24);
          v1088[3] = v714;
          v1088[4] = *(v507 + 56);
          v715 = BigString.startIndex.getter();
          v717 = v716;
          v719 = v718;
          v721 = v720;
          v722 = 0;
          v723 = 0;
          v724 = 0;
          v725 = 0;
          v726 = 0;
          v727 = -1;
          v728 = v707;
          v729 = v927;
          v730 = v927;
          v731 = v923;
          v732 = v923;
          v733 = v915;
          v734 = v915;
          v735 = v715;
          v736 = v717;
          v737 = v719;
          v738 = v721;
          v739 = -1;
        }

        else
        {
          dispatch thunk of Collection.endIndex.getter();
          lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
          dispatch thunk of BidirectionalCollection.index(before:)();
          v828 = dispatch thunk of Collection.subscript.read();
          v831 = v829[4];
          v830 = v829[5];
          v832 = v829[7];
          v868 = v829[6];
          v869 = v830;
          v867 = v832;
          v828(v966, 0);
          v913(v502, v496);
          v833 = v932;
          AttributedString.Guts.findRun(at:)(v876, v870, v966);
          *&v930 = *(&v966[0] + 1);
          *&v934 = *&v966[0];
          v864 = *(&v966[1] + 1);
          v865 = *&v966[1];
          v866 = *(&v966[2] + 1);
          *&v923 = *(&v966[3] + 1);
          v927 = *&v966[3];
          v915 = *&v966[4];
          v834 = *(v833 + 40);
          v1088[8] = *(v833 + 24);
          v1088[9] = v834;
          v1088[10] = *(v833 + 56);
          if ((BigString.endIndex.getter() ^ v831) > 0x3FF)
          {
            v862 = v831;
            AttributedString.Guts.findRun(at:)(v831, v867, v966);
            v908 = *(&v966[0] + 1);
            v914 = *&v966[0];
            v863 = *(&v966[1] + 1);
            v726 = *&v966[1];
            v715 = *(&v966[2] + 1);
            v719 = *(&v966[3] + 1);
            v717 = *&v966[3];
            v849 = v499;
            v721 = *&v966[4];
            v850 = v926;
            RangeSet.ranges.getter();
            v739 = RangeSet.Ranges.count.getter();
            v851 = v496;
            v852 = v850;
            v913(v849, v851);
            v853 = v850;
            v854 = v877;
            v877(v901, v853);
            v854(v885, v852);
            v725 = v863;
            v735 = v862;
            v727 = 0;
            v724 = v878;
            v730 = v875;
            v728 = v876;
            v732 = v874;
            v736 = v869;
            v734 = v870;
            v707 = v866;
            v738 = v867;
            v729 = v927;
            v731 = v923;
            v733 = v915;
            v737 = v868;
            v722 = v864;
            v723 = v865;
          }

          else
          {
            v835 = *(v833 + 72);
            if (v835)
            {
              v836 = *(v833 + 80);
            }

            else
            {
              v836 = 0;
            }

            v863 = v836;
            v837 = *(v833 + 96);
            v838 = swift_unknownObjectRetain();
            v914 = v837;
            v908 = specialized Rope._endPath.getter(v838);
            if (v835)
            {
              swift_unknownObjectRelease();
            }

            v839 = v926;
            RangeSet.ranges.getter();
            v840 = v933;
            v739 = RangeSet.Ranges.count.getter();
            v913(v499, v840);
            v841 = v877;
            v877(v901, v839);
            v841(v885, v839);
            v727 = 0;
            v726 = 0;
            v735 = v831;
            v715 = v831;
            v737 = v868;
            v736 = v869;
            v717 = v869;
            v719 = v868;
            v707 = v866;
            v738 = v867;
            v721 = v867;
            v724 = v878;
            v730 = v875;
            v728 = v876;
            v732 = v874;
            v734 = v870;
            v729 = v927;
            v731 = v923;
            v733 = v915;
            v722 = v864;
            v723 = v865;
            v725 = v863;
          }
        }

        v740 = v890;
        v890[1] = v722;
        *(v740 + 16) = v934;
        *(v740 + 24) = v930;
        *(v740 + 32) = v723;
        *(v740 + 40) = v707;
        *(v740 + 48) = v729;
        *(v740 + 56) = v731;
        *(v740 + 64) = v733;
        *(v740 + 72) = v728;
        *(v740 + 80) = v730;
        *(v740 + 88) = v732;
        *(v740 + 96) = v734;
        *(v740 + 104) = v727;
        *(v740 + 112) = 0;
        *(v740 + 113) = v724;
        v741 = v914;
        *(v740 + 120) = v725;
        *(v740 + 128) = v741;
        *(v740 + 136) = v908;
        *(v740 + 144) = v726;
        *(v740 + 152) = v715;
        *(v740 + 160) = v717;
        *(v740 + 168) = v719;
        *(v740 + 176) = v721;
        *(v740 + 184) = v735;
        *(v740 + 192) = v736;
        *(v740 + 200) = v737;
        *(v740 + 208) = v738;
        *(v740 + 216) = v739;
        *(v740 + 224) = 0;
        *(v740 + 225) = v724;
        v742 = v879;
        outlined init with take of String.LocalizationValue.FormatArgument.CodableStorage(v740, v879, type metadata accessor for AttributedString.Runs);
        v1073 = *(v742 + 56);
        v1074 = *(v742 + 72);
        v1075[0] = *(v742 + 88);
        *(v1075 + 10) = *(v742 + 98);
        v743 = *(v742 + 24);
        v1070 = *(v742 + 8);
        v1071 = v743;
        v1072 = *(v742 + 40);
        outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(v742, type metadata accessor for AttributedString.Runs);
        v744 = *(v910 + 23);
        v1086 = *(v910 + 21);
        v1087 = v744;
        v1088[0] = *(v910 + 25);
        *(v1088 + 10) = *(v910 + 210);
        v745 = *(v910 + 15);
        v1082 = *(v910 + 13);
        v1083 = v745;
        v746 = *(v910 + 19);
        v1084 = *(v910 + 17);
        v1085 = v746;
        v747 = *(v910 + 7);
        v1078 = *(v910 + 5);
        v1079 = v747;
        v748 = *(v910 + 11);
        v1080 = *(v910 + 9);
        v1081 = v748;
        v749 = *(v910 + 3);
        v1076 = *(v910 + 1);
        v1077 = v749;
        if (!specialized Range.contains(_:)(&v1070))
        {
          goto LABEL_328;
        }

        v966[4] = v1074;
        v967[0] = v1075[0];
        *(v967 + 10) = *(v1075 + 10);
        v966[0] = v1070;
        v966[1] = v1071;
        v966[2] = v1072;
        v966[3] = v1073;
        AttributedString.Runs._resolve(_:)(v966, &v960);
        *&v930 = *(&v960 + 1);
        *&v934 = v960;
        v927 = v961;
        v750 = *(&v962 + 1);
        *&v923 = v963;
        v914 = v964;
        v915 = *(&v963 + 1);
        if (BYTE8(v1075[1]))
        {
          v751 = *(&v1075[0] + 1);
          v876 = *(&v962 + 1);
          if (*(&v1075[0] + 1) != 2)
          {
            v750 = v1074;
          }

          v752 = v912;
          RangeSet.ranges.getter();
          v753 = v933;
          v754 = RangeSet.Ranges.count.getter();
          v913(v752, v753);
          if (v754 < 1)
          {
            goto LABEL_309;
          }

          v755 = 0;
          v756 = v750 >> 10;
          while (!__OFADD__(v755, v754))
          {
            v757 = (v755 + v754) / 2;
            v758 = v912;
            RangeSet.ranges.getter();
            RangeSet.Ranges.subscript.getter();
            v913(v758, v753);
            v759 = *&v966[0];
            if (v756 >= *&v966[0] >> 10)
            {
              v760 = *&v966[2];
              if (v756 < *&v966[2] >> 10)
              {
                v908 = *(&v966[0] + 1);
                v877 = *(&v966[1] + 1);
                v878 = *&v966[1];
                v750 = v876;
                goto LABEL_234;
              }

              v755 = v757 + 1;
              v757 = v754;
            }

            v754 = v757;
            if (v755 >= v757)
            {
              goto LABEL_309;
            }
          }

LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
          goto LABEL_324;
        }

        v761 = v912;
        RangeSet.ranges.getter();
        v762 = v933;
        RangeSet.Ranges.subscript.getter();
        v913(v761, v762);
        v759 = *&v966[0];
        v760 = *&v966[2];
        v751 = *(&v1075[0] + 1);
        v908 = *(&v966[0] + 1);
        v877 = *(&v966[1] + 1);
        v878 = *&v966[1];
        if (*(&v1075[0] + 1) != 2 && (v1074 >> 10 < *&v966[0] >> 10 || v1074 >> 10 >= *&v966[2] >> 10))
        {
          goto LABEL_332;
        }

LABEL_234:
        if (*(&v1073 + 1) == 2)
        {
          v763 = v750;
        }

        else
        {
          v763 = v1072;
        }

        if (*(&v1073 + 1) == 2)
        {
          v764 = v923;
        }

        else
        {
          v764 = *(&v1072 + 1);
        }

        v876 = v764;
        if (*(&v1073 + 1) == 2)
        {
          v765 = v915;
        }

        else
        {
          v765 = v1073;
        }

        if (*(&v1073 + 1) == 2)
        {
          v766 = v914;
        }

        else
        {
          v766 = *(&v1073 + 1);
        }

        v874 = v766;
        v875 = v765;
        if (v751 == 2)
        {
          v767 = v750;
        }

        else
        {
          v767 = v1074;
        }

        if (v751 == 2)
        {
          v768 = v923;
        }

        else
        {
          v768 = *(&v1074 + 1);
        }

        *&v923 = v768;
        if (v751 == 2)
        {
          v769 = v915;
        }

        else
        {
          v769 = *&v1075[0];
        }

        if (v751 == 2)
        {
          v770 = v914;
        }

        else
        {
          v770 = v751;
        }

        v914 = v770;
        v915 = v769;
        v771 = *v910;
        v772 = *(*v910 + 72);
        v773 = *(*v910 + 80);
        v774 = *(*v910 + 88);
        v775 = *(*v910 + 96);
        swift_unknownObjectRetain();
        v776 = specialized Rope.subscript.getter(v934, v930, v927, v772, v773, v774, v775);
        v778 = v777;
        v780 = v779;
        swift_unknownObjectRelease();
        if (v759 >> 10 >= v763 >> 10)
        {
          v781 = v759;
        }

        else
        {
          v781 = v763;
        }

        if (v759 >> 10 >= v763 >> 10)
        {
          v782 = v908;
        }

        else
        {
          v782 = v876;
        }

        if (v759 >> 10 >= v763 >> 10)
        {
          v783 = v878;
        }

        else
        {
          v783 = v875;
        }

        if (v759 >> 10 >= v763 >> 10)
        {
          v784 = v877;
        }

        else
        {
          v784 = v874;
        }

        v785 = v776 + (v763 >> 11);
        if (__OFADD__(v776, v763 >> 11))
        {
          goto LABEL_329;
        }

        if ((v760 >> 11) < v785)
        {
          v785 = v760 >> 11;
        }

        v1069[21] = *(v771 + 24);
        v1069[22] = *(v771 + 40);
        v1069[23] = *(v771 + 56);
        if (__OFSUB__(v785, v767 >> 11))
        {
          goto LABEL_330;
        }

        v908 = v781;
        v927 = v782;
        *&v930 = v783;
        *&v934 = v784;
        swift_unknownObjectRetain();
        v786 = BigString.UTF8View.index(_:offsetBy:)();
        v788 = v787;
        v790 = v789;
        v792 = v791;
        swift_unknownObjectRelease();

        outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(v910, type metadata accessor for AttributedString.Runs);
        *&v966[0] = v778;
        *(&v966[0] + 1) = v780;
        *&v966[1] = v908;
        *(&v966[1] + 1) = v927;
        *&v966[2] = v930;
        *(&v966[2] + 1) = v934;
        *&v966[3] = v786;
        *(&v966[3] + 1) = v788;
        *&v966[4] = v790;
        *(&v966[4] + 1) = v792;
        *&v967[0] = v771;

        outlined destroy of AttributedString.Runs.Run(v966);
        v954.n128_u64[0] = v778;
        v954.n128_u64[1] = v780;
        v960 = v928;
        *&v961 = v929;
        *(&v961 + 1) = v931;
        v201 = v919;
        *&v962 = v920;
        *(&v962 + 1) = v917;
        v963 = *v921;
        *&v964 = v922;
        *(&v964 + 1) = v916;
        v793 = v924;
        closure #1 in String.LocalizationValue.restoreAttributedStringArguments(_:in:)(&v954, v919, &v960, v924);
        v794 = v932;
        LOBYTE(v786) = v911;
        outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v932, v793, v911);
        outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v794, v793, v786);
      }

      else
      {
        outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v223, v263, v221);
        outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v223, v263, v221);
      }

LABEL_275:
      v210 = v899;
    }
  }

LABEL_333:
  __break(1u);
}