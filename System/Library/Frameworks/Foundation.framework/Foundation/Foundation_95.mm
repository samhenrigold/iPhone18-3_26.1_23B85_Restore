void *specialized _copySequenceToContiguousArray<A>(_:)(double *a1)
{
  v53 = *a1;
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = *(a1 + 40);
  memcpy(__dst, a1 + 6, 0x11BuLL);
  v6 = *(a1 + 331);
  v8 = *(&v53 + 1);
  v7 = v53;
  memcpy(&v50[7], a1 + 6, 0x11BuLL);
  v51 = v5;
  memcpy(__src, a1 + 6, 0x11BuLL);
  ObjectType = swift_getObjectType();
  v39 = *(v8 + 200);
  outlined init with copy of Calendar(&v53, v40);
  outlined init with copy of DateComponents(__dst, v40);
  v10 = 0;
  v37 = v4;
  v11 = v4;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = (MEMORY[0x1E69E7CC0] + 32);
  v36 = v3;
  v14 = v3;
  v15 = 1;
  v38 = ObjectType;
  while (1)
  {
    memcpy(v47, __src, 0x11BuLL);
    DateComponents.scaled(by:)(v15, v40);
    memcpy(v48, v47, 0x11BuLL);
    outlined init with copy of DateComponents(__src, v46);
    outlined destroy of DateComponents(v48);
    memcpy(v49, v40, 0x11BuLL);
    memcpy(v40, v49, 0x11BuLL);
    v16 = one-time initialization token for validCalendarRange;
    swift_unknownObjectRetain();
    if (v16 != -1)
    {
      swift_once();
    }

    v17 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v2)
    {
      v17 = v2;
    }

    if (*&static Date.validCalendarRange >= v17)
    {
      v17 = *&static Date.validCalendarRange;
    }

    *v46 = v17;
    v39(v47, v40, v46, v6, ObjectType, v8);
    outlined destroy of DateComponents(v49);
    result = swift_unknownObjectRelease();
    if ((LOBYTE(v47[1]) & 1) != 0 || (v19 = v47[0], (v51 & 1) == 0) && (v47[0] < v11 || v47[0] >= v14))
    {
      *v40 = v7;
      *&v40[8] = v8;
      *&v40[16] = v2;
      *&v40[24] = v37;
      *&v40[32] = v36;
      v40[40] = v51;
      memcpy(&v40[41], v50, 0x122uLL);
      v41 = v6;
      v42 = 1;
      v43 = LOWORD(v47[0]);
      v44 = BYTE2(v47[0]);
      v45 = v15;
      result = outlined destroy of Calendar.DatesByAdding.Iterator(v40);
      v33 = v12[3];
      if (v33 >= 2)
      {
        v34 = v33 >> 1;
        v32 = __OFSUB__(v34, v10);
        v35 = v34 - v10;
        if (v32)
        {
          goto LABEL_35;
        }

        v12[2] = v35;
      }

      return v12;
    }

    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (!v10)
    {
      v20 = v12[3];
      if (((v20 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_34;
      }

      v21 = v8;
      v22 = v6;
      v23 = v20 & 0xFFFFFFFFFFFFFFFELL;
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR);
      v25 = swift_allocObject();
      v26 = _swift_stdlib_malloc_size(v25);
      v27 = v26 - 32;
      if (v26 < 32)
      {
        v27 = v26 - 25;
      }

      v28 = v27 >> 3;
      v25[2] = v24;
      v25[3] = 2 * (v27 >> 3);
      v29 = (v25 + 4);
      v30 = v12[3] >> 1;
      if (v12[2])
      {
        v31 = v12 + 4;
        if (v25 != v12 || v29 >= v31 + 8 * v30)
        {
          memmove(v25 + 4, v31, 8 * v30);
        }

        v12[2] = 0;
      }

      v13 = (v29 + 8 * v30);
      v10 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

      v12 = v25;
      v6 = v22;
      v8 = v21;
      ObjectType = v38;
    }

    v32 = __OFSUB__(v10--, 1);
    if (v32)
    {
      goto LABEL_33;
    }

    *v13++ = v19;
    ++v15;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

char *specialized _copySequenceToContiguousArray<A>(_:)(unint64_t a1, unint64_t a2, char a3, __darwin_ino64_t st_ino)
{
  LOBYTE(v6) = a3;
  v154 = *MEMORY[0x1E69E9840];
  type metadata accessor for _POSIXDirectoryContentsSequence.Iterator();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 64) = 0;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_5:
  v11 = 3 * v10;
  if ((v10 * 3) >> 64 == (3 * v10) >> 63)
  {
    if (v11 < -1)
    {
      __break(1u);
      goto LABEL_216;
    }

    v4 = v11 + 1;

    if (v11 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v30 = swift_slowAlloc();
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v30, v4, a1, a2, &v153.st_dev);
    MEMORY[0x1865D2690](v30, -1, -1);
    v148 = 0;
    v15 = *&v153.st_dev;
    if (*&v153.st_dev)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v14 = &v144 - v13;
  if (String._fileSystemRepresentation(into:)(&v144 - v13, v4, a1, a2))
  {
    v15 = opendir(v14);
  }

  else
  {
    v15 = 0;
  }

  v148 = 0;
  if (v15)
  {
LABEL_12:
    v16 = 0;
    *(v9 + 24) = a1;
    *(v9 + 32) = a2;
    *(v9 + 16) = v15;
    *(v9 + 56) = v6 & 1;
    v4 = st_ino + 40;
    v17 = *(st_ino + 16);
    a1 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v18 = (v4 + 16 * v16);
    while (v17 != v16)
    {
      if (v16 >= v17)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v10 = String.UTF8View._foreignCount()();
        goto LABEL_5;
      }

      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_34;
      }

      a2 = *(v18 - 1);
      st_ino = *v18;
      v20 = HIBYTE(*v18) & 0xF;
      if ((*v18 & 0x2000000000000000) == 0)
      {
        v20 = a2 & 0xFFFFFFFFFFFFLL;
      }

      ++v16;
      v18 += 2;
      if (v20)
      {

        String.index(before:)();
        if (String.subscript.getter() == 47 && v21 == 0xE100000000000000)
        {
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v23 & 1) == 0)
          {
            *&v153.st_dev = a2;
            v153.st_ino = st_ino;

            MEMORY[0x1865CB0E0](47, 0xE100000000000000);

            a2 = *&v153.st_dev;
            st_ino = v153.st_ino;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1, a1);
        }

        v25 = *(a1 + 16);
        v24 = *(a1 + 24);
        v6 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, a1);
        }

        *(a1 + 16) = v6;
        v26 = a1 + 16 * v25;
        *(v26 + 32) = a2;
        *(v26 + 40) = st_ino;
        v16 = v19;
        goto LABEL_13;
      }
    }

    *&v153.st_dev = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v27 = BidirectionalCollection<>.joined(separator:)();
    v29 = v28;

    *(v9 + 40) = v27;
    *(v9 + 48) = v29;
    goto LABEL_173;
  }

LABEL_39:
  *(v9 + 24) = 0;
  *(v9 + 32) = 0xE000000000000000;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0xE000000000000000;
  *(v9 + 56) = 0;
  v31 = MEMORY[0x1865CA7A0]();
  LODWORD(v32) = v31;
  v33 = 0x1E69EE000;
  if (v31 > 26)
  {
    if (v31 == 27)
    {
      v34 = 263;
      goto LABEL_52;
    }

    if (v31 != 63)
    {
      if (v31 == 102)
      {
        v35 = 0;
        v36 = 256;
        goto LABEL_164;
      }

LABEL_49:
      v34 = 256;
      goto LABEL_52;
    }

    v34 = 258;
  }

  else
  {
    if (v31 == 1)
    {
LABEL_43:
      v34 = 257;
      goto LABEL_52;
    }

    if (v31 != 2)
    {
      if (v31 == 13)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    }

    v34 = 260;
  }

LABEL_52:
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {
LABEL_224:
    *&v153.st_dev = 0;
    v153.st_ino = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    *&v153.st_dev = 0xD000000000000014;
    v153.st_ino = 0x80000001814813E0;
    LODWORD(v150) = v32;
    v140 = dispatch thunk of CustomStringConvertible.description.getter();
    v142 = v141;
    MEMORY[0x1865CB0E0](v140);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);

    result = swift_deallocPartialClassInstance();
    __break(1u);
    return result;
  }

  v32 = @"NSPOSIXErrorDomain";
  isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
  v38 = @"NSPOSIXErrorDomain";
  v39 = v38;
  v145 = v34;
  LODWORD(v147) = isTaggedPointer;
  if (!isTaggedPointer)
  {
    goto LABEL_58;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v38);
  switch(TaggedPointerTag)
  {
    case 0:
LABEL_69:
      v149[0] = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v47)
      {
        [(__CFString *)v39 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_86;
      }

      goto LABEL_70;
    case 0x16:
      v45 = [(__CFString *)v39 UTF8String];
      if (!v45)
      {
        __break(1u);
LABEL_221:
        __break(1u);
        goto LABEL_222;
      }

      String.init(utf8String:)(v45);
      if (v46)
      {
        goto LABEL_70;
      }

      __break(1u);
      goto LABEL_69;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v41 = v148;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v148 = v41;
      v33 = 0x1E69EE000;

      goto LABEL_86;
  }

LABEL_58:
  LOBYTE(v150) = 0;
  *&v153.st_dev = 0;
  LOBYTE(v149[0]) = 0;
  v152 = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v43 = v39;
    String.init(_nativeStorage:)();
    if (v44 || (*&v153.st_dev = [(__CFString *)v43 length]) == 0)
    {

      goto LABEL_86;
    }

LABEL_85:
    String.init(_cocoaString:)();
    goto LABEL_86;
  }

  if (!*&v153.st_dev)
  {
LABEL_70:

    goto LABEL_86;
  }

  if (v152 != 1)
  {
    if (v149[0])
    {
      if (v150 != 1)
      {
        IsCF = [(__CFString *)v39 lengthOfBytesUsingEncoding:4];
      }

      MEMORY[0x1EEE9AC00](IsCF);
      v48 = v148;
      v49 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v148 = v48;
      v51 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v51 = v49 & 0xFFFFFFFFFFFFLL;
      }

      if (v51)
      {

        v33 = 0x1E69EE000;
        goto LABEL_86;
      }

      v33 = 0x1E69EE000uLL;
    }

    goto LABEL_85;
  }

  if (v150)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_86:
  v52 = POSIXErrorCode.rawValue.getter();
  v53 = objc_allocWithZone(*(v33 + 960));
  v54 = String._bridgeToObjectiveCImpl()();

  v35 = [v53 initWithDomain:v54 code:v52 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v55 = [v35 domain];
  if (!v55)
  {
    goto LABEL_100;
  }

  v56 = v55;
  v57 = _objc_isTaggedPointer(v55);
  v58 = v56;
  v32 = v58;
  if ((v57 & 1) == 0)
  {
LABEL_92:
    LOBYTE(v150) = 0;
    *&v153.st_dev = 0;
    LOBYTE(v149[0]) = 0;
    v152 = 0;
    v63 = __CFStringIsCF();
    if (v63)
    {
      if (*&v153.st_dev)
      {
        if (v152 == 1)
        {
          if (v150)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v71 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_122;
        }

        if (v149[0])
        {
          if (v150 != 1)
          {
            v63 = [(__CFString *)v32 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](v63);
          v73 = v148;
          v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v62 = v75;
          v148 = v73;
          v76 = HIBYTE(v75) & 0xF;
          if ((v75 & 0x2000000000000000) == 0)
          {
            v76 = v74 & 0xFFFFFFFFFFFFLL;
          }

          if (v76)
          {
            v146 = v74;

            goto LABEL_124;
          }
        }

LABEL_121:
        v71 = String.init(_cocoaString:)();
LABEL_122:
        v146 = v71;
        v62 = v72;
        goto LABEL_123;
      }
    }

    else
    {
      v64 = v32;
      v65 = String.init(_nativeStorage:)();
      if (v66)
      {
        v62 = v66;
        v146 = v65;

        goto LABEL_124;
      }

      *&v153.st_dev = [(__CFString *)v64 length];
      if (*&v153.st_dev)
      {
        goto LABEL_121;
      }
    }

LABEL_100:
    v146 = 0;
    v62 = 0xE000000000000000;
    goto LABEL_124;
  }

  v59 = _objc_getTaggedPointerTag(v58);
  if (v59)
  {
    if (v59 != 22)
    {
      if (v59 == 2)
      {
        v144 = &v144;
        MEMORY[0x1EEE9AC00](v59);
        v60 = v148;
        v146 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v62 = v61;
        v148 = v60;

        goto LABEL_124;
      }

      goto LABEL_92;
    }

    v67 = [(__CFString *)v32 UTF8String];
    if (!v67)
    {
LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    v146 = String.init(utf8String:)(v67);
    if (!v68)
    {
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v62 = v68;
  }

  else
  {
    v149[0] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v69 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v70)
    {
      [(__CFString *)v32 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v146 = v150;
      v62 = v151;
      goto LABEL_123;
    }

    v62 = v70;
    v146 = v69;
  }

LABEL_123:
LABEL_124:
  v77 = v39;
  v32 = v77;
  if (!v147)
  {
    goto LABEL_129;
  }

  v78 = _objc_getTaggedPointerTag(v77);
  switch(v78)
  {
    case 0:
      goto LABEL_141;
    case 0x16:
      v87 = [(__CFString *)v32 UTF8String];
      if (v87)
      {
        v88 = String.init(utf8String:)(v87);
        if (v89)
        {
          goto LABEL_142;
        }

        __break(1u);
LABEL_141:
        v149[0] = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v88 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v89)
        {
          [(__CFString *)v32 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v80 = v150;
          v82 = v151;
          goto LABEL_159;
        }

LABEL_142:
        v80 = v88;
        v82 = v89;

        goto LABEL_159;
      }

      goto LABEL_221;
    case 2:
      v147 = &v144;
      MEMORY[0x1EEE9AC00](v78);
      v79 = v148;
      v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v82 = v81;
      v148 = v79;

      goto LABEL_159;
  }

LABEL_129:
  LOBYTE(v150) = 0;
  *&v153.st_dev = 0;
  LOBYTE(v149[0]) = 0;
  v152 = 0;
  v83 = __CFStringIsCF();
  if (!v83)
  {
    v84 = v32;
    v85 = String.init(_nativeStorage:)();
    if (v86)
    {
      v80 = v85;
      v82 = v86;

      goto LABEL_159;
    }

    *&v153.st_dev = [(__CFString *)v84 length];
    if (*&v153.st_dev)
    {
      goto LABEL_157;
    }

LABEL_137:
    v80 = 0;
    v82 = 0xE000000000000000;
    goto LABEL_159;
  }

  if (!*&v153.st_dev)
  {

    goto LABEL_137;
  }

  if (v152 == 1)
  {
    if (v150)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v90 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_158;
  }

  if (v149[0])
  {
    if (v150 != 1)
    {
      v83 = [(__CFString *)v32 lengthOfBytesUsingEncoding:4];
    }

    MEMORY[0x1EEE9AC00](v83);
    v92 = v148;
    v93 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v82 = v94;
    v148 = v92;
    v95 = HIBYTE(v94) & 0xF;
    if ((v94 & 0x2000000000000000) == 0)
    {
      v95 = v93 & 0xFFFFFFFFFFFFLL;
    }

    if (v95)
    {
      v80 = v93;

      goto LABEL_159;
    }
  }

LABEL_157:
  v90 = String.init(_cocoaString:)();
LABEL_158:
  v80 = v90;
  v82 = v91;
LABEL_159:
  if (v146 == v80 && v62 == v82)
  {
  }

  else
  {
    v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v96 & 1) == 0)
    {
      goto LABEL_217;
    }
  }

  v36 = v145;
LABEL_164:

  URL.init(_fileManagerFailableFileURLWithPath:)(a1, a2, &v153.st_dev);

  v97 = *&v153.st_dev;
  v98 = v153.st_ino;
  v99 = String._bridgeToObjectiveCImpl()();

  if (v97)
  {
    ObjectType = swift_getObjectType();
    v101 = (*(v98 + 432))(ObjectType, v98);
    swift_unknownObjectRelease();
    if (v35)
    {
LABEL_166:
      v150 = v35;
      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
      v35 = v35;
      v102 = _getErrorEmbeddedNSError<A>(_:)();

      if (v102)
      {
      }

      else
      {
        swift_allocError();
        *v104 = v35;
      }

      v103 = _swift_stdlib_bridgeErrorToNSError();
      goto LABEL_172;
    }
  }

  else
  {
    v101 = 0;
    if (v35)
    {
      goto LABEL_166;
    }
  }

  v103 = 0;
LABEL_172:
  v105 = objc_opt_self();
  v106 = [v105 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v107 = *(v9 + 64);
  *(v9 + 64) = v106;

LABEL_173:
  v108 = *(v9 + 16);
  v109 = MEMORY[0x1E69E7CC0];
  v110 = 0;
  if (!v108)
  {
    goto LABEL_211;
  }

  v111 = MEMORY[0x1E69E7CC0] + 32;
  while (1)
  {
    v112 = readdir(v108);
    if (!v112)
    {
      break;
    }

    if (v112->d_namlen && v112->d_ino)
    {
      v113 = v112;
      v115 = String.init(cString:)();
      v116 = v114;
      if (v115 == 46 && v114 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v115 == 11822 && v116 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v115 == 24366 && v116 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {
        if (*(v9 + 56) == 1)
        {
          if (v113->d_type)
          {
            if (v113->d_type == 4)
            {
              goto LABEL_192;
            }
          }

          else
          {
            memset(&v153, 0, sizeof(v153));
            v118 = *(v9 + 32);
            v150 = *(v9 + 24);
            v151 = v118;

            MEMORY[0x1865CB0E0](47, 0xE100000000000000);
            v147 = v151;

            MEMORY[0x1865CB0E0](v115, v116);

            v146 = v151;
            v119 = String.utf8CString.getter();
            v147 = v119;

            LODWORD(v119) = stat((v119 + 32), &v153);

            if (!v119)
            {
              st_mode = v153.st_mode;
              v121 = S_IFMT.getter() & st_mode;
              if (v121 == S_IFDIR.getter())
              {
LABEL_192:
                v117 = *(v9 + 48);
                *&v153.st_dev = *(v9 + 40);
                v153.st_ino = v117;

                MEMORY[0x1865CB0E0](v115, v116);
                v147 = v153.st_ino;

                MEMORY[0x1865CB0E0](47, 0xE100000000000000);

                goto LABEL_196;
              }
            }
          }
        }

        v122 = *(v9 + 48);
        *&v153.st_dev = *(v9 + 40);
        v153.st_ino = v122;

        MEMORY[0x1865CB0E0](v115, v116);
LABEL_196:
        v123 = *&v153.st_dev;
        v124 = v153.st_ino;
        d_type = v113->d_type;
        if (!v110)
        {
          LODWORD(v145) = v113->d_type;
          v146 = v153.st_ino;
          v147 = *&v153.st_dev;
          v126 = *(v109 + 3);
          if (((v126 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_219;
          }

          v127 = v126 & 0xFFFFFFFFFFFFFFFELL;
          if (v127 <= 1)
          {
            v128 = 1;
          }

          else
          {
            v128 = v127;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation31_POSIXDirectoryContentsSequenceV8IteratorC7ElementVGMd, &_ss23_ContiguousArrayStorageCy10Foundation31_POSIXDirectoryContentsSequenceV8IteratorC7ElementVGMR);
          v129 = swift_allocObject();
          v130 = (_swift_stdlib_malloc_size(v129) - 32) / 40;
          *(v129 + 2) = v128;
          *(v129 + 3) = 2 * v130;
          v131 = v129 + 32;
          v132 = *(v109 + 3) >> 1;
          v133 = 40 * v132;
          if (*(v109 + 2))
          {
            v134 = v109 + 32;
            if (v129 != v109 || v131 >= &v134[v133])
            {
              v144 = 40 * v132;
              memmove(v129 + 32, v134, 40 * v132);
              v133 = v144;
            }

            *(v109 + 2) = 0;
          }

          v111 = &v131[v133];
          v110 = (v130 & 0x7FFFFFFFFFFFFFFFLL) - v132;

          v109 = v129;
          v123 = v147;
          v124 = v146;
          d_type = v145;
        }

        v135 = __OFSUB__(v110--, 1);
        if (v135)
        {
          goto LABEL_218;
        }

        *v111 = v115;
        *(v111 + 8) = v116;
        *(v111 + 16) = v123;
        *(v111 + 24) = v124;
        *(v111 + 32) = d_type;
        v111 += 40;
        v108 = *(v9 + 16);
        if (!v108)
        {
          goto LABEL_211;
        }
      }
    }
  }

  closedir(v108);
  *(v9 + 16) = 0;
LABEL_211:

  v136 = *(v109 + 3);
  if (v136 >= 2)
  {
    v137 = v136 >> 1;
    v135 = __OFSUB__(v137, v110);
    v138 = v137 - v110;
    if (!v135)
    {
      *(v109 + 2) = v138;
      return v109;
    }

LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
  }

  return v109;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x1E69E9840];
  started = sysdir_start_search_path_enumeration_private();
  v3 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  v4 = (MEMORY[0x1E69E7CC0] + 32);
  while ((swift_stdlib_isStackAllocationSafe() & 1) != 0)
  {
    v5 = MEMORY[0x1865D2880](started, v54);
    if (!v5)
    {
      goto LABEL_73;
    }

    started = v5;
    v6 = [objc_opt_self() defaultManager];
    v7 = [v6 stringWithFileSystemRepresentation:v54 length:strlen(v54)];

    if (v7)
    {
      isTaggedPointer = _objc_isTaggedPointer(v7);
      v9 = v7;
      v10 = v9;
      if (!isTaggedPointer)
      {
        goto LABEL_18;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v9);
      switch(TaggedPointerTag)
      {
        case 0:
          _CFIndirectTaggedPointerStringGetContents();
          v29 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v30)
          {
            [v10 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v7 = v52;
            v13 = v53;
            goto LABEL_53;
          }

LABEL_42:
          v7 = v29;
          v13 = v30;

          goto LABEL_53;
        case 0x16:
          v28 = [v10 UTF8String];
          if (!v28)
          {
            goto LABEL_81;
          }

          v29 = String.init(utf8String:)(v28);
          if (!v30)
          {
            goto LABEL_80;
          }

          goto LABEL_42;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v13 = v12;

          if (v3)
          {
            goto LABEL_70;
          }

          break;
        default:
LABEL_18:
          LOBYTE(v52) = 0;
          v55 = 0;
          if (__CFStringIsCF())
          {
            v7 = v55;
            if (v55)
            {
              goto LABEL_52;
            }

            v13 = 0xE000000000000000;
            if (v3)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v22 = v10;
            v23 = String.init(_nativeStorage:)();
            if (v24)
            {
              v7 = v23;
              v13 = v24;

              if (v3)
              {
                goto LABEL_70;
              }
            }

            else
            {
              v55 = [v22 length];
              if (v55)
              {
LABEL_52:
                v7 = String.init(_cocoaString:)();
                v13 = v34;
LABEL_53:

                if (v3)
                {
                  goto LABEL_70;
                }

                break;
              }

              v7 = 0;
              v13 = 0xE000000000000000;
              if (v3)
              {
                goto LABEL_70;
              }
            }
          }

          break;
      }
    }

    else
    {
      v13 = 0xE000000000000000;
      if (v3)
      {
        goto LABEL_70;
      }
    }

LABEL_58:
    v36 = v51[3];
    if (((v36 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_78;
    }

    v37 = v36 & 0xFFFFFFFFFFFFFFFELL;
    if (v37 <= 1)
    {
      v38 = 1;
    }

    else
    {
      v38 = v37;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v39 = swift_allocObject();
    v40 = _swift_stdlib_malloc_size(v39);
    v41 = v40 - 32;
    if (v40 < 32)
    {
      v41 = v40 - 17;
    }

    v42 = v41 >> 4;
    v39[2] = v38;
    v39[3] = 2 * (v41 >> 4);
    v43 = (v39 + 4);
    v44 = v51[3] >> 1;
    if (v51[2])
    {
      v45 = v51 + 4;
      if (v39 != v51 || v43 >= v45 + 16 * v44)
      {
        memmove(v39 + 4, v45, 16 * v44);
      }

      v51[2] = 0;
    }

    v4 = (v43 + 16 * v44);
    v3 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - v44;

    v51 = v39;
LABEL_70:
    v46 = __OFSUB__(v3--, 1);
    if (v46)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
    }

    *v4 = v7;
    v4[1] = v13;
    v4 += 2;
  }

  v14 = swift_slowAlloc();
  v15 = MEMORY[0x1865D2880](started, v14);
  if (v15)
  {
    started = v15;
    v16 = [objc_opt_self() defaultManager];
    v7 = [v16 stringWithFileSystemRepresentation:v14 length:strlen(v14)];

    if (v7)
    {
      v17 = _objc_isTaggedPointer(v7);
      v18 = v7;
      v19 = v18;
      if (!v17)
      {
        goto LABEL_21;
      }

      v20 = _objc_getTaggedPointerTag(v18);
      if (v20)
      {
        if (v20 != 22)
        {
          if (v20 == 2)
          {
            MEMORY[0x1EEE9AC00](v20);
            v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v13 = v21;

            goto LABEL_57;
          }

LABEL_21:
          LOBYTE(v52) = 0;
          v55 = 0;
          if (__CFStringIsCF())
          {
            v7 = v55;
            if (v55)
            {
LABEL_55:
              v7 = String.init(_cocoaString:)();
              v13 = v35;
LABEL_56:
            }

            else
            {

              v13 = 0xE000000000000000;
            }
          }

          else
          {
            v25 = v19;
            v26 = String.init(_nativeStorage:)();
            if (v27)
            {
              v7 = v26;
              v13 = v27;
            }

            else
            {
              v55 = [v25 length];
              if (v55)
              {
                goto LABEL_55;
              }

              v7 = 0;
              v13 = 0xE000000000000000;
            }
          }

LABEL_57:
          MEMORY[0x1865D2690](v14, -1, -1);
          if (v3)
          {
            goto LABEL_70;
          }

          goto LABEL_58;
        }

        v31 = [v19 UTF8String];
        if (!v31)
        {
          goto LABEL_83;
        }

        v32 = String.init(utf8String:)(v31);
        if (!v33)
        {
          goto LABEL_82;
        }
      }

      else
      {
        _CFIndirectTaggedPointerStringGetContents();
        v32 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v33)
        {
          [v19 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v7 = v52;
          v13 = v53;
          goto LABEL_56;
        }
      }

      v7 = v32;
      v13 = v33;

      goto LABEL_56;
    }

    v13 = 0xE000000000000000;
    goto LABEL_57;
  }

  MEMORY[0x1865D2690](v14, -1, -1);
LABEL_73:
  result = v51;
  v48 = v51[3];
  if (v48 >= 2)
  {
    v49 = v48 >> 1;
    v46 = __OFSUB__(v49, v3);
    v50 = v49 - v3;
    if (v46)
    {
      goto LABEL_79;
    }

    v51[2] = v50;
  }

  return result;
}

void *specialized _copySequenceToContiguousArray<A>(_:)(const char *a1, int a2)
{
  v42[13] = *MEMORY[0x1E69E9840];
  type metadata accessor for _FTSSequence.Iterator();
  inited = swift_initStackObject();
  *(inited + 56) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(inited + 64) = MEMORY[0x1E69E7CC0];
  *(inited + 72) = v5;
  *(inited + 80) = 0;
  *(inited + 48) = a1;
  memset(&v41, 0, sizeof(v41));
  if (lstat(a1, &v41) || (v42[0] = a1, v42[1] = 0, (v11 = fts_open(v42, a2, 0)) == 0))
  {
    v6 = MEMORY[0x1865CA7A0]();
    v7 = String.init(cString:)();
    v9 = 1;
    v10 = v6;
  }

  else
  {
    v10 = v11;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *(inited + 16) = v10;
  *(inited + 24) = v7;
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  v12 = _FTSSequence.Iterator.next()();
  v16 = MEMORY[0x1E69E7CC0];
  if (v15 != -1)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0] + 32;
    v40 = inited;
    while (1)
    {
      if (!v17)
      {
        v19 = v16[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v20 = v15;
        v21 = v14;
        v22 = v13;
        v23 = v12;
        v24 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12_FTSSequenceV7ElementOGMd, &_ss23_ContiguousArrayStorageCy10Foundation12_FTSSequenceV7ElementOGMR);
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 1;
        }

        v29 = v28 >> 5;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 5);
        v30 = (v26 + 4);
        v31 = v16[3] >> 1;
        v32 = 32 * v31;
        if (v16[2])
        {
          if (v26 != v16 || v30 >= &v16[v32 / 8 + 4])
          {
            memmove(v26 + 4, v16 + 4, v32);
          }

          v16[2] = 0;
        }

        v18 = v30 + v32;
        v17 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v16 = v26;
        v12 = v23;
        v13 = v22;
        v14 = v21;
        v15 = v20;
        inited = v40;
      }

      v34 = __OFSUB__(v17--, 1);
      if (v34)
      {
        break;
      }

      *v18 = v12;
      *(v18 + 8) = v13;
      *(v18 + 16) = v14;
      *(v18 + 24) = v15 & 1;
      v18 += 32;
      v12 = _FTSSequence.Iterator.next()();
      if (v15 == -1)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  v17 = 0;
LABEL_27:
  swift_setDeallocating();
  v35 = *(inited + 16);
  if (*(inited + 40))
  {
    outlined consume of _FTSSequence.Iterator.State(v35, *(inited + 24), *(inited + 32), *(inited + 40));
  }

  else
  {
    fts_close(v35);
  }

  v36 = v16[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v34 = __OFSUB__(v37, v17);
    v38 = v37 - v17;
    if (v34)
    {
      goto LABEL_36;
    }

    v16[2] = v38;
  }

  return v16;
}

Swift::Bool __swiftcall _FileManagerImpl.contentsEqual(atPath:andPath:)(Swift::String atPath, Swift::String andPath)
{
  v4 = v2;
  object = andPath._object;
  countAndFlagsBits = andPath._countAndFlagsBits;
  v7 = atPath._object;
  v8 = atPath._countAndFlagsBits;
  v143 = *MEMORY[0x1E69E9840];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_132;
  }

  v10 = Strong;
  v3 = v119;
  specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(v8, v7, closure #1 in NSFileManager._fileStat(_:), 0, v131);

  v139 = v131[6];
  v140 = v131[7];
  v141 = v131[8];
  v142 = v132;
  v135 = v131[2];
  v136 = v131[3];
  v137 = v131[4];
  v138 = v131[5];
  v133 = v131[0];
  v134 = v131[1];
  if (_sSo4statVSgWOg(&v133) == 1)
  {
    goto LABEL_106;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    goto LABEL_132;
  }

  v12 = v11;
  specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(countAndFlagsBits, object, closure #1 in NSFileManager._fileStat(_:), 0, v119);

  v127 = v119[6];
  v128 = v119[7];
  v129 = v119[8];
  v130 = v120;
  v123 = v119[2];
  v124 = v119[3];
  v125 = v119[4];
  v126 = v119[5];
  v121 = v119[0];
  v122 = v119[1];
  if (_sSo4statVSgWOg(&v121) == 1)
  {
    goto LABEL_106;
  }

  if (v133 == v121 && *(&v133 + 1) == *(&v121 + 1))
  {
LABEL_7:
    v13 = 1;
    return v13 & 1;
  }

  LODWORD(v3) = WORD2(v133);
  v14 = S_IFMT.getter() & v3;
  v15 = WORD2(v121);
  if (v14 != (S_IFMT.getter() & v15))
  {
LABEL_106:
    v13 = 0;
    return v13 & 1;
  }

  v16 = S_IFMT.getter() & v3;
  if (v16 == S_IFBLK.getter() || v16 == S_IFCHR.getter())
  {
    v13 = DWORD2(v134) == DWORD2(v122);
    return v13 & 1;
  }

  v17 = S_IFMT.getter() & v3;
  if (v17 == S_IFREG.getter())
  {
    if (v139 == v127)
    {
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        MEMORY[0x1EEE9AC00](v18);
        v104[2] = v4;
        v104[3] = countAndFlagsBits;
        i = object;
        v13 = specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(v8, v7, partial apply for closure #1 in _FileManagerImpl.contentsEqual(atPath:andPath:), v104);

        return v13 & 1;
      }

LABEL_132:
      LODWORD(v106) = 0;
      for (i = 55; ; i = 304)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        v118[0]._countAndFlagsBits = 0;
        v118[0]._object = 0xE000000000000000;
        _StringGuts.grow(_:)(34);

        v118[0]._countAndFlagsBits = 0xD000000000000014;
        v118[0]._object = 0x8000000181481620;
        LOWORD(v114) = v3;
        lazy protocol witness table accessor for type UInt16 and conformance UInt16();
        v103 = String.init<A>(_:radix:uppercase:)();
        MEMORY[0x1865CB0E0](v103);

        MEMORY[0x1865CB0E0](0x6C696620726F6620, 0xEA00000000002065);
        MEMORY[0x1865CB0E0](v8, v7);
        LODWORD(v106) = 0;
      }
    }

    goto LABEL_106;
  }

  v20 = S_IFMT.getter() & v3;
  if (v20 != S_IFLNK.getter())
  {
    v30 = S_IFMT.getter() & v3;
    if (v30 != S_IFDIR.getter())
    {
      goto LABEL_136;
    }

    v31 = swift_unknownObjectWeakLoadStrong();
    if (!v31)
    {
      goto LABEL_132;
    }

    v32 = v31;
    v33 = String._bridgeToObjectiveCImpl()();
    v118[0]._countAndFlagsBits = 0;
    v3 = [v32 contentsOfDirectoryAtPath:v33 error:v118];

    swift_unknownObjectRelease();
    v34 = v118[0]._countAndFlagsBits;
    if (v3)
    {
      v110 = object;
      v113 = type metadata accessor for __SwiftDeferredNSArray();
      if (swift_dynamicCastClass())
      {
        v35 = v34;
      }

      else
      {
        v36 = v34;
        v37 = v3;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v38 = swift_dynamicCastClass();
      if (v38)
      {
        v112 = v38;
      }

      else
      {
        swift_unknownObjectRelease();
        [v3 copy];
        v39 = _bridgeCocoaArray<A>(_:)();
        swift_unknownObjectRelease();
        v112 = specialized _arrayForceCast<A, B>(_:)(v39);
      }

      v40 = swift_unknownObjectWeakLoadStrong();
      if (!v40)
      {
        goto LABEL_132;
      }

      v41 = v40;
      v42 = String._bridgeToObjectiveCImpl()();
      v118[0]._countAndFlagsBits = 0;
      v43 = [v41 contentsOfDirectoryAtPath:v42 error:v118];

      swift_unknownObjectRelease();
      v44 = v118[0]._countAndFlagsBits;
      if (v43)
      {
        if (swift_dynamicCastClass())
        {
          v45 = v44;
        }

        else
        {
          v49 = v44;
          v50 = v43;
        }

        v51 = swift_dynamicCastClass();
        if (v51)
        {
          v52 = v51;
        }

        else
        {
          swift_unknownObjectRelease();
          [v43 copy];
          v53 = _bridgeCocoaArray<A>(_:)();
          swift_unknownObjectRelease();
          v52 = specialized _arrayForceCast<A, B>(_:)(v53);
        }

        v54 = MEMORY[0x1865CB700](*(v52 + 2), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
        v113 = *(v52 + 2);
        v114 = v54;
        if (!v113)
        {
          v59 = v54;
LABEL_59:

          v60 = v112;
          v61 = *(v112 + 2);
          if (v61 == *(v59 + 16))
          {
            v62 = 0;
            v109 = v112 + 32;
            v113 = v59 + 56;
            v107 = v61;
            while (1)
            {
              if (v62 == v61)
              {

                goto LABEL_7;
              }

              if (v62 >= *(v60 + 2))
              {
                goto LABEL_130;
              }

              v111 = v62;
              v66 = &v109[16 * v62];
              v67 = *(v66 + 1);
              if (!*(v59 + 16))
              {
                break;
              }

              v68 = *v66;
              Hasher.init(_seed:)();

              String.hash(into:)();
              v69 = Hasher._finalize()();
              v70 = -1 << *(v59 + 32);
              v71 = v69 & ~v70;
              if (((*(v113 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
              {
LABEL_73:

                goto LABEL_74;
              }

              ++v111;
              v72 = ~v70;
              while (1)
              {
                v73 = (*(v59 + 48) + 16 * v71);
                v74 = *v73 == v68 && v73[1] == v67;
                if (v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v71 = (v71 + 1) & v72;
                if (((*(v113 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
                {
                  goto LABEL_73;
                }
              }

              v118[0]._countAndFlagsBits = v8;
              v118[0]._object = v7;

              MEMORY[0x1865CB0E0](47, 0xE100000000000000);
              MEMORY[0x1865CB0E0](v68, v67);
              v63 = v118[0]._object;
              v108 = v118[0]._countAndFlagsBits;
              v118[0]._countAndFlagsBits = countAndFlagsBits;
              v118[0]._object = v110;

              MEMORY[0x1865CB0E0](47, 0xE100000000000000);
              MEMORY[0x1865CB0E0](v68, v67);

              v64._countAndFlagsBits = v108;
              v64._object = v63;
              v65 = _FileManagerImpl.contentsEqual(atPath:andPath:)(v64, v118[0]);

              v62 = v111;
              v60 = v112;
              v61 = v107;
              if (!v65)
              {
                goto LABEL_74;
              }
            }
          }

LABEL_74:

          goto LABEL_106;
        }

        v111 = countAndFlagsBits;
        v55 = 0;
        v56 = (v52 + 40);
        while (v55 < *(v52 + 2))
        {
          ++v55;
          v58 = *(v56 - 1);
          v57 = *v56;

          specialized Set._Variant.insert(_:)(&v118[0]._countAndFlagsBits, v58, v57);

          v56 += 2;
          if (v113 == v55)
          {
            v59 = v114;
            countAndFlagsBits = v111;
            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v46 = v118[0]._countAndFlagsBits;

      if (v46)
      {
        swift_willThrow();

        goto LABEL_106;
      }
    }

    else if (v118[0]._countAndFlagsBits)
    {
LABEL_105:
      swift_willThrow();
      goto LABEL_106;
    }

LABEL_104:
    if (one-time initialization token for _nilObjCError == -1)
    {
      goto LABEL_105;
    }

LABEL_131:
    swift_once();
    goto LABEL_105;
  }

  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
    goto LABEL_132;
  }

  v22 = v21;
  v23 = String._bridgeToObjectiveCImpl()();
  v118[0]._countAndFlagsBits = 0;
  v7 = [v22 destinationOfSymbolicLinkAtPath:v23 error:v118];

  swift_unknownObjectRelease();
  v24 = v118[0]._countAndFlagsBits;
  if (!v7)
  {
    if (v118[0]._countAndFlagsBits)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  LODWORD(v3) = _objc_isTaggedPointer(v7);
  v25 = v24;
  v26 = v7;
  v8 = v26;
  if (!v3)
  {
    goto LABEL_29;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v26);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        v3 = &selRef_decomposedStringWithCanonicalMapping;
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        i = v8;
        v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v29 = v28;

        goto LABEL_91;
      }

LABEL_29:
      LOBYTE(v114) = 0;
      v118[0]._countAndFlagsBits = 0;
      LOBYTE(v116) = 0;
      v117 = 0;
      if (__CFStringIsCF())
      {
        if (v118[0]._countAndFlagsBits)
        {
          if (v117 == 1)
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            v78 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_89:
            v7 = v78;
            v29 = v79;
            goto LABEL_90;
          }

LABEL_88:
          v78 = String.init(_cocoaString:)();
          goto LABEL_89;
        }
      }

      else
      {
        v3 = v8;
        v47 = String.init(_nativeStorage:)();
        if (v48)
        {
          v7 = v47;
          v29 = v48;

          goto LABEL_91;
        }

        v118[0]._countAndFlagsBits = [v3 length];
        if (v118[0]._countAndFlagsBits)
        {
          goto LABEL_88;
        }
      }

      v7 = 0;
      v29 = 0xE000000000000000;
      goto LABEL_91;
    }

    v75 = [v8 UTF8String];
    if (!v75)
    {
      goto LABEL_134;
    }

    v76 = String.init(utf8String:)(v75);
    if (v77)
    {
      goto LABEL_81;
    }

    __break(1u);
  }

  v116 = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v76 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (!v77)
  {
    [v8 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v7 = v114;
    v29 = v115;
    goto LABEL_90;
  }

LABEL_81:
  v7 = v76;
  v29 = v77;

LABEL_90:
LABEL_91:
  v80 = swift_unknownObjectWeakLoadStrong();
  if (!v80)
  {
    goto LABEL_132;
  }

  v81 = v80;
  v82 = String._bridgeToObjectiveCImpl()();
  v118[0]._countAndFlagsBits = 0;
  v83 = [v81 destinationOfSymbolicLinkAtPath:v82 error:v118];

  swift_unknownObjectRelease();
  v84 = v118[0]._countAndFlagsBits;
  if (!v83)
  {
    v93 = v118[0]._countAndFlagsBits;

    if (v93)
    {
      swift_willThrow();

      goto LABEL_106;
    }

    goto LABEL_104;
  }

  isTaggedPointer = _objc_isTaggedPointer(v83);
  v86 = v84;
  v87 = v83;
  v88 = v87;
  if (!isTaggedPointer)
  {
    goto LABEL_98;
  }

  v89 = _objc_getTaggedPointerTag(v87);
  if (v89)
  {
    if (v89 != 22)
    {
      if (v89 == 2)
      {
        MEMORY[0x1EEE9AC00](v89);
        i = v88;
        v90 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v92 = v91;

        goto LABEL_124;
      }

LABEL_98:
      LOBYTE(v114) = 0;
      v118[0]._countAndFlagsBits = 0;
      LOBYTE(v116) = 0;
      v117 = 0;
      if (__CFStringIsCF())
      {
        v90 = v118[0]._countAndFlagsBits;
        if (!v118[0]._countAndFlagsBits)
        {

          v92 = 0xE000000000000000;
          goto LABEL_124;
        }

        if (v117 == 1)
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          v101 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_122:
          v90 = v101;
          v92 = v102;
          goto LABEL_123;
        }
      }

      else
      {
        v95 = v88;
        v96 = String.init(_nativeStorage:)();
        if (v97)
        {
          v90 = v96;
          v92 = v97;

          goto LABEL_124;
        }

        v118[0]._countAndFlagsBits = [v95 length];
        if (!v118[0]._countAndFlagsBits)
        {

          v90 = 0;
          v92 = 0xE000000000000000;
          goto LABEL_124;
        }
      }

      v101 = String.init(_cocoaString:)();
      goto LABEL_122;
    }

    v98 = [v88 UTF8String];
    if (!v98)
    {
      goto LABEL_135;
    }

    v99 = String.init(utf8String:)(v98);
    if (v100)
    {
      goto LABEL_115;
    }

    __break(1u);
  }

  v116 = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v99 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (!v100)
  {
    [v88 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v90 = v114;
    v92 = v115;
    goto LABEL_123;
  }

LABEL_115:
  v90 = v99;
  v92 = v100;

LABEL_123:
LABEL_124:
  if (v7 == v90 && v29 == v92)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

unint64_t _openFD #1 (_:) in _FileManagerImpl.contentsEqual(atPath:andPath:)(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&v7, 0, sizeof(v7));
  v1 = open(_:_:_:)();
  if ((v1 & 0x80000000) == 0)
  {
    v2 = v1;
    if ((fstat(v1, &v7) & 0x80000000) == 0)
    {
      st_mode = v7.st_mode;
      v4 = S_IFMT.getter() & st_mode;
      if (v4 != S_IFDIR.getter())
      {
        v5 = 0;
        goto LABEL_6;
      }
    }

    close(v2);
  }

  v2 = 0;
  v5 = 1;
LABEL_6:
  LOBYTE(v7.st_dev) = v5;
  return v2 | (v5 << 32);
}

uint64_t closure #1 in _FileManagerImpl.contentsEqual(atPath:andPath:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (!result || (result = _openFD #1 (_:) in _FileManagerImpl.contentsEqual(atPath:andPath:)(result), (result & 0x100000000) != 0))
  {
    *a4 = 0;
  }

  else
  {
    v7 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      MEMORY[0x1EEE9AC00](Strong);
      v11[4] = v7;
      v10 = specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(a2, a3, partial apply for closure #1 in closure #1 in _FileManagerImpl.contentsEqual(atPath:andPath:), v11);

      *a4 = v10 & 1;
      return close(v7);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

void closure #1 in closure #1 in _FileManagerImpl.contentsEqual(atPath:andPath:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v21 = *MEMORY[0x1E69E9840];
  if (!v1 || (v5 = v2, v6 = _openFD #1 (_:) in _FileManagerImpl.contentsEqual(atPath:andPath:)(v1), (v6 & 0x100000000) != 0))
  {
    *v4 = 0;
  }

  else
  {
    v7 = v6;
    MEMORY[0x1865CA7C0](v5, 48, 1);
    MEMORY[0x1865CA7C0](v7, 48, 1);
    if (swift_stdlib_isStackAllocationSafe())
    {
      bzero(v19, 0x2000uLL);
      if (swift_stdlib_isStackAllocationSafe())
      {
        bzero(v18, 0x2000uLL);
        while (1)
        {
          v8 = read(v5, v19, 0x2000uLL);
          if (v8 < 1)
          {
            break;
          }

          if (read(v7, v18, 0x2000uLL) != v8 || (specialized Sequence<>.elementsEqual<A>(_:)(v18, 0x2000, v19, 0x2000) & 1) == 0)
          {
            *v4 = 0;
            goto LABEL_35;
          }
        }

        *v4 = v8 > -2;
      }

      else
      {
        v12 = swift_slowAlloc();
        bzero(v12, 0x2000uLL);
        while (1)
        {
          v13 = read(v5, v19, 0x2000uLL);
          if (v13 <= 0)
          {
            break;
          }

          if (read(v7, v12, 0x2000uLL) != v13 || (specialized Sequence<>.elementsEqual<A>(_:)(v12, 0x2000, v19, 0x2000) & 1) == 0)
          {
            v14 = 0;
            goto LABEL_31;
          }
        }

        v14 = v13 > -2;
LABEL_31:
        MEMORY[0x1865D2690](v12, -1, -1);
        *v4 = v14;
      }
    }

    else
    {
      v9 = swift_slowAlloc();
      bzero(v9, 0x2000uLL);
      if (swift_stdlib_isStackAllocationSafe())
      {
        bzero(v20, 0x2000uLL);
        while (1)
        {
          v10 = read(v5, v9, 0x2000uLL);
          if (v10 < 1)
          {
            break;
          }

          if (read(v7, v20, 0x2000uLL) != v10 || (specialized Sequence<>.elementsEqual<A>(_:)(v20, 0x2000, v9, 0x2000) & 1) == 0)
          {
            v11 = 0;
            goto LABEL_29;
          }
        }

        v11 = v10 > -2;
LABEL_29:
        *v4 = v11;
      }

      else
      {
        v15 = swift_slowAlloc();
        bzero(v15, 0x2000uLL);
        while (1)
        {
          v16 = read(v5, v9, 0x2000uLL);
          if (v16 <= 0)
          {
            break;
          }

          if (read(v7, v15, 0x2000uLL) != v16 || (specialized Sequence<>.elementsEqual<A>(_:)(v15, 0x2000, v9, 0x2000) & 1) == 0)
          {
            v17 = 0;
            goto LABEL_33;
          }
        }

        v17 = v16 > -2;
LABEL_33:
        *v4 = v17;
        MEMORY[0x1865D2690](v15, -1, -1);
      }

      MEMORY[0x1865D2690](v9, -1, -1);
    }

LABEL_35:
    close(v7);
  }
}

uint64_t specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v31 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  if (ObjectType == type metadata accessor for NSFileManager())
  {
    return specialized String.withFileSystemRepresentation<A>(_:)(a3, a4, a1, a2, a5);
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    v14 = [v7 getFileSystemRepresentation:v30 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = v30;
    }

    else
    {
      v15 = 0;
    }

    result = a3(v15);
    if (v6)
    {
      return swift_willThrow();
    }

    else
    {
      *(a5 + 96) = v26;
      *(a5 + 112) = v27;
      *(a5 + 128) = v28;
      *(a5 + 144) = v29;
      *(a5 + 32) = v22;
      *(a5 + 48) = v23;
      *(a5 + 64) = v24;
      *(a5 + 80) = v25;
      *a5 = v20;
      *(a5 + 16) = v21;
    }
  }

  else
  {
    v17 = swift_slowAlloc();
    v18 = [v7 getFileSystemRepresentation:v17 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    a3(v19);
    return MEMORY[0x1865D2690](v17, -1, -1);
  }

  return result;
}

double closure #1 in NSFileManager._fileStat(_:)@<D0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&v8, 0, sizeof(v8));
  if (a1 && !lstat(a1, &v8))
  {
    v9 = v8;
    _sSo4statVSgWOi_(&v9);
  }

  else
  {
    _sSo4statVSgWOi0_(&v9);
  }

  v3 = *&v9.st_blksize;
  *(a2 + 96) = *&v9.st_size;
  *(a2 + 112) = v3;
  *(a2 + 128) = *v9.st_qspare;
  *(a2 + 144) = v10;
  st_mtimespec = v9.st_mtimespec;
  *(a2 + 32) = v9.st_atimespec;
  *(a2 + 48) = st_mtimespec;
  st_birthtimespec = v9.st_birthtimespec;
  *(a2 + 64) = v9.st_ctimespec;
  *(a2 + 80) = st_birthtimespec;
  result = *&v9.st_dev;
  v7 = *&v9.st_uid;
  *a2 = *&v9.st_dev;
  *(a2 + 16) = v7;
  return result;
}

uint64_t _sSo4statVSgWOg(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type UInt16 and conformance UInt16()
{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

double _sSo4statVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = 1;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _NSFileManagerBridge.linkItem(atPath:toPath:)(Swift::String atPath, Swift::String toPath)
{
  object = toPath._object;
  countAndFlagsBits = toPath._countAndFlagsBits;
  v4 = atPath._object;
  v5 = atPath._countAndFlagsBits;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v10 = 0;
    v11 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v9[2] = v5;
    v9[3] = v4;
    v9[4] = countAndFlagsBits;
    v9[5] = object;
    v9[6] = v8;
    v9[7] = &v10;
    specialized String.withFileSystemRepresentation<A>(_:)(partial apply for specialized closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:), v9, v5, v4);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t _NSFileManagerBridge.copyItem(at:to:options:)(uint64_t *a1, uint64_t *a2, int a3)
{
  v4 = a1[1];
  v5 = a2[1];
  ObjectType = swift_getObjectType();
  if ((*(v4 + 144))(ObjectType, v4))
  {
    v7 = swift_getObjectType();
    if ((*(v5 + 144))(v7, v5))
    {
      v31 = a3;
      v30 = *(v4 + 240);
      v8 = v30(ObjectType, v4);
      v10 = v9;
      v11 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v11 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        v12 = v8;
        v13 = *(v5 + 240);
        v14 = v13(v7, v5);
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          _FileManagerImpl.copyItem(atPath:toPath:options:)(v12, v10, v14, v15, v31);
        }

        swift_unknownObjectRetain();
        v13(v7, v5);
        v28 = objc_opt_self();
        v29 = String._bridgeToObjectiveCImpl()();

        v21 = (*(v5 + 432))(v7, v5);
        swift_unknownObjectRelease();
        v22 = [v28 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      }

      else
      {

        swift_unknownObjectRetain();
        v30(ObjectType, v4);
        v26 = objc_opt_self();
        v27 = String._bridgeToObjectiveCImpl()();

        v21 = (*(v4 + 432))(ObjectType, v4);
        swift_unknownObjectRelease();
        v22 = [v26 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      }
    }

    else
    {
      v23 = *(v5 + 240);
      swift_unknownObjectRetain();
      v23(v7, v5);
      v24 = objc_opt_self();
      v25 = String._bridgeToObjectiveCImpl()();

      v21 = (*(v5 + 432))(v7, v5);
      swift_unknownObjectRelease();
      v22 = [v24 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    }
  }

  else
  {
    v18 = *(v4 + 240);
    swift_unknownObjectRetain();
    v18(ObjectType, v4);
    v19 = objc_opt_self();
    v20 = String._bridgeToObjectiveCImpl()();

    v21 = (*(v4 + 432))(ObjectType, v4);
    swift_unknownObjectRelease();
    v22 = [v19 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  }

  v22;
  swift_unknownObjectRelease();

  return swift_willThrow();
}

uint64_t @objc _NSFileManagerBridge.createSymbolicLink(at:withDestinationURL:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(__int128 *, __int128 *))
{
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a3, &v14);
  static URL._unconditionallyBridgeFromObjectiveC(_:)(a4, &v13);
  v11 = v13;
  v12 = v14;
  v9 = a1;
  a6(&v12, &v11);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return 1;
}

id _FileManagerImpl.getRelationship(_:ofDirectoryAt:toItemAt:)(uint64_t *a1, uint64_t a2, id *a3)
{
  v270 = *MEMORY[0x1E69E9840];
  v246 = *(a2 + 8);
  v244 = a3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  v3 = swift_allocObject();
  v4 = *MEMORY[0x1E695DB00];
  v3[4] = *MEMORY[0x1E695DB00];
  v248 = v3 + 4;
  v5 = *MEMORY[0x1E695DD70];
  v6 = *MEMORY[0x1E695DB78];
  v3[5] = *MEMORY[0x1E695DD70];
  v3[6] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
  v7 = static _SetStorage.allocate(capacity:)();
  v262 = v7 + 56;
  v241 = v4;
  v239 = v5;
  v8 = v6;
  v9 = 0;
  v254 = v7;
  do
  {
    v10 = v248[v9];
    isTaggedPointer = _objc_isTaggedPointer(v10);
    v12 = v10;
    v13 = v12;
    v259 = isTaggedPointer;
    v252 = v9;
    if (!isTaggedPointer)
    {
      goto LABEL_9;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v12);
    switch(TaggedPointerTag)
    {
      case 0:
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v19)
        {
          [v13 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_22;
        }

        goto LABEL_20;
      case 0x16:
        v17 = [v13 UTF8String];
        if (!v17)
        {
          goto LABEL_278;
        }

        String.init(utf8String:)(v17);
        if (!v18)
        {
          goto LABEL_277;
        }

LABEL_20:

        goto LABEL_22;
      case 2:
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_22;
    }

LABEL_9:
    LOBYTE(v266) = 0;
    v268 = 0;
    if (__CFStringIsCF())
    {
      goto LABEL_20;
    }

    v15 = v13;
    String.init(_nativeStorage:)();
    if (!v16 && (v268 = [v15 length]) != 0)
    {
      String.init(_cocoaString:)();
    }

    else
    {
    }

LABEL_22:
    Hasher.init(_seed:)();
    String.hash(into:)();
    v20 = Hasher._finalize()();

    v21 = -1 << *(v7 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = *(v262 + 8 * (v22 >> 6));
    v25 = 1 << v22;
    if (((1 << v22) & v24) != 0)
    {
      v255 = ~v21;
      while (1)
      {
        v26 = *(*(v7 + 48) + 8 * v22);
        v27 = _objc_isTaggedPointer(v26);
        v28 = v26;
        v29 = v28;
        if (!v27)
        {
          goto LABEL_29;
        }

        v30 = _objc_getTaggedPointerTag(v28);
        if (v30)
        {
          break;
        }

        _CFIndirectTaggedPointerStringGetContents();
        v38 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v39)
        {
          goto LABEL_38;
        }

        [v29 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v31 = v266;
        v33 = v267;
LABEL_43:
        v41 = v13;
        v42 = v41;
        if (v259)
        {
          v43 = _objc_getTaggedPointerTag(v41);
          switch(v43)
          {
            case 0:
              _CFIndirectTaggedPointerStringGetContents();
              v51 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v52)
              {
                [v42 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v46 = v267;
                if (v31 != v266)
                {
                  goto LABEL_68;
                }

                goto LABEL_67;
              }

              goto LABEL_57;
            case 0x16:
              v50 = [v42 UTF8String];
              if (!v50)
              {
                goto LABEL_269;
              }

              v51 = String.init(utf8String:)(v50);
              if (!v52)
              {
                goto LABEL_271;
              }

LABEL_57:
              v53 = v51;
              v46 = v52;

              if (v31 != v53)
              {
                goto LABEL_68;
              }

              goto LABEL_67;
            case 2:
              MEMORY[0x1EEE9AC00](v43);
              v44 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v46 = v45;

LABEL_64:
              v7 = v254;
              if (v31 != v44)
              {
                goto LABEL_68;
              }

              goto LABEL_67;
          }
        }

        LOBYTE(v266) = 0;
        v268 = 0;
        if (!__CFStringIsCF())
        {
          v47 = v42;
          v48 = String.init(_nativeStorage:)();
          if (v49)
          {
            v44 = v48;
            v46 = v49;
          }

          else
          {
            v268 = [v47 length];
            if (v268)
            {
              v7 = v254;
              v54 = String.init(_cocoaString:)();
              v46 = v55;
              if (v31 != v54)
              {
                goto LABEL_68;
              }

              goto LABEL_67;
            }

            v44 = 0;
            v46 = 0xE000000000000000;
          }

          goto LABEL_64;
        }

        v46 = 0xE000000000000000;
        if (v31)
        {
          goto LABEL_68;
        }

LABEL_67:
        if (v33 == v46)
        {

          goto LABEL_3;
        }

LABEL_68:
        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v56)
        {

          goto LABEL_3;
        }

        v22 = (v22 + 1) & v255;
        v23 = v22 >> 6;
        v24 = *(v262 + 8 * (v22 >> 6));
        v25 = 1 << v22;
        if (((1 << v22) & v24) == 0)
        {
          goto LABEL_70;
        }
      }

      if (v30 == 22)
      {
        v37 = [v29 UTF8String];
        if (!v37)
        {
          goto LABEL_270;
        }

        v38 = String.init(utf8String:)(v37);
        if (!v39)
        {
          goto LABEL_272;
        }

LABEL_38:
        v31 = v38;
        v33 = v39;

        goto LABEL_43;
      }

      if (v30 == 2)
      {
        MEMORY[0x1EEE9AC00](v30);
        v31 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v33 = v32;

        goto LABEL_43;
      }

LABEL_29:
      LOBYTE(v266) = 0;
      v268 = 0;
      if (__CFStringIsCF())
      {

LABEL_33:
        v31 = 0;
        v33 = 0xE000000000000000;
        goto LABEL_43;
      }

      v34 = v29;
      v35 = String.init(_nativeStorage:)();
      if (v36)
      {
        v31 = v35;
        v33 = v36;

        goto LABEL_43;
      }

      v268 = [v34 length];
      if (!v268)
      {

        goto LABEL_33;
      }

      v31 = String.init(_cocoaString:)();
      v33 = v40;
      goto LABEL_43;
    }

LABEL_70:
    *(v262 + 8 * v23) = v25 | v24;
    *(*(v7 + 48) + 8 * v22) = v13;
    v57 = *(v7 + 16);
    v58 = __OFADD__(v57, 1);
    v59 = (v57 + 1);
    if (v58)
    {
      __break(1u);
LABEL_247:
      v230 = v59;

      swift_unknownObjectRelease();
      if (v230)
      {
        goto LABEL_250;
      }

      if (one-time initialization token for _nilObjCError != -1)
      {
        goto LABEL_279;
      }

      goto LABEL_249;
    }

    *(v7 + 16) = v59;
LABEL_3:
    v9 = v252 + 1;
  }

  while (v252 != 2);
  swift_setDeallocating();
  type metadata accessor for NSURLResourceKey(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  ObjectType = swift_getObjectType();
  v61 = (*(v246 + 432))(ObjectType);

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo16NSURLResourceKeya_ShyAEGTt0g5(v62);
  v63 = _ContiguousArrayBuffer._asCocoaArray()();
  v268 = 0;
  v64 = [v61 resourceValuesForKeys:v63 error:&v268];

  swift_unknownObjectRelease();
  v65 = v268;
  if (!v64)
  {
    v123 = v268;

    if (v123)
    {
      return swift_willThrow();
    }

LABEL_158:
    if (one-time initialization token for _nilObjCError == -1)
    {
LABEL_159:
      v124 = _nilObjCError;
      return swift_willThrow();
    }

LABEL_265:
    swift_once();
    goto LABEL_159;
  }

  v268 = 0;
  v66 = v65;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(v64, &v268);
  v68 = v268;
  if (!v268)
  {
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
    goto LABEL_288;
  }

  v268 = v68;
  v269 = v7;
  v69 = URLResourceValues.isDirectory.getter();
  if (v69 == 2 || (v69 & 1) == 0)
  {

    *a1 = 2;
    return result;
  }

  v245 = v68;
  v70 = swift_allocObject();
  v71 = *MEMORY[0x1E695DAD0];
  v70[4] = *MEMORY[0x1E695DAD0];
  v247 = v70 + 4;
  v70[5] = v241;
  v70[6] = v239;
  v72 = static _SetStorage.allocate(capacity:)();
  v263 = v72 + 56;
  v242 = v241;
  v240 = v239;
  v73 = v71;
  v74 = 0;
  v253 = v72;
  while (2)
  {
    v75 = v247[v74];
    v76 = _objc_isTaggedPointer(v75);
    v77 = v75;
    v78 = v77;
    v260 = v76;
    v249 = v74;
    if (!v76)
    {
      goto LABEL_86;
    }

    v79 = _objc_getTaggedPointerTag(v77);
    if (v79)
    {
      if (v79 == 22)
      {
        result = [v78 UTF8String];
        if (!result)
        {
          goto LABEL_282;
        }

        result = String.init(utf8String:)(result);
        if (!v82)
        {
          goto LABEL_281;
        }

        goto LABEL_96;
      }

      if (v79 == 2)
      {
        MEMORY[0x1EEE9AC00](v79);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_102;
      }

LABEL_86:
      LOBYTE(v266) = 0;
      v268 = 0;
      if (__CFStringIsCF())
      {
        if (v268)
        {
          goto LABEL_101;
        }

LABEL_96:
      }

      else
      {
        v80 = v78;
        String.init(_nativeStorage:)();
        if (v81 || (v268 = [v80 length]) == 0)
        {
        }

        else
        {
LABEL_101:
          String.init(_cocoaString:)();
        }
      }
    }

    else
    {
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v83)
      {
        goto LABEL_96;
      }

      [v78 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
    }

LABEL_102:
    Hasher.init(_seed:)();
    String.hash(into:)();
    v84 = Hasher._finalize()();

    v85 = -1 << *(v72 + 32);
    v86 = v84 & ~v85;
    v87 = v86 >> 6;
    v88 = *(v263 + 8 * (v86 >> 6));
    v89 = 1 << v86;
    if (((1 << v86) & v88) == 0)
    {
LABEL_153:
      *(v263 + 8 * v87) = v89 | v88;
      *(*(v72 + 48) + 8 * v86) = v78;
      v121 = *(v72 + 16);
      v58 = __OFADD__(v121, 1);
      v122 = v121 + 1;
      if (!v58)
      {
        *(v72 + 16) = v122;
        goto LABEL_80;
      }

      __break(1u);
      goto LABEL_265;
    }

    v256 = ~v85;
    while (2)
    {
      v90 = *(*(v72 + 48) + 8 * v86);
      v91 = _objc_isTaggedPointer(v90);
      v92 = v90;
      v93 = v92;
      if (!v91)
      {
        goto LABEL_109;
      }

      v94 = _objc_getTaggedPointerTag(v92);
      switch(v94)
      {
        case 0:
          _CFIndirectTaggedPointerStringGetContents();
          v102 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v103)
          {
            [v93 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v95 = v266;
            v97 = v267;
            goto LABEL_125;
          }

LABEL_120:
          v95 = v102;
          v97 = v103;

          goto LABEL_125;
        case 0x16:
          v101 = [v93 UTF8String];
          if (!v101)
          {
            goto LABEL_274;
          }

          v102 = String.init(utf8String:)(v101);
          if (!v103)
          {
            goto LABEL_276;
          }

          goto LABEL_120;
        case 2:
          MEMORY[0x1EEE9AC00](v94);
          v95 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v97 = v96;

          goto LABEL_125;
      }

LABEL_109:
      LOBYTE(v266) = 0;
      v268 = 0;
      if (!__CFStringIsCF())
      {
        v98 = v93;
        v99 = String.init(_nativeStorage:)();
        if (v100)
        {
          v95 = v99;
          v97 = v100;

          goto LABEL_125;
        }

        v268 = [v98 length];
        if (v268)
        {
          goto LABEL_124;
        }

        goto LABEL_115;
      }

      if (!v268)
      {

LABEL_115:
        v95 = 0;
        v97 = 0xE000000000000000;
        goto LABEL_125;
      }

LABEL_124:
      v95 = String.init(_cocoaString:)();
      v97 = v104;
LABEL_125:
      v105 = v78;
      v106 = v105;
      if (!v260)
      {
        goto LABEL_130;
      }

      v107 = _objc_getTaggedPointerTag(v105);
      switch(v107)
      {
        case 0:
          _CFIndirectTaggedPointerStringGetContents();
          v115 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v116)
          {
            [v106 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v110 = v267;
            if (v95 != v266)
            {
              goto LABEL_151;
            }

            goto LABEL_150;
          }

          goto LABEL_140;
        case 0x16:
          v114 = [v106 UTF8String];
          if (!v114)
          {
            goto LABEL_273;
          }

          v115 = String.init(utf8String:)(v114);
          if (!v116)
          {
            goto LABEL_275;
          }

LABEL_140:
          v117 = v115;
          v110 = v116;

          if (v95 != v117)
          {
            goto LABEL_151;
          }

          goto LABEL_150;
        case 2:
          MEMORY[0x1EEE9AC00](v107);
          v108 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v110 = v109;

          goto LABEL_147;
      }

LABEL_130:
      LOBYTE(v266) = 0;
      v268 = 0;
      if (__CFStringIsCF())
      {
        v108 = v268;
        if (v268)
        {
          goto LABEL_149;
        }

        v110 = 0xE000000000000000;
LABEL_147:
        if (v95 != v108)
        {
          goto LABEL_151;
        }

LABEL_150:
        if (v97 == v110)
        {

          goto LABEL_79;
        }

        goto LABEL_151;
      }

      v111 = v106;
      v112 = String.init(_nativeStorage:)();
      if (v113)
      {
        v108 = v112;
        v110 = v113;

        goto LABEL_147;
      }

      v268 = [v111 length];
      if (!v268)
      {

        v108 = 0;
        v110 = 0xE000000000000000;
        goto LABEL_147;
      }

LABEL_149:
      v118 = String.init(_cocoaString:)();
      v110 = v119;
      if (v95 == v118)
      {
        goto LABEL_150;
      }

LABEL_151:
      v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v120 & 1) == 0)
      {
        v86 = (v86 + 1) & v256;
        v87 = v86 >> 6;
        v88 = *(v263 + 8 * (v86 >> 6));
        v89 = 1 << v86;
        v72 = v253;
        if (((1 << v86) & v88) == 0)
        {
          goto LABEL_153;
        }

        continue;
      }

      break;
    }

LABEL_79:
    v72 = v253;
LABEL_80:
    v74 = v249 + 1;
    if (v249 != 2)
    {
      continue;
    }

    break;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v125 = swift_getObjectType();
  v264 = v244[54];
  v126 = (v264)(v125);

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo16NSURLResourceKeya_ShyAEGTt0g5(v127);
  v128 = _ContiguousArrayBuffer._asCocoaArray()();
  v268 = 0;
  v129 = [v126 resourceValuesForKeys:v128 error:&v268];

  swift_unknownObjectRelease();
  v130 = v268;
  if (!v129)
  {
    v136 = v268;

    if (v136)
    {
      return swift_willThrow();
    }

    goto LABEL_158;
  }

  v268 = 0;
  v131 = v130;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(v129, &v268);
  v132 = v268;
  if (!v268)
  {
LABEL_288:
    __break(1u);
    goto LABEL_289;
  }

  result = specialized URLResourceValues._get<A>(_:)(v242, v132);
  if (!result)
  {
LABEL_289:
    __break(1u);
    goto LABEL_290;
  }

  v133 = result;
  result = specialized URLResourceValues._get<A>(_:)(v242, v245);
  if (!result)
  {
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
    goto LABEL_292;
  }

  v134 = [v133 isEqual_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v134)
  {

    v135 = 1;
LABEL_245:
    *a1 = v135;
    return result;
  }

  result = specialized URLResourceValues._get<A>(_:)(v240, v132);
  if (!result)
  {
    goto LABEL_291;
  }

  v137 = result;
  result = specialized URLResourceValues._get<A>(_:)(v240, v245);
  if (result)
  {
    v138 = [v137 isEqual_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v138)
    {

      v135 = 2;
      goto LABEL_245;
    }

    v237 = *MEMORY[0x1E695DBE8];
    v236 = *MEMORY[0x1E695DC38];
    swift_unknownObjectRetain();
    while (2)
    {
      v139 = swift_allocObject();
      *(v139 + 32) = v237;
      v140 = static _SetStorage.allocate(capacity:)();
      v257 = v139 + 32;
      v141 = *(v139 + 32);
      v142 = _objc_isTaggedPointer(v141);
      swift_unknownObjectRetain();
      v143 = v237;
      v144 = v141;
      v145 = v144;
      if (!v142)
      {
        goto LABEL_178;
      }

      v146 = _objc_getTaggedPointerTag(v144);
      if (v146)
      {
        if (v146 == 22)
        {
          result = [v145 UTF8String];
          if (!result)
          {
            goto LABEL_294;
          }

          result = String.init(utf8String:)(result);
          if (!v149)
          {
            goto LABEL_293;
          }
        }

        else
        {
          if (v146 == 2)
          {
            MEMORY[0x1EEE9AC00](v146);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_195:
            v151 = v140 + 56;
            Hasher.init(_seed:)();
            String.hash(into:)();
            v152 = Hasher._finalize()();

            v153 = -1 << *(v140 + 32);
            v154 = v152 & ~v153;
            v155 = v154 >> 6;
            v156 = *(v140 + 56 + 8 * (v154 >> 6));
            v157 = 1 << v154;
            if (((1 << v154) & v156) != 0)
            {
              v158 = ~v153;
              while (1)
              {
                v159 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v140 + 48) + 8 * v154));
                v161 = v160;
                if (v159 == static String._unconditionallyBridgeFromObjectiveC(_:)(v141) && v161 == v162)
                {

                  goto LABEL_207;
                }

                v164 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v164)
                {
                  break;
                }

                v154 = (v154 + 1) & v158;
                v155 = v154 >> 6;
                v156 = *(v151 + 8 * (v154 >> 6));
                v157 = 1 << v154;
                if (((1 << v154) & v156) == 0)
                {
                  goto LABEL_203;
                }
              }
            }

            else
            {
LABEL_203:
              *(v151 + 8 * v155) = v157 | v156;
              *(*(v140 + 48) + 8 * v154) = v145;
              v165 = *(v140 + 16);
              v58 = __OFADD__(v165, 1);
              v166 = v165 + 1;
              if (v58)
              {
                __break(1u);
LABEL_267:
                __break(1u);
LABEL_268:
                __break(1u);
LABEL_269:
                __break(1u);
LABEL_270:
                __break(1u);
LABEL_271:
                __break(1u);
LABEL_272:
                __break(1u);
LABEL_273:
                __break(1u);
LABEL_274:
                __break(1u);
LABEL_275:
                __break(1u);
LABEL_276:
                __break(1u);
LABEL_277:
                __break(1u);
LABEL_278:
                __break(1u);
LABEL_279:
                swift_once();
LABEL_249:
                v231 = _nilObjCError;
LABEL_250:
                swift_willThrow();
                return swift_unknownObjectRelease();
              }

              *(v140 + 16) = v166;
            }

LABEL_207:
            swift_setDeallocating();
            outlined destroy of NSURLResourceKey(v257);
            swift_deallocClassInstance();
            v167 = swift_getObjectType();
            v168 = v264();

            _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo16NSURLResourceKeya_ShyAEGTt0g5(v169);
            v170 = _ContiguousArrayBuffer._asCocoaArray()();
            v268 = 0;
            v171 = [v168 resourceValuesForKeys:v170 error:&v268];

            swift_unknownObjectRelease();
            v59 = v268;
            if (!v171)
            {
              goto LABEL_247;
            }

            v268 = 0;
            v172 = v59;
            result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(v171, &v268);
            v173 = v268;
            if (!v268)
            {
              goto LABEL_283;
            }

            swift_unknownObjectRelease();
            v268 = v173;
            v269 = v140;
            v174 = URLResourceValues.isVolume.getter();

            if (v174 == 2)
            {
              goto LABEL_284;
            }

            if (v174)
            {

              *a1 = 2;
              return swift_unknownObjectRelease();
            }

            v258 = swift_allocObject();
            *(v258 + 32) = v236;
            v175 = static _SetStorage.allocate(capacity:)();
            v176 = v175 + 56;
            v177 = *(v258 + 32);
            swift_unknownObjectRetain();
            v250 = v236;
            static String._unconditionallyBridgeFromObjectiveC(_:)(v177);
            Hasher.init(_seed:)();
            v178 = v177;
            String.hash(into:)();
            v179 = Hasher._finalize()();

            v180 = -1 << *(v175 + 32);
            v181 = v179 & ~v180;
            v182 = v181 >> 6;
            v183 = *(v175 + 56 + 8 * (v181 >> 6));
            v184 = 1 << v181;
            if (((1 << v181) & v183) != 0)
            {
              v238 = v178;
              v185 = ~v180;
              while (1)
              {
                v186 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v175 + 48) + 8 * v181));
                v188 = v187;
                if (v186 == static String._unconditionallyBridgeFromObjectiveC(_:)(v177) && v188 == v189)
                {

                  goto LABEL_224;
                }

                v191 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v191)
                {
                  break;
                }

                v181 = (v181 + 1) & v185;
                v182 = v181 >> 6;
                v183 = *(v176 + 8 * (v181 >> 6));
                v184 = 1 << v181;
                if (((1 << v181) & v183) == 0)
                {
                  v178 = v238;
                  goto LABEL_220;
                }
              }
            }

            else
            {
LABEL_220:
              *(v176 + 8 * v182) = v184 | v183;
              *(*(v175 + 48) + 8 * v181) = v178;
              v192 = *(v175 + 16);
              v58 = __OFADD__(v192, 1);
              v193 = v192 + 1;
              if (v58)
              {
                goto LABEL_267;
              }

              *(v175 + 16) = v193;
            }

LABEL_224:
            swift_setDeallocating();
            outlined destroy of NSURLResourceKey(v258 + 32);
            swift_deallocClassInstance();
            v194 = (v264)(v167, v244);

            _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo16NSURLResourceKeya_ShyAEGTt0g5(v195);
            v196 = _ContiguousArrayBuffer._asCocoaArray()();
            v268 = 0;
            v197 = [v194 resourceValuesForKeys:v196 error:&v268];

            swift_unknownObjectRelease();
            v198 = v268;
            if (!v197)
            {
              v232 = v268;

              swift_unknownObjectRelease();
              if (!v232)
              {
                if (one-time initialization token for _nilObjCError != -1)
                {
                  swift_once();
                }

                v233 = _nilObjCError;
              }

              goto LABEL_250;
            }

            v199 = _sSD10FoundationE36_unconditionallyBridgeFromObjectiveCySDyxq_GSo12NSDictionaryCSgFZSo16NSURLResourceKeya_ypTt0g5(v197);
            v200 = v198;

            swift_unknownObjectRelease();
            specialized URLResourceValues._get<A>(_:)(v250, v199, &v268);

            if (!v268)
            {
              goto LABEL_285;
            }

            v244 = v269;
            v265 = swift_allocObject();
            *(v265 + 32) = v242;
            v201 = static _SetStorage.allocate(capacity:)();
            v202 = v201 + 56;
            v203 = *(v265 + 32);
            v261 = v242;
            static String._unconditionallyBridgeFromObjectiveC(_:)(v203);
            Hasher.init(_seed:)();
            v204 = v203;
            String.hash(into:)();
            v205 = Hasher._finalize()();

            v206 = -1 << *(v201 + 32);
            v207 = v205 & ~v206;
            v208 = v207 >> 6;
            v209 = *(v201 + 56 + 8 * (v207 >> 6));
            v210 = 1 << v207;
            if (((1 << v207) & v209) != 0)
            {
              v251 = v204;
              v211 = ~v206;
              while (1)
              {
                v212 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(*(v201 + 48) + 8 * v207));
                v214 = v213;
                if (v212 == static String._unconditionallyBridgeFromObjectiveC(_:)(v203) && v214 == v215)
                {

                  goto LABEL_239;
                }

                v217 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v217)
                {
                  break;
                }

                v207 = (v207 + 1) & v211;
                v208 = v207 >> 6;
                v209 = *(v202 + 8 * (v207 >> 6));
                v210 = 1 << v207;
                if (((1 << v207) & v209) == 0)
                {
                  v204 = v251;
                  goto LABEL_235;
                }
              }
            }

            else
            {
LABEL_235:
              *(v202 + 8 * v208) = v210 | v209;
              *(*(v201 + 48) + 8 * v207) = v204;
              v218 = *(v201 + 16);
              v58 = __OFADD__(v218, 1);
              v219 = v218 + 1;
              if (v58)
              {
                goto LABEL_268;
              }

              *(v201 + 16) = v219;
            }

LABEL_239:
            swift_setDeallocating();
            outlined destroy of NSURLResourceKey(v265 + 32);
            swift_deallocClassInstance();
            v220 = swift_getObjectType();
            v264 = v244[54];
            v221 = (v264)(v220);

            _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo16NSURLResourceKeya_ShyAEGTt0g5(v222);
            v223 = _ContiguousArrayBuffer._asCocoaArray()();
            v268 = 0;
            v224 = [v221 resourceValuesForKeys:v223 error:&v268];

            swift_unknownObjectRelease();
            v225 = v268;
            if (!v224)
            {
              v234 = v268;

              if (!v234)
              {
                if (one-time initialization token for _nilObjCError != -1)
                {
                  swift_once();
                }

                v235 = _nilObjCError;
              }

              swift_willThrow();
              swift_unknownObjectRelease();
              return swift_unknownObjectRelease();
            }

            v226 = _sSD10FoundationE36_unconditionallyBridgeFromObjectiveCySDyxq_GSo12NSDictionaryCSgFZSo16NSURLResourceKeya_ypTt0g5(v224);
            v227 = v225;

            v228 = specialized URLResourceValues._get<A>(_:)(v261, v226);

            if (!v228)
            {
              goto LABEL_287;
            }

            result = specialized URLResourceValues._get<A>(_:)(v261, v245);
            if (!result)
            {
              goto LABEL_286;
            }

            v229 = [v228 isEqual_];
            swift_unknownObjectRelease();
            if (v229)
            {

              *a1 = 0;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              return swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            continue;
          }

LABEL_178:
          v268 = 0;
          if (!__CFStringIsCF())
          {
            v147 = v145;
            String.init(_nativeStorage:)();
            if (v148 || (v268 = [v147 length]) == 0)
            {

              goto LABEL_195;
            }

LABEL_194:
            String.init(_cocoaString:)();
            goto LABEL_195;
          }

          if (v268)
          {
            goto LABEL_194;
          }
        }
      }

      else
      {
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v150)
        {
          [v145 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_195;
        }
      }

      break;
    }

    goto LABEL_195;
  }

LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
  return result;
}

uint64_t _FileManagerImpl.getRelationship(_:of:in:toItemAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v7 = *(a4 + 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_22;
  }

  v9 = Strong;
  if (a3)
  {
    v10 = 0;
  }

  else
  {
    ObjectType = swift_getObjectType();
    v10 = (*(v7 + 432))(ObjectType, v7);
  }

  v27[0] = 0;
  v12 = [v9 URLForDirectory:a2 inDomain:a3 appropriateForURL:v10 create:0 error:v27];

  v13 = v27[0];
  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v12, v27);
    v14 = v13;

    v15 = v27[1];
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = swift_getObjectType();
      v19 = v15[54](v18, v15);
      v20 = swift_getObjectType();
      v21 = (*(v7 + 432))(v20, v7);
      v27[0] = 0;
      v22 = [v17 getRelationship:a1 ofDirectoryAtURL:v19 toItemAtURL:v21 error:v27];

      if (v22)
      {
        v23 = v27[0];
      }

      else
      {
        if (v27[0])
        {
          v27[0];
        }

        else
        {
          if (one-time initialization token for _nilObjCError != -1)
          {
            swift_once();
          }

          v26 = _nilObjCError;
        }

        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }

LABEL_22:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v27[0])
  {
    v27[0];
  }

  else
  {
    if (one-time initialization token for _nilObjCError != -1)
    {
      swift_once();
    }

    v24 = _nilObjCError;
  }

  return swift_willThrow();
}

unint64_t _FileManagerImpl.homeDirectory(forUser:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    if (issetugid() || !getenv("CFFIXED_USER_HOME"))
    {
      result = specialized static Platform.homeDirectory(forUserName:)(a1, a2);
      if (!v7)
      {
        *a3 = 0;
        a3[1] = 0;
        return result;
      }
    }

    else
    {
      result = String.init(cString:)();
    }

    v8 = String.standardizingPath.getter(result, v7);
    v10 = v11;
  }

  else
  {
    v8 = static String.homeDirectoryPath()();
    v10 = v9;
  }

  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v12 = type metadata accessor for _BridgedURL();
    v13 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v12 = type metadata accessor for _SwiftURL();
    v13 = &protocol witness table for _SwiftURL;
  }

  v18 = 0;
  v17[0] = 0;
  v17[1] = 0;
  (v13[9])(v8, v10, &v18, v17);
  v14 = (v13[56])(v12, v13);
  v16 = v15;
  result = swift_unknownObjectRelease();
  *a3 = v14;
  a3[1] = v16;
  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    result = 0;
    goto LABEL_5;
  }

  if (a1)
  {
    result = opendir(a1);
LABEL_5:
    *a5 = result;
    return result;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall _FileManagerImpl.isDeletableFile(atPath:)(Swift::String atPath)
{
  countAndFlagsBits = atPath._countAndFlagsBits;
  v52 = *MEMORY[0x1E69E9840];
  object = atPath._object;
  Path = String._deletingLastPathComponent()(atPath._countAndFlagsBits, atPath._object);
  v4 = v3;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = Path & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = Path;
    goto LABEL_27;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_41;
  }

  v8 = Strong;
  v9 = [Strong currentDirectoryPath];

  if (!v9)
  {
    goto LABEL_16;
  }

  isTaggedPointer = _objc_isTaggedPointer(v9);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_12;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_20;
    case 0x16:
      v18 = [v12 UTF8String];
      if (!v18)
      {
        __break(1u);
        goto LABEL_41;
      }

      v19 = String.init(utf8String:)(v18);
      if (v20)
      {
LABEL_21:
        v6 = v19;
        v4 = v20;

        goto LABEL_26;
      }

      __break(1u);
LABEL_20:
      LOWORD(v36[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v12 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v4 = *(&v38 + 1);
        v6 = v38;
        goto LABEL_26;
      }

      goto LABEL_21;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v4 = v14;

      goto LABEL_27;
  }

LABEL_12:
  LOBYTE(v38) = 0;
  *&v50[0] = 0;
  LOBYTE(v36[0]) = 0;
  if (__CFStringIsCF())
  {

LABEL_16:
    v6 = 0;
    v4 = 0xE000000000000000;
    goto LABEL_27;
  }

  v15 = v12;
  v16 = String.init(_nativeStorage:)();
  if (v17)
  {
    v6 = v16;
    v4 = v17;

    goto LABEL_27;
  }

  *&v50[0] = [v15 length];
  if (!*&v50[0])
  {

    goto LABEL_16;
  }

  v6 = String.init(_cocoaString:)();
  v4 = v21;
LABEL_26:

LABEL_27:
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
    goto LABEL_41;
  }

  v23 = v22;
  v24 = [v22 isWritableFileAtPath_];

  swift_unknownObjectRelease();
  if ((v24 & 1) == 0)
  {

    return 0;
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
    goto LABEL_41;
  }

  v26 = v25;
  specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(v6, v4, closure #1 in NSFileManager._fileStat(_:), 0, v48);

  v50[6] = v48[6];
  v50[7] = v48[7];
  v50[8] = v48[8];
  v51 = v49;
  v50[2] = v48[2];
  v50[3] = v48[3];
  v50[4] = v48[4];
  v50[5] = v48[5];
  v50[0] = v48[0];
  v50[1] = v48[1];
  if (_sSo4statVSgWOg(v50) == 1)
  {
    return 0;
  }

  v27 = WORD2(v50[0]);
  if ((S_ISVTX.getter() & v27) == 0)
  {
    return 1;
  }

  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = [v28 fileExistsAtPath_];

    swift_unknownObjectRelease();
    if (v30)
    {
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31)
      {
        v32 = v31;
        specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(countAndFlagsBits, object, closure #1 in NSFileManager._fileStat(_:), 0, v36);

        v44 = v36[6];
        v45 = v36[7];
        v46 = v36[8];
        v47 = v37;
        v40 = v36[2];
        v41 = v36[3];
        v42 = v36[4];
        v43 = v36[5];
        v38 = v36[0];
        v39 = v36[1];
        if (_sSo4statVSgWOg(&v38) != 1)
        {
          v33 = v39;
          return v33 == getuid();
        }

        return 0;
      }

      goto LABEL_41;
    }

    return 1;
  }

LABEL_41:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

const char *closure #1 in _FileManagerImpl._fileExists(_:)@<X0>(const char *result@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    memset(&v5, 0, sizeof(v5));
    result = stat(result, &v5);
    if (result)
    {
      *a2 = 0;
    }

    else
    {
      st_mode = v5.st_mode;
      v4 = S_IFMT.getter() & st_mode;
      result = S_IFDIR.getter();
      *a2 = 1;
      *(a2 + 1) = v4 == result;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t closure #2 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(uint64_t a1, const char *a2, unint64_t a3, unint64_t a4, char a5, char a6)
{
  v9 = a3;
  v117 = *MEMORY[0x1E69E9840];
  getter of statAtPath #1 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(a1, a2, a3, a4, &v105);
  v115[6] = v111;
  v115[7] = v112;
  v115[8] = v113;
  v116 = v114;
  v115[2] = v107;
  v115[3] = v108;
  v115[4] = v109;
  v115[5] = v110;
  v115[0] = v105;
  v115[1] = v106;
  if (_ss6ResultOySo4statV10Foundation10CocoaErrorVGWOg(v115) == 1)
  {
    _NSBundleDeallocatingImmortalBundle();
    v101 = v111;
    v102 = v112;
    v103 = v113;
    v104 = v114;
    v97 = v107;
    v98 = v108;
    v99 = v109;
    v100 = v110;
    v95 = v105;
    v96 = v106;
    _NSBundleDeallocatingImmortalBundle();
    v92 = *v11;
    lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
    return swift_willThrowTypedImpl();
  }

  _NSBundleDeallocatingImmortalBundle();
  v101 = v111;
  v102 = v112;
  v103 = v113;
  v104 = v114;
  v97 = v107;
  v98 = v108;
  v99 = v109;
  v100 = v110;
  v95 = v105;
  v96 = v106;
  _NSBundleDeallocatingImmortalBundle();
  v14 = *(v13 + 116);
  if (a5 != 2)
  {
    if (a5)
    {
      v14 |= 4u;
    }

    else
    {
      v14 &= ~4u;
    }
  }

  if (a6 != 2)
  {
    if (a6)
    {
      v14 |= 2u;
    }

    else
    {
      v14 &= ~2u;
    }
  }

  result = chflags(a2, v14);
  if (result)
  {
    v15 = MEMORY[0x1865CA7A0]();
    LODWORD(v16) = v15;
    if (v15 > 27)
    {
      if (v15 <= 62)
      {
        if (v15 != 28)
        {
          if (v15 == 30)
          {
            v19 = 642;
            goto LABEL_32;
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v15 == 63)
        {
          v19 = 514;
          goto LABEL_32;
        }

        if (v15 != 69)
        {
          if (v15 == 102)
          {
            v17 = 0;
            v18 = 512;
            goto LABEL_111;
          }

LABEL_31:
          v19 = 512;
LABEL_32:
          v85 = v9;
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
LABEL_130:
            v93 = 0;
            v94 = 0xE000000000000000;
            _StringGuts.grow(_:)(22);

            v93 = 0xD000000000000014;
            v94 = 0x80000001814813E0;
            LODWORD(v88) = v16;
            v83 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v83);

            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v16 = @"NSPOSIXErrorDomain";
          isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v21 = @"NSPOSIXErrorDomain";
          v22 = v21;
          v86 = v19;
          LODWORD(v87) = isTaggedPointer;
          if (isTaggedPointer)
          {
            TaggedPointerTag = _objc_getTaggedPointerTag(v21);
            if (TaggedPointerTag)
            {
              if (TaggedPointerTag != 22)
              {
                if (TaggedPointerTag == 2)
                {
                  MEMORY[0x1EEE9AC00](TaggedPointerTag);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                  goto LABEL_51;
                }

                goto LABEL_38;
              }

              v26 = [(__CFString *)v22 UTF8String];
              if (!v26)
              {
                __break(1u);
LABEL_128:
                __break(1u);
                goto LABEL_129;
              }

              String.init(utf8String:)(v26);
              if (v27)
              {
                goto LABEL_39;
              }

              __break(1u);
            }

            v90 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (v28)
            {
              goto LABEL_39;
            }

            [(__CFString *)v22 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_51;
          }

LABEL_38:
          LOBYTE(v88) = 0;
          v93 = 0;
          LOBYTE(v90) = 0;
          v91 = 0;
          if (__CFStringIsCF())
          {
LABEL_39:

            goto LABEL_51;
          }

          v24 = v22;
          String.init(_nativeStorage:)();
          if (!v25 && (v93 = [(__CFString *)v24 length]) != 0)
          {
            String.init(_cocoaString:)();
          }

          else
          {
          }

LABEL_51:
          v29 = POSIXErrorCode.rawValue.getter();
          v30 = objc_allocWithZone(NSError);
          v31 = String._bridgeToObjectiveCImpl()();

          v16 = _NativeDictionary.bridged()();
          v32 = [v30 initWithDomain:v31 code:v29 userInfo:v16];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v33 = [v32 domain];
          v84 = v32;
          if (!v33)
          {
LABEL_61:
            v38 = 0;
            v40 = 0xE000000000000000;
            goto LABEL_72;
          }

          v34 = v33;
          LODWORD(v16) = _objc_isTaggedPointer(v33);
          v35 = v34;
          v36 = v35;
          if ((v16 & 1) == 0)
          {
            goto LABEL_57;
          }

          v37 = _objc_getTaggedPointerTag(v35);
          if (v37)
          {
            if (v37 != 22)
            {
              if (v37 == 2)
              {
                MEMORY[0x1EEE9AC00](v37);
                v38 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v40 = v39;

LABEL_72:
                v48 = v22;
                v49 = v48;
                if (!v87)
                {
                  goto LABEL_77;
                }

                v50 = _objc_getTaggedPointerTag(v48);
                if (!v50)
                {
                  goto LABEL_88;
                }

                if (v50 != 22)
                {
                  if (v50 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v50);
                    v51 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v53 = v52;

                    goto LABEL_106;
                  }

LABEL_77:
                  LOBYTE(v88) = 0;
                  v93 = 0;
                  LOBYTE(v90) = 0;
                  v91 = 0;
                  IsCF = __CFStringIsCF();
                  if (IsCF)
                  {
                    v51 = v93;
                    if (!v93)
                    {

                      v53 = 0xE000000000000000;
                      goto LABEL_106;
                    }

                    if (v91 == 1)
                    {
                      if (v88)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v61 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_105;
                    }

                    if (v90)
                    {
                      v87 = v38;
                      if (v88 != 1)
                      {
                        IsCF = [(__CFString *)v49 lengthOfBytesUsingEncoding:4];
                      }

                      MEMORY[0x1EEE9AC00](IsCF);
                      v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v53 = v64;
                      v65 = HIBYTE(v64) & 0xF;
                      if ((v64 & 0x2000000000000000) == 0)
                      {
                        v65 = v63 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v65)
                      {
                        v51 = v63;

                        v38 = v87;
                        goto LABEL_106;
                      }

                      v38 = v87;
                    }
                  }

                  else
                  {
                    v55 = v49;
                    v56 = String.init(_nativeStorage:)();
                    if (v57)
                    {
                      v51 = v56;
                      v53 = v57;

                      goto LABEL_106;
                    }

                    v93 = [(__CFString *)v55 length];
                    if (!v93)
                    {

                      v51 = 0;
                      v53 = 0xE000000000000000;
                      goto LABEL_106;
                    }
                  }

                  v61 = String.init(_cocoaString:)();
LABEL_105:
                  v51 = v61;
                  v53 = v62;
LABEL_106:
                  if (v38 == v51 && v40 == v53)
                  {
                  }

                  else
                  {
                    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v66 & 1) == 0)
                    {
                      __break(1u);
                    }
                  }

                  v9 = v85;
                  v18 = v86;
                  v17 = v84;
LABEL_111:

                  if (_foundation_swift_url_feature_enabled())
                  {

                    v67 = specialized String.withFileSystemRepresentation<A>(_:)(v9, a4, v9, a4);
                    v69 = v68;

                    LOBYTE(v88) = 3;
                    type metadata accessor for _SwiftURL();
                    v93 = 0;
                    v94 = 0;
                    swift_allocObject();
                    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v67, v69, 0, &v88, &v93);
                    v70 = _SwiftURL.convertingFileReference()();
                    v72 = v71;
                  }

                  else
                  {
                    v73 = (specialized BidirectionalCollection.last.getter(v9, a4) & 0x1FF) == 47;
                    objc_allocWithZone(type metadata accessor for _BridgedURL());

                    v74 = _BridgedURL.init(fileURLWithPath:isDirectory:)(v9, a4, v73);
                    if (!v74)
                    {

                      v77 = String._bridgeToObjectiveCImpl()();
                      goto LABEL_122;
                    }

                    v75 = v74;
                    v70 = _BridgedURL.convertingFileReference()();
                    v72 = v76;
                  }

                  v77 = String._bridgeToObjectiveCImpl()();
                  if (v70)
                  {
                    ObjectType = swift_getObjectType();
                    v79 = (*(v72 + 432))(ObjectType, v72);
                    swift_unknownObjectRelease();
                    if (v17)
                    {
LABEL_117:
                      v93 = v17;
                      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                      v17 = v17;
                      v80 = _getErrorEmbeddedNSError<A>(_:)();

                      if (v80)
                      {
                      }

                      else
                      {
                        swift_allocError();
                        *v81 = v17;
                      }

                      v82 = _swift_stdlib_bridgeErrorToNSError();
                      goto LABEL_124;
                    }

LABEL_123:
                    v82 = 0;
LABEL_124:
                    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                    swift_unknownObjectRelease();

                    return swift_willThrow();
                  }

LABEL_122:
                  v79 = 0;
                  if (v17)
                  {
                    goto LABEL_117;
                  }

                  goto LABEL_123;
                }

                v58 = [(__CFString *)v49 UTF8String];
                if (v58)
                {
                  v59 = String.init(utf8String:)(v58);
                  if (v60)
                  {
                    goto LABEL_89;
                  }

                  __break(1u);
LABEL_88:
                  v90 = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v59 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v60)
                  {
                    [(__CFString *)v49 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v51 = v88;
                    v53 = v89;
                    goto LABEL_106;
                  }

LABEL_89:
                  v51 = v59;
                  v53 = v60;

                  goto LABEL_106;
                }

                goto LABEL_128;
              }

LABEL_57:
              LOBYTE(v88) = 0;
              v93 = 0;
              LOBYTE(v90) = 0;
              v91 = 0;
              if (__CFStringIsCF())
              {

                goto LABEL_61;
              }

              v41 = v36;
              v42 = String.init(_nativeStorage:)();
              if (v43)
              {
                v38 = v42;
                v40 = v43;

                goto LABEL_72;
              }

              v93 = [v41 length];
              if (!v93)
              {

                goto LABEL_61;
              }

              v38 = String.init(_cocoaString:)();
              v40 = v47;
LABEL_71:

              goto LABEL_72;
            }

            v44 = [v36 UTF8String];
            if (!v44)
            {
LABEL_129:
              __break(1u);
              goto LABEL_130;
            }

            v45 = String.init(utf8String:)(v44);
            if (v46)
            {
LABEL_66:
              v38 = v45;
              v40 = v46;

              goto LABEL_71;
            }

            __break(1u);
          }

          v90 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v45 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v46)
          {
            [v36 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v38 = v88;
            v40 = v89;
            goto LABEL_71;
          }

          goto LABEL_66;
        }
      }

      v19 = 640;
      goto LABEL_32;
    }

    if (v15 > 12)
    {
      if (v15 != 13)
      {
        if (v15 == 17)
        {
          v19 = 516;
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else if (v15 != 1)
    {
      if (v15 == 2)
      {
        v19 = 4;
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v19 = 513;
    goto LABEL_32;
  }

  return result;
}

id _FileManagerImpl.createSymbolicLink(at:withDestinationURL:)(uint64_t *a1, uint64_t *a2)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = a2[1];
  ObjectType = swift_getObjectType();
  if (((*(v2 + 144))(ObjectType, v2) & 1) == 0)
  {
    v22 = *(v2 + 240);
    swift_unknownObjectRetain();
    v22(ObjectType, v2);
    v23 = objc_opt_self();
    v24 = String._bridgeToObjectiveCImpl()();

    v25 = (*(v2 + 432))(ObjectType, v2);
    swift_unknownObjectRelease();
    v26 = [v23 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
LABEL_17:
    v26;
    swift_unknownObjectRelease();

    return swift_willThrow();
  }

  v5 = swift_getObjectType();
  (*(v3 + 136))(v5, v3);
  if (v6)
  {

    if (((*(v3 + 144))(v5, v3) & 1) == 0)
    {
      v27 = *(v3 + 240);
      swift_unknownObjectRetain();
      v27(v5, v3);
      v28 = objc_opt_self();
      v29 = String._bridgeToObjectiveCImpl()();

      v25 = (*(v3 + 432))(v5, v3);
      swift_unknownObjectRelease();
      v26 = [v28 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      goto LABEL_17;
    }
  }

  v37 = *(v2 + 240);
  v35 = v5;
  v36 = ObjectType;
  v7 = v37(ObjectType, v2);
  v9 = v8;
  v10 = v5;
  v11 = *(v3 + 240);
  v12 = v11(v10, v3);
  v14 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v14 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    swift_unknownObjectRetain();
    v37(v36, v2);
    v30 = objc_opt_self();
    v31 = String._bridgeToObjectiveCImpl()();

    v25 = (*(v2 + 432))(v36, v2);
    swift_unknownObjectRelease();
    v26 = [v30 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    goto LABEL_17;
  }

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    swift_unknownObjectRetain();
    v11(v35, v3);
    v32 = objc_opt_self();
    v33 = String._bridgeToObjectiveCImpl()();

    v25 = (*(v3 + 432))(v35, v3);
    swift_unknownObjectRelease();
    v26 = [v32 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    goto LABEL_17;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = String._bridgeToObjectiveCImpl()();

    v19 = String._bridgeToObjectiveCImpl()();

    v38[0] = 0;
    v20 = [v17 createSymbolicLinkAtPath:v18 withDestinationPath:v19 error:v38];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v20)
    {
      return v38[0];
    }

    if (v38[0])
    {
      v38[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v34 = _nilObjCError;
    }

    return swift_willThrow();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id _FileManagerImpl.linkItem(at:to:)(uint64_t *a1, uint64_t *a2)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  v3 = a2[1];
  ObjectType = swift_getObjectType();
  if (((*(v2 + 144))(ObjectType, v2) & 1) == 0)
  {
    v19 = *(v2 + 240);
    swift_unknownObjectRetain();
    v19(ObjectType, v2);
    v20 = objc_opt_self();
    v21 = String._bridgeToObjectiveCImpl()();

    v22 = (*(v2 + 432))(ObjectType, v2);
    swift_unknownObjectRelease();
    v23 = [v20 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
LABEL_14:
    v23;
    swift_unknownObjectRelease();

    return swift_willThrow();
  }

  v5 = swift_getObjectType();
  if (((*(v3 + 144))(v5, v3) & 1) == 0)
  {
    v24 = *(v3 + 240);
    swift_unknownObjectRetain();
    v24(v5, v3);
    v25 = objc_opt_self();
    v26 = String._bridgeToObjectiveCImpl()();

    v22 = (*(v3 + 432))(v5, v3);
    swift_unknownObjectRelease();
    v23 = [v25 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    goto LABEL_14;
  }

  v33 = *(v2 + 240);
  v6 = v33(ObjectType, v2);
  v8 = v7;
  v32 = *(v3 + 240);
  v9 = v32();
  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    swift_unknownObjectRetain();
    v33(ObjectType, v2);
    v27 = objc_opt_self();
    v28 = String._bridgeToObjectiveCImpl()();

    v22 = (*(v2 + 432))(ObjectType, v2);
    swift_unknownObjectRelease();
    v23 = [v27 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    goto LABEL_14;
  }

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    swift_unknownObjectRetain();
    (v32)(v5, v3);
    v29 = objc_opt_self();
    v30 = String._bridgeToObjectiveCImpl()();

    v22 = (*(v3 + 432))(v5, v3);
    swift_unknownObjectRelease();
    v23 = [v29 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = String._bridgeToObjectiveCImpl()();

    v16 = String._bridgeToObjectiveCImpl()();

    v34[0] = 0;
    v17 = [v14 linkItemAtPath:v15 toPath:v16 error:v34];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v17)
    {
      return v34[0];
    }

    if (v34[0])
    {
      v34[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v31 = _nilObjCError;
    }

    return swift_willThrow();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in static _FileManagerImpl._setAttribute(_:value:at:followSymLinks:)(void *value, uint64_t a2, __CFString *path, char *name, char a5)
{
  v79[4] = *MEMORY[0x1E69E9840];
  if (!value)
  {
    goto LABEL_103;
  }

  result = setxattr(path, name, value, a2 - value, 0, (a5 & 1) == 0);
  if (result != -1)
  {
    return result;
  }

  v6 = String.init(cString:)();
  v8 = v7;
  v9 = MEMORY[0x1865CA7A0]();
  if (v9 <= 27)
  {
    if (v9 > 12)
    {
      if (v9 != 13)
      {
        if (v9 == 17)
        {
          v12 = 516;
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (v9 != 1)
    {
      if (v9 == 2)
      {
        v12 = 4;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v12 = 513;
    goto LABEL_23;
  }

  if (v9 <= 62)
  {
    if (v9 != 28)
    {
      if (v9 == 30)
      {
        v12 = 642;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_20:
    v12 = 640;
    goto LABEL_23;
  }

  switch(v9)
  {
    case '?':
      v12 = 514;
      goto LABEL_23;
    case 'E':
      goto LABEL_20;
    case 'f':
      v10 = 0;
      v11 = 512;
      goto LABEL_87;
  }

LABEL_22:
  v12 = 512;
LABEL_23:
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {
LABEL_107:
    _StringGuts.grow(_:)(22);

    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v72);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
  v14 = @"NSPOSIXErrorDomain";
  v15 = v14;
  v73 = v6;
  v74 = v12;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v14);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_42;
        }

        goto LABEL_29;
      }

      v19 = [(__CFString *)v15 UTF8String];
      if (!v19)
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      String.init(utf8String:)(v19);
      if (v20)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    v77 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v21)
    {
      goto LABEL_30;
    }

    [(__CFString *)v15 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_42;
  }

LABEL_29:
  LOBYTE(v75) = 0;
  v79[0] = 0;
  LOBYTE(v77) = 0;
  v78 = 0;
  if (__CFStringIsCF())
  {
LABEL_30:

    goto LABEL_42;
  }

  v17 = v15;
  String.init(_nativeStorage:)();
  if (!v18 && (v79[0] = [(__CFString *)v17 length]) != 0)
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_42:
  v22 = POSIXErrorCode.rawValue.getter();
  v23 = objc_allocWithZone(NSError);
  v24 = String._bridgeToObjectiveCImpl()();

  v10 = [v23 initWithDomain:v24 code:v22 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v25 = [v10 domain];
  if (!v25)
  {
LABEL_52:
    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_63;
  }

  v26 = v25;
  v27 = _objc_isTaggedPointer(v25);
  v28 = v26;
  v29 = v28;
  if ((v27 & 1) == 0)
  {
    goto LABEL_48;
  }

  v30 = _objc_getTaggedPointerTag(v28);
  switch(v30)
  {
    case 0:
      goto LABEL_56;
    case 0x16:
      v37 = [v29 UTF8String];
      if (!v37)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v38 = String.init(utf8String:)(v37);
      if (v39)
      {
LABEL_57:
        v31 = v38;
        v33 = v39;

        goto LABEL_62;
      }

      __break(1u);
LABEL_56:
      v77 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v38 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v39)
      {
        [v29 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v31 = v75;
        v33 = v76;
        goto LABEL_62;
      }

      goto LABEL_57;
    case 2:
      MEMORY[0x1EEE9AC00](v30);
      v31 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v33 = v32;

      goto LABEL_63;
  }

LABEL_48:
  LOBYTE(v75) = 0;
  v79[0] = 0;
  LOBYTE(v77) = 0;
  v78 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_52;
  }

  v34 = v29;
  v35 = String.init(_nativeStorage:)();
  if (v36)
  {
    v31 = v35;
    v33 = v36;

    goto LABEL_63;
  }

  v79[0] = [v34 length];
  if (!v79[0])
  {

    goto LABEL_52;
  }

  v31 = String.init(_cocoaString:)();
  v33 = v40;
LABEL_62:

LABEL_63:
  v41 = v15;
  v42 = v41;
  if (!isTaggedPointer)
  {
    goto LABEL_68;
  }

  v43 = _objc_getTaggedPointerTag(v41);
  if (!v43)
  {
    goto LABEL_76;
  }

  if (v43 == 22)
  {
    v50 = [(__CFString *)v42 UTF8String];
    if (v50)
    {
      v51 = String.init(utf8String:)(v50);
      if (v52)
      {
LABEL_77:
        v44 = v51;
        v46 = v52;

        goto LABEL_82;
      }

      __break(1u);
LABEL_76:
      v77 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v51 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v52)
      {
        [(__CFString *)v42 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v44 = v75;
        v46 = v76;
        goto LABEL_82;
      }

      goto LABEL_77;
    }

    goto LABEL_105;
  }

  if (v43 != 2)
  {
LABEL_68:
    LOBYTE(v75) = 0;
    v79[0] = 0;
    LOBYTE(v77) = 0;
    v78 = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v47 = v42;
      v48 = String.init(_nativeStorage:)();
      if (v49)
      {
        v44 = v48;
        v46 = v49;

        goto LABEL_82;
      }

      v79[0] = [(__CFString *)v47 length];
      if (v79[0])
      {
        v44 = String.init(_cocoaString:)();
        v46 = v53;
        goto LABEL_82;
      }
    }

    v44 = 0;
    v46 = 0xE000000000000000;
    goto LABEL_82;
  }

  MEMORY[0x1EEE9AC00](v43);
  v44 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v46 = v45;

LABEL_82:
  if (v31 != v44 || v33 != v46)
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v54)
    {
      goto LABEL_86;
    }

    __break(1u);
LABEL_103:
    __break(1u);
  }

LABEL_86:
  v6 = v73;
  v11 = v74;
LABEL_87:

  if (_foundation_swift_url_feature_enabled())
  {

    v55 = specialized String.withFileSystemRepresentation<A>(_:)(v6, v8, v6, v8);
    v57 = v56;

    LOBYTE(v75) = 3;
    type metadata accessor for _SwiftURL();
    v79[0] = 0;
    v79[1] = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v55, v57, 0, &v75, v79);
    v58 = _SwiftURL.convertingFileReference()();
    v60 = v59;
  }

  else
  {
    v61 = (specialized BidirectionalCollection.last.getter(v6, v8) & 0x1FF) == 47;
    v62 = objc_allocWithZone(type metadata accessor for _BridgedURL());

    v63 = _BridgedURL.init(fileURLWithPath:isDirectory:)(v6, v8, v61);
    if (v63)
    {
      v64 = v63;
      v58 = _BridgedURL.convertingFileReference()();
      v60 = v65;
    }

    else
    {

      v58 = 0;
      v60 = 0;
    }
  }

  v66 = String._bridgeToObjectiveCImpl()();

  if (v58)
  {
    ObjectType = swift_getObjectType();
    v68 = (*(v60 + 432))(ObjectType, v60);
    swift_unknownObjectRelease();
    if (v10)
    {
LABEL_94:
      v79[0] = v10;
      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
      v10 = v10;
      v69 = _getErrorEmbeddedNSError<A>(_:)();

      if (v69)
      {
      }

      else
      {
        swift_allocError();
        *v71 = v10;
      }

      v70 = _swift_stdlib_bridgeErrorToNSError();
      goto LABEL_100;
    }
  }

  else
  {
    v68 = 0;
    if (v10)
    {
      goto LABEL_94;
    }
  }

  v70 = 0;
LABEL_100:
  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  return swift_willThrow();
}

uint64_t closure #1 in static _FileManagerImpl._setAttributes(_:at:followSymLinks:)(char *name, uint64_t a2, unint64_t a3, __CFString *path, char a5)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v6 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v6)
    {
      v23[0] = a2;
      LOWORD(v23[1]) = a3;
      BYTE2(v23[1]) = BYTE2(a3);
      BYTE3(v23[1]) = BYTE3(a3);
      BYTE4(v23[1]) = BYTE4(a3);
      BYTE5(v23[1]) = BYTE5(a3);
      v7 = v23 + BYTE6(a3);
      v8 = v23;
      return closure #1 in static _FileManagerImpl._setAttribute(_:value:at:followSymLinks:)(v8, v7, path, name, a5 & 1);
    }

    v18 = (a2 >> 32) - a2;
    if (a2 >> 32 >= a2)
    {
      v19 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v19)
      {
        goto LABEL_21;
      }

      v20 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v21 = a2 - v20;
      if (!__OFSUB__(a2, v20))
      {
        if (*((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v18)
        {
          v18 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        v8 = (v21 + v19);
        if (v21 + v19)
        {
          v7 = v8 + v18;
          return closure #1 in static _FileManagerImpl._setAttribute(_:value:at:followSymLinks:)(v8, v7, path, name, a5 & 1);
        }

LABEL_21:
        v8 = 0;
        v7 = 0;
        return closure #1 in static _FileManagerImpl._setAttribute(_:value:at:followSymLinks:)(v8, v7, path, name, a5 & 1);
      }

LABEL_28:
      __break(1u);
    }

    goto LABEL_26;
  }

  if (v6 != 2)
  {
    memset(v23, 0, 14);
    v8 = v23;
    v7 = v23;
    return closure #1 in static _FileManagerImpl._setAttribute(_:value:at:followSymLinks:)(v8, v7, path, name, a5 & 1);
  }

  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!v11)
  {
    v8 = 0;
    v13 = __OFSUB__(v10, v9);
    v15 = v10 - v9;
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v13 = __OFSUB__(v9, v12);
  v14 = v9 - v12;
  if (v13)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = (v14 + v11);
  v13 = __OFSUB__(v10, v9);
  v15 = v10 - v9;
  if (v13)
  {
    goto LABEL_25;
  }

LABEL_8:
  v16 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  if (v16 >= v15)
  {
    v16 = v15;
  }

  v17 = v8 + v16;
  if (v8)
  {
    v7 = v17;
  }

  else
  {
    v7 = 0;
  }

  return closure #1 in static _FileManagerImpl._setAttribute(_:value:at:followSymLinks:)(v8, v7, path, name, a5 & 1);
}

id NSFileManager._shouldProceedAfter(error:removingItemAtPath:)(void *a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  result = [v4 _safeDelegate];
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      if (one-time initialization token for compatibility2 != -1)
      {
        swift_once();
      }

      if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
      {
        v10 = type metadata accessor for _BridgedURL();
        v11 = &protocol witness table for _BridgedURL;
      }

      else
      {
        v10 = type metadata accessor for _SwiftURL();
        v11 = &protocol witness table for _SwiftURL;
      }

      v15 = v11[8];

      v15(a2, a3);
      (v11[56])(v10, v11);
      v17 = v16;
      swift_unknownObjectRelease();
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      ObjectType = swift_getObjectType();
      v21 = (*(v17 + 432))(ObjectType, v17);
      v22 = [v9 fileManager:v4 shouldProceedAfterError:v19 removingItemAtURL:v21];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v22;
    }

    else if ([v9 respondsToSelector_])
    {
      v12 = a1;
      swift_unknownObjectRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = [v9 fileManager:v4 shouldProceedAfterError:v13 removingItemAtPath:String._bridgeToObjectiveCImpl()()];
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v14;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t NSFileManager._shouldRemoveItemAtPath(_:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [v3 _safeDelegate];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  if (([v6 respondsToSelector_] & 1) == 0)
  {
    if ([v7 respondsToSelector_])
    {
      v10 = String._bridgeToObjectiveCImpl()();
      v11 = [swift_unknownObjectRetain() fileManager:v3 shouldRemoveItemAtPath:v10];
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      return v11;
    }

    swift_unknownObjectRelease();
    return 1;
  }

  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v8 = type metadata accessor for _BridgedURL();
    v9 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v8 = type metadata accessor for _SwiftURL();
    v9 = &protocol witness table for _SwiftURL;
  }

  v13 = v9[8];

  v13(a1, a2);
  (v9[56])(v8, v9);
  v15 = v14;
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v17 = (*(v15 + 432))(ObjectType, v15);
  v18 = [v7 fileManager:v3 shouldRemoveItemAtURL:v17];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v18;
}

_removefile_state *closure #1 in static _FileOperations.removeFile(_:with:)(const char *a1, unint64_t a2, unint64_t a3, void *a4)
{
  if (a1)
  {
    return specialized static _FileOperations._removeFile(_:_:with:)(a1, a2, a3, a4);
  }

  if (_foundation_swift_url_feature_enabled())
  {

    v7 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
    v9 = v8;

    v21 = 3;
    type metadata accessor for _SwiftURL();
    v20[0] = 0;
    v20[1] = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v7, v9, 0, &v21, v20);
    v10 = _SwiftURL.convertingFileReference()();
    v12 = v11;
  }

  else
  {
    v13 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
    objc_allocWithZone(type metadata accessor for _BridgedURL());

    v14 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v13);
    if (!v14)
    {

      v17 = String._bridgeToObjectiveCImpl()();
      goto LABEL_10;
    }

    v15 = v14;
    v10 = _BridgedURL.convertingFileReference()();
    v12 = v16;
  }

  v17 = String._bridgeToObjectiveCImpl()();
  if (!v10)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  v19 = (*(v12 + 432))(ObjectType, v12);
  swift_unknownObjectRelease();
LABEL_11:
  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  return swift_willThrow();
}

uint64_t @objc closure #1 in closure #1 in static _FileOperations._removeFile(_:_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = String.init(cString:)();
  v6 = v5;
  v7 = *(a3 + 24);
  LODWORD(v4) = NSFileManager._shouldRemoveItemAtPath(_:)(v4, v6);

  return ~v4 & 1;
}

uint64_t closure #2 in closure #1 in static _FileOperations._removeFile(_:_:with:)(_removefile_state *a1, uint64_t a2, uint64_t a3)
{
  v135 = *MEMORY[0x1E69E9840];

  v5 = String.init(cString:)();
  v7 = v6;
  LODWORD(dst) = 0;
  removefile_state_get(a1, 5u, &dst);
  v128 = a3;
  if (dst > 29)
  {
    if (dst <= 65)
    {
      if (dst == 30)
      {
        v13 = 642;
        goto LABEL_29;
      }

      if (dst == 63)
      {
        v13 = 514;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (dst == 102)
    {
      v14 = 0;
      v15 = 512;
      goto LABEL_107;
    }

    if (dst == 69)
    {
LABEL_24:
      v13 = 640;
      goto LABEL_29;
    }

    if (dst != 66)
    {
      goto LABEL_28;
    }

    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
    {
LABEL_194:
      dst = 0;
      v134 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      dst = 0xD000000000000014;
      v134 = 0x80000001814813E0;
      v126 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v126);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v9 = @"NSPOSIXErrorDomain";
    v10 = v9;
    if (!isTaggedPointer)
    {
LABEL_48:
      LOBYTE(v129) = 0;
      dst = 0;
      if (__CFStringIsCF())
      {
        if (!dst)
        {
          v12 = v5;

          goto LABEL_129;
        }

        goto LABEL_126;
      }

      v44 = v10;
      String.init(_nativeStorage:)();
      if (!v45)
      {
        dst = [(__CFString *)v44 length];
        if (dst)
        {
LABEL_126:
          v12 = v5;
          String.init(_cocoaString:)();
          goto LABEL_129;
        }
      }

      v12 = v5;

LABEL_129:
      v80 = POSIXErrorCode.rawValue.getter();
      v81 = objc_allocWithZone(NSError);
      v82 = String._bridgeToObjectiveCImpl()();

      v83 = [v81 initWithDomain:v82 code:v80 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v84 = [v83 domain];
      if (!v84)
      {
        goto LABEL_141;
      }

      v85 = v84;
      v86 = _objc_isTaggedPointer(v84);
      v87 = v85;
      v88 = v87;
      if ((v86 & 1) == 0)
      {
LABEL_135:
        LOBYTE(v129) = 0;
        dst = 0;
        if (__CFStringIsCF())
        {
          if (dst)
          {
LABEL_150:
            v90 = String.init(_cocoaString:)();
            v92 = v99;
            goto LABEL_151;
          }
        }

        else
        {
          v93 = v88;
          v94 = String.init(_nativeStorage:)();
          if (v95)
          {
            v90 = v94;
            v92 = v95;

            goto LABEL_152;
          }

          dst = [v93 length];
          if (dst)
          {
            goto LABEL_150;
          }
        }

LABEL_141:
        v90 = 0;
        v92 = 0xE000000000000000;
        goto LABEL_152;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v87);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v90 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v92 = v91;

            goto LABEL_152;
          }

          goto LABEL_135;
        }

        v96 = [v88 UTF8String];
        if (!v96)
        {
LABEL_193:
          __break(1u);
          goto LABEL_194;
        }

        v97 = String.init(utf8String:)(v96);
        if (v98)
        {
          goto LABEL_146;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      v97 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v98)
      {
        [v88 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v90 = v129;
        v92 = v132;
        goto LABEL_151;
      }

LABEL_146:
      v90 = v97;
      v92 = v98;

LABEL_151:
LABEL_152:
      v100 = v10;
      v101 = v100;
      v5 = v12;
      if (isTaggedPointer)
      {
        v102 = _objc_getTaggedPointerTag(v100);
        switch(v102)
        {
          case 0:
            _CFIndirectTaggedPointerStringGetContents();
            v112 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (v113)
            {
              v103 = v112;
              v105 = v113;
            }

            else
            {
              [(__CFString *)v101 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v103 = v129;
              v105 = v132;
            }

            goto LABEL_172;
          case 0x16:
            v109 = [(__CFString *)v101 UTF8String];
            if (!v109)
            {
LABEL_191:
              __break(1u);
              goto LABEL_192;
            }

            v110 = String.init(utf8String:)(v109);
            a3 = v128;
            if (!v111)
            {
LABEL_192:
              __break(1u);
              goto LABEL_193;
            }

            v103 = v110;
            v105 = v111;

            goto LABEL_174;
          case 2:
            MEMORY[0x1EEE9AC00](v102);
            v103 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v105 = v104;

LABEL_172:
            a3 = v128;
            goto LABEL_174;
        }
      }

      dst = 0;
      if (__CFStringIsCF())
      {
        a3 = v128;
        if (dst)
        {
          goto LABEL_173;
        }

LABEL_163:
        v103 = 0;
        v105 = 0xE000000000000000;
        goto LABEL_174;
      }

      v106 = v101;
      v107 = String.init(_nativeStorage:)();
      a3 = v128;
      if (!v108)
      {
        dst = [(__CFString *)v106 length];
        if (dst)
        {
LABEL_173:
          v103 = String.init(_cocoaString:)();
          v105 = v114;
          goto LABEL_174;
        }

        goto LABEL_163;
      }

      v103 = v107;
      v105 = v108;

LABEL_174:
      if (v90 == v103 && v92 == v105)
      {
      }

      else
      {
        v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v115 & 1) == 0)
        {
          goto LABEL_186;
        }
      }

      URL.init(_fileManagerFailableFileURLWithPath:)(v5, v7, &dst);

      v116 = dst;
      v117 = v134;
      v118 = String._bridgeToObjectiveCImpl()();
      if (v116)
      {
        ObjectType = swift_getObjectType();
        v120 = (*(v117 + 432))(ObjectType, v117);
        swift_unknownObjectRelease();
      }

      else
      {
        v120 = 0;
      }

      v131 = v83;
      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
      v121 = v83;
      v122 = _getErrorEmbeddedNSError<A>(_:)();

      if (v122)
      {
      }

      else
      {
        swift_allocError();
        *v123 = v121;
      }

      v124 = objc_opt_self();
      v125 = _swift_stdlib_bridgeErrorToNSError();
      v70 = [v124 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_116;
    }

    v11 = _objc_getTaggedPointerTag(v9);
    if (v11)
    {
      if (v11 != 22)
      {
        if (v11 == 2)
        {
          v12 = v5;
          MEMORY[0x1EEE9AC00](v11);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_129;
        }

        goto LABEL_48;
      }

      v77 = [(__CFString *)v10 UTF8String];
      if (!v77)
      {
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      v12 = v5;
      String.init(utf8String:)(v77);
      if (v78)
      {
LABEL_124:

        goto LABEL_129;
      }

      __break(1u);
    }

    v12 = v5;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v79)
    {
      [(__CFString *)v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_129;
    }

    goto LABEL_124;
  }

  if (dst <= 12)
  {
    if (dst != 1)
    {
      if (dst == 2)
      {
        v13 = 4;
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_23:
    v13 = 513;
    goto LABEL_29;
  }

  switch(dst)
  {
    case 0xD:
      goto LABEL_23;
    case 0x11:
      v13 = 516;
      goto LABEL_29;
    case 0x1C:
      goto LABEL_24;
  }

LABEL_28:
  v13 = 512;
LABEL_29:
  v127 = v13;
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {
    goto LABEL_194;
  }

  v16 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
  v17 = @"NSPOSIXErrorDomain";
  v18 = v17;
  if (!v16)
  {
LABEL_35:
    LOBYTE(v129) = 0;
    dst = 0;
    if (!__CFStringIsCF())
    {
      v20 = v18;
      String.init(_nativeStorage:)();
      if (v21 || (dst = [(__CFString *)v20 length]) == 0)
      {

        goto LABEL_54;
      }

      goto LABEL_47;
    }

    if (dst)
    {
LABEL_47:
      String.init(_cocoaString:)();
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  v19 = _objc_getTaggedPointerTag(v17);
  if (!v19)
  {
    goto LABEL_44;
  }

  if (v19 != 22)
  {
    if (v19 == 2)
    {
      MEMORY[0x1EEE9AC00](v19);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_54;
    }

    goto LABEL_35;
  }

  v22 = [(__CFString *)v18 UTF8String];
  if (!v22)
  {
    __break(1u);
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  String.init(utf8String:)(v22);
  if (!v23)
  {
    __break(1u);
LABEL_44:
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v24)
    {
      [(__CFString *)v18 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_54;
    }
  }

LABEL_53:

LABEL_54:
  v25 = POSIXErrorCode.rawValue.getter();
  v26 = objc_allocWithZone(NSError);
  v27 = String._bridgeToObjectiveCImpl()();

  v14 = [v26 initWithDomain:v27 code:v25 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v28 = [v14 domain];
  if (!v28)
  {
    v34 = v5;
    goto LABEL_64;
  }

  v29 = v28;
  v30 = _objc_isTaggedPointer(v28);
  v31 = v29;
  v32 = v31;
  if ((v30 & 1) == 0)
  {
LABEL_60:
    LOBYTE(v129) = 0;
    dst = 0;
    if (__CFStringIsCF())
    {
      if (dst)
      {
        v34 = v5;
LABEL_79:
        v35 = String.init(_cocoaString:)();
        v37 = v46;
        goto LABEL_80;
      }

      v34 = v5;
    }

    else
    {
      v34 = v5;
      v38 = v32;
      v39 = String.init(_nativeStorage:)();
      if (v40)
      {
        v35 = v39;
        v37 = v40;

        goto LABEL_81;
      }

      dst = [v38 length];
      if (dst)
      {
        goto LABEL_79;
      }
    }

LABEL_64:
    v35 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_81;
  }

  v33 = _objc_getTaggedPointerTag(v31);
  if (v33)
  {
    if (v33 != 22)
    {
      if (v33 == 2)
      {
        v34 = v5;
        MEMORY[0x1EEE9AC00](v33);
        v35 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v37 = v36;

        goto LABEL_81;
      }

      goto LABEL_60;
    }

    v34 = v5;
    v41 = [v32 UTF8String];
    if (!v41)
    {
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    v42 = String.init(utf8String:)(v41);
    if (v43)
    {
      goto LABEL_72;
    }

    __break(1u);
  }

  v34 = v5;
  _CFIndirectTaggedPointerStringGetContents();
  v42 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (!v43)
  {
    [v32 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v35 = v129;
    v37 = v132;
    goto LABEL_80;
  }

LABEL_72:
  v35 = v42;
  v37 = v43;

LABEL_80:
LABEL_81:
  v47 = v18;
  v48 = v47;
  if (!v16)
  {
    goto LABEL_86;
  }

  v49 = _objc_getTaggedPointerTag(v47);
  if (!v49)
  {
    goto LABEL_96;
  }

  if (v49 == 22)
  {
    v56 = [(__CFString *)v48 UTF8String];
    if (v56)
    {
      v57 = String.init(utf8String:)(v56);
      v15 = v127;
      if (v58)
      {
LABEL_97:
        v50 = v57;
        v52 = v58;

        goto LABEL_102;
      }

      __break(1u);
LABEL_96:
      _CFIndirectTaggedPointerStringGetContents();
      v57 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      v15 = v127;
      if (!v58)
      {
        [(__CFString *)v48 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v50 = v129;
        v52 = v132;
        goto LABEL_102;
      }

      goto LABEL_97;
    }

    goto LABEL_188;
  }

  if (v49 != 2)
  {
LABEL_86:
    dst = 0;
    if (__CFStringIsCF())
    {
      v15 = v127;
      if (dst)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v53 = v48;
      v54 = String.init(_nativeStorage:)();
      v15 = v127;
      if (v55)
      {
        v50 = v54;
        v52 = v55;

        goto LABEL_102;
      }

      dst = [(__CFString *)v53 length];
      if (dst)
      {
LABEL_101:
        v50 = String.init(_cocoaString:)();
        v52 = v59;
        goto LABEL_102;
      }
    }

    v50 = 0;
    v52 = 0xE000000000000000;
    goto LABEL_102;
  }

  MEMORY[0x1EEE9AC00](v49);
  v50 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v52 = v51;

  v15 = v127;
LABEL_102:
  if (v35 != v50 || v37 != v52)
  {
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v34;
    if (v60)
    {
      goto LABEL_106;
    }

    __break(1u);
LABEL_186:
    __break(1u);
  }

  v5 = v34;
LABEL_106:
  a3 = v128;
LABEL_107:

  URL.init(_fileManagerFailableFileURLWithPath:)(v5, v7, &dst);

  v61 = dst;
  v62 = v134;
  v63 = String._bridgeToObjectiveCImpl()();
  if (v61)
  {
    v64 = swift_getObjectType();
    v65 = (*(v62 + 432))(v64, v62);
    swift_unknownObjectRelease();
    if (v14)
    {
LABEL_109:
      v130 = v14;
      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
      v14 = v14;
      v66 = _getErrorEmbeddedNSError<A>(_:)();

      if (v66)
      {
      }

      else
      {
        swift_allocError();
        *v68 = v14;
      }

      v67 = _swift_stdlib_bridgeErrorToNSError();
      goto LABEL_115;
    }
  }

  else
  {
    v65 = 0;
    if (v14)
    {
      goto LABEL_109;
    }
  }

  v67 = 0;
LABEL_115:
  v69 = objc_opt_self();
  v70 = [v69 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
LABEL_116:
  v71 = *(a3 + 24);
  v72 = v70;
  v73 = NSFileManager._shouldProceedAfter(error:removingItemAtPath:)(v72, v5, v7);

  if (v73)
  {

    v74 = 0;
  }

  else
  {
    v75 = *(a3 + 16);
    *(a3 + 16) = v72;

    v74 = 2;
    v72 = v75;
  }

  return v74;
}

uint64_t specialized closure #1 in static _FileOperations._linkOrCopyFile<A>(_:_:with:delegate:)(char *a1, int a2, char *__source, const char *a4, int a5, uint64_t a6)
{
  v285 = a6;
  v275 = a5;
  v293 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_314;
  }

  v7 = v6;
  v9 = a1;
  v10 = strlcpy(a1, __source, 0x402uLL);
  v283 = strlen(a4);
  v284 = v10;
  v282 = 1026 - v10;
  if (__OFSUB__(1026, v10))
  {
    __break(1u);
LABEL_307:
    __break(1u);
LABEL_308:
    __break(1u);
    goto LABEL_309;
  }

  type metadata accessor for _FTSSequence.Iterator();
  swift_initStackObject();
  v11 = _FTSSequence.Iterator.init(_:_:)(a4, 20);
  v12 = _FTSSequence.Iterator.next()();
  if (v15 == 0xFF)
  {
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v276 = @"NSPOSIXErrorDomain";
  if (v275)
  {
    v20 = 17694735;
  }

  else
  {
    v20 = 917519;
  }

  v252 = v20;
  v281 = v11;
  v280 = v9;
  while ((v19 & 1) == 0)
  {
    fts_path = v16->fts_path;
    if (!fts_path)
    {
      goto LABEL_313;
    }

    strlcpy(&v9[v284], &fts_path[v283], v282);
    if (v16->fts_info == 6)
    {
LABEL_8:
      _s10Foundation15_FileOperationsO26_safeCopyDirectoryMetadata33_0F974932CC9FBACA90476181130610233src3dst8delegate10extraFlagsySPys4Int8VG_ALxs5Int32VtKAA06LinkOrE8DelegateAELLRzlFZAC04copyB0_2to4with7optionsySS_SSSo13NSFileManagerCSo0yzE7OptionsVtKFZ0ebT0L_V_Tt3g5Tf4nnxn_nTm(fts_path, v9, v285, 0, 0x6B6E694C, &selRef_fileManager_shouldProceedAfterError_linkingItemAtURL_toURL_, &selRef_fileManager_shouldProceedAfterError_linkingItemAtPath_toPath_, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
      if (v7)
      {
      }

      goto LABEL_9;
    }

    v25 = String.init(cString:)();
    v27 = v26;
    v28 = String.init(cString:)();
    LOBYTE(v25) = NSFileManager._shouldCopyItemAtPath(_:to:)(v25, v27, v28, v29, &selRef_fileManager_shouldLinkItemAtURL_toURL_, &selRef_fileManager_shouldLinkItemAtPath_toPath_);

    fts_info = v16->fts_info;
    if ((v25 & 1) == 0)
    {
      if (fts_info == 1)
      {
        v9 = v280;
        if (!*(v281 + 40))
        {
          fts_set(*(v281 + 16), v16, 4);
          v31 = _FTSSequence.Iterator.next()();
          outlined consume of _FTSSequence.Element?(v31, v32, v33, v34);
        }

        goto LABEL_9;
      }

      goto LABEL_154;
    }

    if (v16->fts_info > 7u)
    {
      v9 = v280;
      if ((fts_info - 12) < 2)
      {
        if (!copyfile(fts_path, v280, 0, v252))
        {
          goto LABEL_9;
        }

        v278 = v18;
        LODWORD(v18) = MEMORY[0x1865CA7A0]();
        v57 = String.init(cString:)();
        v59 = v58;
        v60 = String.init(cString:)();
        v62 = v61;

        v273 = v59;
        v269 = v62;
        v272 = v57;
        v270 = v60;
        if (v18 > 27)
        {
          if (v18 <= 62)
          {
            if (v18 != 28)
            {
              if (v18 == 30)
              {
                v279 = v7;
                v258 = v57;
                v95 = 642;
                goto LABEL_170;
              }

              goto LABEL_133;
            }
          }

          else
          {
            if (v18 == 102)
            {
              v101 = 0;
              v258 = v57;
              v264 = 512;
              goto LABEL_176;
            }

            if (v18 != 69)
            {
              if (v18 == 63)
              {

                v63 = v60;
                Path = String._lastPathComponent.getter(v60, v62);
                v65 = v7;
                v67 = specialized String.withFileSystemRepresentation<A>(_:)(Path, v66);
                v68 = v63;

                v69 = specialized String.withFileSystemRepresentation<A>(_:)(v63, v62);
                v279 = v65;
                if (v67 <= 255)
                {
                  v59 = v273;
                  if (v69 < 1025)
                  {

                    v129 = &v293;
                  }

                  else
                  {

                    v59 = v62;
                    v129 = &v292;
                  }

                  v258 = *(v129 - 32);
                }

                else
                {

                  v59 = v62;
                  v258 = v68;
                }

                v95 = 514;
LABEL_170:
                v264 = v95;
                v133 = v17;
                if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                {
                  goto LABEL_316;
                }

                v134 = v276;
                static String._unconditionallyBridgeFromObjectiveC(_:)(v276);
                v135 = POSIXErrorCode.rawValue.getter();
                v136 = objc_allocWithZone(NSError);
                v137 = String._bridgeToObjectiveCImpl()();

                v138 = [v136 initWithDomain:v137 code:v135 userInfo:_NativeDictionary.bridged()()];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v274 = v138;
                v139 = [v138 domain];
                v140 = static String._unconditionallyBridgeFromObjectiveC(_:)(v139);
                v142 = v141;

                if (v140 == static String._unconditionallyBridgeFromObjectiveC(_:)(v134) && v142 == v143)
                {
                }

                else
                {
                  v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v144 & 1) == 0)
                  {
                    goto LABEL_308;
                  }
                }

                v17 = v133;
                v7 = v279;
                v101 = v274;
LABEL_176:

                URL.init(_fileManagerFailableFileURLWithPath:)(v258, v59, &v289);

                v145 = v289;
                v146 = v290;
                v279 = String._bridgeToObjectiveCImpl()();

                if (v145)
                {
                  ObjectType = swift_getObjectType();
                  v261 = (*(v146 + 432))(ObjectType, v146);
                  swift_unknownObjectRelease();
                }

                else
                {
                  v261 = 0;
                }

                v277 = v17;
                if (v101)
                {
                  v286 = v101;
                  lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                  v148 = v101;
                  v149 = _getErrorEmbeddedNSError<A>(_:)();

                  v274 = v148;
                  if (v149)
                  {
                    goto LABEL_200;
                  }

LABEL_219:
                  swift_allocError();
                  *v185 = v148;
LABEL_220:
                  v255 = _swift_stdlib_bridgeErrorToNSError();
                }

                else
                {
                  v274 = 0;
                  v255 = 0;
                }

                goto LABEL_221;
              }

LABEL_133:
              v279 = v7;
              v258 = v57;
              v95 = 512;
              goto LABEL_170;
            }
          }

          v279 = v7;
          v258 = v57;
          v95 = 640;
          goto LABEL_170;
        }

        if (v18 > 12)
        {
          if (v18 != 13)
          {
            if (v18 == 17)
            {
              v279 = v7;
              v258 = v57;
              v95 = 516;
              goto LABEL_170;
            }

            goto LABEL_133;
          }
        }

        else if (v18 != 1)
        {
          if (v18 == 2)
          {
            v279 = v7;
            v258 = v57;
            v95 = 4;
            goto LABEL_170;
          }

          goto LABEL_133;
        }

        v279 = v7;
        v258 = v57;
        v95 = 513;
        goto LABEL_170;
      }

      if (fts_info == 8)
      {
        goto LABEL_35;
      }

      if (fts_info == 10)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v9 = v280;
      if (v16->fts_info <= 3u)
      {
        if (fts_info != 1)
        {
          if (fts_info != 3)
          {
            goto LABEL_9;
          }

LABEL_35:
          if (v275)
          {
            if (!copyfile(fts_path, v9, 0, 0x10E000Fu))
            {
              goto LABEL_9;
            }

            v278 = v18;
            LODWORD(v18) = MEMORY[0x1865CA7A0]();
            v44 = String.init(cString:)();
            v46 = v45;
            v47 = String.init(cString:)();
            v49 = v48;

            v273 = v46;
            v269 = v49;
            v272 = v44;
            v270 = v47;
            if (v18 > 27)
            {
              if (v18 <= 62)
              {
                if (v18 != 28)
                {
                  if (v18 == 30)
                  {
                    v279 = v7;
                    v257 = v44;
                    v97 = 642;
                    goto LABEL_189;
                  }

                  goto LABEL_160;
                }
              }

              else
              {
                if (v18 == 102)
                {
                  v127 = 0;
                  v257 = v44;
                  v264 = 512;
                  goto LABEL_195;
                }

                if (v18 != 69)
                {
                  if (v18 == 63)
                  {

                    v50 = v47;
                    v51 = String._lastPathComponent.getter(v47, v49);
                    v52 = v7;
                    v54 = specialized String.withFileSystemRepresentation<A>(_:)(v51, v53);
                    v55 = v50;

                    v56 = specialized String.withFileSystemRepresentation<A>(_:)(v50, v49);
                    v279 = v52;
                    if (v54 <= 255)
                    {
                      v46 = v273;
                      if (v56 < 1025)
                      {

                        v131 = &v293;
                      }

                      else
                      {

                        v46 = v49;
                        v131 = &v292;
                      }

                      v257 = *(v131 - 32);
                    }

                    else
                    {

                      v46 = v49;
                      v257 = v55;
                    }

                    v97 = 514;
LABEL_189:
                    v264 = v97;
                    v151 = v17;
                    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                    {
                      goto LABEL_316;
                    }

                    v152 = v276;
                    static String._unconditionallyBridgeFromObjectiveC(_:)(v276);
                    v153 = POSIXErrorCode.rawValue.getter();
                    v154 = objc_allocWithZone(NSError);
                    v155 = String._bridgeToObjectiveCImpl()();

                    v156 = [v154 initWithDomain:v155 code:v153 userInfo:_NativeDictionary.bridged()()];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v274 = v156;
                    v157 = [v156 domain];
                    v158 = static String._unconditionallyBridgeFromObjectiveC(_:)(v157);
                    v160 = v159;

                    if (v158 == static String._unconditionallyBridgeFromObjectiveC(_:)(v152) && v160 == v161)
                    {
                    }

                    else
                    {
                      v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v162 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }

                    v17 = v151;
                    v7 = v279;
                    v127 = v274;
LABEL_195:

                    URL.init(_fileManagerFailableFileURLWithPath:)(v257, v46, &v289);

                    v163 = v289;
                    v164 = v290;
                    v165 = String._bridgeToObjectiveCImpl()();

                    if (v163)
                    {
                      v166 = swift_getObjectType();
                      v261 = (*(v164 + 432))(v166, v164);
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v261 = 0;
                    }

                    v277 = v17;
                    v279 = v165;
                    if (v127)
                    {
                      v286 = v127;
                      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                      v148 = v127;
                      v167 = _getErrorEmbeddedNSError<A>(_:)();

                      v274 = v148;
                      if (v167)
                      {
                        goto LABEL_200;
                      }

                      goto LABEL_219;
                    }

                    v274 = 0;
                    v255 = 0;
                    goto LABEL_221;
                  }

LABEL_160:
                  v279 = v7;
                  v257 = v44;
                  v97 = 512;
                  goto LABEL_189;
                }
              }

              v279 = v7;
              v257 = v44;
              v97 = 640;
              goto LABEL_189;
            }

            if (v18 > 12)
            {
              if (v18 != 13)
              {
                if (v18 == 17)
                {
                  v279 = v7;
                  v257 = v44;
                  v97 = 516;
                  goto LABEL_189;
                }

                goto LABEL_160;
              }
            }

            else if (v18 != 1)
            {
              if (v18 == 2)
              {
                v279 = v7;
                v257 = v44;
                v97 = 4;
                goto LABEL_189;
              }

              goto LABEL_160;
            }

            v279 = v7;
            v257 = v44;
            v97 = 513;
            goto LABEL_189;
          }

          if (!link(fts_path, v9))
          {
            goto LABEL_9;
          }

          v278 = v18;
          LODWORD(v18) = MEMORY[0x1865CA7A0]();
          v71 = String.init(cString:)();
          v73 = v72;
          v74 = String.init(cString:)();
          v76 = v75;

          v273 = v73;
          v269 = v76;
          v272 = v71;
          v270 = v74;
          if (v18 > 27)
          {
            if (v18 <= 62)
            {
              if (v18 != 28)
              {
                if (v18 == 30)
                {
                  v279 = v7;
                  v259 = v71;
                  v98 = 642;
                  goto LABEL_206;
                }

                goto LABEL_161;
              }
            }

            else
            {
              if (v18 == 102)
              {
                v128 = 0;
                v259 = v71;
                v264 = 512;
                goto LABEL_212;
              }

              if (v18 != 69)
              {
                if (v18 == 63)
                {

                  v77 = v74;
                  v78 = String._lastPathComponent.getter(v74, v76);
                  v79 = v7;
                  v81 = specialized String.withFileSystemRepresentation<A>(_:)(v78, v80);
                  v82 = v77;

                  v83 = specialized String.withFileSystemRepresentation<A>(_:)(v77, v76);
                  v279 = v79;
                  if (v81 <= 255)
                  {
                    v73 = v273;
                    if (v83 < 1025)
                    {

                      v132 = &v293;
                    }

                    else
                    {

                      v73 = v76;
                      v132 = &v292;
                    }

                    v259 = *(v132 - 32);
                  }

                  else
                  {

                    v73 = v76;
                    v259 = v82;
                  }

                  v98 = 514;
LABEL_206:
                  v264 = v98;
                  v168 = v17;
                  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                  {
                    goto LABEL_316;
                  }

                  v169 = v276;
                  static String._unconditionallyBridgeFromObjectiveC(_:)(v276);
                  v170 = POSIXErrorCode.rawValue.getter();
                  v171 = objc_allocWithZone(NSError);
                  v172 = String._bridgeToObjectiveCImpl()();

                  v173 = [v171 initWithDomain:v172 code:v170 userInfo:_NativeDictionary.bridged()()];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v274 = v173;
                  v174 = [v173 domain];
                  v175 = static String._unconditionallyBridgeFromObjectiveC(_:)(v174);
                  v177 = v176;

                  if (v175 == static String._unconditionallyBridgeFromObjectiveC(_:)(v169) && v177 == v178)
                  {
                  }

                  else
                  {
                    v179 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v179 & 1) == 0)
                    {
                      goto LABEL_312;
                    }
                  }

                  v17 = v168;
                  v7 = v279;
                  v128 = v274;
LABEL_212:

                  URL.init(_fileManagerFailableFileURLWithPath:)(v259, v73, &v289);

                  v180 = v289;
                  v181 = v290;
                  v182 = String._bridgeToObjectiveCImpl()();

                  if (v180)
                  {
                    v183 = swift_getObjectType();
                    v261 = (*(v181 + 432))(v183, v181);
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v261 = 0;
                  }

                  v277 = v17;
                  v279 = v182;
                  if (v128)
                  {
                    v286 = v128;
                    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                    v148 = v128;
                    v184 = _getErrorEmbeddedNSError<A>(_:)();

                    v274 = v148;
                    if (!v184)
                    {
                      goto LABEL_219;
                    }

LABEL_200:

                    goto LABEL_220;
                  }

                  v274 = 0;
                  v255 = 0;
LABEL_221:
                  v186 = objc_opt_self();
                  v187 = String._bridgeToObjectiveCImpl()();
                  v188 = String._bridgeToObjectiveCImpl()();
                  v266 = [v186 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  v189 = v266;
                  v190 = v189;
                  v191 = v272;
                  v192 = v273;
                  v193 = v270;
                  v194 = &v291;
LABEL_222:
                  v195 = NSFileManager._shouldProceedAfter(error:copyingItemAtPath:to:)(v189, v191, v192, v193, *(v194 - 32), &selRef_fileManager_shouldProceedAfterError_linkingItemAtURL_toURL_, &selRef_fileManager_shouldProceedAfterError_linkingItemAtPath_toPath_);

                  if ((v195 & 1) == 0)
                  {
                    swift_willThrow();
                    v228 = v277;
                    goto LABEL_304;
                  }

                  outlined consume of _FTSSequence.Element?(v16, v277, v278, v19);
                  v9 = v280;
                  goto LABEL_9;
                }

LABEL_161:
                v279 = v7;
                v259 = v71;
                v98 = 512;
                goto LABEL_206;
              }
            }

            v279 = v7;
            v259 = v71;
            v98 = 640;
            goto LABEL_206;
          }

          if (v18 > 12)
          {
            if (v18 != 13)
            {
              if (v18 == 17)
              {
                v279 = v7;
                v259 = v71;
                v98 = 516;
                goto LABEL_206;
              }

              goto LABEL_161;
            }
          }

          else if (v18 != 1)
          {
            if (v18 == 2)
            {
              v279 = v7;
              v259 = v71;
              v98 = 4;
              goto LABEL_206;
            }

            goto LABEL_161;
          }

          v279 = v7;
          v259 = v71;
          v98 = 513;
          goto LABEL_206;
        }

        if (!copyfile(fts_path, v280, 0, 0xE0008u))
        {
          goto LABEL_9;
        }

        v278 = v18;
        LODWORD(v18) = MEMORY[0x1865CA7A0]();
        v84 = String.init(cString:)();
        v86 = v85;
        v87 = String.init(cString:)();
        v89 = v88;

        v277 = v17;
        v274 = v86;
        v273 = v89;
        v272 = v84;
        v270 = v87;
        if (v18 > 27)
        {
          if (v18 <= 62)
          {
            if (v18 != 28)
            {
              if (v18 == 30)
              {
                v87 = v84;
                v99 = 642;
                goto LABEL_226;
              }

              goto LABEL_162;
            }
          }

          else
          {
            if (v18 == 102)
            {
              v130 = 0;
              v87 = v84;
              v269 = 512;
              goto LABEL_232;
            }

            if (v18 != 69)
            {
              if (v18 == 63)
              {

                v90 = String._lastPathComponent.getter(v87, v89);
                v92 = specialized String.withFileSystemRepresentation<A>(_:)(v90, v91);
                v93 = v273;

                v94 = specialized String.withFileSystemRepresentation<A>(_:)(v87, v93);
                if (v92 <= 255)
                {
                  v86 = v274;
                  v150 = v272;
                  if (v94 < 1025)
                  {

                    v87 = v150;
                  }

                  else
                  {

                    v86 = v93;
                    v87 = v270;
                  }
                }

                else
                {

                  v86 = v93;
                }

                v99 = 514;
LABEL_226:
                v269 = v99;
                v279 = v7;
                if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                {
                  goto LABEL_316;
                }

                v196 = v276;
                static String._unconditionallyBridgeFromObjectiveC(_:)(v276);
                v197 = POSIXErrorCode.rawValue.getter();
                v198 = objc_allocWithZone(NSError);
                v199 = String._bridgeToObjectiveCImpl()();

                v130 = [v198 initWithDomain:v199 code:v197 userInfo:_NativeDictionary.bridged()()];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v200 = [v130 domain];
                v201 = static String._unconditionallyBridgeFromObjectiveC(_:)(v200);
                v203 = v202;

                if (v201 == static String._unconditionallyBridgeFromObjectiveC(_:)(v196) && v203 == v204)
                {
                }

                else
                {
                  v205 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v205 & 1) == 0)
                  {
                    goto LABEL_310;
                  }
                }

                v7 = v279;
LABEL_232:

                URL.init(_fileManagerFailableFileURLWithPath:)(v87, v86, &v289);

                v206 = v289;
                v207 = v290;
                v267 = String._bridgeToObjectiveCImpl()();

                if (v206)
                {
                  v208 = swift_getObjectType();
                  v262 = (*(v207 + 432))(v208, v207);
                  swift_unknownObjectRelease();
                  if (v130)
                  {
                    goto LABEL_234;
                  }

LABEL_237:
                  v279 = v130;
                  v256 = 0;
                }

                else
                {
                  v262 = 0;
                  if (!v130)
                  {
                    goto LABEL_237;
                  }

LABEL_234:
                  v286 = v130;
                  lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                  v209 = v130;
                  v210 = _getErrorEmbeddedNSError<A>(_:)();

                  v279 = v209;
                  if (v210)
                  {
                  }

                  else
                  {
                    swift_allocError();
                    *v211 = v209;
                  }

                  v256 = _swift_stdlib_bridgeErrorToNSError();
                }

                v212 = objc_opt_self();
                v213 = String._bridgeToObjectiveCImpl()();
                v214 = String._bridgeToObjectiveCImpl()();
                v269 = [v212 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v189 = v269;
                v190 = v189;
                v191 = v272;
                v192 = v274;
                v193 = v270;
                v194 = &v294;
                goto LABEL_222;
              }

LABEL_162:
              v87 = v84;
              v99 = 512;
              goto LABEL_226;
            }
          }

          v87 = v84;
          v99 = 640;
          goto LABEL_226;
        }

        if (v18 > 12)
        {
          if (v18 != 13)
          {
            if (v18 == 17)
            {
              v87 = v84;
              v99 = 516;
              goto LABEL_226;
            }

            goto LABEL_162;
          }
        }

        else if (v18 != 1)
        {
          if (v18 == 2)
          {
            v87 = v84;
            v99 = 4;
            goto LABEL_226;
          }

          goto LABEL_162;
        }

        v87 = v84;
        v99 = 513;
        goto LABEL_226;
      }

      switch(fts_info)
      {
        case 4:
          goto LABEL_26;
        case 6:
          goto LABEL_8;
        case 7:
LABEL_26:
          v278 = v18;
          LODWORD(v18) = v16->fts_errno;
          v35 = String.init(cString:)();
          v37 = v36;
          v38 = String.init(cString:)();
          v40 = v39;

          v271 = v16;
          v272 = v37;
          v270 = v40;
          v274 = v35;
          v273 = v38;
          if (v18 > 27)
          {
            if (v18 <= 62)
            {
              if (v18 != 28)
              {
                if (v18 == 30)
                {
                  v263 = v35;
                  v70 = 642;
                  goto LABEL_137;
                }

                goto LABEL_85;
              }
            }

            else
            {
              if (v18 == 102)
              {
                v96 = 0;
                v269 = 512;
                goto LABEL_143;
              }

              if (v18 != 69)
              {
                if (v18 == 63)
                {

                  v41 = String._lastPathComponent.getter(v38, v40);
                  v279 = specialized String.withFileSystemRepresentation<A>(_:)(v41, v42);

                  v43 = specialized String.withFileSystemRepresentation<A>(_:)(v38, v40);
                  if (v279 <= 255)
                  {
                    v37 = v272;
                    if (v43 < 1025)
                    {

                      v100 = &v295;
                    }

                    else
                    {

                      v37 = v40;
                      v100 = &v294;
                    }

                    v263 = *(v100 - 32);
                  }

                  else
                  {

                    v37 = v40;
                    v263 = v38;
                  }

                  v70 = 514;
LABEL_137:
                  v269 = v70;
                  v279 = v7;
                  LODWORD(v16) = v19;
                  v102 = v17;
                  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                  {
                    goto LABEL_316;
                  }

                  v103 = v276;
                  static String._unconditionallyBridgeFromObjectiveC(_:)(v276);
                  v104 = POSIXErrorCode.rawValue.getter();
                  v105 = objc_allocWithZone(NSError);
                  v106 = String._bridgeToObjectiveCImpl()();

                  v96 = [v105 initWithDomain:v106 code:v104 userInfo:_NativeDictionary.bridged()()];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v107 = [v96 domain];
                  v108 = static String._unconditionallyBridgeFromObjectiveC(_:)(v107);
                  v110 = v109;

                  if (v108 == static String._unconditionallyBridgeFromObjectiveC(_:)(v103) && v110 == v111)
                  {

                    LOBYTE(v19) = v16;
                  }

                  else
                  {
                    v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    LOBYTE(v19) = v16;
                    if ((v112 & 1) == 0)
                    {
                      goto LABEL_307;
                    }
                  }

                  v17 = v102;
                  v7 = v279;
                  v35 = v263;
LABEL_143:

                  URL.init(_fileManagerFailableFileURLWithPath:)(v35, v37, &v289);

                  v113 = v289;
                  v114 = v290;
                  v265 = String._bridgeToObjectiveCImpl()();

                  if (v113)
                  {
                    v115 = swift_getObjectType();
                    v254 = (*(v114 + 432))(v115, v114);
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v254 = 0;
                  }

                  v277 = v17;
                  v279 = v7;
                  v268 = v19;
                  if (v96)
                  {
                    v286 = v96;
                    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                    v116 = v96;
                    v117 = _getErrorEmbeddedNSError<A>(_:)();

                    if (v117)
                    {
                    }

                    else
                    {
                      swift_allocError();
                      *v118 = v116;
                    }

                    v260 = v116;
                    v253 = _swift_stdlib_bridgeErrorToNSError();
                  }

                  else
                  {
                    v260 = 0;
                    v253 = 0;
                  }

                  v119 = objc_opt_self();
                  v120 = String._bridgeToObjectiveCImpl()();
                  v121 = v272;
                  v122 = String._bridgeToObjectiveCImpl()();
                  v123 = v270;
                  v124 = [v119 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  v125 = v124;
                  v126 = NSFileManager._shouldProceedAfter(error:copyingItemAtPath:to:)(v125, v274, v121, v273, v123, &selRef_fileManager_shouldProceedAfterError_linkingItemAtURL_toURL_, &selRef_fileManager_shouldProceedAfterError_linkingItemAtPath_toPath_);

                  if ((v126 & 1) == 0)
                  {
                    swift_willThrow();
                    v228 = v277;
                    LOBYTE(v19) = v268;
                    v16 = v271;
                    goto LABEL_304;
                  }

                  outlined consume of _FTSSequence.Element?(v271, v277, v278, v268);
                  v7 = v279;
LABEL_154:
                  v9 = v280;
                  break;
                }

LABEL_85:
                v263 = v35;
                v70 = 512;
                goto LABEL_137;
              }
            }

            v263 = v35;
            v70 = 640;
            goto LABEL_137;
          }

          if (v18 > 12)
          {
            if (v18 != 13)
            {
              if (v18 == 17)
              {
                v263 = v35;
                v70 = 516;
                goto LABEL_137;
              }

              goto LABEL_85;
            }
          }

          else if (v18 != 1)
          {
            if (v18 == 2)
            {
              v263 = v35;
              v70 = 4;
              goto LABEL_137;
            }

            goto LABEL_85;
          }

          v263 = v35;
          v70 = 513;
          goto LABEL_137;
      }
    }

LABEL_9:
    v16 = _FTSSequence.Iterator.next()();
    v17 = v21;
    v18 = v22;
    v19 = v23;
    if (v23 == 0xFF)
    {
    }
  }

  v278 = v18;
  if (v16 <= 26)
  {
    switch(v16)
    {
      case 1:
        goto LABEL_245;
      case 2:
        v215 = 260;
        break;
      case 0xD:
LABEL_245:
        v215 = 257;
        break;
      default:
LABEL_251:
        v215 = 256;
        break;
    }

LABEL_254:
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
    {
      goto LABEL_318;
    }

    v217 = v276;
    isTaggedPointer = _objc_isTaggedPointer(v276);
    v219 = v217;
    v220 = v219;
    v277 = v17;
    v285 = v215;
    if (!isTaggedPointer)
    {
      goto LABEL_260;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v219);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_290;
        }

LABEL_260:
        LOBYTE(v286) = 0;
        v289 = 0;
        LOBYTE(v287) = 0;
        v288 = 0;
        IsCF = __CFStringIsCF();
        if (!IsCF)
        {
          v223 = v220;
          String.init(_nativeStorage:)();
          if (v224 || (v289 = [(__CFString *)v223 length]) == 0)
          {

            goto LABEL_290;
          }

          goto LABEL_289;
        }

        if (v289)
        {
          if (v288 == 1)
          {
            if (v286)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_290:
            v232 = POSIXErrorCode.rawValue.getter();
            v233 = objc_allocWithZone(NSError);
            v234 = String._bridgeToObjectiveCImpl()();

            v216 = [v233 initWithDomain:v234 code:v232 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v235 = [v216 domain];
            v236 = static String._unconditionallyBridgeFromObjectiveC(_:)(v235);
            v238 = v237;

            if (v236 == static String._unconditionallyBridgeFromObjectiveC(_:)(v276) && v238 == v239)
            {

              v18 = v278;
              goto LABEL_294;
            }

            v240 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v18 = v278;
            if (v240)
            {
LABEL_294:
              v17 = v277;
              goto LABEL_295;
            }

LABEL_309:
            __break(1u);
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
          }

          if (v287)
          {
            if (v286 != 1)
            {
              IsCF = [(__CFString *)v220 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v229 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v231 = HIBYTE(v230) & 0xF;
            if ((v230 & 0x2000000000000000) == 0)
            {
              v231 = v229 & 0xFFFFFFFFFFFFLL;
            }

            if (v231)
            {
              goto LABEL_287;
            }
          }

LABEL_289:
          String.init(_cocoaString:)();
          goto LABEL_290;
        }

LABEL_287:

        goto LABEL_290;
      }

      v225 = [(__CFString *)v220 UTF8String];
      if (!v225)
      {
        __break(1u);
LABEL_316:
        v289 = 0xD000000000000014;
        v290 = 0x80000001814813E0;
        for (LODWORD(v286) = v18; ; LODWORD(v286) = v16)
        {
          v251 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v251);

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_318:
          v289 = 0;
          v290 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);

          v289 = 0xD000000000000014;
          v290 = 0x80000001814813E0;
        }
      }

      String.init(utf8String:)(v225);
      if (v226)
      {
        goto LABEL_287;
      }

      __break(1u);
    }

    v287 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v227)
    {
      [(__CFString *)v220 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_290;
    }

    goto LABEL_287;
  }

  if (v16 == 27)
  {
    v215 = 263;
    goto LABEL_254;
  }

  if (v16 == 63)
  {
    v215 = 258;
    goto LABEL_254;
  }

  if (v16 != 102)
  {
    goto LABEL_251;
  }

  v216 = 0;
  v285 = 256;
LABEL_295:
  outlined copy of _FTSSequence.Element(v16, v17, v18, 1);
  URL.init(_fileManagerFailableFileURLWithPath:)(v17, v18, &v289);
  outlined consume of _FTSSequence.Element?(v16, v17, v18, v19);
  v241 = v289;
  v242 = v290;
  v243 = String._bridgeToObjectiveCImpl()();
  if (v241)
  {
    v244 = swift_getObjectType();
    v245 = (*(v242 + 432))(v244, v242);
    swift_unknownObjectRelease();
    v246 = v17;
    if (v216)
    {
      goto LABEL_297;
    }

LABEL_300:
    v248 = 0;
  }

  else
  {
    v245 = 0;
    v246 = v17;
    if (!v216)
    {
      goto LABEL_300;
    }

LABEL_297:
    v286 = v216;
    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
    v216 = v216;
    v247 = _getErrorEmbeddedNSError<A>(_:)();

    if (v247)
    {
    }

    else
    {
      swift_allocError();
      *v249 = v216;
    }

    v248 = _swift_stdlib_bridgeErrorToNSError();
  }

  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  swift_willThrow();
  v228 = v246;
LABEL_304:
  outlined consume of _FTSSequence.Element?(v16, v228, v278, v19);
}

uint64_t specialized closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v28[2] = v8;
    v28[3] = v9;
    v28[4] = v10;
    v28[5] = v11;
    v28[6] = &v30;
    return specialized String.withFileSystemRepresentation<A>(_:)(partial apply for specialized closure #1 in closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:), v28, v8, v9);
  }

  if (_foundation_swift_url_feature_enabled())
  {

    v15 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
    v17 = v16;

    v32 = 3;
    type metadata accessor for _SwiftURL();
    v29[0] = 0;
    v29[1] = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v15, v17, 0, &v32, v29);
    v18 = _SwiftURL.convertingFileReference()();
    v20 = v19;
  }

  else
  {
    v21 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
    objc_allocWithZone(type metadata accessor for _BridgedURL());

    v22 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v21);
    if (!v22)
    {

      v25 = String._bridgeToObjectiveCImpl()();
      goto LABEL_10;
    }

    v23 = v22;
    v18 = _BridgedURL.convertingFileReference()();
    v20 = v24;
  }

  v25 = String._bridgeToObjectiveCImpl()();
  if (!v18)
  {
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  v27 = (*(v20 + 432))(ObjectType, v20);
  swift_unknownObjectRelease();
LABEL_11:
  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  return swift_willThrow();
}

uint64_t specialized closure #1 in closure #1 in static _FileOperations.linkOrCopyFile<A>(_:dst:with:delegate:)(char *a1, unint64_t a2, unint64_t a3, const char *a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a1)
  {
    return _s10Foundation15_FileOperationsO011_linkOrCopyB033_0F974932CC9FBACA9047618113061023LL__4with8delegateySPys4Int8VG_AJSo13NSFileManagerCxtKAA04LinkeF8DelegateAELLRzlFZAC0dB0_2toAFySS_SSALtKFZ0obP0L_V_Tt3g5Tf4nndn_n(a4, a1, a6 & 1, a7);
  }

  if (_foundation_swift_url_feature_enabled())
  {

    v10 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
    v12 = v11;

    v24 = 3;
    type metadata accessor for _SwiftURL();
    v23[0] = 0;
    v23[1] = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v10, v12, 0, &v24, v23);
    v13 = _SwiftURL.convertingFileReference()();
    v15 = v14;
  }

  else
  {
    v16 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
    objc_allocWithZone(type metadata accessor for _BridgedURL());

    v17 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v16);
    if (!v17)
    {

      v20 = String._bridgeToObjectiveCImpl()();
      goto LABEL_10;
    }

    v18 = v17;
    v13 = _BridgedURL.convertingFileReference()();
    v15 = v19;
  }

  v20 = String._bridgeToObjectiveCImpl()();
  if (!v13)
  {
LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  v22 = (*(v15 + 432))(ObjectType, v15);
  swift_unknownObjectRelease();
LABEL_11:
  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  return swift_willThrow();
}

size_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, size_t *a5@<X8>)
{
  return specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(a1, a2, a3, a4, 0x401uLL, a5);
}

{
  return specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(a1, a2, a3, a4, 0x100uLL, a5);
}

size_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, size_t a5@<X4>, size_t *a6@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    result = 0;
    goto LABEL_5;
  }

  if (a1)
  {
    result = strnlen(a1, a5);
LABEL_5:
    *a6 = result;
    return result;
  }

  __break(1u);
  return result;
}

void _s10Foundation15_FileOperationsO26_safeCopyDirectoryMetadata33_0F974932CC9FBACA9047618113061023LL3src3dst8delegate10extraFlagsySPys4Int8VG_ALxs5Int32VtKAA06LinkOrE8DelegateAELLRzlFZAC04copyB0_2to4with7optionsySS_SSSo13NSFileManagerCSo0yzE7OptionsVtKFZ0ebT0L_V_Tt3g5Tf4nnxn_nTm(void *a1, unint64_t Path, uint64_t a3, unint64_t a4, id a5, SEL *a6, SEL *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v257 = a6;
  v258 = a7;
  v19 = v16;
  v256 = a3;
  v265 = *MEMORY[0x1E69E9840];
  v23 = open(_:_:)();
  if ((v23 & 0x80000000) != 0)
  {
    v255 = v16;
    LODWORD(v19) = MEMORY[0x1865CA7A0]();
    a4 = String.init(cString:)();
    v24 = v41;
    v254 = String.init(cString:)();
    v43 = v42;

    v251 = v24;
    v252 = v43;
    if (v19 > 27)
    {
      if (v19 > 62)
      {
        if (v19 == 102)
        {
          v68 = 0;
          v250 = 512;
          a1 = v24;
          v24 = a4;
          v69 = a4;
          goto LABEL_285;
        }

        if (v19 != 69)
        {
          if (v19 == 63)
          {

            Path = String._lastPathComponent.getter(v254, v43);
            a1 = v44;
            if ((v44 & 0x1000000000000000) != 0)
            {
              goto LABEL_300;
            }

            if ((v44 & 0x2000000000000000) != 0)
            {
              v45 = HIBYTE(v44) & 0xF;
            }

            else
            {
              v45 = Path & 0xFFFFFFFFFFFFLL;
            }

            goto LABEL_28;
          }

          goto LABEL_84;
        }

        goto LABEL_66;
      }

      if (v19 == 28)
      {
LABEL_66:
        v65 = 640;
        goto LABEL_85;
      }

      if (v19 == 30)
      {
        v65 = 642;
        goto LABEL_85;
      }

LABEL_84:
      v65 = 512;
      goto LABEL_85;
    }

    if (v19 > 12)
    {
      if (v19 != 13)
      {
        if (v19 != 17)
        {
          goto LABEL_84;
        }

        v65 = 516;
        goto LABEL_85;
      }
    }

    else if (v19 != 1)
    {
      if (v19 != 2)
      {
        goto LABEL_84;
      }

      v65 = 4;
LABEL_85:
      v249 = a4;
      v250 = v65;
      a1 = v24;
      goto LABEL_86;
    }

    v65 = 513;
    goto LABEL_85;
  }

  v24 = v23;
  v25 = open(_:_:)();
  LODWORD(v254) = v24;
  if ((v25 & 0x80000000) != 0)
  {
    v51 = MEMORY[0x1865CA7A0]();
    v252 = String.init(cString:)();
    a1 = v52;
    v53 = String.init(cString:)();
    v250 = v54;
    v251 = v53;

    v249 = a1;
    if (v51 > 27)
    {
      if (v51 <= 62)
      {
        if (v51 != 28)
        {
          if (v51 == 30)
          {
            v24 = a5;
            v67 = 642;
            goto LABEL_133;
          }

          goto LABEL_132;
        }
      }

      else
      {
        if (v51 == 102)
        {
          v255 = v16;
          v17 = 0;
          v248 = 512;
          v109 = v252;
          goto LABEL_264;
        }

        if (v51 != 69)
        {
          if (v51 == 63)
          {
            v55 = v250;

            v57 = String._lastPathComponent.getter(v251, v250);
            v58 = v56;
            if ((v56 & 0x1000000000000000) != 0)
            {
              isStackAllocationSafe = String.UTF8View._foreignCount()();
            }

            else if ((v56 & 0x2000000000000000) != 0)
            {
              isStackAllocationSafe = HIBYTE(v56) & 0xF;
            }

            else
            {
              isStackAllocationSafe = v57 & 0xFFFFFFFFFFFFLL;
            }

            v60 = 3 * isStackAllocationSafe;
            if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
            {
              if (v60 < -1)
              {
LABEL_338:
                __break(1u);
LABEL_339:
                __break(1u);
              }

              v56 = v60 + 1;
              if (v60 < 1024)
              {
                goto LABEL_45;
              }
            }

            else
            {
              __break(1u);
            }

            v238 = v56;
            isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
            if ((isStackAllocationSafe & 1) == 0)
            {
              v239 = swift_slowAlloc();
              specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v239, v238, v57, v58, 0x100uLL, &v263);
              if (v16)
              {
                v225 = v239;
                goto LABEL_351;
              }

              v19 = 0;
              MEMORY[0x1865D2690](v239, -1, -1);

              v64 = v263;
              v55 = v250;
              if ((v250 & 0x1000000000000000) == 0)
              {
                goto LABEL_194;
              }

              goto LABEL_326;
            }

LABEL_45:
            MEMORY[0x1EEE9AC00](isStackAllocationSafe);
            v62 = &v244 - v61;
            if (String._fileSystemRepresentation(into:)(&v244 - v61, v63, v57, v58))
            {
              v64 = strnlen(v62, 0x100uLL);
            }

            else
            {
              v64 = 0;
            }

            if ((v55 & 0x1000000000000000) == 0)
            {
LABEL_194:
              if ((v55 & 0x2000000000000000) != 0)
              {
                v139 = HIBYTE(v55) & 0xF;
              }

              else
              {
                v139 = v251 & 0xFFFFFFFFFFFFLL;
              }

LABEL_197:
              v140 = 3 * v139;
              if ((v139 * 3) >> 64 == (3 * v139) >> 63)
              {
                if (v140 < -1)
                {
                  goto LABEL_339;
                }

                v138 = v140 + 1;
                if (v140 < 1024)
                {
                  goto LABEL_200;
                }
              }

              else
              {
                __break(1u);
              }

              v240 = v138;
              v139 = swift_stdlib_isStackAllocationSafe();
              if ((v139 & 1) == 0)
              {
                v241 = v240;
                v228 = swift_slowAlloc();
                specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v228, v241, v251, v55, 0x401uLL, &v263);
                if (v19)
                {
                  goto LABEL_348;
                }

                v19 = 0;
                MEMORY[0x1865D2690](v228, -1, -1);
                v144 = v263;
                a1 = v249;
                v55 = v250;
                if (v64 > 255)
                {
                  goto LABEL_204;
                }

LABEL_331:
                v24 = a5;
                if (v144 > 1024)
                {

                  v248 = 514;
                  a1 = v250;
                  v110 = v251;
LABEL_134:
                  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                  {
                    v263 = 0;
                    v264 = 0xE000000000000000;
                    _StringGuts.grow(_:)(22);

                    v263 = 0xD000000000000014;
                    v264 = 0x80000001814813E0;
                    LODWORD(v259) = v51;
                    goto LABEL_347;
                  }

                  isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
                  v112 = @"NSPOSIXErrorDomain";
                  v113 = v112;
                  v247 = v110;
                  if (!isTaggedPointer)
                  {
                    goto LABEL_140;
                  }

                  TaggedPointerTag = _objc_getTaggedPointerTag(v112);
                  if (TaggedPointerTag)
                  {
                    if (TaggedPointerTag != 22)
                    {
                      if (TaggedPointerTag == 2)
                      {
                        MEMORY[0x1EEE9AC00](TaggedPointerTag);
                        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v255 = v19;

                        goto LABEL_259;
                      }

LABEL_140:
                      LOBYTE(v259) = 0;
                      v263 = 0;
                      LOBYTE(v261) = 0;
                      v262 = 0;
                      IsCF = __CFStringIsCF();
                      v255 = v19;
                      if (IsCF)
                      {
                        if (!v263)
                        {
LABEL_249:

                          goto LABEL_259;
                        }

                        if (v262 == 1)
                        {
                          if (v259)
                          {
                            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                          }

                          else
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                          }

                          String.init<A>(_immortalCocoaString:count:encoding:)();
                          goto LABEL_259;
                        }

                        if (v261)
                        {
                          if (v259 != 1)
                          {
                            IsCF = [(__CFString *)v113 lengthOfBytesUsingEncoding:4];
                          }

                          MEMORY[0x1EEE9AC00](IsCF);
                          v121 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v255 = v19;
                          v175 = HIBYTE(v174) & 0xF;
                          if ((v174 & 0x2000000000000000) == 0)
                          {
                            v175 = v121 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v175)
                          {
                            goto LABEL_249;
                          }
                        }
                      }

                      else
                      {
                        v116 = v113;
                        String.init(_nativeStorage:)();
                        if (v117 || (v263 = [(__CFString *)v116 length]) == 0)
                        {

                          goto LABEL_259;
                        }
                      }

                      String.init(_cocoaString:)();
LABEL_259:
                      Path = POSIXErrorCode.rawValue.getter();
                      v180 = objc_allocWithZone(NSError);
                      v181 = String._bridgeToObjectiveCImpl()();

                      v17 = [v180 initWithDomain:v181 code:Path userInfo:_NativeDictionary.bridged()()];
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      v182 = [v17 domain];
                      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)(v182);
                      v184 = v183;

                      v185 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
                      a4 = v186;
                      if (v19 == v185 && v184 == v186)
                      {
                      }

                      else
                      {
                        v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        a5 = v24;
                        if ((v187 & 1) == 0)
                        {
                          goto LABEL_299;
                        }
                      }

                      LODWORD(v24) = v254;
                      v109 = v247;
LABEL_264:

                      URL.init(_fileManagerFailableFileURLWithPath:)(v109, a1, &v263);

                      v188 = v263;
                      v189 = v264;
                      v254 = String._bridgeToObjectiveCImpl()();

                      if (v188)
                      {
                        ObjectType = swift_getObjectType();
                        v246 = (*(v189 + 432))(ObjectType, v189);
                        swift_unknownObjectRelease();
                        if (v17)
                        {
LABEL_266:
                          v259 = v17;
                          lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                          v191 = v17;
                          v192 = _getErrorEmbeddedNSError<A>(_:)();

                          if (v192)
                          {
                          }

                          else
                          {
                            swift_allocError();
                            *v193 = v191;
                          }

                          v247 = v191;
                          v245 = _swift_stdlib_bridgeErrorToNSError();
                          goto LABEL_272;
                        }
                      }

                      else
                      {
                        v246 = 0;
                        if (v17)
                        {
                          goto LABEL_266;
                        }
                      }

                      v247 = v17;
                      v245 = 0;
LABEL_272:
                      v194 = objc_opt_self();
                      v195 = String._bridgeToObjectiveCImpl()();
                      v196 = v249;
                      v197 = String._bridgeToObjectiveCImpl()();
                      v198 = v250;
                      v243 = String._bridgeToObjectiveCImpl()();
                      v199 = v194;
                      v200 = v246;
                      v201 = v245;
                      v253 = [v199 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                      swift_unknownObjectRelease();

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();

                      v202 = v253;
                      LOBYTE(v200) = NSFileManager._shouldProceedAfter(error:copyingItemAtPath:to:)(v202, v252, v196, v251, v198, v257, v258);

                      if (v200)
                      {

                        close(v24);
                        return;
                      }

                      swift_willThrow();
                      goto LABEL_275;
                    }

                    v255 = v19;
                    v118 = [(__CFString *)v113 UTF8String];
                    if (!v118)
                    {
                      goto LABEL_341;
                    }

                    String.init(utf8String:)(v118);
                    if (v119)
                    {
                      goto LABEL_249;
                    }

                    __break(1u);
                  }

                  v255 = v19;
                  v261 = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v120)
                  {
                    [(__CFString *)v113 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    goto LABEL_259;
                  }

                  goto LABEL_249;
                }

                v67 = 514;
LABEL_133:
                v248 = v67;
                v110 = v252;
                goto LABEL_134;
              }

LABEL_200:
              MEMORY[0x1EEE9AC00](v139);
              v142 = &v244 - v141;
              if (String._fileSystemRepresentation(into:)(&v244 - v141, v143, v251, v55))
              {
                v144 = strnlen(v142, 0x401uLL);
              }

              else
              {
                v144 = 0;
              }

              a1 = v249;
              if (v64 > 255)
              {
LABEL_204:
                v145 = v55;
                v24 = a5;

                v248 = 514;
                a1 = v145;
                v110 = v251;
                goto LABEL_134;
              }

              goto LABEL_331;
            }

LABEL_326:
            v139 = String.UTF8View._foreignCount()();
            goto LABEL_197;
          }

LABEL_132:
          v24 = a5;
          v67 = 512;
          goto LABEL_133;
        }
      }

      v24 = a5;
      v67 = 640;
      goto LABEL_133;
    }

    if (v51 > 12)
    {
      if (v51 != 13)
      {
        if (v51 == 17)
        {
          v24 = a5;
          v67 = 516;
          goto LABEL_133;
        }

        goto LABEL_132;
      }
    }

    else if (v51 != 1)
    {
      if (v51 == 2)
      {
        v24 = a5;
        v67 = 4;
        goto LABEL_133;
      }

      goto LABEL_132;
    }

    v24 = a5;
    v67 = 513;
    goto LABEL_133;
  }

  if ((a4 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_297;
  }

  v26 = v25;
  if (!fcopyfile(v24, v25, 0, a4 | 0xC0007))
  {
LABEL_129:
    close(v26);
LABEL_275:
    close(v24);
    return;
  }

  v253 = a5;
  v27 = MEMORY[0x1865CA7A0]();
  v28 = String.init(cString:)();
  a1 = v29;
  v252 = String.init(cString:)();
  v31 = v30;

  v249 = a1;
  v250 = v31;
  v255 = v19;
  LODWORD(v248) = v26;
  v251 = v28;
  if (v27 > 27)
  {
    if (v27 > 62)
    {
      if (v27 == 102)
      {
        v81 = 0;
        v247 = 512;
        v19 = v28;
        goto LABEL_119;
      }

      if (v27 != 69)
      {
        if (v27 == 63)
        {

          v33 = String._lastPathComponent.getter(v252, v31);
          v34 = v32;
          if ((v32 & 0x1000000000000000) != 0)
          {
            v35 = String.UTF8View._foreignCount()();
          }

          else if ((v32 & 0x2000000000000000) != 0)
          {
            v35 = HIBYTE(v32) & 0xF;
          }

          else
          {
            v35 = v33 & 0xFFFFFFFFFFFFLL;
          }

          v36 = 3 * v35;
          if ((v35 * 3) >> 64 == (3 * v35) >> 63)
          {
            if (v36 < -1)
            {
LABEL_336:
              __break(1u);
              goto LABEL_337;
            }

            v26 = v28;
            v32 = v36 + 1;
            if (v36 < 1024)
            {
              goto LABEL_17;
            }
          }

          else
          {
            __break(1u);
          }

          v230 = v32;
          v35 = swift_stdlib_isStackAllocationSafe();
          v231 = v230;
          if ((v35 & 1) == 0)
          {
            v232 = v19;
            v233 = v231;
            v234 = swift_slowAlloc();
            specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v234, v233, v33, v34, 0x100uLL, &v263);
            if (v232)
            {
              v225 = v234;
              goto LABEL_351;
            }

            v19 = 0;
            MEMORY[0x1865D2690](v234, -1, -1);

            v40 = v263;
            v131 = v250;
            if ((v250 & 0x1000000000000000) == 0)
            {
              goto LABEL_179;
            }

            goto LABEL_316;
          }

LABEL_17:
          MEMORY[0x1EEE9AC00](v35);
          v38 = &v244 - v37;
          if (String._fileSystemRepresentation(into:)(&v244 - v37, v39, v33, v34))
          {
            v40 = strnlen(v38, 0x100uLL);
          }

          else
          {
            v40 = 0;
          }

          v131 = v250;
          if ((v250 & 0x1000000000000000) == 0)
          {
LABEL_179:
            if ((v131 & 0x2000000000000000) != 0)
            {
              v132 = HIBYTE(v131) & 0xF;
            }

            else
            {
              v132 = v252 & 0xFFFFFFFFFFFFLL;
            }

LABEL_182:
            v133 = 3 * v132;
            if ((v132 * 3) >> 64 == (3 * v132) >> 63)
            {
              if (v133 < -1)
              {
LABEL_337:
                __break(1u);
                goto LABEL_338;
              }

              v130 = v133 + 1;
              if (v133 < 1024)
              {
                goto LABEL_185;
              }
            }

            else
            {
              __break(1u);
            }

            v235 = v130;
            v132 = swift_stdlib_isStackAllocationSafe();
            if ((v132 & 1) == 0)
            {
              v236 = v131;
              v237 = v235;
              v228 = swift_slowAlloc();
              specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v228, v237, v252, v236, 0x401uLL, &v263);
              if (v19)
              {
                goto LABEL_348;
              }

              v19 = 0;
              MEMORY[0x1865D2690](v228, -1, -1);
              v137 = v263;
              a1 = v249;
              v131 = v250;
              goto LABEL_189;
            }

LABEL_185:
            MEMORY[0x1EEE9AC00](v132);
            v135 = &v244 - v134;
            if (String._fileSystemRepresentation(into:)(&v244 - v134, v136, v252, v131))
            {
              v137 = strnlen(v135, 0x401uLL);
            }

            else
            {
              v137 = 0;
            }

            a1 = v249;
LABEL_189:
            v255 = v19;
            if (v40 <= 255 && v137 < 1025)
            {

              v247 = 514;
              v19 = v26;
            }

            else
            {

              v247 = 514;
              a1 = v131;
              v19 = v252;
            }

            goto LABEL_113;
          }

LABEL_316:
          v132 = String.UTF8View._foreignCount()();
          goto LABEL_182;
        }

        goto LABEL_111;
      }

      goto LABEL_80;
    }

    if (v27 == 28)
    {
LABEL_80:
      v66 = 640;
      goto LABEL_112;
    }

    if (v27 == 30)
    {
      v66 = 642;
      goto LABEL_112;
    }

LABEL_111:
    v66 = 512;
    goto LABEL_112;
  }

  if (v27 > 12)
  {
    if (v27 != 13)
    {
      if (v27 != 17)
      {
        goto LABEL_111;
      }

      v66 = 516;
      goto LABEL_112;
    }

LABEL_79:
    v66 = 513;
    goto LABEL_112;
  }

  if (v27 == 1)
  {
    goto LABEL_79;
  }

  if (v27 != 2)
  {
    goto LABEL_111;
  }

  v66 = 4;
LABEL_112:
  v247 = v66;
  v19 = v28;
LABEL_113:
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {
    v263 = 0;
    v264 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v263 = 0xD000000000000014;
    v264 = 0x80000001814813E0;
    LODWORD(v259) = v27;
    goto LABEL_347;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
  v82 = POSIXErrorCode.rawValue.getter();
  a5 = 0x1E69EE000;
  v24 = objc_allocWithZone(NSError);
  v83 = String._bridgeToObjectiveCImpl()();

  v84 = [v24 initWithDomain:v83 code:v82 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v85 = v84;
  v86 = [v84 domain];
  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)(v86);
  Path = v87;

  v88 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
  v17 = v89;
  if (a4 == v88 && Path == v89)
  {

LABEL_118:
    v81 = v85;
LABEL_119:

    URL.init(_fileManagerFailableFileURLWithPath:)(v19, a1, &v263);

    v91 = v263;
    v92 = v264;
    v93 = String._bridgeToObjectiveCImpl()();

    if (v91)
    {
      v94 = swift_getObjectType();
      v245 = (*(v92 + 432))(v94, v92);
      swift_unknownObjectRelease();
      if (v81)
      {
LABEL_121:
        v259 = v81;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v95 = v81;
        v96 = _getErrorEmbeddedNSError<A>(_:)();

        v246 = v95;
        if (v96)
        {
        }

        else
        {
          swift_allocError();
          *v98 = v95;
        }

        v97 = v93;
        v81 = _swift_stdlib_bridgeErrorToNSError();
        goto LABEL_127;
      }
    }

    else
    {
      v245 = 0;
      if (v81)
      {
        goto LABEL_121;
      }
    }

    v97 = v93;
    v246 = v81;
LABEL_127:
    v99 = objc_opt_self();
    v100 = String._bridgeToObjectiveCImpl()();
    v101 = v249;
    v102 = String._bridgeToObjectiveCImpl()();
    v103 = v250;
    v104 = String._bridgeToObjectiveCImpl()();
    v105 = v245;
    v106 = [v99 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v107 = v106;
    v108 = NSFileManager._shouldProceedAfter(error:copyingItemAtPath:to:)(v107, v251, v101, v252, v103, v257, v258);

    if ((v108 & 1) == 0)
    {
      swift_willThrow();
      close(v248);
      close(v254);
      return;
    }

    LODWORD(v24) = v254;
    LODWORD(v26) = v248;
    goto LABEL_129;
  }

  v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v90)
  {
    goto LABEL_118;
  }

  while (1)
  {
    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    v45 = String.UTF8View._foreignCount()();
LABEL_28:
    v46 = 3 * v45;
    if ((v45 * 3) >> 64 != (3 * v45) >> 63)
    {
      __break(1u);
      goto LABEL_302;
    }

    if (v46 < -1)
    {
      __break(1u);
LABEL_335:
      __break(1u);
      goto LABEL_336;
    }

    v17 = a4;
    v44 = v46 + 1;
    if (v46 < 1024)
    {
      goto LABEL_31;
    }

LABEL_302:
    v221 = v44;
    v45 = swift_stdlib_isStackAllocationSafe();
    if (v45)
    {
LABEL_31:
      MEMORY[0x1EEE9AC00](v45);
      v48 = &v244 - v47;
      if (String._fileSystemRepresentation(into:)(&v244 - v47, v49, Path, a1))
      {
        v50 = strnlen(v48, 0x100uLL);
      }

      else
      {
        v50 = 0;
      }

      v123 = v252;
      if ((v252 & 0x1000000000000000) != 0)
      {
        goto LABEL_305;
      }

      goto LABEL_160;
    }

    v222 = v221;
    v223 = swift_slowAlloc();
    v224 = v255;
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v223, v222, Path, a1, 0x100uLL, &v263);
    v255 = v224;
    v225 = v223;
    if (v224)
    {
      goto LABEL_351;
    }

    MEMORY[0x1865D2690](v223, -1, -1);

    v50 = v263;
    v123 = v252;
    if ((v252 & 0x1000000000000000) != 0)
    {
LABEL_305:
      v124 = String.UTF8View._foreignCount()();
      goto LABEL_163;
    }

LABEL_160:
    v124 = (v123 & 0x2000000000000000) != 0 ? HIBYTE(v123) & 0xF : v254 & 0xFFFFFFFFFFFFLL;
LABEL_163:
    v125 = 3 * v124;
    if ((v124 * 3) >> 64 == (3 * v124) >> 63)
    {
      if (v125 < -1)
      {
        goto LABEL_335;
      }

      v122 = v125 + 1;
      if (v125 < 1024)
      {
LABEL_166:
        MEMORY[0x1EEE9AC00](v124);
        v127 = &v244 - v126;
        if (String._fileSystemRepresentation(into:)(&v244 - v126, v128, v254, v123))
        {
          v129 = strnlen(v127, 0x401uLL);
        }

        else
        {
          v129 = 0;
        }

        if (v50 > 255)
        {
          goto LABEL_171;
        }

        goto LABEL_170;
      }
    }

    else
    {
      __break(1u);
    }

    v226 = v122;
    v124 = swift_stdlib_isStackAllocationSafe();
    if (v124)
    {
      goto LABEL_166;
    }

    v227 = v226;
    v228 = swift_slowAlloc();
    v229 = v255;
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v228, v227, v254, v123, 0x401uLL, &v263);
    v255 = v229;
    if (v229)
    {
      goto LABEL_348;
    }

    MEMORY[0x1865D2690](v228, -1, -1);
    v129 = v263;
    v123 = v252;
    if (v50 > 255)
    {
LABEL_171:

      v250 = 514;
      a1 = v123;
      v249 = v254;
      a4 = v17;
      goto LABEL_86;
    }

LABEL_170:
    if (v129 > 1024)
    {
      goto LABEL_171;
    }

    v249 = v17;
    v250 = 514;
    a1 = v24;
    a4 = v17;
LABEL_86:
    v24 = a4;
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
    {
      goto LABEL_344;
    }

    v19 = @"NSPOSIXErrorDomain";
    v70 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v71 = @"NSPOSIXErrorDomain";
    v72 = v71;
    v253 = a5;
    if (v70)
    {
      v73 = _objc_getTaggedPointerTag(v71);
      switch(v73)
      {
        case 0:
          goto LABEL_103;
        case 0x16:
          v78 = [(__CFString *)v72 UTF8String];
          if (v78)
          {
            String.init(utf8String:)(v78);
            if (v79)
            {
              goto LABEL_209;
            }

            __break(1u);
LABEL_103:
            v261 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (v80)
            {
              goto LABEL_209;
            }

            [(__CFString *)v72 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_214;
          }

          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          v263 = 0;
          v264 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);

          v263 = 0xD000000000000014;
          v264 = 0x80000001814813E0;
          LODWORD(v259) = v19;
LABEL_347:
          v242 = dispatch thunk of CustomStringConvertible.description.getter();
          v228 = &v263;
          MEMORY[0x1865CB0E0](v242);

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_348:
          v225 = v228;
LABEL_351:
          MEMORY[0x1865D2690](v225, -1, -1);
          __break(1u);
          return;
        case 2:
          MEMORY[0x1EEE9AC00](v73);
          v74 = v255;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v255 = v74;

          goto LABEL_214;
      }
    }

    LOBYTE(v259) = 0;
    v263 = 0;
    LOBYTE(v261) = 0;
    v262 = 0;
    v75 = __CFStringIsCF();
    if (v75)
    {
      if (v263)
      {
        if (v262 == 1)
        {
          if (v259)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_214;
        }

        if ((v261 & 1) == 0)
        {
          goto LABEL_213;
        }

        if (v259 != 1)
        {
          v75 = [(__CFString *)v72 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](v75);
        v146 = v255;
        v147 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v255 = v146;
        v149 = HIBYTE(v148) & 0xF;
        if ((v148 & 0x2000000000000000) == 0)
        {
          v149 = v147 & 0xFFFFFFFFFFFFLL;
        }

        if (!v149)
        {

LABEL_213:
          String.init(_cocoaString:)();
          goto LABEL_214;
        }
      }

LABEL_209:

      goto LABEL_214;
    }

    v76 = v72;
    String.init(_nativeStorage:)();
    if (!v77)
    {
      v263 = [(__CFString *)v76 length];
      if (v263)
      {
        goto LABEL_213;
      }
    }

LABEL_214:
    v150 = POSIXErrorCode.rawValue.getter();
    v151 = objc_allocWithZone(NSError);
    v152 = String._bridgeToObjectiveCImpl()();

    v17 = _NativeDictionary.bridged()();
    v68 = [v151 initWithDomain:v152 code:v150 userInfo:v17];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v153 = [v68 domain];
    if (!v153)
    {
      goto LABEL_243;
    }

    v154 = v153;
    v155 = _objc_isTaggedPointer(v153);
    v156 = v154;
    v157 = v156;
    if (v155)
    {
      v158 = _objc_getTaggedPointerTag(v156);
      switch(v158)
      {
        case 0:
          v261 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v170 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v171)
          {
            v160 = v170;
            v162 = v171;
          }

          else
          {
            [v157 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v160 = v259;
            v162 = v260;
          }

          goto LABEL_244;
        case 0x16:
          v167 = [v157 UTF8String];
          if (!v167)
          {
            goto LABEL_342;
          }

          v168 = String.init(utf8String:)(v167);
          a5 = v253;
          if (!v169)
          {
            goto LABEL_343;
          }

          v160 = v168;
          v162 = v169;
LABEL_255:

LABEL_279:
          goto LABEL_280;
        case 2:
          v17 = &v244;
          MEMORY[0x1EEE9AC00](v158);
          v159 = v255;
          v160 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v162 = v161;
          v255 = v159;

          goto LABEL_244;
      }
    }

    LOBYTE(v259) = 0;
    v263 = 0;
    LOBYTE(v261) = 0;
    v262 = 0;
    v163 = __CFStringIsCF();
    if (!v163)
    {
      v164 = v157;
      v165 = String.init(_nativeStorage:)();
      if (v166)
      {
        v160 = v165;
        v162 = v166;

        goto LABEL_244;
      }

      v263 = [v164 length];
      if (!v263)
      {

LABEL_243:
        v160 = 0;
        v162 = 0xE000000000000000;
LABEL_244:
        a5 = v253;
        goto LABEL_280;
      }

      a5 = v253;
LABEL_277:
      v172 = String.init(_cocoaString:)();
      goto LABEL_278;
    }

    a5 = v253;
    if (v263)
    {
      if (v262 != 1)
      {
        if (v261)
        {
          if (v259 != 1)
          {
            v163 = [v157 lengthOfBytesUsingEncoding_];
          }

          v17 = &v244;
          MEMORY[0x1EEE9AC00](v163);
          v176 = v255;
          v177 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v162 = v178;
          v255 = v176;
          v179 = HIBYTE(v178) & 0xF;
          if ((v178 & 0x2000000000000000) == 0)
          {
            v179 = v177 & 0xFFFFFFFFFFFFLL;
          }

          if (v179)
          {
            v160 = v177;
            goto LABEL_255;
          }
        }

        goto LABEL_277;
      }

      if (v259)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      v172 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_278:
      v160 = v172;
      v162 = v173;
      goto LABEL_279;
    }

    v160 = 0;
    v162 = 0xE000000000000000;
LABEL_280:
    v203 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
    Path = v204;
    if (v160 == v203 && v162 == v204)
    {
      break;
    }

    a4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (a4)
    {
      goto LABEL_284;
    }

LABEL_297:
    __break(1u);
  }

LABEL_284:
  v69 = v249;
LABEL_285:

  URL.init(_fileManagerFailableFileURLWithPath:)(v69, a1, &v263);

  v205 = v263;
  v206 = v264;
  v248 = String._bridgeToObjectiveCImpl()();

  if (v205)
  {
    v207 = swift_getObjectType();
    v247 = (*(v206 + 432))(v207, v206);
    swift_unknownObjectRelease();
    if (v68)
    {
      goto LABEL_287;
    }

LABEL_290:
    v249 = v68;
    v245 = 0;
  }

  else
  {
    v247 = 0;
    if (!v68)
    {
      goto LABEL_290;
    }

LABEL_287:
    v259 = v68;
    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
    v208 = v68;
    v209 = _getErrorEmbeddedNSError<A>(_:)();

    if (v209)
    {
    }

    else
    {
      swift_allocError();
      *v210 = v208;
    }

    v249 = v208;
    v245 = _swift_stdlib_bridgeErrorToNSError();
  }

  v211 = objc_opt_self();
  v212 = String._bridgeToObjectiveCImpl()();
  v246 = v24;
  v213 = v251;
  v214 = String._bridgeToObjectiveCImpl()();
  v215 = v252;
  v216 = String._bridgeToObjectiveCImpl()();
  v217 = v247;
  v218 = v245;
  v219 = [v211 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v220 = v219;
  LOBYTE(v218) = NSFileManager._shouldProceedAfter(error:copyingItemAtPath:to:)(v220, v246, v213, v254, v215, v257, v258);

  if (v218)
  {
  }

  else
  {
    swift_willThrow();
  }
}