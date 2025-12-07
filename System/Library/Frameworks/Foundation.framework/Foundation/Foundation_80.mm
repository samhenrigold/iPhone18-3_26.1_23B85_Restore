uint64_t closure #1 in _LocaleICU.calendarIdentifierDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v6 = a2;
  v114 = *MEMORY[0x1E69E9840];
  v96 = a1;
  v8 = *(a1 + 480);
  if (*(v8 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      *a4 = *(*(v8 + 56) + 16 * v9);
    }
  }

  v101 = v4;
  v12 = 0xEF3D7261646E656CLL;
  v13 = *(a3 + 24);
  v100 = v6;
  v107 = v6;
  v14 = Calendar.Identifier.cfCalendarIdentifier.getter();
  *&v111[0] = 0x61634053555F6E65;
  *(&v111[0] + 1) = 0xEF3D7261646E656CLL;
  MEMORY[0x1865CB0E0](v14);

  v106 = 0;
  String.utf8CString.getter();

  v15 = String.utf8CString.getter();
  DisplayKeywordValue = uloc_getDisplayKeywordValue();

  if (DisplayKeywordValue - 1 <= 0x100)
  {
    v17 = specialized String.init(_utf16:)(v113, DisplayKeywordValue);
    if (v18)
    {
      v12 = v17;
      v15 = v18;

      goto LABEL_99;
    }
  }

  v19 = *(a3 + 136);
  v20 = *(a3 + 168);
  v111[6] = *(a3 + 152);
  *v112 = v20;
  *&v112[12] = *(a3 + 180);
  v21 = *(a3 + 72);
  v22 = *(a3 + 104);
  v111[2] = *(a3 + 88);
  v111[3] = v22;
  v111[4] = *(a3 + 120);
  v111[5] = v19;
  v111[0] = *(a3 + 56);
  v111[1] = v21;
  v95 = a4;
  if (_s10Foundation17LocalePreferencesVSgWOg(v111) != 1)
  {
    v23 = *(&v111[0] + 1);
    if (*(&v111[0] + 1))
    {

      v25 = *(v23 + 2);
      if (!v25)
      {
LABEL_97:

        v12 = 0;
        v15 = 0;
LABEL_98:
        a4 = v95;
LABEL_99:
        v68 = v96;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v111[0] = *(v68 + 480);
        v13 = *&v111[0];
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v100);
        v71 = *(v13 + 16);
        v72 = (v70 & 1) == 0;
        v73 = __OFADD__(v71, v72);
        v74 = v71 + v72;
        if (v73)
        {
LABEL_110:
          __break(1u);
        }

        else
        {
          LOBYTE(a3) = v70;
          if (*(v13 + 24) < v74)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v74, isUniquelyReferenced_nonNull_native);
            v75 = *&v111[0];
            v24 = specialized __RawDictionaryStorage.find<A>(_:)(v100);
            if ((a3 & 1) != (v76 & 1))
            {
              goto LABEL_134;
            }

            if (a3)
            {
              goto LABEL_103;
            }

LABEL_106:
            result = specialized _NativeDictionary._insert(at:key:value:)(v24, v100, v12, v15, v75);
            goto LABEL_107;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v75 = v13;
            if ((v70 & 1) == 0)
            {
              goto LABEL_106;
            }

LABEL_103:
            v77 = (*(v75 + 56) + 16 * v24);
            *v77 = v12;
            v77[1] = v15;

LABEL_107:
            *(v96 + 480) = v75;
            *a4 = v12;
            *(a4 + 8) = v15;
            return result;
          }
        }

        v99 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSSSgGMd, &_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSSSgGMR);
        v78 = static _DictionaryStorage.copy(original:)();
        v75 = v78;
        if (*(v13 + 16))
        {
          v95 = a4;
          v79 = (v78 + 64);
          v80 = v13 + 64;
          v81 = ((1 << *(v75 + 32)) + 63) >> 6;
          if (v75 != v13 || v79 >= v80 + 8 * v81)
          {
            memmove(v79, (v13 + 64), 8 * v81);
          }

          v82 = 0;
          *(v75 + 16) = *(v13 + 16);
          v83 = 1 << *(v13 + 32);
          v84 = *(v13 + 64);
          v85 = -1;
          if (v83 < 64)
          {
            v85 = ~(-1 << v83);
          }

          v86 = v85 & v84;
          v87 = (v83 + 63) >> 6;
          if ((v85 & v84) != 0)
          {
            do
            {
              v88 = __clz(__rbit64(v86));
              v86 &= v86 - 1;
LABEL_124:
              v91 = v88 | (v82 << 6);
              v92 = *(*(v13 + 56) + 16 * v91);
              *(*(v75 + 48) + v91) = *(*(v13 + 48) + v91);
              *(*(v75 + 56) + 16 * v91) = v92;
            }

            while (v86);
          }

          v89 = v82;
          while (1)
          {
            v82 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              __break(1u);
            }

            if (v82 >= v87)
            {
              break;
            }

            v90 = *(v80 + 8 * v82);
            ++v89;
            if (v90)
            {
              v88 = __clz(__rbit64(v90));
              v86 = (v90 - 1) & v90;
              goto LABEL_124;
            }
          }

          a4 = v95;
        }

        v24 = v99;
        if ((a3 & 1) == 0)
        {
          goto LABEL_106;
        }

        goto LABEL_103;
      }

      goto LABEL_51;
    }
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v15 = String._bridgeToObjectiveCImpl()();
  v26 = CFPreferencesCopyAppValue(v15, *MEMORY[0x1E695E8A8]);
  swift_unknownObjectRelease();
  if (v26 && (v109 = v26, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), (swift_dynamicCast() & 1) != 0))
  {
    v24 = v102;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v99 = *(v24 + 16);
  if (!v99)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_50:

    v25 = *(v23 + 2);
    if (!v25)
    {
      goto LABEL_97;
    }

LABEL_51:
    a4 = v25;
    v12 = 0;
    v99 = *MEMORY[0x1E695E4A8];
    v44 = v23 + 40;
    while (1)
    {
      if (v12 >= *(v23 + 2))
      {
        goto LABEL_109;
      }

      v45 = String._bridgeToObjectiveCImpl()();
      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v99, v45);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        goto LABEL_68;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v48 = CanonicalLanguageIdentifierFromString;
      v49 = v48;
      if (!isTaggedPointer)
      {
        goto LABEL_60;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v48);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v51 = v101;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v15 = v52;
            v101 = v51;

            goto LABEL_91;
          }

LABEL_60:
          LOBYTE(v102) = 0;
          v109 = 0;
          LOBYTE(v104) = 0;
          v105 = 0;
          IsCF = __CFStringIsCF();
          if (!IsCF)
          {
            v54 = v49;
            String.init(_nativeStorage:)();
            if (v55)
            {
              v15 = v55;

              goto LABEL_91;
            }

            v109 = [(__CFString *)v54 length];
            if (!v109)
            {

              goto LABEL_68;
            }

LABEL_88:
            String.init(_cocoaString:)();
LABEL_89:
            v15 = v58;
            goto LABEL_90;
          }

          if (!v109)
          {

LABEL_68:
            v15 = 0xE000000000000000;
            goto LABEL_91;
          }

          if (v105 == 1)
          {
            if (v102)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_89;
          }

          if ((v104 & 1) == 0)
          {
            goto LABEL_88;
          }

          if (v102 != 1)
          {
            IsCF = [(__CFString *)v49 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v59 = v101;
          v60 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v15 = v61;
          v101 = v59;
          v62 = (v61 >> 56) & 0xF;
          if ((v61 & 0x2000000000000000) == 0)
          {
            v62 = v60 & 0xFFFFFFFFFFFFLL;
          }

          if (!v62)
          {

            goto LABEL_88;
          }

          goto LABEL_74;
        }

        v56 = [(__CFString *)v49 UTF8String];
        if (!v56)
        {
          goto LABEL_132;
        }

        String.init(utf8String:)(v56);
        if (!v57)
        {
          goto LABEL_131;
        }
      }

      else
      {
        v104 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v57)
        {
          [(__CFString *)v49 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v15 = v103;
          goto LABEL_90;
        }
      }

      v15 = v57;
LABEL_74:

LABEL_90:
LABEL_91:
      LOBYTE(v104) = v100;
      v63 = Calendar.Identifier.cfCalendarIdentifier.getter();
      v109 = 0x61634053555F6E65;
      v110 = 0xEF3D7261646E656CLL;
      MEMORY[0x1865CB0E0](v63);

      LODWORD(v102) = 0;
      v13 = String.utf8CString.getter();

      LOBYTE(a3) = String.utf8CString.getter();

      v64 = uloc_getDisplayKeywordValue();

      if (v102 <= 0 && v102 != -127 && (v64 - 1) < 0x101)
      {
        a3 = &v94;
        MEMORY[0x1EEE9AC00](v24);
        v66 = v101;
        v24 = closure #1 in String.init(_utf16:)(&v94 - v65, v108, v67, &v109);
        v101 = v66;
        if (v66)
        {
          goto LABEL_133;
        }

        v15 = v110;
        if (v110)
        {
          v12 = v109;

          goto LABEL_98;
        }
      }

      ++v12;
      v44 += 16;
      if (a4 == v12)
      {
        goto LABEL_97;
      }
    }
  }

  v27 = 0;
  v98 = *MEMORY[0x1E695E4A8];
  a4 = v24 + 40;
  v23 = MEMORY[0x1E69E7CC0];
  v97 = v24;
  while (1)
  {
    if (v27 >= *(v24 + 16))
    {
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v28 = String._bridgeToObjectiveCImpl()();

    v29 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v98, v28);
    swift_unknownObjectRelease();
    if (!v29)
    {

      goto LABEL_29;
    }

    v30 = _objc_isTaggedPointer(v29);
    v31 = v29;
    v32 = v31;
    if ((v30 & 1) == 0)
    {
      goto LABEL_26;
    }

    v33 = _objc_getTaggedPointerTag(v31);
    if (!v33)
    {
      v104 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v39 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v40)
      {
        [(__CFString *)v32 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        a3 = v102;
        v13 = v103;
LABEL_42:

        goto LABEL_43;
      }

LABEL_37:
      a3 = v39;
      v13 = v40;

      goto LABEL_43;
    }

    if (v33 == 22)
    {
      break;
    }

    if (v33 != 2)
    {
LABEL_26:
      LOBYTE(v102) = 0;
      v109 = 0;
      LOBYTE(v104) = 0;
      v105 = 0;
      if (__CFStringIsCF())
      {
        a3 = v109;

LABEL_30:
        v13 = 0xE000000000000000;
        goto LABEL_43;
      }

      v35 = v32;
      v36 = String.init(_nativeStorage:)();
      if (v37)
      {
        a3 = v36;
        v13 = v37;

        goto LABEL_43;
      }

      v109 = [(__CFString *)v35 length];
      if (v109)
      {
        a3 = String.init(_cocoaString:)();
        v13 = v41;
        goto LABEL_42;
      }

LABEL_29:
      a3 = 0;
      goto LABEL_30;
    }

    MEMORY[0x1EEE9AC00](v33);
    a3 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v13 = v34;

LABEL_43:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
    }

    v12 = *(v23 + 2);
    v42 = *(v23 + 3);
    v15 = (v12 + 1);
    if (v12 >= v42 >> 1)
    {
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v12 + 1, 1, v23);
    }

    v27 = (v27 + 1);
    *(v23 + 2) = v15;
    v43 = &v23[16 * v12];
    *(v43 + 4) = a3;
    *(v43 + 5) = v13;
    a4 += 16;
    v24 = v97;
    if (v99 == v27)
    {
      goto LABEL_50;
    }
  }

  v38 = [(__CFString *)v32 UTF8String];
  if (!v38)
  {
    goto LABEL_130;
  }

  v39 = String.init(utf8String:)(v38);
  if (v40)
  {
    goto LABEL_37;
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  v93 = v101;
  swift_willThrow();

  __break(1u);
LABEL_134:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void closure #1 in _LocaleICU.timeZone.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 384);
  v6 = *(a1 + 392);
  if (v5 != 1)
  {
    *a3 = v5;
    a3[1] = v6;
    goto LABEL_10;
  }

  v8 = specialized static Locale.keywordValue(identifier:key:)(*(a2 + 16), *(a2 + 24), 0x656E6F7A656D6974, 0xE800000000000000);
  if (!v9)
  {
LABEL_9:
    outlined consume of TimeZone??(*(a1 + 384));
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    *a3 = 0;
    a3[1] = 0;
    goto LABEL_10;
  }

  if (one-time initialization token for cache != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  v10 = static TimeZoneCache.cache;
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v10 + 30);
  partial apply for closure #1 in TimeZoneCache.fixed(_:)(v15);
  if (!v3)
  {
    os_unfair_lock_unlock(v10 + 30);
    v11 = v15[0];
    v12 = v15[1];

    if (v11)
    {
      v13 = *(a1 + 384);
      swift_unknownObjectRetain();
      outlined consume of TimeZone??(v13);
      *(a1 + 384) = v11;
      *(a1 + 392) = v12;
      *a3 = v11;
      a3[1] = v12;
LABEL_10:
      outlined copy of TimeZone??(v5);
      return;
    }

    goto LABEL_9;
  }

  os_unfair_lock_unlock(v10 + 30);
  __break(1u);
}

__CFString *closure #1 in _LocaleICU.collationIdentifierDisplayName(for:)@<X0>(uint64_t a1@<X0>, __CFString *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v100 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 488);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v12)
    {
      *a5 = *(*(v10 + 56) + 16 * v11);
    }
  }

  v95 = v7;
  v94 = v6;
  v14 = specialized _LocaleICU.displayKeyword(for:keyword:value:)(*(a4 + 16), *(a4 + 24), 0x6F6974616C6C6F63, 0xE90000000000006ELL, v7, v6);
  if (v15)
  {
    v6 = v14;
    v16 = v15;

    goto LABEL_77;
  }

  v87 = v8;
  v17 = *(a4 + 152);
  v98[5] = *(a4 + 136);
  v98[6] = v17;
  v99[0] = *(a4 + 168);
  *(v99 + 12) = *(a4 + 180);
  v18 = *(a4 + 72);
  v19 = *(a4 + 104);
  v98[2] = *(a4 + 88);
  v98[3] = v19;
  v98[4] = *(a4 + 120);
  v98[0] = *(a4 + 56);
  v98[1] = v18;
  v89 = a5;
  if (_s10Foundation17LocalePreferencesVSgWOg(v98) != 1)
  {
    v8 = *(&v98[0] + 1);
    if (*(&v98[0] + 1))
    {

LABEL_16:
      v16 = v95;
      a5 = *(v8 + 16);
      if (!a5)
      {
LABEL_43:

        v6 = 0;
        v16 = 0;
LABEL_76:
        a5 = v89;
        v8 = v87;
LABEL_77:

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v98[0] = *(v8 + 488);
        v7 = *&v98[0];
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
        data = v7->data;
        v61 = (v59 & 1) == 0;
        v62 = __OFADD__(data, v61);
        v63 = &data[v61];
        if (v62)
        {
LABEL_87:
          __break(1u);
        }

        else
        {
          LOBYTE(a4) = v59;
          if (v7->length < v63)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, isUniquelyReferenced_nonNull_native);
            v64 = *&v98[0];
            v20 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v94);
            if ((a4 & 1) == (v65 & 1))
            {
              goto LABEL_83;
            }

            v20 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v64 = v7;
LABEL_83:
            if (a4)
            {
LABEL_84:
              v66 = v20;

              v67 = (*(v64 + 56) + 16 * v66);
              *v67 = v6;
              v67[1] = v16;

LABEL_106:
              *(v8 + 488) = v64;
              *a5 = v6;
              a5[1] = v16;
              return result;
            }

LABEL_105:
            result = specialized _NativeDictionary._insert(at:key:value:)(v20, v95, v94, v6, v16, v64);
            goto LABEL_106;
          }
        }

        v93 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd, &_ss18_DictionaryStorageCyS2SSgGMR);
        v68 = static _DictionaryStorage.copy(original:)();
        v64 = v68;
        if (v7->data)
        {
          v88 = v8;
          v90 = a5;
          v69 = (v68 + 64);
          v70 = v7 + 2;
          v71 = ((1 << *(v64 + 32)) + 63) >> 6;
          if (v64 != v7 || v69 >= &v70->isa + 8 * v71)
          {
            memmove(v69, &v7[2], 8 * v71);
          }

          v72 = 0;
          *(v64 + 16) = v7->data;
          v73 = 1 << LOBYTE(v7[1].isa);
          isa = v7[2].isa;
          v75 = -1;
          if (v73 < 64)
          {
            v75 = ~(-1 << v73);
          }

          v76 = v75 & isa;
          v77 = (v73 + 63) >> 6;
          if ((v75 & isa) != 0)
          {
            do
            {
              v78 = __clz(__rbit64(v76));
              v76 &= v76 - 1;
LABEL_101:
              v81 = 16 * (v78 | (v72 << 6));
              v82 = &v7[1].data[v81];
              v83 = *v82;
              v84 = *(v82 + 1);
              v85 = (*(v64 + 48) + v81);
              v86 = *(v7[1].length + v81);
              *v85 = v83;
              v85[1] = v84;
              *(*(v64 + 56) + v81) = v86;
            }

            while (v76);
          }

          v79 = v72;
          while (1)
          {
            v72 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              __break(1u);
            }

            if (v72 >= v77)
            {
              break;
            }

            v80 = *(&v70->isa + v72);
            ++v79;
            if (v80)
            {
              v78 = __clz(__rbit64(v80));
              v76 = (v80 - 1) & v80;
              goto LABEL_101;
            }
          }

          a5 = v90;
          v8 = v88;
        }

        v20 = v93;
        if (a4)
        {
          goto LABEL_84;
        }

        goto LABEL_105;
      }

      v24 = 0;
      v25 = *MEMORY[0x1E695E4A8];
      v26 = v8 + 40;
      while (1)
      {
        if (v24 >= *(v8 + 16))
        {
          goto LABEL_86;
        }

        v27 = String._bridgeToObjectiveCImpl()();
        CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v25, v27);
        swift_unknownObjectRelease();
        if (!CanonicalLanguageIdentifierFromString)
        {
          goto LABEL_29;
        }

        isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
        v30 = CanonicalLanguageIdentifierFromString;
        v31 = v30;
        if (!isTaggedPointer)
        {
          goto LABEL_25;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v30);
        if (TaggedPointerTag)
        {
          break;
        }

        _CFIndirectTaggedPointerStringGetContents();
        v39 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v40)
        {
          a4 = v40;
          v7 = v39;
LABEL_38:

          goto LABEL_40;
        }

        [(__CFString *)v31 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v7 = v96;
        a4 = v97;
LABEL_40:

        v34 = v7;
LABEL_41:
        v6 = specialized _LocaleICU.displayKeyword(for:keyword:value:)(v34, a4, 0x6F6974616C6C6F63, 0xE90000000000006ELL, v16, v94);
        v16 = v42;

        if (v16)
        {

          goto LABEL_76;
        }

        v24 = (v24 + 1);
        v26 += 16;
        v16 = v95;
        if (a5 == v24)
        {
          goto LABEL_43;
        }
      }

      if (TaggedPointerTag == 22)
      {
        result = [(__CFString *)v31 UTF8String];
        if (!result)
        {
          goto LABEL_110;
        }

        result = String.init(utf8String:)(result);
        if (!v38)
        {
          goto LABEL_109;
        }

        v7 = result;
        a4 = v38;
        goto LABEL_38;
      }

      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        a4 = v33;

        v34 = v7;
        v16 = v95;
        goto LABEL_41;
      }

LABEL_25:
      LOBYTE(v96) = 0;
      if (__CFStringIsCF())
      {

LABEL_29:
        v34 = 0;
        a4 = 0xE000000000000000;
        goto LABEL_41;
      }

      v7 = v31;
      v35 = String.init(_nativeStorage:)();
      if (v36)
      {
        a4 = v36;
        v37 = v35;

        v34 = v37;
        goto LABEL_41;
      }

      if (![(__CFString *)v7 length])
      {

        goto LABEL_29;
      }

      v7 = String.init(_cocoaString:)();
      a4 = v41;
      goto LABEL_40;
    }
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v21 = String._bridgeToObjectiveCImpl()();
  v6 = CFPreferencesCopyAppValue(v21, *MEMORY[0x1E695E8A8]);
  v20 = swift_unknownObjectRelease();
  if (v6 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), v20 = swift_dynamicCast(), (v20 & 1) != 0))
  {
    v22 = v96;
    v23 = *(v96 + 16);
    if (!v23)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v23 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v23)
    {
LABEL_14:
      v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

      goto LABEL_16;
    }
  }

  v16 = 0;
  v92 = *MEMORY[0x1E695E4A8];
  a5 = (v22 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  v91 = v23;
  while (1)
  {
    if (v16 >= *(v22 + 16))
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v43 = String._bridgeToObjectiveCImpl()();

    v44 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v92, v43);
    swift_unknownObjectRelease();
    if (!v44)
    {

      a4 = 0;
      v7 = 0xE000000000000000;
      goto LABEL_69;
    }

    v45 = _objc_isTaggedPointer(v44);
    v46 = v44;
    v47 = v46;
    if (v45)
    {
      break;
    }

LABEL_53:
    LOBYTE(v96) = 0;
    if (!__CFStringIsCF())
    {
      v50 = v47;
      v51 = String.init(_nativeStorage:)();
      if (v52)
      {
        a4 = v51;
        v7 = v52;

        goto LABEL_67;
      }

      if (![(__CFString *)v50 length])
      {

        a4 = 0;
        v7 = 0xE000000000000000;
        goto LABEL_67;
      }

      v23 = v91;
      a4 = String.init(_cocoaString:)();
      v7 = v54;
LABEL_68:

      goto LABEL_69;
    }

    a4 = 0;

    v7 = 0xE000000000000000;
LABEL_69:
    v20 = swift_isUniquelyReferenced_nonNull_native();
    if ((v20 & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = v20;
    }

    v56 = *(v8 + 16);
    v55 = *(v8 + 24);
    v6 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v8);
      v8 = v20;
    }

    ++v16;
    *(v8 + 16) = v6;
    v57 = v8 + 16 * v56;
    *(v57 + 32) = a4;
    *(v57 + 40) = v7;
    a5 += 2;
    if (v23 == v16)
    {
      goto LABEL_15;
    }
  }

  v48 = _objc_getTaggedPointerTag(v46);
  if (!v48)
  {
    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v53)
    {
      [(__CFString *)v47 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      a4 = v96;
      v7 = v97;
      goto LABEL_68;
    }

    goto LABEL_62;
  }

  if (v48 != 22)
  {
    if (v48 == 2)
    {
      MEMORY[0x1EEE9AC00](v48);
      a4 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v7 = v49;

LABEL_67:
      v23 = v91;
      goto LABEL_69;
    }

    goto LABEL_53;
  }

  result = [(__CFString *)v47 UTF8String];
  if (!result)
  {
    goto LABEL_108;
  }

  result = String.init(utf8String:)(result);
  if (v53)
  {
LABEL_62:
    a4 = result;
    v7 = v53;

    goto LABEL_69;
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

void closure #1 in _LocaleICU.collation.getter(Swift::String *a1@<X0>, uint64_t a2@<X1>, Swift::String *a3@<X8>)
{
  countAndFlagsBits = a1[6]._countAndFlagsBits;
  object = a1[6]._object;
  v6 = a1[7]._countAndFlagsBits;
  v7 = a1[7]._object;
  if (object)
  {
    a3->_countAndFlagsBits = countAndFlagsBits;
    a3->_object = object;
    a3[1]._countAndFlagsBits = v6;
    a3[1]._object = v7;
  }

  else
  {
    v9 = specialized static Locale.keywordValue(identifier:key:)(*(a2 + 16), *(a2 + 24), 0x6F6974616C6C6F63, 0xE90000000000006ELL);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      v13 = String.lowercased()();
      v14 = a1[6]._countAndFlagsBits;
      v25 = a1[6]._object;
      v21 = a1[7]._object;
      v23 = a1[7]._countAndFlagsBits;

      outlined consume of Locale.LanguageCode?(v14, v25, v23, v21);
      a1[6]._countAndFlagsBits = v11;
      a1[6]._object = v12;
      a1[7] = v13;
      a3->_countAndFlagsBits = v11;
      a3->_object = v12;
      a3[1] = v13;
    }

    else
    {
      if (one-time initialization token for standard != -1)
      {
        swift_once();
      }

      v15 = *algn_1EA7B7188;
      v16 = *(&xmmword_1EA7B7190 + 1);
      v26 = xmmword_1EA7B7190;
      v27 = static Locale.Collation.standard;
      v17 = a1[6]._countAndFlagsBits;
      v22 = a1[7]._countAndFlagsBits;
      v24 = a1[6]._object;
      v20 = a1[7]._object;

      outlined consume of Locale.LanguageCode?(v17, v24, v22, v20);
      a1[6]._countAndFlagsBits = v27;
      a1[6]._object = v15;
      a1[7]._countAndFlagsBits = v26;
      a1[7]._object = v16;
      v18 = *algn_1EA7B7188;
      v19 = xmmword_1EA7B7190;
      a3->_countAndFlagsBits = static Locale.Collation.standard;
      a3->_object = v18;
      a3[1] = v19;
    }
  }

  outlined copy of Locale.LanguageCode?(countAndFlagsBits, object, v6, v7);
}

uint64_t closure #1 in _LocaleICU.icuCurrencyName(localeIdentifier:value:style:)@<X0>(UChar *a1@<X0>, uint64_t *a7@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __break(1u);
  }

  v9 = String.utf8CString.getter();
  u_charsToUChars((v9 + 32), a1, 3);

  a1[3] = 0;
  String.utf8CString.getter();
  Name = ucurr_getName();

  if (Name)
  {
    result = specialized String.init(_utf16:)(Name, 0);
    *a7 = result;
    if (v12)
    {
      a7[1] = v12;
    }

    else
    {
      a7[1] = 0;
    }
  }

  else
  {
    *a7 = 0;
    a7[1] = 0;
  }

  return result;
}

uint64_t closure #1 in _LocaleICU.currencySymbolDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v145 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 496);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v12)
    {
      *a5 = *(*(v10 + 56) + 16 * v11);
    }
  }

  v119 = a5;
  v14 = v133;
  v129 = a3;
  v130 = a2;
  if (String.count.getter() == 3)
  {
    closure #1 in _LocaleICU.icuCurrencyName(localeIdentifier:value:style:)(&v131, v144);
    if (v5)
    {
      goto LABEL_154;
    }

    v15 = *&v144[8];
    if (*&v144[8])
    {
      a4 = *v144;
LABEL_121:

LABEL_122:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v144 = *(a1 + 496);
      v31 = *v144;
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v129);
      v85 = *(v31 + 16);
      v86 = (v84 & 1) == 0;
      v87 = __OFADD__(v85, v86);
      v88 = v85 + v86;
      if (v87)
      {
LABEL_132:
        __break(1u);
      }

      else
      {
        LOBYTE(v14) = v84;
        if (*(v31 + 24) < v88)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v88, isUniquelyReferenced_nonNull_native);
          v89 = *v144;
          v90 = v130;
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v129);
          if ((v14 & 1) != (v91 & 1))
          {
            goto LABEL_155;
          }

          v92 = v119;
          if (v14)
          {
            goto LABEL_126;
          }

LABEL_129:
          result = specialized _NativeDictionary._insert(at:key:value:)(v36, v90, v129, a4, v15, v89);
          goto LABEL_130;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v89 = v31;
          v92 = v119;
          v90 = v130;
          if ((v84 & 1) == 0)
          {
            goto LABEL_129;
          }

LABEL_126:
          v93 = v36;

          v94 = (*(v89 + 56) + 16 * v93);
          *v94 = a4;
          v94[1] = v15;

LABEL_130:
          *(a1 + 496) = v89;
          *v92 = a4;
          v92[1] = v15;
          return result;
        }
      }

      v128 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd, &_ss18_DictionaryStorageCyS2SSgGMR);
      v95 = static _DictionaryStorage.copy(original:)();
      v89 = v95;
      if (*(v31 + 16))
      {
        v96 = (v95 + 64);
        v97 = ((1 << *(v89 + 32)) + 63) >> 6;
        if (v89 != v31 || v96 >= v31 + 64 + 8 * v97)
        {
          memmove(v96, (v31 + 64), 8 * v97);
        }

        v98 = 0;
        *(v89 + 16) = *(v31 + 16);
        v99 = 1 << *(v31 + 32);
        v100 = *(v31 + 64);
        v101 = -1;
        if (v99 < 64)
        {
          v101 = ~(-1 << v99);
        }

        v102 = v101 & v100;
        v103 = (v99 + 63) >> 6;
        if ((v101 & v100) != 0)
        {
          do
          {
            v104 = __clz(__rbit64(v102));
            v102 &= v102 - 1;
LABEL_146:
            v107 = 16 * (v104 | (v98 << 6));
            v108 = (*(v31 + 48) + v107);
            v109 = *v108;
            v110 = v108[1];
            v111 = (*(v89 + 48) + v107);
            v112 = *(*(v31 + 56) + v107);
            *v111 = v109;
            v111[1] = v110;
            *(*(v89 + 56) + v107) = v112;
          }

          while (v102);
        }

        v105 = v98;
        while (1)
        {
          v98 = v105 + 1;
          if (__OFADD__(v105, 1))
          {
            __break(1u);
          }

          if (v98 >= v103)
          {
            break;
          }

          v106 = *(v31 + 64 + 8 * v98);
          ++v105;
          if (v106)
          {
            v104 = __clz(__rbit64(v106));
            v102 = (v106 - 1) & v106;
            goto LABEL_146;
          }
        }
      }

      v92 = v119;

      v36 = v128;
      v90 = v130;
      if ((v14 & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_126;
    }

    v22 = *(a4 + 136);
    v23 = *(a4 + 168);
    v142 = *(a4 + 152);
    v143[0] = v23;
    *(v143 + 12) = *(a4 + 180);
    v24 = *(a4 + 72);
    v25 = *(a4 + 104);
    v138 = *(a4 + 88);
    v139 = v25;
    v140 = *(a4 + 120);
    v141 = v22;
    v136 = *(a4 + 56);
    v137 = v24;
    v26 = *(a4 + 136);
    v27 = *(a4 + 168);
    *&v144[96] = *(a4 + 152);
    *&v144[112] = v27;
    *&v144[124] = *(a4 + 180);
    v28 = *(a4 + 72);
    v29 = *(a4 + 104);
    *&v144[32] = *(a4 + 88);
    *&v144[48] = v29;
    *&v144[64] = *(a4 + 120);
    *&v144[80] = v26;
    *v144 = *(a4 + 56);
    *&v144[16] = v28;
  }

  else
  {
    v16 = *(a4 + 152);
    v141 = *(a4 + 136);
    v142 = v16;
    v143[0] = *(a4 + 168);
    *(v143 + 12) = *(a4 + 180);
    v17 = *(a4 + 72);
    v18 = *(a4 + 104);
    v138 = *(a4 + 88);
    v139 = v18;
    v140 = *(a4 + 120);
    v136 = *(a4 + 56);
    v137 = v17;
    v19 = *(a4 + 152);
    *&v144[80] = *(a4 + 136);
    *&v144[96] = v19;
    *&v144[112] = *(a4 + 168);
    *&v144[124] = *(a4 + 180);
    v20 = *(a4 + 72);
    v21 = *(a4 + 104);
    *&v144[32] = *(a4 + 88);
    *&v144[48] = v21;
    *&v144[64] = *(a4 + 120);
    *v144 = *(a4 + 56);
    *&v144[16] = v20;
  }

  if (_s10Foundation17LocalePreferencesVSgWOg(v144) == 1)
  {
    v31 = a2;
  }

  else
  {
    v30.i32[0] = *&v144[136];
    v123 = *&v144[120];
    v125 = vmovl_u8(v30).u64[0];
    v120 = *&v144[104];
    v115 = *&v144[56];
    v116 = *&v144[72];
    v113 = *&v144[24];
    v114 = *&v144[40];
    v117 = *&v144[8];
    v118 = *&v144[88];
    v32 = v144[0];
    v133[6] = v142;
    v134[0] = v143[0];
    *(v134 + 12) = *(v143 + 12);
    v133[2] = v138;
    v133[3] = v139;
    v133[4] = v140;
    v133[5] = v141;
    v133[0] = v136;
    v133[1] = v137;
    outlined init with copy of LocalePreferences(v133, v132);
    v144[0] = v32;
    *&v144[8] = v117;
    *&v144[24] = v113;
    *&v144[40] = v114;
    *&v144[56] = v115;
    *&v144[72] = v116;
    *&v144[88] = v118;
    *&v144[104] = v120;
    *&v144[120] = v123;
    v33 = v117;
    *&v144[136] = vuzp1_s8(v125, v125).u32[0];
    v31 = a2;
    if (v117)
    {

      outlined destroy of LocalePreferences(v144);
      v34 = *(v117 + 16);
      if (!v34)
      {
LABEL_120:

        a4 = 0;
        v15 = 0;
        goto LABEL_122;
      }

      goto LABEL_73;
    }

    outlined destroy of LocalePreferences(v144);
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v15 = String._bridgeToObjectiveCImpl()();
  v35 = CFPreferencesCopyAppValue(v15, *MEMORY[0x1E695E8A8]);
  v36 = swift_unknownObjectRelease();
  if (v35 && (*v144 = v35, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), v36 = swift_dynamicCast(), (v36 & 1) != 0))
  {
    v37 = v136;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v126 = *(v37 + 16);
  if (!v126)
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_72:

    v34 = *(v33 + 16);
    if (!v34)
    {
      goto LABEL_120;
    }

LABEL_73:
    v62 = 0;
    v63 = *MEMORY[0x1E695E4A8];
    v64 = v33 + 40;
    v127 = v34 - 1;
    while (1)
    {
      v65 = String._bridgeToObjectiveCImpl()();
      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v63, v65);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        goto LABEL_88;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v68 = CanonicalLanguageIdentifierFromString;
      v69 = v68;
      if (!isTaggedPointer)
      {
        goto LABEL_80;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v68);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v133[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v76 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v78)
          {
            [(__CFString *)v69 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            LOBYTE(v14) = v136;
            goto LABEL_111;
          }

          goto LABEL_93;
        case 0x16:
          v75 = [(__CFString *)v69 UTF8String];
          if (!v75)
          {
            goto LABEL_153;
          }

          v76 = String.init(utf8String:)(v75);
          if (!v77)
          {
            goto LABEL_152;
          }

LABEL_93:
          LOBYTE(v14) = v76;

          goto LABEL_111;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          LOBYTE(v14) = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          break;
        default:
LABEL_80:
          LOBYTE(v136) = 0;
          *v144 = 0;
          LOBYTE(v133[0]) = 0;
          v132[0] = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            if (!*v144)
            {

LABEL_88:
              LOBYTE(v14) = 0;
              break;
            }

            if (v132[0] == 1)
            {
              if (v136)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v79 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_110;
            }

            if ((v133[0] & 1) == 0)
            {
              goto LABEL_109;
            }

            if (v136 != 1)
            {
              IsCF = [(__CFString *)v69 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v82 = HIBYTE(v81) & 0xF;
            if ((v81 & 0x2000000000000000) == 0)
            {
              v82 = v80 & 0xFFFFFFFFFFFFLL;
            }

            if (!v82)
            {

LABEL_109:
              v79 = String.init(_cocoaString:)();
LABEL_110:
              LOBYTE(v14) = v79;
LABEL_111:

              break;
            }

            LOBYTE(v14) = v80;
          }

          else
          {
            v72 = v69;
            v73 = String.init(_nativeStorage:)();
            if (v74)
            {
              LOBYTE(v14) = v73;
            }

            else
            {
              *v144 = [(__CFString *)v72 length];
              if (*v144)
              {
                goto LABEL_109;
              }

              LOBYTE(v14) = 0;
            }
          }

          break;
      }

      if (String.count.getter() == 3)
      {
        closure #1 in _LocaleICU.icuCurrencyName(localeIdentifier:value:style:)(&v135, v144);
        if (v5)
        {
          goto LABEL_154;
        }

        v15 = *&v144[8];
        if (*&v144[8])
        {
          a4 = *v144;

          goto LABEL_121;
        }
      }

      else
      {
      }

      if (v127 == v62)
      {
        goto LABEL_120;
      }

      ++v62;
      v64 += 16;
      if (v62 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_120;
      }
    }
  }

  v38 = 0;
  v124 = *MEMORY[0x1E695E4A8];
  v39 = v37 + 40;
  v33 = MEMORY[0x1E69E7CC0];
  v121 = v37;
  while (1)
  {
    if (v38 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_132;
    }

    v40 = String._bridgeToObjectiveCImpl()();

    v41 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v124, v40);
    swift_unknownObjectRelease();
    if (v41)
    {
      break;
    }

LABEL_37:
    v46 = 0;
    v14 = 0xE000000000000000;
LABEL_65:
    v36 = swift_isUniquelyReferenced_nonNull_native();
    if ((v36 & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1, v33);
      v33 = v36;
    }

    a4 = *(v33 + 16);
    v60 = *(v33 + 24);
    v15 = (a4 + 1);
    if (a4 >= v60 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), a4 + 1, 1, v33);
      v33 = v36;
    }

    ++v38;
    *(v33 + 16) = v15;
    v61 = v33 + 16 * a4;
    *(v61 + 32) = v46;
    *(v61 + 40) = v14;
    v39 += 16;
    v31 = v130;
    if (v126 == v38)
    {
      goto LABEL_72;
    }
  }

  v42 = _objc_isTaggedPointer(v41);
  v43 = v41;
  v44 = v43;
  if ((v42 & 1) == 0)
  {
LABEL_31:
    LOBYTE(v136) = 0;
    *v144 = 0;
    LOBYTE(v133[0]) = 0;
    v132[0] = 0;
    v48 = __CFStringIsCF();
    if (!v48)
    {
      v49 = v44;
      v50 = String.init(_nativeStorage:)();
      if (v51)
      {
        v46 = v50;
        v14 = v51;
      }

      else
      {
        *v144 = [(__CFString *)v49 length];
        if (*v144)
        {
          v37 = v121;
          goto LABEL_62;
        }

        v46 = 0;
        v14 = 0xE000000000000000;
      }

      goto LABEL_60;
    }

    if (*v144)
    {
      if (v132[0] == 1)
      {
        if (v136)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v55 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_63;
      }

      if ((v133[0] & 1) == 0)
      {
        goto LABEL_62;
      }

      if (v136 != 1)
      {
        v48 = [(__CFString *)v44 lengthOfBytesUsingEncoding:4];
      }

      MEMORY[0x1EEE9AC00](v48);
      v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v58;
      v59 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v59 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (!v59)
      {
        v37 = v121;

LABEL_62:
        v55 = String.init(_cocoaString:)();
LABEL_63:
        v46 = v55;
        v14 = v56;
LABEL_64:

        goto LABEL_65;
      }

      v46 = v57;

      goto LABEL_60;
    }

    goto LABEL_37;
  }

  v45 = _objc_getTaggedPointerTag(v43);
  if (!v45)
  {
    LOWORD(v133[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v53 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v54)
    {
      [(__CFString *)v44 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v14 = *(&v136 + 1);
      v46 = v136;
      goto LABEL_64;
    }

    goto LABEL_45;
  }

  if (v45 != 22)
  {
    if (v45 == 2)
    {
      MEMORY[0x1EEE9AC00](v45);
      v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v47;

LABEL_60:
      v37 = v121;
      goto LABEL_65;
    }

    goto LABEL_31;
  }

  v52 = [(__CFString *)v44 UTF8String];
  if (!v52)
  {
    goto LABEL_151;
  }

  v53 = String.init(utf8String:)(v52);
  if (v54)
  {
LABEL_45:
    v46 = v53;
    v14 = v54;

    goto LABEL_65;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  swift_willThrow();
  __break(1u);
LABEL_155:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in _LocaleICU.currencyCodeDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v145 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 504);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v12)
    {
      *a5 = *(*(v10 + 56) + 16 * v11);
    }
  }

  v119 = a5;
  v14 = v133;
  v129 = a3;
  v130 = a2;
  if (String.count.getter() == 3)
  {
    closure #1 in _LocaleICU.icuCurrencyName(localeIdentifier:value:style:)(&v131, v144);
    if (v5)
    {
      goto LABEL_154;
    }

    v15 = *&v144[8];
    if (*&v144[8])
    {
      a4 = *v144;
LABEL_121:

LABEL_122:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v144 = *(a1 + 504);
      v31 = *v144;
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v129);
      v85 = *(v31 + 16);
      v86 = (v84 & 1) == 0;
      v87 = __OFADD__(v85, v86);
      v88 = v85 + v86;
      if (v87)
      {
LABEL_132:
        __break(1u);
      }

      else
      {
        LOBYTE(v14) = v84;
        if (*(v31 + 24) < v88)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v88, isUniquelyReferenced_nonNull_native);
          v89 = *v144;
          v90 = v130;
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v130, v129);
          if ((v14 & 1) != (v91 & 1))
          {
            goto LABEL_155;
          }

          v92 = v119;
          if (v14)
          {
            goto LABEL_126;
          }

LABEL_129:
          result = specialized _NativeDictionary._insert(at:key:value:)(v36, v90, v129, a4, v15, v89);
          goto LABEL_130;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v89 = v31;
          v92 = v119;
          v90 = v130;
          if ((v84 & 1) == 0)
          {
            goto LABEL_129;
          }

LABEL_126:
          v93 = v36;

          v94 = (*(v89 + 56) + 16 * v93);
          *v94 = a4;
          v94[1] = v15;

LABEL_130:
          *(a1 + 504) = v89;
          *v92 = a4;
          v92[1] = v15;
          return result;
        }
      }

      v128 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd, &_ss18_DictionaryStorageCyS2SSgGMR);
      v95 = static _DictionaryStorage.copy(original:)();
      v89 = v95;
      if (*(v31 + 16))
      {
        v96 = (v95 + 64);
        v97 = ((1 << *(v89 + 32)) + 63) >> 6;
        if (v89 != v31 || v96 >= v31 + 64 + 8 * v97)
        {
          memmove(v96, (v31 + 64), 8 * v97);
        }

        v98 = 0;
        *(v89 + 16) = *(v31 + 16);
        v99 = 1 << *(v31 + 32);
        v100 = *(v31 + 64);
        v101 = -1;
        if (v99 < 64)
        {
          v101 = ~(-1 << v99);
        }

        v102 = v101 & v100;
        v103 = (v99 + 63) >> 6;
        if ((v101 & v100) != 0)
        {
          do
          {
            v104 = __clz(__rbit64(v102));
            v102 &= v102 - 1;
LABEL_146:
            v107 = 16 * (v104 | (v98 << 6));
            v108 = (*(v31 + 48) + v107);
            v109 = *v108;
            v110 = v108[1];
            v111 = (*(v89 + 48) + v107);
            v112 = *(*(v31 + 56) + v107);
            *v111 = v109;
            v111[1] = v110;
            *(*(v89 + 56) + v107) = v112;
          }

          while (v102);
        }

        v105 = v98;
        while (1)
        {
          v98 = v105 + 1;
          if (__OFADD__(v105, 1))
          {
            __break(1u);
          }

          if (v98 >= v103)
          {
            break;
          }

          v106 = *(v31 + 64 + 8 * v98);
          ++v105;
          if (v106)
          {
            v104 = __clz(__rbit64(v106));
            v102 = (v106 - 1) & v106;
            goto LABEL_146;
          }
        }
      }

      v92 = v119;

      v36 = v128;
      v90 = v130;
      if ((v14 & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_126;
    }

    v22 = *(a4 + 136);
    v23 = *(a4 + 168);
    v142 = *(a4 + 152);
    v143[0] = v23;
    *(v143 + 12) = *(a4 + 180);
    v24 = *(a4 + 72);
    v25 = *(a4 + 104);
    v138 = *(a4 + 88);
    v139 = v25;
    v140 = *(a4 + 120);
    v141 = v22;
    v136 = *(a4 + 56);
    v137 = v24;
    v26 = *(a4 + 136);
    v27 = *(a4 + 168);
    *&v144[96] = *(a4 + 152);
    *&v144[112] = v27;
    *&v144[124] = *(a4 + 180);
    v28 = *(a4 + 72);
    v29 = *(a4 + 104);
    *&v144[32] = *(a4 + 88);
    *&v144[48] = v29;
    *&v144[64] = *(a4 + 120);
    *&v144[80] = v26;
    *v144 = *(a4 + 56);
    *&v144[16] = v28;
  }

  else
  {
    v16 = *(a4 + 152);
    v141 = *(a4 + 136);
    v142 = v16;
    v143[0] = *(a4 + 168);
    *(v143 + 12) = *(a4 + 180);
    v17 = *(a4 + 72);
    v18 = *(a4 + 104);
    v138 = *(a4 + 88);
    v139 = v18;
    v140 = *(a4 + 120);
    v136 = *(a4 + 56);
    v137 = v17;
    v19 = *(a4 + 152);
    *&v144[80] = *(a4 + 136);
    *&v144[96] = v19;
    *&v144[112] = *(a4 + 168);
    *&v144[124] = *(a4 + 180);
    v20 = *(a4 + 72);
    v21 = *(a4 + 104);
    *&v144[32] = *(a4 + 88);
    *&v144[48] = v21;
    *&v144[64] = *(a4 + 120);
    *v144 = *(a4 + 56);
    *&v144[16] = v20;
  }

  if (_s10Foundation17LocalePreferencesVSgWOg(v144) == 1)
  {
    v31 = a2;
  }

  else
  {
    v30.i32[0] = *&v144[136];
    v123 = *&v144[120];
    v125 = vmovl_u8(v30).u64[0];
    v120 = *&v144[104];
    v115 = *&v144[56];
    v116 = *&v144[72];
    v113 = *&v144[24];
    v114 = *&v144[40];
    v117 = *&v144[8];
    v118 = *&v144[88];
    v32 = v144[0];
    v133[6] = v142;
    v134[0] = v143[0];
    *(v134 + 12) = *(v143 + 12);
    v133[2] = v138;
    v133[3] = v139;
    v133[4] = v140;
    v133[5] = v141;
    v133[0] = v136;
    v133[1] = v137;
    outlined init with copy of LocalePreferences(v133, v132);
    v144[0] = v32;
    *&v144[8] = v117;
    *&v144[24] = v113;
    *&v144[40] = v114;
    *&v144[56] = v115;
    *&v144[72] = v116;
    *&v144[88] = v118;
    *&v144[104] = v120;
    *&v144[120] = v123;
    v33 = v117;
    *&v144[136] = vuzp1_s8(v125, v125).u32[0];
    v31 = a2;
    if (v117)
    {

      outlined destroy of LocalePreferences(v144);
      v34 = *(v117 + 16);
      if (!v34)
      {
LABEL_120:

        a4 = 0;
        v15 = 0;
        goto LABEL_122;
      }

      goto LABEL_73;
    }

    outlined destroy of LocalePreferences(v144);
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v15 = String._bridgeToObjectiveCImpl()();
  v35 = CFPreferencesCopyAppValue(v15, *MEMORY[0x1E695E8A8]);
  v36 = swift_unknownObjectRelease();
  if (v35 && (*v144 = v35, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), v36 = swift_dynamicCast(), (v36 & 1) != 0))
  {
    v37 = v136;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v126 = *(v37 + 16);
  if (!v126)
  {
    v33 = MEMORY[0x1E69E7CC0];
LABEL_72:

    v34 = *(v33 + 16);
    if (!v34)
    {
      goto LABEL_120;
    }

LABEL_73:
    v62 = 0;
    v63 = *MEMORY[0x1E695E4A8];
    v64 = v33 + 40;
    v127 = v34 - 1;
    while (1)
    {
      v65 = String._bridgeToObjectiveCImpl()();
      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v63, v65);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        goto LABEL_88;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v68 = CanonicalLanguageIdentifierFromString;
      v69 = v68;
      if (!isTaggedPointer)
      {
        goto LABEL_80;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v68);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v133[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v76 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v78)
          {
            [(__CFString *)v69 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            LOBYTE(v14) = v136;
            goto LABEL_111;
          }

          goto LABEL_93;
        case 0x16:
          v75 = [(__CFString *)v69 UTF8String];
          if (!v75)
          {
            goto LABEL_153;
          }

          v76 = String.init(utf8String:)(v75);
          if (!v77)
          {
            goto LABEL_152;
          }

LABEL_93:
          LOBYTE(v14) = v76;

          goto LABEL_111;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          LOBYTE(v14) = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          break;
        default:
LABEL_80:
          LOBYTE(v136) = 0;
          *v144 = 0;
          LOBYTE(v133[0]) = 0;
          v132[0] = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            if (!*v144)
            {

LABEL_88:
              LOBYTE(v14) = 0;
              break;
            }

            if (v132[0] == 1)
            {
              if (v136)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v79 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_110;
            }

            if ((v133[0] & 1) == 0)
            {
              goto LABEL_109;
            }

            if (v136 != 1)
            {
              IsCF = [(__CFString *)v69 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v82 = HIBYTE(v81) & 0xF;
            if ((v81 & 0x2000000000000000) == 0)
            {
              v82 = v80 & 0xFFFFFFFFFFFFLL;
            }

            if (!v82)
            {

LABEL_109:
              v79 = String.init(_cocoaString:)();
LABEL_110:
              LOBYTE(v14) = v79;
LABEL_111:

              break;
            }

            LOBYTE(v14) = v80;
          }

          else
          {
            v72 = v69;
            v73 = String.init(_nativeStorage:)();
            if (v74)
            {
              LOBYTE(v14) = v73;
            }

            else
            {
              *v144 = [(__CFString *)v72 length];
              if (*v144)
              {
                goto LABEL_109;
              }

              LOBYTE(v14) = 0;
            }
          }

          break;
      }

      if (String.count.getter() == 3)
      {
        closure #1 in _LocaleICU.icuCurrencyName(localeIdentifier:value:style:)(&v135, v144);
        if (v5)
        {
          goto LABEL_154;
        }

        v15 = *&v144[8];
        if (*&v144[8])
        {
          a4 = *v144;

          goto LABEL_121;
        }
      }

      else
      {
      }

      if (v127 == v62)
      {
        goto LABEL_120;
      }

      ++v62;
      v64 += 16;
      if (v62 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_120;
      }
    }
  }

  v38 = 0;
  v124 = *MEMORY[0x1E695E4A8];
  v39 = v37 + 40;
  v33 = MEMORY[0x1E69E7CC0];
  v121 = v37;
  while (1)
  {
    if (v38 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_132;
    }

    v40 = String._bridgeToObjectiveCImpl()();

    v41 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v124, v40);
    swift_unknownObjectRelease();
    if (v41)
    {
      break;
    }

LABEL_37:
    v46 = 0;
    v14 = 0xE000000000000000;
LABEL_65:
    v36 = swift_isUniquelyReferenced_nonNull_native();
    if ((v36 & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 16) + 1, 1, v33);
      v33 = v36;
    }

    a4 = *(v33 + 16);
    v60 = *(v33 + 24);
    v15 = (a4 + 1);
    if (a4 >= v60 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), a4 + 1, 1, v33);
      v33 = v36;
    }

    ++v38;
    *(v33 + 16) = v15;
    v61 = v33 + 16 * a4;
    *(v61 + 32) = v46;
    *(v61 + 40) = v14;
    v39 += 16;
    v31 = v130;
    if (v126 == v38)
    {
      goto LABEL_72;
    }
  }

  v42 = _objc_isTaggedPointer(v41);
  v43 = v41;
  v44 = v43;
  if ((v42 & 1) == 0)
  {
LABEL_31:
    LOBYTE(v136) = 0;
    *v144 = 0;
    LOBYTE(v133[0]) = 0;
    v132[0] = 0;
    v48 = __CFStringIsCF();
    if (!v48)
    {
      v49 = v44;
      v50 = String.init(_nativeStorage:)();
      if (v51)
      {
        v46 = v50;
        v14 = v51;
      }

      else
      {
        *v144 = [(__CFString *)v49 length];
        if (*v144)
        {
          v37 = v121;
          goto LABEL_62;
        }

        v46 = 0;
        v14 = 0xE000000000000000;
      }

      goto LABEL_60;
    }

    if (*v144)
    {
      if (v132[0] == 1)
      {
        if (v136)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v55 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_63;
      }

      if ((v133[0] & 1) == 0)
      {
        goto LABEL_62;
      }

      if (v136 != 1)
      {
        v48 = [(__CFString *)v44 lengthOfBytesUsingEncoding:4];
      }

      MEMORY[0x1EEE9AC00](v48);
      v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v58;
      v59 = HIBYTE(v58) & 0xF;
      if ((v58 & 0x2000000000000000) == 0)
      {
        v59 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (!v59)
      {
        v37 = v121;

LABEL_62:
        v55 = String.init(_cocoaString:)();
LABEL_63:
        v46 = v55;
        v14 = v56;
LABEL_64:

        goto LABEL_65;
      }

      v46 = v57;

      goto LABEL_60;
    }

    goto LABEL_37;
  }

  v45 = _objc_getTaggedPointerTag(v43);
  if (!v45)
  {
    LOWORD(v133[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v53 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v54)
    {
      [(__CFString *)v44 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v14 = *(&v136 + 1);
      v46 = v136;
      goto LABEL_64;
    }

    goto LABEL_45;
  }

  if (v45 != 22)
  {
    if (v45 == 2)
    {
      MEMORY[0x1EEE9AC00](v45);
      v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v47;

LABEL_60:
      v37 = v121;
      goto LABEL_65;
    }

    goto LABEL_31;
  }

  v52 = [(__CFString *)v44 UTF8String];
  if (!v52)
  {
    goto LABEL_151;
  }

  v53 = String.init(utf8String:)(v52);
  if (v54)
  {
LABEL_45:
    v46 = v53;
    v14 = v54;

    goto LABEL_65;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  swift_willThrow();
  __break(1u);
LABEL_155:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void closure #1 in _LocaleICU.currency.getter(Swift::String *a1@<X0>, Swift::String *a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  countAndFlagsBits = a1[8]._countAndFlagsBits;
  object = a1[8]._object;
  p_countAndFlagsBits = &a1[8]._countAndFlagsBits;
  v7 = a1[9]._countAndFlagsBits;
  v8 = a1[9]._object;
  if (object == 1)
  {
    String.utf8CString.getter();
    v10 = ucurr_forLocale();

    if (v10 - 1 <= 0x100 && (v11 = specialized String.init(_utf16:)(v20, v10), v12))
    {
      v13 = v11;
      v14 = v12;
      v15 = String.lowercased()();
      v16 = a1[8]._countAndFlagsBits;
      v19 = a1[8]._object;
      v17 = a1[9]._object;
      v18 = a1[9]._countAndFlagsBits;

      sub_1807E2788(v16, v19, v18, v17);
      a1[8]._countAndFlagsBits = v13;
      a1[8]._object = v14;
      a1[9] = v15;
      a3->_countAndFlagsBits = v13;
      a3->_object = v14;
      a3[1] = v15;
    }

    else
    {
      sub_1807E2788(a1[8]._countAndFlagsBits, a1[8]._object, a1[9]._countAndFlagsBits, a1[9]._object);
      *p_countAndFlagsBits = 0u;
      *(p_countAndFlagsBits + 1) = 0u;
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    a3->_countAndFlagsBits = countAndFlagsBits;
    a3->_object = object;
    a3[1]._countAndFlagsBits = v7;
    a3[1]._object = v8;
  }

  sub_1808B890C(countAndFlagsBits, object, v7, v8);
}

uint64_t _LocaleICU.delimiterString(_:)(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  String.utf8CString.getter();
  ulocdata_open();

  Delimiter = ulocdata_getDelimiter();
  v2 = 0;
  if (Delimiter - 1 < 0x82)
  {
    v2 = specialized String.init(_utf16:)(v4, Delimiter);
  }

  ulocdata_close();
  return v2;
}

Swift::Int_optional __swiftcall _LocaleICU.forceMinDaysInFirstWeek(_:)(Foundation::Calendar::Identifier a1)
{
  v2 = *a1;
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v16 = *(v1 + 152);
  v17[0] = v4;
  *(v17 + 12) = *(v1 + 180);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v13 = v6;
  v14 = *(v1 + 120);
  v15 = v3;
  v12[0] = *(v1 + 56);
  v12[1] = v5;
  if (_s10Foundation17LocalePreferencesVSgWOg(v12) != 1 && (v7 = *(&v13 + 1)) != 0 && *(*(&v13 + 1) + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v2), (v9 & 1) != 0))
  {
    v10 = 0;
    v11 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v11 = 0;
    v10 = 1;
  }

  result.value = v11;
  result.is_nil = v10;
  return result;
}

void _LocaleICU._lockedNumberingSystem(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[20];
  v2 = a1[21];
  v4 = a1[22];
  v5 = a1[23];
  if (v2)
  {
    *a2 = v3;
    a2[1] = v2;
    a2[2] = v4;
    a2[3] = v5;
  }

  else
  {

    Locale.Components.init(identifier:)(v16);
    v7 = v18;
    if (v18)
    {
      v8 = v20;
      v13 = v17;
      v14 = v19;

      outlined destroy of Locale.Components(v16);
      v9 = a1[20];
      v10 = a1[21];
      v11 = a1[22];
      v12 = a1[23];

      outlined consume of Locale.LanguageCode?(v9, v10, v11, v12);
      a1[20] = v13;
      a1[21] = v7;
      a1[22] = v14;
      a1[23] = v8;
      *a2 = v13;
      a2[1] = v7;
      a2[2] = v14;
      a2[3] = v8;
    }

    else
    {

      Locale.NumberingSystem.init(localeIdentifier:)(a2);
      outlined destroy of Locale.Components(v16);
    }
  }

  outlined copy of Locale.LanguageCode?(v3, v2, v4, v5);
}

void closure #1 in _LocaleICU.availableNumberingSystems.getter(unint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  i = a1;
  v5 = *(a1 + 192);
  if (v5)
  {
    *a3 = v5;
  }

  else
  {
    v48 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleV15NumberingSystemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV15NumberingSystemVGMR);
    v6 = swift_allocObject();
    v45 = v6 + 32;
    if (one-time initialization token for latn != -1)
    {
LABEL_28:
      swift_once();
    }

    v7 = unk_1EA7AE6E0;
    v8 = xmmword_1EA7AE6E8;
    *(v6 + 32) = static Locale.NumberingSystem.latn;
    *(v6 + 40) = v7;
    *(v6 + 48) = v8;

    v43 = i;
    _LocaleICU._lockedNumberingSystem(_:)(i, (v6 + 64));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation6LocaleV15NumberingSystemVGMd, &_ss11_SetStorageCy10Foundation6LocaleV15NumberingSystemVGMR);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v11 = 0;
    v12 = v9 + 56;
    do
    {
      v47 = v10;
      v13 = (v45 + 32 * v11);
      v14 = v13[1];
      v46 = *v13;
      v15 = v13[2];
      v6 = v13[3];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v9 + 32));
      for (i = v16 & v17; ; i = (i + 1) & v17)
      {
        v18 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v18) == 0)
        {
          break;
        }

        v19 = *(v9 + 48) + 32 * i;
        v20 = *(v19 + 16) == v15 && *(v19 + 24) == v6;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_6;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v18;
      v21 = (*(v9 + 48) + 32 * i);
      *v21 = v46;
      v21[1] = v14;
      v21[2] = v15;
      v21[3] = v6;
      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        goto LABEL_28;
      }

      *(v9 + 16) = v24;
LABEL_6:
      v10 = 1;
      v11 = 1;
    }

    while ((v47 & 1) == 0);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v54 = v9;
    v25 = swift_allocObject();
    v26 = String.lowercased()();
    v25[2]._countAndFlagsBits = 0x746C7561666564;
    v25[2]._object = 0xE700000000000000;
    v25[3] = v26;
    v27 = String.lowercased()();
    v25[4]._countAndFlagsBits = 0x65766974616ELL;
    v25[4]._object = 0xE600000000000000;
    v25[5] = v27;
    v28 = String.lowercased()();
    v25[6]._countAndFlagsBits = 0x6F69746964617274;
    v25[6]._object = 0xEB000000006C616ELL;
    v25[7] = v28;
    v29 = String.lowercased()();
    v30 = 0;
    v25[8]._countAndFlagsBits = 0x65636E616E6966;
    v25[8]._object = 0xE700000000000000;
    v25[9] = v29;
    while (1)
    {
      countAndFlagsBits = v25[v30 + 3]._countAndFlagsBits;
      object = v25[v30 + 3]._object;
      v34 = v25[v30 + 2]._countAndFlagsBits;
      v33 = v25[v30 + 2]._object;

      Locale.Components.init(identifier:)(v52);
      outlined consume of Locale.LanguageCode?(v52[21], v52[22], v52[23], v52[24]);
      v52[21] = v34;
      v52[22] = v33;
      v52[23] = countAndFlagsBits;
      v52[24] = object;
      v35 = memcpy(v53, v52, sizeof(v53));
      if (one-time initialization token for cache != -1)
      {
        v35 = swift_once();
      }

      v36 = static LocaleCache.cache;
      MEMORY[0x1EEE9AC00](v35);
      os_unfair_lock_lock(v36 + 12);
      partial apply for closure #1 in LocaleCache.fixedComponents(_:)(&v36[4], v51);
      if (v48)
      {
        break;
      }

      v48 = 0;
      os_unfair_lock_unlock(v36 + 12);
      v37 = v51[1];
      ObjectType = swift_getObjectType();
      (*(v37 + 64))(ObjectType, v37);
      Locale.NumberingSystem.init(localeIdentifier:)(v49);
      specialized Set._Variant.insert(_:)(v50, v49[0], v49[1], v49[2], v49[3]);
      swift_unknownObjectRelease();

      memcpy(v50, v52, sizeof(v50));
      outlined destroy of Locale.Components(v50);
      v30 += 2;
      if (v30 == 8)
      {
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v39 = v54;
        v40 = *(v54 + 16);
        if (!v40)
        {
          goto LABEL_25;
        }

        v41 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation6LocaleV15NumberingSystemV_Tt1g5(*(v54 + 16), 0);
        v42 = specialized Sequence._copyContents(initializing:)(v52, v41 + 4, v40, v39);
        outlined consume of Set<AnyKeyPath>.Iterator._Variant(v52[0]);
        if (v42 != v40)
        {
          __break(1u);
LABEL_25:

          v41 = MEMORY[0x1E69E7CC0];
        }

        *(v43 + 192) = v41;
        *a3 = v41;
        return;
      }
    }

    os_unfair_lock_unlock(v36 + 12);
    __break(1u);
  }
}

uint64_t protocol witness for _LocaleProtocol.init(identifier:prefs:) in conformance _LocaleICU(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  _LocaleICU.init(identifier:prefs:)(a1, a2, a3);
  return v6;
}

uint64_t protocol witness for _LocaleProtocol.init(name:prefs:disableBundleMatching:) in conformance _LocaleICU(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v8 = swift_allocObject();
  _LocaleICU.init(name:prefs:disableBundleMatching:)(a1, a2, a3, a4);
  return v8;
}

uint64_t protocol witness for _LocaleProtocol.init(components:) in conformance _LocaleICU(void *a1)
{
  v2 = swift_allocObject();
  _LocaleICU.init(components:)(a1);
  return v2;
}

unint64_t protocol witness for _LocaleProtocol.identifierDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.identifierDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.scriptCodeDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.scriptCodeDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.variantCodeDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.variantCodeDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.calendarIdentifierDisplayName(for:) in conformance _LocaleICU(unsigned __int8 *a1)
{
  v2 = *(v1 + 200);
  v3 = *a1;
  os_unfair_lock_lock(v2 + 134);
  closure #1 in _LocaleICU.calendarIdentifierDisplayName(for:)(&v2[4], v3, v1, &v5);
  os_unfair_lock_unlock(v2 + 134);
  return v5;
}

unint64_t protocol witness for _LocaleProtocol.currencyCodeDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.currencyCodeDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

unint64_t protocol witness for _LocaleProtocol.currencySymbolDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.currencySymbolDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.collationIdentifierDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.collationIdentifierDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t protocol witness for _LocaleProtocol.collationIdentifier.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock((v1 + 536));
  closure #1 in _LocaleICU.collation.getterpartial apply((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 536));
  countAndFlagsBits = v4._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t protocol witness for _LocaleProtocol.groupingSeparator.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.groupingSeparator.getter(&v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

void protocol witness for _LocaleProtocol.currency.getter in conformance _LocaleICU(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.currency.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

uint64_t protocol witness for _LocaleProtocol.availableNumberingSystems.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.availableNumberingSystems.getter(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

void protocol witness for _LocaleProtocol.collation.getter in conformance _LocaleICU(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.collation.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

void protocol witness for _LocaleProtocol.timeZone.getter in conformance _LocaleICU(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock(v3 + 134);
  partial apply for closure #1 in _LocaleICU.timeZone.getter(&v3[4], a1);

  os_unfair_lock_unlock(v3 + 134);
}

void protocol witness for _LocaleProtocol.subdivision.getter in conformance _LocaleICU(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.subdivision.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

void protocol witness for _LocaleProtocol.variant.getter in conformance _LocaleICU(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.variant.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

uint64_t static Locale.windowsLocaleCode(fromIdentifier:)(uint64_t a1, uint64_t a2)
{
  String.utf8CString.getter();
  LCID = uloc_getLCID();

  return LCID;
}

void *static Locale.numberingSystemForLocaleIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::String *a3@<X8>)
{
  specialized static Locale.keywordValue(identifier:key:)(a1, a2, 0x737265626D756ELL, 0xE700000000000000);
  if (v4)
  {

    result = Locale.NumberingSystem.init(localeIdentifier:)(&v13._countAndFlagsBits);
    v6 = v14;
    v7 = v15;
    *a3 = v13;
    a3[1]._countAndFlagsBits = v6;
    a3[1]._object = v7;
  }

  else
  {
    result = static Locale.NumberingSystem.defaultNumberingSystem(for:)(&v13);
    object = v13._object;
    if (v13._object)
    {
      v10 = v14;
      v9 = v15;
      a3->_countAndFlagsBits = v13._countAndFlagsBits;
      a3->_object = object;
      a3[1]._countAndFlagsBits = v10;
      a3[1]._object = v9;
    }

    else
    {
      if (one-time initialization token for latn != -1)
      {
        swift_once();
      }

      v11 = unk_1EA7AE6E0;
      v12 = xmmword_1EA7AE6E8;
      a3->_countAndFlagsBits = static Locale.NumberingSystem.latn;
      a3->_object = v11;
      a3[1] = v12;
    }
  }

  return result;
}

id static Locale.localeIdentifierByReplacingLanguageCodeAndScriptCode(localeIDWithDesiredLangCode:localeIDWithDesiredComponents:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v615 = *MEMORY[0x1E69E9840];
  String.utf8CString.getter();
  v9 = uloc_addLikelySubtags();

  if (v9 <= 0)
  {
    return 0;
  }

  v614[v9] = 0;
  v10 = MEMORY[0x1865CAEB0](v614);
  if (!v11)
  {
    return 0;
  }

  v12 = v10;
  v13 = v11;
  v373 = v2;
  memset(v613, 0, 96);
  outlined destroy of Locale.Language.Components(v613);
  LODWORD(v562._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v15 = 0;
  v16 = 0;
  if (Language > 0)
  {
    v612[Language] = 0;
    v15 = MEMORY[0x1865CAEB0](v612, 0);
  }

  v419 = v16;
  v375 = v4;
  v371 = v8;
  v372 = v6;
  LODWORD(v562._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Script = uloc_getScript();

  v18 = 0;
  v19 = 0;
  if (Script > 0)
  {
    v611[Script] = 0;
    v18 = MEMORY[0x1865CAEB0](v611);
    v19 = v20;
  }

  LODWORD(v562._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Country = uloc_getCountry();

  v22 = 0;
  v438 = v15;
  v23 = 0;
  if (Country > 0)
  {
    v610[Country] = 0;
    v22 = MEMORY[0x1865CAEB0](v610, 0);
  }

  v417 = v23;
  if (!v419)
  {
    v438 = 0;
    countAndFlagsBits = 0;
    object = 0;
    v435 = v12;
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_14:
    v18 = 0;
    v423 = 0;
    v421 = 0;
    goto LABEL_15;
  }

  v24 = String.lowercased()();
  countAndFlagsBits = v24._countAndFlagsBits;
  object = v24._object;
  v435 = v12;
  if (!v19)
  {
    goto LABEL_14;
  }

LABEL_11:
  v562._countAndFlagsBits = v18;
  v562._object = v19;

  String.init<A>(_:)();
  v25 = String._capitalized()();
  v423 = v25._countAndFlagsBits;
  v421 = v25._object;

LABEL_15:
  v411 = v19;
  if (v417)
  {
    v27 = v22;
    v28 = v417;
    v29 = String.uppercased()();
    v30 = v29._countAndFlagsBits;
    v31 = v29._object;
  }

  else
  {
    v27 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
  }

  v382 = v31;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  v609[0] = v438;
  v609[1] = v419;
  v609[2] = countAndFlagsBits;
  v609[3] = object;
  v609[4] = v18;
  v609[5] = v411;
  v609[6] = v423;
  v609[7] = v421;
  v609[8] = v27;
  v609[9] = v28;
  v609[10] = v30;
  v609[11] = v31;
  outlined copy of Locale.LanguageCode?(v438, v419, countAndFlagsBits, object);
  outlined copy of Locale.LanguageCode?(v18, v411, v423, v421);
  v392 = v27;
  outlined copy of Locale.LanguageCode?(v27, v28, v30, v31);
  outlined destroy of Locale.Language.Components(v609);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);

  v32 = specialized _withFixedCharBuffer(size:_:)(257, v435, v13);
  v34 = v33;

  v390 = v30;
  v380 = v34;
  if (v34)
  {
    v388 = v32;
    v35 = String.lowercased()();
    v386 = v35._countAndFlagsBits;
    v384 = v35._object;
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  }

  else
  {
    v388 = 0;
    v386 = 0;
    v384 = 0;
  }

  String.utf8CString.getter();
  v36 = uloc_openKeywords();

  v398 = v18;
  if (!v36)
  {

    v51 = 0;
    v49 = 0;
    v50 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v45 = 0;
    v41 = 0;
    v394 = 0;
    v88 = 0;
    v87 = 0;
    v48 = 0;
    v47 = 0;
    v44 = 0;
    v46 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v43 = 0;
    v425 = 0;
    v429 = 4;
    v59 = 7;
    v64 = 27;
    goto LABEL_24;
  }

  type metadata accessor for ICU.Enumerator();
  *(swift_allocObject() + 16) = v36;
  LODWORD(v562._countAndFlagsBits) = 0;
  LODWORD(v494._countAndFlagsBits) = 0;
  v37 = uenum_next();
  v82 = 0;
  v83 = 0;
  v338 = 0;
  v340 = 0;
  v341 = 0;
  v343 = 0;
  v345 = 0;
  v347 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v89 = 0;
  v394 = 0;
  v90 = 0;
  v349 = 0;
  v351 = 0;
  v353 = 0;
  v355 = 0;
  v357 = 0;
  v359 = 0;
  v365 = 0;
  v367 = 0;
  v91 = 0;
  v369 = 27;
  v361 = 7;
  v363 = 0;
  countAndFlagsBits_low = 4;
  while (v37)
  {
    v403 = v83;
    v405 = v84;
    v407 = v85;
    v409 = v86;
    v401 = v90;
    v93 = String.init(cString:)();
    static Locale.legacyKey(forKey:)(v93, v94, &v562._countAndFlagsBits);

    v95 = v562._object;
    if (v562._object)
    {
      v430 = countAndFlagsBits_low;
      v426 = v82;
      v396 = v91;
      v376 = v87;
      v96 = v88;
      v378 = v89;
      v97 = v562._countAndFlagsBits;
      LODWORD(v562._countAndFlagsBits) = 0;
      String.utf8CString.getter();
      String.utf8CString.getter();
      KeywordValue = uloc_getKeywordValue();

      if (SLODWORD(v562._countAndFlagsBits) <= 0 && KeywordValue > 0 && (v450[KeywordValue] = 0, v99 = MEMORY[0x1865CAEB0](v450), v100))
      {
        v101 = v99;
        v89 = v100;
        if ((v97 != 0x7261646E656C6163 || v95 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v336 = v101;
          countAndFlagsBits_low = v430;
          if (v97 == 0x6F6974616C6C6F63 && v95 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v103 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v363, v91, v367, v365);
            v363 = v336;
            v365 = v103._object;
            v91 = v89;
            v367 = v103._countAndFlagsBits;
            goto LABEL_59;
          }

          if (v97 == 0x79636E6572727563 && v95 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v104 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v359, v357, v355, v353);
            v357 = v89;
            v359 = v336;
            v353 = v104._object;
            v355 = v104._countAndFlagsBits;
            goto LABEL_59;
          }

          if (v97 == 0x737265626D756ELL && v95 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v105 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v351, v349, v347, v401);
            v349 = v89;
            v351 = v336;
            v347 = v105._countAndFlagsBits;
            v90 = v105._object;
          }

          else
          {
            if (v97 == 30566 && v95 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v616._countAndFlagsBits = v336;
              v616._object = v89;
              Locale.Weekday.init(rawValue:)(&v562._countAndFlagsBits, v616);
              v361 = v562._countAndFlagsBits;
            }

            else
            {
              if ((v97 != 0x7372756F68 || v95 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                if (v97 == 0x6572757361656DLL && v95 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  if (v336 == 0x6C61697265706D69 && v89 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    if (one-time initialization token for uk != -1)
                    {
                      swift_once();
                    }

                    v106 = static Locale.MeasurementSystem.uk;
                    v89 = *algn_1EA7AFAD8;
                    v87 = *(&xmmword_1EA7AFAE0 + 1);
                    v107 = xmmword_1EA7AFAE0;

                    outlined consume of Locale.LanguageCode?(v394, v378, v96, v376);
                    v394 = v106;
                    v88 = v107;
                  }

                  else
                  {
                    v113 = String.lowercased()();
                    v87 = v113._object;
                    outlined consume of Locale.LanguageCode?(v394, v378, v88, v376);
                    v394 = v336;
                    v88 = v113._countAndFlagsBits;
                  }

                  v90 = v401;
LABEL_108:
                  v91 = v396;
                  v82 = v426;
LABEL_109:
                  countAndFlagsBits_low = v430;
                  goto LABEL_43;
                }

                if (v97 == 26482 && v95 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  if (String.count.getter() > 2)
                  {
                    specialized Collection.prefix(_:)(2, v336, v89);

                    v108 = Substring.uppercased()();

                    v562 = v108;
                    v109 = String.init<A>(_:)();
                    v111 = v110;
                    v112 = String.uppercased()();
                    outlined consume of Locale.LanguageCode?(v409, v407, v405, v345);
                    v409 = v109;
                    v407 = v111;
                    v405 = v112._countAndFlagsBits;
                    v345 = v112._object;
LABEL_107:
                    v90 = v401;
                    v89 = v378;
                    v87 = v376;
                    goto LABEL_108;
                  }

LABEL_106:

                  goto LABEL_107;
                }

                if (v97 == 25715 && v95 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v114 = String.lowercased()();
                  outlined consume of Locale.LanguageCode?(v343, v341, v340, v338);
                  v341 = v89;
                  v343 = v336;
                  v338 = v114._object;
                  v340 = v114._countAndFlagsBits;
                  goto LABEL_107;
                }

                if (v97 == 0x656E6F7A656D6974 && v95 == 0xE800000000000000)
                {
                }

                else
                {
                  v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v116 & 1) == 0)
                  {
                    goto LABEL_106;
                  }
                }

                if (one-time initialization token for cache != -1)
                {
                  v115 = swift_once();
                }

                v117 = static TimeZoneCache.cache;
                MEMORY[0x1EEE9AC00](v115);
                os_unfair_lock_lock(v117 + 30);
                closure #1 in TimeZoneCache.fixed(_:)partial apply(&v562._countAndFlagsBits);
                os_unfair_lock_unlock(v117 + 30);
                v118 = v562._countAndFlagsBits;
                v119 = v562._object;

                if (!v118)
                {
                  v119 = 0;
                }

                swift_unknownObjectRelease();
                v403 = v118;
                v90 = v401;
                v89 = v378;
                v82 = v119;
                v87 = v376;
                v91 = v396;
                goto LABEL_109;
              }

              v617._countAndFlagsBits = v336;
              v617._object = v89;
              Locale.HourCycle.init(rawValue:)(&v562._countAndFlagsBits, v617);
              countAndFlagsBits_low = LOBYTE(v562._countAndFlagsBits);
            }

LABEL_59:
            v90 = v401;
          }

          v89 = v378;
          v87 = v376;
          v82 = v426;
          goto LABEL_43;
        }

        v102._countAndFlagsBits = v101;
        v102._object = v89;
        Calendar.Identifier.init(identifierString:)(v102);
        v369 = v562._countAndFlagsBits;
        v90 = v401;
        v89 = v378;
        v87 = v376;
      }

      else
      {

        v90 = v401;
        v89 = v378;
        v87 = v376;
      }

      v82 = v426;
      countAndFlagsBits_low = v430;
    }

    else
    {
      v90 = v401;
    }

LABEL_43:
    LODWORD(v562._countAndFlagsBits) = 0;
    LODWORD(v494._countAndFlagsBits) = 0;
    v37 = uenum_next();
    v86 = v409;
    v85 = v407;
    v84 = v405;
    v83 = v403;
    if (SLODWORD(v562._countAndFlagsBits) > 0)
    {
      break;
    }
  }

  v429 = countAndFlagsBits_low;
  v425 = v82;
  v395 = v91;
  v38 = v86;
  v39 = v85;
  v40 = v84;
  v41 = v90;
  v42 = v83;

  v43 = v42;
  v36 = v89;
  v44 = v40;
  v46 = v345;
  v45 = v347;
  v47 = v39;
  v48 = v38;
  v49 = v395;
  v50 = v367;
  v51 = v363;
  v52 = v365;
  v54 = v357;
  v53 = v359;
  v56 = v353;
  v55 = v355;
  v58 = v349;
  v57 = v351;
  v59 = v361;
  v61 = v341;
  v60 = v343;
  v63 = v338;
  v62 = v340;
  v64 = v369;
LABEL_24:
  v563 = countAndFlagsBits;
  v564 = object;
  v569 = v392;
  v570 = v417;
  v571 = v390;
  v572 = v382;
  v573 = v64;
  v575 = v51;
  v576 = v49;
  *v574 = *v449;
  *&v574[3] = *&v449[3];
  v562._countAndFlagsBits = v438;
  v562._object = v419;
  v565 = v398;
  v566 = v411;
  v567 = v423;
  v568 = v421;
  v577 = v50;
  v578 = v52;
  v579 = v53;
  v580 = v54;
  v581 = v55;
  v582 = v56;
  v583 = v57;
  v584 = v58;
  v585 = v45;
  v586 = v41;
  v587 = v59;
  v588 = v429;
  v590 = v448;
  v589 = v447;
  v591 = v394;
  v592 = v36;
  v593 = v88;
  v594 = v87;
  v595 = v48;
  v596 = v47;
  v597 = v44;
  v598 = v46;
  v599 = v60;
  v600 = v61;
  v601 = v62;
  v602 = v63;
  v603 = v43;
  v604 = v425;
  v605 = v388;
  v606 = v380;
  v607 = v386;
  v608 = v384;
  if (!v419 || !v411)
  {
    v81 = &v562;
LABEL_38:
    outlined destroy of Locale.Components(v81);
    return 0;
  }

  v494._countAndFlagsBits = v438;
  v494._object = v419;
  outlined copy of Locale.LanguageCode?(v398, v411, v423, v421);

  MEMORY[0x1865CB0E0](45, 0xE100000000000000);

  outlined consume of Locale.LanguageCode?(v398, v411, v423, v421);
  MEMORY[0x1865CB0E0](v398, v411);

  outlined destroy of Locale.Components(&v562);
  v65 = v494._countAndFlagsBits;
  v66 = v494._object;
  String.utf8CString.getter();
  v67 = uloc_addLikelySubtags();

  if (v67 <= 0 || (v561[v67] = 0, v68 = MEMORY[0x1865CAEB0](v561), !v69))
  {

    return 0;
  }

  v70 = v68;
  v71 = v69;
  memset(v560, 0, 96);
  outlined destroy of Locale.Language.Components(v560);
  LODWORD(v494._countAndFlagsBits) = 0;
  v436 = v71;
  String.utf8CString.getter();
  v72 = uloc_getLanguage();

  v73 = 0;
  v74 = 0;
  if (SLODWORD(v494._countAndFlagsBits) <= 0 && v72 > 0)
  {
    v559[v72] = 0;
    v73 = MEMORY[0x1865CAEB0](v559, 0);
  }

  v416 = v74;
  LODWORD(v494._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v75 = uloc_getScript();

  v76 = 0;
  v77 = 0;
  if (SLODWORD(v494._countAndFlagsBits) <= 0 && v75 > 0)
  {
    v558[v75] = 0;
    v76 = MEMORY[0x1865CAEB0](v558, 0);
  }

  v412 = v77;
  v414 = v76;
  LODWORD(v494._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v78 = uloc_getCountry();

  v79 = 0;
  if (SLODWORD(v494._countAndFlagsBits) > 0)
  {
    v439 = 0;
  }

  else
  {
    v439 = 0;
    if (v78 > 0)
    {
      v557[v78] = 0;
      v79 = MEMORY[0x1865CAEB0](v557);
      v439 = v80;
    }
  }

  if (v416)
  {
    v393 = String.lowercased()();
    v120 = v412;
    if (v412)
    {
      goto LABEL_113;
    }

LABEL_115:
    v414 = 0;
    v391 = 0uLL;
  }

  else
  {
    v73 = 0;
    v393 = 0uLL;
    v120 = v412;
    if (!v412)
    {
      goto LABEL_115;
    }

LABEL_113:
    v494._countAndFlagsBits = v414;
    v494._object = v120;

    String.init<A>(_:)();
    v391 = String._capitalized()();
  }

  v397 = v73;
  v399 = v66;
  v427 = v65;
  v431 = v70;
  if (v439)
  {
    v121 = String.uppercased()();
    v122 = v121._countAndFlagsBits;
    v123 = v121._object;
  }

  else
  {
    v79 = 0;
    v122 = 0;
    v123 = 0;
  }

  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  v548[0] = v397;
  v548[1] = v416;
  v549 = v393;
  v550 = v414;
  v551 = v412;
  v552 = v391;
  v553 = v79;
  v554 = v439;
  v555 = v122;
  v556 = v123;
  outlined copy of Locale.LanguageCode?(v397, v416, v393, *(&v393 + 1));
  outlined copy of Locale.LanguageCode?(v414, v412, v391, *(&v391 + 1));
  v370 = v79;
  v385 = v122;
  v368 = v123;
  outlined copy of Locale.LanguageCode?(v79, v439, v122, v123);
  outlined destroy of Locale.Language.Components(v548);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  LODWORD(v494._countAndFlagsBits) = 0;
  v124 = v70;
  v125 = v436;
  String.utf8CString.getter();
  Variant = uloc_getVariant();

  if (SLODWORD(v494._countAndFlagsBits) > 0 || Variant <= 0)
  {
    v319 = 0;
    v352 = 0;
    v332 = 0;
    v333 = 0;
  }

  else
  {
    v547[Variant] = 0;
    v127 = MEMORY[0x1865CAEB0](v547);
    if (v128)
    {
      v319 = v127;
      v352 = v128;
      v129 = String.lowercased()();
      v332 = v129._object;
      v333 = v129._countAndFlagsBits;
      outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    }

    else
    {
      v319 = 0;
      v352 = 0;
      v332 = 0;
      v333 = 0;
    }
  }

  String.utf8CString.getter();
  v130 = uloc_openKeywords();

  if (!v130)
  {

    v330 = 0;
    v331 = 0;
    v364 = 0;
    v366 = 0;
    v360 = 0;
    v362 = 0;
    v377 = 0;
    v344 = 0;
    v346 = 0;
    v379 = 0;
    v402 = 0;
    v387 = 0;
    v406 = 0;
    v320 = 0;
    v321 = 0;
    v354 = 0;
    v356 = 0;
    v339 = 0;
    v350 = 0;
    v381 = 0;
    v337 = 0;
    v334 = 0;
    v335 = 0;
    v404 = 0;
    v358 = 4;
    v374 = 7;
    v389 = 27;
    goto LABEL_131;
  }

  type metadata accessor for ICU.Enumerator();
  v374 = 7;
  *(swift_allocObject() + 16) = v130;
  LODWORD(v494._countAndFlagsBits) = 0;
  LODWORD(v451._countAndFlagsBits) = 0;
  v131 = uenum_next();
  if (SLODWORD(v494._countAndFlagsBits) <= 0)
  {
    v334 = 0;
    v335 = 0;
    v404 = 0;
    v337 = 0;
    v354 = 0;
    v356 = 0;
    v320 = 0;
    v321 = 0;
    v344 = 0;
    v346 = 0;
    v381 = 0;
    v350 = 0;
    v339 = 0;
    v406 = 0;
    v387 = 0;
    v402 = 0;
    v379 = 0;
    v362 = 0;
    v364 = 0;
    v360 = 0;
    v330 = 0;
    v331 = 0;
    v377 = 0;
    v366 = 0;
    v389 = 27;
    v374 = 7;
    v358 = 4;
    while (1)
    {
      if (!v131)
      {
        goto LABEL_130;
      }

      v201 = String.init(cString:)();
      static Locale.legacyKey(forKey:)(v201, v202, &v494._countAndFlagsBits);

      v203 = v494._object;
      if (v494._object)
      {
        v204 = v494._countAndFlagsBits;
        v205 = specialized static Locale.keywordValue(identifier:key:)(v124, v125, v494._countAndFlagsBits, v494._object);
        if (v206)
        {
          v207 = v205;
          v208 = v206;
          if (v204 == 0x7261646E656C6163 && v203 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v209._countAndFlagsBits = v207;
            v209._object = v208;
            Calendar.Identifier.init(identifierString:)(v209);
            v389 = LOBYTE(v494._countAndFlagsBits);
          }

          else if (v204 == 0x6F6974616C6C6F63 && v203 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v210 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v331, v366, v362, v377);
            v331 = v207;
            v366 = v208;
            v362 = v210._countAndFlagsBits;
            v377 = v210._object;
          }

          else if (v204 == 0x79636E6572727563 && v203 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v211 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v330, v360, v344, v364);
            v330 = v207;
            v360 = v208;
            v344 = v211._countAndFlagsBits;
            v364 = v211._object;
          }

          else if (v204 == 0x737265626D756ELL && v203 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v212 = String.lowercased()();
            outlined consume of Locale.LanguageCode?(v379, v402, v387, v406);
            v379 = v207;
            v402 = v208;
            v387 = v212._countAndFlagsBits;
            v406 = v212._object;
          }

          else
          {
            if ((v204 != 30566 || v203 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              if (v204 == 0x7372756F68 && v203 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                v619._countAndFlagsBits = v207;
                v619._object = v208;
                Locale.HourCycle.init(rawValue:)(&v494._countAndFlagsBits, v619);
                v358 = v494._countAndFlagsBits;
LABEL_197:
                v125 = v436;
                v124 = v431;
                goto LABEL_169;
              }

              if (v204 == 0x6572757361656DLL && v203 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                if (v207 == 0x6C61697265706D69 && v208 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  if (one-time initialization token for uk != -1)
                  {
                    swift_once();
                  }

                  v214 = static Locale.MeasurementSystem.uk;
                  v213 = *algn_1EA7AFAD8;
                  v215 = xmmword_1EA7AFAE0;

                  outlined consume of Locale.LanguageCode?(v321, v356, v339._countAndFlagsBits, v339._object);
                  v321 = v214;
                  v356 = v213;
                  v339 = v215;
                }

                else
                {
                  v221 = String.lowercased()();
                  outlined consume of Locale.LanguageCode?(v321, v356, v339._countAndFlagsBits, v339._object);
                  v321 = v207;
                  v356 = v208;
                  v339 = v221;
                }

                goto LABEL_197;
              }

              if (v204 == 26482 && v203 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                if (String.count.getter() > 2)
                {
                  specialized Collection.prefix(_:)(2, v207, v208);

                  v216 = Substring.uppercased()();

                  v494 = v216;
                  v217 = String.init<A>(_:)();
                  v219 = v218;
                  v220 = String.uppercased()();
                  outlined consume of Locale.LanguageCode?(v350, v381, v346, v337);
                  v350 = v217;
                  v381 = v219;
                  v346 = v220._countAndFlagsBits;
                  v337 = v220._object;
                  goto LABEL_197;
                }

LABEL_227:

                goto LABEL_197;
              }

              if (v204 == 25715 && v203 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                v222 = String.lowercased()();
                outlined consume of Locale.LanguageCode?(v320, v354, v335._countAndFlagsBits, v335._object);
                v320 = v207;
                v354 = v208;
                v335 = v222;
                goto LABEL_197;
              }

              if (v204 == 0x656E6F7A656D6974 && v203 == 0xE800000000000000)
              {
              }

              else
              {
                v224 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v224 & 1) == 0)
                {
                  goto LABEL_227;
                }
              }

              if (one-time initialization token for cache != -1)
              {
                v223 = swift_once();
              }

              v225 = static TimeZoneCache.cache;
              MEMORY[0x1EEE9AC00](v223);
              os_unfair_lock_lock(v225 + 30);
              closure #1 in TimeZoneCache.fixed(_:)partial apply(&v494._countAndFlagsBits);
              os_unfair_lock_unlock(v225 + 30);
              v226 = v494._countAndFlagsBits;
              v227 = v494._object;

              if (v226)
              {
                v228 = v227;
              }

              else
              {
                v228 = 0;
              }

              v334 = v228;
              swift_unknownObjectRelease();
              v404 = v226;
              goto LABEL_197;
            }

            v618._countAndFlagsBits = v207;
            v618._object = v208;
            Locale.Weekday.init(rawValue:)(&v494._countAndFlagsBits, v618);
            v374 = LOBYTE(v494._countAndFlagsBits);
          }
        }

        else
        {
        }

        v125 = v436;
      }

LABEL_169:
      LODWORD(v494._countAndFlagsBits) = 0;
      LODWORD(v451._countAndFlagsBits) = 0;
      v131 = uenum_next();
      if (SLODWORD(v494._countAndFlagsBits) > 0)
      {
        goto LABEL_130;
      }
    }
  }

  v330 = 0;
  v331 = 0;
  v364 = 0;
  v366 = 0;
  v360 = 0;
  v362 = 0;
  v377 = 0;
  v344 = 0;
  v346 = 0;
  v379 = 0;
  v402 = 0;
  v387 = 0;
  v406 = 0;
  v320 = 0;
  v321 = 0;
  v354 = 0;
  v356 = 0;
  v339 = 0;
  v350 = 0;
  v381 = 0;
  v337 = 0;
  v334 = 0;
  v335 = 0;
  v404 = 0;
  v358 = 4;
  v389 = 27;
LABEL_130:

LABEL_131:
  memset(v546, 0, 96);
  outlined destroy of Locale.Language.Components(v546);
  LODWORD(v494._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v132 = uloc_getLanguage();

  v133 = 0;
  v134 = 0;
  if (SLODWORD(v494._countAndFlagsBits) <= 0 && v132 > 0)
  {
    v545[v132] = 0;
    v133 = MEMORY[0x1865CAEB0](v545);
    v134 = v135;
  }

  LODWORD(v494._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v136 = uloc_getScript();

  v137 = 0;
  v437 = 0;
  if (SLODWORD(v494._countAndFlagsBits) <= 0 && v136 > 0)
  {
    v544[v136] = 0;
    v437 = MEMORY[0x1865CAEB0](v544);
    v137 = v138;
  }

  LODWORD(v494._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  v139 = uloc_getCountry();

  v140 = 0;
  v141 = 0;
  if (SLODWORD(v494._countAndFlagsBits) <= 0 && v139 > 0)
  {
    v543[v139] = 0;
    v140 = MEMORY[0x1865CAEB0](v543);
    v141 = v142;
  }

  if (v134)
  {
    v143 = String.lowercased()();
    v424 = v143._countAndFlagsBits;
    v422 = v143._object;
    if (v137)
    {
      goto LABEL_142;
    }

LABEL_145:
    v437 = 0;
    v420 = 0;
    v418 = 0;
    if (!v141)
    {
      goto LABEL_146;
    }

LABEL_143:
    v145 = String.uppercased()();
    v146 = v145._countAndFlagsBits;
    v147 = v145._object;
  }

  else
  {
    v133 = 0;
    v424 = 0;
    v422 = 0;
    if (!v137)
    {
      goto LABEL_145;
    }

LABEL_142:
    v494._countAndFlagsBits = v437;
    v494._object = v137;

    String.init<A>(_:)();
    v144 = String._capitalized()();
    v420 = v144._countAndFlagsBits;
    v418 = v144._object;

    if (v141)
    {
      goto LABEL_143;
    }

LABEL_146:
    v140 = 0;
    v146 = 0;
    v147 = 0;
  }

  v322 = v147;
  v323 = v141;
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  v542[0] = v133;
  v542[1] = v134;
  v542[2] = v424;
  v542[3] = v422;
  v542[4] = v437;
  v542[5] = v137;
  v542[6] = v420;
  v542[7] = v418;
  v542[8] = v140;
  v542[9] = v141;
  v542[10] = v146;
  v542[11] = v147;
  v410 = v133;
  outlined copy of Locale.LanguageCode?(v133, v134, v424, v422);
  v342 = v137;
  outlined copy of Locale.LanguageCode?(v437, v137, v420, v418);
  v329 = v140;
  outlined copy of Locale.LanguageCode?(v140, v141, v146, v147);
  outlined destroy of Locale.Language.Components(v542);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  LODWORD(v494._countAndFlagsBits) = 0;
  v148 = v399;
  String.utf8CString.getter();
  v149 = uloc_getVariant();

  v328 = v146;
  if (SLODWORD(v494._countAndFlagsBits) <= 0 && v149 > 0 && (v541[v149] = 0, v150 = MEMORY[0x1865CAEB0](v541), v151))
  {
    v326 = v151;
    v327 = v150;
    v152 = String.lowercased()();
    v324 = v152._object;
    v325 = v152._countAndFlagsBits;
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  }

  else
  {
    v326 = 0;
    v327 = 0;
    v324 = 0;
    v325 = 0;
  }

  String.utf8CString.getter();
  v153 = uloc_openKeywords();

  v408 = v134;
  if (!v153)
  {

    v154 = 0;
    v155 = 0;
    v156 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v428 = 0;
    v432 = 0;
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v174 = 0;
    v175 = 0;
    v400 = 0;
    v176 = 0;
    LOBYTE(v177) = 4;
    v178 = 7;
    v179 = 27;
    goto LABEL_158;
  }

  type metadata accessor for ICU.Enumerator();
  v314 = 7;
  *(swift_allocObject() + 16) = v153;
  LODWORD(v494._countAndFlagsBits) = 0;
  LODWORD(v451._countAndFlagsBits) = 0;
  v180 = uenum_next();
  if (SLODWORD(v494._countAndFlagsBits) <= 0)
  {
    v176 = 0;
    v184 = 0;
    v297 = 0;
    v298 = 0;
    v299 = 0;
    v300 = 0;
    v301 = 0;
    v302 = 0;
    v303 = 0;
    v304 = 0;
    v183 = 0;
    v305 = 0;
    v306 = 0;
    v182 = 0;
    v181 = 0;
    v307 = 0;
    v308 = 0;
    v309 = 0;
    v310 = 0;
    v311 = 0;
    v312 = 0;
    v316 = 0;
    v155 = 0;
    v315 = 0;
    v185 = 27;
    v313 = 0;
    v314 = 7;
    v177 = 4;
    while (1)
    {
      if (!v180)
      {
        goto LABEL_157;
      }

      v348 = v185;
      v383 = v183;
      v433 = v182;
      v229 = String.init(cString:)();
      static Locale.legacyKey(forKey:)(v229, v230, &v494._countAndFlagsBits);

      v231 = v494._object;
      if (!v494._object)
      {
        goto LABEL_229;
      }

      v317 = v177;
      v318 = v155;
      v232 = v494._countAndFlagsBits;
      v233 = specialized static Locale.keywordValue(identifier:key:)(v427, v148, v494._countAndFlagsBits, v494._object);
      if (v234)
      {
        v235 = v233;
        v236 = v234;
        if (v232 == 0x7261646E656C6163 && v231 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v237._countAndFlagsBits = v235;
          v237._object = v236;
          Calendar.Identifier.init(identifierString:)(v237);
          v185 = LOBYTE(v494._countAndFlagsBits);
          v183 = v383;
          v155 = v318;
          v177 = v317;
          goto LABEL_230;
        }

        if (v232 == 0x6F6974616C6C6F63 && v231 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v238 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v315, v318, v316._countAndFlagsBits, v316._object);
          v315 = v235;
          v316 = v238;
          v155 = v236;
          v183 = v383;
          v177 = v317;
          goto LABEL_229;
        }

        if (v232 == 0x79636E6572727563 && v231 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v239 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v313, v312, v311, v310);
          v312 = v236;
          v313 = v235;
          v310 = v239._object;
          v311 = v239._countAndFlagsBits;
        }

        else if (v232 == 0x737265626D756ELL && v231 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v240 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v309, v308, v307, v306);
          v308 = v236;
          v309 = v235;
          v306 = v240._object;
          v307 = v240._countAndFlagsBits;
        }

        else
        {
          if ((v232 != 30566 || v231 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (v232 == 0x7372756F68 && v231 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v621._countAndFlagsBits = v235;
              v621._object = v236;
              Locale.HourCycle.init(rawValue:)(&v494._countAndFlagsBits, v621);
              v177 = LOBYTE(v494._countAndFlagsBits);
              v148 = v399;
              v183 = v383;
              v155 = v318;
              goto LABEL_229;
            }

            if (v232 == 0x6572757361656DLL && v231 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (v235 == 0x6C61697265706D69 && v236 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                if (one-time initialization token for uk != -1)
                {
                  swift_once();
                }

                v242 = static Locale.MeasurementSystem.uk;
                v241 = *algn_1EA7AFAD8;
                v183 = *(&xmmword_1EA7AFAE0 + 1);
                v243 = xmmword_1EA7AFAE0;

                outlined consume of Locale.LanguageCode?(v181, v433, v305, v383);
                v181 = v242;
                v433 = v241;
                v305 = v243;
              }

              else
              {
                v249 = String.lowercased()();
                outlined consume of Locale.LanguageCode?(v181, v433, v305, v383);
                v181 = v235;
                v433 = v236;
                v305 = v249._countAndFlagsBits;
                v183 = v249._object;
              }

              v148 = v399;
              goto LABEL_240;
            }

            if (v232 == 26482 && v231 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (String.count.getter() > 2)
              {
                specialized Collection.prefix(_:)(2, v235, v236);

                v244 = Substring.uppercased()();

                v494 = v244;
                v245 = String.init<A>(_:)();
                v247 = v246;
                v248 = String.uppercased()();
                outlined consume of Locale.LanguageCode?(v304, v303, v302, v301);
                v303 = v247;
                v304 = v245;
                v301 = v248._object;
                v302 = v248._countAndFlagsBits;
LABEL_292:
                v148 = v399;
                goto LABEL_239;
              }

LABEL_291:

              goto LABEL_292;
            }

            if (v232 == 25715 && v231 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v250 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v300, v299, v298, v297);
              v299 = v236;
              v300 = v235;
              v297 = v250._object;
              v298 = v250._countAndFlagsBits;
              goto LABEL_292;
            }

            if (v232 == 0x656E6F7A656D6974 && v231 == 0xE800000000000000)
            {
            }

            else
            {
              v252 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v252 & 1) == 0)
              {
                goto LABEL_291;
              }
            }

            if (one-time initialization token for cache != -1)
            {
              v251 = swift_once();
            }

            v253 = static TimeZoneCache.cache;
            MEMORY[0x1EEE9AC00](v251);
            os_unfair_lock_lock(v253 + 30);
            closure #1 in TimeZoneCache.fixed(_:)partial apply(&v494._countAndFlagsBits);
            os_unfair_lock_unlock(v253 + 30);
            v254 = v494._countAndFlagsBits;
            v255 = v494._object;

            if (v254)
            {
              v176 = v255;
            }

            else
            {
              v176 = 0;
            }

            swift_unknownObjectRelease();
            v184 = v254;
            goto LABEL_292;
          }

          v620._countAndFlagsBits = v235;
          v620._object = v236;
          Locale.Weekday.init(rawValue:)(&v494._countAndFlagsBits, v620);
          v314 = v494._countAndFlagsBits;
        }
      }

      else
      {
      }

LABEL_239:
      v183 = v383;
LABEL_240:
      v155 = v318;
      v177 = v317;
LABEL_229:
      v185 = v348;
LABEL_230:
      LODWORD(v494._countAndFlagsBits) = 0;
      LODWORD(v451._countAndFlagsBits) = 0;
      v180 = uenum_next();
      v182 = v433;
      if (SLODWORD(v494._countAndFlagsBits) > 0)
      {
        goto LABEL_157;
      }
    }
  }

  v315 = 0;
  v316 = 0;
  v155 = 0;
  v312 = 0;
  v313 = 0;
  v310 = 0;
  v311 = 0;
  v308 = 0;
  v309 = 0;
  v306 = 0;
  v307 = 0;
  v181 = 0;
  v182 = 0;
  v304 = 0;
  v305 = 0;
  v183 = 0;
  v302 = 0;
  v303 = 0;
  v300 = 0;
  v301 = 0;
  v298 = 0;
  v299 = 0;
  v297 = 0;
  v184 = 0;
  v176 = 0;
  LOBYTE(v177) = 4;
  LOBYTE(v185) = 27;
LABEL_157:
  v400 = v184;
  v432 = v182;
  v428 = v181;
  v179 = v185;

  v157 = v316._object;
  v156 = v316._countAndFlagsBits;
  v159 = v312;
  v158 = v313;
  v161 = v310;
  v160 = v311;
  v163 = v308;
  v162 = v309;
  v165 = v306;
  v164 = v307;
  v169 = v303;
  v168 = v304;
  v178 = v314;
  v154 = v315;
  v171 = v301;
  v170 = v302;
  v173 = v299;
  v172 = v300;
  v167 = v183;
  v175 = v297;
  v174 = v298;
  v166 = v305;
LABEL_158:
  v501 = v329;
  v502 = v323;
  v503 = v328;
  v504 = v322;
  v505 = v179;
  v507 = v154;
  v508 = v155;
  *v506 = *v443;
  *&v506[3] = *&v443[3];
  v509 = v156;
  v494._countAndFlagsBits = v410;
  v494._object = v408;
  v495 = v424;
  v496 = v422;
  v186 = v437;
  v497 = v437;
  v498 = v342;
  v499 = v420;
  v500 = v418;
  v510 = v157;
  v511 = v158;
  v512 = v159;
  v513 = v160;
  v514 = v161;
  v515 = v162;
  v516 = v163;
  v517 = v164;
  v518 = v165;
  v519 = v178;
  v520 = v177;
  v522 = v442;
  v521 = v441;
  v523 = v428;
  v524 = v432;
  v525 = v166;
  v526 = v167;
  v527 = v168;
  v528 = v169;
  v529 = v170;
  v530 = v171;
  v531 = v172;
  v532 = v173;
  v533 = v174;
  v534 = v175;
  v535 = v400;
  v536 = v176;
  v537 = v327;
  v538 = v326;
  v539 = v325;
  v540 = v324;
  if (!v408 || !v342)
  {
    outlined destroy of Locale.Components(&v494);
    v451._countAndFlagsBits = v397;
    v451._object = v416;
    v452 = v393;
    v453 = v414;
    v454 = v412;
    v455 = v391;
    v456 = v370;
    v457 = v439;
    v458 = v385;
    v459 = v368;
    v460 = v389;
    v462 = v331;
    v463 = v366;
    *v461 = *v446;
    *&v461[3] = *&v446[3];
    v464 = v362;
    v465 = v377;
    v466 = v330;
    v467 = v360;
    v468 = v344;
    v469 = v364;
    v470 = v379;
    v471 = v402;
    v472 = v387;
    v473 = v406;
    v474 = v374;
    v475 = v358;
    v477 = v445;
    v476 = v444;
    v478 = v321;
    v479 = v356;
    v480 = v339;
    v481 = v350;
    v482 = v381;
    v483 = v346;
    v484 = v337;
    v485 = v320;
    v486 = v354;
    v487 = v335;
    v488 = v404;
    v489 = v334;
    v490 = v319;
    v491 = v352;
    v492 = v333;
    v493 = v332;
    v81 = &v451;
    goto LABEL_38;
  }

  v187 = v342;
  outlined copy of Locale.LanguageCode?(v410, v408, v424, v422);
  outlined copy of Locale.LanguageCode?(v437, v342, v420, v418);
  outlined consume of Locale.LanguageCode?(v397, v416, v393, *(&v393 + 1));
  outlined consume of Locale.LanguageCode?(v414, v412, v391, *(&v391 + 1));
  static Locale.numberingSystemForLocaleIdentifier(_:)(v375, v373, &v451);
  v188 = v451._countAndFlagsBits;
  v189 = v451._object;
  v191 = v452._object;
  v190 = v452._countAndFlagsBits;
  v192 = specialized static Locale.NumberingSystem.validNumberingSystems(for:)(v371, v372);
  v193 = specialized Collection<>.firstIndex(of:)(v188, v189, v190, v191, v192);
  LOBYTE(v190) = v194;

  if (v190)
  {

    outlined consume of Locale.LanguageCode?(v379, v402, v387, v406);
    v379 = 0;
    v402 = 0;
    v387 = 0;
    v406 = 0;
    v195 = v408;
  }

  else
  {
    v195 = v408;
    if (v193)
    {
      if (v193 < 1)
      {
      }

      else
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
        v196 = &v192[32 * v193];
        v198 = *(v196 + 4);
        v197 = *(v196 + 5);
        v200 = *(v196 + 6);
        v199 = *(v196 + 7);

        outlined consume of Locale.LanguageCode?(v379, v402, v387, v406);
        v379 = v198;
        v402 = v197;
        v387 = v200;
        v406 = v199;
      }
    }

    else
    {

      outlined consume of Locale.LanguageCode?(v379, v402, v387, v406);
      v379 = 0;
      v402 = 0;
      v387 = 0;
      v406 = 0;
    }
  }

  v256 = MEMORY[0x1E69E7CC0];
  v440 = MEMORY[0x1E69E7CC0];
  if (v389 != 27)
  {
    LOBYTE(v451._countAndFlagsBits) = v389;
    v257 = Calendar.Identifier.cldrIdentifier.getter();
    v259 = v258;
    v256 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v261 = v256[2];
    v260 = v256[3];
    if (v261 >= v260 >> 1)
    {
      v256 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v260 > 1), v261 + 1, 1, v256);
    }

    v256[2] = v261 + 1;
    v262 = &v256[4 * v261];
    v262[4] = 0x7261646E656C6163;
    v262[5] = 0xE800000000000000;
    v262[6] = v257;
    v262[7] = v259;
    v440 = v256;
  }

  v263 = v410;
  if (!v366)
  {
    goto LABEL_304;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_358;
  }

  while (1)
  {
    v264 = v256[2];
    v265 = v256[3];
    if (v264 >= v265 >> 1)
    {
      v295 = v256[2];
      v256 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v265 > 1), v264 + 1, 1, v256);
      v264 = v295;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v264, 0x6F6974616C6C6F63, 0xE90000000000006ELL, v362, v377);
    v440 = v256;
LABEL_304:
    if (v360)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v256 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v256[2] + 1, 1, v256);
      }

      v266 = v256[2];
      v267 = v256[3];
      if (v266 >= v267 >> 1)
      {
        v296 = v256[2];
        v256 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v267 > 1), v266 + 1, 1, v256);
        v266 = v296;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v266, 0x79636E6572727563, 0xE800000000000000, v344, v364);
      v440 = v256;
    }

    if (v402)
    {

      v440 = v256;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v256 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v256[2] + 1, 1, v256);
        v440 = v256;
      }

      v268 = v256[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v268);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v268, 0x737265626D756ELL, 0xE700000000000000, v387, v406);
      v256 = v440;
    }

    if (v374 != 7)
    {
      LOBYTE(v451._countAndFlagsBits) = v374;
      v269 = Locale.Weekday.rawValue.getter();
      v271 = v270;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v272 = v440[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v272);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v272, 30566, 0xE200000000000000, v269, v271);
      v256 = v440;
    }

    if (v358 <= 1u)
    {
      v273 = 3223912;
      if (v358)
      {
        v273 = 3289448;
      }
    }

    else if (v358 == 2)
    {
      v273 = 3355240;
    }

    else
    {
      if (v358 != 3)
      {
        goto LABEL_324;
      }

      v273 = 3420776;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v274 = v440[2];
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v274);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v274, 0x7372756F68, 0xE500000000000000, v273, 0xE300000000000000);
    v256 = v440;
LABEL_324:
    if (v356)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v275 = v440[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v275);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v275, 0x6572757361656DLL, 0xE700000000000000, v339._countAndFlagsBits, v339._object);
      v256 = v440;
    }

    if (v381)
    {
      if (!v439)
      {
        outlined copy of Locale.LanguageCode?(v350, v381, v346, v337);
        outlined copy of Locale.LanguageCode?(v370, 0, v385, v368);
        outlined copy of Locale.LanguageCode?(v350, v381, v346, v337);

        v263 = v410;
        outlined consume of Locale.LanguageCode?(v350, v381, v346, v337);
        v187 = v342;
        outlined consume of Locale.LanguageCode?(v370, 0, v385, v368);
LABEL_333:
        v451._countAndFlagsBits = v350;
        v451._object = v381;

        MEMORY[0x1865CB0E0](2054847098, 0xE400000000000000);
        v276 = String.lowercased()();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v277 = v440[2];
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v277);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v277, 26482, 0xE200000000000000, v276._countAndFlagsBits, v276._object);
        v256 = v440;
        goto LABEL_334;
      }

      v437 = v186;
      if (v346 == v385 && v337 == v368)
      {
        outlined copy of Locale.LanguageCode?(v350, v381, v385, v368);
        outlined copy of Locale.LanguageCode?(v370, v439, v385, v368);
        outlined copy of Locale.LanguageCode?(v350, v381, v385, v368);
        outlined consume of Locale.LanguageCode?(v370, v439, v385, v368);

        outlined consume of Locale.LanguageCode?(v350, v381, v385, v368);
        v263 = v410;
        v187 = v342;
        goto LABEL_334;
      }

      v434 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of Locale.LanguageCode?(v350, v381, v346, v337);
      outlined copy of Locale.LanguageCode?(v370, v439, v385, v368);
      outlined copy of Locale.LanguageCode?(v350, v381, v346, v337);
      outlined consume of Locale.LanguageCode?(v370, v439, v385, v368);

      v195 = v408;
      outlined consume of Locale.LanguageCode?(v350, v381, v346, v337);
      v263 = v410;
      v187 = v342;
      if ((v434 & 1) == 0)
      {
        goto LABEL_333;
      }
    }

LABEL_334:
    if (v354)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v278 = v440[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v278);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v278, 25715, 0xE200000000000000, v335._countAndFlagsBits, v335._object);
      v256 = v440;
    }

    if (v404)
    {
      ObjectType = swift_getObjectType();
      v280 = v334[4](ObjectType);
      v282 = v281;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v283 = v440[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v283);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v283, 0x656E6F7A656D6974, 0xE800000000000000, v280, v282);
      v256 = v440;
    }

    if (v352)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v284 = v440[2];
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v284);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v284, 24950, 0xE200000000000000, v333, v332);
      v256 = v440;
    }

    v451._countAndFlagsBits = v263;
    v451._object = v195;
    v452._countAndFlagsBits = v424;
    v452._object = v422;
    v453 = v186;
    v454 = v187;
    v455._countAndFlagsBits = v420;
    v455._object = v418;
    v456 = v370;
    v457 = v439;
    v458 = v385;
    v459 = v368;
    Locale.Language.Components.identifier.getter();
    v285 = specialized Array.count.getter();
    if (v285 >= 1)
    {
      MEMORY[0x1865CB0E0](64, 0xE100000000000000);
    }

    v286 = v256[2];
    if (!v286)
    {
      break;
    }

    v263 = 0;
    v186 = v285 - 1;
    v195 = __OFSUB__(v285, 1);
    v287 = v256 + 7;
    while (v263 < v286)
    {
      v289 = *(v287 - 1);
      v288 = *v287;
      v290 = *(v287 - 2);
      v451._countAndFlagsBits = *(v287 - 3);
      v451._object = v290;

      MEMORY[0x1865CB0E0](61, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v289, v288);

      MEMORY[0x1865CB0E0](v451._countAndFlagsBits, v451._object);

      if (v195)
      {
        goto LABEL_357;
      }

      if (v186 != v263)
      {
        MEMORY[0x1865CB0E0](59, 0xE100000000000000);
      }

      ++v263;
      v286 = v256[2];
      v287 += 4;
      if (v263 == v286)
      {
        goto LABEL_352;
      }
    }

    __break(1u);
LABEL_357:
    __break(1u);
LABEL_358:
    v256 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v256[2] + 1, 1, v256);
  }

LABEL_352:

  v291 = *MEMORY[0x1E695E4A8];
  v292 = String._bridgeToObjectiveCImpl()();

  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(v291, v292);
  swift_unknownObjectRelease();
  if (CanonicalLocaleIdentifierFromString)
  {
    v294 = static String._unconditionallyBridgeFromObjectiveC(_:)(CanonicalLocaleIdentifierFromString);
    outlined destroy of Locale.Components(&v494);
  }

  else
  {
    outlined destroy of Locale.Components(&v494);
    v294 = 0;
  }

  v451._countAndFlagsBits = v410;
  v451._object = v408;
  v452._countAndFlagsBits = v424;
  v452._object = v422;
  v453 = v437;
  v454 = v187;
  v455._countAndFlagsBits = v420;
  v455._object = v418;
  v456 = v370;
  v457 = v439;
  v458 = v385;
  v459 = v368;
  v460 = v389;
  v462 = v331;
  v463 = v366;
  *v461 = *v446;
  *&v461[3] = *&v446[3];
  v464 = v362;
  v465 = v377;
  v466 = v330;
  v467 = v360;
  v468 = v344;
  v469 = v364;
  v470 = v379;
  v471 = v402;
  v472 = v387;
  v473 = v406;
  v474 = v374;
  v475 = v358;
  v477 = v445;
  v476 = v444;
  v478 = v321;
  v479 = v356;
  v480 = v339;
  v481 = v350;
  v482 = v381;
  v483 = v346;
  v484 = v337;
  v485 = v320;
  v486 = v354;
  v487 = v335;
  v488 = v404;
  v489 = v334;
  v490 = v319;
  v491 = v352;
  v492 = v333;
  v493 = v332;
  outlined destroy of Locale.Components(&v451);
  return v294;
}

uint64_t specialized static _LocaleICU.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v255 = *(a1 + 32);
  v256 = v2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 80);
  v257 = *(a1 + 64);
  v258 = v5;
  v6 = *(a1 + 16);
  v254[0] = *a1;
  v254[1] = v6;
  v7 = *(a1 + 104);
  v215 = *(a1 + 96);
  v8 = *(a1 + 120);
  v216 = *(a1 + 112);
  v205 = *(a1 + 128);
  v204 = *(a1 + 136);
  v206 = *(a1 + 144);
  v207 = *(a1 + 152);
  v202 = *(a1 + 160);
  v208 = *(a1 + 168);
  v209 = *(a1 + 176);
  v200 = *(a1 + 184);
  v196 = *(a1 + 192);
  v193 = *(a1 + 200);
  v9 = *(a2 + 16);
  v10 = *(a2 + 48);
  v260 = *(a2 + 32);
  v261 = v10;
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  v262 = *(a2 + 64);
  v263 = v12;
  v13 = *(a2 + 16);
  v259[0] = *a2;
  v259[1] = v13;
  v14 = *(a1 + 208);
  v15 = *(a1 + 224);
  v251 = v4;
  v252 = v257;
  v253 = *(a1 + 80);
  v16 = *(a1 + 240);
  v187 = *(a1 + 256);
  v192 = *(a1 + 257);
  v184 = *(a1 + 264);
  v190 = *(a1 + 272);
  v185 = *(a1 + 273);
  v178 = *(a1 + 280);
  v180 = *(a1 + 288);
  v182 = *(a1 + 296);
  v181 = *(a1 + 304);
  v171 = *(a1 + 312);
  v169 = *(a1 + 328);
  v167 = *(a1 + 336);
  v165 = *(a1 + 320);
  v166 = *(a1 + 344);
  v250 = v255;
  v249 = v3;
  v248 = *(a2 + 80);
  v17 = *(a2 + 240);
  v247 = v262;
  v246 = v11;
  v244 = v9;
  v245 = v260;
  v161 = *(a1 + 360);
  v159 = *(a1 + 368);
  v157 = *(a1 + 352);
  v158 = *(a1 + 376);
  v153 = *(a1 + 384);
  v151 = *(a1 + 392);
  v18 = *(a1 + 400);
  v19 = *(a1 + 408);
  v21 = *(a1 + 416);
  v20 = *(a1 + 424);
  v22 = *(a1 + 440);
  v145 = *(a1 + 432);
  v24 = *(a1 + 448);
  v23 = *(a1 + 456);
  v25 = *(a1 + 464);
  v26 = *(a1 + 472);
  v28 = *(a1 + 480);
  v27 = *(a1 + 488);
  v30 = *(a1 + 496);
  v29 = *(a1 + 504);
  v31 = *(a1 + 512);
  v32 = *(a2 + 96);
  v33 = *(a2 + 104);
  v34 = *(a2 + 112);
  v214 = *(a2 + 120);
  v203 = *(a2 + 128);
  v213 = *(a2 + 136);
  v211 = *(a2 + 144);
  v210 = *(a2 + 152);
  v199 = *(a2 + 160);
  v198 = *(a2 + 168);
  v201 = *(a2 + 176);
  v197 = *(a2 + 184);
  v195 = *(a2 + 192);
  v194 = *(a2 + 200);
  v172 = *(a2 + 208);
  v173 = *(a2 + 216);
  v174 = *(a2 + 224);
  v175 = *(a2 + 232);
  v188 = *(a2 + 256);
  v191 = *(a2 + 257);
  v183 = *(a2 + 264);
  v189 = *(a2 + 272);
  v186 = *(a2 + 273);
  v177 = *(a2 + 280);
  v179 = *(a2 + 288);
  v212 = *(a2 + 296);
  v176 = *(a2 + 304);
  v170 = *(a2 + 312);
  v168 = *(a2 + 328);
  v164 = *(a2 + 336);
  v162 = *(a2 + 320);
  v163 = *(a2 + 344);
  v160 = *(a2 + 360);
  v156 = *(a2 + 368);
  v154 = *(a2 + 352);
  v155 = *(a2 + 376);
  v152 = *(a2 + 384);
  v149 = *(a2 + 408);
  v150 = *(a2 + 392);
  v147 = *(a2 + 400);
  v148 = *(a2 + 416);
  v146 = *(a2 + 424);
  v143 = *(a2 + 440);
  v144 = *(a2 + 432);
  v141 = *(a2 + 448);
  v142 = *(a2 + 456);
  v138 = *(a2 + 464);
  v139 = *(a2 + 472);
  v35 = *(a2 + 488);
  v140 = *(a2 + 480);
  v37 = *(a2 + 496);
  v36 = *(a2 + 504);
  v38 = *(a2 + 512);
  v39 = v254[0];
  v40 = v259[0];
  if (*(&v254[0] + 1) == 1)
  {
    if (*(&v259[0] + 1) == 1)
    {
      v134 = v17;
      v135 = v16;
      v136 = v15;
      v137 = v14;
      v128 = *(a1 + 448);
      v129 = *(a1 + 440);
      v116 = *(a2 + 488);
      v117 = *(a2 + 496);
      v126 = *(a1 + 456);
      v127 = *(a1 + 464);
      v118 = *(a2 + 504);
      v119 = *(a2 + 512);
      v120 = *(a1 + 472);
      v121 = *(a1 + 480);
      v132 = *(a1 + 416);
      v133 = *(a1 + 408);
      v122 = *(a1 + 488);
      v123 = *(a1 + 496);
      v130 = *(a1 + 400);
      v131 = *(a1 + 424);
      v124 = *(a1 + 504);
      v125 = *(a1 + 512);
      *&v232 = *&v254[0];
      *(&v232 + 1) = 1;
      v41 = *(a1 + 64);
      v235 = *(a1 + 48);
      v236 = v41;
      v237 = *(a1 + 80);
      v42 = *(a1 + 16);
      v234 = *(a1 + 32);
      v233 = v42;
      outlined init with copy of FloatingPointRoundingRule?(v254, &v226, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
      outlined init with copy of FloatingPointRoundingRule?(v259, &v226, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
      outlined destroy of TermOfAddress?(&v232, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
      goto LABEL_9;
    }

    outlined init with copy of FloatingPointRoundingRule?(v254, &v232, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
    outlined init with copy of FloatingPointRoundingRule?(v259, &v232, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
LABEL_7:
    v232 = v39;
    v235 = v251;
    v236 = v252;
    v237 = v253;
    v234 = v250;
    v233 = v249;
    v238 = v40;
    v243 = v248;
    v242 = v247;
    v241 = v246;
    v239 = v244;
    v240 = v245;
    outlined destroy of TermOfAddress?(&v232, &_s10Foundation6LocaleV8LanguageV10ComponentsVSg_AHtMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSg_AHtMR);
    goto LABEL_35;
  }

  v232 = v254[0];
  v43 = *(a1 + 64);
  v235 = *(a1 + 48);
  v236 = v43;
  v237 = *(a1 + 80);
  v44 = *(a1 + 16);
  v234 = *(a1 + 32);
  v233 = v44;
  v228 = v234;
  v229 = v235;
  v230 = v43;
  v231 = v237;
  v226 = v254[0];
  v227 = v44;
  if (*(&v259[0] + 1) == 1)
  {
    v223 = v235;
    v224 = v236;
    v225 = v237;
    v220 = v232;
    v221 = v233;
    v222 = v234;
    outlined init with copy of FloatingPointRoundingRule?(v254, v219, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
    outlined init with copy of FloatingPointRoundingRule?(v259, v219, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
    outlined init with copy of FloatingPointRoundingRule?(&v232, v219, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
    outlined destroy of Locale.Language.Components(&v220);
    goto LABEL_7;
  }

  v134 = v17;
  v135 = v16;
  v136 = v15;
  v137 = v14;
  v128 = v24;
  v129 = v22;
  v116 = v35;
  v117 = v37;
  v126 = v23;
  v127 = v25;
  v118 = v36;
  v119 = v38;
  v120 = v26;
  v121 = v28;
  v132 = v21;
  v133 = v19;
  v122 = v27;
  v123 = v30;
  v130 = v18;
  v131 = v20;
  v124 = v29;
  v125 = v31;
  v45 = *(a2 + 64);
  v223 = *(a2 + 48);
  v224 = v45;
  v225 = *(a2 + 80);
  v46 = *(a2 + 32);
  v221 = *(a2 + 16);
  v222 = v46;
  v220 = v259[0];
  outlined init with copy of FloatingPointRoundingRule?(v254, v219, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
  outlined init with copy of FloatingPointRoundingRule?(v259, v219, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
  outlined init with copy of FloatingPointRoundingRule?(&v232, v219, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
  v47 = specialized static Locale.Language.Components.== infix(_:_:)(&v226, &v220);
  v218[2] = v222;
  v218[3] = v223;
  v218[4] = v224;
  v218[5] = v225;
  v218[0] = v220;
  v218[1] = v221;
  outlined destroy of Locale.Language.Components(v218);
  v219[2] = v228;
  v219[3] = v229;
  v219[4] = v230;
  v219[5] = v231;
  v219[0] = v226;
  v219[1] = v227;
  outlined destroy of Locale.Language.Components(v219);
  v220 = v39;
  v223 = v251;
  v224 = v252;
  v225 = v253;
  v221 = v249;
  v222 = v250;
  outlined destroy of TermOfAddress?(&v220, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMR);
  if (!v47)
  {
    goto LABEL_35;
  }

LABEL_9:
  if (!v7)
  {
    v49 = v215;
    v48 = v216;
    outlined copy of Locale.LanguageCode?(v215, 0, v216, v8);
    v50 = v32;
    if (!v33)
    {
      outlined copy of Locale.LanguageCode?(v32, 0, v34, v214);
      v7 = 0;
      goto LABEL_22;
    }

    v51 = v32;
    v52 = v214;
    outlined copy of Locale.LanguageCode?(v51, v33, v34, v214);
LABEL_17:
    outlined consume of Locale.LanguageCode?(v49, v7, v48, v8);
    v54 = v50;
    v55 = v33;
    v56 = v34;
    v57 = v52;
LABEL_18:
    outlined consume of Locale.LanguageCode?(v54, v55, v56, v57);
    goto LABEL_35;
  }

  v48 = v216;
  v49 = v215;
  v50 = v32;
  if (!v33)
  {
    outlined copy of Locale.LanguageCode?(v215, v7, v216, v8);
    v53 = v32;
    v52 = v214;
    outlined copy of Locale.LanguageCode?(v53, 0, v34, v214);
    outlined copy of Locale.LanguageCode?(v215, v7, v216, v8);

    goto LABEL_17;
  }

  if (v216 == v34 && v8 == v214)
  {
    outlined copy of Locale.LanguageCode?(v215, v7, v216, v8);
    outlined copy of Locale.LanguageCode?(v32, v33, v216, v8);
    outlined copy of Locale.LanguageCode?(v215, v7, v216, v8);
    outlined consume of Locale.LanguageCode?(v32, v33, v216, v8);

LABEL_22:
    outlined consume of Locale.LanguageCode?(v49, v7, v48, v8);
    v59 = v213;
    goto LABEL_23;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Locale.LanguageCode?(v215, v7, v216, v8);
  outlined copy of Locale.LanguageCode?(v32, v33, v34, v214);
  outlined copy of Locale.LanguageCode?(v215, v7, v216, v8);
  outlined consume of Locale.LanguageCode?(v32, v33, v34, v214);

  outlined consume of Locale.LanguageCode?(v215, v7, v216, v8);
  v59 = v213;
  if ((v58 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_23:
  v60 = v204;
  if (v204 == 1)
  {
    v61 = v212;
    v62 = v209;
    v63 = v208;
    v64 = v207;
    v65 = v206;
    v66 = v205;
    if (v59 == 1)
    {
      v60 = 1;
      sub_1808B890C(v205, 1, v206, v207);
      sub_1808B890C(v203, 1, v211, v210);
LABEL_26:
      sub_1807E2788(v66, v60, v65, v64);
      goto LABEL_27;
    }

    goto LABEL_33;
  }

  v61 = v212;
  v62 = v209;
  v63 = v208;
  v64 = v207;
  v65 = v206;
  v66 = v205;
  if (v59 == 1)
  {
LABEL_33:
    sub_1808B890C(v66, v204, v65, v64);
    sub_1808B890C(v203, v59, v211, v210);
    sub_1807E2788(v66, v204, v65, v64);
    v71 = v203;
    v72 = v59;
    v73 = v211;
    v74 = v210;
LABEL_34:
    sub_1807E2788(v71, v72, v73, v74);
    goto LABEL_35;
  }

  if (!v204)
  {
    sub_1808B890C(v205, 0, v206, v207);
    if (!v59)
    {
      sub_1808B890C(v203, 0, v211, v210);
      sub_1808B890C(v205, 0, v206, v207);
      outlined consume of Locale.LanguageCode?(v205, 0, v206, v207);
      v60 = 0;
      goto LABEL_26;
    }

    v80 = v203;
    v81 = v211;
    v82 = v210;
    sub_1808B890C(v203, v59, v211, v210);
    sub_1808B890C(v205, 0, v206, v207);
    goto LABEL_51;
  }

  if (!v59)
  {
    sub_1808B890C(v205, v204, v206, v207);
    v80 = v203;
    v81 = v211;
    v82 = v210;
    sub_1808B890C(v203, 0, v211, v210);
    sub_1808B890C(v205, v204, v206, v207);
    outlined copy of Locale.LanguageCode?(v205, v204, v206, v207);

LABEL_51:
    outlined consume of Locale.LanguageCode?(v205, v204, v206, v207);
    outlined consume of Locale.LanguageCode?(v80, v59, v81, v82);
    v71 = v205;
    v72 = v204;
    v73 = v206;
    v74 = v207;
    goto LABEL_34;
  }

  if (v206 == v211 && v207 == v210)
  {
    sub_1808B890C(v205, v204, v206, v207);
    sub_1808B890C(v203, v59, v206, v207);
    sub_1808B890C(v205, v204, v206, v207);
    outlined copy of Locale.LanguageCode?(v205, v204, v206, v207);
    outlined consume of Locale.LanguageCode?(v203, v59, v206, v207);

    outlined consume of Locale.LanguageCode?(v205, v204, v206, v207);
    goto LABEL_26;
  }

  v217 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_1808B890C(v205, v204, v206, v207);
  sub_1808B890C(v203, v59, v211, v210);
  sub_1808B890C(v205, v204, v206, v207);
  outlined copy of Locale.LanguageCode?(v205, v204, v206, v207);
  v61 = v212;
  outlined consume of Locale.LanguageCode?(v203, v59, v211, v210);

  outlined consume of Locale.LanguageCode?(v205, v204, v206, v207);
  sub_1807E2788(v205, v204, v206, v207);
  if ((v217 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_27:
  if (!v63)
  {
    v67 = v200;
    outlined copy of Locale.LanguageCode?(v202, 0, v62, v200);
    v68 = v198;
    v69 = v197;
    if (!v198)
    {
      outlined copy of Locale.LanguageCode?(v199, 0, v201, v197);
      v63 = 0;
      v70 = v202;
      goto LABEL_53;
    }

    v77 = v199;
    v78 = v201;
    outlined copy of Locale.LanguageCode?(v199, v198, v201, v197);
    v79 = v202;
    goto LABEL_47;
  }

  v67 = v200;
  v68 = v198;
  v69 = v197;
  if (!v198)
  {
    v79 = v202;
    outlined copy of Locale.LanguageCode?(v202, v63, v62, v200);
    v77 = v199;
    v78 = v201;
    outlined copy of Locale.LanguageCode?(v199, 0, v201, v197);
    outlined copy of Locale.LanguageCode?(v202, v63, v62, v200);

LABEL_47:
    outlined consume of Locale.LanguageCode?(v79, v63, v62, v67);
    v54 = v77;
    v55 = v68;
    v56 = v78;
    v57 = v69;
    goto LABEL_18;
  }

  if (v62 == v201 && v200 == v197)
  {
    v70 = v202;
    outlined copy of Locale.LanguageCode?(v202, v63, v62, v200);
    outlined copy of Locale.LanguageCode?(v199, v198, v62, v200);
    outlined copy of Locale.LanguageCode?(v202, v63, v62, v200);
    outlined consume of Locale.LanguageCode?(v199, v198, v62, v200);

LABEL_53:
    outlined consume of Locale.LanguageCode?(v70, v63, v62, v67);
    goto LABEL_54;
  }

  v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Locale.LanguageCode?(v202, v63, v62, v200);
  outlined copy of Locale.LanguageCode?(v199, v198, v201, v197);
  outlined copy of Locale.LanguageCode?(v202, v63, v62, v200);
  outlined consume of Locale.LanguageCode?(v199, v198, v201, v197);

  outlined consume of Locale.LanguageCode?(v202, v63, v62, v200);
  if ((v83 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_54:
  if (v196)
  {
    if (!v195 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation6LocaleV15NumberingSystemV_Tt1g5(v196, v195) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v195)
  {
    goto LABEL_35;
  }

  if (v193 == 7)
  {
    if (v194 != 7)
    {
      goto LABEL_35;
    }
  }

  else if (v194 == 7 || (specialized == infix<A>(_:_:)(v193, v194) & 1) == 0)
  {
    goto LABEL_35;
  }

  if (v192)
  {
    if ((v191 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v191)
    {
      goto LABEL_35;
    }

    if (v187)
    {
      if ((v188 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v232 = v137;
      v233 = v136;
      v234 = v135;
      LOBYTE(v235) = 0;
      if (v188)
      {
        goto LABEL_35;
      }

      *&v226 = v172;
      BYTE8(v226) = v173 & 1;
      *&v227 = v174;
      BYTE8(v227) = v175 & 1;
      v228 = v134;
      if (!specialized static WeekendRange.== infix(_:_:)(&v232, &v226))
      {
        goto LABEL_35;
      }
    }
  }

  if (v190)
  {
    if (!v189)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v84 = v189;
    if (v184 != v183)
    {
      v84 = 1;
    }

    if (v84)
    {
      goto LABEL_35;
    }
  }

  if (v185 == 4)
  {
    if (v186 != 4)
    {
      goto LABEL_35;
    }
  }

  else if (v186 == 4 || (specialized == infix<A>(_:_:)(v185, v186) & 1) == 0)
  {
    goto LABEL_35;
  }

  if (!v180)
  {
    v85 = v178;
    outlined copy of Locale.LanguageCode?(v178, 0, v182, v181);
    if (!v179)
    {
      outlined copy of Locale.LanguageCode?(v177, 0, v61, v176);
      v86 = 0;
      goto LABEL_99;
    }

    v87 = v177;
    v88 = v176;
    outlined copy of Locale.LanguageCode?(v177, v179, v61, v176);
    goto LABEL_95;
  }

  if (!v179)
  {
    v85 = v178;
    outlined copy of Locale.LanguageCode?(v178, v180, v182, v181);
    v87 = v177;
    v88 = v176;
    outlined copy of Locale.LanguageCode?(v177, 0, v61, v176);
    outlined copy of Locale.LanguageCode?(v178, v180, v182, v181);

LABEL_95:
    outlined consume of Locale.LanguageCode?(v85, v180, v182, v181);
    v54 = v87;
    v55 = v179;
    v56 = v61;
    v57 = v88;
    goto LABEL_18;
  }

  if (v182 == v61 && v181 == v176)
  {
    v85 = v178;
    v86 = v180;
    outlined copy of Locale.LanguageCode?(v178, v180, v182, v181);
    outlined copy of Locale.LanguageCode?(v177, v179, v182, v181);
    outlined copy of Locale.LanguageCode?(v178, v180, v182, v181);
    outlined consume of Locale.LanguageCode?(v177, v179, v182, v181);

LABEL_99:
    outlined consume of Locale.LanguageCode?(v85, v86, v182, v181);
    goto LABEL_100;
  }

  v89 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Locale.LanguageCode?(v178, v180, v182, v181);
  outlined copy of Locale.LanguageCode?(v177, v179, v212, v176);
  outlined copy of Locale.LanguageCode?(v178, v180, v182, v181);
  outlined consume of Locale.LanguageCode?(v177, v179, v212, v176);

  outlined consume of Locale.LanguageCode?(v178, v180, v182, v181);
  if ((v89 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_100:
  if (v171 == 2)
  {
    if (v170 != 2)
    {
      goto LABEL_35;
    }

LABEL_105:
    if (v169 == 1)
    {
      if (v168 == 1)
      {
        v169 = 1;
        sub_1808B890C(v165, 1, v167, v166);
        sub_1808B890C(v162, 1, v164, v163);
LABEL_108:
        sub_1807E2788(v165, v169, v167, v166);
        goto LABEL_109;
      }

LABEL_133:
      v93 = v165;
      v92 = v166;
      v94 = v169;
      v95 = v167;
      sub_1808B890C(v165, v169, v167, v166);
      v96 = v162;
      v97 = v163;
      v98 = v162;
      v99 = v168;
      v100 = v168;
      v101 = v164;
LABEL_141:
      v102 = v101;
LABEL_142:
      sub_1808B890C(v98, v100, v102, v97);
      sub_1807E2788(v93, v94, v95, v92);
      v71 = v96;
      v72 = v99;
      v73 = v101;
      v74 = v97;
      goto LABEL_34;
    }

    if (v168 == 1)
    {
      goto LABEL_133;
    }

    if (v169)
    {
      if (v168)
      {
        if (v167 == v164 && v166 == v163)
        {
          sub_1808B890C(v165, v169, v167, v166);
          sub_1808B890C(v162, v168, v167, v166);
          sub_1808B890C(v165, v169, v167, v166);
          outlined copy of Locale.LanguageCode?(v165, v169, v167, v166);
          outlined consume of Locale.LanguageCode?(v162, v168, v167, v166);

          outlined consume of Locale.LanguageCode?(v165, v169, v167, v166);
          goto LABEL_108;
        }

        v112 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1808B890C(v165, v169, v167, v166);
        sub_1808B890C(v162, v168, v164, v163);
        sub_1808B890C(v165, v169, v167, v166);
        outlined copy of Locale.LanguageCode?(v165, v169, v167, v166);
        outlined consume of Locale.LanguageCode?(v162, v168, v164, v163);

        outlined consume of Locale.LanguageCode?(v165, v169, v167, v166);
        sub_1807E2788(v165, v169, v167, v166);
        if ((v112 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_109:
        if (v161 == 1)
        {
          if (v160 == 1)
          {
            v161 = 1;
            sub_1808B890C(v157, 1, v159, v158);
            sub_1808B890C(v154, 1, v156, v155);
LABEL_112:
            sub_1807E2788(v157, v161, v159, v158);
            goto LABEL_113;
          }

          goto LABEL_140;
        }

        if (v160 == 1)
        {
LABEL_140:
          v93 = v157;
          v92 = v158;
          v94 = v161;
          v95 = v159;
          sub_1808B890C(v157, v161, v159, v158);
          v96 = v154;
          v97 = v155;
          v98 = v154;
          v99 = v160;
          v100 = v160;
          v101 = v156;
          goto LABEL_141;
        }

        if (v161)
        {
          if (v160)
          {
            if (v159 == v156 && v158 == v155)
            {
              sub_1808B890C(v157, v161, v159, v158);
              sub_1808B890C(v154, v160, v159, v158);
              sub_1808B890C(v157, v161, v159, v158);
              outlined copy of Locale.LanguageCode?(v157, v161, v159, v158);
              outlined consume of Locale.LanguageCode?(v154, v160, v159, v158);

              outlined consume of Locale.LanguageCode?(v157, v161, v159, v158);
              goto LABEL_112;
            }

            v114 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1808B890C(v157, v161, v159, v158);
            sub_1808B890C(v154, v160, v156, v155);
            sub_1808B890C(v157, v161, v159, v158);
            outlined copy of Locale.LanguageCode?(v157, v161, v159, v158);
            outlined consume of Locale.LanguageCode?(v154, v160, v156, v155);

            outlined consume of Locale.LanguageCode?(v157, v161, v159, v158);
            sub_1807E2788(v157, v161, v159, v158);
            if ((v114 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_113:
            if (v153 == 1)
            {
              if (v152 == 1)
              {
                v90 = 1;
                outlined copy of TimeZone??(1);
                outlined copy of TimeZone??(1);
LABEL_116:
                outlined consume of TimeZone??(v90);
LABEL_117:
                if (v133 == 1)
                {
                  if (v149 == 1)
                  {
                    v91 = 1;
                    sub_1808B890C(v130, 1, v132, v131);
                    sub_1808B890C(v147, 1, v148, v146);
LABEL_120:
                    sub_1807E2788(v130, v91, v132, v131);
LABEL_121:
                    if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v145, v144) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation6LocaleV14IdentifierTypeO_SSTt1g5(v129, v143) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v128, v141) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v126, v142) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v127, v138) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v120, v139) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SSSgTt1g5(v121, v140) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v122, v116) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v123, v117) & 1) != 0 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSSgTt1g5(v124, v118))
                    {
                      v75 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt32V_SpySvSgGTt1g5(v125, v119);
                      return v75 & 1;
                    }

                    goto LABEL_35;
                  }

                  goto LABEL_165;
                }

                if (v149 == 1)
                {
LABEL_165:
                  v93 = v130;
                  v92 = v131;
                  v95 = v132;
                  v94 = v133;
                  sub_1808B890C(v130, v133, v132, v131);
                  v96 = v147;
                  v101 = v148;
                  v98 = v147;
                  v99 = v149;
                  v100 = v149;
                  v102 = v148;
                  v97 = v146;
                  goto LABEL_142;
                }

                if (v133)
                {
                  if (v149)
                  {
                    if (v132 == v148 && v131 == v146)
                    {
                      sub_1808B890C(v130, v133, v132, v131);
                      sub_1808B890C(v147, v149, v132, v131);
                      sub_1808B890C(v130, v133, v132, v131);
                      outlined copy of Locale.LanguageCode?(v130, v133, v132, v131);
                      outlined consume of Locale.LanguageCode?(v147, v149, v132, v131);

                      v91 = v133;
                      outlined consume of Locale.LanguageCode?(v130, v133, v132, v131);
                      goto LABEL_120;
                    }

                    v115 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    sub_1808B890C(v130, v133, v132, v131);
                    sub_1808B890C(v147, v149, v148, v146);
                    sub_1808B890C(v130, v133, v132, v131);
                    outlined copy of Locale.LanguageCode?(v130, v133, v132, v131);
                    outlined consume of Locale.LanguageCode?(v147, v149, v148, v146);

                    outlined consume of Locale.LanguageCode?(v130, v133, v132, v131);
                    sub_1807E2788(v130, v133, v132, v131);
                    if (v115)
                    {
                      goto LABEL_121;
                    }

LABEL_35:
                    v75 = 0;
                    return v75 & 1;
                  }

                  sub_1808B890C(v130, v133, v132, v131);
                  sub_1808B890C(v147, 0, v148, v146);
                  sub_1808B890C(v130, v133, v132, v131);
                  outlined copy of Locale.LanguageCode?(v130, v133, v132, v131);
                }

                else
                {
                  sub_1808B890C(v130, 0, v132, v131);
                  if (!v149)
                  {
                    sub_1808B890C(v147, 0, v148, v146);
                    sub_1808B890C(v130, 0, v132, v131);
                    outlined consume of Locale.LanguageCode?(v130, 0, v132, v131);
                    v91 = 0;
                    goto LABEL_120;
                  }

                  sub_1808B890C(v147, v149, v148, v146);
                  sub_1808B890C(v130, 0, v132, v131);
                }

                v105 = v130;
                v104 = v131;
                v107 = v132;
                v106 = v133;
                outlined consume of Locale.LanguageCode?(v130, v133, v132, v131);
                v108 = v147;
                v111 = v148;
                v110 = v149;
                v109 = v146;
LABEL_168:
                outlined consume of Locale.LanguageCode?(v108, v110, v111, v109);
                v71 = v105;
                v72 = v106;
                v73 = v107;
                v74 = v104;
                goto LABEL_34;
              }
            }

            else if (v152 != 1)
            {
              if (v153)
              {
                *&v232 = v153;
                *(&v232 + 1) = v151;
                if (v152)
                {
                  *&v226 = v152;
                  *(&v226 + 1) = v150;
                  outlined copy of TimeZone??(v153);
                  outlined copy of TimeZone??(v152);
                  outlined copy of TimeZone??(v153);
                  swift_unknownObjectRetain();
                  v113 = specialized static TimeZone.== infix(_:_:)(&v232, &v226);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  outlined consume of TimeZone??(v153);
                  if ((v113 & 1) == 0)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_117;
                }

                outlined copy of TimeZone??(v153);
                outlined copy of TimeZone??(0);
                outlined copy of TimeZone??(v153);
              }

              else
              {
                outlined copy of TimeZone??(0);
                if (!v152)
                {
                  outlined copy of TimeZone??(0);
                  outlined copy of TimeZone??(0);
                  v90 = 0;
                  goto LABEL_116;
                }

                outlined copy of TimeZone??(v152);
                outlined copy of TimeZone??(0);
              }

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v103 = v153;
LABEL_152:
              outlined consume of TimeZone??(v103);
              goto LABEL_35;
            }

            outlined copy of TimeZone??(v153);
            outlined copy of TimeZone??(v152);
            outlined consume of TimeZone??(v153);
            v103 = v152;
            goto LABEL_152;
          }

          sub_1808B890C(v157, v161, v159, v158);
          sub_1808B890C(v154, 0, v156, v155);
          sub_1808B890C(v157, v161, v159, v158);
          outlined copy of Locale.LanguageCode?(v157, v161, v159, v158);
        }

        else
        {
          sub_1808B890C(v157, 0, v159, v158);
          if (!v160)
          {
            sub_1808B890C(v154, 0, v156, v155);
            sub_1808B890C(v157, 0, v159, v158);
            outlined consume of Locale.LanguageCode?(v157, 0, v159, v158);
            sub_1807E2788(v157, 0, v159, v158);
            goto LABEL_113;
          }

          sub_1808B890C(v154, v160, v156, v155);
          sub_1808B890C(v157, 0, v159, v158);
        }

        v105 = v157;
        v104 = v158;
        v106 = v161;
        v107 = v159;
        outlined consume of Locale.LanguageCode?(v157, v161, v159, v158);
        v108 = v154;
        v109 = v155;
        v110 = v160;
        v111 = v156;
        goto LABEL_168;
      }

      sub_1808B890C(v165, v169, v167, v166);
      sub_1808B890C(v162, 0, v164, v163);
      sub_1808B890C(v165, v169, v167, v166);
      outlined copy of Locale.LanguageCode?(v165, v169, v167, v166);
    }

    else
    {
      sub_1808B890C(v165, 0, v167, v166);
      if (!v168)
      {
        sub_1808B890C(v162, 0, v164, v163);
        sub_1808B890C(v165, 0, v167, v166);
        outlined consume of Locale.LanguageCode?(v165, 0, v167, v166);
        sub_1807E2788(v165, 0, v167, v166);
        goto LABEL_109;
      }

      sub_1808B890C(v162, v168, v164, v163);
      sub_1808B890C(v165, 0, v167, v166);
    }

    v105 = v165;
    v104 = v166;
    v106 = v169;
    v107 = v167;
    outlined consume of Locale.LanguageCode?(v165, v169, v167, v166);
    v108 = v162;
    v109 = v163;
    v110 = v168;
    v111 = v164;
    goto LABEL_168;
  }

  v75 = 0;
  if (v170 != 2 && ((v170 ^ v171) & 1) == 0)
  {
    goto LABEL_105;
  }

  return v75 & 1;
}

uint64_t specialized static Locale.identifierWithKeywordValue(_:key:value:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = String.utf8CString.getter();
  strlcpy(__dst, (v6 + 32), 0x9DuLL);

  String.utf8CString.getter();
  String.utf8CString.getter();
  v7 = uloc_setKeywordValue();

  if (v7 < 1)
  {

    return a1;
  }

  else
  {
    __dst[v7] = 0;
    return String.init(cString:)();
  }
}

uint64_t specialized _LocaleICU.displayKeyword(for:keyword:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *MEMORY[0x1E69E9840];
  MEMORY[0x1865CB0E0](a3, a4);

  MEMORY[0x1865CB0E0](61, 0xE100000000000000);

  MEMORY[0x1865CB0E0](a5, a6);

  String.utf8CString.getter();

  String.utf8CString.getter();
  String.utf8CString.getter();
  DisplayKeywordValue = uloc_getDisplayKeywordValue();

  result = 0;
  if (DisplayKeywordValue - 1 < 0x101)
  {
    return specialized String.init(_utf16:)(v10, DisplayKeywordValue);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _LocaleICU.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 520))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 432);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _LocaleICU.State(uint64_t result, int a2, int a3)
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
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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
      *(result + 432) = (a2 - 1);
      return result;
    }

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LocaleICU.State and conformance _LocaleICU.State()
{
  result = lazy protocol witness table cache variable for type _LocaleICU.State and conformance _LocaleICU.State;
  if (!lazy protocol witness table cache variable for type _LocaleICU.State and conformance _LocaleICU.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LocaleICU.State and conformance _LocaleICU.State);
  }

  return result;
}

uint64_t outlined consume of TimeZone??(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t outlined copy of TimeZone??(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LocaleICU.State.NumberFormattersBox and conformance _LocaleICU.State.NumberFormattersBox()
{
  result = lazy protocol witness table cache variable for type _LocaleICU.State.NumberFormattersBox and conformance _LocaleICU.State.NumberFormattersBox;
  if (!lazy protocol witness table cache variable for type _LocaleICU.State.NumberFormattersBox and conformance _LocaleICU.State.NumberFormattersBox)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LocaleICU.State.NumberFormattersBox and conformance _LocaleICU.State.NumberFormattersBox);
  }

  return result;
}

uint64_t static Locale.isoLanguageCodes.getter(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

id @objc static NSLocale._isoCurrencyCodes.getter()
{
  specialized static Locale.isoCurrencyCodes.getter();
  v0 = _ContiguousArrayBuffer._asCocoaArray()();

  return v0;
}

id @objc static NSLocale._commonISOCurrencyCodes.getter()
{
  specialized static Locale.Currency.commonISOCurrencies.getter();
  v0 = _ContiguousArrayBuffer._asCocoaArray()();

  return v0;
}

uint64_t @objc static NSLocale._windowsLocaleCode(fromLocaleIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  String.utf8CString.getter();

  LCID = uloc_getLCID();

  return LCID;
}

uint64_t static Locale.lineDirection(forLanguage:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E69E5750];

  return static Locale.characterDirection(forLanguage:)(a1, a2, v2);
}

id @objc static NSLocale._numberingSystem(forLocaleIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized static NSLocale._numberingSystem(forLocaleIdentifier:)(v3, v4);
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id @objc static NSLocale._validNumberingSystems(forLocaleIdentifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized static NSLocale._validNumberingSystems(forLocaleIdentifier:)(v3, v4);

  v5 = _ContiguousArrayBuffer._asCocoaArray()();

  return v5;
}

id @objc static NSLocale._localeIdentifierByReplacingLanguageCodeAndScriptCode(_:desiredComponents:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
  static Locale.localeIdentifierByReplacingLanguageCodeAndScriptCode(localeIDWithDesiredLangCode:localeIDWithDesiredComponents:)(v5);
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id @objc NSLocale._localeWithNewCalendarIdentifier(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

uint64_t @objc NSLocale._doesNotRequireSpecialCaseHandling()(void *a1)
{
  v1 = a1;
  v2 = [v1 localeIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v2);
  v5 = v4;

  LOBYTE(v2) = specialized static Locale.identifierDoesNotRequireSpecialCaseHandling(_:)(v3, v5);

  return v2 & 1;
}

id _NSSwiftLocale.init(coder:)(void *a1)
{
  v2 = v1;
  v3 = a1;
  v148[6] = *MEMORY[0x1E69E9840];
  if (![a1 allowsKeyedCoding])
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v6 = @"NSDebugDescription";
    v7 = v6;
    if (!isTaggedPointer)
    {
LABEL_9:
      LOBYTE(v144) = 0;
      *&v146 = 0;
      LOBYTE(v141) = 0;
      v142 = 0;
      if (__CFStringIsCF())
      {

LABEL_30:
        v9 = 0;
        v11 = 0xE000000000000000;
        goto LABEL_51;
      }

      v24 = v7;
      v25 = String.init(_nativeStorage:)();
      if (v26)
      {
        v9 = v25;
        v11 = v26;

        goto LABEL_51;
      }

      *&v146 = [(__CFString *)v24 length];
      if (!v146)
      {

        goto LABEL_30;
      }

      v9 = String.init(_cocoaString:)();
      v11 = v36;
LABEL_51:
      v148[0] = v9;
      v148[1] = v11;
      v148[5] = MEMORY[0x1E69E6158];
      v148[2] = 0xD000000000000026;
      v148[3] = 0x800000018147E7F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
      v37 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)(v148, &v146);

      outlined destroy of TermOfAddress?(v148, &_sSS_yptMd, &_sSS_yptMR);
      v38 = v146;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v146, *(&v146 + 1));
      v41 = v40;

      if (v41)
      {
        __break(1u);
      }

      else
      {
        v37[(v39 >> 6) + 8] |= 1 << v39;
        *(v37[6] + 16 * v39) = v38;
        outlined init with take of Any(v147, (v37[7] + 32 * v39));
        v42 = v37[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (!v43)
        {
          v37[2] = v44;
          v45 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
          v46 = @"NSCocoaErrorDomain";
          v47 = v46;
          v139 = v3;
          if (!v45)
          {
LABEL_58:
            LOBYTE(v144) = 0;
            *&v146 = 0;
            LOBYTE(v141) = 0;
            v142 = 0;
            if (!__CFStringIsCF())
            {
              v49 = v47;
              String.init(_nativeStorage:)();
              if (v50 || (*&v146 = [(__CFString *)v49 length], !v146))
              {

                goto LABEL_76;
              }

              goto LABEL_75;
            }

            if (v146)
            {
              if (v142 == 1)
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_76;
              }

LABEL_75:
              String.init(_cocoaString:)();
LABEL_76:
              v53 = objc_allocWithZone(NSError);
              v54 = String._bridgeToObjectiveCImpl()();

              v55 = [v53 initWithDomain:v54 code:4864 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v56 = [v55 domain];
              if (!v56)
              {
                v63 = 0;
                v65 = 0xE000000000000000;
LABEL_162:
                v106 = v47;
                v82 = v106;
                v3 = v139;
                if (!v45)
                {
                  goto LABEL_167;
                }

                TaggedPointerTag = _objc_getTaggedPointerTag(v106);
                if (!TaggedPointerTag)
                {
                  goto LABEL_177;
                }

                if (TaggedPointerTag != 22)
                {
                  if (TaggedPointerTag == 2)
                  {
                    MEMORY[0x1EEE9AC00](TaggedPointerTag);
                    v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v109 = v108;

                    goto LABEL_185;
                  }

LABEL_167:
                  LOBYTE(v144) = 0;
                  *&v146 = 0;
                  LOBYTE(v141) = 0;
                  v142 = 0;
                  if (__CFStringIsCF())
                  {
                    v80 = v146;
                    if (!v146)
                    {

                      v109 = 0xE000000000000000;
                      goto LABEL_185;
                    }

                    if (v142 == 1)
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      v115 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_184:
                      v80 = v115;
                      v109 = v116;
LABEL_185:
                      if (v63 == v80 && v65 == v109)
                      {
                        goto LABEL_225;
                      }

                      v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v117)
                      {
LABEL_227:
                        [v3 failWithError_];
                        swift_unknownObjectRelease();

                        type metadata accessor for _NSSwiftLocale();
                        swift_deallocPartialClassInstance();
                        return 0;
                      }

                      __break(1u);
                      v118 = [v2 lengthOfBytesUsingEncoding_];
                      MEMORY[0x1EEE9AC00](v118);
                      v119 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v98 = v120;
                      v121 = HIBYTE(v120) & 0xF;
                      if ((v120 & 0x2000000000000000) == 0)
                      {
                        v121 = v119 & 0xFFFFFFFFFFFFLL;
                      }

                      if (!v121)
                      {

                        goto LABEL_193;
                      }

                      v96 = v119;
                      goto LABEL_151;
                    }
                  }

                  else
                  {
                    v110 = v82;
                    v111 = String.init(_nativeStorage:)();
                    if (v112)
                    {
                      v80 = v111;
                      v109 = v112;

                      goto LABEL_185;
                    }

                    *&v146 = [(__CFString *)v110 length];
                    if (!v146)
                    {

                      v80 = 0;
                      v109 = 0xE000000000000000;
                      goto LABEL_185;
                    }
                  }

                  v115 = String.init(_cocoaString:)();
                  goto LABEL_184;
                }

                result = [(__CFString *)v82 UTF8String];
                if (result)
                {
                  v113 = String.init(utf8String:)(result);
                  if (v114)
                  {
                    goto LABEL_178;
                  }

                  __break(1u);
LABEL_177:
                  v141 = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v113 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v114)
                  {
                    [(__CFString *)v82 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v109 = *(&v144 + 1);
                    v80 = v144;
                    goto LABEL_185;
                  }

LABEL_178:
                  v80 = v113;
                  v109 = v114;

                  goto LABEL_185;
                }

LABEL_236:
                __break(1u);
                goto LABEL_237;
              }

              v57 = v2;
              v58 = v56;
              v59 = _objc_isTaggedPointer(v56);
              v60 = v58;
              v61 = v60;
              if ((v59 & 1) == 0)
              {
                goto LABEL_82;
              }

              v62 = _objc_getTaggedPointerTag(v60);
              if (v62)
              {
                if (v62 != 22)
                {
                  if (v62 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v62);
                    v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v65 = v64;

LABEL_161:
                    v2 = v57;
                    goto LABEL_162;
                  }

LABEL_82:
                  LOBYTE(v144) = 0;
                  *&v146 = 0;
                  LOBYTE(v141) = 0;
                  v142 = 0;
                  if (__CFStringIsCF())
                  {
                    if (v146)
                    {
                      if (v142 == 1)
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                        v71 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_159:
                        v63 = v71;
                        v65 = v72;
                        goto LABEL_160;
                      }

LABEL_158:
                      v71 = String.init(_cocoaString:)();
                      goto LABEL_159;
                    }
                  }

                  else
                  {
                    v66 = v61;
                    v67 = String.init(_nativeStorage:)();
                    if (v68)
                    {
                      v63 = v67;
                      v65 = v68;

                      goto LABEL_161;
                    }

                    *&v146 = [v66 length];
                    if (v146)
                    {
                      goto LABEL_158;
                    }
                  }

                  v63 = 0;
                  v65 = 0xE000000000000000;
                  goto LABEL_161;
                }

                result = [v61 UTF8String];
                if (!result)
                {
LABEL_240:
                  __break(1u);
                  goto LABEL_241;
                }

                v69 = String.init(utf8String:)(result);
                if (v70)
                {
                  goto LABEL_95;
                }

                __break(1u);
              }

              v141 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v69 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v70)
              {
                [v61 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v65 = *(&v144 + 1);
                v63 = v144;
                goto LABEL_160;
              }

LABEL_95:
              v63 = v69;
              v65 = v70;

LABEL_160:
              goto LABEL_161;
            }

LABEL_74:

            goto LABEL_76;
          }

          v48 = _objc_getTaggedPointerTag(v46);
          if (!v48)
          {
LABEL_68:
            v141 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v52)
            {
              [(__CFString *)v47 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_76;
            }

            goto LABEL_74;
          }

          if (v48 != 22)
          {
            if (v48 == 2)
            {
              MEMORY[0x1EEE9AC00](v48);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_76;
            }

            goto LABEL_58;
          }

          result = [(__CFString *)v47 UTF8String];
          if (result)
          {
            String.init(utf8String:)(result);
            if (v51)
            {
              goto LABEL_74;
            }

            __break(1u);
            goto LABEL_68;
          }

LABEL_235:
          __break(1u);
          goto LABEL_236;
        }
      }

      __break(1u);
      goto LABEL_230;
    }

    v8 = _objc_getTaggedPointerTag(v6);
    if (v8)
    {
      if (v8 != 22)
      {
        if (v8 == 2)
        {
          MEMORY[0x1EEE9AC00](v8);
          v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v11 = v10;

          goto LABEL_51;
        }

        goto LABEL_9;
      }

      result = [(__CFString *)v7 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_235;
      }

      v30 = String.init(utf8String:)(result);
      if (v31)
      {
LABEL_35:
        v9 = v30;
        v11 = v31;

        goto LABEL_51;
      }

      __break(1u);
    }

    v141 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v31)
    {
      [(__CFString *)v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = *(&v144 + 1);
      v9 = v144;
      goto LABEL_51;
    }

    goto LABEL_35;
  }

  v4 = [v3 decodeObjectForKey_];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v144 = 0u;
    v145 = 0u;
  }

  v146 = v144;
  v147[0] = v145;
  if (*(&v145 + 1))
  {
    v12 = swift_dynamicCast();
    if (v12)
    {
      if (one-time initialization token for cache == -1)
      {
LABEL_15:
        v13 = static LocaleCache.cache;
        MEMORY[0x1EEE9AC00](v12);
        os_unfair_lock_lock((v13 + 48));
        closure #1 in LocaleCache.fixed(_:)partial apply((v13 + 16), &v146);
        os_unfair_lock_unlock((v13 + 48));
        v137 = v146;

        *&v2[OBJC_IVAR____NSSwiftLocale_locale] = v137;
        v14 = String._bridgeToObjectiveCImpl()();
        v140.receiver = v2;
        v140.super_class = type metadata accessor for _NSSwiftLocale();
        v15 = objc_msgSendSuper2(&v140, sel_initWithLocaleIdentifier_, v14);
        swift_unknownObjectRelease();

        return v15;
      }

LABEL_233:
      v12 = swift_once();
      goto LABEL_15;
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(&v146, &_sypSgMd, &_sypSgMR);
  }

  v17 = _objc_isTaggedPointer(@"NSDebugDescription");
  v18 = @"NSDebugDescription";
  v19 = v18;
  if (!v17)
  {
    goto LABEL_22;
  }

  v20 = _objc_getTaggedPointerTag(v18);
  switch(v20)
  {
    case 0:
      goto LABEL_43;
    case 0x16:
      result = [(__CFString *)v19 UTF8String];
      if (result)
      {
        v32 = String.init(utf8String:)(result);
        if (v33)
        {
          goto LABEL_44;
        }

        __break(1u);
LABEL_43:
        v141 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v32 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v33)
        {
          [(__CFString *)v19 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v23 = *(&v144 + 1);
          v21 = v144;
          goto LABEL_102;
        }

LABEL_44:
        v21 = v32;
        v23 = v33;

        goto LABEL_102;
      }

LABEL_237:
      __break(1u);
      goto LABEL_238;
    case 2:
      MEMORY[0x1EEE9AC00](v20);
      v21 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v23 = v22;

      goto LABEL_102;
  }

LABEL_22:
  LOBYTE(v144) = 0;
  *&v146 = 0;
  LOBYTE(v141) = 0;
  v142 = 0;
  if (!__CFStringIsCF())
  {
    v27 = v19;
    v28 = String.init(_nativeStorage:)();
    if (v29)
    {
      v21 = v28;
      v23 = v29;

      goto LABEL_102;
    }

    *&v146 = [(__CFString *)v27 length];
    if (v146)
    {
      goto LABEL_100;
    }

LABEL_37:
    v21 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_102;
  }

  if (!v146)
  {

    goto LABEL_37;
  }

  if (v142 != 1)
  {
LABEL_100:
    v34 = String.init(_cocoaString:)();
    goto LABEL_101;
  }

  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  v34 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_101:
  v21 = v34;
  v23 = v35;
LABEL_102:
  v143[0] = v21;
  v143[1] = v23;
  v143[5] = MEMORY[0x1E69E6158];
  v143[2] = 0xD00000000000001DLL;
  v143[3] = 0x800000018147E820;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v73 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v143, &v146);

  outlined destroy of TermOfAddress?(v143, &_sSS_yptMd, &_sSS_yptMR);
  v74 = v146;
  v75 = specialized __RawDictionaryStorage.find<A>(_:)(v146, *(&v146 + 1));
  v77 = v76;

  if (v77)
  {
LABEL_230:
    __break(1u);
    goto LABEL_231;
  }

  v73[(v75 >> 6) + 8] |= 1 << v75;
  *(v73[6] + 16 * v75) = v74;
  outlined init with take of Any(v147, (v73[7] + 32 * v75));
  v78 = v73[2];
  v43 = __OFADD__(v78, 1);
  v79 = v78 + 1;
  if (v43)
  {
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v73[2] = v79;
  LODWORD(v80) = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v81 = @"NSCocoaErrorDomain";
  v82 = v81;
  if (!v80)
  {
    goto LABEL_109;
  }

  v83 = _objc_getTaggedPointerTag(v81);
  switch(v83)
  {
    case 0:
LABEL_120:
      v141 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v87)
      {
        [(__CFString *)v82 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_130;
      }

      goto LABEL_128;
    case 0x16:
      result = [(__CFString *)v82 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v86)
        {
          goto LABEL_128;
        }

        __break(1u);
        goto LABEL_120;
      }

LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
      goto LABEL_240;
    case 2:
      MEMORY[0x1EEE9AC00](v83);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_130;
  }

LABEL_109:
  LOBYTE(v144) = 0;
  *&v146 = 0;
  LOBYTE(v141) = 0;
  v142 = 0;
  if (!__CFStringIsCF())
  {
    v84 = v82;
    String.init(_nativeStorage:)();
    if (v85 || (*&v146 = [(__CFString *)v84 length], !v146))
    {

      goto LABEL_130;
    }

    goto LABEL_129;
  }

  if (!v146)
  {
LABEL_128:

    goto LABEL_130;
  }

  if (v142 != 1)
  {
LABEL_129:
    String.init(_cocoaString:)();
    goto LABEL_130;
  }

  if (v144)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_130:
  v88 = objc_allocWithZone(NSError);
  v89 = String._bridgeToObjectiveCImpl()();

  v90 = [v88 initWithDomain:v89 code:4864 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v91 = [v90 domain];
  if (!v91)
  {
    v96 = 0;
    v98 = 0xE000000000000000;
LABEL_197:
    v122 = v82;
    v123 = v122;
    if (!v80)
    {
      goto LABEL_202;
    }

    v124 = _objc_getTaggedPointerTag(v122);
    if (!v124)
    {
      goto LABEL_213;
    }

    if (v124 != 22)
    {
      if (v124 == 2)
      {
        MEMORY[0x1EEE9AC00](v124);
        v125 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v127 = v126;

        goto LABEL_223;
      }

LABEL_202:
      LOBYTE(v144) = 0;
      *&v146 = 0;
      LOBYTE(v141) = 0;
      v142 = 0;
      if (__CFStringIsCF())
      {
        v125 = v146;
        if (!v146)
        {

          v127 = 0xE000000000000000;
          goto LABEL_223;
        }

        if (v142 == 1)
        {
          if (v144)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v133 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_222;
        }
      }

      else
      {
        v128 = v123;
        v129 = String.init(_nativeStorage:)();
        if (v130)
        {
          v125 = v129;
          v127 = v130;

          goto LABEL_223;
        }

        *&v146 = [(__CFString *)v128 length];
        if (!v146)
        {

          v125 = 0;
          v127 = 0xE000000000000000;
          goto LABEL_223;
        }
      }

      v133 = String.init(_cocoaString:)();
LABEL_222:
      v125 = v133;
      v127 = v134;
LABEL_223:
      if (v96 == v125 && v98 == v127)
      {
LABEL_225:

        goto LABEL_227;
      }

      v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v135)
      {
        goto LABEL_227;
      }

LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    result = [(__CFString *)v123 UTF8String];
    if (result)
    {
      v131 = String.init(utf8String:)(result);
      if (v132)
      {
        goto LABEL_214;
      }

      __break(1u);
LABEL_213:
      v141 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v131 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v132)
      {
        [(__CFString *)v123 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v127 = *(&v144 + 1);
        v125 = v144;
        goto LABEL_223;
      }

LABEL_214:
      v125 = v131;
      v127 = v132;

      goto LABEL_223;
    }

    goto LABEL_239;
  }

  v138 = v2;
  v92 = v91;
  v93 = _objc_isTaggedPointer(v91);
  v94 = v92;
  v2 = v94;
  if (!v93)
  {
    goto LABEL_136;
  }

  v95 = _objc_getTaggedPointerTag(v94);
  if (!v95)
  {
    goto LABEL_149;
  }

  if (v95 != 22)
  {
    if (v95 == 2)
    {
      MEMORY[0x1EEE9AC00](v95);
      v96 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v98 = v97;

LABEL_196:
      v2 = v138;
      goto LABEL_197;
    }

LABEL_136:
    LOBYTE(v144) = 0;
    *&v146 = 0;
    LOBYTE(v141) = 0;
    v142 = 0;
    if (__CFStringIsCF())
    {
      if (v146)
      {
        if (v142 == 1)
        {
          if (v144)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v104 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_194;
        }

LABEL_193:
        v104 = String.init(_cocoaString:)();
LABEL_194:
        v96 = v104;
        v98 = v105;
        goto LABEL_195;
      }
    }

    else
    {
      v99 = v2;
      v100 = String.init(_nativeStorage:)();
      if (v101)
      {
        v96 = v100;
        v98 = v101;

        goto LABEL_196;
      }

      *&v146 = [v99 length];
      if (v146)
      {
        goto LABEL_193;
      }
    }

    v96 = 0;
    v98 = 0xE000000000000000;
    goto LABEL_196;
  }

  result = [v2 UTF8String];
  if (result)
  {
    v102 = String.init(utf8String:)(result);
    if (v103)
    {
LABEL_150:
      v96 = v102;
      v98 = v103;
LABEL_151:

LABEL_195:
      goto LABEL_196;
    }

    __break(1u);
LABEL_149:
    v141 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v102 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v103)
    {
      [v2 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v98 = *(&v144 + 1);
      v96 = v144;
      goto LABEL_195;
    }

    goto LABEL_150;
  }

LABEL_241:
  __break(1u);
  return result;
}

CFAllocatorRef _NSSwiftLocale.exemplarCharacterSet.getter@<X0>(CFAllocatorRef *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____NSSwiftLocale_locale + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 184);
  swift_unknownObjectRetain();
  v5(&alloc, ObjectType, v3);
  swift_unknownObjectRelease();
  result = alloc;
  if (alloc)
  {
    goto LABEL_4;
  }

  result = CFCharacterSetCreateMutable(0);
  if (result)
  {
    v7 = result;
    type metadata accessor for __CharacterSetStorage();
    result = swift_allocObject();
    *(result + 2) = v7;
    *(result + 24) = 1;
LABEL_4:
    *a1 = result;
    return result;
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall _NSSwiftLocale.localizedString(forCalendarIdentifier:)(Swift::String forCalendarIdentifier)
{
  v2 = String._bridgeToObjectiveCImpl()();
  static Calendar._fromNSCalendarIdentifier(_:)(v2, &v14);
  swift_unknownObjectRelease();
  v3 = v14;
  if (v14 == 27)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    ObjectType = swift_getObjectType();
    v13 = v3;
    v8 = *(v6 + 112);
    swift_unknownObjectRetain();
    v9 = v8(&v13, ObjectType, v6);
    v11 = v10;
    swift_unknownObjectRelease();
    v5 = v11;
    v4 = v9;
  }

  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

id _NSSwiftLocale.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _NSSwiftLocale();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static Locale._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftLocale();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale);
    v6 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    result = swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged, &protocol conformance descriptor for _LocaleBridged);
    result = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t static Locale._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftLocale();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale);
    v6 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged, &protocol conformance descriptor for _LocaleBridged);
    v7 = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance Locale(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftLocale();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale);
    v6 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged, &protocol conformance descriptor for _LocaleBridged);
    v7 = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return 1;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance Locale@<X0>(id result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    type metadata accessor for _NSSwiftLocale();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale);
      v6 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale + 8);
      result = swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _LocaleBridged();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged, &protocol conformance descriptor for _LocaleBridged);
      result = v2;
    }

    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NSLocale._toCustomAnyHashable()()
{
  type metadata accessor for _NSSwiftLocale();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    *(swift_allocObject() + 16) = v0;
    lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged, &protocol conformance descriptor for _LocaleBridged);
    v1 = v0;
  }

  lazy protocol witness table accessor for type Locale and conformance Locale();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSLocale()
{
  v1 = *v0;
  type metadata accessor for _NSSwiftLocale();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _LocaleBridged();
    *(swift_allocObject() + 16) = v1;
    lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged, &protocol conformance descriptor for _LocaleBridged);
    v2 = v1;
  }

  lazy protocol witness table accessor for type Locale and conformance Locale();
  AnyHashable.init<A>(_:)();
}

uint64_t one-time initialization function for languageIdentifier()
{
  result = String._bridgeToObjectiveCImpl()();
  static NSLocaleKey.languageIdentifier = result;
  return result;
}

uint64_t specialized static Locale.isoCurrencyCodes.getter()
{
  v0 = specialized static Locale.Currency.isoCurrencies.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

unint64_t instantiation function for generic protocol witness table for Locale(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Locale and conformance Locale();
  a1[2] = lazy protocol witness table accessor for type Locale and conformance Locale();
  a1[3] = lazy protocol witness table accessor for type Locale and conformance Locale();
  result = lazy protocol witness table accessor for type Locale and conformance Locale();
  a1[4] = result;
  return result;
}

uint64_t specialized static NSLocale._numberingSystem(forLocaleIdentifier:)(uint64_t a1, uint64_t a2)
{

  Locale.Components.init(identifier:)(v10);
  object = v12;
  if (v12)
  {
    v4 = v13;
    v3 = v14;
    countAndFlagsBits = v11;

    outlined destroy of Locale.Components(v10);
  }

  else
  {
    static Locale.NumberingSystem.defaultNumberingSystem(for:)(&v7);
    outlined destroy of Locale.Components(v10);
    object = v7._object;
    if (!v7._object)
    {
      return 0;
    }

    v4 = v8;
    v3 = v9;
    countAndFlagsBits = v7._countAndFlagsBits;
  }

  outlined consume of Locale.LanguageCode?(countAndFlagsBits, object, v4, v3);
  return countAndFlagsBits;
}

uint64_t specialized static NSLocale._validNumberingSystems(forLocaleIdentifier:)(void *a1, uint64_t a2)
{
  v2 = specialized static Locale.NumberingSystem.validNumberingSystems(for:)(a1, a2);
  v3 = *(v2 + 2);
  if (v3)
  {
    v12 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v12;
    v5 = (v2 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v12 + 16);
      v9 = *(v12 + 24);

      if (v8 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v8 + 1, 1);
      }

      *(v12 + 16) = v8 + 1;
      v10 = v12 + 16 * v8;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t Locale.Language.isEquivalent(to:)()
{
  v0 = Locale.Language.maximalIdentifier.getter();
  v2 = v1;
  if (v0 == Locale.Language.maximalIdentifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

unint64_t specialized Collection.prefix(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    a4 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      a4 = a2 & 0xFFFFFFFFFFFFLL;
    }

    a2 = (a4 << 16) | 7;
    if ((a3 & 0x1000000000000000) == 0)
    {
      if (a4 >= a1)
      {
        a2 = (a1 << 16) | 4;
      }

      return _StringGuts.validateSubscalarRange(_:)(0xFuLL, a2, v5, v4);
    }
  }

  v7 = (a4 << 16) | 0xB;
  if ((v5 & 0x800000000000000) != 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = v7;
  }

  v9 = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)();
  v11 = v10;
  a2 = v8;
  if ((v11 & 1) == 0)
  {
    a2 = v9;
  }

  return _StringGuts.validateSubscalarRange(_:)(0xFuLL, a2, v5, v4);
}

uint64_t static Locale.NumberingSystem.defaultNumberingSystem(for:)@<X0>(Swift::String *a3@<X8>)
{
  v219 = *MEMORY[0x1E69E9840];
  memset(v218, 0, 96);
  outlined destroy of Locale.Language.Components(v218);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  v4 = 0;
  v5 = 0;
  if (Language > 0)
  {
    v217[Language] = 0;
    v4 = MEMORY[0x1865CAEB0](v217);
    v5 = v6;
  }

  LODWORD(v171._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Script = uloc_getScript();

  v8 = 0;
  v9 = 0;
  if (Script > 0)
  {
    v216[Script] = 0;
    v8 = MEMORY[0x1865CAEB0](v216);
    v9 = v10;
  }

  LODWORD(v171._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Country = uloc_getCountry();

  v12 = 0;
  v13 = 0;
  if (Country > 0)
  {
    v215[Country] = 0;
    v12 = MEMORY[0x1865CAEB0](v215, 0);
  }

  v167 = v13;
  v14 = v12;
  if (v5)
  {
    v15 = String.lowercased()();
    object = v15._object;
    countAndFlagsBits = v15._countAndFlagsBits;
    if (v9)
    {
LABEL_9:
      v171._countAndFlagsBits = v8;
      v171._object = v9;

      String.init<A>(_:)();
      v16 = String._capitalized()();
      v162 = v16._object;
      v163 = v16._countAndFlagsBits;

      goto LABEL_12;
    }
  }

  else
  {
    v4 = 0;
    object = 0;
    countAndFlagsBits = 0;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  v8 = 0;
  v162 = 0;
  v163 = 0;
LABEL_12:
  v17 = v14;
  v169 = v9;
  if (v167)
  {
    v18 = String.uppercased()();
    v19 = v18._countAndFlagsBits;
    v20 = v18._object;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
  }

  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  v214[0] = v4;
  v214[1] = v5;
  v214[2] = countAndFlagsBits;
  v214[3] = object;
  v214[4] = v8;
  v214[5] = v9;
  v214[6] = v163;
  v214[7] = v162;
  v214[8] = v17;
  v214[9] = v167;
  v214[10] = v19;
  v214[11] = v20;
  v131._countAndFlagsBits = v4;
  outlined copy of Locale.LanguageCode?(v4, v5, countAndFlagsBits, object);
  v168 = v8;
  outlined copy of Locale.LanguageCode?(v8, v9, v163, v162);
  v149 = v19;
  v150 = v17;
  v148 = v20;
  outlined copy of Locale.LanguageCode?(v17, v167, v19, v20);
  outlined destroy of Locale.Language.Components(v214);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  LODWORD(v171._countAndFlagsBits) = 0;
  String.utf8CString.getter();
  Variant = uloc_getVariant();

  v131._object = v5;
  if (Variant > 0 && (v213[Variant] = 0, v22 = MEMORY[0x1865CAEB0](v213), v23))
  {
    v125 = v22;
    v130 = v23;
    v24 = String.lowercased()();
    v129 = v24._countAndFlagsBits;
    v141 = v24._object;
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  }

  else
  {
    v125 = 0;
    v129 = 0;
    v130 = 0;
    v141 = 0;
  }

  v25 = v9;
  String.utf8CString.getter();
  v26 = uloc_openKeywords();

  v27 = 0;
  v146 = 4;
  v151 = 7;
  countAndFlagsBits_low = 27;
  v154 = 0;
  v28 = 0;
  v161 = 0;
  v29 = 0;
  v147 = 0;
  v140 = 0;
  v156 = 0;
  v157 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v127 = 0;
  v128 = 0;
  v144 = 0;
  v145 = 0;
  v137 = 0;
  v138 = 0;
  v135 = 0;
  v136 = 0;
  v166 = 0;
  v142 = 0;
  v143 = 0;
  v155 = 0;
  v134 = 0;
  if (v26)
  {
    type metadata accessor for ICU.Enumerator();
    *(swift_allocObject() + 16) = v26;
    LODWORD(v171._countAndFlagsBits) = 0;
    v34 = uenum_next();
    v134 = 0;
    v135 = 0;
    v143 = 0;
    v144 = 0;
    v155 = 0;
    v156 = 0;
    v127 = 0;
    v128 = 0;
    v136 = 0;
    v137 = 0;
    v142 = 0;
    v166 = 0;
    v138 = 0;
    v145 = 0;
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v30 = 0;
    v157 = 0;
    v159 = 0;
    v140 = 0;
    v147 = 0;
    v133 = 0;
    v161 = 0;
    v154 = 0;
    v27 = 0;
    countAndFlagsBits_low = 27;
    v151 = 7;
    v146 = 4;
    while (1)
    {
      if (!v34)
      {
LABEL_21:

        v28 = v159;
        v29 = v133;
        break;
      }

      v53 = String.init(cString:)();
      static Locale.legacyKey(forKey:)(v53, v54, &v171._countAndFlagsBits);

      v55 = v171._object;
      if (v171._object)
      {
        v152 = v33;
        v56 = v171._countAndFlagsBits;
        LODWORD(v171._countAndFlagsBits) = 0;
        String.utf8CString.getter();
        String.utf8CString.getter();
        KeywordValue = uloc_getKeywordValue();

        if (SLODWORD(v171._countAndFlagsBits) > 0)
        {
          goto LABEL_62;
        }

        if (KeywordValue <= 0)
        {
          goto LABEL_62;
        }

        v170[KeywordValue] = 0;
        v58 = MEMORY[0x1865CAEB0](v170);
        if (!v59)
        {
          goto LABEL_62;
        }

        v60 = v58;
        v61 = v59;
        if (v56 == 0x7261646E656C6163 && v55 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v62._countAndFlagsBits = v60;
          v62._object = v61;
          Calendar.Identifier.init(identifierString:)(v62);
          countAndFlagsBits_low = LOBYTE(v171._countAndFlagsBits);
          goto LABEL_63;
        }

        if (v56 == 0x6F6974616C6C6F63 && v55 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v63 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v27, v154, v159, v161);
          v27 = v60;
          v154 = v61;
          v159 = v63._countAndFlagsBits;
          v161 = v63._object;
          goto LABEL_63;
        }

        if (v56 == 0x79636E6572727563 && v55 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v64 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v133, v147, v140, v157);
          v133 = v60;
          v147 = v61;
          v140 = v64._countAndFlagsBits;
          v157 = v64._object;
          goto LABEL_63;
        }

        if (v56 == 0x737265626D756ELL && v55 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v65 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v30, v31, v32, v152);
          v31 = v61;
          v30 = v60;
          v32 = v65._countAndFlagsBits;
          v33 = v65._object;
          v8 = v168;
          v25 = v169;
          goto LABEL_64;
        }

        if (v56 == 30566 && v55 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v220._countAndFlagsBits = v60;
          v220._object = v61;
          Locale.Weekday.init(rawValue:)(&v171._countAndFlagsBits, v220);
          v151 = v171._countAndFlagsBits;
          goto LABEL_63;
        }

        if ((v56 != 0x7372756F68 || v55 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          if (v56 == 0x6572757361656DLL && v55 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            if (v60 == 0x6C61697265706D69 && v61 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (one-time initialization token for uk != -1)
              {
                swift_once();
              }

              v69 = static Locale.MeasurementSystem.uk;
              v68 = *algn_1EA7AFAD8;
              v70 = xmmword_1EA7AFAE0;

              outlined consume of Locale.LanguageCode?(v128, v145, v138, v156);
              v128 = v69;
              v145 = v68;
              v156 = *(&v70 + 1);
              v138 = v70;
            }

            else
            {
              v76 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v128, v145, v138, v156);
              v128 = v60;
              v145 = v61;
              v138 = v76._countAndFlagsBits;
              v156 = v76._object;
            }

            goto LABEL_63;
          }

          if ((v56 != 26482 || v55 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (v56 == 25715 && v55 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v77 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v127, v144, v135, v155);
              v127 = v60;
              v144 = v61;
              v135 = v77._countAndFlagsBits;
              v155 = v77._object;
              goto LABEL_63;
            }

            if (v56 == 0x656E6F7A656D6974 && v55 == 0xE800000000000000)
            {
            }

            else
            {
              v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v79 & 1) == 0)
              {
                goto LABEL_62;
              }
            }

            if (one-time initialization token for cache != -1)
            {
              v78 = swift_once();
            }

            v80 = static TimeZoneCache.cache;
            MEMORY[0x1EEE9AC00](v78);
            os_unfair_lock_lock(v80 + 30);
            closure #1 in TimeZoneCache.fixed(_:)partial apply(&v171._countAndFlagsBits);
            os_unfair_lock_unlock(v80 + 30);
            v81 = v171._countAndFlagsBits;
            v82 = v171._object;

            if (v81)
            {
              v83 = v82;
            }

            else
            {
              v83 = 0;
            }

            v134 = v83;
            swift_unknownObjectRelease();
            v143 = v81;
            goto LABEL_63;
          }

          if (String.count.getter() > 2)
          {
            specialized Collection.prefix(_:)(2, v60, v61);

            v71 = Substring.uppercased()();

            v171 = v71;
            v72 = String.init<A>(_:)();
            v74 = v73;
            v75 = String.uppercased()();
            outlined consume of Locale.LanguageCode?(v136, v166, v142, v137);
            v136 = v72;
            v137 = v75._object;
            v166 = v74;
            v142 = v75._countAndFlagsBits;
            goto LABEL_63;
          }

LABEL_62:

LABEL_63:
          v8 = v168;
          v25 = v169;
          v33 = v152;
          goto LABEL_64;
        }

        v66._countAndFlagsBits = v60;
        v66._object = v61;
        v67 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Locale.HourCycle.init(rawValue:), v66);

        if (v67 > 1)
        {
          v8 = v168;
          v25 = v169;
          v33 = v152;
          if (v67 == 2)
          {
            v146 = 2;
            goto LABEL_64;
          }

          if (v67 != 3)
          {
            goto LABEL_101;
          }

          v146 = 3;
        }

        else
        {
          v8 = v168;
          v25 = v169;
          v33 = v152;
          if (!v67)
          {
            v146 = 0;
            goto LABEL_64;
          }

          if (v67 != 1)
          {
LABEL_101:
            v146 = 4;
            goto LABEL_64;
          }

          v146 = 1;
        }
      }

LABEL_64:
      LODWORD(v171._countAndFlagsBits) = 0;
      v34 = uenum_next();
      if (SLODWORD(v171._countAndFlagsBits) > 0)
      {
        goto LABEL_21;
      }
    }
  }

  v132 = v29;
  v158 = v28;
  v35 = String.lowercased()();
  outlined consume of Locale.LanguageCode?(v30, v31, v32, v33);
  if (countAndFlagsBits_low == 27)
  {
    v36 = MEMORY[0x1E69E7CC0];
    if (!v154)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  LOBYTE(v171._countAndFlagsBits) = countAndFlagsBits_low;
  v37 = Calendar.Identifier.cldrIdentifier.getter();
  v39 = v38;
  v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v41 = v36[2];
  v40 = v36[3];
  if (v41 >= v40 >> 1)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v36);
  }

  v36[2] = v41 + 1;
  v42 = &v36[4 * v41];
  v42[4] = 0x7261646E656C6163;
  v42[5] = 0xE800000000000000;
  v42[6] = v37;
  v42[7] = v39;
  if (v154)
  {
LABEL_28:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
    }

    v44 = v36[2];
    v43 = v36[3];
    if (v44 >= v43 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v36);
    }

    v36[2] = v44 + 1;
    v45 = &v36[4 * v44];
    v45[4] = 0x6F6974616C6C6F63;
    v45[5] = 0xE90000000000006ELL;
    v45[6] = v158;
    v45[7] = v161;
  }

LABEL_33:
  if (v147)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
    }

    v47 = v36[2];
    v46 = v36[3];
    if (v47 >= v46 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v36);
    }

    v36[2] = v47 + 1;
    v48 = &v36[4 * v47];
    v48[4] = 0x79636E6572727563;
    v48[5] = 0xE800000000000000;
    v48[6] = v140;
    v48[7] = v157;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_193;
  }

  while (1)
  {
    v50 = v36[2];
    v49 = v36[3];
    if (v50 >= v49 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v36);
    }

    v36[2] = v50 + 1;
    v51 = &v36[4 * v50];
    v51[2]._countAndFlagsBits = 0x737265626D756ELL;
    v51[2]._object = 0xE700000000000000;
    v51[3] = v35;
    if (v151 > 3u)
    {
      if (v151 > 5u)
      {
        if (v151 != 6)
        {
          goto LABEL_132;
        }

        v52 = 7627123;
      }

      else
      {
        v52 = v151 == 4 ? 7694452 : 6910566;
      }
    }

    else if (v151 > 1u)
    {
      v52 = v151 == 2 ? 6649204 : 6579575;
    }

    else
    {
      v52 = 7237485;
      if (!v151)
      {
        v52 = 7239027;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
    }

    v85 = v36[2];
    v84 = v36[3];
    if (v85 >= v84 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v36);
    }

    v36[2] = v85 + 1;
    v86 = &v36[4 * v85];
    v86[4] = 30566;
    v86[5] = 0xE200000000000000;
    v86[6] = v52;
    v86[7] = 0xE300000000000000;
LABEL_132:
    if (v146 <= 1u)
    {
      v87 = 3223912;
      if (v146)
      {
        v87 = 3289448;
      }
    }

    else if (v146 == 2)
    {
      v87 = 3355240;
    }

    else
    {
      if (v146 != 3)
      {
        goto LABEL_144;
      }

      v87 = 3420776;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
    }

    v89 = v36[2];
    v88 = v36[3];
    if (v89 >= v88 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v36);
    }

    v36[2] = v89 + 1;
    v90 = &v36[4 * v89];
    v90[4] = 0x7372756F68;
    v90[5] = 0xE500000000000000;
    v90[6] = v87;
    v90[7] = 0xE300000000000000;
LABEL_144:
    if (v145)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
      }

      v92 = v36[2];
      v91 = v36[3];
      if (v92 >= v91 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v36);
      }

      v36[2] = v92 + 1;
      v93 = &v36[4 * v92];
      v93[4] = 0x6572757361656DLL;
      v93[5] = 0xE700000000000000;
      v93[6] = v138;
      v93[7] = v156;
    }

    if (v166)
    {
      if (v167)
      {
        if (v142 == v149 && v137 == v148)
        {
          outlined copy of Locale.LanguageCode?(v136, v166, v149, v148);
          outlined copy of Locale.LanguageCode?(v150, v167, v149, v148);
          outlined copy of Locale.LanguageCode?(v136, v166, v149, v148);
          outlined consume of Locale.LanguageCode?(v150, v167, v149, v148);

          outlined consume of Locale.LanguageCode?(v136, v166, v149, v148);
          v8 = v168;
          v25 = v169;
          goto LABEL_163;
        }

        v153 = v27;
        v139 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v94 = v136;
        v95 = v166;
        outlined copy of Locale.LanguageCode?(v136, v166, v142, v137);
        outlined copy of Locale.LanguageCode?(v150, v167, v149, v148);
        outlined copy of Locale.LanguageCode?(v136, v166, v142, v137);
        outlined consume of Locale.LanguageCode?(v150, v167, v149, v148);

        outlined consume of Locale.LanguageCode?(v136, v166, v142, v137);
        v25 = v169;
        if (v139)
        {
          v8 = v168;
          goto LABEL_163;
        }
      }

      else
      {
        v153 = v27;
        v94 = v136;
        v95 = v166;
        outlined copy of Locale.LanguageCode?(v136, v166, v142, v137);
        outlined copy of Locale.LanguageCode?(v150, 0, v149, v148);
        outlined copy of Locale.LanguageCode?(v136, v166, v142, v137);

        outlined consume of Locale.LanguageCode?(v136, v166, v142, v137);
        outlined consume of Locale.LanguageCode?(v150, 0, v149, v148);
      }

      v171._countAndFlagsBits = v94;
      v171._object = v95;

      MEMORY[0x1865CB0E0](2054847098, 0xE400000000000000);
      v96 = String.lowercased()();

      v27 = v153;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
      }

      v98 = v36[2];
      v97 = v36[3];
      v8 = v168;
      if (v98 >= v97 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v36);
      }

      v36[2] = v98 + 1;
      v99 = &v36[4 * v98];
      v99[2]._countAndFlagsBits = 26482;
      v99[2]._object = 0xE200000000000000;
      v99[3] = v96;
    }

LABEL_163:
    if (v144)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
      }

      v101 = v36[2];
      v100 = v36[3];
      if (v101 >= v100 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v36);
      }

      v36[2] = v101 + 1;
      v102 = &v36[4 * v101];
      v102[4] = 25715;
      v102[5] = 0xE200000000000000;
      v102[6] = v135;
      v102[7] = v155;
    }

    if (v143)
    {
      ObjectType = swift_getObjectType();
      v104 = v134[4](ObjectType);
      v106 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
      }

      v108 = v36[2];
      v107 = v36[3];
      if (v108 >= v107 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1, v36);
      }

      v36[2] = v108 + 1;
      v109 = &v36[4 * v108];
      v109[4] = 0x656E6F7A656D6974;
      v109[5] = 0xE800000000000000;
      v109[6] = v104;
      v109[7] = v106;
    }

    if (v130)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
      }

      v111 = v36[2];
      v110 = v36[3];
      if (v111 >= v110 >> 1)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v36);
      }

      v36[2] = v111 + 1;
      v112 = &v36[4 * v111];
      v112[4] = 24950;
      v112[5] = 0xE200000000000000;
      v112[6] = v129;
      v112[7] = v141;
    }

    v171 = v131;
    v172 = countAndFlagsBits;
    v173 = object;
    v174 = v8;
    v175 = v25;
    v176 = v163;
    v177 = v162;
    v178 = v150;
    v179 = v167;
    v180 = v149;
    v181 = v148;
    Locale.Language.Components.identifier.getter();
    v113 = v36[2];
    if (!v113)
    {
      break;
    }

    MEMORY[0x1865CB0E0](64, 0xE100000000000000);
    v114 = v36[2];
    if (!v114)
    {
      break;
    }

    v25 = 0;
    v8 = v113 - 1;
    v115 = v36 + 7;
    while (v25 < v114)
    {
      v117 = *(v115 - 1);
      v116 = *v115;
      v118 = *(v115 - 2);
      v171._countAndFlagsBits = *(v115 - 3);
      v171._object = v118;

      MEMORY[0x1865CB0E0](61, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v117, v116);

      MEMORY[0x1865CB0E0](v171._countAndFlagsBits, v171._object);

      if (v8 != v25)
      {
        MEMORY[0x1865CB0E0](59, 0xE100000000000000);
      }

      ++v25;
      v114 = v36[2];
      v115 += 4;
      if (v25 == v114)
      {
        goto LABEL_188;
      }
    }

    __break(1u);
LABEL_193:
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
  }

LABEL_188:

  String.utf8CString.getter();

  v119 = unumsys_open();

  if (MEMORY[0x1865D32B0](v119))
  {
    v120 = String.init(cString:)();
    v122 = v121;
    v123 = String.lowercased()();
    a3->_countAndFlagsBits = v120;
    a3->_object = v122;
    a3[1] = v123;
  }

  else
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  unumsys_close();
  v171 = v131;
  v172 = countAndFlagsBits;
  v173 = object;
  v174 = v168;
  v175 = v169;
  v176 = v163;
  v177 = v162;
  v178 = v150;
  v179 = v167;
  v180 = v149;
  v181 = v148;
  v182 = countAndFlagsBits_low;
  v183 = v27;
  v184 = v154;
  v185 = v158;
  v186 = v161;
  v187 = v132;
  v188 = v147;
  v189 = v140;
  v190 = v157;
  v191 = xmmword_18122D600;
  v192 = v35;
  v193 = v151;
  v194 = v146;
  v195 = v128;
  v196 = v145;
  v197 = v138;
  v198 = v156;
  v199 = v136;
  v200 = v166;
  v201 = v142;
  v202 = v137;
  v203 = v127;
  v204 = v144;
  v205 = v135;
  v206 = v155;
  v207 = v143;
  v208 = v134;
  v209 = v125;
  v210 = v130;
  v211 = v129;
  v212 = v141;
  return outlined destroy of Locale.Components(&v171);
}

uint64_t Locale.Language.lineLayoutDirection.getter()
{
  v0 = MEMORY[0x1E69E5750];

  return Locale.Language.characterDirection.getter(v0);
}

uint64_t Locale.Language.characterDirection.getter(uint64_t (*a1)(uint64_t, int *))
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = v1[3];
  v13 = v1[2];
  v14 = v3;
  v4 = v1[5];
  v15 = v1[4];
  v16 = v4;
  v5 = v1[1];
  v11 = *v1;
  v12 = v5;
  v10 = 0;
  Locale.Language.Components.identifier.getter();
  v6 = String.utf8CString.getter();

  v7 = a1(v6 + 32, &v10);

  if (v7 < 4 && v10 < 1)
  {
    return v7 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Locale.LanguageCode.identifier(_:)(char *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if ((v2 & 1) == 0)
  {
    String.utf8CString.getter();
    Language = uloc_getLanguage();

    if (Language > 0)
    {
      v20[Language] = 0;
      v10 = MEMORY[0x1865CAEB0](v20);
      v12 = v11;
      if (!v11)
      {
        return 0;
      }

      if (one-time initialization token for _isoLanguageCodeStrings != -1)
      {
        v17 = v10;
        swift_once();
        v10 = v17;
      }

      v13 = v10;
      v19[0] = v10;
      v19[1] = v12;
      MEMORY[0x1EEE9AC00](v10);
      v18[2] = v19;
      if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v18, v14))
      {
        return v13;
      }

      goto LABEL_16;
    }

    return 0;
  }

  v5 = v3;
  v6 = String.utf8CString.getter() + 32;
  ISO3Language = uloc_getISO3Language();
  if (!ISO3Language)
  {

    return 0;
  }

  if (ISO3Language == v6)
  {
  }

  else
  {
    v5 = String.init(cString:)();
    v4 = v8;
  }

  v16 = HIBYTE(v4) & 0xF;
  result = v5;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v16 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_16:

    return 0;
  }

  return result;
}

uint64_t Locale.LanguageCode.isISOLanguage.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  if (one-time initialization token for _isoLanguageCodeStrings != -1)
  {
    a1 = swift_once();
  }

  v11 = v5;
  v12 = v4;
  MEMORY[0x1EEE9AC00](a1);
  v9[2] = &v11;
  if (specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v9, v6))
  {
    return 1;
  }

  v11 = v2;
  v12 = v3;
  v13 = v5;
  v14 = v4;
  v10 = 0;
  Locale.LanguageCode.identifier(_:)(&v10);
  if (v7)
  {

    return 1;
  }

  return 0;
}

uint64_t static Locale.LanguageCode.isoLanguageCodes.getter()
{
  if (one-time initialization token for _isoLanguageCodeStrings != -1)
  {
    swift_once();
  }

  v0 = static Locale.LanguageCode._isoLanguageCodeStrings;
  v1 = *(static Locale.LanguageCode._isoLanguageCodeStrings + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = String.lowercased()();
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = (v11 + 32 * v7);
      v9[2]._countAndFlagsBits = v4;
      v9[2]._object = v5;
      v9[3] = v6;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

BOOL Locale.Script.isISOScript.getter()
{
  String.utf8CString.getter();
  Code = uscript_getCode();

  result = 0;
  if (Code > 0)
  {
    return v2 != -1;
  }

  return result;
}

BOOL Locale.Region.isISORegion.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v0 = String.utf8CString.getter();
  v1 = MEMORY[0x1865D34B0](v0 + 32, &v4);

  return v4 < 1 && v1 != 0;
}

uint64_t Locale.Region.subRegions.getter()
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v0 = String.utf8CString.getter();
  v1 = MEMORY[0x1865D34B0](v0 + 32, &v18);

  if (v18 > 0 || v1 == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  ContainedRegions = uregion_getContainedRegions();
  v3 = MEMORY[0x1E69E7CC0];
  if (v18 <= 0 && ContainedRegions != 0)
  {
    v6 = ContainedRegions;
    type metadata accessor for ICU.Enumerator();
    *(swift_initStackObject() + 16) = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    for (i = uenum_next(); i; i = uenum_next())
    {
      v8 = String.init(cString:)();
      v10 = v9;
      v13 = String.uppercased()();
      object = v13._object;
      countAndFlagsBits = v13._countAndFlagsBits;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        object = v13._object;
        countAndFlagsBits = v13._countAndFlagsBits;
      }

      *(v3 + 16) = v15 + 1;
      v16 = (v3 + 32 * v15);
      v16[4] = v8;
      v16[5] = v10;
      v16[6] = countAndFlagsBits;
      v16[7] = object;
    }
  }

  return v3;
}

uint64_t Locale.Region.containingRegion.getter@<X0>(Swift::String *a1@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = String.utf8CString.getter();
  v3 = MEMORY[0x1865D34B0](v2 + 32, &v10);

  if (v10 <= 0 && v3 != 0)
  {
    result = MEMORY[0x1865D3480](v3);
    if (result)
    {
      result = MEMORY[0x1865D34A0]();
      if (!result)
      {
        __break(1u);
        return result;
      }

      result = MEMORY[0x1865CAEB0]();
      if (v6)
      {
        v7 = result;
        v8 = v6;
        v9 = String.uppercased()();
        result = v9._countAndFlagsBits;
        a1->_countAndFlagsBits = v7;
        a1->_object = v8;
        a1[1] = v9;
        return result;
      }
    }
  }

  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t Locale.Region.continent.getter@<X0>(Swift::String *a1@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = String.utf8CString.getter();
  v3 = MEMORY[0x1865D34B0](v2 + 32, &v10);

  if (v10 <= 0 && v3 != 0)
  {
    result = MEMORY[0x1865D3490](v3, 3);
    if (result)
    {
      result = MEMORY[0x1865D34A0]();
      if (!result)
      {
        __break(1u);
        return result;
      }

      result = MEMORY[0x1865CAEB0]();
      if (v6)
      {
        v7 = result;
        v8 = v6;
        v9 = String.uppercased()();
        result = v9._countAndFlagsBits;
        a1->_countAndFlagsBits = v7;
        a1->_object = v8;
        a1[1] = v9;
        return result;
      }
    }
  }

  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t static Locale.Region.isoRegions.getter()
{
  if (one-time initialization token for _isoRegionCodes != -1)
  {
    swift_once();
  }

  v0 = static Locale.Region._isoRegionCodes;
  v1 = *(static Locale.Region._isoRegionCodes + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      v6 = String.uppercased()();
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = (v11 + 32 * v7);
      v9[2]._countAndFlagsBits = v4;
      v9[2]._object = v5;
      v9[3] = v6;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t one-time initialization function for _isoRegionCodes()
{
  result = closure #1 in variable initialization expression of static Locale.Region._isoRegionCodes();
  static Locale.Region._isoRegionCodes = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static Locale.Region._isoRegionCodes()
{
  v13 = MEMORY[0x1E69E7CC0];
  Available = uregion_getAvailable();
  if (Available)
  {
    v1 = Available;
    type metadata accessor for ICU.Enumerator();
    inited = swift_initStackObject();
    *(inited + 16) = v1;
    specialized Array.append<A>(contentsOf:)(inited);
  }

  v3 = uregion_getAvailable();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for ICU.Enumerator();
    v5 = swift_initStackObject();
    *(v5 + 16) = v4;
    specialized Array.append<A>(contentsOf:)(v5);
  }

  v6 = uregion_getAvailable();
  if (v6)
  {
    type metadata accessor for ICU.Enumerator();
    v7 = swift_initStackObject();
    *(v7 + 16) = v6;
    specialized Array.append<A>(contentsOf:)(v7);
  }

  v8 = uregion_getAvailable();
  if (v8)
  {
    type metadata accessor for ICU.Enumerator();
    v9 = swift_initStackObject();
    *(v9 + 16) = v8;
    specialized Array.append<A>(contentsOf:)(v9);
  }

  v10 = uregion_getAvailable();
  if (v10)
  {
    type metadata accessor for ICU.Enumerator();
    v11 = swift_initStackObject();
    *(v11 + 16) = v10;
    specialized Array.append<A>(contentsOf:)(v11);
  }

  return v13;
}

uint64_t Locale.Region.Category.debugDescription.getter()
{
  v1 = *v0;
  v2 = 0x646C726F77;
  v3 = 0x69746E6F63627573;
  v4 = 0x726F746972726574;
  if (v1 != 3)
  {
    v4 = 0x676E6970756F7267;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656E69746E6F63;
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