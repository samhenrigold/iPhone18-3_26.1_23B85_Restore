uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneICU and conformance _TimeZoneICU, type metadata accessor for _TimeZoneICU, &protocol conformance descriptor for _TimeZoneICU);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = (a5[7] + 16 * a1);
  *v12 = a4;
  v12[1] = result;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

{
  result = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = (a5[7] + 16 * a1);
  *v12 = a4;
  v12[1] = result;
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for CombineIdentifier();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

char *LocaleCache.preferredLanguages(forCurrentUser:)(char a1)
{
  v2 = String._bridgeToObjectiveCImpl()();
  if (a1)
  {
    v3 = CFPreferencesCopyValue(v2, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  else
  {
    v3 = CFPreferencesCopyAppValue(v2, *MEMORY[0x1E695E8A8]);
  }

  v4 = v3;
  swift_unknownObjectRelease();
  if (v4 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR), (swift_dynamicCast() & 1) != 0))
  {
    v5 = v31;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v5 + 16);
  if (v30)
  {
    v6 = 0;
    v29 = *MEMORY[0x1E695E4A8];
    v7 = v5 + 40;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
      }

      v9 = String._bridgeToObjectiveCImpl()();

      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v29, v9);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        break;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v12 = CanonicalLanguageIdentifierFromString;
      v13 = v12;
      if (!isTaggedPointer)
      {
        goto LABEL_17;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v12);
      if (!TaggedPointerTag)
      {
        _CFIndirectTaggedPointerStringGetContents();
        v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v23)
        {
          [(__CFString *)v13 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v15 = v31;
          v17 = v32;
LABEL_32:

          goto LABEL_33;
        }

        goto LABEL_27;
      }

      if (TaggedPointerTag == 22)
      {
        v21 = [(__CFString *)v13 UTF8String];
        if (!v21)
        {
          goto LABEL_43;
        }

        v22 = String.init(utf8String:)(v21);
        if (!v23)
        {
          goto LABEL_42;
        }

LABEL_27:
        v15 = v22;
        v17 = v23;

        goto LABEL_33;
      }

      if (TaggedPointerTag != 2)
      {
LABEL_17:
        LOBYTE(v31) = 0;
        if (__CFStringIsCF())
        {
        }

        else
        {
          v18 = v13;
          v19 = String.init(_nativeStorage:)();
          if (v20)
          {
            v15 = v19;
            v17 = v20;

            goto LABEL_33;
          }

          if ([(__CFString *)v18 length])
          {
            v15 = String.init(_cocoaString:)();
            v17 = v24;
            goto LABEL_32;
          }
        }

        goto LABEL_20;
      }

      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v15 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v17 = v16;

LABEL_33:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v26 = *(v8 + 2);
      v25 = *(v8 + 3);
      if (v26 >= v25 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v8);
      }

      ++v6;
      *(v8 + 2) = v26 + 1;
      v27 = &v8[16 * v26];
      *(v27 + 4) = v15;
      *(v27 + 5) = v17;
      v7 += 16;
      if (v30 == v6)
      {
        goto LABEL_40;
      }
    }

LABEL_20:
    v15 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_33;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_40:

  return v8;
}

uint64_t specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = v4;
  v19 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  if (ObjectType == type metadata accessor for NSFileManager())
  {
    return specialized String.withFileSystemRepresentation<A>(_:)(a3, a4, a1, a2);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    v12 = [v6 getFileSystemRepresentation:v18 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v12)
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }

    result = a3(v13);
    if (v5)
    {
      return swift_willThrow();
    }
  }

  else
  {
    v15 = swift_slowAlloc();
    v16 = [v6 getFileSystemRepresentation:v15 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    a3(v17);
    if (v5)
    {
      return MEMORY[0x1865D2690](v15, -1, -1);
    }

    else
    {
      return MEMORY[0x1865D2690](v15, -1, -1);
    }
  }

  return result;
}

uint64_t closure #1 in _FileManagerImpl.createDirectory(atPath:withIntermediateDirectories:attributes:)(const char *a1, unint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v183 = *MEMORY[0x1E69E9840];
  if (!a1)
  {

    URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v181);

    v11 = v181;
    v12 = v182;
    v13 = String._bridgeToObjectiveCImpl()();
    if (v11)
    {
      ObjectType = swift_getObjectType();
      v15 = (*(v12 + 432))(ObjectType, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
    }

    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    swift_unknownObjectRelease();

    return swift_willThrow();
  }

  if (a4)
  {
    S_IRWXU.getter();
    S_IRWXG.getter();
    S_IRWXO.getter();
    v9 = _mkpath_np();
    if (v9 == 20)
    {
      swift_bridgeObjectRetain_n();
      v25 = String.count.getter();

      if (v25 < 2)
      {
        goto LABEL_123;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_258;
      }

      v27 = Strong;
      v28 = [Strong fileExistsAtPath_];

      swift_unknownObjectRelease();
      if (v28)
      {
        v29 = 516;
        goto LABEL_127;
      }

      Path = String._deletingLastPathComponent()(a2, a3);
      v34 = v33;

      v35 = String.count.getter();

      if (v35 < 2)
      {
LABEL_123:
      }

      else
      {
        while (1)
        {
          v36 = swift_unknownObjectWeakLoadStrong();
          if (!v36)
          {
            goto LABEL_258;
          }

          v37 = v36;
          v38 = [v36 fileExistsAtPath_];

          swift_unknownObjectRelease();
          if (v38)
          {
            break;
          }

          Path = String._deletingLastPathComponent()(Path, v34);
          v40 = v39;

          v41 = String.count.getter();

          v34 = v40;
          if (v41 <= 1)
          {
            goto LABEL_123;
          }
        }

        a3 = v34;
        a2 = Path;
      }

      goto LABEL_124;
    }

    v10 = v9;
    if (v9 == 17)
    {
      return 0;
    }

    if (!v9)
    {
      if (a5)
      {

        v51 = a3;
        v52 = a2;
        v53 = a3;

        v54 = swift_unknownObjectWeakLoadStrong();
        if (v54)
        {
          v55 = v54;
          type metadata accessor for NSFileAttributeKey(0);
          lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();

          v56 = _NativeDictionary.bridged()();
          v181 = 0;
          v57 = [v55 setAttributes:v56 ofItemAtPath:String._bridgeToObjectiveCImpl()() error:&v181];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v57)
          {
            v58 = v181;
          }

          else
          {
            if (!v181 && one-time initialization token for _nilObjCError != -1)
            {
              swift_once();
            }

            swift_willThrow();
          }

          v59 = String._pathComponents.getter(a2, v53);
          v60 = String._pathComponents.getter(a2, v51);

          v61 = *(v60 + 16);

          v63 = *(v59 + 16);
          if (v63 < v61)
          {
            goto LABEL_247;
          }

          if (v61 == v63)
          {
LABEL_88:

            return 0;
          }

          v64 = (v59 + 16 * v61 + 40);
          v173 = v63;
          while (1)
          {
            if (v61 >= v63)
            {
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              swift_once();
              return swift_willThrow();
            }

            v66 = *(v64 - 1);
            v65 = *v64;
            v67 = HIBYTE(v51) & 0xF;
            if ((v51 & 0x2000000000000000) == 0)
            {
              v67 = v52 & 0xFFFFFFFFFFFFLL;
            }

            if (!v67)
            {
              break;
            }

            if (specialized Sequence<>.elementsEqual<A>(_:)(&outlined read-only object #0 of closure #1 in _FileManagerImpl.createDirectory(atPath:withIntermediateDirectories:attributes:), v52, v51))
            {

              v68 = String._compressingSlashes()();

              v69 = String._droppingTrailingSlashes.getter(v68._countAndFlagsBits, v68._object);
              v71 = v70;

              v181 = v52;
              v182 = v51;

              MEMORY[0x1865CB0E0](v69, v71);

              v52 = v181;
              v51 = v182;
            }

            else
            {
              v181 = v52;
              v182 = v51;

              MEMORY[0x1865CB0E0](47, 0xE100000000000000);

              MEMORY[0x1865CB0E0](v66, v65);

              v75 = String._compressingSlashes()();

              v52 = String._droppingTrailingSlashes.getter(v75._countAndFlagsBits, v75._object);
              v77 = v76;

              v51 = v77;
            }

LABEL_114:
            v83 = swift_unknownObjectWeakLoadStrong();
            if (!v83)
            {
              goto LABEL_258;
            }

            v84 = v83;

            v85 = _NativeDictionary.bridged()();
            v86 = String._bridgeToObjectiveCImpl()();
            v181 = 0;
            v87 = [v84 setAttributes:v85 ofItemAtPath:v86 error:&v181];

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v87)
            {
              v62 = v181;
            }

            else
            {
              if (!v181 && one-time initialization token for _nilObjCError != -1)
              {
                swift_once();
              }

              v62 = swift_willThrow();
            }

            ++v61;
            v64 += 2;
            v63 = v173;
            if (v173 == v61)
            {
              goto LABEL_88;
            }
          }

          if ((v65 & 0x1000000000000000) != 0)
          {
            if (String.UTF8View._foreignCount()() > 1)
            {
              v62 = String.UTF8View._foreignCount()();
LABEL_102:
              MEMORY[0x1EEE9AC00](v62);

              v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v74 = v73;

              v65 = v74;
LABEL_107:
              v78 = HIBYTE(v65) & 0xF;
              if ((v65 & 0x2000000000000000) == 0)
              {
                v78 = v66 & 0xFFFFFFFFFFFFLL;
              }

              if (v78)
              {
                specialized BidirectionalCollection.lastIndex(where:)(v66, v65);
                if (v79)
                {

                  v51 = 0xE100000000000000;
                  v52 = 47;
                }

                else
                {
                  String.index(after:)();
                  v80 = String.subscript.getter();
                  v52 = MEMORY[0x1865CAE80](v80);
                  v82 = v81;

                  v51 = v82;
                }
              }

              else
              {

                v52 = v66;
                v51 = v65;
              }

              goto LABEL_114;
            }
          }

          else
          {
            v72 = HIBYTE(v65) & 0xE;
            if ((v65 & 0x2000000000000000) == 0)
            {
              v72 = v66 & 0xFFFFFFFFFFFELL;
            }

            if (v72)
            {
              goto LABEL_102;
            }
          }

          goto LABEL_107;
        }

LABEL_258:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      return 0;
    }

    if (v10 > 29)
    {
      if (v10 <= 68)
      {
        if (v10 != 30)
        {
          if (v10 == 63)
          {
            v29 = 514;
            goto LABEL_127;
          }

          goto LABEL_124;
        }

        v29 = 642;
LABEL_127:
        if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
        {
          isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v89 = @"NSPOSIXErrorDomain";
          v90 = v89;
          v176 = v29;
          if (!isTaggedPointer)
          {
LABEL_133:
            LOBYTE(v177) = 0;
            v181 = 0;
            if (__CFStringIsCF())
            {
              v92 = a2;
            }

            else
            {
              v92 = a2;
              v93 = v90;
              String.init(_nativeStorage:)();
              if (!v94 && (v181 = [(__CFString *)v93 length]) != 0)
              {
                String.init(_cocoaString:)();
              }

              else
              {
              }
            }

LABEL_168:
            v116 = POSIXErrorCode.rawValue.getter();
            v117 = objc_allocWithZone(NSError);
            v118 = String._bridgeToObjectiveCImpl()();

            v30 = [v117 initWithDomain:v118 code:v116 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v119 = [v30 domain];
            if (!v119)
            {
              v125 = 0;
              v127 = 0xE000000000000000;
              goto LABEL_177;
            }

            v120 = v119;
            v121 = _objc_isTaggedPointer(v119);
            v122 = v120;
            v123 = v122;
            if (!v121)
            {
LABEL_174:
              v181 = 0;
              if (__CFStringIsCF())
              {
                a2 = v92;

                v125 = 0;
                v127 = 0xE000000000000000;
              }

              else
              {
                v138 = v123;
                v139 = String.init(_nativeStorage:)();
                a2 = v92;
                if (!v140)
                {
                  v181 = [v138 length];
                  v31 = v29;
                  if (v181)
                  {
                    v125 = String.init(_cocoaString:)();
                    v127 = v146;
                  }

                  else
                  {

                    v125 = 0;
                    v127 = 0xE000000000000000;
                  }

LABEL_179:
                  if (v125 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v127 == v128)
                  {
                  }

                  else
                  {
                    v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v129 & 1) == 0)
                    {
                      goto LABEL_246;
                    }
                  }

LABEL_183:

                  URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v181);

                  v130 = v181;
                  v131 = v182;
                  v132 = String._bridgeToObjectiveCImpl()();

                  if (v130)
                  {
                    v133 = swift_getObjectType();
                    v134 = (*(v131 + 432))(v133, v131);
                    swift_unknownObjectRelease();
                    if (v30)
                    {
LABEL_185:
                      v178 = v30;
                      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                      v30 = v30;
                      v135 = _getErrorEmbeddedNSError<A>(_:)();

                      if (v135)
                      {
                      }

                      else
                      {
                        swift_allocError();
                        *v137 = v30;
                      }

                      v136 = _swift_stdlib_bridgeErrorToNSError();
                      goto LABEL_191;
                    }
                  }

                  else
                  {
                    v134 = 0;
                    if (v30)
                    {
                      goto LABEL_185;
                    }
                  }

                  v136 = 0;
LABEL_191:
                  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

                  swift_willThrow();
                  return 0;
                }

                v125 = v139;
                v127 = v140;
              }

LABEL_178:
              v31 = v176;
              goto LABEL_179;
            }

            TaggedPointerTag = _objc_getTaggedPointerTag(v122);
            if (!TaggedPointerTag)
            {
              _CFIndirectTaggedPointerStringGetContents();
              v144 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (v145)
              {
                v125 = v144;
                v127 = v145;
              }

              else
              {
                [v123 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v125 = v177;
                v127 = v180;
              }

              goto LABEL_177;
            }

            if (TaggedPointerTag != 22)
            {
              if (TaggedPointerTag == 2)
              {
                MEMORY[0x1EEE9AC00](TaggedPointerTag);
                v125 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v127 = v126;

LABEL_177:
                a2 = v92;
                goto LABEL_178;
              }

              goto LABEL_174;
            }

            v141 = [v123 UTF8String];
            if (v141)
            {
              v142 = String.init(utf8String:)(v141);
              if (v143)
              {
                v125 = v142;
                v127 = v143;
                a2 = v92;

                goto LABEL_178;
              }

LABEL_255:
              __break(1u);
              goto LABEL_258;
            }

LABEL_254:
            __break(1u);
            goto LABEL_255;
          }

          v91 = _objc_getTaggedPointerTag(v89);
          if (!v91)
          {
            goto LABEL_140;
          }

          if (v91 != 22)
          {
            if (v91 == 2)
            {
              v92 = a2;
              MEMORY[0x1EEE9AC00](v91);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_168;
            }

            goto LABEL_133;
          }

          v95 = [(__CFString *)v90 UTF8String];
          if (v95)
          {
            v92 = a2;
            String.init(utf8String:)(v95);
            if (v96)
            {
              goto LABEL_141;
            }

            __break(1u);
LABEL_140:
            v92 = a2;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v97)
            {
              [(__CFString *)v90 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_168;
            }

LABEL_141:

            goto LABEL_168;
          }

          goto LABEL_252;
        }

LABEL_257:
        _StringGuts.grow(_:)(22);

        v181 = 0xD000000000000014;
        v182 = 0x80000001814813E0;
        v172 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v172);

        goto LABEL_258;
      }

      if (v10 != 69)
      {
        if (v10 == 102)
        {
          v30 = 0;
          v31 = 512;
          goto LABEL_183;
        }

        goto LABEL_124;
      }
    }

    else
    {
      if (v10 <= 12)
      {
        if (v10 != 1)
        {
          if (v10 == 2)
          {
            v29 = 4;
            goto LABEL_127;
          }

          goto LABEL_124;
        }

LABEL_120:
        v29 = 513;
        goto LABEL_127;
      }

      if (v10 == 13)
      {
        goto LABEL_120;
      }

      if (v10 != 28)
      {
LABEL_124:
        v29 = 512;
        goto LABEL_127;
      }
    }

    v29 = 640;
    goto LABEL_127;
  }

  result = mkdir(a1, 0x1FFu);
  if (result)
  {
    v17 = MEMORY[0x1865CA7A0]();
    if (v17 > 27)
    {
      if (v17 <= 62)
      {
        if (v17 != 28)
        {
          if (v17 == 30)
          {
            v24 = 642;
            goto LABEL_64;
          }

          goto LABEL_63;
        }
      }

      else
      {
        if (v17 == 63)
        {
          v24 = 514;
          goto LABEL_64;
        }

        if (v17 != 69)
        {
          if (v17 == 102)
          {
            v18 = 0;
            v19 = 512;
            goto LABEL_233;
          }

LABEL_63:
          v24 = 512;
LABEL_64:
          v175 = v24;
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            goto LABEL_257;
          }

          v42 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v43 = @"NSPOSIXErrorDomain";
          v44 = v43;
          if (v42)
          {
            v45 = _objc_getTaggedPointerTag(v43);
            if (v45)
            {
              if (v45 != 22)
              {
                if (v45 == 2)
                {
                  MEMORY[0x1EEE9AC00](v45);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                  goto LABEL_148;
                }

                goto LABEL_70;
              }

              v48 = [(__CFString *)v44 UTF8String];
              if (!v48)
              {
                __break(1u);
                goto LABEL_250;
              }

              String.init(utf8String:)(v48);
              if (v49)
              {
                goto LABEL_71;
              }

              __break(1u);
            }

            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (v50)
            {
              goto LABEL_71;
            }

            [(__CFString *)v44 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_148;
          }

LABEL_70:
          LOBYTE(v177) = 0;
          v181 = 0;
          if (__CFStringIsCF())
          {
LABEL_71:

            goto LABEL_148;
          }

          v46 = v44;
          String.init(_nativeStorage:)();
          if (!v47 && (v181 = [(__CFString *)v46 length]) != 0)
          {
            String.init(_cocoaString:)();
          }

          else
          {
          }

LABEL_148:
          v98 = POSIXErrorCode.rawValue.getter();
          v99 = objc_allocWithZone(NSError);
          v100 = String._bridgeToObjectiveCImpl()();

          v18 = [v99 initWithDomain:v100 code:v98 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v101 = [v18 domain];
          v174 = a2;
          if (!v101)
          {
LABEL_158:
            v107 = 0;
            v109 = 0xE000000000000000;
            goto LABEL_208;
          }

          v102 = v101;
          v103 = _objc_isTaggedPointer(v101);
          v104 = v102;
          v105 = v104;
          if ((v103 & 1) == 0)
          {
            goto LABEL_154;
          }

          v106 = _objc_getTaggedPointerTag(v104);
          if (v106)
          {
            if (v106 != 22)
            {
              if (v106 == 2)
              {
                MEMORY[0x1EEE9AC00](v106);
                v107 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v109 = v108;

                goto LABEL_208;
              }

LABEL_154:
              LOBYTE(v177) = 0;
              v181 = 0;
              if (__CFStringIsCF())
              {

                goto LABEL_158;
              }

              v110 = v105;
              v111 = String.init(_nativeStorage:)();
              if (v112)
              {
                v107 = v111;
                v109 = v112;

                goto LABEL_208;
              }

              v181 = [v110 length];
              if (!v181)
              {

                goto LABEL_158;
              }

              v107 = String.init(_cocoaString:)();
              v109 = v147;
LABEL_207:

LABEL_208:
              v148 = v44;
              v149 = v148;
              if (!v42)
              {
                goto LABEL_213;
              }

              v150 = _objc_getTaggedPointerTag(v148);
              if (!v150)
              {
                _CFIndirectTaggedPointerStringGetContents();
                v160 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (v161)
                {
                  v151 = v160;
                  v153 = v161;
                }

                else
                {
                  [(__CFString *)v149 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v151 = v177;
                  v153 = v180;
                }

                goto LABEL_227;
              }

              if (v150 != 22)
              {
                if (v150 == 2)
                {
                  MEMORY[0x1EEE9AC00](v150);
                  v151 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v153 = v152;

LABEL_227:
                  v19 = v175;
LABEL_228:
                  if (v107 == v151 && v109 == v153)
                  {
                  }

                  else
                  {
                    v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v163 & 1) == 0)
                    {
                      goto LABEL_245;
                    }
                  }

                  a2 = v174;
LABEL_233:

                  URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v181);

                  v164 = v181;
                  v165 = v182;
                  v166 = String._bridgeToObjectiveCImpl()();
                  if (v164)
                  {
                    v167 = swift_getObjectType();
                    v168 = (*(v165 + 432))(v167, v165);
                    swift_unknownObjectRelease();
                    if (v18)
                    {
LABEL_235:
                      v179 = v18;
                      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                      v18 = v18;
                      v169 = _getErrorEmbeddedNSError<A>(_:)();

                      if (v169)
                      {
                      }

                      else
                      {
                        swift_allocError();
                        *v171 = v18;
                      }

                      v170 = _swift_stdlib_bridgeErrorToNSError();
                      goto LABEL_241;
                    }
                  }

                  else
                  {
                    v168 = 0;
                    if (v18)
                    {
                      goto LABEL_235;
                    }
                  }

                  v170 = 0;
LABEL_241:
                  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

                  return swift_willThrow();
                }

LABEL_213:
                v181 = 0;
                if (__CFStringIsCF())
                {
                }

                else
                {
                  v154 = v149;
                  v155 = String.init(_nativeStorage:)();
                  if (v156)
                  {
                    v151 = v155;
                    v153 = v156;

                    goto LABEL_227;
                  }

                  v181 = [(__CFString *)v154 length];
                  if (v181)
                  {
                    v151 = String.init(_cocoaString:)();
                    v153 = v162;
                    goto LABEL_227;
                  }
                }

                v151 = 0;
                v153 = 0xE000000000000000;
                goto LABEL_227;
              }

              v157 = [(__CFString *)v149 UTF8String];
              if (v157)
              {
                v158 = String.init(utf8String:)(v157);
                v19 = v175;
                if (v159)
                {
                  v151 = v158;
                  v153 = v159;

                  goto LABEL_228;
                }

LABEL_251:
                __break(1u);
LABEL_252:
                __break(1u);
                goto LABEL_253;
              }

LABEL_250:
              __break(1u);
              goto LABEL_251;
            }

            v113 = [v105 UTF8String];
            if (!v113)
            {
LABEL_253:
              __break(1u);
              goto LABEL_254;
            }

            v114 = String.init(utf8String:)(v113);
            if (v115)
            {
LABEL_163:
              v107 = v114;
              v109 = v115;

              goto LABEL_207;
            }

            __break(1u);
          }

          _CFIndirectTaggedPointerStringGetContents();
          v114 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v115)
          {
            [v105 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v107 = v177;
            v109 = v180;
            goto LABEL_207;
          }

          goto LABEL_163;
        }
      }

      v24 = 640;
      goto LABEL_64;
    }

    if (v17 > 12)
    {
      if (v17 != 13)
      {
        if (v17 == 17)
        {
          v24 = 516;
          goto LABEL_64;
        }

        goto LABEL_63;
      }
    }

    else if (v17 != 1)
    {
      if (v17 == 2)
      {
        v24 = 4;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v24 = 513;
    goto LABEL_64;
  }

  if (!a5)
  {
    return result;
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
    goto LABEL_258;
  }

  v21 = v20;
  type metadata accessor for NSFileAttributeKey(0);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();

  v22 = _NativeDictionary.bridged()();
  v181 = 0;
  v23 = [v21 setAttributes:v22 ofItemAtPath:String._bridgeToObjectiveCImpl()() error:&v181];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v23 & 1) == 0)
  {
    if (!v181 && one-time initialization token for _nilObjCError != -1)
    {
      goto LABEL_248;
    }

    return swift_willThrow();
  }

  return v181;
}

uint64_t closure #2 in LocaleCache._currentAndCache.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  if (v6)
  {
    v7 = a1[1];
    v8 = v6;
  }

  else
  {
    v7 = a3;
    v8 = a2;
    *a1 = a2;
    a1[1] = a3;
    swift_unknownObjectRetain_n();
  }

  *a4 = v8;
  *(a4 + 8) = v7;
  *(a4 + 16) = 1;
  return swift_unknownObjectRetain();
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Bool()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithBool_];
}

void URL.init(_fileManagerFailableFileURLWithPath:)(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (_foundation_swift_url_feature_enabled())
  {

    v6 = specialized String.withFileSystemRepresentation<A>(_:)(a1, a2, a1, a2);
    v8 = v7;

    v17[0] = 3;
    type metadata accessor for _SwiftURL();
    v16[0] = 0;
    v16[1] = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v6, v8, 0, v17, v16);
    v9 = _SwiftURL.convertingFileReference()();
    v11 = v10;
  }

  else
  {
    v12 = (specialized BidirectionalCollection.last.getter(a1, a2) & 0x1FF) == 47;
    objc_allocWithZone(type metadata accessor for _BridgedURL());

    v13 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a1, a2, v12);
    if (!v13)
    {
      *a3 = 0;
      a3[1] = 0;
      return;
    }

    v14 = v13;
    v9 = _BridgedURL.convertingFileReference()();
    v11 = v15;
  }

  *a3 = v9;
  a3[1] = v11;
}

NSMapTable *__cdecl NSCreateMapTable(NSMapTableKeyCallBacks *keyCallBacks, NSMapTableValueCallBacks *valueCallBacks, NSUInteger capacity)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *&keyCallBacks->retain;
  *&keyCallBacksa.hash = *&keyCallBacks->hash;
  *&keyCallBacksa.retain = v4;
  *&keyCallBacksa.describe = *&keyCallBacks->describe;
  v6 = *valueCallBacks;
  return NSCreateMapTableWithZone(&keyCallBacksa, &v6, capacity, v3);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = 16 * (v20 | (v10 << 6));
      v24 = (*(v7 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v36 = *(*(v7 + 56) + v23);
      if ((v35 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = 16 * v17;
      v19 = (*(v9 + 48) + v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v9 + 56) + v18) = v36;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = 16 * (v20 | (v10 << 6));
      v24 = (*(v7 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v36 = *(*(v7 + 56) + v23);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = 16 * v17;
      v19 = (*(v9 + 48) + v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v9 + 56) + v18) = v36;
      ++*(v9 + 16);
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 32 * v22);
      v25 = v24[1];
      v39 = *v24;
      v26 = v24[3];
      v38 = v24[2];
      v27 = *(v23 + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 32 * v17);
      *v18 = v39;
      v18[1] = v25;
      v18[2] = v38;
      v18[3] = v26;
      *(*(v9 + 56) + 8 * v17) = v27;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v34 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = (*(v7 + 56) + 16 * v22);
      v25 = v24[1];
      v35 = *v24;
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v23);
      result = Hasher._finalize()();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      v18 = (*(v9 + 56) + 16 * v17);
      *v18 = v35;
      v18[1] = v25;
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v4;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_SpySvSgGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32VSpySvSgGGMd, &_ss18_DictionaryStorageCys6UInt32VSpySvSgGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

__n128 LocaleCache.preferences()(_OWORD *a1)
{
  v2 = __CFXPreferencesCopyCurrentApplicationStateWithDeadlockAvoidance();
  v4[0] = 2;
  memset(&v4[8], 0, 128);
  *&v4[136] = 33686018;
  LocalePreferences.apply(_:)(v2);

  a1[6] = *&v4[96];
  a1[7] = *&v4[112];
  *(a1 + 124) = *&v4[124];
  a1[2] = *&v4[32];
  a1[3] = *&v4[48];
  a1[4] = *&v4[64];
  a1[5] = *&v4[80];
  result = *&v4[16];
  *a1 = *v4;
  a1[1] = *&v4[16];
  return result;
}

Swift::Void __swiftcall LocalePreferences.apply(_:)(CFDictionaryRef a1)
{
  v2 = a1;
  v291[4] = *MEMORY[0x1E69E9840];
  v290 = 0;
  if (CFDictionaryGetCount(a1) < 1)
  {
    return;
  }

  v3 = __CFLocalePrefsCopyAppleLanguages(v2);
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 copy];
      v6 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      v7 = specialized _arrayConditionalCast<A, B>(_:)(v6);

      if (v7)
      {

        *(v1 + 8) = v7;
      }
    }

    else
    {
    }
  }

  v8 = __CFLocalePrefsCopyAppleLocale(v2);
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {

      goto LABEL_31;
    }

    v11 = v10;
    isTaggedPointer = _objc_isTaggedPointer(v10);
    v13 = v9;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v11);
      switch(TaggedPointerTag)
      {
        case 0:
          _CFIndirectTaggedPointerStringGetContents();
          v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v24)
          {
            [v11 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();

            *(v1 + 16) = v288;
            *(v1 + 24) = v289;
            goto LABEL_31;
          }

          v15 = v23;
          v17 = v24;

          goto LABEL_29;
        case 0x16:
          v18 = v13;
          v21 = [v11 UTF8String];
          v22 = v11;
          if (!v21)
          {
            goto LABEL_293;
          }

          v19 = String.init(utf8String:)(v21);
          if (!v20)
          {
            goto LABEL_296;
          }

          goto LABEL_24;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v15 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v17 = v16;

LABEL_30:

          *(v1 + 16) = v15;
          *(v1 + 24) = v17;
          goto LABEL_31;
      }
    }

    LOBYTE(v288) = 0;
    v291[0] = 0;
    if (__CFStringIsCF())
    {

LABEL_21:
      v15 = 0;
      v17 = 0xE000000000000000;
      goto LABEL_30;
    }

    v18 = v13;
    v19 = String.init(_nativeStorage:)();
    if (!v20)
    {
      v291[0] = [v11 length];
      if (!v291[0])
      {

        goto LABEL_21;
      }

      v15 = String.init(_cocoaString:)();
      v17 = v25;
LABEL_29:

      goto LABEL_30;
    }

LABEL_24:
    v15 = v19;
    v17 = v20;

    goto LABEL_30;
  }

LABEL_31:
  IsMetric = __CFLocalePrefsAppleMetricUnitsIsMetric(v2, &v290);
  if (v290)
  {
    *v1 = IsMetric;
  }

  IsCm = __CFLocalePrefsAppleMeasurementUnitsIsCm(v2, &v290);
  if (v290)
  {
    *(v1 + 136) = IsCm == 0;
  }

  IsC = __CFLocalePrefsAppleTemperatureUnitIsC(v2, &v290);
  if (v290)
  {
    *(v1 + 137) = IsC != 0;
  }

  v29 = __CFLocalePrefsAppleForce24HourTime(v2, &v290);
  if (v290)
  {
    *(v1 + 138) = v29;
  }

  v30 = __CFLocalePrefsAppleForce12HourTime(v2, &v290);
  if (v290)
  {
    *(v1 + 139) = v30;
  }

  v31 = __CFLocalePrefsCopyAppleCollationOrder(v2);
  if (v31)
  {
    v32 = v31;
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (!v33)
    {

      goto LABEL_67;
    }

    v34 = v33;
    v35 = _objc_isTaggedPointer(v33);
    v36 = v32;
    if (!v35)
    {
      goto LABEL_48;
    }

    v37 = _objc_getTaggedPointerTag(v34);
    if (v37)
    {
      if (v37 != 22)
      {
        if (v37 == 2)
        {
          MEMORY[0x1EEE9AC00](v37);
          v38 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v40 = v39;

LABEL_66:

          *(v1 + 32) = v38;
          *(v1 + 40) = v40;
          goto LABEL_67;
        }

LABEL_48:
        LOBYTE(v288) = 0;
        v291[0] = 0;
        if (__CFStringIsCF())
        {
          if (v291[0])
          {
LABEL_64:
            v38 = String.init(_cocoaString:)();
            v40 = v48;
            goto LABEL_65;
          }
        }

        else
        {
          v41 = v36;
          v42 = String.init(_nativeStorage:)();
          if (v43)
          {
            v38 = v42;
            v40 = v43;

            goto LABEL_66;
          }

          v291[0] = [v34 length];
          if (v291[0])
          {
            goto LABEL_64;
          }
        }

        v38 = 0;
        v40 = 0xE000000000000000;
        goto LABEL_66;
      }

      v36 = v36;
      v44 = [v34 UTF8String];
      v45 = v34;
      if (!v44)
      {
        goto LABEL_294;
      }

      v46 = String.init(utf8String:)(v44);
      if (v47)
      {
LABEL_60:
        v38 = v46;
        v40 = v47;

LABEL_65:
        goto LABEL_66;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v46 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v47)
    {
      [v34 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();

      *(v1 + 32) = v288;
      *(v1 + 40) = v289;
      goto LABEL_67;
    }

    goto LABEL_60;
  }

LABEL_67:
  v49 = __CFLocalePrefsCopyCountry(v2);
  if (v49)
  {
    v50 = v49;
    objc_opt_self();
    v51 = swift_dynamicCastObjCClass();
    if (v51)
    {
      v52 = v51;
      v53 = _objc_isTaggedPointer(v51);
      v54 = v50;
      if (!v53)
      {
        goto LABEL_74;
      }

      v55 = _objc_getTaggedPointerTag(v52);
      if (v55)
      {
        if (v55 != 22)
        {
          if (v55 == 2)
          {
            MEMORY[0x1EEE9AC00](v55);
            v56 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v58 = v57;

LABEL_92:

            *(v1 + 120) = v56;
            *(v1 + 128) = v58;
            goto LABEL_93;
          }

LABEL_74:
          v291[0] = 0;
          if (__CFStringIsCF())
          {
            if (v291[0])
            {
LABEL_90:
              v56 = String.init(_cocoaString:)();
              v58 = v66;
              goto LABEL_91;
            }
          }

          else
          {
            v59 = v54;
            v60 = String.init(_nativeStorage:)();
            if (v61)
            {
              v56 = v60;
              v58 = v61;

              goto LABEL_92;
            }

            v291[0] = [v52 length];
            if (v291[0])
            {
              goto LABEL_90;
            }
          }

          v56 = 0;
          v58 = 0xE000000000000000;
          goto LABEL_92;
        }

        v54 = v54;
        v62 = [v52 UTF8String];
        v63 = v52;
        if (!v62)
        {
          goto LABEL_295;
        }

        v64 = String.init(utf8String:)(v62);
        if (v65)
        {
LABEL_86:
          v56 = v64;
          v58 = v65;

LABEL_91:
          goto LABEL_92;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      v64 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v65)
      {
        goto LABEL_86;
      }

      [v52 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();

      *(v1 + 120) = v288;
      *(v1 + 128) = v289;
    }

    else
    {
    }
  }

LABEL_93:
  v67 = __CFLocalePrefsCopyAppleICUDateTimeSymbols(v2);
  if (v67)
  {
    v68 = v67;

    *(v1 + 64) = v68;
  }

  v69 = __CFLocalePrefsCopyAppleICUDateFormatStrings(v2);
  if (v69)
  {
    v70 = *(v1 + 72);
    v71 = v69;
    v72 = v69;

    *(v1 + 72) = v71;
    objc_opt_self();
    v73 = swift_dynamicCastObjCClass();
    if (v73)
    {
      v284 = v2;
      v291[0] = 0;
      _sSD10FoundationE34_conditionallyBridgeFromObjectiveC_6resultSbSo12NSDictionaryC_SDyxq_GSgztFZSS_SSTt1g5(v73, v291);

      v74 = v291[0];
      if (v291[0])
      {
        v75 = 0;
        v76 = 1 << *(v291[0] + 32);
        if (v76 < 64)
        {
          v77 = ~(-1 << v76);
        }

        else
        {
          v77 = -1;
        }

        v78 = v77 & *(v291[0] + 64);
        v79 = (v76 + 63) >> 6;
        for (i = MEMORY[0x1E69E7CC8]; ; i = v100)
        {
          while (1)
          {
            while (1)
            {
              v80 = v75;
              if (!v78)
              {
                while (1)
                {
                  v75 = v80 + 1;
                  if (__OFADD__(v80, 1))
                  {
                    break;
                  }

                  if (v75 >= v79)
                  {

                    *(v1 + 104) = i;
                    v2 = v284;
                    goto LABEL_138;
                  }

                  v78 = *(v74 + 64 + 8 * v75);
                  ++v80;
                  if (v78)
                  {
                    goto LABEL_106;
                  }
                }

                __break(1u);
LABEL_278:
                __break(1u);
LABEL_279:
                __break(1u);
LABEL_280:
                __break(1u);
LABEL_281:
                __break(1u);
LABEL_282:
                __break(1u);
LABEL_283:
                __break(1u);
LABEL_284:
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
LABEL_288:
                __break(1u);
              }

LABEL_106:
              v81 = __clz(__rbit64(v78));
              v78 &= v78 - 1;
              v82 = (v75 << 10) | (16 * v81);
              v83 = (*(v74 + 48) + v82);
              v84 = *v83;
              v85 = v83[1];
              v86 = (*(v74 + 56) + v82);
              v87 = *v86;
              v88 = v86[1];

              v89 = _ss17FixedWidthIntegerPsEyxSgSScfCSu_Tt1g5(v84, v85);
              if ((v90 & 1) == 0)
              {
                break;
              }
            }

            v276 = v1;
            v91 = v89;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v291[0] = i;
            v273 = v91;
            v93 = specialized __RawDictionaryStorage.find<A>(_:)();
            v95 = *(i + 16);
            v96 = (v94 & 1) == 0;
            v97 = __OFADD__(v95, v96);
            v98 = v95 + v96;
            if (v97)
            {
              goto LABEL_281;
            }

            v99 = v94;
            if (*(i + 24) >= v98)
            {
              break;
            }

            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v98, isUniquelyReferenced_nonNull_native);
            v100 = v291[0];
            v93 = specialized __RawDictionaryStorage.find<A>(_:)();
            if ((v99 & 1) != (v101 & 1))
            {
              goto LABEL_298;
            }

            v102 = v91;
            v1 = v276;
            if (v99)
            {
              goto LABEL_112;
            }

LABEL_115:
            *(v100 + 8 * (v93 >> 6) + 64) |= 1 << v93;
            *(*(v100 + 48) + 8 * v93) = v102;
            v104 = (*(v100 + 56) + 16 * v93);
            *v104 = v87;
            v104[1] = v88;
            v105 = *(v100 + 16);
            v97 = __OFADD__(v105, 1);
            v106 = v105 + 1;
            if (v97)
            {
              goto LABEL_285;
            }

            *(v100 + 16) = v106;
            i = v100;
          }

          v102 = v91;
          v1 = v276;
          if (isUniquelyReferenced_nonNull_native)
          {
            v100 = i;
            if (v94)
            {
              goto LABEL_112;
            }

            goto LABEL_115;
          }

          v265 = v93;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV11FormatStyleV0dF0VSSGMd, &_ss18_DictionaryStorageCy10Foundation4DateV11FormatStyleV0dF0VSSGMR);
          v107 = static _DictionaryStorage.copy(original:)();
          v100 = v107;
          if (*(i + 16))
          {
            v108 = (v107 + 64);
            v271 = (i + 64);
            v109 = ((1 << *(v100 + 32)) + 63) >> 6;
            if (v100 != i || v108 >= &v271[8 * v109])
            {
              memmove(v108, v271, 8 * v109);
            }

            v110 = 0;
            *(v100 + 16) = *(i + 16);
            v111 = 1 << *(i + 32);
            v112 = *(i + 64);
            if (v111 < 64)
            {
              v113 = ~(-1 << v111);
            }

            else
            {
              v113 = -1;
            }

            v267 = v113 & v112;
            v269 = (v111 + 63) >> 6;
            if ((v113 & v112) != 0)
            {
              do
              {
                v114 = __clz(__rbit64(v267));
                v267 &= v267 - 1;
LABEL_131:
                v117 = v114 | (v110 << 6);
                v118 = (*(i + 56) + 16 * v117);
                v120 = *v118;
                v119 = v118[1];
                *(*(v100 + 48) + 8 * v117) = *(*(i + 48) + 8 * v117);
                v121 = (*(v100 + 56) + 16 * v117);
                *v121 = v120;
                v121[1] = v119;
              }

              while (v267);
            }

            v115 = v110;
            while (1)
            {
              v110 = v115 + 1;
              if (__OFADD__(v115, 1))
              {
                break;
              }

              if (v110 >= v269)
              {
                goto LABEL_133;
              }

              v116 = *&v271[8 * v110];
              ++v115;
              if (v116)
              {
                v114 = __clz(__rbit64(v116));
                v267 = (v116 - 1) & v116;
                goto LABEL_131;
              }
            }

            __break(1u);
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
            goto LABEL_292;
          }

LABEL_133:

          v102 = v273;
          v1 = v276;
          v93 = v265;
          if ((v99 & 1) == 0)
          {
            goto LABEL_115;
          }

LABEL_112:
          v103 = (*(v100 + 56) + 16 * v93);
          *v103 = v87;
          v103[1] = v88;
        }
      }

      v2 = v284;
    }

    else
    {
    }
  }

LABEL_138:
  v122 = __CFLocalePrefsCopyAppleICUTimeFormatStrings(v2);
  if (v122)
  {
    v123 = v122;

    *(v1 + 80) = v123;
  }

  v124 = __CFLocalePrefsCopyAppleICUNumberFormatStrings(v2);
  if (v124)
  {
    v125 = v124;

    *(v1 + 88) = v125;
  }

  v126 = __CFLocalePrefsCopyAppleICUNumberSymbols(v2);
  if (!v126)
  {
    goto LABEL_187;
  }

  v127 = *(v1 + 96);
  v128 = v126;
  v129 = v126;

  *(v1 + 96) = v128;
  objc_opt_self();
  v130 = swift_dynamicCastObjCClass();
  if (!v130)
  {

    goto LABEL_187;
  }

  v291[0] = 0;
  _sSD10FoundationE34_conditionallyBridgeFromObjectiveC_6resultSbSo12NSDictionaryC_SDyxq_GSgztFZSS_SSTt1g5(v130, v291);

  v131 = v291[0];
  if (!v291[0])
  {
    goto LABEL_187;
  }

  v285 = v2;
  v132 = 0;
  v133 = 1 << *(v291[0] + 32);
  if (v133 < 64)
  {
    v134 = ~(-1 << v133);
  }

  else
  {
    v134 = -1;
  }

  v135 = v134 & *(v291[0] + 64);
  v136 = (v133 + 63) >> 6;
  v281 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v137 = v132;
    if (!v135)
    {
      break;
    }

LABEL_153:
    v138 = __clz(__rbit64(v135));
    v135 &= v135 - 1;
    v139 = (v132 << 10) | (16 * v138);
    v140 = (*(v131 + 48) + v139);
    v141 = *v140;
    v142 = v140[1];
    v143 = (*(v131 + 56) + v139);
    v144 = *v143;
    v145 = v143[1];

    v146 = _ss17FixedWidthIntegerPsEyxSgSScfCs6UInt32V_Tt1g5(v141, v142);
    if ((v146 & 0x100000000) != 0)
    {
    }

    else
    {
      v277 = v1;
      v147 = v146;
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v291[0] = v281;
      v274 = v147;
      v149 = specialized __RawDictionaryStorage.find<A>(_:)(v147);
      v151 = *(v281 + 16);
      v152 = (v150 & 1) == 0;
      v97 = __OFADD__(v151, v152);
      v153 = v151 + v152;
      if (v97)
      {
        goto LABEL_282;
      }

      v154 = v150;
      if (*(v281 + 24) >= v153)
      {
        v157 = v274;
        if (v148)
        {
          v155 = v281;
          if (v150)
          {
            goto LABEL_159;
          }

          goto LABEL_162;
        }

        v266 = v149;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32VSSGMd, &_ss18_DictionaryStorageCys6UInt32VSSGMR);
        v162 = static _DictionaryStorage.copy(original:)();
        v155 = v162;
        if (*(v281 + 16))
        {
          v163 = (v162 + 64);
          v272 = (v281 + 64);
          v164 = ((1 << *(v155 + 32)) + 63) >> 6;
          if (v155 != v281 || v163 >= &v272[8 * v164])
          {
            memmove(v163, v272, 8 * v164);
          }

          v165 = 0;
          *(v155 + 16) = *(v281 + 16);
          v166 = 1 << *(v281 + 32);
          v167 = *(v281 + 64);
          if (v166 < 64)
          {
            v168 = ~(-1 << v166);
          }

          else
          {
            v168 = -1;
          }

          v268 = v168 & v167;
          v270 = (v166 + 63) >> 6;
          if ((v168 & v167) != 0)
          {
            do
            {
              v169 = __clz(__rbit64(v268));
              v268 &= v268 - 1;
LABEL_178:
              v172 = v169 | (v165 << 6);
              v173 = (*(v281 + 56) + 16 * v172);
              v175 = *v173;
              v174 = v173[1];
              *(*(v155 + 48) + 4 * v172) = *(*(v281 + 48) + 4 * v172);
              v176 = (*(v155 + 56) + 16 * v172);
              *v176 = v175;
              v176[1] = v174;
            }

            while (v268);
          }

          v170 = v165;
          while (1)
          {
            v165 = v170 + 1;
            if (__OFADD__(v170, 1))
            {
              goto LABEL_290;
            }

            if (v165 >= v270)
            {
              break;
            }

            v171 = *&v272[8 * v165];
            ++v170;
            if (v171)
            {
              v169 = __clz(__rbit64(v171));
              v268 = (v171 - 1) & v171;
              goto LABEL_178;
            }
          }
        }

        v157 = v274;
        v1 = v277;
        v149 = v266;
        if ((v154 & 1) == 0)
        {
          goto LABEL_162;
        }

LABEL_159:
        v158 = (*(v155 + 56) + 16 * v149);
        *v158 = v144;
        v158[1] = v145;

        v281 = v155;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v153, v148);
        v155 = v291[0];
        v149 = specialized __RawDictionaryStorage.find<A>(_:)(v274);
        if ((v154 & 1) != (v156 & 1))
        {
          goto LABEL_299;
        }

        v157 = v274;
        if (v154)
        {
          goto LABEL_159;
        }

LABEL_162:
        *(v155 + 8 * (v149 >> 6) + 64) |= 1 << v149;
        *(*(v155 + 48) + 4 * v149) = v157;
        v159 = (*(v155 + 56) + 16 * v149);
        *v159 = v144;
        v159[1] = v145;
        v160 = *(v155 + 16);
        v97 = __OFADD__(v160, 1);
        v161 = v160 + 1;
        if (v97)
        {
          goto LABEL_286;
        }

        *(v155 + 16) = v161;
        v281 = v155;
      }
    }
  }

  while (1)
  {
    v132 = v137 + 1;
    if (__OFADD__(v137, 1))
    {
      goto LABEL_278;
    }

    if (v132 >= v136)
    {
      break;
    }

    v135 = *(v131 + 64 + 8 * v132);
    ++v137;
    if (v135)
    {
      goto LABEL_153;
    }
  }

  if (*(v281 + 16))
  {

    *(v1 + 112) = v281;
  }

  else
  {
  }

  v2 = v285;
LABEL_187:
  Weekday = __CFLocalePrefsCopyAppleFirstWeekday(v2);
  if (Weekday)
  {
    v178 = Weekday;
    objc_opt_self();
    v179 = swift_dynamicCastObjCClass();
    if (v179)
    {
      v291[0] = 0;
      _sSD10FoundationE34_conditionallyBridgeFromObjectiveC_6resultSbSo12NSDictionaryC_SDyxq_GSgztFZSS_SiTt1g5(v179, v291);

      v180 = v291[0];
      if (v291[0])
      {
        v286 = v2;
        v181 = 0;
        v182 = 1 << *(v291[0] + 32);
        if (v182 < 64)
        {
          v183 = ~(-1 << v182);
        }

        else
        {
          v183 = -1;
        }

        v184 = v183 & *(v291[0] + 64);
        v185 = (v182 + 63) >> 6;
        for (j = MEMORY[0x1E69E7CC8]; ; j = v203)
        {
          do
          {
LABEL_195:
            if (v184)
            {
              goto LABEL_194;
            }

            do
            {
              v195 = v181 + 1;
              if (__OFADD__(v181, 1))
              {
                goto LABEL_279;
              }

              if (v195 >= v185)
              {

                if (*(j + 16))
                {

                  *(v1 + 48) = j;
                }

                else
                {
                }

                v2 = v286;
                goto LABEL_232;
              }

              v184 = *(v180 + 64 + 8 * v195);
              ++v181;
            }

            while (!v184);
            v181 = v195;
LABEL_194:
            v187 = __clz(__rbit64(v184));
            v184 &= v184 - 1;
            v188 = v187 | (v181 << 6);
            v189 = (*(v180 + 48) + 16 * v188);
            v190 = *v189;
            v191 = v189[1];
            v192 = *(*(v180 + 56) + 8 * v188);

            v193._countAndFlagsBits = v190;
            v193._object = v191;
            Calendar.Identifier.init(identifierString:)(v193);
            v194 = LOBYTE(v291[0]);
          }

          while (LOBYTE(v291[0]) == 27);
          v278 = v1;
          v196 = swift_isUniquelyReferenced_nonNull_native();
          v291[0] = j;
          v197 = specialized __RawDictionaryStorage.find<A>(_:)(v194);
          v199 = *(j + 16);
          v200 = (v198 & 1) == 0;
          v97 = __OFADD__(v199, v200);
          v201 = v199 + v200;
          if (v97)
          {
            goto LABEL_283;
          }

          if (*(j + 24) >= v201)
          {
            if (v196)
            {
              v203 = j;
              if ((v198 & 1) == 0)
              {
                goto LABEL_207;
              }
            }

            else
            {
              v275 = v198;
              v282 = v197;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSiGMd, &_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSiGMR);
              v207 = static _DictionaryStorage.copy(original:)();
              v203 = v207;
              if (*(j + 16))
              {
                v208 = (v207 + 64);
                v209 = j + 64;
                v210 = ((1 << *(v203 + 32)) + 63) >> 6;
                if (v203 != j || v208 >= v209 + 8 * v210)
                {
                  memmove(v208, (j + 64), 8 * v210);
                }

                v211 = 0;
                *(v203 + 16) = *(j + 16);
                v212 = 1 << *(j + 32);
                if (v212 < 64)
                {
                  v213 = ~(-1 << v212);
                }

                else
                {
                  v213 = -1;
                }

                v214 = v213 & *(j + 64);
                for (k = (v212 + 63) >> 6; v214; *(*(v203 + 56) + 8 * v217) = v220)
                {
                  v216 = __clz(__rbit64(v214));
                  v214 &= v214 - 1;
                  v217 = v216 | (v211 << 6);
LABEL_223:
                  v220 = *(*(j + 56) + 8 * v217);
                  *(*(v203 + 48) + v217) = *(*(j + 48) + v217);
                }

                v218 = v211;
                while (1)
                {
                  v211 = v218 + 1;
                  if (__OFADD__(v218, 1))
                  {
                    goto LABEL_291;
                  }

                  if (v211 >= k)
                  {
                    break;
                  }

                  v219 = *(v209 + 8 * v211);
                  ++v218;
                  if (v219)
                  {
                    v214 = (v219 - 1) & v219;
                    v217 = __clz(__rbit64(v219)) | (v211 << 6);
                    goto LABEL_223;
                  }
                }
              }

              v1 = v278;
              v197 = v282;
              if ((v275 & 1) == 0)
              {
LABEL_207:
                *(v203 + 8 * (v197 >> 6) + 64) |= 1 << v197;
                *(*(v203 + 48) + v197) = v194;
                *(*(v203 + 56) + 8 * v197) = v192;
                v205 = *(v203 + 16);
                v97 = __OFADD__(v205, 1);
                v206 = v205 + 1;
                if (v97)
                {
                  goto LABEL_287;
                }

                *(v203 + 16) = v206;
                j = v203;
                goto LABEL_195;
              }
            }
          }

          else
          {
            v202 = v198;
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v201, v196);
            v203 = v291[0];
            v197 = specialized __RawDictionaryStorage.find<A>(_:)(v194);
            if ((v202 & 1) != (v204 & 1))
            {
              goto LABEL_297;
            }

            if ((v202 & 1) == 0)
            {
              goto LABEL_207;
            }
          }

          *(*(v203 + 56) + 8 * v197) = v192;
        }
      }
    }

    else
    {
    }
  }

LABEL_232:
  Week = __CFLocalePrefsCopyAppleMinDaysInFirstWeek(v2);
  if (Week)
  {
    v222 = Week;
    objc_opt_self();
    v223 = swift_dynamicCastObjCClass();
    if (!v223)
    {

      return;
    }

    v291[0] = 0;
    _sSD10FoundationE34_conditionallyBridgeFromObjectiveC_6resultSbSo12NSDictionaryC_SDyxq_GSgztFZSS_SiTt1g5(v223, v291);

    v224 = v291[0];
    if (v291[0])
    {
      v225 = 0;
      v226 = 1 << *(v291[0] + 32);
      if (v226 < 64)
      {
        v227 = ~(-1 << v226);
      }

      else
      {
        v227 = -1;
      }

      v228 = v227 & *(v291[0] + 64);
      v229 = (v226 + 63) >> 6;
      for (m = MEMORY[0x1E69E7CC8]; ; m = v247)
      {
        do
        {
LABEL_240:
          if (v228)
          {
            goto LABEL_239;
          }

          do
          {
            v239 = v225 + 1;
            if (__OFADD__(v225, 1))
            {
              goto LABEL_280;
            }

            if (v239 >= v229)
            {

              if (*(m + 16))
              {

                *(v1 + 56) = m;
              }

              else
              {
              }

              return;
            }

            v228 = *(v224 + 64 + 8 * v239);
            ++v225;
          }

          while (!v228);
          v225 = v239;
LABEL_239:
          v231 = __clz(__rbit64(v228));
          v228 &= v228 - 1;
          v232 = v231 | (v225 << 6);
          v233 = (*(v224 + 48) + 16 * v232);
          v234 = *v233;
          v235 = v233[1];
          v236 = *(*(v224 + 56) + 8 * v232);

          v237._countAndFlagsBits = v234;
          v237._object = v235;
          Calendar.Identifier.init(identifierString:)(v237);
          v238 = LOBYTE(v291[0]);
        }

        while (LOBYTE(v291[0]) == 27);
        v279 = v1;
        v240 = swift_isUniquelyReferenced_nonNull_native();
        v291[0] = m;
        v241 = specialized __RawDictionaryStorage.find<A>(_:)(v238);
        v243 = *(m + 16);
        v244 = (v242 & 1) == 0;
        v97 = __OFADD__(v243, v244);
        v245 = v243 + v244;
        if (v97)
        {
          goto LABEL_284;
        }

        if (*(m + 24) >= v245)
        {
          if (v240)
          {
            v247 = m;
            if (v242)
            {
              goto LABEL_249;
            }
          }

          else
          {
            v283 = v242;
            v287 = v241;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSiGMd, &_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSiGMR);
            v251 = static _DictionaryStorage.copy(original:)();
            v247 = v251;
            if (*(m + 16))
            {
              v252 = (v251 + 64);
              v253 = m + 64;
              v254 = ((1 << *(v247 + 32)) + 63) >> 6;
              if (v247 != m || v252 >= v253 + 8 * v254)
              {
                memmove(v252, (m + 64), 8 * v254);
              }

              v255 = 0;
              *(v247 + 16) = *(m + 16);
              v256 = 1 << *(m + 32);
              if (v256 < 64)
              {
                v257 = ~(-1 << v256);
              }

              else
              {
                v257 = -1;
              }

              v258 = v257 & *(m + 64);
              for (n = (v256 + 63) >> 6; v258; *(*(v247 + 56) + 8 * v261) = v264)
              {
                v260 = __clz(__rbit64(v258));
                v258 &= v258 - 1;
                v261 = v260 | (v255 << 6);
LABEL_268:
                v264 = *(*(m + 56) + 8 * v261);
                *(*(v247 + 48) + v261) = *(*(m + 48) + v261);
              }

              v262 = v255;
              while (1)
              {
                v255 = v262 + 1;
                if (__OFADD__(v262, 1))
                {
                  break;
                }

                if (v255 >= n)
                {
                  goto LABEL_270;
                }

                v263 = *(v253 + 8 * v255);
                ++v262;
                if (v263)
                {
                  v258 = (v263 - 1) & v263;
                  v261 = __clz(__rbit64(v263)) | (v255 << 6);
                  goto LABEL_268;
                }
              }

LABEL_292:
              __break(1u);
LABEL_293:
              __break(1u);
LABEL_294:
              __break(1u);
LABEL_295:
              __break(1u);
LABEL_296:
              __break(1u);
LABEL_297:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_298:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
LABEL_299:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

LABEL_270:

            v1 = v279;
            v241 = v287;
            if (v283)
            {
              goto LABEL_249;
            }
          }
        }

        else
        {
          v246 = v242;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v245, v240);
          v247 = v291[0];
          v241 = specialized __RawDictionaryStorage.find<A>(_:)(v238);
          if ((v246 & 1) != (v248 & 1))
          {
            goto LABEL_297;
          }

          if (v246)
          {
LABEL_249:
            *(*(v247 + 56) + 8 * v241) = v236;
            m = v247;
            goto LABEL_240;
          }
        }

        *(v247 + 8 * (v241 >> 6) + 64) |= 1 << v241;
        *(*(v247 + 48) + v241) = v238;
        *(*(v247 + 56) + 8 * v241) = v236;
        v249 = *(v247 + 16);
        v97 = __OFADD__(v249, 1);
        v250 = v249 + 1;
        if (v97)
        {
          goto LABEL_288;
        }

        *(v247 + 16) = v250;
      }
    }
  }
}

__CFArray *__CFLocalePrefsCopyAppleLanguages(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleLanguages");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E4A8], Count, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
      v8 = CFGetTypeID(ValueAtIndex);
      if (v8 == CFStringGetTypeID())
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  return Mutable;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  v4 = v13;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1865CC0E0](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v13 + 16) = v8 + 1;
      v9 = v13 + 16 * v8;
      *(v9 + 32) = v11;
      *(v9 + 40) = v12;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = __CocoaSet.count.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation18PresentationIntentV11TableColumnVGMd, &_ss23_ContiguousArrayStorageCy10Foundation18PresentationIntentV11TableColumnVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitV01_I0OGMd, &_ss23_ContiguousArrayStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitV01_I0OGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldV6OptionOGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldV6OptionOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd, &_ss23_ContiguousArrayStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV8CurrencyVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV8CurrencyVGMR, &type metadata for Locale.Currency);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV12LanguageCodeVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV12LanguageCodeVGMR, &type metadata for Locale.LanguageCode);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV6RegionVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV6RegionVGMR, &type metadata for Locale.Region);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV9CollationVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV9CollationVGMR, &type metadata for Locale.Collation);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV15NumberingSystemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleV15NumberingSystemVGMR, &type metadata for Locale.NumberingSystem);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  *v3 = result;
  return result;
}

CFTypeRef __CFLocalePrefsCopyAppleLocale(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleLocale");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

BOOL __CFLocalePrefsAppleMetricUnitsIsMetric(const __CFDictionary *a1, BOOL *a2)
{
  Value = CFDictionaryGetValue(a1, @"AppleMetricUnits");
  v4 = Value == *MEMORY[0x1E695E4D0];
  v5 = Value == *MEMORY[0x1E695E4C0] || Value == *MEMORY[0x1E695E4D0];
  *a2 = v5;
  return v4;
}

uint64_t __CFLocalePrefsAppleMeasurementUnitsIsCm(const __CFDictionary *a1, char *a2)
{
  Value = CFDictionaryGetValue(a1, @"AppleMeasurementUnits");
  if (!Value)
  {
    goto LABEL_6;
  }

  v4 = Value;
  if (!CFEqual(Value, @"Inches"))
  {
    if (CFEqual(v4, @"Centimeters"))
    {
      v6 = 1;
      result = 1;
      goto LABEL_7;
    }

LABEL_6:
    v6 = 0;
    result = 0;
    goto LABEL_7;
  }

  result = 0;
  v6 = 1;
LABEL_7:
  *a2 = v6;
  return result;
}

uint64_t __CFLocalePrefsAppleTemperatureUnitIsC(const __CFDictionary *a1, char *a2)
{
  Value = CFDictionaryGetValue(a1, @"AppleTemperatureUnit");
  if (!Value)
  {
    goto LABEL_6;
  }

  v4 = Value;
  if (!CFEqual(Value, *MEMORY[0x1E695E708]))
  {
    if (CFEqual(v4, *MEMORY[0x1E695E700]))
    {
      v6 = 1;
      result = 1;
      goto LABEL_7;
    }

LABEL_6:
    v6 = 0;
    result = 0;
    goto LABEL_7;
  }

  result = 0;
  v6 = 1;
LABEL_7:
  *a2 = v6;
  return result;
}

BOOL __CFLocalePrefsAppleForce24HourTime(const __CFDictionary *a1, BOOL *a2)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUForce24HourTime");
  v4 = Value == *MEMORY[0x1E695E4D0];
  v5 = Value == *MEMORY[0x1E695E4C0] || Value == *MEMORY[0x1E695E4D0];
  *a2 = v5;
  return v4;
}

BOOL __CFLocalePrefsAppleForce12HourTime(const __CFDictionary *a1, BOOL *a2)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUForce12HourTime");
  v4 = Value == *MEMORY[0x1E695E4D0];
  v5 = Value == *MEMORY[0x1E695E4C0] || Value == *MEMORY[0x1E695E4D0];
  *a2 = v5;
  return v4;
}

CFTypeRef __CFLocalePrefsCopyAppleCollationOrder(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleCollationOrder");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyCountry(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Country");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleICUDateTimeSymbols(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUDateTimeSymbols");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleICUDateFormatStrings(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUDateFormatStrings");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleICUTimeFormatStrings(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUTimeFormatStrings");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleICUNumberFormatStrings(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUNumberFormatStrings");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleICUNumberSymbols(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleICUNumberSymbols");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleFirstWeekday(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleFirstWeekday");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

CFTypeRef __CFLocalePrefsCopyAppleMinDaysInFirstWeek(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"AppleMinDaysInFirstWeek");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFRetain(v2);
}

id _LocaleICU.init(name:prefs:disableBundleMatching:)(uint64_t a1, uint64_t a2, _OWORD *a3, int a4)
{
  v479 = *MEMORY[0x1E69E9840];
  v399 = *v4;
  v354 = 0;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v388 = v8;
  v389 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v344 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v344 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v344 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v344 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = a3[7];
  v477 = a3[6];
  *v478 = v23;
  *&v478[12] = *(a3 + 124);
  v24 = a3[3];
  v473 = a3[2];
  v474 = v24;
  v25 = a3[5];
  v475 = a3[4];
  v476 = v25;
  v26 = a3[1];
  v471 = *a3;
  v472 = v26;
  if (a2)
  {
    v375 = &v344 - v22;
    v27 = *MEMORY[0x1E695E4A8];
    v28 = String._bridgeToObjectiveCImpl()();
    CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(v27, v28);
    swift_unknownObjectRelease();
    if (!CanonicalLocaleIdentifierFromString)
    {
      goto LABEL_29;
    }

    isTaggedPointer = _objc_isTaggedPointer(CanonicalLocaleIdentifierFromString);
    v31 = CanonicalLocaleIdentifierFromString;
    v32 = v31;
    if (!isTaggedPointer)
    {
LABEL_13:
      LOBYTE(v457._countAndFlagsBits) = 0;
      v417._countAndFlagsBits = 0;
      LOBYTE(v465._countAndFlagsBits) = 0;
      LOBYTE(v454) = 0;
      IsCF = __CFStringIsCF();
      if (IsCF)
      {
        if (v417._countAndFlagsBits)
        {
          if (v454 == 1)
          {
            if (v457._countAndFlagsBits)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v73 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_110;
          }

          if ((v465._countAndFlagsBits & 1) == 0)
          {
LABEL_109:
            v73 = String.init(_cocoaString:)();
LABEL_110:
            v401 = v73;
            v36 = v74;
            goto LABEL_111;
          }

          if (LOBYTE(v457._countAndFlagsBits) != 1)
          {
            IsCF = [(__CFString *)v32 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v135 = v354;
          v136 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v36 = v137;
          v138 = HIBYTE(v137) & 0xF;
          v401 = v136;
          if ((v137 & 0x2000000000000000) == 0)
          {
            v138 = v136 & 0xFFFFFFFFFFFFLL;
          }

          v354 = v135;
          if (!v138)
          {

            goto LABEL_109;
          }

          goto LABEL_35;
        }
      }

      else
      {
        v69 = v32;
        v401 = String.init(_nativeStorage:)();
        if (v70)
        {
          v36 = v70;

          goto LABEL_112;
        }

        v417._countAndFlagsBits = [(__CFString *)v69 length];
        if (v417._countAndFlagsBits)
        {
          goto LABEL_109;
        }
      }

LABEL_29:
      v401 = 0;
      v36 = 0xE000000000000000;
      goto LABEL_112;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v31);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v34 = v354;
          v401 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v36 = v35;
          v354 = v34;

LABEL_112:
          if (one-time initialization token for log != -1)
          {
            swift_once();
          }

          v139 = static _LocaleICU.log;
          v140 = static os_log_type_t.debug.getter();
          v374 = v139;
          if (!os_log_type_enabled(v139, v140))
          {

LABEL_156:
            v114 = String._bridgeToObjectiveCImpl()();

            v115 = v27;
LABEL_157:
            v212 = CFLocaleCreateCanonicalLocaleIdentifierFromString(v115, v114);
            swift_unknownObjectRelease();
            if (v212)
            {
              v111 = static String._unconditionallyBridgeFromObjectiveC(_:)(v212);
              v37 = v213;
            }

            else
            {
              v111 = 0;
              v37 = 0xE000000000000000;
            }

            goto LABEL_160;
          }

          v457 = 0;
          v458 = 0u;
          v459 = 0u;
          v460 = 0u;
          v461 = 0u;
          v462 = 0u;
          outlined destroy of Locale.Language.Components(&v457);
          LODWORD(v417._countAndFlagsBits) = 0;
          String.utf8CString.getter();
          Language = uloc_getLanguage();

          v142 = 0;
          v143 = 0;
          if (SLODWORD(v417._countAndFlagsBits) <= 0 && Language > 0)
          {
            v416[Language] = 0;
            v144 = MEMORY[0x1865CAEB0](v416, 0);
            if (v143)
            {
              v142 = v144;
            }

            else
            {
              v142 = 0;
            }
          }

          v387 = v143;
          LODWORD(v417._countAndFlagsBits) = 0;
          String.utf8CString.getter();
          Script = uloc_getScript();

          v146 = 0;
          v147 = 0;
          if (SLODWORD(v417._countAndFlagsBits) <= 0 && Script > 0)
          {
            v415[Script] = 0;
            v148 = MEMORY[0x1865CAEB0](v415, 0);
            if (v147)
            {
              v146 = v148;
            }

            else
            {
              v146 = 0;
            }
          }

          v386 = v147;
          v390 = v146;
          LODWORD(v417._countAndFlagsBits) = 0;
          String.utf8CString.getter();
          Country = uloc_getCountry();

          v150 = 0;
          v151 = 0;
          if (SLODWORD(v417._countAndFlagsBits) <= 0 && Country > 0)
          {
            v414[Country] = 0;
            v152 = MEMORY[0x1865CAEB0](v414, 0);
            if (v151)
            {
              v150 = v152;
            }

            else
            {
              v150 = 0;
            }
          }

          v153 = v150;
          v380 = v151;
          if (v387)
          {
            v154 = String.lowercased()();
            object = v154._object;
            countAndFlagsBits = v154._countAndFlagsBits;
          }

          else
          {
            v142 = 0;
            object = 0;
            countAndFlagsBits = 0;
          }

          v372 = a2;
          if (v386)
          {
            v417._countAndFlagsBits = v390;
            v417._object = v386;

            String.init<A>(_:)();
            v155 = String._capitalized()();
            v376 = v155._object;
            v377 = v155._countAndFlagsBits;
          }

          else
          {
            v390 = 0;
            v376 = 0;
            v377 = 0;
          }

          v371 = v27;
          v393 = v36;
          v156 = v380;
          if (v380)
          {
            v157 = v153;
            v158 = String.uppercased()();
            v159 = v158._countAndFlagsBits;
            v160 = v158._object;
          }

          else
          {
            v157 = 0;
            v159 = 0;
            v160 = 0;
          }

          outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
          outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
          outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
          v465._countAndFlagsBits = v142;
          v161 = v386;
          v465._object = v387;
          *&v466 = countAndFlagsBits;
          *(&v466 + 1) = object;
          v162 = v390;
          *&v467 = v390;
          *(&v467 + 1) = v386;
          v163 = v377;
          *&v468 = v377;
          v164 = v142;
          v165 = v376;
          *(&v468 + 1) = v376;
          *&v469 = v157;
          *(&v469 + 1) = v156;
          *&v470 = v159;
          *(&v470 + 1) = v160;
          v370 = v164;
          outlined copy of Locale.LanguageCode?(v164, v387, countAndFlagsBits, object);
          outlined copy of Locale.LanguageCode?(v162, v161, v163, v165);
          v369 = v157;
          outlined copy of Locale.LanguageCode?(v157, v156, v159, v160);
          outlined destroy of Locale.Language.Components(&v465);
          outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
          outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
          outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
          LODWORD(v417._countAndFlagsBits) = 0;
          String.utf8CString.getter();
          Variant = uloc_getVariant();

          if (SLODWORD(v417._countAndFlagsBits) <= 0 && Variant > 0 && (v413[Variant] = 0, v167 = MEMORY[0x1865CAEB0](v413), v168))
          {
            v366 = v168;
            v367 = v167;
            v169 = String.lowercased()();
            v364 = v169._object;
            v365 = v169._countAndFlagsBits;
            outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
          }

          else
          {
            v366 = 0;
            v367 = 0;
            v364 = 0;
            v365 = 0;
          }

          v406 = 0;
          String.utf8CString.getter();
          v170 = uloc_openKeywords();

          v171 = 0;
          v172 = 4;
          v173 = 7;
          v174 = 27;
          v368 = v159;
          if (v406 > 0 || !v170)
          {
            v175 = v160;
            v196 = 0;
            v191 = 0;
            v192 = 0;
            v190 = 0;
            v193 = 0;
            v194 = 0;
            v195 = 0;
            v197 = 0;
            v177 = 0;
            v204 = 0;
            v178 = 0;
            v391 = 0;
            v392 = 0;
            v400 = 0;
            v182 = 0;
            v188 = 0;
            v189 = 0;
            v198 = 0;
            v199 = 0;
            v200 = 0;
            v201 = 0;
            v202 = 0;
            v203 = 0;
            v185 = 0;
            v187 = 0;
LABEL_151:
            v417._countAndFlagsBits = v370;
            v417._object = v387;
            *&v418 = countAndFlagsBits;
            *(&v418 + 1) = object;
            *&v419 = v390;
            *(&v419 + 1) = v386;
            *&v420 = v377;
            *(&v420 + 1) = v376;
            *&v421 = v369;
            *&v422 = v368;
            *(&v422 + 1) = v175;
            LOBYTE(v423) = v174;
            *(&v423 + 1) = v197;
            *&v424[0] = v196;
            *(&v423 + 1) = *v405;
            DWORD1(v423) = *&v405[3];
            *(&v421 + 1) = v380;
            *(&v424[0] + 1) = v191;
            *&v424[1] = v192;
            *(&v424[1] + 1) = v190;
            v425 = v193;
            v426 = v194;
            v427 = v195;
            v428 = v171;
            v429 = v177;
            v430 = v204;
            v431 = v178;
            v432 = v173;
            v433 = v172;
            v435 = v409;
            v434 = v408;
            v436 = v392;
            v437 = v391;
            v438 = v400;
            v439 = v182;
            v440 = v188;
            v441 = v189;
            v442 = v198;
            v443 = v199;
            v444 = v200;
            v445 = v201;
            v446 = v202;
            v447 = v203;
            v448 = v185;
            v449 = v187;
            v450 = v367;
            v451 = v366;
            v452 = v365;
            v453 = v364;
            if (v380)
            {
              outlined destroy of Locale.Components(&v417);

              v27 = v371;
            }

            else
            {
              v205 = v374;
              v206 = v375;
              Logger.init(_:)();
              v207 = v393;

              v208 = Logger.logObject.getter();
              v209 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v208, v209))
              {
                v210 = swift_slowAlloc();
                v211 = swift_slowAlloc();
                *&v454 = v211;
                *v210 = 136446210;
                *(v210 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v401, v207, &v454);
                _os_log_impl(&dword_18075C000, v208, v209, "Current locale fetched with overriding locale identifier '%{public}s' which does not have a country code", v210, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v211);
                MEMORY[0x1865D2690](v211, -1, -1);
                MEMORY[0x1865D2690](v210, -1, -1);
              }

              outlined destroy of Locale.Components(&v417);
              (*(v389 + 8))(v206, v388);

              v27 = v371;
            }

            goto LABEL_156;
          }

          v175 = v160;
          type metadata accessor for ICU.Enumerator();
          countAndFlagsBits_low = 7;
          v344 = swift_allocObject();
          *(v344 + 16) = v170;
          LODWORD(v417._countAndFlagsBits) = 0;
          LODWORD(v454) = 0;
          v176 = uenum_next();
          if (SLODWORD(v417._countAndFlagsBits) > 0)
          {
            v359 = 0;
            v360 = 0;
            v361 = 0;
            v362 = 0;
            v356 = 0;
            v357 = 0;
            v355 = 0;
            v352 = 0;
            v353 = 0;
            v177 = 0;
            v384 = 0;
            v178 = 0;
            v179 = 0;
            v180 = 0;
            v181 = 0;
            v182 = 0;
            v183 = 0;
            v184 = 0;
            v349 = 0;
            v350 = 0;
            v347 = 0;
            v348 = 0;
            v345 = 0;
            v346 = 0;
            v185 = 0;
            v186 = 0;
            v351 = 4;
            LODWORD(v363) = 27;
LABEL_149:
            v400 = v181;
            v391 = v180;
            v392 = v179;
            v187 = v186;

            v188 = v183;
            v189 = v184;
            v190 = v357;
            v173 = countAndFlagsBits_low;
            v192 = v361;
            v191 = v362;
            v194 = v355;
            v193 = v356;
            v172 = v351;
            v171 = v352;
            v195 = v353;
            v197 = v359;
            v196 = v360;
            v199 = v349;
            v198 = v350;
            v201 = v347;
            v200 = v348;
            v174 = v363;
            v203 = v345;
            v202 = v346;
            v204 = v384;
            goto LABEL_151;
          }

          v381 = v170;
          v186 = 0;
          v185 = 0;
          v345 = 0;
          v346 = 0;
          v347 = 0;
          v348 = 0;
          v349 = 0;
          v350 = 0;
          v184 = 0;
          v183 = 0;
          v182 = 0;
          v181 = 0;
          v180 = 0;
          v179 = 0;
          v178 = 0;
          v384 = 0;
          v177 = 0;
          v352 = 0;
          v353 = 0;
          v355 = 0;
          v356 = 0;
          v361 = 0;
          v362 = 0;
          v359 = 0;
          v360 = 0;
          LODWORD(v363) = 27;
          v357 = 0;
          countAndFlagsBits_low = 7;
          v351 = 4;
          v373 = v175;
          while (1)
          {
            if (!v176)
            {
              goto LABEL_149;
            }

            v396 = v186;
            v397 = v183;
            v398 = v182;
            v400 = v181;
            v394 = v178;
            v395 = v177;
            v312 = v384;
            v313 = String.init(cString:)();
            static Locale.legacyKey(forKey:)(v313, v314, &v417._countAndFlagsBits);

            v315 = v417._object;
            if (v417._object)
            {
              break;
            }

            v178 = v394;
            v177 = v395;
LABEL_256:
            LODWORD(v417._countAndFlagsBits) = 0;
            LODWORD(v454) = 0;
            v176 = uenum_next();
            v183 = v397;
            v182 = v398;
            v181 = v400;
            v186 = v396;
            if (SLODWORD(v417._countAndFlagsBits) > 0)
            {
              goto LABEL_149;
            }
          }

          v391 = v180;
          v392 = v179;
          v382 = v185;
          v383 = v184;
          v316 = v417._countAndFlagsBits;
          v317 = specialized static Locale.keywordValue(identifier:key:)(v401, v393, v417._countAndFlagsBits, v417._object);
          if (v318)
          {
            v319 = v317;
            v320 = v318;
            if (v316 == 0x7261646E656C6163 && v315 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v321._countAndFlagsBits = v319;
              v321._object = v320;
              Calendar.Identifier.init(identifierString:)(v321);
              LODWORD(v363) = LOBYTE(v417._countAndFlagsBits);
LABEL_269:
              v175 = v373;
              v178 = v394;
              v177 = v395;
LABEL_270:
              v184 = v383;
LABEL_271:
              v185 = v382;
LABEL_272:
              v180 = v391;
              v179 = v392;
              goto LABEL_256;
            }

            if (v316 == 0x6F6974616C6C6F63 && v315 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v322 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v359, v360, v362, v361);
              v359 = v319;
              v360 = v320;
              v361 = v322._object;
              v362 = v322._countAndFlagsBits;
              goto LABEL_269;
            }

            if (v316 == 0x79636E6572727563 && v315 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v323 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v357, v356, v355, v353);
              v356 = v320;
              v357 = v319;
              v355 = v323._countAndFlagsBits;
              v353 = v323._object;
              goto LABEL_269;
            }

            if (v316 == 0x737265626D756ELL && v315 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v324 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v352, v395, v312, v394);
              v352 = v319;
              v384 = v324._countAndFlagsBits;
              v177 = v320;
              v178 = v324._object;
              v175 = v373;
              goto LABEL_270;
            }

            if (v316 == 30566 && v315 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v482._countAndFlagsBits = v319;
              v482._object = v320;
              Locale.Weekday.init(rawValue:)(&v417._countAndFlagsBits, v482);
              countAndFlagsBits_low = LOBYTE(v417._countAndFlagsBits);
              goto LABEL_269;
            }

            if (v316 == 0x7372756F68 && v315 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v483._countAndFlagsBits = v319;
              v483._object = v320;
              Locale.HourCycle.init(rawValue:)(&v417._countAndFlagsBits, v483);
              v351 = LOBYTE(v417._countAndFlagsBits);
              goto LABEL_269;
            }

            if (v316 == 0x6572757361656DLL && v315 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (v319 == 0x6C61697265706D69 && v320 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                if (one-time initialization token for uk != -1)
                {
                  swift_once();
                }

                v179 = static Locale.MeasurementSystem.uk;
                v325 = *algn_1EA7AFAD8;
                v326 = *(&xmmword_1EA7AFAE0 + 1);
                v327 = xmmword_1EA7AFAE0;

                outlined consume of Locale.LanguageCode?(v392, v391, v400, v398);
                v400 = v327;
                v180 = v325;
                v398 = v326;
              }

              else
              {
                v333 = String.lowercased()();
                outlined consume of Locale.LanguageCode?(v392, v391, v400, v398);
                v179 = v319;
                v180 = v320;
                v400 = v333._countAndFlagsBits;
                v398 = v333._object;
              }

              v175 = v373;
              v178 = v394;
              v177 = v395;
              v185 = v382;
              v184 = v383;
              goto LABEL_256;
            }

            if (v316 == 26482 && v315 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              if (String.count.getter() > 2)
              {
                specialized Collection.prefix(_:)(2, v319, v320);

                v328 = Substring.uppercased()();

                v417 = v328;
                v329 = String.init<A>(_:)();
                v331 = v330;
                v332 = String.uppercased()();
                outlined consume of Locale.LanguageCode?(v397, v383, v350, v349);
                v397 = v329;
                v184 = v331;
                v349 = v332._object;
                v350 = v332._countAndFlagsBits;
                v175 = v373;
                v178 = v394;
                v177 = v395;
                goto LABEL_271;
              }

              goto LABEL_264;
            }

            if (v316 == 25715 && v315 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v334 = String.lowercased()();
              outlined consume of Locale.LanguageCode?(v348, v347, v346, v345);
              v347 = v320;
              v348 = v319;
              v345 = v334._object;
              v346 = v334._countAndFlagsBits;
              goto LABEL_269;
            }

            if (v316 == 0x656E6F7A656D6974 && v315 == 0xE800000000000000)
            {

LABEL_313:
              if (one-time initialization token for cache != -1)
              {
                v335 = swift_once();
              }

              v337 = static TimeZoneCache.cache;
              MEMORY[0x1EEE9AC00](v335);
              os_unfair_lock_lock(v337 + 30);
              v338 = v354;
              closure #1 in TimeZoneCache.fixed(_:)partial apply(&v417._countAndFlagsBits);
              v354 = v338;
              os_unfair_lock_unlock(v337 + 30);
              v339 = v417._object;
              v185 = v417._countAndFlagsBits;

              if (v185)
              {
                v340 = v339;
              }

              else
              {
                v340 = 0;
              }

              v396 = v340;
              swift_unknownObjectRelease();
              v175 = v373;
              v178 = v394;
              v177 = v395;
              v184 = v383;
              goto LABEL_272;
            }

            v336 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v336)
            {
              goto LABEL_313;
            }
          }

LABEL_264:

          goto LABEL_269;
        }

        goto LABEL_13;
      }

      result = [(__CFString *)v32 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v401 = String.init(utf8String:)(result);
      if (v72)
      {
LABEL_34:
        v36 = v72;
LABEL_35:

LABEL_111:
        goto LABEL_112;
      }

      __break(1u);
    }

    LOWORD(v465._countAndFlagsBits) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v401 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v72)
    {
      [(__CFString *)v32 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v36 = v457._object;
      v401 = v457._countAndFlagsBits;
      goto LABEL_111;
    }

    goto LABEL_34;
  }

  LODWORD(v401) = a4;
  v37 = *(&v472 + 1);
  v400 = v472;
  v38 = objc_opt_self();

  v39 = [v38 mainBundle];
  v40 = [v39 _objectForUnlocalizedInfoDictionaryKey_];

  swift_unknownObjectRelease();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of FloatingPointRoundingRule?(&v417, &v465, &_sypSgMd, &_sypSgMR);
  if (!*(&v466 + 1))
  {
    outlined destroy of TermOfAddress?(&v417, &_sypSgMd, &_sypSgMR);
    outlined destroy of TermOfAddress?(&v465, &_sypSgMd, &_sypSgMR);
    v43 = 0;
    v44 = 0;
    if (v401)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  outlined init with take of Any(&v465, &v457);
  outlined init with copy of Any(&v457, &v465);
  v41 = swift_dynamicCast();
  v42 = v401;
  if (v41)
  {
    __swift_destroy_boxed_opaque_existential_1(&v457);
    outlined destroy of TermOfAddress?(&v417, &_sypSgMd, &_sypSgMR);
    v43 = v454;
    goto LABEL_11;
  }

  outlined init with copy of Any(&v457, &v465);
  if (swift_dynamicCast())
  {
    v397 = v38;
    v46 = v454;
    v465 = v454;
    v398 = *(&v454 + 1);

    v47 = Substring.init<A>(_:)();
    v395 = v48;
    v396 = v47;
    v50 = v49;
    v52 = v51;
    v465._countAndFlagsBits = 1702195828;
    v465._object = 0xE400000000000000;
    v53 = Substring.init<A>(_:)();
    v57 = specialized _StringCompareOptionsIterable._compare<A>(_:toHalfWidth:diacriticsInsensitive:caseFold:numeric:forceOrdering:)(v53, v54, v55, v56, 0, 0, 1, 0, 0, v396, v395, v50, v52);

    if (v57)
    {
      v465._countAndFlagsBits = v46;
      v465._object = v398;
      v58 = Substring.init<A>(_:)();
      v398 = v59;
      v61 = v60;
      v63 = v62;
      v465._countAndFlagsBits = 5457241;
      v465._object = 0xE300000000000000;
      v64 = Substring.init<A>(_:)();
      v68 = specialized _StringCompareOptionsIterable._compare<A>(_:toHalfWidth:diacriticsInsensitive:caseFold:numeric:forceOrdering:)(v64, v65, v66, v67, 0, 0, 1, 0, 0, v58, v398, v61, v63);

      __swift_destroy_boxed_opaque_existential_1(&v457);
      outlined destroy of TermOfAddress?(&v417, &_sypSgMd, &_sypSgMR);
      v43 = v68 == 0;
      if (v401)
      {
        v44 = 0;
        v38 = v397;
        goto LABEL_51;
      }

      v38 = v397;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v457);
      outlined destroy of TermOfAddress?(&v417, &_sypSgMd, &_sypSgMR);
      v38 = v397;
      if (v401)
      {
        goto LABEL_12;
      }

      v43 = 1;
    }

LABEL_50:
    v44 = v43 ^ 1;
    goto LABEL_51;
  }

  outlined destroy of TermOfAddress?(&v417, &_sypSgMd, &_sypSgMR);
  outlined init with copy of Any(&v457, &v465);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v457);
    v43 = v454 != 0;
  }

  else
  {
    outlined init with take of Any(&v457, &v465);
    if (!swift_dynamicCast())
    {
      v43 = 0;
      v44 = 0;
      if (v42)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v43 = *&v454 != 0.0;
  }

LABEL_11:
  if ((v42 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_12:
  v44 = 0;
LABEL_51:
  v75 = v471._object;
  if (!v471._object)
  {
    if ((v37 == 0) | v44 & 1)
    {
      if (one-time initialization token for log == -1)
      {
        goto LABEL_72;
      }

      goto LABEL_333;
    }

    goto LABEL_86;
  }

  if (v37)
  {
    v397 = v38;
    v76 = v400;
    if (v44)
    {

      v77 = [v397 mainBundle];
      v78 = [v77 localizations];
      v79 = _sSa10FoundationE36_unconditionallyBridgeFromObjectiveCySayxGSo7NSArrayCSgFZSS_Tt0g5(v78);

      v80 = specialized static Locale.canonicalizeLocalizations(_:)(v79);

      if (!*(v80 + 2))
      {
        goto LABEL_85;
      }

      v401 = *(v75 + 16);
      if (!v401)
      {
        goto LABEL_85;
      }

      v81 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v81 = v76 & 0xFFFFFFFFFFFFLL;
      }

      if (!v81)
      {
LABEL_85:

        swift_bridgeObjectRelease_n();

        goto LABEL_86;
      }

      v395 = v77;
      v398 = *MEMORY[0x1E695E4A8];
      v396 = v80;

      v20 = 0;
      v82 = v75 + 40;
      v83 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v20 >= *(v75 + 16))
        {
          __break(1u);
          goto LABEL_331;
        }

        v84 = String._bridgeToObjectiveCImpl()();

        CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v398, v84);
        swift_unknownObjectRelease();
        if (CanonicalLanguageIdentifierFromString)
        {
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)(CanonicalLanguageIdentifierFromString);
          v88 = v87;
        }

        else
        {

          v86 = 0;
          v88 = 0xE000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v83 + 2) + 1, 1, v83);
        }

        v90 = *(v83 + 2);
        v89 = *(v83 + 3);
        if (v90 >= v89 >> 1)
        {
          v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1, v83);
        }

        ++v20;
        *(v83 + 2) = v90 + 1;
        v91 = &v83[16 * v90];
        *(v91 + 4) = v86;
        *(v91 + 5) = v88;
        v82 += 16;
      }

      while (v401 != v20);

      v125 = _ContiguousArrayBuffer._asCocoaArray()();
      v126 = [v397 preferredLocalizationsFromArray:v125 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v127 = _sSa10FoundationE36_unconditionallyBridgeFromObjectiveCySayxGSo7NSArrayCSgFZSS_Tt0g5(v126);

      if (*(v127 + 2))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
        v129 = *(v127 + 4);
        v128 = *(v127 + 5);

        v130 = static Locale.languageIdentifierWithScriptCodeForLocaleIdentifier(_:)(v400, v37);
        v132 = v131;
        v133 = static Locale.languageIdentifierWithScriptCodeForLocaleIdentifier(_:)(v129, v128);
        if (!v132)
        {

          swift_bridgeObjectRelease_n();

          goto LABEL_86;
        }

        if (v134)
        {
          if (v130 == v133 && v132 == v134)
          {

LABEL_326:
            v111 = v400;

LABEL_160:
            v214 = HIBYTE(v37) & 0xF;
            if ((v37 & 0x2000000000000000) == 0)
            {
              v214 = v111 & 0xFFFFFFFFFFFFLL;
            }

            if (!v214)
            {
            }

            goto LABEL_164;
          }

          v341 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v341)
          {

            goto LABEL_326;
          }

          v111 = static Locale.localeIdentifierByReplacingLanguageCodeAndScriptCode(localeIDWithDesiredLangCode:localeIDWithDesiredComponents:)(v129);
          v343 = v342;

          if (v343)
          {

            v37 = v343;
            goto LABEL_160;
          }

LABEL_86:

          v113 = *MEMORY[0x1E695E4A8];
          v114 = String._bridgeToObjectiveCImpl()();

          v115 = v113;
          goto LABEL_157;
        }
      }

      else
      {
      }

      swift_bridgeObjectRelease_n();

      goto LABEL_86;
    }

    goto LABEL_86;
  }

  v96 = *(specialized static Locale.canonicalizeLocalizations(_:)(v75) + 2);

  if (v96)
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();

    v97 = *MEMORY[0x1E695E4A8];
    v98 = String._bridgeToObjectiveCImpl()();

    v99 = CFLocaleCreateCanonicalLocaleIdentifierFromString(v97, v98);
    swift_unknownObjectRelease();
    if (v99)
    {
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)(v99);
      v102 = v101;

      v103 = *&v478[16];
      if (*&v478[16])
      {
LABEL_79:
        v104 = *&v478[8];
        v105 = one-time initialization token for log;

        if (v105 != -1)
        {
          swift_once();
        }

        v106 = static _LocaleICU.log;
        Logger.init(_:)();

        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v417._countAndFlagsBits = v110;
          *v109 = 136446210;
          *(v109 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v103, &v417._countAndFlagsBits);
          _os_log_impl(&dword_18075C000, v107, v108, "Locale.current constructing a locale identifier from preferred languages by combining with set country code '%{public}s'", v109, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v110);
          MEMORY[0x1865D2690](v110, -1, -1);
          MEMORY[0x1865D2690](v109, -1, -1);
        }

        (*(v389 + 8))(v14, v388);
        v417._countAndFlagsBits = v100;
        v417._object = v102;
        MEMORY[0x1865CB0E0](95, 0xE100000000000000);
        MEMORY[0x1865CB0E0](v104, v103);

        v111 = specialized static Locale._canonicalLocaleIdentifier(from:)(v417._countAndFlagsBits, v417._object);
        v37 = v112;

        goto LABEL_160;
      }
    }

    else
    {
      v100 = 0;
      v102 = 0xE000000000000000;
      v103 = *&v478[16];
      if (*&v478[16])
      {
        goto LABEL_79;
      }
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v120 = static _LocaleICU.log;
    Logger.init(_:)();
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_18075C000, v121, v122, "Locale.current constructing a locale identifier from preferred languages without a set country code", v123, 2u);
      MEMORY[0x1865D2690](v123, -1, -1);
    }

    (*(v389 + 8))(v17, v388);
    v111 = specialized static Locale._canonicalLocaleIdentifier(from:)(v100, v102);
    v37 = v124;

    goto LABEL_160;
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v116 = static _LocaleICU.log;
  Logger.init(_:)();
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&dword_18075C000, v117, v118, "Value for 'AppleLanguages' found in preferences contains no valid entries; falling back to default locale identifier as current", v119, 2u);
    MEMORY[0x1865D2690](v119, -1, -1);
  }

  (*(v389 + 8))(v11, v388);
  while (1)
  {
LABEL_164:
    v215 = *MEMORY[0x1E695E4A8];
    v216 = String._bridgeToObjectiveCImpl()();

    v217 = CFLocaleCreateCanonicalLocaleIdentifierFromString(v215, v216);
    swift_unknownObjectRelease();
    if (v217)
    {
      v218 = static String._unconditionallyBridgeFromObjectiveC(_:)(v217);
      v220 = v219;
    }

    else
    {
      v218 = 0;
      v220 = 0xE000000000000000;
    }

    v221 = v385;
    *(v385 + 16) = v218;
    *(v221 + 24) = v220;
    v463 = v477;
    v464[0] = *v478;
    *(v464 + 12) = *&v478[12];
    v459 = v473;
    v460 = v474;
    v462 = v476;
    v461 = v475;
    v458 = v472;
    v457 = v471;
    _NSBundleDeallocatingImmortalBundle();
    v222 = v461;
    *(v221 + 136) = v462;
    v223 = v464[0];
    *(v221 + 152) = v463;
    *(v221 + 168) = v223;
    *(v221 + 180) = *(v464 + 12);
    v224 = v457;
    *(v221 + 72) = v458;
    v225 = v460;
    *(v221 + 88) = v459;
    *(v221 + 104) = v225;
    *(v221 + 120) = v222;
    *(v221 + 56) = v224;

    outlined init with copy of LocalePreferences(&v471, &v417);
    static _LocaleICU._calendarIdentifier(forIdentifier:)(v218, v220, &v417);

    LODWORD(v355) = LOBYTE(v417._countAndFlagsBits);
    *(v221 + 48) = v417._countAndFlagsBits;
    v226 = *(v221 + 24);
    v366 = *(v221 + 16);
    swift_bridgeObjectRetain_n();
    Locale.Language.Components.init(identifier:)(&v417._countAndFlagsBits);
    v466 = v418;
    v465 = v417;
    v470 = v422;
    v469 = v421;
    v468 = v420;
    v467 = v419;
    v227 = v419;
    v228 = v420;
    v230 = *(&v421 + 1);
    v229 = v421;
    v231 = *(&v422 + 1);
    v232 = v422;
    v373 = v417._object;
    v374 = v417._countAndFlagsBits;
    v362 = *(&v418 + 1);
    v363 = v418;
    outlined copy of Locale.LanguageCode?(v417._countAndFlagsBits, v417._object, v418, *(&v418 + 1));
    v360 = *(&v227 + 1);
    v361 = v227;
    countAndFlagsBits_low = *(&v228 + 1);
    v359 = v228;
    outlined copy of Locale.LanguageCode?(v227, *(&v227 + 1), v228, *(&v228 + 1));
    v356 = v230;
    v357 = v229;
    v233 = v229;
    v234 = v366;
    v371 = v231;
    v372 = v232;
    v235 = v232;
    v236 = v226;
    outlined copy of Locale.LanguageCode?(v233, v230, v235, v231);
    outlined destroy of Locale.Language.Components(&v465);
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    outlined consume of Locale.LanguageCode?(0, 0, 0, 0);

    v237 = specialized _withFixedCharBuffer(size:_:)(257, v234, v226);
    v239 = v238;

    v370 = v239;
    if (v239)
    {
      v369 = v237;
      v240 = String.lowercased()();
      v367 = v240._object;
      v368 = v240._countAndFlagsBits;
      outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
    }

    else
    {
      v368 = 0;
      v369 = 0;
      v367 = 0;
    }

    v404 = 0;
    String.utf8CString.getter();
    v241 = uloc_openKeywords();

    if (v404 > 0)
    {

      v399 = 0;
      v400 = 0;
      v37 = 0;
      v241 = 0;
LABEL_172:
      v242 = 0;
      v391 = 0;
      v392 = 0;
      v389 = 0;
      v390 = 0;
      v387 = 0;
      v388 = 0;
      v386 = 0;
      v243 = 0;
      v244 = 0;
      v20 = 0;
      v245 = 0;
      v383 = 0;
      v384 = 0;
      v381 = 0;
      v382 = 0;
      countAndFlagsBits = 0;
      v380 = 0;
      v377 = 0;
      object = 0;
      v375 = 0;
      v376 = 0;
      LODWORD(v364) = 4;
      v393 = 7;
      LODWORD(v394) = 27;
      goto LABEL_177;
    }

    if (!v241)
    {

      v399 = 0;
      v400 = 0;
      v37 = 0;
      goto LABEL_172;
    }

    type metadata accessor for ICU.Enumerator();
    v393 = 7;
    v353 = swift_allocObject();
    *(v353 + 16) = v241;
    LODWORD(v417._countAndFlagsBits) = 0;
    LODWORD(v454) = 0;
    v246 = uenum_next();
    if (SLODWORD(v417._countAndFlagsBits) <= 0)
    {
      v375 = 0;
      v376 = 0;
      v377 = 0;
      object = 0;
      countAndFlagsBits = 0;
      v380 = 0;
      v381 = 0;
      v382 = 0;
      v383 = 0;
      v384 = 0;
      v400 = 0;
      v401 = 0;
      v395 = 0;
      v396 = 0;
      v243 = 0;
      v386 = 0;
      v387 = 0;
      v388 = 0;
      v389 = 0;
      v390 = 0;
      v391 = 0;
      v242 = 0;
      v397 = 0;
      v398 = 0;
      v399 = 0;
      LODWORD(v394) = 27;
      v392 = 0;
      v393 = 7;
      LODWORD(v364) = 4;
      while (1)
      {
        if (!v246)
        {
          goto LABEL_176;
        }

        v282 = String.init(cString:)();
        static Locale.legacyKey(forKey:)(v282, v283, &v417._countAndFlagsBits);

        v284 = v417._object;
        if (v417._object)
        {
          break;
        }

LABEL_195:
        LODWORD(v417._countAndFlagsBits) = 0;
        LODWORD(v454) = 0;
        v246 = uenum_next();
        if (SLODWORD(v417._countAndFlagsBits) > 0)
        {
          goto LABEL_176;
        }
      }

      v285 = v417._countAndFlagsBits;
      v286 = v236;
      v287 = specialized static Locale.keywordValue(identifier:key:)(v234, v236, v417._countAndFlagsBits, v417._object);
      if (!v288)
      {

LABEL_194:
        v234 = v366;
        v236 = v286;
        goto LABEL_195;
      }

      v289 = v287;
      v290 = v288;
      if (v285 == 0x7261646E656C6163 && v284 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v291._countAndFlagsBits = v289;
        v291._object = v290;
        Calendar.Identifier.init(identifierString:)(v291);
        LODWORD(v394) = LOBYTE(v417._countAndFlagsBits);
        goto LABEL_194;
      }

      if (v285 == 0x6F6974616C6C6F63 && v284 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v292 = String.lowercased()();
        v293 = v243;
        outlined consume of Locale.LanguageCode?(v400, v399, v398, v397);
        v399 = v290;
        v400 = v289;
        v397 = v292._object;
        v398 = v292._countAndFlagsBits;
LABEL_207:
        v243 = v293;
        goto LABEL_194;
      }

      if (v285 == 0x79636E6572727563 && v284 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v294 = String.lowercased()();
        v293 = v243;
        outlined consume of Locale.LanguageCode?(v242, v392, v391, v390);
        v242 = v289;
        v391 = v294._countAndFlagsBits;
        v392 = v290;
        v390 = v294._object;
        goto LABEL_207;
      }

      if (v285 == 0x737265626D756ELL && v284 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v295 = String.lowercased()();
        v293 = v243;
        outlined consume of Locale.LanguageCode?(v389, v388, v387, v386);
        v388 = v290;
        v389 = v289;
        v386 = v295._object;
        v387 = v295._countAndFlagsBits;
        goto LABEL_207;
      }

      if (v285 == 30566 && v284 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v480._countAndFlagsBits = v289;
        v480._object = v290;
        Locale.Weekday.init(rawValue:)(&v417._countAndFlagsBits, v480);
        v393 = LOBYTE(v417._countAndFlagsBits);
        goto LABEL_194;
      }

      if (v285 == 0x7372756F68 && v284 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v481._countAndFlagsBits = v289;
        v481._object = v290;
        Locale.HourCycle.init(rawValue:)(&v417._countAndFlagsBits, v481);
        LODWORD(v364) = LOBYTE(v417._countAndFlagsBits);
        goto LABEL_194;
      }

      if (v285 == 0x6572757361656DLL && v284 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v296 = v243;

        if (v289 == 0x6C61697265706D69 && v290 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          if (one-time initialization token for uk != -1)
          {
            swift_once();
          }

          v243 = static Locale.MeasurementSystem.uk;
          v297 = *algn_1EA7AFAD8;
          v298 = xmmword_1EA7AFAE0;

          outlined consume of Locale.LanguageCode?(v296, v396, v395, v401);
          v395 = v298;
          v396 = v297;
          v401 = *(&v298 + 1);
        }

        else
        {
          v304 = String.lowercased()();
          outlined consume of Locale.LanguageCode?(v243, v396, v395, v401);
          v395 = v304._countAndFlagsBits;
          v396 = v290;
          v401 = v304._object;
          v243 = v289;
        }

        goto LABEL_194;
      }

      v365 = v243;
      if (v285 == 26482 && v284 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (String.count.getter() > 2)
        {
          specialized Collection.prefix(_:)(2, v289, v290);

          v299 = Substring.uppercased()();

          v417 = v299;
          v300 = String.init<A>(_:)();
          v302 = v301;
          v303 = String.uppercased()();
          outlined consume of Locale.LanguageCode?(v384, v383, v382, v381);
          v383 = v302;
          v384 = v300;
          v381 = v303._object;
          v382 = v303._countAndFlagsBits;
          v243 = v365;
          goto LABEL_194;
        }

LABEL_253:

        v243 = v365;
        goto LABEL_194;
      }

      if (v285 == 25715 && v284 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v305 = String.lowercased()();
        outlined consume of Locale.LanguageCode?(v380, countAndFlagsBits, object, v377);
        countAndFlagsBits = v290;
        v380 = v289;
        v377 = v305._object;
        object = v305._countAndFlagsBits;
        v243 = v365;
        goto LABEL_194;
      }

      if (v285 == 0x656E6F7A656D6974 && v284 == 0xE800000000000000)
      {
      }

      else
      {
        v307 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v307 & 1) == 0)
        {
          goto LABEL_253;
        }
      }

      if (one-time initialization token for cache != -1)
      {
        v306 = swift_once();
      }

      v308 = static TimeZoneCache.cache;
      MEMORY[0x1EEE9AC00](v306);
      os_unfair_lock_lock(v308 + 30);
      v309 = v354;
      closure #1 in TimeZoneCache.fixed(_:)partial apply(&v417._countAndFlagsBits);
      v354 = v309;
      os_unfair_lock_unlock(v308 + 30);
      v310 = v417;

      if (v310._countAndFlagsBits)
      {
        v311 = v310._object;
      }

      else
      {
        v311 = 0;
      }

      v375 = v311;
      swift_unknownObjectRelease();
      v376 = v310._countAndFlagsBits;
      v243 = v365;
      goto LABEL_194;
    }

    v399 = 0;
    v400 = 0;
    v397 = 0;
    v398 = 0;
    v242 = 0;
    v391 = 0;
    v392 = 0;
    v389 = 0;
    v390 = 0;
    v387 = 0;
    v388 = 0;
    v386 = 0;
    v243 = 0;
    v395 = 0;
    v396 = 0;
    v401 = 0;
    v383 = 0;
    v384 = 0;
    v381 = 0;
    v382 = 0;
    countAndFlagsBits = 0;
    v380 = 0;
    v377 = 0;
    object = 0;
    v375 = 0;
    v376 = 0;
    LODWORD(v364) = 4;
    LODWORD(v394) = 27;
LABEL_176:

    v241 = v397;
    v37 = v398;
    v20 = v395;
    v244 = v396;
    v245 = v401;
LABEL_177:
    v401 = v245;
    v247 = v243;
    v366 = v242;
    v248 = *(&v473 + 1);
    if (*(&v473 + 1))
    {
      v249 = v473;
      v250 = String.lowercased()();

      outlined consume of Locale.LanguageCode?(v400, v399, v37, v241);
      v399 = v248;
      v400 = v249;
      v37 = v250._countAndFlagsBits;
      v241 = v250._object;
    }

    if (!v474)
    {
      goto LABEL_185;
    }

    v251 = specialized Dictionary.subscript.getter(v355, v474);
    if (v252)
    {
      goto LABEL_185;
    }

    if (v251 >= 0xFFFFFFFF80000000)
    {
      break;
    }

LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
LABEL_333:
    swift_once();
LABEL_72:
    v92 = static _LocaleICU.log;
    Logger.init(_:)();
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_18075C000, v93, v94, "Lookup of 'AppleLanguages' from current preferences failed lookup (app preferences do not contain the key); likely falling back to default locale identifier as current", v95, 2u);
      MEMORY[0x1865D2690](v95, -1, -1);
    }

    (*(v389 + 8))(v20, v388);

    if (v37)
    {
      goto LABEL_86;
    }
  }

  if (v251 > 0x7FFFFFFF)
  {
    goto LABEL_332;
  }

  if ((v251 - 8) >= 0xFFFFFFFFFFFFFFF9)
  {
    v253 = v251 - 1;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    v393 = outlined read-only object #0 of one-time initialization function for weekdays[v253 + 32];
  }

LABEL_185:
  v423 = v477;
  v424[0] = *v478;
  *(v424 + 12) = *&v478[12];
  v419 = v473;
  v420 = v474;
  v422 = v476;
  v421 = v475;
  v418 = v472;
  v417 = v471;
  LocalePreferences.measurementSystem.getter(&v454);
  v254 = *(&v454 + 1);
  v397 = v241;
  v398 = v37;
  if (*(&v454 + 1))
  {
    v255 = v456;
    v256 = v455;
    v257 = v454;
    outlined consume of Locale.LanguageCode?(v247, v244, v20, v401);
    v365 = v257;
    v395 = v256;
    v396 = v254;
    v401 = v255;
  }

  else
  {
    v365 = v243;
    v395 = v20;
    v396 = v244;
  }

  v423 = v477;
  v424[0] = *v478;
  *(v424 + 12) = *&v478[12];
  v419 = v473;
  v420 = v474;
  v422 = v476;
  v421 = v475;
  v418 = v472;
  v417 = v471;
  LocalePreferences.hourCycle.getter(&v454);
  *(&v423 + 1) = *v412;
  DWORD1(v423) = *&v412[3];
  v258 = v364;
  if (v454 != 4)
  {
    v258 = v454;
  }

  LODWORD(v355) = v258;
  v434 = v410;
  v435 = v411;
  v417._countAndFlagsBits = v374;
  v417._object = v373;
  v260 = v362;
  v259 = v363;
  *&v418 = v363;
  *(&v418 + 1) = v362;
  v261 = v360;
  v262 = v361;
  *&v419 = v361;
  *(&v419 + 1) = v360;
  v263 = countAndFlagsBits_low;
  v264 = v359;
  *&v420 = v359;
  *(&v420 + 1) = countAndFlagsBits_low;
  v266 = v356;
  v265 = v357;
  *&v421 = v357;
  *(&v421 + 1) = v356;
  *&v422 = v372;
  *(&v422 + 1) = v371;
  LOBYTE(v423) = v394;
  *(&v423 + 1) = v400;
  *&v424[0] = v399;
  *(&v424[0] + 1) = v398;
  *&v424[1] = v397;
  *(&v424[1] + 1) = v366;
  v425 = v392;
  v426 = v391;
  v427 = v390;
  v428 = v389;
  v429 = v388;
  v430 = v387;
  v431 = v386;
  v432 = v393;
  v433 = v258;
  v436 = v365;
  v437 = v396;
  v438 = v395;
  v439 = v401;
  v440 = v384;
  v441 = v383;
  v442 = v382;
  v443 = v381;
  v444 = v380;
  v445 = countAndFlagsBits;
  v446 = object;
  v447 = v377;
  v448 = v376;
  v449 = v375;
  v450 = v369;
  v451 = v370;
  v452 = v368;
  v453 = v367;
  v267 = Locale.Components.icuIdentifier.getter();
  v364 = v268;
  outlined destroy of LocalePreferences(&v471);
  v417._countAndFlagsBits = v374;
  v417._object = v373;
  *&v418 = v259;
  *(&v418 + 1) = v260;
  *&v419 = v262;
  *(&v419 + 1) = v261;
  *&v420 = v264;
  *(&v420 + 1) = v263;
  *&v421 = v265;
  *(&v421 + 1) = v266;
  *&v422 = v372;
  *(&v422 + 1) = v371;
  LOBYTE(v423) = v394;
  *(&v423 + 1) = v400;
  *&v424[0] = v399;
  *(&v423 + 1) = *v412;
  DWORD1(v423) = *&v412[3];
  *(&v424[0] + 1) = v398;
  *&v424[1] = v397;
  *(&v424[1] + 1) = v366;
  v425 = v392;
  v426 = v391;
  v427 = v390;
  v428 = v389;
  v429 = v388;
  v430 = v387;
  v431 = v386;
  v432 = v393;
  v433 = v355;
  v434 = v410;
  v435 = v411;
  v436 = v365;
  v437 = v396;
  v438 = v395;
  v439 = v401;
  v440 = v384;
  v441 = v383;
  v442 = v382;
  v443 = v381;
  v444 = v380;
  v445 = countAndFlagsBits;
  v446 = object;
  v447 = v377;
  v448 = v376;
  v449 = v375;
  v450 = v369;
  v451 = v370;
  v452 = v368;
  v453 = v367;
  outlined destroy of Locale.Components(&v417);
  v269 = v385;
  v270 = v364;
  *(v385 + 32) = v267;
  *(v269 + 40) = v270;
  v403 = 1;
  v402 = 1;
  v271 = MEMORY[0x1E69E7CC0];
  v401 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v400 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v271);
  v399 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v271);
  v398 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v271);
  v272 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation8CalendarV10IdentifierO_SSSgTt0g5Tf4g_n(v271);
  v273 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v271);
  v274 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v271);
  v275 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(v271);
  v276 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_SpySvSgGTt0g5Tf4g_n(v271);
  LOBYTE(v265) = v402;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA10_LocaleICUC0C0V_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA10_LocaleICUC0C0V_GMR);
  v277 = swift_allocObject();
  *(v277 + 536) = 0;
  *(v277 + 16) = xmmword_1812187D0;
  *(v277 + 32) = 0u;
  *(v277 + 48) = 0u;
  *(v277 + 64) = 0u;
  *(v277 + 80) = 0u;
  *(v277 + 96) = 0u;
  *(v277 + 112) = 0u;
  *(v277 + 128) = 0u;
  *(v277 + 144) = 0;
  *(v277 + 152) = 1;
  *(v277 + 160) = 0u;
  *(v277 + 176) = 0u;
  *(v277 + 192) = 0u;
  *(v277 + 208) = 0;
  *(v277 + 216) = 7;
  v278 = v454;
  *(v277 + 220) = *(&v454 + 3);
  *(v277 + 217) = v278;
  *(v277 + 240) = 0u;
  *(v277 + 256) = 0u;
  *(v277 + 224) = 0u;
  *(v277 + 272) = 256;
  *(v277 + 278) = v409;
  *(v277 + 274) = v408;
  *(v277 + 280) = 0;
  *(v277 + 288) = v265;
  *(v277 + 289) = 4;
  *(v277 + 290) = v406;
  *(v277 + 294) = v407;
  *(v277 + 296) = 0u;
  *(v277 + 312) = 0u;
  *(v277 + 328) = 2;
  *(v277 + 329) = *v405;
  *(v277 + 332) = *&v405[3];
  *(v277 + 336) = xmmword_1812187D0;
  *(v277 + 352) = 0;
  *(v277 + 360) = 0;
  *(v277 + 368) = 0;
  *(v277 + 376) = 1;
  *(v277 + 384) = 0;
  *(v277 + 392) = 0;
  *(v277 + 400) = 1;
  *(v277 + 408) = 0;
  *(v277 + 416) = 0;
  *(v277 + 424) = 1;
  *(v277 + 432) = 0;
  *(v277 + 440) = 0;
  v279 = MEMORY[0x1E69E7CC8];
  *(v277 + 448) = MEMORY[0x1E69E7CC8];
  *(v277 + 456) = v279;
  v280 = v400;
  *(v277 + 464) = v401;
  *(v277 + 472) = v280;
  v281 = v398;
  *(v277 + 480) = v399;
  *(v277 + 488) = v281;
  *(v277 + 496) = v272;
  *(v277 + 504) = v273;
  *(v277 + 512) = v274;
  *(v277 + 520) = v275;
  *(v277 + 528) = v276;
  *(v269 + 200) = v277;
  return v269;
}

void Locale.Language.Components.init(identifier:)(uint64_t *a3@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  memset(v30, 0, 96);
  outlined destroy of Locale.Language.Components(v30);
  String.utf8CString.getter();
  Language = uloc_getLanguage();

  if (Language <= 0)
  {
    v5 = 0;
    v7 = 0;
  }

  else
  {
    v29[Language] = 0;
    v5 = MEMORY[0x1865CAEB0](v29);
    v7 = v6;
  }

  String.utf8CString.getter();
  Script = uloc_getScript();

  v9 = 0;
  v10 = 0;
  if (Script > 0)
  {
    v28[Script] = 0;
    v9 = MEMORY[0x1865CAEB0](v28);
    v10 = v11;
  }

  String.utf8CString.getter();

  Country = uloc_getCountry();

  v13 = 0;
  v14 = 0;
  if (Country > 0)
  {
    v27[Country] = 0;
    v13 = MEMORY[0x1865CAEB0](v27);
    v14 = v15;
  }

  if (v7)
  {
    v16 = String.lowercased()();
    object = v16._object;
    countAndFlagsBits = v16._countAndFlagsBits;
    v26 = v5;
    if (v10)
    {
      goto LABEL_10;
    }

LABEL_13:
    v9 = 0;
    v18 = 0;
    v19 = 0;
    v20 = v7;
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_14:
    v13 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_15;
  }

  object = 0;
  countAndFlagsBits = 0;
  v26 = 0;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:

  String.init<A>(_:)();
  v17 = String._capitalized()();
  v18 = v17._countAndFlagsBits;
  v19 = v17._object;

  v20 = v7;
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = String.uppercased()();
  v22 = v21._countAndFlagsBits;
  v23 = v21._object;
LABEL_15:
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  outlined consume of Locale.LanguageCode?(0, 0, 0, 0);
  *a3 = v26;
  a3[1] = v20;
  a3[2] = countAndFlagsBits;
  a3[3] = object;
  a3[4] = v9;
  a3[5] = v10;
  a3[6] = v18;
  a3[7] = v19;
  a3[8] = v13;
  a3[9] = v14;
  a3[10] = v22;
  a3[11] = v23;
}

uint64_t specialized _withFixedCharBuffer(size:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (a1 + 1 < 0)
    {
      __break(1u);
    }

    v3 = a1 + 1;

    if (v3 < 1025)
    {
      goto LABEL_4;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v10 = swift_slowAlloc();

    specialized closure #1 in _withFixedCharBuffer(size:_:)(v10, v12);
    MEMORY[0x1865D2690](v10, -1, -1);

    return v12[0];
  }

LABEL_4:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v6 = &v12[-1] - v5;
  LODWORD(v12[0]) = 0;
  String.utf8CString.getter();
  Variant = uloc_getVariant();

  v8 = 0;
  if (SLODWORD(v12[0]) <= 0 && Variant > 0)
  {
    v6[Variant] = 0;
    v8 = MEMORY[0x1865CAEB0](v6);
  }

  return v8;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd, &_ss18_DictionaryStorageCyS2SSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation8CalendarV10IdentifierO_SSSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSSSgGMd, &_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOSSSgGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t instantiation function for generic protocol witness table for _LocaleICU(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type _LocaleICU and conformance _LocaleICU(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, a2, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
  *(a1 + 8) = result;
  return result;
}

Foundation::Calendar::Identifier static _LocaleICU._calendarIdentifier(forIdentifier:)@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = specialized static Locale.keywordValue(identifier:key:)(a1, a2, 0x7261646E656C6163, 0xE800000000000000);
  if (!v5)
  {
    v12 = 0;
    String.utf8CString.getter();
    KeywordValuesForLocale = ucal_getKeywordValuesForLocale();

    if (!KeywordValuesForLocale || !uenum_next())
    {
      *a3 = 0;
      return uenum_close();
    }

    v9 = String.init(cString:)();
    v11 = v10;
    uenum_close();
    v5 = v11;
    v4 = v9;
  }

  result = Calendar.Identifier.init(identifierString:)(*&v4).value;
  v7 = v12;
  if (v12 == 27)
  {
    v7 = 0;
  }

  *a3 = v7;
  return result;
}

uint64_t Locale.Components.icuIdentifier.getter()
{
  v90 = *(v0 + 72);
  v85 = *(v0 + 88);
  v86 = *(v0 + 80);
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);
  v67 = *(v0 + 120);
  v68 = *(v0 + 152);
  v75 = *(v0 + 144);
  v76 = *(v0 + 160);
  v77 = *(v0 + 176);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v89 = *(v0 + 201);
  v79 = *(v0 + 216);
  v69 = *(v0 + 184);
  v70 = *(v0 + 224);
  v5 = *(v0 + 240);
  v74 = *(v0 + 256);
  v6 = *(v0 + 264);
  v81 = *(v0 + 248);
  v82 = *(v0 + 280);
  v87 = *(v0 + 232);
  v88 = *(v0 + 296);
  v71 = *(v0 + 288);
  v72 = *(v0 + 312);
  v73 = *(v0 + 336);
  v83 = *(v0 + 328);
  v84 = *(v0 + 344);
  v80 = *(v0 + 64);
  v78 = *(v0 + 304);
  if (*(v0 + 96) != 27)
  {
    v66 = *(v0 + 264);
    v65 = *(v0 + 240);
    v8 = Calendar.Identifier.cldrIdentifier.getter();
    v10 = v9;
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = v7[2];
    v11 = v7[3];
    if (v12 >= v11 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v7);
    }

    v7[2] = v12 + 1;
    v13 = &v7[4 * v12];
    v13[4] = 0x7261646E656C6163;
    v13[5] = 0xE800000000000000;
    v13[6] = v8;
    v13[7] = v10;
    v5 = v65;
    v6 = v66;
    if (!v1)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
LABEL_7:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v15 = v7[2];
    v14 = v7[3];
    if (v15 >= v14 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v7);
    }

    v7[2] = v15 + 1;
    v16 = &v7[4 * v15];
    v16[4] = 0x6F6974616C6C6F63;
    v16[5] = 0xE90000000000006ELL;
    v16[6] = v67;
    v16[7] = v2;
  }

LABEL_12:
  if (v75)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v18 = v7[2];
    v17 = v7[3];
    if (v18 >= v17 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v7);
    }

    v7[2] = v18 + 1;
    v19 = &v7[4 * v18];
    v19[4] = 0x79636E6572727563;
    v19[5] = 0xE800000000000000;
    v19[6] = v68;
    v19[7] = v76;
  }

  if (v77)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v21 = v7[2];
    v20 = v7[3];
    if (v21 >= v20 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v7);
    }

    v7[2] = v21 + 1;
    v22 = &v7[4 * v21];
    v22[4] = 0x737265626D756ELL;
    v22[5] = 0xE700000000000000;
    v22[6] = v69;
    v22[7] = v3;
  }

  v23 = v89;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 != 6)
      {
        v26 = v85;
        v25 = v86;
        v27 = v81;
        if (v89 <= 1)
        {
          goto LABEL_46;
        }

        goto LABEL_41;
      }

      v24 = 7627123;
    }

    else if (v4 == 4)
    {
      v24 = 7694452;
    }

    else
    {
      v24 = 6910566;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      v24 = 6649204;
    }

    else
    {
      v24 = 6579575;
    }
  }

  else
  {
    v24 = 7237485;
    if (!v4)
    {
      v24 = 7239027;
    }
  }

  v26 = v85;
  v25 = v86;
  v27 = v81;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_100;
  }

  while (1)
  {
    v29 = v7[2];
    v28 = v7[3];
    if (v29 >= v28 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v7);
    }

    v7[2] = v29 + 1;
    v30 = &v7[4 * v29];
    v30[4] = 30566;
    v30[5] = 0xE200000000000000;
    v30[6] = v24;
    v30[7] = 0xE300000000000000;
    v23 = v89;
    if (v89 <= 1)
    {
LABEL_46:
      v31 = 3223912;
      if (v23)
      {
        v31 = 3289448;
      }
    }

    else
    {
LABEL_41:
      if (v23 == 2)
      {
        v31 = 3355240;
      }

      else
      {
        if (v23 != 3)
        {
          goto LABEL_53;
        }

        v31 = 3420776;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v33 = v7[2];
    v32 = v7[3];
    if (v33 >= v32 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v7);
    }

    v7[2] = v33 + 1;
    v34 = &v7[4 * v33];
    v34[4] = 0x7372756F68;
    v34[5] = 0xE500000000000000;
    v34[6] = v31;
    v34[7] = 0xE300000000000000;
LABEL_53:
    if (v79)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v36 = v7[2];
      v35 = v7[3];
      if (v36 >= v35 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v7);
      }

      v7[2] = v36 + 1;
      v37 = &v7[4 * v36];
      v37[4] = 0x6572757361656DLL;
      v37[5] = 0xE700000000000000;
      v37[6] = v70;
      v37[7] = v87;
    }

    if (!v27)
    {
      v5 = v80;
      v27 = v78;
      goto LABEL_73;
    }

    if (v90)
    {
      v38 = v6;
      if (v74 == v25 && v6 == v26)
      {
        v39 = v5;
        outlined copy of Locale.LanguageCode?(v5, v27, v25, v26);
        v5 = v80;
        outlined copy of Locale.LanguageCode?(v80, v90, v25, v26);
        outlined copy of Locale.LanguageCode?(v39, v27, v25, v26);
        outlined consume of Locale.LanguageCode?(v80, v90, v25, v26);

        outlined consume of Locale.LanguageCode?(v39, v27, v25, v26);
        v27 = v78;
        goto LABEL_73;
      }

      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v42 = v5;
      outlined copy of Locale.LanguageCode?(v5, v27, v74, v38);
      v5 = v80;
      outlined copy of Locale.LanguageCode?(v80, v90, v25, v26);
      outlined copy of Locale.LanguageCode?(v42, v27, v74, v38);
      outlined consume of Locale.LanguageCode?(v80, v90, v25, v26);

      outlined consume of Locale.LanguageCode?(v42, v27, v74, v38);
      if (v41)
      {
        v27 = v78;
        goto LABEL_73;
      }
    }

    else
    {
      v40 = v5;
      outlined copy of Locale.LanguageCode?(v5, v27, v74, v6);
      v5 = v80;
      outlined copy of Locale.LanguageCode?(v80, 0, v25, v26);
      outlined copy of Locale.LanguageCode?(v40, v27, v74, v6);

      outlined consume of Locale.LanguageCode?(v40, v27, v74, v6);
      outlined consume of Locale.LanguageCode?(v80, 0, v25, v26);
    }

    MEMORY[0x1865CB0E0](2054847098, 0xE400000000000000);
    v43 = String.lowercased()();

    v27 = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v45 = v7[2];
    v44 = v7[3];
    if (v45 >= v44 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v7);
    }

    v7[2] = v45 + 1;
    v46 = &v7[4 * v45];
    v46[2]._countAndFlagsBits = 26482;
    v46[2]._object = 0xE200000000000000;
    v46[3] = v43;
LABEL_73:
    if (v82)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v48 = v7[2];
      v47 = v7[3];
      if (v48 >= v47 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v7);
      }

      v7[2] = v48 + 1;
      v49 = &v7[4 * v48];
      v49[4] = 25715;
      v49[5] = 0xE200000000000000;
      v49[6] = v71;
      v49[7] = v88;
    }

    if (v27)
    {
      ObjectType = swift_getObjectType();
      v51 = (*(v72 + 32))(ObjectType);
      v53 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v55 = v7[2];
      v54 = v7[3];
      if (v55 >= v54 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v7);
      }

      v7[2] = v55 + 1;
      v56 = &v7[4 * v55];
      v56[4] = 0x656E6F7A656D6974;
      v56[5] = 0xE800000000000000;
      v56[6] = v51;
      v56[7] = v53;
    }

    if (v83)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      }

      v58 = v7[2];
      v57 = v7[3];
      if (v58 >= v57 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v7);
      }

      v7[2] = v58 + 1;
      v59 = &v7[4 * v58];
      v59[4] = 24950;
      v59[5] = 0xE200000000000000;
      v59[6] = v73;
      v59[7] = v84;
    }

    v93 = Locale.Language.Components.identifier.getter();
    v24 = v7[2];
    if (!v24)
    {
      break;
    }

    MEMORY[0x1865CB0E0](64, 0xE100000000000000);
    v60 = v7[2];
    if (!v60)
    {
      break;
    }

    v6 = 0;
    v61 = v24 - 1;
    v25 = v7 + 7;
    while (v6 < v60)
    {
      v63 = *(v25 - 1);
      v62 = *v25;
      v91 = *(v25 - 3);
      v92 = *(v25 - 2);

      MEMORY[0x1865CB0E0](61, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v63, v62);

      v24 = v92;
      MEMORY[0x1865CB0E0](v91, v92);

      if (v61 != v6)
      {
        MEMORY[0x1865CB0E0](59, 0xE100000000000000);
      }

      ++v6;
      v60 = v7[2];
      v25 += 4;
      if (v6 == v60)
      {
        goto LABEL_98;
      }
    }

    __break(1u);
LABEL_100:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
  }

LABEL_98:

  return v93;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1865CC0E0](v5, a1);
        swift_dynamicCast();
        v7 = *(v15 + 16);
        v6 = *(v15 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        *(v15 + 16) = v7 + 1;
        v8 = v15 + 16 * v7;
        *(v8 + 32) = v13;
        *(v8 + 40) = v14;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v11 = *(v15 + 16);
        v10 = *(v15 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        *(v15 + 16) = v11 + 1;
        v12 = v15 + 16 * v11;
        *(v12 + 32) = v13;
        *(v12 + 40) = v14;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1865CC0E0](v5, a1);
        swift_dynamicCast();
        v7 = *(v16 + 16);
        v6 = *(v16 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        v8 = v16 + 32 * v7;
        *(v16 + 16) = v7 + 1;
        *(v8 + 32) = v13;
        *(v8 + 40) = v14;
        *(v8 + 48) = v15;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v11 = *(v16 + 16);
        v10 = *(v16 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        v12 = v16 + 32 * v11;
        *(v16 + 16) = v11 + 1;
        *(v12 + 32) = v13;
        *(v12 + 40) = v14;
        *(v12 + 48) = v15;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1865CC0E0](i, a1);
        swift_dynamicCast();
        v7 = *(v12 + 16);
        v6 = *(v12 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        *(v12 + 16) = v7 + 1;
        *(v12 + 16 * v7 + 32) = v11;
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v10 = *(v12 + 16);
        v9 = *(v12 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        }

        *(v12 + 16) = v10 + 1;
        *(v12 + 16 * v10 + 32) = v11;
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1865CC0E0](v5, a1);
        swift_dynamicCast();
        v7 = *(v16 + 16);
        v6 = *(v16 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        *(v16 + 16) = v7 + 1;
        v8 = v16 + 40 * v7;
        *(v8 + 64) = v15;
        *(v8 + 32) = v13;
        *(v8 + 48) = v14;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v11 = *(v16 + 16);
        v10 = *(v16 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        *(v16 + 16) = v11 + 1;
        v12 = v16 + 40 * v11;
        *(v12 + 64) = v15;
        *(v12 + 32) = v13;
        *(v12 + 48) = v14;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1865CC0E0](v5, a1);
        swift_dynamicCast();
        v7 = *(v15 + 16);
        v6 = *(v15 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        *(v15 + 16) = v7 + 1;
        v8 = v15 + 16 * v7;
        *(v8 + 32) = v13;
        *(v8 + 40) = v14;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v11 = *(v15 + 16);
        v10 = *(v15 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        *(v15 + 16) = v11 + 1;
        v12 = v15 + 16 * v11;
        *(v12 + 32) = v13;
        *(v12 + 40) = v14;
        v9 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall String._capitalized()()
{
  v2 = v1;
  v3 = v0;
  v49 = *MEMORY[0x1E69E9840];
  v45 = type metadata accessor for Unicode.Scalar.Properties();
  v4 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v48 = 0xE000000000000000;
  v7 = v3;
  if ((v2 & 0x1000000000000000) != 0)
  {
    v9 = String.UTF8View._foreignCount()();
    v8 = v2 & 0x2000000000000000;
  }

  else
  {
    v8 = v2 & 0x2000000000000000;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v9 = v3 & 0xFFFFFFFFFFFFLL;
    }
  }

  MEMORY[0x1865CAED0](v9);
  if (v8)
  {
    v10 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v10 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v44 = v8;
    v11 = 0;
    v12 = 0;
    v42 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v43 = v2 & 0xFFFFFFFFFFFFFFLL;
    v13 = (v4 + 8);
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v16 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v18 = v17;
        goto LABEL_22;
      }

      if (v44)
      {
        v46[0] = v7;
        v46[1] = v43;
        v15 = v46 + v12;
      }

      else
      {
        v19 = v42;
        if ((v7 & 0x1000000000000000) == 0)
        {
          v19 = _StringObject.sharedUTF8.getter();
        }

        v15 = (v19 + v12);
      }

      v16 = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        break;
      }

      v28 = (__clz(v16 ^ 0xFF) - 24);
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          v16 = ((v16 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3F;
          v18 = 3;
        }

        else
        {
          v16 = ((v16 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3F;
          v18 = 4;
        }
      }

      else
      {
        if (v28 == 1)
        {
          break;
        }

        v16 = v15[1] & 0x3F | ((v16 & 0x1F) << 6);
        v18 = 2;
      }

LABEL_22:
      Unicode.Scalar.properties.getter();
      if (BYTE2(v16) > 1u)
      {
        if (BYTE2(v16) > 0xEu)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v20 = *(&__CFUniCharUppercaseLetterCharacterSetBitmap_0 + BYTE2(v16));
        if (v20 && ((*(v20 + (v16 >> 3)) >> (v16 & 7)) & 1) != 0)
        {
          if (v11)
          {
            v14 = Unicode.Scalar.Properties.lowercaseMapping.getter();
          }

          else
          {
LABEL_32:
            if (v16 > 0x7F)
            {
              v31 = (v16 & 0x3F) << 8;
              if (v16 >= 0x800)
              {
                v36 = (v31 | (v16 >> 6) & 0x3F) << 8;
                v37 = (((v36 | (v16 >> 12) & 0x3F) << 8) | (v16 >> 18)) - 2122219023;
                v22 = (v16 >> 12) + v36 + 8487393;
                if (HIWORD(v16))
                {
                  v22 = v37;
                }
              }

              else
              {
                v22 = (v16 >> 6) + v31 + 33217;
              }
            }

            else
            {
              v22 = v16 + 1;
            }

            v46[0] = (v22 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v22) >> 3))));
            v14 = static String._uncheckedFromUTF8(_:)();
          }

          goto LABEL_11;
        }

        v21 = *(&__CFUniCharLowercaseLetterCharacterSetBitmap_1 + BYTE2(v16));
        if (v21 && ((*(v21 + (v16 >> 3)) >> (v16 & 7)) & 1) != 0)
        {
          if (v11)
          {
            goto LABEL_32;
          }

          v14 = Unicode.Scalar.Properties.titlecaseMapping.getter();
LABEL_11:
          MEMORY[0x1865CB0E0](v14);
          v11 = 1;
          goto LABEL_12;
        }
      }

      v23 = *(&__CFUniCharCaseIgnorableCharacterSetBitmap_0 + BYTE2(v16));
      if (!v23 || ((*(v23 + (v16 >> 3)) >> (v16 & 7)) & 1) == 0)
      {
LABEL_40:
        if (v16 > 0x7F)
        {
          v29 = (v16 & 0x3F) << 8;
          if (v16 >= 0x800)
          {
            v32 = (v29 | (v16 >> 6) & 0x3F) << 8;
            v33 = (((v32 | (v16 >> 12) & 0x3F) << 8) | (v16 >> 18)) - 2122219023;
            v26 = (v16 >> 12) + v32 + 8487393;
            if (HIWORD(v16))
            {
              v26 = v33;
            }
          }

          else
          {
            v26 = (v16 >> 6) + v29 + 33217;
          }
        }

        else
        {
          v26 = v16 + 1;
        }

        v46[0] = (v26 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v26) >> 3))));
        v27 = static String._uncheckedFromUTF8(_:)();
        MEMORY[0x1865CB0E0](v27);
        v11 = 0;
        goto LABEL_12;
      }

      if (v16 > 0x7F)
      {
        v30 = (v16 & 0x3F) << 8;
        if (v16 >= 0x800)
        {
          v34 = (v30 | (v16 >> 6) & 0x3F) << 8;
          v35 = (((v34 | (v16 >> 12) & 0x3F) << 8) | (v16 >> 18)) - 2122219023;
          v24 = (v16 >> 12) + v34 + 8487393;
          if (HIWORD(v16))
          {
            v24 = v35;
          }
        }

        else
        {
          v24 = (v16 >> 6) + v30 + 33217;
        }
      }

      else
      {
        v24 = v16 + 1;
      }

      v46[0] = (v24 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v24) >> 3))));
      v25 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v25);
LABEL_12:
      v12 += v18;

      (*v13)(v6, v45);
      if (v12 >= v10)
      {
        goto LABEL_65;
      }
    }

    v18 = 1;
    goto LABEL_22;
  }

LABEL_65:

  v38 = v47;
  v39 = v48;
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

void LocalePreferences.measurementSystem.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[136];
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_3;
    }

LABEL_9:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if ((v2 & 1) == 0)
  {
    if (one-time initialization token for us != -1)
    {
      v8 = a1;
      swift_once();
      a1 = v8;
    }

    v4 = &static Locale.MeasurementSystem.us;
    goto LABEL_13;
  }

  if (v3 == 2)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    if (one-time initialization token for uk != -1)
    {
      v10 = a1;
      swift_once();
      a1 = v10;
    }

    v4 = &static Locale.MeasurementSystem.uk;
    goto LABEL_13;
  }

LABEL_3:
  if (v3)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for metric != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v4 = &static Locale.MeasurementSystem.metric;
LABEL_13:
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  *a1 = *v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
}

void LocalePreferences.hourCycle.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 138);
  v3 = *(v1 + 139);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    if (v3 == 2 || (v3 & 1) == 0)
    {
      *a1 = 4;
    }

    else
    {
      *a1 = 1;
    }
  }

  else
  {
    *a1 = 2;
  }
}

uint64_t Locale.Language.Components.identifier.getter()
{
  v1 = v0[4];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[11];
  if (v0[1])
  {
    MEMORY[0x1865CB0E0](v0[2], v0[3]);
  }

  if (v3)
  {
    v9 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v9 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      MEMORY[0x1865CB0E0](45, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v2, v4);
    }
  }

  if (v7)
  {
    v10 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v10 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      MEMORY[0x1865CB0E0](95, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v6, v8);
    }
  }

  return 0;
}

uint64_t LocaleCache.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA15_LocaleProtocol_pSg_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA15_LocaleProtocol_pSg_GMR);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  a1[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA14_NSSwiftLocaleCSg_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA14_NSSwiftLocaleCSg_GMR);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  a1[2] = v3;
  result = *MEMORY[0x1E695E6E0];
  if (*MEMORY[0x1E695E6E0])
  {
    _CFNotificationCenterInitializeDependentNotificationIfNecessary();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA11LocaleCacheV0C0V_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA11LocaleCacheV0C0V_GMR);
    result = swift_allocObject();
    v5 = MEMORY[0x1E69E7CC8];
    *(result + 48) = 0;
    *(result + 16) = v5;
    *(result + 24) = v5;
    *(result + 32) = v5;
    *(result + 40) = v5;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for cache()
{
  return LocaleCache.init()(&static LocaleCache.cache);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA17_CalendarProtocol_pSg_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA17_CalendarProtocol_pSg_GMR);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  static CalendarCache.cache = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA8CalendarV10IdentifierOAA01_L8Protocol_pG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA8CalendarV10IdentifierOAA01_L8Protocol_pG_GMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1ED440450 = result;
  return result;
}

{
  static ICULegacyNumberFormatter.cache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAHG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAHG_GMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA7AFFA0 = result;
  return result;
}

{
  static ICUDateIntervalFormatter.cache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA24ICUDateIntervalFormatterC9SignatureVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA24ICUDateIntervalFormatterC9SignatureVAHSgG_GMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA8220C8 = result;
  return result;
}

{
  static ICURelativeDateFormatter.cache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA24ICURelativeDateFormatterC9SignatureVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA24ICURelativeDateFormatterC9SignatureVAHSgG_GMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA822118 = result;
  return result;
}

{
  static ICUListFormatter.cache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA16ICUListFormatterC9SignatureVAHG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA16ICUListFormatterC9SignatureVAHG_GMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA822138 = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA17RegexPatternCacheV3Key33_B716E24E4B0E6BAE66DBA40DF02722D8LLV17_StringProcessing0L0VyAL03AnyL6OutputVGG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA17RegexPatternCacheV3Key33_B716E24E4B0E6BAE66DBA40DF02722D8LLV17_StringProcessing0L0VyAL03AnyL6OutputVGG_GMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  static RegexPatternCache.cache = result;
  return result;
}

{
  static Date.ComponentsFormatStyle.cache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA4DateV21ComponentsFormatStyleVSo06NSDateM9FormatterCG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA4DateV21ComponentsFormatStyleVSo06NSDateM9FormatterCG_GMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA8220B8 = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type _LocaleICU and conformance _LocaleICU(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id LocaleCache._currentAndCache.getter()
{
  v1 = *(v0 + 8);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  if (!v2)
  {
    LocaleCache.preferences()(v10);
    v4 = v3;
    type metadata accessor for _LocaleICU();
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
    v8[6] = v10[6];
    v9[0] = v11[0];
    *(v9 + 12) = *(v11 + 12);
    v8[2] = v10[2];
    v8[3] = v10[3];
    v8[4] = v10[4];
    v8[5] = v10[5];
    v8[0] = v10[0];
    v8[1] = v10[1];
    swift_allocObject();
    outlined init with copy of LocalePreferences(v10, &v7);
    v5 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v8, 0);
    v2 = v5;
    if (v4)
    {
      MEMORY[0x1EEE9AC00](v5);
      os_unfair_lock_lock((v1 + 32));
      partial apply for closure #2 in LocaleCache._currentAndCache.getter((v1 + 16), v8);
      os_unfair_lock_unlock((v1 + 32));
      outlined destroy of LocalePreferences(v10);

      return *&v8[0];
    }

    else
    {
      outlined destroy of LocalePreferences(v10);
    }
  }

  return v2;
}

void NSHashInsertKnownAbsent(NSHashTable *table, const void *pointer)
{
  if (!table)
  {
    NSLog(@"%s: hash table argument is NULL", "void NSHashInsertKnownAbsent(NSHashTable * _Nonnull, const void * _Nullable)");
  }

  [(NSHashTable *)table insertKnownAbsentItem:pointer];
}

NSCharacterSet *__defaultInvertedSkipSet_block_invoke()
{
  result = [+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet invertedSet];
  qword_1ED43F178 = result;
  return result;
}

BOOL _NSCheckDecimalSeparator(uint64_t *a1, _WORD *a2, int a3, void *a4)
{
  if (a4)
  {
    v8 = [a4 length];
  }

  else
  {
    v8 = 1;
  }

  v9 = *a2;
  v10 = v9 == a3 && v8 == 1;
  if (v10)
  {
    return 1;
  }

  result = 0;
  if (a4 && v9 == a3)
  {
    v12 = v8 - 2;
    if (v8 >= 2)
    {
      v13 = 1;
      while (1)
      {
        v14 = *a1;
        v15 = a1[1];
        if (v15 >= *a1)
        {
          v17 = a1[3];
          v18 = a1[4] + v14;
          if (v17 > v18)
          {
            a1[4] = v18;
            if (v17 - v18 >= 0x20)
            {
              v19 = 32;
            }

            else
            {
              v19 = v17 - v18;
            }

            *a1 = v19;
            [a1[2] getUid("getCharacters:a1 + 5 range:{v18, v19}")];
            v16 = *(a1 + 20);
            *(a1 + 52) = v16;
            a1[1] = 1;
            goto LABEL_21;
          }

          a1[1] = v14 + 1;
          v16 = 0xFFFF;
        }

        else
        {
          a1[1] = v15 + 1;
          v16 = *(a1 + v15 + 20);
        }

        *(a1 + 52) = v16;
LABEL_21:
        *a2 = v16;
        v20 = [a4 characterAtIndex:v13];
        v22 = v12-- != 0;
        v10 = v16 == v20;
        result = v16 == v20;
        if (v10)
        {
          ++v13;
          if (v22)
          {
            continue;
          }
        }

        return result;
      }
    }

    return 1;
  }

  return result;
}

uint64_t _NSScanDoubleFromString(void *a1, void *a2, double *a3, unint64_t *a4, void *a5)
{
  v62 = *MEMORY[0x1E69E9840];
  v61 = 0u;
  memset(v60, 0, sizeof(v60));
  v58 = 0u;
  v59 = 0u;
  v55 = &v57 + 15;
  v9 = [a5 objectForKey:*MEMORY[0x1E695D990]];
  if (v9 || (v9 = [a5 objectForKey:@"NSDecimalSeparator"]) != 0)
  {
    v10 = v9;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v10 = [a5 decimalSeparator];
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (![v10 length])
  {
LABEL_10:
    v52 = 46;
    goto LABEL_11;
  }

  v52 = [v10 characterAtIndex:0];
LABEL_11:
  v11 = *a4;
  v12 = [a1 length];
  *(&v59 + 1) = v12;
  *&v60[0] = v11;
  *&v59 = a1;
  if (v12 <= v11)
  {
    *&v58 = 0;
    v14 = 0xFFFF;
  }

  else
  {
    if (v12 - v11 >= 0x20)
    {
      v13 = 32;
    }

    else
    {
      v13 = v12 - v11;
    }

    *&v58 = v13;
    [a1 getUid("getCharacters:v60 + 8 range:{v11, v13}")];
    v14 = WORD4(v60[0]);
  }

  WORD4(v61) = v14;
  v15 = 1;
  *(&v58 + 1) = 1;
  if (a2)
  {
    if ([a2 characterIsMember:?])
    {
      do
      {
        v16 = *(&v58 + 1);
        if (*(&v58 + 1) - 1 >= v58)
        {
          break;
        }

        if (*(&v58 + 1) >= v58)
        {
          v18 = *&v60[0] + v58;
          if (*(&v59 + 1) > *&v60[0] + v58)
          {
            if (*(&v59 + 1) - (*&v60[0] + v58) >= 0x20uLL)
            {
              v19 = 32;
            }

            else
            {
              v19 = *(&v59 + 1) - (*&v60[0] + v58);
            }

            *&v60[0] += v58;
            *&v58 = v19;
            [v59 getUid("getCharacters:v60 + 8 range:{v18, v19}")];
            WORD4(v61) = WORD4(v60[0]);
            *(&v58 + 1) = 1;
            continue;
          }

          *(&v58 + 1) = v58 + 1;
          v17 = -1;
        }

        else
        {
          ++*(&v58 + 1);
          v17 = *(v60 + v16 + 4);
        }

        WORD4(v61) = v17;
      }

      while (([a2 characterIsMember:?] & 1) != 0);
    }

    v14 = WORD4(v61);
    v15 = *(&v58 + 1);
  }

  v20 = *a4;
  v54 = v14;
  if (v14 <= 0x7F && (*(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x4000) != 0)
  {
    return 0;
  }

  v48 = *&v60[0];
  v49 = v15;
  v50 = a4;
  v21 = 0;
  v22 = 0;
  v47 = ~v20;
  v23 = 0x100004077774924;
  v24 = v60 + 8;
  v25 = v56;
  v26 = &__NSNumberSet;
  v27 = v56;
  while (1)
  {
    LOBYTE(v28) = v14;
    if (v14 <= 0x7Fu)
    {
      if ((v26[v14 >> 3] >> (v14 & 7)))
      {
        goto LABEL_43;
      }

      if (!_NSCheckDecimalSeparator(&v58, &v54, v52, v10))
      {
        goto LABEL_59;
      }

      goto LABEL_41;
    }

    v29 = u_charDigitValue(v14);
    if (v29 == -1)
    {
      break;
    }

    v28 = v29 + 48;
LABEL_42:
    v54 = v28;
LABEL_43:
    if (v27 >= v55)
    {
      v22 += 128;
      if (v21)
      {
        result = MEMORY[0x1865CFE30](v21, v22, v23, &__block_literal_global_46);
        if (!result)
        {
          return result;
        }

        v25 = result;
        LOBYTE(v28) = v54;
      }

      else
      {
        v25 = malloc_type_malloc(v22, v23);
        v31 = v57;
        v33 = v56[0];
        v32 = v56[1];
        *(v25 + 2) = v56[2];
        *(v25 + 3) = v31;
        *v25 = v33;
        *(v25 + 1) = v32;
        v21 = v56;
      }

      v27 = &v25[v27 - v21];
      v55 = &v25[v22 - 1];
      v21 = v25;
    }

    *v27++ = v28;
    v34 = *(&v58 + 1);
    if (*(&v58 + 1) < v58)
    {
      ++*(&v58 + 1);
      LOWORD(v14) = *&v24[2 * v34];
LABEL_57:
      WORD4(v61) = v14;
      goto LABEL_58;
    }

    v35 = *&v60[0] + v58;
    if (*(&v59 + 1) <= *&v60[0] + v58)
    {
      *(&v58 + 1) = v58 + 1;
      LOWORD(v14) = -1;
      goto LABEL_57;
    }

    if (*(&v59 + 1) - (*&v60[0] + v58) >= 0x20uLL)
    {
      v36 = 32;
    }

    else
    {
      v36 = *(&v59 + 1) - (*&v60[0] + v58);
    }

    *&v60[0] += v58;
    *&v58 = v36;
    v53 = v25;
    v37 = v21;
    v38 = v22;
    v39 = v24;
    v40 = v26;
    v41 = v10;
    v42 = v23;
    v43 = v59;
    Uid = sel_getUid("getCharacters:range:");
    v45 = v43;
    v23 = v42;
    v10 = v41;
    v26 = v40;
    v24 = v39;
    v22 = v38;
    v21 = v37;
    v25 = v53;
    [v45 Uid];
    LOWORD(v14) = WORD4(v60[0]);
    WORD4(v61) = WORD4(v60[0]);
    *(&v58 + 1) = 1;
LABEL_58:
    v54 = v14;
  }

  if (_NSCheckDecimalSeparator(&v58, &v54, v52, v10))
  {
LABEL_41:
    v28 = 46;
    goto LABEL_42;
  }

LABEL_59:
  *v27 = 0;
  v46 = strtod_l(v25, &v55, 0);
  if (v21)
  {
    free(v21);
  }

  if (v55 == v25)
  {
    return 0;
  }

  *v50 += &v55[v49 + v48 + v47 - v25];
  if (a3)
  {
    *a3 = v46;
  }

  return 1;
}

Protocol *__cdecl NSProtocolFromString(Protocol *namestr)
{
  v6 = *MEMORY[0x1E69E9840];
  if (namestr)
  {
    v1 = namestr;
    v2 = [(Protocol *)namestr length];
    if ([(Protocol *)v1 getCString:v5 maxLength:1000 encoding:4]&& strlen(v5) == v2)
    {
      v3 = v5;
      return objc_getProtocol(v3);
    }

    if (!v2)
    {
LABEL_9:
      v3 = [(Protocol *)v1 UTF8String];
      return objc_getProtocol(v3);
    }

    v4 = 0;
    while ([(Protocol *)v1 characterAtIndex:v4])
    {
      if (v2 == ++v4)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  return namestr;
}

void _addToStatCache(const char *a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *byte_1EEEFC288;
  v4 = strdup(a1);
  v5 = v4;
  if (a1 != a2)
  {
    if (a2)
    {
      v5 = strdup(a2);
    }

    else
    {
      v5 = 0;
    }
  }

  os_unfair_lock_lock(&stru_1ED43F214);
  v6 = qword_1ED43F220;
  if (!qword_1ED43F220)
  {
    v6 = CFDictionaryCreateMutable(*MEMORY[0x1E695E4A8], 0, &v7, 0);
    qword_1ED43F220 = v6;
  }

  if (CFDictionaryContainsKey(v6, v4))
  {
    free(v4);
    if (v4 != v5)
    {
      free(v5);
    }
  }

  else
  {
    CFDictionaryAddValue(qword_1ED43F220, v4, v5);
  }

  os_unfair_lock_unlock(&stru_1ED43F214);
}

uint64_t __NSThread__start__(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  _CFSetTSD();
  _CFSetTSD();
  atomic_store(0xEu, (a1[1] + 63));
  objc_sync_enter(a1);
  Current = CFRunLoopGetCurrent();
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1[1] + 64);
  v3 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v3)
  {
    v16 = *v27;
    v4 = *MEMORY[0x1E695E4A8];
    do
    {
      v17 = v3;
      v5 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * v5);
        if (!*(a1[1] + 72))
        {
          *(a1[1] + 72) = objc_opt_new();
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v18 = v5;
        if (v6)
        {
          v7 = *(v6 + 40);
        }

        else
        {
          v7 = 0;
        }

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v8)
        {
          v9 = *v22;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v11 = *(*(&v21 + 1) + 8 * i);
              v12 = [*(a1[1] + 72) objectForKey:v11];
              if (!v12)
              {
                memset(&context, 0, 72);
                context.perform = __NSThreadPerformPerform;
                context.info = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
                v12 = CFRunLoopSourceCreate(v4, 0, &context);
                *context.info = v12;
                CFRunLoopAddSource(Current, v12, v11);
                [*(a1[1] + 72) setObject:v12 forKey:v11];
                CFRelease(v12);
              }

              CFRunLoopSourceSignal(v12);
            }

            v8 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
          }

          while (v8);
        }

        v5 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v3 = [obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v3);
  }

  objc_sync_exit(a1);
  _CFAutoreleasePoolPush();
  v13 = [a1 name];
  if (v13)
  {
    pthread_setname_np([v13 UTF8String]);
  }

  [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"_NSThreadDidStartNotification" userInfo:a1, 0];
  _CFAutoreleasePoolPop();
  if (!*(a1[1] + 62))
  {
    [a1 main];
  }

  return +[NSThread exit];
}

void *___collectionClasses_block_invoke()
{
  v2[11] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2[0] = MEMORY[0x1E695DEC8];
  v2[1] = MEMORY[0x1E695DF70];
  v2[2] = MEMORY[0x1E695DF20];
  v2[3] = MEMORY[0x1E695DF90];
  v2[4] = MEMORY[0x1E695DFA8];
  v2[5] = MEMORY[0x1E695DFD8];
  v2[6] = MEMORY[0x1E695DFA0];
  v2[7] = MEMORY[0x1E695DFB8];
  v2[8] = MEMORY[0x1E695DFA8];
  v2[9] = NSHashTable;
  v2[10] = NSPointerArray;
  result = [v0 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v2, 11)}];
  qword_1ED43F590 = result;
  return result;
}

uint64_t specialized _ProcessInfo.environment.getter()
{
  _platform_shims_lock_environ();
  environ = _platform_shims_get_environ();
  if (!environ)
  {
    _platform_shims_unlock_environ();
    return MEMORY[0x1E69E7CC8];
  }

  v1 = environ;
  v2 = *environ;
  if (v2)
  {
    v3 = (v1 + 1);
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = strdup(v2);
      if (!v5)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v6 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      *&v4[8 * v8 + 32] = v6;
      v9 = *v3++;
      v2 = v9;
    }

    while (v9);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  _platform_shims_unlock_environ();
  v11 = *(v4 + 2);
  if (!v11)
  {
    v10 = MEMORY[0x1E69E7CC8];
    goto LABEL_53;
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC8];
  v10 = MEMORY[0x1E69E7CC8];
  v73 = *(v4 + 2);
  do
  {
    v15 = String.init(cString:)();
    v17 = v16;
    specialized Collection<>.firstIndex(of:)(61, 0xE100000000000000, v15, v16);
    if (v18)
    {

      v14 = v13;
      goto LABEL_16;
    }

    v19 = String.subscript.getter();
    v20 = MEMORY[0x1865CAE80](v19);
    v22 = v21;

    v23 = String.index(after:)();
    v24 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v24 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v24 < v23 >> 14)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v25 = String.subscript.getter();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v75 = MEMORY[0x1865CAE80](v25, v27, v29, v31);
    v33 = v32;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v20;
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v22);
    v37 = *(v13 + 16);
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_56;
    }

    v40 = v35;
    v41 = v22;
    if (*(v13 + 24) >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v13;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
        v47 = static _DictionaryStorage.copy(original:)();
        v14 = v47;
        if (*(v13 + 16))
        {
          v48 = (v47 + 64);
          v49 = (v13 + 64);
          v50 = ((1 << *(v14 + 32)) + 63) >> 6;
          if (v14 != v13 || v48 >= &v49[8 * v50])
          {
            memmove(v48, v49, 8 * v50);
          }

          v51 = 0;
          *(v14 + 16) = *(v13 + 16);
          v52 = 1 << *(v13 + 32);
          if (v52 < 64)
          {
            v53 = ~(-1 << v52);
          }

          else
          {
            v53 = -1;
          }

          v54 = v53 & *(v13 + 64);
          v55 = (v52 + 63) >> 6;
          v71 = v55;
          if (v54)
          {
            do
            {
              v56 = __clz(__rbit64(v54));
              v72 = (v54 - 1) & v54;
LABEL_45:
              v59 = 16 * (v56 | (v51 << 6));
              v60 = (*(v13 + 48) + v59);
              v62 = *v60;
              v61 = v60[1];
              v63 = (*(v13 + 56) + v59);
              v64 = *v63;
              v65 = v63[1];
              v66 = (*(v14 + 48) + v59);
              *v66 = v62;
              v66[1] = v61;
              v67 = (*(v14 + 56) + v59);
              *v67 = v64;
              v67[1] = v65;

              v55 = v71;
              v54 = v72;
            }

            while (v72);
          }

          v57 = v51;
          while (1)
          {
            v51 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_57;
            }

            if (v51 >= v55)
            {
              break;
            }

            v58 = *(v13 + 64 + 8 * v51);
            ++v57;
            if (v58)
            {
              v56 = __clz(__rbit64(v58));
              v72 = (v58 - 1) & v58;
              goto LABEL_45;
            }
          }
        }

        v22 = v41;
      }

      v42 = v74;
      v45 = v75;
      if ((v40 & 1) == 0)
      {
LABEL_29:
        specialized _NativeDictionary._insert(at:key:value:)(v36, v42, v22, v45, v33, v14);
        goto LABEL_30;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
      v14 = v13;
      v42 = v74;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v74, v22);
      if ((v40 & 1) != (v44 & 1))
      {
        goto LABEL_59;
      }

      v36 = v43;
      v45 = v75;
      if ((v40 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v46 = (*(v14 + 56) + 16 * v36);
    *v46 = v45;
    v46[1] = v33;

LABEL_30:
    v10 = v14;
    v11 = v73;
LABEL_16:
    ++v12;
    v13 = v14;
  }

  while (v12 != v11);
  v68 = *(v4 + 2);
  if (v68)
  {
    v69 = 32;
    do
    {
      free(*&v4[v69]);
      v69 += 8;
      --v68;
    }

    while (v68);
  }

LABEL_53:

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySpys4Int8VGGMd, &_ss23_ContiguousArrayStorageCySpys4Int8VGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySccySo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCySccySo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgs5NeverOGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation10JSONFutureOGMd, &_ss23_ContiguousArrayStorageCy10Foundation10JSONFutureOGMR, &type metadata for JSONFuture);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys4Int8VGMd, &_ss23_ContiguousArrayStorageCys4Int8VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation20PredicateExpressionsO10VariableIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation20PredicateExpressionsO10VariableIDVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation3URLV8TemplateV7ElementOGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLV8TemplateV7ElementOGMR, &type metadata for URL.Template.Element);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySS10FoundationE8EncodingVGMd, &_ss23_ContiguousArrayStorageCySS10FoundationE8EncodingVGMR);
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

void *NSKeyValuePropertyForIsaAndKeyPathInner(objc_class *a1, void *a2, const __CFSet *a3)
{
  value[3] = *MEMORY[0x1E69E9840];
  v5 = _NSKeyValueContainerClassForIsa(a1);
  value[0] = 0;
  value[1] = v5;
  value[2] = a2;
  v6 = CFSetGetValue(a3, value);
  if (v6)
  {
    return v6;
  }

  if (NSKeyValueProperties)
  {
    v6 = CFSetGetValue(NSKeyValueProperties, value);
    if (v6)
    {
      return v6;
    }
  }

  if ([a2 characterAtIndex:0] == 64)
  {
    v8 = [[NSKeyValueComputedProperty alloc] _initWithContainerClass:v5 keyPath:a2 propertiesBeingInitialized:a3];
  }

  else
  {
    v9 = [a2 rangeOfString:@"."];
    if (v10)
    {
      v8 = [[NSKeyValueNestedProperty alloc] _initWithContainerClass:v5 keyPath:a2 firstDotIndex:v9 propertiesBeingInitialized:a3];
    }

    else
    {
      v8 = [[NSKeyValueUnnestedProperty alloc] _initWithContainerClass:v5 key:a2 propertiesBeingInitialized:a3];
    }
  }

  v7 = v8;
  v11 = NSKeyValueProperties;
  if (!NSKeyValueProperties)
  {
    v12 = *(MEMORY[0x1E695E9F8] + 16);
    *&v14.version = *MEMORY[0x1E695E9F8];
    *&v14.release = v12;
    v14.equal = NSKeyValuePropertyIsEqual;
    v14.hash = NSKeyValuePropertyHash;
    v11 = CFSetCreateMutable(0, 0, &v14);
    NSKeyValueProperties = v11;
  }

  CFSetAddValue(v11, v7);
  CFSetRemoveValue(a3, v7);

  return v7;
}

IMP __coderAllocateClassForUnarchival_block_invoke()
{
  qword_1ED43EF40 = class_getMethodImplementation(MEMORY[0x1E69E58C0], sel_classForKeyedArchiver);
  qword_1ED43EF48 = class_getMethodImplementation(MEMORY[0x1E69E58C0], sel_classForArchiver);
  result = class_getMethodImplementation(MEMORY[0x1E69E58C0], sel_classForCoder);
  qword_1ED43EF50 = result;
  return result;
}

NSMapTable *__cdecl NSCreateMapTableWithZone(NSMapTableKeyCallBacks *keyCallBacks, NSMapTableValueCallBacks *valueCallBacks, NSUInteger capacity, NSZone *zone)
{
  v6 = objc_opt_self();
  v7 = malloc_default_zone();
  v8 = NSAllocateObject(v6, 0, v7);
  v9 = *&keyCallBacks->hash;
  v10 = *&keyCallBacks->describe;
  *(v8 + 24) = *&keyCallBacks->retain;
  *(v8 + 40) = v10;
  *(v8 + 8) = v9;
  describe = valueCallBacks->describe;
  *(v8 + 56) = *&valueCallBacks->retain;
  *(v8 + 9) = describe;
  result = malloc_type_malloc(0x10uLL, 0x80040B8603338uLL);
  if (result)
  {
    result->super.isa = __NSMapTableCallback;
    result[1].super.isa = v8;
    v13 = 10248;
    if (!keyCallBacks->retain)
    {
      v13 = 8200;
    }

    if (valueCallBacks->retain)
    {
      v13 |= 0x200uLL;
    }

    if (keyCallBacks->release)
    {
      v13 |= 0x800uLL;
    }

    if (valueCallBacks->release)
    {
      v14 = v13 | 0x200;
    }

    else
    {
      v14 = v13;
    }

    *(v8 + 10) = CFBasicHashCreate(*MEMORY[0x1E695E4A8], v14, result);
    return v8;
  }

  else
  {
    qword_1EA7BB378 = "unable to allocate space for callbacks";
    __break(1u);
  }

  return result;
}

void *CFBasicHashCreate(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2 & 8;
  v6 = a2 & 0x20;
  v7 = a2 & 0x80;
  if (!__kCFBasicHashTypeID)
  {
    __kCFBasicHashTypeID = _CFRuntimeRegisterClass();
  }

  result = _CFRuntimeCreateInstance();
  if (!result)
  {
    __break(1u);
    return result;
  }

  if ((a2 & 0x200) != 0)
  {
    result[3] |= 0x10uLL;
  }

  v9 = result[2] & 0xFFFFFFFFFFFFFFFCLL | (a2 >> 13) & 3;
  v10 = (a2 >> 12) & 8 | (a2 >> 5) & 0x40 | result[3] & 0xFFFFFFFFFFFFLL | 0x1000000000000;
  result[2] = v9;
  result[3] = v10;
  if (!v5)
  {
    v11 = 1;
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v9 & 0xFFFFFFFFFFFFFFE7 | 8;
  result[2] = v9;
  v11 = 2;
  if (v6)
  {
LABEL_10:
    v9 = v9 & 0xFFFFFFFFFFFFFC7FLL | (v11 << 7);
    LOBYTE(v11) = v11 + 1;
    result[2] = v9;
  }

LABEL_11:
  if (v7)
  {
    result[2] = v9 & 0xFFFFFFFFFFFF1FFFLL | ((v11 & 7) << 13);
  }

  result[4] = a3;
  return result;
}

void *CFBasicHashSetValue(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v5 = result[2];
  if ((v5 & 0x3F0000) != 0)
  {
    v6 = v5 & 3;
    if (v6 <= 1)
    {
      if (v6 != 1)
      {
        __break(1u);
        return result;
      }

      ___CFBasicHashFindBucket1(result, a2, 0, v11);
    }

    else if (v6 == 2)
    {
      ___CFBasicHashFindBucket2(result, a2, 0, v11);
    }

    else
    {
      ___CFBasicHashFindBucket3(result, a2, 0, v11);
    }
  }

  else
  {
    v7 = (result[3] << 32) & 0xFFFFFF0000000000;
    *v11 = -1;
    *&v11[8] = v7;
    *&v11[16] = v7;
    memset(&v11[24], 0, 32);
  }

  v8[0] = *v11;
  v8[1] = *&v11[16];
  if (*&v11[40])
  {
    v9 = *&v11[32];
    v10 = *&v11[48];
    return __CFBasicHashReplaceValue(v4, v8, a2);
  }

  else
  {
    v9 = *&v11[32];
    v10 = *&v11[48];
    return __CFBasicHashAddValue(v4, v8, a2);
  }
}

void append4Bytes(void *a1, unsigned __int8 *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = (v3 >> 4) + 87;
  if (v3 < 0xA0)
  {
    LOBYTE(v4) = (*a2 >> 4) | 0x30;
  }

  bytes[0] = v4;
  v5 = v3 & 0xF;
  v6 = v3 & 0xF | 0x30;
  v7 = (v3 & 0xF) + 87;
  if (v5 < 0xA)
  {
    v7 = v6;
  }

  bytes[1] = v7;
  v8 = a2[1];
  v9 = (v8 >> 4) + 87;
  if (v8 < 0xA0)
  {
    LOBYTE(v9) = (a2[1] >> 4) | 0x30;
  }

  bytes[2] = v9;
  v10 = v8 & 0xF;
  v11 = v8 & 0xF | 0x30;
  v12 = (v8 & 0xF) + 87;
  if (v10 < 0xA)
  {
    v12 = v11;
  }

  bytes[3] = v12;
  v13 = a2[2];
  v14 = (v13 >> 4) + 87;
  if (v13 < 0xA0)
  {
    LOBYTE(v14) = (a2[2] >> 4) | 0x30;
  }

  bytes[4] = v14;
  v15 = v13 & 0xF;
  v16 = v13 & 0xF | 0x30;
  v17 = (v13 & 0xF) + 87;
  if (v15 < 0xA)
  {
    v17 = v16;
  }

  bytes[5] = v17;
  v18 = a2[3];
  v19 = (v18 >> 4) + 87;
  if (v18 < 0xA0)
  {
    LOBYTE(v19) = (a2[3] >> 4) | 0x30;
  }

  bytes[6] = v19;
  v20 = v18 & 0xF;
  v21 = v18 & 0xF | 0x30;
  v22 = (v18 & 0xF) + 87;
  if (v20 < 0xA)
  {
    v22 = v21;
  }

  bytes[7] = v22;
  bytes[8] = 32;
  v23 = CFStringCreateWithBytes(0, bytes, 9, 0x600u, 0);
  [a1 appendString:v23];
  CFRelease(v23);
}

NSKeyPathExpression *ResolveKeyPathsIntoExpressionSequence(void *a1, void *a2)
{
  if (objc_opt_isKindOfClass())
  {
    v4 = [a2 pathExpression];
    if (objc_opt_isKindOfClass())
    {
      a2 = v4;
    }

    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 pathExpression];
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
      {
        v6 = -[NSString initWithFormat:]([NSString alloc], "initWithFormat:", @"%@.%@", [v5 keyPath], objc_msgSend(a2, "keyPath"));
        v7 = [[NSKeyPathSpecifierExpression alloc] initWithObject:v6];
        [a1 operand];
        isKindOfClass = objc_opt_isKindOfClass();
        v9 = [NSKeyPathExpression alloc];
        v10 = ((isKindOfClass & 1) != 0 ? -[NSKeyPathExpression initWithKeyPath:](v9, "initWithKeyPath:", v7) : -[NSKeyPathExpression initWithOperand:andKeyPath:](v9, "initWithOperand:andKeyPath:", [a1 operand], v7));
        v13 = v10;

        if (v13)
        {
          return v13;
        }
      }
    }

    else if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass())
    {
      v13 = [[NSKeyPathExpression alloc] initWithKeyPath:a2];
      if (v13)
      {
        return v13;
      }
    }
  }

  else
  {
    objc_opt_isKindOfClass();
    objc_opt_isKindOfClass();
  }

  v11 = [NSKeyPathExpression alloc];

  return [(NSKeyPathExpression *)v11 initWithOperand:a1 andKeyPath:a2];
}

void setProtocolMetadata(Protocol *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    outCount = 0;
    v4 = protocol_copyProtocolList(a1, &outCount);
    if (v4)
    {
      v5 = v4;
      if (outCount)
      {
        v6 = 0;
        v7 = _MergedGlobals_155;
        do
        {
          if (v7 != -1)
          {
            dispatch_once(&_MergedGlobals_155, &__block_literal_global_89);
          }

          v8 = v5[v6];
          if (v8 == qword_1ED4402E0)
          {
            v7 = -1;
          }

          else
          {
            setProtocolMetadata(v8, a2);
            v7 = _MergedGlobals_155;
          }

          ++v6;
        }

        while (v6 < outCount);
      }

      free(v5);
    }

    v9 = protocol_copyMethodDescriptionList(a1, 1, 1, &outCount);
    if (v9)
    {
      v10 = v9;
      setProtocolMetdataWithMethods(a1, a2, v9, outCount, 1);
      free(v10);
    }

    v11 = protocol_copyMethodDescriptionList(a1, 0, 1, &outCount);
    if (v11)
    {
      v12 = v11;
      setProtocolMetdataWithMethods(a1, a2, v11, outCount, 0);
      free(v12);
    }
  }
}

void setProtocolMetadataWithSignature(const char *a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  if (qword_1ED4402E8 != -1)
  {
    dispatch_once(&qword_1ED4402E8, &__block_literal_global_235_0);
  }

  if (a5)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v11 = [a3 numberOfArguments];
  if (v11 < v10)
  {
    if (a5)
    {
      v26 = @"reply block of method";
    }

    else
    {
      v26 = @"method";
    }

    v25 = [NSString stringWithFormat:@"NSXPCInterface: Too few arguments to %@ (%s / %s)", v26, a2, sel_getName(a1)];
LABEL_44:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0]);
  }

  v12 = v11;
  if ((a5 & 1) == 0)
  {
    v13 = [a3 _argInfo:-1];
    v14 = v13[17];
    if ((v14 & 0x80) != 0)
    {
      v14 = *(*v13 + 34);
    }

    if ((v14 & 0x2000) != 0)
    {
      *(a4 + 32) = [a3 _classForObjectAtArgumentIndex:-1];
    }
  }

  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v10 < v12)
  {
    v15 = 0;
    while (1)
    {
      v16 = [a3 _argInfo:v10];
      v17 = v16[17];
      if ((v17 & 0x80) != 0)
      {
        v17 = *(*v16 + 34);
      }

      if ((v17 & 0x2000) == 0)
      {
        goto LABEL_26;
      }

      if (v17 < 0)
      {
        break;
      }

      v18 = [a3 _classForObjectAtArgumentIndex:v10];
      if (!v18)
      {
        if ([a3 _protocolsForObjectAtArgumentIndex:v10])
        {
          goto LABEL_26;
        }

LABEL_30:
        v21 = qword_1ED4402F0;
        goto LABEL_27;
      }

      v19 = v18;
      if ([qword_1ED4402F8 containsObject:v18])
      {
        goto LABEL_30;
      }

      v20 = v28;
      v21 = v19;
LABEL_28:
      [v20 addObject:v21];
      if (v12 == ++v10)
      {
        goto LABEL_31;
      }
    }

    if (a5)
    {
      v25 = [NSString stringWithFormat:@"NSXPCInterface: Blocks as arguments to the reply block of method (%s / %s) are not allowed", a2, sel_getName(a1), v27];
      goto LABEL_44;
    }

    if (v15)
    {
      v25 = [NSString stringWithFormat:@"NSXPCInterface: Only one reply block is allowed per selector (%s / %s)", a2, sel_getName(a1), v27];
      goto LABEL_44;
    }

    v22 = [a3 _signatureForBlockAtArgumentIndex:v10];
    if (!v22)
    {
      v25 = [NSString stringWithFormat:@"NSXPCInterface: Unable to get block signature from Protocol data (%s / %s). Use of clang is required for NSXPCInterface.", a2, sel_getName(a1), v27];
      goto LABEL_44;
    }

    v23 = v22;
    *(a4 + 40) = v10;

    *a4 = v23;
    v15 = 1;
    setProtocolMetadataWithSignature(a1, a2, v23, a4, 1);
LABEL_26:
    v21 = [MEMORY[0x1E695DFD8] set];
LABEL_27:
    v20 = v28;
    goto LABEL_28;
  }

LABEL_31:
  if (a5)
  {
    v24 = 8;
  }

  else
  {
    v24 = 16;
  }

  *(a4 + v24) = [v28 copy];
}