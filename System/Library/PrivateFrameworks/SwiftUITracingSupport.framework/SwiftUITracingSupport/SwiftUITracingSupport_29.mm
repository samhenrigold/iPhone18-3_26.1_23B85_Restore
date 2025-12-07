uint64_t specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(char *a1, unint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9;
  v90 = a7;
  v91 = a8;
  v88 = a5;
  v89 = a6;
  v96 = a3;
  v14 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v14 - 8);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &unk_280495000;
  if (!attachmentAssertion.value._rawValue)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v94 = a2;
  v95 = v9;
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  a2 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v97 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
  v22 = *(rawValue + 2);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_78;
  }

  LOBYTE(v25) = v20;
  if (*(rawValue + 3) < v24)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
    rawValue = v97;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
    if ((v25 & 1) == (v27 & 1))
    {
      v21 = v26;
      goto LABEL_8;
    }

    goto LABEL_89;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {
LABEL_8:
    *(v16 + 156) = rawValue;

    v28 = *(v16 + 156);
    if ((v25 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v21, v8, a2, MEMORY[0x277D84F90], *(v16 + 156));
      outlined copy of Data._Representation(v8, a2);
    }

    isUniquelyReferenced_nonNull_native = *(v28 + 56);
    rawValue = *(isUniquelyReferenced_nonNull_native + 8 * v21);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    if ((v29 & 1) == 0)
    {
LABEL_78:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    }

    v31 = *(rawValue + 2);
    v30 = *(rawValue + 3);
    if (v31 >= v30 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    }

    v10 = v95;
    *(rawValue + 2) = v31 + 1;
    v32 = &rawValue[8 * v31];
    *(v32 + 8) = v96;
    *(v32 + 9) = 1;
    outlined consume of Data._Representation(v8, a2);
    v16 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a2 = v94;
LABEL_14:
    v25 = a2 - a1;
    if (a1)
    {
      v21 = a2 - a1;
    }

    else
    {
      v21 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        v93 = a2 - a1;
        if (v21 < 0xFFFFFFFF)
        {
          v33 = 2;
        }

        else
        {
          v33 = 3;
        }

        if (v21 >= 0xFFFFFFFF)
        {
          v34 = 28673;
        }

        else
        {
          v34 = 24577;
        }

        if (v21 >= 0xFFFF)
        {
          v35 = v33;
        }

        else
        {
          v35 = 1;
        }

        if (v21 >= 0xFFFF)
        {
          v36 = v34;
        }

        else
        {
          v36 = 20481;
        }

        if (v21 < 0xFF)
        {
          v35 = 0;
        }

        v87 = v35;
        if (v21 >= 0xFF)
        {
          v37 = v36;
        }

        else
        {
          v37 = 16385;
        }

        LODWORD(v94) = v37;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v38 = readingDebugLog;
          v39 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v95 = v10;
            v41 = v40;
            v42 = swift_slowAlloc();
            v86 = v16;
            v43 = v42;
            v97 = v42;
            *v41 = 136315138;
            v44 = T_TracepointID.describe(state:)(v42, v94);
            v85 = v38;
            v46 = a2;
            v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v97);

            *(v41 + 4) = v47;
            a2 = v46;
            _os_log_impl(&dword_26C161000, v85, v39, "id: %s", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v43);
            v48 = v43;
            v16 = v86;
            MEMORY[0x26D69EAB0](v48, -1, -1);
            v49 = v41;
            v10 = v95;
            MEMORY[0x26D69EAB0](v49, -1, -1);
          }
        }

        v50 = a4[4];
        if (*(v50 + 56))
        {
          v25 = v93;
          if (*(v50 + 52) == 2)
          {
LABEL_53:
            v57 = CircularBuffer.Transaction.begin()() + 4;
            v52 = *(v50 + 48);
            v53 = v52 | (*(v50 + 52) << 32);
LABEL_54:
            if (BYTE4(v53) != 2)
            {
              *(*(v50 + 32) + v52) = v94;
              *(v50 + 48) = v52 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v21, v87) + v57;
              if (a1)
              {
                goto LABEL_56;
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v51 = *(v50 + 32);
          LODWORD(v52) = *(v50 + 48);
          v53 = v52 | (*(v50 + 52) << 32);
          if (v51)
          {
            v54 = *(v50 + 40) - v51;
            v55 = v54 < v52;
            v56 = v54 - v52;
            if (v55)
            {
              __break(1u);
LABEL_84:
              swift_once();
LABEL_74:
              v77 = readingDebugLog;
              v78 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v101 = v80;
                *v79 = 136315138;
                v97 = v88;
                v98 = v89;
                v99 = v90;
                v100 = v91;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMd, &_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMR);
                v81 = String.init<A>(describing:)();
                v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v101);

                *(v79 + 4) = v83;
                _os_log_impl(&dword_26C161000, v77, v78, "w a Spread %s!", v79, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v80);
                MEMORY[0x26D69EAB0](v80, -1, -1);
                MEMORY[0x26D69EAB0](v79, -1, -1);
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
            }

            if (v56 >= 17)
            {
              v57 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v50 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_87;
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (!HIDWORD(v21))
    {
      break;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    specialized _NativeDictionary.copy()();
    rawValue = v97;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v96 | (v21 << 32));
  if (!a1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
  }

LABEL_56:
  if (v25 <= 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
  }

  v58 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (readingDebug)
  {
    v93 = v25;
    v94 = a2;
    v86 = v16;
    v97 = specialized Collection.prefix(_:)(40, a1, a2);
    v98 = v59;
    v99 = v60;
    v100 = v61;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
    v62 = String.init<A>(bytes:encoding:)();
    if (v63)
    {
      v64 = v62;
    }

    else
    {
      v64 = 0;
    }

    v92 = v64;
    if (v63)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0xE000000000000000;
    }

    v66 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v67 = readingDebugLog;
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v95 = v10;
      v70 = v69;
      v71 = swift_slowAlloc();
      v97 = v71;
      *v70 = 134219010;
      *(v70 + 4) = v66;
      *(v70 + 12) = 1024;
      *(v70 + 14) = v96;
      *(v70 + 18) = 2080;
      *(v70 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000026C33E070, &v97);
      *(v70 + 28) = 2048;
      v72 = v92;
      v25 = v93;
      *(v70 + 30) = v93;
      *(v70 + 38) = 2080;
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v65, &v97);

      *(v70 + 40) = v73;
      _os_log_impl(&dword_26C161000, v67, v68, "w a %ld: (%u)  %s %ld bytes %s", v70, 0x30u);
      swift_arrayDestroy();
      v74 = v71;
      v58 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
      MEMORY[0x26D69EAB0](v74, -1, -1);
      MEMORY[0x26D69EAB0](v70, -1, -1);
    }

    else
    {

      v25 = v93;
    }

    a2 = v94;
    v16 = v86;
  }

  v75 = a4[4];
  if (*(v75 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v75);
    a4[15] += v76;
    if (*(v58 + 1968) != 1 || v25 >= v76)
    {
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_84;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v10 = v9;
  v90 = a7;
  v91 = a8;
  v88 = a5;
  v89 = a6;
  v96 = a3;
  v14 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v14 - 8);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &unk_280495000;
  if (!attachmentAssertion.value._rawValue)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v94 = a2;
  v95 = v9;
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  a2 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v97 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
  v22 = *(rawValue + 2);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_78;
  }

  LOBYTE(v25) = v20;
  if (*(rawValue + 3) < v24)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
    rawValue = v97;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
    if ((v25 & 1) == (v27 & 1))
    {
      v21 = v26;
      goto LABEL_8;
    }

    goto LABEL_89;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {
LABEL_8:
    *(v16 + 156) = rawValue;

    v28 = *(v16 + 156);
    if ((v25 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v21, v8, a2, MEMORY[0x277D84F90], *(v16 + 156));
      outlined copy of Data._Representation(v8, a2);
    }

    isUniquelyReferenced_nonNull_native = *(v28 + 56);
    rawValue = *(isUniquelyReferenced_nonNull_native + 8 * v21);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    if ((v29 & 1) == 0)
    {
LABEL_78:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    }

    v31 = *(rawValue + 2);
    v30 = *(rawValue + 3);
    if (v31 >= v30 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    }

    v10 = v95;
    *(rawValue + 2) = v31 + 1;
    v32 = &rawValue[8 * v31];
    *(v32 + 8) = v96;
    *(v32 + 9) = 1;
    outlined consume of Data._Representation(v8, a2);
    v16 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a2 = v94;
LABEL_14:
    v25 = a2 - a1;
    if (a1)
    {
      v21 = a2 - a1;
    }

    else
    {
      v21 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        v93 = a2 - a1;
        if (v21 < 0xFFFFFFFF)
        {
          v33 = 2;
        }

        else
        {
          v33 = 3;
        }

        if (v21 >= 0xFFFFFFFF)
        {
          v34 = 28694;
        }

        else
        {
          v34 = 24598;
        }

        if (v21 >= 0xFFFF)
        {
          v35 = v33;
        }

        else
        {
          v35 = 1;
        }

        if (v21 >= 0xFFFF)
        {
          v36 = v34;
        }

        else
        {
          v36 = 20502;
        }

        if (v21 < 0xFF)
        {
          v35 = 0;
        }

        v87 = v35;
        if (v21 >= 0xFF)
        {
          v37 = v36;
        }

        else
        {
          v37 = 16406;
        }

        LODWORD(v94) = v37;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v38 = readingDebugLog;
          v39 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v95 = v10;
            v41 = v40;
            v42 = swift_slowAlloc();
            v86 = v16;
            v43 = v42;
            v97 = v42;
            *v41 = 136315138;
            v44 = T_TracepointID.describe(state:)(v42, v94);
            v85 = v38;
            v46 = a2;
            v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v97);

            *(v41 + 4) = v47;
            a2 = v46;
            _os_log_impl(&dword_26C161000, v85, v39, "id: %s", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v43);
            v48 = v43;
            v16 = v86;
            MEMORY[0x26D69EAB0](v48, -1, -1);
            v49 = v41;
            v10 = v95;
            MEMORY[0x26D69EAB0](v49, -1, -1);
          }
        }

        v50 = a4[4];
        if (*(v50 + 56))
        {
          v25 = v93;
          if (*(v50 + 52) == 2)
          {
LABEL_53:
            v57 = CircularBuffer.Transaction.begin()() + 4;
            v52 = *(v50 + 48);
            v53 = v52 | (*(v50 + 52) << 32);
LABEL_54:
            if (BYTE4(v53) != 2)
            {
              *(*(v50 + 32) + v52) = v94;
              *(v50 + 48) = v52 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v21, v87) + v57;
              if (a1)
              {
                goto LABEL_56;
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v51 = *(v50 + 32);
          LODWORD(v52) = *(v50 + 48);
          v53 = v52 | (*(v50 + 52) << 32);
          if (v51)
          {
            v54 = *(v50 + 40) - v51;
            v55 = v54 < v52;
            v56 = v54 - v52;
            if (v55)
            {
              __break(1u);
LABEL_84:
              swift_once();
LABEL_74:
              v77 = readingDebugLog;
              v78 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v101 = v80;
                *v79 = 136315138;
                v97 = v88;
                v98 = v89;
                v99 = v90;
                v100 = v91;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGMR);
                v81 = String.init<A>(describing:)();
                v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v101);

                *(v79 + 4) = v83;
                _os_log_impl(&dword_26C161000, v77, v78, "w a Spread %s!", v79, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v80);
                MEMORY[0x26D69EAB0](v80, -1, -1);
                MEMORY[0x26D69EAB0](v79, -1, -1);
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
            }

            if (v56 >= 17)
            {
              v57 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v50 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_87;
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (!HIDWORD(v21))
    {
      break;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    specialized _NativeDictionary.copy()();
    rawValue = v97;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v96 | (v21 << 32));
  if (!a1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
  }

LABEL_56:
  if (v25 <= 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
  }

  v58 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (readingDebug)
  {
    v93 = v25;
    v94 = a2;
    v86 = v16;
    v97 = specialized Collection.prefix(_:)(40, a1, a2);
    v98 = v59;
    v99 = v60;
    v100 = v61;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
    v62 = String.init<A>(bytes:encoding:)();
    if (v63)
    {
      v64 = v62;
    }

    else
    {
      v64 = 0;
    }

    v92 = v64;
    if (v63)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0xE000000000000000;
    }

    v66 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v67 = readingDebugLog;
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v95 = v10;
      v70 = v69;
      v71 = swift_slowAlloc();
      v97 = v71;
      *v70 = 134219010;
      *(v70 + 4) = v66;
      *(v70 + 12) = 1024;
      *(v70 + 14) = v96;
      *(v70 + 18) = 2080;
      *(v70 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000026C33E210, &v97);
      *(v70 + 28) = 2048;
      v72 = v92;
      v25 = v93;
      *(v70 + 30) = v93;
      *(v70 + 38) = 2080;
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v65, &v97);

      *(v70 + 40) = v73;
      _os_log_impl(&dword_26C161000, v67, v68, "w a %ld: (%u)  %s %ld bytes %s", v70, 0x30u);
      swift_arrayDestroy();
      v74 = v71;
      v58 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
      MEMORY[0x26D69EAB0](v74, -1, -1);
      MEMORY[0x26D69EAB0](v70, -1, -1);
    }

    else
    {

      v25 = v93;
    }

    a2 = v94;
    v16 = v86;
  }

  v75 = a4[4];
  if (*(v75 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v75);
    a4[15] += v76;
    if (*(v58 + 1968) != 1 || v25 >= v76)
    {
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_84;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v10 = v9;
  v90 = a7;
  v91 = a8;
  v88 = a5;
  v89 = a6;
  v96 = a3;
  v14 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v14 - 8);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &unk_280495000;
  if (!attachmentAssertion.value._rawValue)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v94 = a2;
  v95 = v9;
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  a2 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v97 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
  v22 = *(rawValue + 2);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_78;
  }

  LOBYTE(v25) = v20;
  if (*(rawValue + 3) < v24)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
    rawValue = v97;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
    if ((v25 & 1) == (v27 & 1))
    {
      v21 = v26;
      goto LABEL_8;
    }

    goto LABEL_89;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {
LABEL_8:
    *(v16 + 156) = rawValue;

    v28 = *(v16 + 156);
    if ((v25 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v21, v8, a2, MEMORY[0x277D84F90], *(v16 + 156));
      outlined copy of Data._Representation(v8, a2);
    }

    isUniquelyReferenced_nonNull_native = *(v28 + 56);
    rawValue = *(isUniquelyReferenced_nonNull_native + 8 * v21);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    if ((v29 & 1) == 0)
    {
LABEL_78:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    }

    v31 = *(rawValue + 2);
    v30 = *(rawValue + 3);
    if (v31 >= v30 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    }

    v10 = v95;
    *(rawValue + 2) = v31 + 1;
    v32 = &rawValue[8 * v31];
    *(v32 + 8) = v96;
    *(v32 + 9) = 1;
    outlined consume of Data._Representation(v8, a2);
    v16 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a2 = v94;
LABEL_14:
    v25 = a2 - a1;
    if (a1)
    {
      v21 = a2 - a1;
    }

    else
    {
      v21 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        v93 = a2 - a1;
        if (v21 < 0xFFFFFFFF)
        {
          v33 = 2;
        }

        else
        {
          v33 = 3;
        }

        if (v21 >= 0xFFFFFFFF)
        {
          v34 = 28693;
        }

        else
        {
          v34 = 24597;
        }

        if (v21 >= 0xFFFF)
        {
          v35 = v33;
        }

        else
        {
          v35 = 1;
        }

        if (v21 >= 0xFFFF)
        {
          v36 = v34;
        }

        else
        {
          v36 = 20501;
        }

        if (v21 < 0xFF)
        {
          v35 = 0;
        }

        v87 = v35;
        if (v21 >= 0xFF)
        {
          v37 = v36;
        }

        else
        {
          v37 = 16405;
        }

        LODWORD(v94) = v37;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v38 = readingDebugLog;
          v39 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v95 = v10;
            v41 = v40;
            v42 = swift_slowAlloc();
            v86 = v16;
            v43 = v42;
            v97 = v42;
            *v41 = 136315138;
            v44 = T_TracepointID.describe(state:)(v42, v94);
            v85 = v38;
            v46 = a2;
            v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v97);

            *(v41 + 4) = v47;
            a2 = v46;
            _os_log_impl(&dword_26C161000, v85, v39, "id: %s", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v43);
            v48 = v43;
            v16 = v86;
            MEMORY[0x26D69EAB0](v48, -1, -1);
            v49 = v41;
            v10 = v95;
            MEMORY[0x26D69EAB0](v49, -1, -1);
          }
        }

        v50 = a4[4];
        if (*(v50 + 56))
        {
          v25 = v93;
          if (*(v50 + 52) == 2)
          {
LABEL_53:
            v57 = CircularBuffer.Transaction.begin()() + 4;
            v52 = *(v50 + 48);
            v53 = v52 | (*(v50 + 52) << 32);
LABEL_54:
            if (BYTE4(v53) != 2)
            {
              *(*(v50 + 32) + v52) = v94;
              *(v50 + 48) = v52 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v21, v87) + v57;
              if (a1)
              {
                goto LABEL_56;
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v51 = *(v50 + 32);
          LODWORD(v52) = *(v50 + 48);
          v53 = v52 | (*(v50 + 52) << 32);
          if (v51)
          {
            v54 = *(v50 + 40) - v51;
            v55 = v54 < v52;
            v56 = v54 - v52;
            if (v55)
            {
              __break(1u);
LABEL_84:
              swift_once();
LABEL_74:
              v77 = readingDebugLog;
              v78 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v101 = v80;
                *v79 = 136315138;
                v97 = v88;
                v98 = v89;
                v99 = v90;
                v100 = v91;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGMR);
                v81 = String.init<A>(describing:)();
                v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v101);

                *(v79 + 4) = v83;
                _os_log_impl(&dword_26C161000, v77, v78, "w a Spread %s!", v79, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v80);
                MEMORY[0x26D69EAB0](v80, -1, -1);
                MEMORY[0x26D69EAB0](v79, -1, -1);
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
            }

            if (v56 >= 17)
            {
              v57 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v50 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_87;
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (!HIDWORD(v21))
    {
      break;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    specialized _NativeDictionary.copy()();
    rawValue = v97;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v96 | (v21 << 32));
  if (!a1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
  }

LABEL_56:
  if (v25 <= 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
  }

  v58 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (readingDebug)
  {
    v93 = v25;
    v94 = a2;
    v86 = v16;
    v97 = specialized Collection.prefix(_:)(40, a1, a2);
    v98 = v59;
    v99 = v60;
    v100 = v61;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
    v62 = String.init<A>(bytes:encoding:)();
    if (v63)
    {
      v64 = v62;
    }

    else
    {
      v64 = 0;
    }

    v92 = v64;
    if (v63)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0xE000000000000000;
    }

    v66 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v67 = readingDebugLog;
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v95 = v10;
      v70 = v69;
      v71 = swift_slowAlloc();
      v97 = v71;
      *v70 = 134219010;
      *(v70 + 4) = v66;
      *(v70 + 12) = 1024;
      *(v70 + 14) = v96;
      *(v70 + 18) = 2080;
      *(v70 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000026C33E2E0, &v97);
      *(v70 + 28) = 2048;
      v72 = v92;
      v25 = v93;
      *(v70 + 30) = v93;
      *(v70 + 38) = 2080;
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v65, &v97);

      *(v70 + 40) = v73;
      _os_log_impl(&dword_26C161000, v67, v68, "w a %ld: (%u)  %s %ld bytes %s", v70, 0x30u);
      swift_arrayDestroy();
      v74 = v71;
      v58 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
      MEMORY[0x26D69EAB0](v74, -1, -1);
      MEMORY[0x26D69EAB0](v70, -1, -1);
    }

    else
    {

      v25 = v93;
    }

    a2 = v94;
    v16 = v86;
  }

  v75 = a4[4];
  if (*(v75 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v75);
    a4[15] += v76;
    if (*(v58 + 1968) != 1 || v25 >= v76)
    {
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_84;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v10 = v9;
  v90 = a7;
  v91 = a8;
  v88 = a5;
  v89 = a6;
  v96 = a3;
  v14 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v14 - 8);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &unk_280495000;
  if (!attachmentAssertion.value._rawValue)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v94 = a2;
  v95 = v9;
  v8 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  a2 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v97 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
  v22 = *(rawValue + 2);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_78;
  }

  LOBYTE(v25) = v20;
  if (*(rawValue + 3) < v24)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
    rawValue = v97;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v8, a2);
    if ((v25 & 1) == (v27 & 1))
    {
      v21 = v26;
      goto LABEL_8;
    }

    goto LABEL_89;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_82;
  }

  while (1)
  {
LABEL_8:
    *(v16 + 156) = rawValue;

    v28 = *(v16 + 156);
    if ((v25 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v21, v8, a2, MEMORY[0x277D84F90], *(v16 + 156));
      outlined copy of Data._Representation(v8, a2);
    }

    isUniquelyReferenced_nonNull_native = *(v28 + 56);
    rawValue = *(isUniquelyReferenced_nonNull_native + 8 * v21);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    if ((v29 & 1) == 0)
    {
LABEL_78:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    }

    v31 = *(rawValue + 2);
    v30 = *(rawValue + 3);
    if (v31 >= v30 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, rawValue);
      *(isUniquelyReferenced_nonNull_native + 8 * v21) = rawValue;
    }

    v10 = v95;
    *(rawValue + 2) = v31 + 1;
    v32 = &rawValue[8 * v31];
    *(v32 + 8) = v96;
    *(v32 + 9) = 1;
    outlined consume of Data._Representation(v8, a2);
    v16 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a2 = v94;
LABEL_14:
    v25 = a2 - a1;
    if (a1)
    {
      v21 = a2 - a1;
    }

    else
    {
      v21 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        v93 = a2 - a1;
        if (v21 < 0xFFFFFFFF)
        {
          v33 = 2;
        }

        else
        {
          v33 = 3;
        }

        if (v21 >= 0xFFFFFFFF)
        {
          v34 = 28692;
        }

        else
        {
          v34 = 24596;
        }

        if (v21 >= 0xFFFF)
        {
          v35 = v33;
        }

        else
        {
          v35 = 1;
        }

        if (v21 >= 0xFFFF)
        {
          v36 = v34;
        }

        else
        {
          v36 = 20500;
        }

        if (v21 < 0xFF)
        {
          v35 = 0;
        }

        v87 = v35;
        if (v21 >= 0xFF)
        {
          v37 = v36;
        }

        else
        {
          v37 = 16404;
        }

        LODWORD(v94) = v37;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v38 = readingDebugLog;
          v39 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v95 = v10;
            v41 = v40;
            v42 = swift_slowAlloc();
            v86 = v16;
            v43 = v42;
            v97 = v42;
            *v41 = 136315138;
            v44 = T_TracepointID.describe(state:)(v42, v94);
            v85 = v38;
            v46 = a2;
            v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v97);

            *(v41 + 4) = v47;
            a2 = v46;
            _os_log_impl(&dword_26C161000, v85, v39, "id: %s", v41, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v43);
            v48 = v43;
            v16 = v86;
            MEMORY[0x26D69EAB0](v48, -1, -1);
            v49 = v41;
            v10 = v95;
            MEMORY[0x26D69EAB0](v49, -1, -1);
          }
        }

        v50 = a4[4];
        if (*(v50 + 56))
        {
          v25 = v93;
          if (*(v50 + 52) == 2)
          {
LABEL_53:
            v57 = CircularBuffer.Transaction.begin()() + 4;
            v52 = *(v50 + 48);
            v53 = v52 | (*(v50 + 52) << 32);
LABEL_54:
            if (BYTE4(v53) != 2)
            {
              *(*(v50 + 32) + v52) = v94;
              *(v50 + 48) = v52 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v21, v87) + v57;
              if (a1)
              {
                goto LABEL_56;
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v51 = *(v50 + 32);
          LODWORD(v52) = *(v50 + 48);
          v53 = v52 | (*(v50 + 52) << 32);
          if (v51)
          {
            v54 = *(v50 + 40) - v51;
            v55 = v54 < v52;
            v56 = v54 - v52;
            if (v55)
            {
              __break(1u);
LABEL_84:
              swift_once();
LABEL_74:
              v77 = readingDebugLog;
              v78 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v101 = v80;
                *v79 = 136315138;
                v97 = v88;
                v98 = v89;
                v99 = v90;
                v100 = v91;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGMR);
                v81 = String.init<A>(describing:)();
                v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v101);

                *(v79 + 4) = v83;
                _os_log_impl(&dword_26C161000, v77, v78, "w a Spread %s!", v79, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v80);
                MEMORY[0x26D69EAB0](v80, -1, -1);
                MEMORY[0x26D69EAB0](v79, -1, -1);
              }

              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
            }

            if (v56 >= 17)
            {
              v57 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v50 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_87;
      }

      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (!HIDWORD(v21))
    {
      break;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    specialized _NativeDictionary.copy()();
    rawValue = v97;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v96 | (v21 << 32));
  if (!a1)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
  }

LABEL_56:
  if (v25 <= 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
  }

  v58 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (readingDebug)
  {
    v93 = v25;
    v94 = a2;
    v86 = v16;
    v97 = specialized Collection.prefix(_:)(40, a1, a2);
    v98 = v59;
    v99 = v60;
    v100 = v61;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
    v62 = String.init<A>(bytes:encoding:)();
    if (v63)
    {
      v64 = v62;
    }

    else
    {
      v64 = 0;
    }

    v92 = v64;
    if (v63)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0xE000000000000000;
    }

    v66 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v67 = readingDebugLog;
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v95 = v10;
      v70 = v69;
      v71 = swift_slowAlloc();
      v97 = v71;
      *v70 = 134219010;
      *(v70 + 4) = v66;
      *(v70 + 12) = 1024;
      *(v70 + 14) = v96;
      *(v70 + 18) = 2080;
      *(v70 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000026C33E270, &v97);
      *(v70 + 28) = 2048;
      v72 = v92;
      v25 = v93;
      *(v70 + 30) = v93;
      *(v70 + 38) = 2080;
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v65, &v97);

      *(v70 + 40) = v73;
      _os_log_impl(&dword_26C161000, v67, v68, "w a %ld: (%u)  %s %ld bytes %s", v70, 0x30u);
      swift_arrayDestroy();
      v74 = v71;
      v58 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
      MEMORY[0x26D69EAB0](v74, -1, -1);
      MEMORY[0x26D69EAB0](v70, -1, -1);
    }

    else
    {

      v25 = v93;
    }

    a2 = v94;
    v16 = v86;
  }

  v75 = a4[4];
  if (*(v75 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v75);
    a4[15] += v76;
    if (*(v58 + 1968) != 1 || v25 >= v76)
    {
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v16, 0);
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_84;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(char *a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = v7;
  v87 = a5;
  v88 = a6;
  v93 = a3;
  v12 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v12 - 8);
  v89 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &unk_280495000;
  if (!attachmentAssertion.value._rawValue)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v91 = a2;
  v92 = v7;
  v6 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  v16 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v94 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  a2 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v16);
  v20 = *(rawValue + 2);
  v21 = (v19 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_79;
  }

  LOBYTE(v23) = v19;
  if (*(rawValue + 3) < v22)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
    rawValue = v94;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v16);
    if ((v23 & 1) == (v25 & 1))
    {
      a2 = v24;
      goto LABEL_8;
    }

    goto LABEL_90;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_83;
  }

  while (1)
  {
LABEL_8:
    *(v14 + 156) = rawValue;

    v26 = *(v14 + 156);
    if ((v23 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(a2, v6, v16, MEMORY[0x277D84F90], *(v14 + 156));
      outlined copy of Data._Representation(v6, v16);
    }

    v14 = *(v26 + 56);
    rawValue = *(v14 + a2);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + a2) = rawValue;
    if ((v27 & 1) == 0)
    {
LABEL_79:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(v14 + a2) = rawValue;
    }

    v29 = *(rawValue + 2);
    v28 = *(rawValue + 3);
    if (v29 >= v28 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, rawValue);
      *(v14 + a2) = rawValue;
    }

    a2 = v91;
    *(rawValue + 2) = v29 + 1;
    v30 = &rawValue[8 * v29];
    *(v30 + 8) = v93;
    *(v30 + 9) = 1;
    outlined consume of Data._Representation(v6, v16);
    v14 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    v8 = v92;
LABEL_14:
    v23 = a2 - a1;
    if (a1)
    {
      v16 = a2 - a1;
    }

    else
    {
      v16 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v16 & 0x8000000000000000) == 0)
      {
        v90 = a2 - a1;
        if (v16 < 0xFFFFFFFF)
        {
          v31 = 2;
        }

        else
        {
          v31 = 3;
        }

        if (v16 >= 0xFFFFFFFF)
        {
          v32 = 28674;
        }

        else
        {
          v32 = 24578;
        }

        if (v16 >= 0xFFFF)
        {
          v33 = v31;
        }

        else
        {
          v33 = 1;
        }

        if (v16 >= 0xFFFF)
        {
          v34 = v32;
        }

        else
        {
          v34 = 20482;
        }

        if (v16 < 0xFF)
        {
          v33 = 0;
        }

        v86 = v33;
        if (v16 >= 0xFF)
        {
          v35 = v34;
        }

        else
        {
          v35 = 16386;
        }

        LODWORD(v91) = v35;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v36 = readingDebugLog;
          v37 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v92 = v8;
            v39 = v38;
            v40 = swift_slowAlloc();
            v85 = v14;
            v41 = v40;
            v94 = v40;
            *v39 = 136315138;
            v42 = T_TracepointID.describe(state:)(v40, v91);
            v84 = v36;
            v44 = a2;
            v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v94);

            *(v39 + 4) = v45;
            a2 = v44;
            _os_log_impl(&dword_26C161000, v84, v37, "id: %s", v39, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v41);
            v46 = v41;
            v14 = v85;
            MEMORY[0x26D69EAB0](v46, -1, -1);
            v47 = v39;
            v8 = v92;
            MEMORY[0x26D69EAB0](v47, -1, -1);
          }
        }

        v48 = a4[4];
        if (*(v48 + 56))
        {
          v23 = v90;
          if (*(v48 + 52) == 2)
          {
LABEL_53:
            v55 = CircularBuffer.Transaction.begin()() + 4;
            v50 = *(v48 + 48);
            v51 = v50 | (*(v48 + 52) << 32);
LABEL_54:
            if (BYTE4(v51) != 2)
            {
              *(*(v48 + 32) + v50) = v91;
              *(v48 + 48) = v50 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v16, v86) + v55;
              if (!a1)
              {
                goto LABEL_76;
              }

              goto LABEL_56;
            }

            goto LABEL_88;
          }

          v49 = *(v48 + 32);
          LODWORD(v50) = *(v48 + 48);
          v51 = v50 | (*(v48 + 52) << 32);
          if (v49)
          {
            v52 = *(v48 + 40) - v49;
            v53 = v52 < v50;
            v54 = v52 - v50;
            if (v53)
            {
              __break(1u);
LABEL_85:
              swift_once();
LABEL_74:
              v74 = readingDebugLog;
              v75 = static os_log_type_t.default.getter();
              if (!os_log_type_enabled(v74, v75))
              {
                goto LABEL_76;
              }

              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v98 = v77;
              *v76 = 136315138;
              v94 = v87;
              v95 = v88;

              v78 = String.init<A>(describing:)();
              v80 = v14;
              v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v98);

              *(v76 + 4) = v81;
              _os_log_impl(&dword_26C161000, v74, v75, "w a Spread %s!", v76, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v77);
              MEMORY[0x26D69EAB0](v77, -1, -1);
              MEMORY[0x26D69EAB0](v76, -1, -1);
              v82 = v80;
              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v82, 0);
            }

            if (v54 >= 17)
            {
              v55 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v48 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_81;
    }

    if (!HIDWORD(v16))
    {
      break;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    specialized _NativeDictionary.copy()();
    rawValue = v94;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v93 | (v16 << 32));
  if (!a1)
  {
    goto LABEL_76;
  }

LABEL_56:
  if (v23 <= 0)
  {
    goto LABEL_76;
  }

  if (readingDebug)
  {
    v85 = v14;
    v91 = a2;
    v94 = specialized Collection.prefix(_:)(40, a1, a2);
    v95 = v56;
    v96 = v57;
    v97 = v58;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
    v59 = String.init<A>(bytes:encoding:)();
    if (v60)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = 0xE000000000000000;
    }

    v63 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v64 = readingDebugLog;
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v92 = v8;
      v67 = v66;
      v68 = swift_slowAlloc();
      v90 = v23;
      v69 = v68;
      v94 = v68;
      *v67 = 134219010;
      *(v67 + 4) = v63;
      *(v67 + 12) = 1024;
      *(v67 + 14) = v93;
      *(v67 + 18) = 2080;
      *(v67 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x676E69727453, 0xE600000000000000, &v94);
      *(v67 + 28) = 2048;
      *(v67 + 30) = v90;
      *(v67 + 38) = 2080;
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v94);

      *(v67 + 40) = v70;
      _os_log_impl(&dword_26C161000, v64, v65, "w a %ld: (%u)  %s %ld bytes %s", v67, 0x30u);
      swift_arrayDestroy();
      v71 = v69;
      v23 = v90;
      MEMORY[0x26D69EAB0](v71, -1, -1);
      MEMORY[0x26D69EAB0](v67, -1, -1);
    }

    else
    {
    }

    a2 = v91;
    v14 = v85;
  }

  v72 = a4[4];
  if (*(v72 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v72);
    a4[15] += v73;
    if (readingDebug && v23 < v73)
    {
      if (one-time initialization token for readingDebugLog == -1)
      {
        goto LABEL_74;
      }

      goto LABEL_85;
    }

LABEL_76:
    v82 = v14;
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v82, 0);
  }

LABEL_89:
  __break(1u);
LABEL_90:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(char *a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, unint64_t a6, int a7)
{
  v10 = v8;
  v89 = a7;
  v90 = a5;
  v91 = a6;
  v96 = a3;
  v14 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v14 - 8);
  v92 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &unk_280495000;
  v95 = a2;
  if (!attachmentAssertion.value._rawValue)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v94 = v8;
  v7 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(a1, a2);
  v18 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v97 = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v18);
  v22 = *(rawValue + 2);
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
    goto LABEL_80;
  }

  LOBYTE(v25) = v21;
  if (*(rawValue + 3) < v24)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
    rawValue = v97;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v18);
    if ((v25 & 1) == (v27 & 1))
    {
      v10 = v26;
      goto LABEL_8;
    }

    goto LABEL_91;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_84;
  }

  while (1)
  {
LABEL_8:
    *(v16 + 156) = rawValue;

    v28 = *(v16 + 156);
    if ((v25 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v10, v7, v18, MEMORY[0x277D84F90], *(v16 + 156));
      outlined copy of Data._Representation(v7, v18);
    }

    v9 = *(v28 + 56);
    rawValue = *(v9 + 8 * v10);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 8 * v10) = rawValue;
    if ((v29 & 1) == 0)
    {
LABEL_80:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *(v9 + 8 * v10) = rawValue;
    }

    v31 = *(rawValue + 2);
    v30 = *(rawValue + 3);
    if (v31 >= v30 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, rawValue);
      *(v9 + 8 * v10) = rawValue;
    }

    v10 = v94;
    *(rawValue + 2) = v31 + 1;
    v32 = &rawValue[8 * v31];
    *(v32 + 8) = v96;
    *(v32 + 9) = 1;
    outlined consume of Data._Representation(v7, v18);
    v16 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a2 = v95;
LABEL_14:
    v25 = a2 - a1;
    if (a1)
    {
      v18 = a2 - a1;
    }

    else
    {
      v18 = 0;
    }

    if (*(a4[3] + 49))
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        v93 = a2 - a1;
        if (v18 < 0xFFFFFFFF)
        {
          v33 = 2;
        }

        else
        {
          v33 = 3;
        }

        if (v18 >= 0xFFFFFFFF)
        {
          v34 = 28678;
        }

        else
        {
          v34 = 24582;
        }

        if (v18 >= 0xFFFF)
        {
          v35 = v33;
        }

        else
        {
          v35 = 1;
        }

        if (v18 >= 0xFFFF)
        {
          v36 = v34;
        }

        else
        {
          v36 = 20486;
        }

        if (v18 < 0xFF)
        {
          v35 = 0;
        }

        v88 = v35;
        if (v18 >= 0xFF)
        {
          v37 = v36;
        }

        else
        {
          v37 = 16390;
        }

        LODWORD(v94) = v37;
        if (readingDebug)
        {
          if (one-time initialization token for readingDebugLog != -1)
          {
            swift_once();
          }

          v38 = readingDebugLog;
          v39 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v87 = v16;
            v42 = v41;
            v97 = v41;
            *v40 = 136315138;
            v43 = T_TracepointID.describe(state:)(v41, v94);
            v86 = v38;
            v45 = v10;
            v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v97);

            *(v40 + 4) = v46;
            v10 = v45;
            _os_log_impl(&dword_26C161000, v86, v39, "id: %s", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v42);
            v47 = v42;
            v16 = v87;
            MEMORY[0x26D69EAB0](v47, -1, -1);
            v48 = v40;
            a2 = v95;
            MEMORY[0x26D69EAB0](v48, -1, -1);
          }
        }

        v49 = a4[4];
        if (*(v49 + 56))
        {
          v25 = v93;
          if (*(v49 + 52) == 2)
          {
LABEL_53:
            v56 = CircularBuffer.Transaction.begin()() + 4;
            v51 = *(v49 + 48);
            v52 = v51 | (*(v49 + 52) << 32);
LABEL_54:
            if (BYTE4(v52) != 2)
            {
              *(*(v49 + 32) + v51) = v94;
              *(v49 + 48) = v51 + 4;
              a4[15] += CircularBuffer.Transaction.write(size:)(v18, v88) + v56;
              if (!a1)
              {
                goto LABEL_75;
              }

              goto LABEL_56;
            }

            goto LABEL_89;
          }

          v50 = *(v49 + 32);
          LODWORD(v51) = *(v49 + 48);
          v52 = v51 | (*(v49 + 52) << 32);
          if (v50)
          {
            v53 = *(v49 + 40) - v50;
            v54 = v53 < v51;
            v55 = v53 - v51;
            if (v54)
            {
              __break(1u);
LABEL_86:
              swift_once();
LABEL_73:
              v74 = readingDebugLog;
              v75 = v89 & 1;
              v77 = v90;
              v76 = v91;
              outlined copy of ByteString.Storage(v90, v91, v89 & 1);
              v78 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v74, v78))
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v101 = v80;
                *v79 = 136315138;
                v97 = v77;
                v98 = v76;
                LOBYTE(v99) = v75;
                v81 = String.init<A>(describing:)();
                v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, &v101);

                *(v79 + 4) = v83;
                _os_log_impl(&dword_26C161000, v74, v78, "w a Spread %s!", v79, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v80);
                MEMORY[0x26D69EAB0](v80, -1, -1);
                MEMORY[0x26D69EAB0](v79, -1, -1);
              }

              else
              {
                outlined consume of ByteString.Storage(v77, v76, v75);
              }

              v84 = a1;
              return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v84, 0);
            }

            if (v55 >= 17)
            {
              v56 = 4;
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          if (!*(v49 + 48))
          {
LABEL_52:
            CircularBuffer.Transaction.commit()();
            goto LABEL_53;
          }

          __break(1u);
        }

        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    if (!HIDWORD(v18))
    {
      break;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    specialized _NativeDictionary.copy()();
    rawValue = v97;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v96 | (v18 << 32));
  if (!a1)
  {
    goto LABEL_75;
  }

LABEL_56:
  if (v25 <= 0)
  {
    goto LABEL_75;
  }

  if (readingDebug)
  {
    v93 = v25;
    v87 = v16;
    v97 = specialized Collection.prefix(_:)(40, a1, a2);
    v98 = v57;
    v99 = v58;
    v100 = v59;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
    v60 = String.init<A>(bytes:encoding:)();
    if (v61)
    {
      v62 = v60;
    }

    else
    {
      v62 = 0;
    }

    v92 = v62;
    if (v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = 0xE000000000000000;
    }

    v64 = a4[7];
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v65 = readingDebugLog;
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v94 = v10;
      v69 = v68;
      v97 = v68;
      *v67 = 134219010;
      *(v67 + 4) = v64;
      *(v67 + 12) = 1024;
      *(v67 + 14) = v96;
      *(v67 + 18) = 2080;
      *(v67 + 20) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6972745365747942, 0xEA0000000000676ELL, &v97);
      *(v67 + 28) = 2048;
      v70 = v92;
      v25 = v93;
      *(v67 + 30) = v93;
      *(v67 + 38) = 2080;
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v63, &v97);

      *(v67 + 40) = v71;
      _os_log_impl(&dword_26C161000, v65, v66, "w a %ld: (%u)  %s %ld bytes %s", v67, 0x30u);
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v69, -1, -1);
      MEMORY[0x26D69EAB0](v67, -1, -1);
      a2 = v95;
      v16 = v87;
    }

    else
    {

      a2 = v95;
      v16 = v87;
      v25 = v93;
    }
  }

  v72 = a4[4];
  if (*(v72 + 56))
  {
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(a1, a2, v72);
    a4[15] += v73;
    if (readingDebug && v25 < v73)
    {
      a1 = v16;
      if (one-time initialization token for readingDebugLog == -1)
      {
        goto LABEL_73;
      }

      goto LABEL_86;
    }

LABEL_75:
    v84 = v16;
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v84, 0);
  }

LABEL_90:
  __break(1u);
LABEL_91:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in Trace_Handle.write<A>(attachment:)(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, NSObject *a6, uint64_t a7, NSObject *a8, uint64_t a9)
{
  v122 = a5;
  v132 = a3;
  v130 = a7;
  v123 = *(a7 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v121 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v121 - v16);
  type metadata accessor for String.Encoding();
  v18 = MEMORY[0x28223BE20](a1);
  v124 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = a6[-1].isa;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v27 = &v121 - v26;
  v28 = &unk_280495000;
  v136 = a8;
  v137 = a6;
  v134 = v24;
  v135 = v25;
  v131 = v9;
  v129 = v17;
  v141 = a4;
  if (!attachmentAssertion.value._rawValue)
  {
    v133 = 0;
    v28 = *(isa + 2);
    v30 = (isa + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    goto LABEL_17;
  }

  v127 = v23;
  v128 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v24, v25);
  v133 = v29;
  v30 = isa + 16;
  v126 = *(isa + 2);
  (v126)(v27, a4, a6);
  (a8[6].isa)(v138, a6, a8);
  if (*(v139 + 49) == 1)
  {
    v125 = (*(a8[2].isa + 3))(a6);
  }

  else
  {
    v125 = 1;
  }

  (*(isa + 1))(v27, a6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = attachmentAssertion.value._rawValue;
  v138[0] = attachmentAssertion.value._rawValue;
  attachmentAssertion.value._rawValue = 0x8000000000000000;
  a8 = v128;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v128, v133);
  v35 = *(rawValue + 2);
  v36 = (v33 & 1) == 0;
  v37 = v35 + v36;
  v23 = v127;
  if (__OFADD__(v35, v36))
  {
    __break(1u);
    goto LABEL_78;
  }

  LOBYTE(v38) = v33;
  if (*(rawValue + 3) >= v37)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
  rawValue = v138[0];
  v39 = specialized __RawDictionaryStorage.find<A>(_:)(a8, v133);
  if ((v38 & 1) != (v40 & 1))
  {
    goto LABEL_89;
  }

  v34 = v39;
  while (1)
  {
LABEL_11:
    *(v28 + 156) = rawValue;

    v41 = *(v28 + 156);
    if ((v38 & 1) == 0)
    {
      v42 = v133;
      specialized _NativeDictionary._insert(at:key:value:)(v34, a8, v133, MEMORY[0x277D84F90], *(v28 + 156));
      outlined copy of Data._Representation(a8, v42);
    }

    v28 = *(v41 + 56);
    rawValue = *&v28[8 * v34];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v28[8 * v34] = rawValue;
    if ((v43 & 1) == 0)
    {
LABEL_78:
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
      *&v28[8 * v34] = rawValue;
    }

    v30 = v30 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45 = *(rawValue + 2);
    v44 = *(rawValue + 3);
    if (v45 >= v44 >> 1)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, rawValue);
      *&v28[8 * v34] = rawValue;
    }

    v28 = v126;
    *(rawValue + 2) = v45 + 1;
    v46 = &rawValue[8 * v45];
    v47 = v125;
    *(v46 + 8) = v132;
    *(v46 + 9) = v47;
    outlined consume of Data._Representation(a8, v133);
    v133 = specialized thunk for @callee_guaranteed () -> (@owned [EventRef]);
    a4 = v141;
LABEL_17:
    v38 = v137;
    (v28)(v23, a4, v137);
    v34 = &v136[6];
    v128 = v136[6].isa;
    (v128)(v138, v38);
    v48 = *(v139 + 49);
    v49 = *(isa + 1);
    isa = (isa + 8);
    v49(v23, v38);
    if (v48)
    {
      break;
    }

    v28 = v134;
    v54 = v135;
    v55 = v135 - v134;
    if (!v134)
    {
      v55 = 0;
    }

    if ((v55 & 0x8000000000000000) != 0)
    {
      goto LABEL_80;
    }

    if (!HIDWORD(v55))
    {
      v138[0] = __PAIR64__(v55, v132);
      type metadata accessor for T_AnyAttachmentV0(0);
      v53 = v136;
      Trace_Handle.write<A>(_:omit:)(v138, 0, v38, v56, v136, &protocol witness table for T_AnyAttachmentV0);
      if (v28)
      {
        goto LABEL_54;
      }

      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v133, 0);
    }

LABEL_81:
    __break(1u);
LABEL_82:
    specialized _NativeDictionary.copy()();
    rawValue = v138[0];
  }

  v50 = (*(*(a9 + 8) + 24))();
  if (v134)
  {
    v23 = v135 - v134;
  }

  else
  {
    v23 = 0;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v23 >= 0xFF)
  {
    v53 = v136;
    if (v23 >= 0xFFFF)
    {
      if (v23 < 0xFFFFFFFF)
      {
        LODWORD(v51) = 2;
      }

      else
      {
        LODWORD(v51) = 3;
      }

      if (v23 >= 0xFFFFFFFF)
      {
        v52 = 28672;
      }

      else
      {
        v52 = 24576;
      }
    }

    else
    {
      v52 = 20480;
      LODWORD(v51) = 1;
    }
  }

  else
  {
    LODWORD(v51) = 0;
    v52 = 0x4000;
    v53 = v136;
  }

  LODWORD(v127) = v52 | v50;
  if (readingDebug)
  {
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v57 = readingDebugLog;
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      LODWORD(v126) = v51;
      v51 = v60;
      v138[0] = v60;
      *v59 = 136315138;
      v61 = T_TracepointID.describe(state:)(v60, v127);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v138);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_26C161000, v57, v58, "id: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      v64 = v51;
      LOBYTE(v51) = v126;
      MEMORY[0x26D69EAB0](v64, -1, -1);
      MEMORY[0x26D69EAB0](v59, -1, -1);
    }
  }

  v65 = v53[8].isa;
  v66 = v65(v138, v137, v53);
  v68 = *(v67 + 32);
  if (!*(v68 + 56))
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v69 = v66;
  if (*(v68 + 52) == 2)
  {
    goto LABEL_51;
  }

  v70 = *(v68 + 32);
  LODWORD(v71) = *(v68 + 48);
  v72 = v71 | (*(v68 + 52) << 32);
  if (!v70)
  {
    if (!*(v68 + 48))
    {
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_86;
  }

  v73 = *(v68 + 40) - v70;
  v74 = v73 < v71;
  v75 = v73 - v71;
  if (v74)
  {
    __break(1u);
    goto LABEL_84;
  }

  if (v75 >= 17)
  {
    v76 = 4;
    goto LABEL_52;
  }

LABEL_50:
  CircularBuffer.Transaction.commit()();
LABEL_51:
  v76 = CircularBuffer.Transaction.begin()() + 4;
  v71 = *(v68 + 48);
  v72 = v71 | (*(v68 + 52) << 32);
LABEL_52:
  if (BYTE4(v72) == 2)
  {
    goto LABEL_87;
  }

  *(*(v68 + 32) + v71) = v127;
  *(v68 + 48) = v71 + 4;
  v77 = CircularBuffer.Transaction.write(size:)(v23, v51);
  v69(v138, 0);
  v38 = v137;
  v78 = v65(v138, v137, v53);
  *(v79 + 120) += v77 + v76;
  v78(v138, 0);
  v28 = v134;
  v54 = v135;
  if (!v134)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v133, 0);
  }

LABEL_54:
  v80 = v54 - v28;
  if (v54 - v28 <= 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v133, 0);
  }

  if (readingDebug)
  {
    v138[0] = specialized Collection.prefix(_:)(40, v134, v135);
    v138[1] = v81;
    v138[2] = v82;
    v139 = v83;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
    v84 = String.init<A>(bytes:encoding:)();
    if (v85)
    {
      v86 = v84;
    }

    else
    {
      v86 = 0;
    }

    if (v85)
    {
      v87 = v85;
    }

    else
    {
      v87 = 0xE000000000000000;
    }

    (v128)(v138, v38, v53);
    v88 = v140;
    if (one-time initialization token for readingDebugLog != -1)
    {
      swift_once();
    }

    v89 = readingDebugLog;
    v90 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v138[0] = v128;
      *v91 = 134219010;
      *(v91 + 4) = v88;
      *(v91 + 12) = 1024;
      *(v91 + 14) = v132;
      *(v91 + 18) = 2080;
      v92 = _typeName(_:qualified:)();
      v94 = v87;
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, v138);

      *(v91 + 20) = v95;
      *(v91 + 28) = 2048;
      *(v91 + 30) = v80;
      *(v91 + 38) = 2080;
      v53 = v136;
      v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v94, v138);

      *(v91 + 40) = v96;
      _os_log_impl(&dword_26C161000, v89, v90, "w a %ld: (%u)  %s %ld bytes %s", v91, 0x30u);
      v97 = v128;
      swift_arrayDestroy();
      MEMORY[0x26D69EAB0](v97, -1, -1);
      MEMORY[0x26D69EAB0](v91, -1, -1);
    }

    else
    {
    }

    v38 = v137;
  }

  v98 = v53[8].isa;
  v99 = v98(v138, v38, v53);
  v101 = *(v100 + 32);
  if (*(v101 + 56))
  {
    v102 = v99;
    specialized static CircularBuffer.Transaction.write(buffer:transaction:)(v134, v135, v101);
    v104 = v103;
    v102(v138, 0);
    v105 = v98(v138, v38, v53);
    *(v106 + 120) += v104;
    v105(v138, 0);
    v65 = v129;
    if (!readingDebug || v80 >= v104)
    {
      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v133, 0);
    }

    if (one-time initialization token for readingDebugLog == -1)
    {
LABEL_73:
      v107 = readingDebugLog;
      v108 = v123;
      v109 = *(v123 + 16);
      v110 = v130;
      v109(v65, v122, v130);
      v111 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v107, v111))
      {
        v112 = v108;
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v141 = v114;
        *v113 = 136315138;
        v137 = v107;
        v138[0] = v114;
        v109(v121, v65, v110);
        v115 = String.init<A>(describing:)();
        v117 = v116;
        (*(v112 + 8))(v65, v110);
        v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v117, v138);

        *(v113 + 4) = v118;
        _os_log_impl(&dword_26C161000, v137, v111, "w a Spread %s!", v113, 0xCu);
        v119 = v141;
        __swift_destroy_boxed_opaque_existential_1(v141);
        MEMORY[0x26D69EAB0](v119, -1, -1);
        MEMORY[0x26D69EAB0](v113, -1, -1);
      }

      else
      {
        (*(v108 + 8))(v65, v110);
      }

      return outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v133, 0);
    }

LABEL_84:
    swift_once();
    goto LABEL_73;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Trace_Handle.effectiveCode.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))(v5);
  if (*(v5[3] + 49) == 1)
  {
    return (*(*(a2 + 16) + 24))(a1);
  }

  else
  {
    return 1;
  }
}

uint64_t static T_TracepointID.initialize(attachment:size:)(unsigned int a1, unint64_t a2)
{
  if (a2 >= 0xFFFFFFFF)
  {
    v2 = 28672;
  }

  else
  {
    v2 = 24576;
  }

  if (a2 >= 0xFFFF)
  {
    v3 = v2;
  }

  else
  {
    v3 = 20480;
  }

  if (a2 >= 0xFF)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x4000;
  }

  return v4 | a1;
}

uint64_t Trace.config.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8 = *(v1 + 32);
  v3 = v8;
  v9 = *(v1 + 48);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return outlined init with copy of TraceConfig(v7, v6);
}

__n128 Trace.config.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  outlined destroy of TraceConfig(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

void static Trace.Control.types.getter(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26C32E0A0;
  type metadata accessor for T_TimeSync(0);
  *(v2 + 32) = v3;
  *(v2 + 40) = &protocol witness table for T_TimeSync;
  type metadata accessor for T_ExecutionContext(0);
  *(v2 + 48) = v4;
  *(v2 + 56) = &protocol witness table for T_ExecutionContext;
  type metadata accessor for T_ModeDecl(0);
  *(v2 + 64) = v5;
  *(v2 + 72) = &protocol witness table for T_ModeDecl;
  type metadata accessor for T_TypeDecl(0);
  *(v2 + 80) = v6;
  *(v2 + 88) = &protocol witness table for T_TypeDecl;
  type metadata accessor for T_KeypathDecl(0);
  *(v2 + 96) = v7;
  *(v2 + 104) = &protocol witness table for T_KeypathDecl;
  *(v2 + 112) = &type metadata for TypeID;
  *(v2 + 120) = &protocol witness table for TypeID;
  *(v2 + 128) = &type metadata for KeypathID;
  *(v2 + 136) = &protocol witness table for KeypathID;
  type metadata accessor for T_TypeField(0);
  *(v2 + 144) = v8;
  *(v2 + 152) = &protocol witness table for T_TypeField;
  type metadata accessor for T_AnyAttachmentV0(0);
  *(v2 + 160) = v9;
  *(v2 + 168) = &protocol witness table for T_AnyAttachmentV0;
  *(v2 + 176) = &type metadata for Address;
  *(v2 + 184) = &protocol witness table for Address;
  *(v2 + 192) = MEMORY[0x277D837D0];
  *(v2 + 200) = &protocol witness table for String;
  type metadata accessor for T_ValueDefinition(0);
  *(v2 + 208) = v10;
  *(v2 + 216) = &protocol witness table for T_ValueDefinition;
  *(v2 + 224) = &type metadata for ByteString;
  *(v2 + 232) = &protocol witness table for ByteString;
  *a1 = v2;
}

__n128 Trace.Control.storage.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  v3 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v3;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 32);
  v6 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 Trace.Control.storage.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  v3 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v3;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v6;
  return result;
}

void Trace.Control.write<A>(mode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_dynamicCastMetatype();
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(v3[3] + 49) ^ 1;
  }

  v10 = v3[4];
  if (!*(v10 + 7))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v10;
  v12 = *(v10 + 4);
  if (v12)
  {
    if (v9)
    {
LABEL_12:
      closure #1 in Trace.Control.write<A>(mode:)(v4, v8 != 0, a1, a2, a3);
      v15 = v4[4];
      if (*(v15 + 56))
      {
        CircularBuffer.Transaction.commit()();
        v16 = v4[1];
        if (v16)
        {
          if (*(v15 + 56))
          {
            v17 = v4[2];
            *v15 = v11;
            *(v15 + 4) = v12 & 1;
            *(v15 + 8) = v16;
            *(v15 + 16) = v17;
            *(v15 + 32) = 0;
            *(v15 + 40) = 0;
            *(v15 + 24) = 0;
            *(v15 + 48) = 0;
            *(v15 + 52) = 2;
            *(v15 + 56) = &type metadata for Trace.Control;
            return;
          }

          goto LABEL_19;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  else if (!(v9 & 1 | (v11 != 0)))
  {
    goto LABEL_12;
  }

  CircularBuffer.Transaction.commit()();
  v13 = v4[1];
  if (!v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v10 + 7))
  {
    v14 = v4[2];
    *v10 = 0;
    *(v10 + 4) = v9 & 1;
    *(v10 + 1) = v13;
    *(v10 + 2) = v14;
    *(v10 + 4) = 0;
    *(v10 + 5) = 0;
    *(v10 + 3) = 0;
    v10[12] = 0;
    *(v10 + 52) = 2;
    *(v10 + 7) = &type metadata for Trace.Control;
    goto LABEL_12;
  }

LABEL_21:
  __break(1u);
}

void *closure #1 in Trace.Control.write<A>(mode:)(void *result, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (a2)
  {
    if (*(result[3] + 49))
    {
      specialized T_Header.init()(v116);
      result = specialized Trace_Handle.write<A>(struct:)(v116);
    }

    else
    {
      specialized T_Header.init()(v116);
      result = specialized Trace_Handle.write<A>(struct:)(123123123, (v117 << 16) | 1);
    }
  }

  v8 = v7[3];
  if (*(v8 + 49) == 1)
  {
    v108 = v7;
    v99 = a5;
    v98 = *(a5 + 40);
    result = v98(&v111, a4, a5);
    v9 = v111;
    v10 = v111 + 40;
    v11 = -*(v111 + 16);
    v12 = -1;
    do
    {
      if (v11 + v12 == -1)
      {
        goto LABEL_11;
      }

      if (++v12 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v13 = v10 + 16;
      v14 = *(v10 - 8);
      result = (*(*v10 + 24))(v14);
      v10 = v13;
    }

    while (result != -1);
    v111 = 0;
    v112 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v8 = v112;
    v111 = v14;
    swift_getMetatypeMetadata();
    v15 = String.init<A>(reflecting:)();
    v17 = v16;

    v111 = v15;
    v112 = v17;
    MEMORY[0x26D69CDB0](0xD00000000000002ALL, 0x800000026C33D810);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_11:

    v98(&v115, a4, v99);
    LOBYTE(v110) = *(v8 + 49);
    Evolution_Types.tracepoints(version:)(&v110, &v111);

    v18 = v111;
    v19 = *(v111 + 16);
    v111 = 0;
    v112 = 0;
    v113 = v19;
    v114 = 20;
    v97 = a4;
    if (v19)
    {
      v100 = 0;
      v20 = 0;
      v21 = v18 + 40;
      v22 = v108;
      while (1)
      {
        v24 = *(v21 - 8);
        v23 = *v21;
        v102 = v21;
        v25 = *(*v21 + 8);
        v106 = v25[9](v24, v25);
        v26 = v25[4](v24, v25);
        v28 = v26;
        v29 = v27;
        v30 = v22[12];
        v31 = *v30;
        if (*(*v30 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27), (v33 & 1) != 0))
        {
          v104 = *(*(v31 + 56) + 4 * v32);
        }

        else
        {
          v34 = v20;
          v35 = specialized Trace_Handle.write<A>(attachment:)(v28, v29);
          v30 = v108[12];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v115 = *v30;
          *v30 = 0x8000000000000000;
          v104 = v35;
          v37 = v35;
          v20 = v34;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v28, v29, isUniquelyReferenced_nonNull_native);
          *v30 = v115;
        }

        v38 = v25[5](v24, v25);
        v40 = v38;
        v41 = v39;
        v42 = *v30;
        if (*(*v30 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39), (v44 & 1) != 0))
        {
          v45 = *(*(v42 + 56) + 4 * v43);

          v22 = v108;
        }

        else
        {
          v45 = specialized Trace_Handle.write<A>(attachment:)(v40, v41);
          v46 = v108[12];
          v47 = swift_isUniquelyReferenced_nonNull_native();
          v115 = *v46;
          *v46 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v40, v41, v47);
          *v46 = v115;
          v22 = v108;
        }

        v48 = Trace.Control.writtenOnce(type:lazy:flush:)(v24, 0, 0);
        result = (*(v23 + 16))(v24, v23);
        v49 = result;
        if (v20 == v113 || !v100)
        {
          result = specialized BufferAttachment.append_slow()();
        }

        v50 = v112;
        if (v112 < 0)
        {
          break;
        }

        v51 = v114;
        if ((v112 * v114) >> 64 != (v112 * v114) >> 63)
        {
          goto LABEL_52;
        }

        v100 = v111;
        v52 = (v111 + v112 * v114);
        *v52 = v106;
        v52[1] = v104;
        v52[2] = v45;
        v52[3] = v48;
        v52[4] = v49;
        v20 = v50 + 1;
        v112 = v50 + 1;
        v21 = v102 + 16;
        if (!--v19)
        {

          v53 = v113;
          v54 = v20;
          a4 = v97;
          v55 = v100;
          goto LABEL_29;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return result;
    }

    v53 = 0;
    v55 = 0;
    v54 = 0;
    v51 = 20;
    v22 = v108;
LABEL_29:
    v96 = specialized Trace_Handle.write<A>(attachment:)(v55, v54, v53, v51);
    v112 = 0;
    v98(&v110, a4, v99);
    v109 = *(v22[3] + 49);
    Evolution_Types.attachments(version:)(&v109, &v115);

    v56 = *(v115 + 16);
    if (v56)
    {
      v107 = 0;
      v57 = v115 + 40;
      while (1)
      {
        v58 = *(v57 - 8);
        v59 = *(*v57 + 8);
        v105 = v59[9](v58, v59);
        v60 = v59[4](v58, v59);
        v62 = v60;
        v63 = v61;
        v64 = v22[12];
        v65 = *v64;
        if (*(*v64 + 16) && (v66 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61), (v67 & 1) != 0))
        {
          v103 = *(*(v65 + 56) + 4 * v66);
        }

        else
        {
          v68 = v55;
          v69 = specialized Trace_Handle.write<A>(attachment:)(v62, v63);
          v64 = v108[12];
          v70 = swift_isUniquelyReferenced_nonNull_native();
          v115 = *v64;
          *v64 = 0x8000000000000000;
          v103 = v69;
          v71 = v69;
          v55 = v68;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, v62, v63, v70);
          *v64 = v115;
        }

        v72 = v59[5](v58, v59);
        v74 = v72;
        v75 = v73;
        v76 = *v64;
        if (*(*v64 + 16) && (v77 = specialized __RawDictionaryStorage.find<A>(_:)(v72, v73), (v78 & 1) != 0))
        {
          v101 = *(*(v76 + 56) + 4 * v77);

          v22 = v108;
        }

        else
        {
          v79 = v56;
          v80 = specialized Trace_Handle.write<A>(attachment:)(v74, v75);
          v81 = v108[12];
          v82 = swift_isUniquelyReferenced_nonNull_native();
          v115 = *v81;
          *v81 = 0x8000000000000000;
          v101 = v80;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v80, v74, v75, v82);
          *v81 = v115;
          v22 = v108;
          v56 = v79;
        }

        result = Trace.Control.writtenOnce(type:lazy:flush:)(v58, 0, 0);
        v83 = result;
        if (v107 == v113 || !v55)
        {
          result = specialized BufferAttachment.append_slow()();
        }

        v84 = v112;
        if (v112 < 0)
        {
          goto LABEL_53;
        }

        v51 = v114;
        if ((v112 * v114) >> 64 != (v112 * v114) >> 63)
        {
          goto LABEL_54;
        }

        v55 = v111;
        v85 = (v111 + v112 * v114);
        *v85 = v105;
        v85[1] = v103;
        v85[2] = v101;
        v85[3] = v83;
        v85[4] = 0;
        v107 = v84 + 1;
        v112 = v84 + 1;
        v57 += 16;
        if (!--v56)
        {

          v53 = v113;
          goto LABEL_47;
        }
      }
    }

    v107 = 0;
LABEL_47:
    v86 = specialized Trace_Handle.write<A>(attachment:)(v55, v107, v53, v51);
    v87 = *(v99 + 16);
    v88 = v55;
    v89 = v87[3](v97, v87);
    v90 = v87[4](v97, v87);
    v92 = specialized Trace_Handle.writtenOnce(string:)(v90, v91);

    v93 = v87[5](v97, v87);
    v95 = specialized Trace_Handle.writtenOnce(string:)(v93, v94);

    result = specialized Trace_Handle.write<A>(_:omit:)(v89 | (v92 << 32), v95 | (v96 << 32), v86);
    if (v88)
    {
      return MEMORY[0x26D69EAB0](v88, -1, -1);
    }
  }

  return result;
}

uint64_t specialized BufferAttachment.append(_:)(uint64_t a1, int a2)
{
  result = v2[1];
  if (result == v2[2] || (v6 = *v2) == 0)
  {
    specialized BufferAttachment.append_slow()();
    v6 = *v2;
    result = v2[1];
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v2[3];
    if ((result * v7) >> 64 == (result * v7) >> 63)
    {
      v8 = v6 + result * v7;
      *v8 = a1;
      *(v8 + 8) = a2;
      v2[1] = result + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized BufferAttachment.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = v3[1];
  if (result == v3[2] || (v8 = *v3) == 0)
  {
    specialized BufferAttachment.append_slow()();
    v8 = *v3;
    result = v3[1];
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v3[3];
    if ((result * v9) >> 64 == (result * v9) >> 63)
    {
      v10 = (v8 + result * v9);
      *v10 = a1;
      v10[1] = a2;
      v10[2] = a3;
      v3[1] = result + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t Trace.Control.writeFields(of:)(uint64_t a1)
{
  v2 = v1;
  v23 = 0;
  if (AGTupleCount() != 1)
  {
    result = AGTupleCount();
    if ((result & 0x8000000000000000) == 0)
    {
      if (!result)
      {

        return specialized Trace_Handle.write<A>(attachment:)(0, 0, 20, 12);
      }

      v5 = 0;
      v20 = result;
      while (1)
      {
        v6 = AGTupleElementType();
        v21 = Trace.Control.writtenOnce(type:lazy:flush:)(v6, 0, 0);
        v7 = dispatch thunk of CustomStringConvertible.description.getter();
        v9 = v7;
        v10 = v8;
        v11 = **(v2 + 96);
        if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8), (v13 & 1) != 0))
        {
          v14 = *(*(v11 + 56) + 4 * v12);
        }

        else
        {
          v14 = specialized Trace_Handle.write<A>(attachment:)(v9, v10);
          v15 = *(v2 + 96);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = *v15;
          *v15 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v9, v10, isUniquelyReferenced_nonNull_native);
          *v15 = v22;
        }

        result = AGTupleElementOffset();
        if ((result & 0x8000000000000000) != 0)
        {
          break;
        }

        v17 = result;
        if (HIDWORD(result))
        {
          goto LABEL_21;
        }

        result = specialized BufferAttachment.append_slow()();
        v18 = v23;
        if (v23 < 0)
        {
          goto LABEL_22;
        }

        if ((v23 * 12) >> 64 != (12 * v23) >> 63)
        {
          goto LABEL_23;
        }

        ++v5;
        v19 = 12 * v23;
        *v19 = v14;
        *(v19 + 4) = v21;
        *(v19 + 8) = v17;
        ++v23;
        if (v20 == v5)
        {
          v3 = specialized Trace_Handle.write<A>(attachment:)(0, v18 + 1, 20, 12);
          MEMORY[0x26D69EAB0](0, -1, -1);
          return v3;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](1);
  AGTypeApplyFields2();
  return specialized Trace_Handle.write<A>(attachment:)(0, 0, 20, 12);
}

uint64_t closure #1 in Trace.Control.writeFields(of:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = Trace.Control.writtenOnce(type:lazy:flush:)(a3, 0, 0);
  v5 = String.init(cString:)();
  v7 = specialized Trace_Handle.writtenOnce(string:)(v5, v6);

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    specialized BufferAttachment.append(_:)(v7 | (v4 << 32), a2);
    return 1;
  }

  __break(1u);
  return result;
}

void static Trace.SwiftUI.types.getter(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26C338060;
  type metadata accessor for T_EndGraphUpdateV0(0);
  *(v2 + 32) = v3;
  *(v2 + 40) = &protocol witness table for T_EndGraphUpdateV0;
  type metadata accessor for T_NodeSetValueExtendedV0(0);
  *(v2 + 48) = v4;
  *(v2 + 56) = &protocol witness table for T_NodeSetValueExtendedV0;
  type metadata accessor for T_NodeMarkValueExtendedV0(0);
  *(v2 + 64) = v5;
  *(v2 + 72) = &protocol witness table for T_NodeMarkValueExtendedV0;
  type metadata accessor for T_GraphNeedsUpdateV0(0);
  *(v2 + 80) = v6;
  *(v2 + 88) = &protocol witness table for T_GraphNeedsUpdateV0;
  type metadata accessor for T_TimeSync(0);
  *(v2 + 96) = v7;
  *(v2 + 104) = &protocol witness table for T_TimeSync;
  type metadata accessor for T_BeginTrace(0);
  *(v2 + 112) = v8;
  *(v2 + 120) = &protocol witness table for T_BeginTrace;
  type metadata accessor for T_EndTrace(0);
  *(v2 + 128) = v9;
  *(v2 + 136) = &protocol witness table for T_EndTrace;
  type metadata accessor for T_BeginSubgraphUpdate(0);
  *(v2 + 144) = v10;
  *(v2 + 152) = &protocol witness table for T_BeginSubgraphUpdate;
  type metadata accessor for T_SubgraphTreeUpdate(0);
  *(v2 + 160) = v11;
  *(v2 + 168) = &protocol witness table for T_SubgraphTreeUpdate;
  type metadata accessor for T_EndSubgraphUpdate(0);
  *(v2 + 176) = v12;
  *(v2 + 184) = &protocol witness table for T_EndSubgraphUpdate;
  type metadata accessor for T_BeginNodeUpdate(0);
  *(v2 + 192) = v13;
  *(v2 + 200) = &protocol witness table for T_BeginNodeUpdate;
  type metadata accessor for T_EndNodeUpdate(0);
  *(v2 + 208) = v14;
  *(v2 + 216) = &protocol witness table for T_EndNodeUpdate;
  type metadata accessor for T_BeginValueUpdate(0);
  *(v2 + 224) = v15;
  *(v2 + 232) = &protocol witness table for T_BeginValueUpdate;
  type metadata accessor for T_EndValueUpdate(0);
  *(v2 + 240) = v16;
  *(v2 + 248) = &protocol witness table for T_EndValueUpdate;
  type metadata accessor for T_BeginGraphUpdate(0);
  *(v2 + 256) = v17;
  *(v2 + 264) = &protocol witness table for T_BeginGraphUpdate;
  type metadata accessor for T_EndGraphUpdate(0);
  *(v2 + 272) = v18;
  *(v2 + 280) = &protocol witness table for T_EndGraphUpdate;
  type metadata accessor for T_BeginGraphInvalidation(0);
  *(v2 + 288) = v19;
  *(v2 + 296) = &protocol witness table for T_BeginGraphInvalidation;
  type metadata accessor for T_EndGraphInvalidation(0);
  *(v2 + 304) = v20;
  *(v2 + 312) = &protocol witness table for T_EndGraphInvalidation;
  type metadata accessor for T_BeginModifyNode(0);
  *(v2 + 320) = v21;
  *(v2 + 328) = &protocol witness table for T_BeginModifyNode;
  type metadata accessor for T_EndModifyNode(0);
  *(v2 + 336) = v22;
  *(v2 + 344) = &protocol witness table for T_EndModifyNode;
  type metadata accessor for T_BeginEvent(0);
  *(v2 + 352) = v23;
  *(v2 + 360) = &protocol witness table for T_BeginEvent;
  type metadata accessor for T_EndEvent(0);
  *(v2 + 368) = v24;
  *(v2 + 376) = &protocol witness table for T_EndEvent;
  type metadata accessor for T_GraphCreated(0);
  *(v2 + 384) = v25;
  *(v2 + 392) = &protocol witness table for T_GraphCreated;
  type metadata accessor for T_GraphDestroy(0);
  *(v2 + 400) = v26;
  *(v2 + 408) = &protocol witness table for T_GraphDestroy;
  type metadata accessor for T_GraphNeedsUpdate(0);
  *(v2 + 416) = v27;
  *(v2 + 424) = &protocol witness table for T_GraphNeedsUpdate;
  type metadata accessor for T_SubgraphCreated(0);
  *(v2 + 432) = v28;
  *(v2 + 440) = &protocol witness table for T_SubgraphCreated;
  type metadata accessor for T_SubgraphDestroy(0);
  *(v2 + 448) = v29;
  *(v2 + 456) = &protocol witness table for T_SubgraphDestroy;
  type metadata accessor for T_SubgraphAddChild(0);
  *(v2 + 464) = v30;
  *(v2 + 472) = &protocol witness table for T_SubgraphAddChild;
  type metadata accessor for T_SubgraphRemoveChild(0);
  *(v2 + 480) = v31;
  *(v2 + 488) = &protocol witness table for T_SubgraphRemoveChild;
  type metadata accessor for T_NodeAdded(0);
  *(v2 + 496) = v32;
  *(v2 + 504) = &protocol witness table for T_NodeAdded;
  type metadata accessor for T_NodeAddEdge(0);
  *(v2 + 512) = v33;
  *(v2 + 520) = &protocol witness table for T_NodeAddEdge;
  type metadata accessor for T_NodeRemoveEdge(0);
  *(v2 + 528) = v34;
  *(v2 + 536) = &protocol witness table for T_NodeRemoveEdge;
  type metadata accessor for T_NodeSetEdgePending(0);
  *(v2 + 544) = v35;
  *(v2 + 552) = &protocol witness table for T_NodeSetEdgePending;
  type metadata accessor for T_NodeSetDirty(0);
  *(v2 + 560) = v36;
  *(v2 + 568) = &protocol witness table for T_NodeSetDirty;
  type metadata accessor for T_NodeSetPending(0);
  *(v2 + 576) = v37;
  *(v2 + 584) = &protocol witness table for T_NodeSetPending;
  type metadata accessor for T_NodeSetValue(0);
  *(v2 + 592) = v38;
  *(v2 + 600) = &protocol witness table for T_NodeSetValue;
  type metadata accessor for T_NodeMarkValue(0);
  *(v2 + 608) = v39;
  *(v2 + 616) = &protocol witness table for T_NodeMarkValue;
  type metadata accessor for T_IndirectNodeAdded(0);
  *(v2 + 624) = v40;
  *(v2 + 632) = &protocol witness table for T_IndirectNodeAdded;
  type metadata accessor for T_IndirectNodeSetSource(0);
  *(v2 + 640) = v41;
  *(v2 + 648) = &protocol witness table for T_IndirectNodeSetSource;
  type metadata accessor for T_IndirectNodeSetDependency(0);
  *(v2 + 656) = v42;
  *(v2 + 664) = &protocol witness table for T_IndirectNodeSetDependency;
  type metadata accessor for T_ProfileMark(0);
  *(v2 + 672) = v43;
  *(v2 + 680) = &protocol witness table for T_ProfileMark;
  type metadata accessor for T_RawTreeNode(0);
  *(v2 + 688) = v44;
  *(v2 + 696) = &protocol witness table for T_RawTreeNode;
  type metadata accessor for T_TreeValueNode(0);
  *(v2 + 704) = v45;
  *(v2 + 712) = &protocol witness table for T_TreeValueNode;
  type metadata accessor for T_ReuseEvent(0);
  *(v2 + 720) = v46;
  *(v2 + 728) = &protocol witness table for T_ReuseEvent;
  type metadata accessor for T_ReuseInternal(0);
  *(v2 + 736) = v47;
  *(v2 + 744) = &protocol witness table for T_ReuseInternal;
  type metadata accessor for T_ReuseViewInputsDifferent(0);
  *(v2 + 752) = v48;
  *(v2 + 760) = &protocol witness table for T_ReuseViewInputsDifferent;
  type metadata accessor for T_ReuseFailedTypeComparison(0);
  *(v2 + 768) = v49;
  *(v2 + 776) = &protocol witness table for T_ReuseFailedTypeComparison;
  type metadata accessor for T_ReuseCacheItemEvent(0);
  *(v2 + 784) = v50;
  *(v2 + 792) = &protocol witness table for T_ReuseCacheItemEvent;
  type metadata accessor for T_ReuseCacheItemWithID(0);
  *(v2 + 800) = v51;
  *(v2 + 808) = &protocol witness table for T_ReuseCacheItemWithID;
  type metadata accessor for T_ReuseIncrementalChildReuseAttempt(0);
  *(v2 + 816) = v52;
  *(v2 + 824) = &protocol witness table for T_ReuseIncrementalChildReuseAttempt;
  type metadata accessor for T_ReusePreventingType(0);
  *(v2 + 832) = v53;
  *(v2 + 840) = &protocol witness table for T_ReusePreventingType;
  type metadata accessor for T_ReuseInvalidSubgraph(0);
  *(v2 + 848) = v54;
  *(v2 + 856) = &protocol witness table for T_ReuseInvalidSubgraph;
  type metadata accessor for T_ReuseNeverMadeReusable(0);
  *(v2 + 864) = v55;
  *(v2 + 872) = &protocol witness table for T_ReuseNeverMadeReusable;
  type metadata accessor for T_ReuseBody(0);
  *(v2 + 880) = v56;
  *(v2 + 888) = &protocol witness table for T_ReuseBody;
  type metadata accessor for T_ReuseIncompatibleLists(0);
  *(v2 + 896) = v57;
  *(v2 + 904) = &protocol witness table for T_ReuseIncompatibleLists;
  type metadata accessor for T_ReuseUnaryElement(0);
  *(v2 + 912) = v58;
  *(v2 + 920) = &protocol witness table for T_ReuseUnaryElement;
  type metadata accessor for T_ObservableFired(0);
  *(v2 + 928) = v59;
  *(v2 + 936) = &protocol witness table for T_ObservableFired;
  type metadata accessor for T_TransactionBegin(0);
  *(v2 + 944) = v60;
  *(v2 + 952) = &protocol witness table for T_TransactionBegin;
  type metadata accessor for T_TransactionEnd(0);
  *(v2 + 960) = v61;
  *(v2 + 968) = &protocol witness table for T_TransactionEnd;
  type metadata accessor for T_TransactionEnqueue(0);
  *(v2 + 976) = v62;
  *(v2 + 984) = &protocol witness table for T_TransactionEnqueue;
  type metadata accessor for T_TransactionAppend(0);
  *(v2 + 992) = v63;
  *(v2 + 1000) = &protocol witness table for T_TransactionAppend;
  type metadata accessor for T_AnimationBegin(0);
  *(v2 + 1008) = v64;
  *(v2 + 1016) = &protocol witness table for T_AnimationBegin;
  type metadata accessor for T_AnimationEnd(0);
  *(v2 + 1024) = v65;
  *(v2 + 1032) = &protocol witness table for T_AnimationEnd;
  type metadata accessor for T_AnimationAttrUpdate(0);
  *(v2 + 1040) = v66;
  *(v2 + 1048) = &protocol witness table for T_AnimationAttrUpdate;
  type metadata accessor for T_AnimationScheduleTick(0);
  *(v2 + 1056) = v67;
  *(v2 + 1064) = &protocol witness table for T_AnimationScheduleTick;
  type metadata accessor for T_AnimationTick(0);
  *(v2 + 1072) = v68;
  *(v2 + 1080) = &protocol witness table for T_AnimationTick;
  type metadata accessor for T_AnimationRetarget(0);
  *(v2 + 1088) = v69;
  *(v2 + 1096) = &protocol witness table for T_AnimationRetarget;
  type metadata accessor for T_SetDeadline(0);
  *(v2 + 1104) = v70;
  *(v2 + 1112) = &protocol witness table for T_SetDeadline;
  type metadata accessor for T_PassedDeadline(0);
  *(v2 + 1120) = v71;
  *(v2 + 1128) = &protocol witness table for T_PassedDeadline;
  type metadata accessor for T_EndTreeWrite(0);
  *(v2 + 1136) = v72;
  *(v2 + 1144) = &protocol witness table for T_EndTreeWrite;
  type metadata accessor for T_BeginTreeWrite(0);
  *(v2 + 1152) = v73;
  *(v2 + 1160) = &protocol witness table for T_BeginTreeWrite;
  type metadata accessor for T_CompareFailed(0);
  *(v2 + 1168) = v74;
  *(v2 + 1176) = &protocol witness table for T_CompareFailed;
  type metadata accessor for T_ViewGraphRootValueChange(0);
  *(v2 + 1184) = v75;
  *(v2 + 1192) = &protocol witness table for T_ViewGraphRootValueChange;
  type metadata accessor for T_ViewGraphRootValueChangeV2(0);
  *(v2 + 1200) = v76;
  *(v2 + 1208) = &protocol witness table for T_ViewGraphRootValueChangeV2;
  type metadata accessor for T_ActionEnqueue(0);
  *(v2 + 1216) = v77;
  *(v2 + 1224) = &protocol witness table for T_ActionEnqueue;
  type metadata accessor for T_ActionStart(0);
  *(v2 + 1232) = v78;
  *(v2 + 1240) = &protocol witness table for T_ActionStart;
  type metadata accessor for T_ActionFinish(0);
  *(v2 + 1248) = v79;
  *(v2 + 1256) = &protocol witness table for T_ActionFinish;
  type metadata accessor for T_ActionGestureAttribute(0);
  *(v2 + 1264) = v80;
  *(v2 + 1272) = &protocol witness table for T_ActionGestureAttribute;
  type metadata accessor for T_InstantiateBegin(0);
  *(v2 + 1280) = v81;
  *(v2 + 1288) = &protocol witness table for T_InstantiateBegin;
  type metadata accessor for T_InstantiateEnd(0);
  *(v2 + 1296) = v82;
  *(v2 + 1304) = &protocol witness table for T_InstantiateEnd;
  type metadata accessor for T_UninstantiateBegin(0);
  *(v2 + 1312) = v83;
  *(v2 + 1320) = &protocol witness table for T_UninstantiateBegin;
  type metadata accessor for T_UninstantiateEnd(0);
  *(v2 + 1328) = v84;
  *(v2 + 1336) = &protocol witness table for T_UninstantiateEnd;
  type metadata accessor for T_AssignRootSubgraph(0);
  *(v2 + 1344) = v85;
  *(v2 + 1352) = &protocol witness table for T_AssignRootSubgraph;
  type metadata accessor for T_RecordNamedProperty(0);
  *(v2 + 1360) = v86;
  *(v2 + 1368) = &protocol witness table for T_RecordNamedProperty;
  type metadata accessor for T_DynamicPropertyChange(0);
  *(v2 + 1376) = v87;
  *(v2 + 1384) = &protocol witness table for T_DynamicPropertyChange;
  type metadata accessor for T_DynamicPropertiesChanged(0);
  *(v2 + 1392) = v88;
  *(v2 + 1400) = &protocol witness table for T_DynamicPropertiesChanged;
  *a1 = v2;
}

__n128 Trace.SwiftUI.storage.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  v3 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v3;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 32);
  v6 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 Trace.SwiftUI.storage.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  v3 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v3;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v6;
  return result;
}

uint64_t Trace.SwiftUI.subgraphsNeedingUpdate.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

uint64_t Trace.SwiftUI.debug.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

Swift::Void __swiftcall Trace.SwiftUI.updateTreeSnapshots()()
{
  v2 = (v0 + 128);
  v1 = *(v0 + 128);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(v1 + 16))
  {
    return;
  }

  specialized Trace_Handle.write<A>(_:omit:)(0);
  if (*(*(v0 + 24) + 12) != 1)
  {
    goto LABEL_53;
  }

  v48 = (v0 + 128);
  v49 = v0;
  v3 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for AGSubgraphRef(0);
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef, &protocol conformance descriptor for AGSubgraphRef);
    Set.Iterator.init(_cocoa:)();
    v3 = v52;
    v4 = v53;
    v5 = v54;
    v6 = v55;
    v7 = v56;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_17:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_23:
      outlined consume of Set<AGSubgraphRef>.Iterator._Variant(v3);
      v17 = *v48;
      if ((*v48 & 0xC000000000000001) != 0)
      {

        __CocoaSet.makeIterator()();
        type metadata accessor for AGSubgraphRef(0);
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef, &protocol conformance descriptor for AGSubgraphRef);
        Set.Iterator.init(_cocoa:)();
        v17 = v57;
        v18 = v58;
        v19 = v59;
        v20 = v60;
        v21 = v61;
      }

      else
      {
        v22 = -1 << *(v17 + 32);
        v18 = v17 + 56;
        v19 = ~v22;
        v23 = -v22;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        else
        {
          v24 = -1;
        }

        v21 = v24 & *(v17 + 56);

        v20 = 0;
      }

      v25 = v49;
      v47[0] = v19;
      v26 = (v19 + 64) >> 6;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

LABEL_38:
      while (2)
      {
        v32 = __CocoaSet.Iterator.next()();
        if (v32)
        {
          v50 = v32;
          type metadata accessor for AGSubgraphRef(0);
          swift_dynamicCast();
          v31 = v51;
          i = v20;
          v30 = v21;
          if (v51)
          {
            while (1)
            {
              if (!AGSubgraphIsValid())
              {
                goto LABEL_31;
              }

              v33 = *(v25 + 152);
              if (*(v33 + 16))
              {
                v34 = MEMORY[0x26D69DBA0](*(v33 + 40), v31);
                v35 = -1 << *(v33 + 32);
                v36 = v34 & ~v35;
                if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
                {
                  break;
                }
              }

LABEL_46:
              TreeRoot = AGSubgraphGetTreeRoot();
              if (!TreeRoot)
              {
                goto LABEL_31;
              }

              v47[1] = v47;
              v39 = MEMORY[0x28223BE20](TreeRoot);
              v46[2] = v31;
              v46[3] = v25;
              MEMORY[0x28223BE20](v39);
              v45[2] = v25;
              v40 = AGSubgraphGetTreeRoot();
              if (!v40)
              {
                goto LABEL_59;
              }

              v41 = v40;
              v42 = swift_allocObject();
              *(v42 + 16) = partial apply for closure #1 in writeTree #1 (root:) in writeTreeState(subgraph:handle:);
              *(v42 + 24) = v46;
              v43 = swift_allocObject();
              *(v43 + 16) = partial apply for closure #2 in writeTree #1 (root:) in writeTreeState(subgraph:handle:);
              *(v43 + 24) = v45;
              specialized closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> (), v43, partial apply for specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v42, 1, 0, 0, v41, 0, -1, 0);
              LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

              if (v41)
              {
                goto LABEL_57;
              }

              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                goto LABEL_58;
              }

              v20 = i;
              v21 = v30;
              v25 = v49;
              if (v17 < 0)
              {
                goto LABEL_38;
              }

LABEL_32:
              v27 = v20;
              v28 = v21;
              for (i = v20; !v28; ++v27)
              {
                i = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  goto LABEL_56;
                }

                if (i >= v26)
                {
                  goto LABEL_52;
                }

                v28 = *(v18 + 8 * i);
              }

              v30 = (v28 - 1) & v28;
              v31 = *(*(v17 + 48) + ((i << 9) | (8 * __clz(__rbit64(v28)))));
              if (!v31)
              {
                goto LABEL_52;
              }
            }

            v37 = ~v35;
            while (*(*(v33 + 48) + 8 * v36) != v31)
            {
              v36 = (v36 + 1) & v37;
              if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
              {
                goto LABEL_46;
              }
            }

LABEL_31:

            v20 = i;
            v21 = v30;
            if (v17 < 0)
            {
              continue;
            }

            goto LABEL_32;
          }
        }

        break;
      }

LABEL_52:
      outlined consume of Set<AGSubgraphRef>.Iterator._Variant(v17);
LABEL_53:
      specialized Set._Variant.removeAll(keepingCapacity:)(1);
      setNeedsUpdate = 0;
      specialized Trace_Handle.write<A>(_:omit:)(0);
      return;
    }

    while (1)
    {
      specialized Set._Variant.remove(_:)(v15);

      v6 = v13;
      v7 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v16 = __CocoaSet.Iterator.next()();
      if (v16)
      {
        v51 = v16;
        type metadata accessor for AGSubgraphRef(0);
        swift_dynamicCast();
        v15 = v57;
        v13 = v6;
        v14 = v7;
        if (v57)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void Trace.SwiftUI.added()()
{
  if (*(v0 + 192))
  {
    __break(1u);
  }

  else
  {
    v1 = swift_slowAlloc();
    v2 = v1;
    *(v0 + 192) = v1;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 256) = 0u;
    *(v1 + 272) = 0u;
    *(v1 + 288) = 0u;
    *(v1 + 304) = 0u;
    *(v1 + 320) = 0u;
    *v1 = 4;
    *(v1 + 8) = @objc begin_trace(raw:_:);
    *(v1 + 16) = @objc end_trace(raw:_:);
    *(v1 + 24) = @objc begin_subgraph_update(raw:_:_:);
    *(v1 + 32) = @objc end_subgraph_update(raw:_:);
    *(v1 + 40) = @objc begin_node_update(raw:_:);
    *(v1 + 48) = @objc end_node_update(raw:_:_:);
    *(v1 + 56) = @objc begin_value_update(raw:_:);
    *(v1 + 64) = @objc end_value_update(raw:_:_:);
    *(v1 + 72) = @objc begin_graph_update(raw:_:);
    *(v1 + 80) = @objc end_graph_update(raw:_:);
    *(v1 + 88) = @objc begin_graph_invalidation(raw:_:_:);
    *(v1 + 96) = @objc end_graph_invalidation(raw:_:_:);
    *(v1 + 104) = @objc begin_modify_node(raw:_:);
    *(v1 + 112) = @objc end_modify_node(raw:_:);
    *(v1 + 120) = @objc begin_event(raw:_:_:);
    *(v1 + 128) = @objc end_event(raw:_:_:);
    *(v1 + 136) = @objc graph_created(raw:_:);
    *(v1 + 144) = @objc graph_destroy(raw:_:);
    *(v1 + 152) = @objc graph_needs_update(raw:_:);
    *(v1 + 160) = @objc subgraph_created(raw:_:);
    *(v1 + 168) = @objc subgraph_destroy(raw:_:);
    *(v1 + 176) = @objc subgraph_add_child(raw:_:_:);
    *(v1 + 184) = @objc subgraph_remove_child(raw:_:_:);
    *(v1 + 192) = @objc node_added(raw:_:);
    *(v1 + 200) = @objc node_add_edge(raw:_:_:_:);
    *(v1 + 208) = @objc node_remove_edge(raw:_:_:);
    *(v1 + 216) = @objc node_set_edge_pending(raw:_:_:_:);
    *(v1 + 288) = @objc custom_event(raw:_:_:_:_:);
    *(v1 + 232) = @objc node_set_pending(raw:_:_:);
    *(v1 + 240) = @objc node_set_value(raw:_:_:);
    *(v1 + 248) = @objc node_mark_value(raw:_:);
    *(v1 + 256) = @objc indirect_node_added(raw:_:);
    *(v1 + 264) = @objc indirect_node_set_source(raw:_:_:);
    *(v1 + 272) = @objc indirect_node_set_dependency(raw:_:_:);
    if (*(*(v0 + 24) + 49) == 1)
    {
      *(v1 + 280) = @objc profile_mark(raw:_:);
      *(v1 + 312) = @objc set_deadline(raw:_:);
      *(v1 + 320) = @objc passed_deadline(raw:);
      *(v1 + 328) = @objc compare_failed(raw:_:state:);
    }

    v3 = static SwiftUITrace.registerAtExit;
    v4 = *(v0 + 160);
    if ((v3 & 1) == 0)
    {
      atexit(@objc closure #1 in Trace.SwiftUI.added());
      static SwiftUITrace.registerAtExit = 1;
    }

    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
  }
}

void @objc begin_trace(raw:_:)(uint64_t a1, void *a2)
{
  v2 = a2;
  AGSubgraphSetShouldRecordTree();
  specialized Trace_Handle.write<A>(_:omit:)(v2, 0, 0, 0);
}

void @objc end_trace(raw:_:)(uint64_t a1, void *a2)
{
  v4 = a2;
  Trace.SwiftUI.updateTreeSnapshots()();
  v3 = *(a1 + 48);
  if (v3)
  {
    os_unfair_lock_lock_with_options();
    Trace.Control.flushWrittenTypes()();
    os_unfair_lock_unlock(v3);
    specialized Trace_Handle.write<A>(_:omit:)(v4, 0, 0, 0);
  }

  else
  {
    __break(1u);
  }
}

void @objc end_subgraph_update(raw:_:)(uint64_t a1, void *a2)
{
  v3 = a2;
  specialized Trace_Handle.write<A>(_:omit:)(a2, 0);
  Trace.SwiftUI.updateTreeSnapshots()();
}

void @objc end_node_update(raw:_:_:)(uint64_t a1, unsigned int a2, int a3)
{
  v4 = 0x100000000;
  if (!a3)
  {
    v4 = 0;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v4 | a2, 0);
  v5 = *(a1 + 144);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 144) = v7;
    if (!v7)
    {
      Trace.SwiftUI.updateTreeSnapshots()();
    }
  }
}

void @objc end_value_update(raw:_:_:)(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v3 | a2, 0);
}

void @objc begin_graph_update(raw:_:)(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 168) & 1) == 0)
  {
    *(a1 + 168) |= 1u;
  }

  specialized Trace_Handle.write<A>(_:omit:)(a2, 0);
}

void @objc end_graph_update(raw:_:)(uint64_t a1, void *a2)
{
  if (*(a1 + 168))
  {
    *(a1 + 168) &= ~1u;
  }

  v3 = *(*(a1 + 24) + 49);
  v9 = a2;
  if (v3)
  {
    specialized Trace_Handle.write<A>(_:omit:)(a2, 0);
  }

  else
  {
    backtrace()();
    v8 = specialized Trace_Handle.write<A>(attachment:)(v4, v5, v6, v7);
    specialized Trace_Handle.write<A>(_:omit:)(a2, v8, 0);
  }

  Trace.SwiftUI.updateTreeSnapshots()();
}

void @objc begin_event(raw:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String.init(cString:)();
  v6 = specialized Trace_Handle.write<A>(attachment:)(v4, v5);

  specialized Trace_Handle.write<A>(_:omit:)(v6 | (a2 << 32), 0);
}

uint64_t @objc end_event(raw:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = String.init(cString:)();
  v6 = specialized Trace_Handle.write<A>(attachment:)(v4, v5);

  return specialized Trace_Handle.write<A>(_:omit:)(v6 | (a2 << 32));
}

void @objc graph_needs_update(raw:_:)(uint64_t a1, void *a2)
{
  if (*(*(a1 + 24) + 49))
  {
    specialized Trace_Handle.write<A>(_:omit:)(a2, 0);
  }

  else
  {
    v8 = a2;
    backtrace()();
    v7 = specialized Trace_Handle.write<A>(attachment:)(v3, v4, v5, v6);
    specialized Trace_Handle.write<A>(_:omit:)(a2, v7, 0);
  }
}

void @objc subgraph_created(raw:_:)(uint64_t a1, void *a2)
{
  v2 = a2;
  specialized Set._Variant.insert(_:)(&v3, v2);

  setNeedsUpdate = 1;
  specialized Trace_Handle.write<A>(_:omit:)(v2, 0, 0);
}

void @objc subgraph_destroy(raw:_:)(uint64_t a1, void *a2)
{
  v3 = a2;
  closure #1 in subgraph_destroy(raw:_:)(a1, v3, v3);
}

void @objc subgraph_add_child(raw:_:_:)(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  closure #1 in subgraph_add_child(raw:_:_:)(a1, v5, v6);
}

uint64_t @objc subgraph_remove_child(raw:_:_:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  specialized Set._Variant.insert(_:)(&v6, v4);

  setNeedsUpdate = 1;
  return specialized Trace_Handle.write<A>(_:omit:)(v4, a3);
}

void node_added(raw:_:)(uint64_t a1, uint64_t a2)
{
  v4 = AGGraphGetAttributeSubgraph();

  v5 = AGGraphGetAttributeSubgraph();
  specialized Set._Variant.insert(_:)(&v13, v5);

  setNeedsUpdate = 1;
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *AGGraphGetAttributeInfo();
    os_unfair_lock_lock_with_options();
    v8 = Trace.Control.writtenOnce(type:lazy:flush:)(v7, 1, 1u);
    os_unfair_lock_unlock(v6);
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(AGGraphGetAttributeInfo() + 8);
      os_unfair_lock_lock_with_options();
      v11 = Trace.Control.writtenOnce(type:lazy:flush:)(v10, 1, 1u);
      os_unfair_lock_unlock(v9);
      ValueState = AGGraphGetValueState();
      specialized Trace_Handle.write<A>(_:omit:)(v4, ValueState, v8 << 32, v11 | (a2 << 32));
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t @objc node_set_pending(raw:_:_:)(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  return specialized Trace_Handle.write<A>(_:omit:)(v3 | a2);
}

void @objc node_mark_value(raw:_:)(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 24) + 49))
  {
    specialized Trace_Handle.write<A>(_:omit:)(a2, 0);
  }

  else
  {
    if (*(a1 + 168))
    {
      v8 = 0;
    }

    else
    {
      v2 = a2;
      backtrace()();
      v7 = specialized Trace_Handle.write<A>(attachment:)(v3, v4, v5, v6);
      LODWORD(a2) = v2;
      v8 = v7 << 32;
    }

    specialized Trace_Handle.write<A>(_:omit:)(v8 | a2);
  }
}

uint64_t @objc indirect_node_added(raw:_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = AGGraphGetAttributeSubgraph();
  specialized Set._Variant.insert(_:)(&v7, v3);

  setNeedsUpdate = 1;
  IndirectAttribute = AGGraphGetIndirectAttribute();
  v5 = AGGraphGetAttributeSubgraph();

  LODWORD(v7) = IndirectAttribute;
  *(&v7 + 4) = v5;
  HIDWORD(v7) = v2;
  return specialized Trace_Handle.write<A>(_:omit:)(v7, *(&v7 + 1));
}

void @objc profile_mark(raw:_:)(uint64_t a1, uint64_t a2)
{
  v2 = String.init(cString:)();
  v4 = specialized Trace_Handle.write<A>(attachment:)(v2, v3);

  specialized Trace_Handle.write<A>(_:omit:)(v4, 0);
}

uint64_t closure #2 in Trace.SwiftUI.added()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized Trace_Handle.write<A>(_:omit:)(*(a1 + 160), 1, 0, 0);
  prepareTrace = 1;
  result = AGGraphPrepareTrace();
  prepareTrace = 0;
  v5 = *(a1 + 48);
  if (v5)
  {
    os_unfair_lock_lock_with_options();
    Trace.Control.flushWrittenTypes()();
    os_unfair_lock_unlock(v5);
    specialized Trace_Handle.write<A>(_:omit:)(*(a1 + 160), 0, 0, 0);
    result = AGGraphAddTrace();
    *(a1 + 176) = result;
    *(a1 + 184) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in Trace.SwiftUI.finalize()(uint64_t a1)
{
  Transaction.synchronized<A>(_:)();
  if (*(*(*a1 + 32) + 56))
  {
    CircularBuffer.Transaction.commit()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall Trace.SwiftUI.deallocate()()
{
  v1 = *(v0 + 128);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    return;
  }

  if (*(v1 + 16))
  {
    goto LABEL_8;
  }

LABEL_3:
  Trace_Handle_Storage.deallocate()();
  if (*(v0 + 192))
  {

    JUMPOUT(0x26D69EAB0);
  }
}

uint64_t (*protocol witness for Trace_Handle.added() in conformance Trace.SwiftUI())()
{
  Trace.SwiftUI.added()();
  v1 = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #2 in Trace.SwiftUI.added();
  *(v2 + 24) = v1;
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ();
}

void protocol witness for Trace_Handle.flushWrittenTypes() in conformance Trace.SwiftUI()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    os_unfair_lock_lock_with_options();
    Trace.Control.flushWrittenTypes()();

    os_unfair_lock_unlock(v1);
  }

  else
  {
    __break(1u);
  }
}

void CircularBuffer.init<A>(consumer:stats:sync:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, dispatch_semaphore_t **a6@<X8>)
{
  v11 = dispatch_semaphore_create(6);
  v12 = swift_slowAlloc();
  *v12 = v11;
  v13 = closure #1 in CircularBuffer.init<A>(consumer:stats:sync:)();
  v15 = v14;
  v26[3] = a4;
  v26[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  v17 = *(a4 - 8);
  (*(v17 + 16))(boxed_opaque_existential_1Tm, a1, a4);
  v18 = swift_slowAlloc();
  *v18 = 0;
  *(v18 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v18);
  if (*(v18 + 5))
  {
    __break(1u);
  }

  else
  {
    v23 = v12;
    v24 = a6;
    v19 = a2;
    outlined init with copy of Aggregate_AccessorProtocol(v26, v18 + 8);
    *(v18 + 5) = 1;
    os_unfair_lock_unlock(v18);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v20 = MEMORY[0x277D84F90];
    if (v15)
    {
      v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport08CircularC0V0C0V_Tt1g5(v15, 0);
      memcpy(v21 + 4, v13, 32 * v15);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    *(v22 + 4) = 0;
    os_unfair_lock_lock_with_options();
    os_unfair_lock_assert_owner(v22);
    if ((*(v22 + 5) & 1) == 0)
    {
      *(v22 + 8) = v13;
      *(v22 + 16) = v15;
      *(v22 + 24) = v18;
      *(v22 + 32) = v19;
      *(v22 + 40) = v21;
      *(v22 + 48) = v20;
      *(v22 + 56) = v20;
      *(v22 + 64) = 256;
      *(v22 + 66) = a3 & 1;
      *(v22 + 5) = 1;
      os_unfair_lock_unlock(v22);
      (*(v17 + 8))(a1, a4);
      *v24 = v23;
      v24[1] = v22;
      return;
    }
  }

  __break(1u);
}

uint64_t Trace.HandleBox.type.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t Trace.rootHandles.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Trace.table.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

BOOL Trace.tracing<A>(handle:)(_BOOL8 result)
{
  v2 = *(v1 + 92) + 1;
  v3 = *(v1 + 80);
  while (1)
  {
    if (!--v2)
    {
      return v2 != 0;
    }

    if (!*(v1 + 80))
    {
      break;
    }

    v5 = *v3;
    v3 += 3;
    v4 = v5;
    if (v5)
    {
      v6 = v4 == result;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      return v2 != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t Trace.subscript.read(uint64_t result, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v5 = *(v4 + 80);
  v6 = *(v4 + 92);
  if (a3 != &type metadata for Trace.Control)
  {
    v7 = *(v4 + 96);
    if (!*(v7 + 16))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v8 & 1) == 0)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v9 = *(*(v7 + 56) + 8 * result);
    if (v9 < v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = 0;
  if (!*(v4 + 92))
  {
    goto LABEL_9;
  }

LABEL_5:
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = (v5 + 24 * v9);
  if (*v10)
  {
    v11 = v10[2];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v11);
    return EventTreeStats.count.modify;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t Trace.subscript.read(ValueMetadata **a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  Description = a3[-1].Description;
  *a1 = a3;
  a1[1] = Description;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(Description[4].Kind);
  }

  a1[2] = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  if (v8)
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(*(AssociatedTypeWitness - 8) + 64));
  }

  v13 = result;
  a1[3] = result;
  v14 = *(v4 + 80);
  v15 = *(v4 + 92);
  if (a3 != &type metadata for Trace.Control)
  {
    v16 = *(v4 + 96);
    if (!*(v16 + 16))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v18 = *(*(v16 + 56) + 8 * result);
    if (v18 < v15)
    {
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = 0;
  if (!*(v4 + 92))
  {
    goto LABEL_15;
  }

LABEL_11:
  if (!v14)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = (v14 + 24 * v18);
  if (*v19)
  {
    v20 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v19[2]);
    (*(v11 + 16))(v13, v20, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v11 + 8))(v13, AssociatedTypeWitness);
    return Trace.subscript.read;
  }

LABEL_19:
  __break(1u);
  return result;
}

void Trace.subscript.read(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  (*(a1[1] + 8))(v2, *a1);
  free(v1);

  free(v2);
}

void (*Trace.subscript.modify(uint64_t *a1, uint64_t a2, ValueMetadata *a3, uint64_t a4))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 64) = Trace.subscript.modify(v8, a2, a3, a4);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(AssociatedConformanceWitness + 64);
  v12 = swift_checkMetadataState();
  *(v9 + 72) = v11(v9 + 32, v12, AssociatedConformanceWitness);
  return Trace.subscript.modify;
}

uint64_t Trace.handle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 92) + 1;
  v7 = *(v4 + 80);
  do
  {
    if (!--v6)
    {
      goto LABEL_13;
    }

    if (!*(v4 + 80))
    {
      __break(1u);
LABEL_13:
      _StringGuts.grow(_:)(16);

      v16 = _typeName(_:qualified:)();
      MEMORY[0x26D69CDB0](v16);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v8 = v7 + 3;
    v9 = *v7;
    if (v9)
    {
      v10 = v9 == a1;
    }

    else
    {
      v10 = 0;
    }

    v7 = v8;
  }

  while (!v10);
  v11 = *(v8 - 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v11);
  v14 = *(*(AssociatedTypeWitness - 8) + 16);

  return v14(a4, v13, AssociatedTypeWitness);
}

uint64_t Trace.subscript.getter@<X0>(uint64_t result@<X0>, ValueMetadata *a2@<X1>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 80);
  v7 = *(v4 + 92);
  if (a2 != &type metadata for Trace.Control)
  {
    v8 = *(v4 + 96);
    if (!*(v8 + 16))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if ((v9 & 1) == 0)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v10 = *(*(v8 + 56) + 8 * result);
    if (v10 < v7)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = 0;
  if (!*(v4 + 92))
  {
    goto LABEL_11;
  }

LABEL_5:
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = (v6 + 24 * v10);
  if (!*v11)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v12 = v11[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v12);
  v15 = *(*(AssociatedTypeWitness - 8) + 16);

  return v15(a4, v14, AssociatedTypeWitness);
}

uint64_t Trace.subscript.modify(uint64_t result, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v5 = *(v4 + 80);
  v6 = *(v4 + 92);
  if (a3 != &type metadata for Trace.Control)
  {
    v7 = *(v4 + 96);
    if (!*(v7 + 16))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v8 & 1) == 0)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v9 = *(*(v7 + 56) + 8 * result);
    if (v9 < v6)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = 0;
  if (!*(v4 + 92))
  {
    goto LABEL_9;
  }

LABEL_5:
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = (v5 + 24 * v9);
  if (*v10)
  {
    v11 = v10[2];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v11);
    return EventTreeStats.count.modify;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t Trace.subscript.getter@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  result = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v20 - v10;
  v12 = *(v4 + 80);
  v13 = *(v4 + 92);
  if (a2 != &type metadata for Trace.Control)
  {
    v14 = *(v4 + 96);
    if (!*(v14 + 16))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v15 & 1) == 0)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v16 = *(*(v14 + 56) + 8 * result);
    if (v16 < v13)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = 0;
  if (!*(v4 + 92))
  {
    goto LABEL_9;
  }

LABEL_5:
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = (v12 + 24 * v16);
  if (*v17)
  {
    v18 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v17[2]);
    (*(v8 + 16))(v11, v18, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v8 + 8))(v11, AssociatedTypeWitness);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t Trace.subscript.setter(uint64_t result, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  v6 = result;
  v7 = *(v4 + 80);
  v8 = *(v4 + 92);
  if (a3 != &type metadata for Trace.Control)
  {
    v9 = *(v4 + 96);
    if (!*(v9 + 16))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v10 & 1) == 0)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v11 = *(*(v9 + 56) + 8 * result);
    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = 0;
  if (!*(v4 + 92))
  {
    goto LABEL_9;
  }

LABEL_5:
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = (v7 + 24 * v11);
  if (*v12)
  {
    v13 = v12[2];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v13);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 64))(v19, AssociatedTypeWitness, AssociatedConformanceWitness);
    Description = a3[-1].Description;
    Description[3](v18, v6, a3);
    v16(v19, 0);
    return (Description[1])(v6, a3);
  }

LABEL_13:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(v4 + 80);
  v7 = *(v4 + 92);
  if (a3 != &type metadata for Trace.Control)
  {
    v8 = *(v4 + 96);
    if (!*(v8 + 16))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v9 & 1) == 0)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v10 = *(*(v8 + 56) + 8 * result);
    if (v10 < v7)
    {
      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = 0;
  if (!*(v4 + 92))
  {
    goto LABEL_11;
  }

LABEL_5:
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = (v6 + 24 * v10);
  if (!*v11)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v12 = v11[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v12);
  v15 = *(*(AssociatedTypeWitness - 8) + 40);

  return v15(v14, v5, AssociatedTypeWitness);
}

uint64_t Trace.index<A>(of:)(uint64_t result, ValueMetadata *a2)
{
  if (a2 == &type metadata for Trace.Control)
  {
    return 0;
  }

  v3 = *(v2 + 96);
  if (*(v3 + 16))
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(result);
    if (v4)
    {
      return *(*(v3 + 56) + 8 * result);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Trace.remove<A>(box:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *(a3 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = UnsafeMutableRawPointer.subscript.getter(AssociatedTypeWitness, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = *(AssociatedConformanceWitness + 64);
  v13 = v31(v33, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = (*(a4 + 80))(a3, a4);
  v13(v33, 0);
  v14(v11);

  v15 = v31(v33, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = v32;
  v17 = v15;
  (*(*(a4 + 8) + 8))(a3, *(a4 + 8));
  v17(v33, 0);
  v30 = *(AssociatedConformanceWitness + 48);
  v31 = v11;
  v18 = AssociatedConformanceWitness;
  v30(AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = *(a4 + 48);
  v19(v33, a3, a4);
  v20 = *(v16 + 8);
  v32 = v16 + 8;
  v29 = v20;
  v20(v8, a3);
  if (v34 == 1)
  {
    v27 = v18;
    v26 = v19;
    v21 = v30;
    v30(AssociatedTypeWitness, v18);
    v26(v33, a3, a4);
    v22 = v29;
    v29(v8, a3);
    v18 = v27;
    v21(AssociatedTypeWitness, v27);
    v19 = v26;
    v26(v33, a3, a4);
    v22(v8, a3);
    MEMORY[0x26D69EAB0](v33[4], -1, -1);
  }

  v23 = *(v28 + 72);
  v30(AssociatedTypeWitness, v18);
  v19(v33, a3, a4);
  result = (v29)(v8, a3);
  if (__OFADD__(*v23, v35))
  {
    __break(1u);
  }

  else
  {
    *v23 += v35;
    v25 = v31;
    (*(*(v18 + 8) + 8))(AssociatedTypeWitness);
    UnsafeMutablePointer.deinitialize(count:)();
    return MEMORY[0x26D69D370](v25, AssociatedTypeWitness);
  }

  return result;
}

Swift::Void __swiftcall CircularBuffer.deallocate()()
{
  v1 = v0;
  v2 = *(v0 + 8);
  os_unfair_lock_lock_with_options();
  v3 = *(v2 + 24);
  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock_with_options();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = __swift_project_boxed_opaque_existential_1((v3 + 8), v4);
  v7 = *(v4 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  os_unfair_lock_unlock(v3);
  v10 = (*(v5 + 32))(v4, v5);
  (*(v7 + 8))(v9, v4);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in CircularBuffer.deallocate();
  *(v12 + 24) = v11;
  v21 = _sIg_Ieg_TRTA_0;
  v22 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed () -> ();
  v20 = &block_descriptor_7;
  v13 = _Block_copy(&aBlock);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_8;
  }

  isEscapingClosureAtFileLocation = *(v1 + 8);
  os_unfair_lock_lock_with_options();
  closure #2 in CircularBuffer.deallocate()((isEscapingClosureAtFileLocation + 8));
  os_unfair_lock_unlock(isEscapingClosureAtFileLocation);
  v15 = *v1;
  if (!*v1)
  {
LABEL_9:
    aBlock = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);
    MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33B600);
    v16 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport6UniqueVySo21OS_dispatch_semaphoreCGMd, &_s21SwiftUITracingSupport6UniqueVySo21OS_dispatch_semaphoreCGMR);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  MEMORY[0x26D69EAB0](v15, -1, -1);
  *v1 = 0;
  v12 = *(v1 + 8);
  if (!v12)
  {
LABEL_8:
    __break(1u);

    os_unfair_lock_unlock(isEscapingClosureAtFileLocation);
    __break(1u);
    goto LABEL_9;
  }

  if (*(v12 + 5) == 1)
  {
    outlined destroy of CircularBuffer.Storage(v12 + 8);
  }

  MEMORY[0x26D69EAB0](v12, -1, -1);

  *(v1 + 8) = 0;
}

uint64_t CircularBuffer.describe(state:)(__int128 *a1)
{
  v2 = a1[1];
  v6 = *a1;
  v7[0] = v2;
  *(v7 + 10) = *(a1 + 26);
  v3 = *(v1 + 8);
  os_unfair_lock_lock_with_options();
  closure #1 in CircularBuffer.describe(state:)((v3 + 8), &v6, &v5);
  os_unfair_lock_unlock(v3);
  return v5;
}

char *closure #1 in CircularBuffer.describe(state:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  _StringGuts.grow(_:)(89);
  MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33DFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport14CircularBufferVmMd, &_s21SwiftUITracingSupport14CircularBufferVmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (*(a1 + 56))
  {
    v7 = 0x676E6974697277;
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 56))
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v7, v8);

  result = MEMORY[0x26D69CDB0](0x756228202020200ALL, 0xEE00207372656666);
  v10 = *a2;
  v11 = a1[1];
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    goto LABEL_14;
  }

  v34 = *a2;
  v35 = *a1;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a2;
    v33 = a3;
    v13 = 0;
    v14 = *(v12 + 16);
    v15 = 32 * v14;
    v16 = v35;
    do
    {
      v17 = *(v16 + v13);
      v18 = *(v16 + v13 + 16);
      v19 = *(v16 + v13 + 24);
      v20 = *(v16 + v13 + 28);
      v21 = *(v12 + 24);
      v22 = v14 + 1;
      if (v14 >= v21 >> 1)
      {
        v30 = *(v16 + v13);
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v14 + 1, 1);
        v17 = v30;
        v16 = v35;
      }

      *(v12 + 16) = v22;
      v23 = v12 + v15 + v13;
      *(v23 + 32) = v17;
      *(v23 + 48) = v18;
      *(v23 + 56) = v19;
      *(v23 + 60) = v20;
      v13 += 32;
      v14 = v22;
      --v11;
    }

    while (v11);
    a2 = v32;
    a3 = v33;
    a1 = v31;
    v10 = v34;
LABEL_14:
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v24 = specialized InspectionState.wrapDescription<A>(_:)(v12);
      v26 = v25;

      MEMORY[0x26D69CDB0](v24, v26);

      result = MEMORY[0x26D69CDB0](0x6628202020200A29, 0xEC00000020656572);
      if (!__OFSUB__(*a2, 1))
      {
        v27 = specialized InspectionState.wrapDescription<A>(_:)(a1[4]);
        MEMORY[0x26D69CDB0](v27);

        result = MEMORY[0x26D69CDB0](0x6428202020200A29, 0xED00002079747269);
        if (!__OFSUB__(*a2, 1))
        {
          v28 = specialized InspectionState.wrapDescription<A>(_:)(a1[5]);
          MEMORY[0x26D69CDB0](v28);

          result = MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33E010);
          if (!__OFSUB__(*a2, 1))
          {
            v29 = specialized InspectionState.wrapDescription<A>(_:)(a1[6]);
            MEMORY[0x26D69CDB0](v29);

            result = MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
            *a3 = 0;
            a3[1] = 0xE000000000000000;
            return result;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
  return result;
}

NSUInteger closure #1 in CircularBuffer.init<A>(consumer:stats:sync:)()
{
  v0 = swift_slowAlloc();
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = 8 * result;
  v3 = swift_slowAlloc();
  *v0 = 0;
  *(v0 + 8) = v3;
  *(v0 + 16) = v3 + v2;
  *(v0 + 24) = 0;
  *(v0 + 28) = 0;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = 8 * result;
  v5 = swift_slowAlloc();
  *(v0 + 32) = 1;
  *(v0 + 40) = v5;
  *(v0 + 48) = v5 + v4;
  *(v0 + 56) = 0;
  *(v0 + 60) = 0;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = 8 * result;
  v7 = swift_slowAlloc();
  *(v0 + 64) = 2;
  *(v0 + 72) = v7;
  *(v0 + 80) = v7 + v6;
  *(v0 + 88) = 0;
  *(v0 + 92) = 0;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = 8 * result;
  v9 = swift_slowAlloc();
  *(v0 + 96) = 3;
  *(v0 + 104) = v9;
  *(v0 + 112) = v9 + v8;
  *(v0 + 120) = 0;
  *(v0 + 124) = 0;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = 8 * result;
  v11 = swift_slowAlloc();
  *(v0 + 128) = 4;
  *(v0 + 136) = v11;
  *(v0 + 144) = v11 + v10;
  *(v0 + 152) = 0;
  *(v0 + 156) = 0;
  result = NSPageSize();
  if ((result - 0x1000000000000000) >> 61 == 7)
  {
    v12 = 8 * result;
    v13 = swift_slowAlloc();
    *(v0 + 160) = 5;
    *(v0 + 168) = v13;
    *(v0 + 176) = v13 + v12;
    *(v0 + 184) = 0;
    *(v0 + 188) = 0;
    return v0;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t static CircularBuffer.with<A, B>(consumer:block:)(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA5StatsV_Tt0B5(0, 0, 0, 0);
  (*(v10 + 16))(v12, a1, a4);
  CircularBuffer.init<A>(consumer:stats:sync:)(v12, v13, 0, a4, a6, &v16);
  v15 = v16;
  a2(&v15);
  CircularBuffer.deallocate()();
  if (v13)
  {
    return MEMORY[0x26D69EAB0](v13, -1, -1);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in CircularBuffer.deallocate()(uint64_t a1)
{
  v2 = *(a1 + 8);
  os_unfair_lock_lock_with_options();
  v3 = *(v2 + 24);
  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock_with_options();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  __swift_mutable_project_boxed_opaque_existential_1(v3 + 8, v5);
  (*(*(v4 + 8) + 8))(v5);
  os_unfair_lock_unlock(v3);
  v6 = *(a1 + 8);
  os_unfair_lock_lock_with_options();
  v7 = *(v6 + 24);
  if (v7)
  {
    if (*(v7 + 5))
    {
      __swift_destroy_boxed_opaque_existential_1((v7 + 8));
    }

    MEMORY[0x26D69EAB0](v7, -1, -1);
    *(v6 + 24) = 0;

    os_unfair_lock_unlock(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t *closure #2 in CircularBuffer.deallocate()(uint64_t *result)
{
  if (*(result[6] + 16))
  {
    MEMORY[0x26D69CFC0](result[6], &type metadata for CircularBuffer.CheckoutRef);
    goto LABEL_12;
  }

  if (*(result[5] + 16))
  {
LABEL_12:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v1 = *result;
  if (*result)
  {
    v2 = result[1];
    if (v2)
    {
      v3 = 32 * v2;
      v4 = (v1 + 8);
      do
      {
        v6 = *v4;
        v4 += 4;
        v5 = v6;
        if (v6)
        {
          MEMORY[0x26D69EAB0](v5, -1, -1);
        }

        v3 -= 32;
      }

      while (v3);
    }

    return MEMORY[0x26D69EAB0](v1, -1, -1);
  }

  return result;
}

Swift::Void __swiftcall CircularBuffer.Buffer.deallocate()()
{
  v3 = *(v0 + 8);
  v2 = (v0 + 8);
  v1 = v3;
  if (v3)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
  }

  *v2 = 0;
  v2[1] = 0;
}

BOOL static CircularBuffer.Transaction.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CircularBuffer.Transaction.Kind(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == 1)
  {
    return (*(a2 + 4) & 1) != 0;
  }

  if (*(a2 + 4))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t CircularBuffer.Transaction.describe(state:)(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48) | (*(v1 + 52) << 32);
  _StringGuts.grow(_:)(31);
  MEMORY[0x26D69CDB0](0x6361736E61727428, 0xED0000206E6F6974);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  swift_getMetatypeMetadata();
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  v7 = specialized InspectionState.describe<A>(_:_:)(0x726566667562, 0xE600000000000000, v2, v3, v4, v5);
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
  return 0;
}

Swift::Int __swiftcall CircularBuffer.Transaction.begin()()
{
  if (*(v0 + 52) << 32 != 0x200000000)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = *(v0 + 8);
  v1 = *(v0 + 56);
  v2 = *(v0 + 4);
  v15 = *v0;
  v16 = v2;
  CircularBuffer.checkout(owner:kind:)(v1, &v15, v18);
  v4 = v19;
  v5 = v20;
  v6 = v22;
  v7 = v21;
  v8 = v18[1];
  *v0 = v18[0];
  *(v0 + 16) = v8;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  *(v0 + 52) = v6;
  *(v0 + 48) = v7;
  *(v0 + 53) = *v23;
  *(v0 + 60) = *&v23[7];
  if (*(v0 + 4))
  {
    return 0;
  }

  v9 = *v0;
  if (*v0 > 0x7FFu)
  {
    goto LABEL_19;
  }

  v10 = v7 | (v6 << 32);
  if (BYTE4(v10) != 2)
  {
    if (!v4)
    {
      if (!v10)
      {
LABEL_11:
        CircularBuffer.Transaction.commit()();
        goto LABEL_12;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v11 = v5 - v4;
    v12 = v11 < v10;
    v13 = v11 - v10;
    if (!v12)
    {
      if (v13 >= 17)
      {
        result = 12;
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_12:
  result = CircularBuffer.Transaction.begin()() + 12;
  v10 = *(v0 + 48) | (*(v0 + 52) << 32);
  LODWORD(v7) = *(v0 + 48);
LABEL_13:
  if (BYTE4(v10) == 2)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(*(v0 + 32) + v7) = v9 | 0xB000;
  v14 = v7 + 4;
  *(v0 + 48) = v14;
  if (*(v0 + 52) == 2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(*(v0 + 32) + v14) = -1;
  *(v0 + 48) = v14 + 8;
  if (*(v0 + 52) << 32 == 0x200000000)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  *(v0 + 52) = 1;
  return result;
}

void CircularBuffer.checkout(owner:kind:)(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 4);
  v11 = *v3;
  v10 = *(v3 + 8);
  v12 = **v3;
  OS_dispatch_semaphore.wait()();

  os_unfair_lock_lock_with_options();
  v14 = (v10 + 40);
  v13 = *(v10 + 40);
  if (*(v13 + 16))
  {
    v5 = *(v13 + 32);
    v4 = *(v13 + 40);
    v15 = *(v13 + 48);
    v20 = *(v13 + 60);
    v21 = *(v13 + 56);
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    v14 = *(v10 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 56) = v14;
    v22 = v15;
    v23 = v11;
    LODWORD(v11) = v8;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
  *(v10 + 56) = v14;
LABEL_3:
  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  if (v18 >= v17 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
    *(v10 + 56) = v14;
  }

  *(v14 + 2) = v18 + 1;
  v19 = &v14[16 * v18];
  *(v19 + 4) = a1;
  *(v19 + 5) = v5;
  *a3 = v11;
  *(a3 + 4) = v9;
  *(a3 + 8) = v23;
  *(a3 + 16) = v10;
  *(a3 + 24) = v5;
  *(a3 + 32) = v4;
  *(a3 + 40) = v22;
  *(a3 + 48) = v21;
  *(a3 + 52) = v20 != 0;
  *(a3 + 56) = a1;

  os_unfair_lock_unlock(v10);
}

void CircularBuffer.commit(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 48) | (*(a1 + 52) << 32);
  if ((v12 & 0xFF00000000) == 0x200000000)
  {
    return;
  }

  v43 = v9;
  v44 = v8;
  v47 = *(a1 + 24);
  v13 = *(a1 + 40);
  LODWORD(v14) = v12;
  v15 = v1[1];
  v45 = *v1;
  os_unfair_lock_lock_with_options();
  *(v15 + 65) = 0;
  v16 = *(v15 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v15 + 48) = v16;
  v46 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_4;
  }

LABEL_34:
  v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
  *(v15 + 48) = v16;
LABEL_4:
  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  v20 = v47;
  if (v19 >= v18 >> 1)
  {
    v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    v20 = v47;
    v16 = v42;
    *(v15 + 48) = v42;
  }

  *(v16 + 16) = v19 + 1;
  v21 = v16 + 32 * v19;
  *(v21 + 32) = v20;
  *(v21 + 48) = v13;
  *(v21 + 56) = v14;
  *(v21 + 60) = BYTE4(v12) & 1;
  v16 = v15 + 56;
  v22 = *(v15 + 56);
  isa = v22[2].isa;
  if (isa)
  {
    v12 = 0;
    v13 = v20;
    isEscapingClosureAtFileLocation = 40;
    while (*(&v22->isa + isEscapingClosureAtFileLocation) != v20)
    {
      ++v12;
      isEscapingClosureAtFileLocation += 16;
      if (isa == v12)
      {
        goto LABEL_10;
      }
    }

    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_36;
    }

    v26 = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v22;
    if ((v26 & 1) == 0)
    {
      goto LABEL_37;
    }

    while (1)
    {
      *v16 = v22;
      v27 = v22[2].isa;
      if (v14 != v27)
      {
        break;
      }

LABEL_14:
      *v16 = v22;
      v25 = v22[2].isa;
      isa = v12;
      if (v25 >= v12)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
    }
  }

  else
  {
LABEL_10:
    v25 = v22[2].isa;
LABEL_15:
    specialized Array.replaceSubrange<A>(_:with:)(isa, v25);
    if (*(v15 + 64) == 1)
    {

      os_unfair_lock_unlock(v15);
      return;
    }

    LODWORD(v47) = *(v15 + 66);
    *(v15 + 64) = 1;
    v28 = *(v15 + 24);
    os_unfair_lock_lock_with_options();
    v12 = *(v28 + 32);
    v29 = *(v28 + 40);
    v30 = __swift_project_boxed_opaque_existential_1((v28 + 8), v12);
    v31 = *(v12 - 8);
    MEMORY[0x28223BE20](v30);
    v13 = &v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v13);
    os_unfair_lock_unlock(v28);
    v22 = (*(v29 + 32))(v12, v29);
    v33 = *(v31 + 8);
    v14 = v31 + 8;
    v33(v13, v12);
    os_unfair_lock_unlock(v15);
    isEscapingClosureAtFileLocation = v46;
    if (!v22)
    {
      return;
    }

    if (!v47)
    {
      goto LABEL_32;
    }

    v3 = swift_allocObject();
    *(v3 + 16) = v45;
    *(v3 + 24) = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for closure #2 in CircularBuffer.commit(_:);
    *(v16 + 24) = v3;
    v53 = thunk for @callee_guaranteed () -> ()partial apply;
    v54 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed () -> ();
    v52 = &block_descriptor_34;
    v34 = _Block_copy(&aBlock);
    v6 = v54;

    dispatch_sync(v22, v34);

    _Block_release(v34);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v35 = (&v22[2] + isEscapingClosureAtFileLocation);
  while (1)
  {
    if (v14 >= v27)
    {
      __break(1u);
      goto LABEL_34;
    }

    v39 = *v35;
    if (*v35 != v13)
    {
      break;
    }

LABEL_26:
    ++v14;
    v35 += 2;
    if (v14 == v27)
    {
      goto LABEL_14;
    }
  }

  if (v14 == v12)
  {
LABEL_25:
    ++v12;
    goto LABEL_26;
  }

  if (v12 < v27)
  {
    v36 = &v22[2 * v12 + 4];
    v37 = v36->isa;
    v38 = v36[1].isa;
    v36->isa = *(v35 - 1);
    v36[1].isa = v39;
    *(v35 - 1) = v37;
    *v35 = v38;
    v27 = v22[2].isa;
    goto LABEL_25;
  }

  __break(1u);
LABEL_32:
  v40 = swift_allocObject();
  *(v40 + 16) = v45;
  *(v40 + 24) = v15;
  v53 = partial apply for closure #3 in CircularBuffer.commit(_:);
  v54 = v40;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v52 = &block_descriptor_24_0;
  v41 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v48 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26D69D2D0](0, v11, v6, v41);

  _Block_release(v41);
  (*(isEscapingClosureAtFileLocation + 8))(v6, v3);
  (*(v43 + 8))(v11, v44);
}

Swift::Int __swiftcall CircularBuffer.Transaction.ensureCapacity(_:)(Swift::Int result)
{
  if (((*(v1 + 48) | (*(v1 + 52) << 32)) & 0xFF00000000) != 0x200000000)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      v3 = *(v1 + 40) - v2;
      if (v3 >= *(v1 + 48))
      {
        if (v3 - *(v1 + 48) >= result)
        {
          return 0;
        }

        goto LABEL_8;
      }

      __break(1u);
    }

    else if (!*(v1 + 48))
    {
      if (result < 1)
      {
        return 0;
      }

LABEL_8:
      CircularBuffer.Transaction.commit()();
      goto LABEL_9;
    }

    __break(1u);
    return result;
  }

LABEL_9:

  return CircularBuffer.Transaction.begin()();
}

Swift::Bool __swiftcall CircularBuffer.Buffer.fits(_:)(Swift::Int a1)
{
  v4 = v3;
  if (v1)
  {
    v4 = v2 - v1 - v3;
    if (v2 - v1 >= v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (v4)
  {
    __break(1u);
    return a1;
  }

LABEL_5:
  LOBYTE(a1) = v4 >= a1;
  return a1;
}

void *CircularBuffer.Transaction.write<A>(_:)(void *__src, uint64_t a2)
{
  if (*(v2 + 52) != 2)
  {
    v3 = *(*(a2 - 8) + 64);
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v2 + 48);
      __src = memcpy((*(v2 + 32) + v4), __src, v3);
      if (!HIDWORD(v3))
      {
        *(v2 + 48) = v4 + v3;
        return v3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return __src;
}

uint64_t CircularBuffer.Transaction.write(size:)(uint64_t result, unsigned __int8 a2)
{
  v3 = *(v2 + 48);
  v4 = (*(v2 + 52) << 32) & 0xFFFFFFFFFFLL;
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (v4 != 0x200000000)
      {
        *(*(v2 + 32) + v3) = result;
        result = 2;
        *(v2 + 48) = v3 + 2;
        return result;
      }

      goto LABEL_14;
    }

    if (v4 != 0x200000000)
    {
      *(*(v2 + 32) + v3) = result;
      result = 1;
      *(v2 + 48) = v3 + 1;
      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a2 == 2)
  {
    if (v4 != 0x200000000)
    {
      *(*(v2 + 32) + v3) = result;
      result = 4;
      *(v2 + 48) = v3 + 4;
      return result;
    }

    goto LABEL_13;
  }

  if (v4 != 0x200000000)
  {
    *(*(v2 + 32) + v3) = result;
    result = 8;
    *(v2 + 48) = v3 + 8;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t CircularBuffer.Buffer.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  _StringGuts.grow(_:)(37);
  MEMORY[0x26D69CDB0](0x2072656666756228, 0xE800000000000000);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v5);

  MEMORY[0x26D69CDB0](0x202020200ALL, 0xE500000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](0x6F7028202020200ALL, 0xEF206E6F69746973);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](2689577, 0xE300000000000000);
  return 0;
}

uint64_t CircularBuffer.Buffer.content.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 << 31 >> 63) & 0xC;
  if (a4 < v4)
  {
    __break(1u);
  }

  else
  {
    v5 = a2 + v4;
    if (a2)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CircularBuffer.Buffer.header.getter(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x100000000) == 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    if ((*a2 & 0x8000) != 0)
    {
      return *a2 & 0x7FF;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance CircularBuffer.Buffer()
{
  v3 = *(v0 + 8);
  v2 = (v0 + 8);
  result = v3;
  if (v3)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void closure #2 in CircularBuffer.commit(_:)(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock_with_options();
  closure #1 in CircularBuffer.checkoutToWrite()(&a2[2], &v14);
  while (1)
  {
    os_unfair_lock_unlock(a2);
    if ((v16 & 0xFF00000000) == 0x200000000)
    {
      break;
    }

    v5 = v17;
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v13 = BYTE4(v16) & 1;
    os_unfair_lock_lock_with_options();
    outlined init with copy of Aggregate_AccessorProtocol(&v5[2], &v14);
    os_unfair_lock_unlock(v5);
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(&v14, v16);
    (*&v7[10]._os_unfair_lock_opaque)(&v10, 0, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(&v14);
    *&v14 = a1;
    *(&v14 + 1) = a2;
    v8 = v2 & 0xFFFFFF0000000000 | v12;
    if (v13)
    {
      v9 = 0x100000000;
    }

    else
    {
      v9 = 0;
    }

    v2 = v8 | v9;
    CircularBuffer.checkin(buffer:)(v10, *(&v10 + 1), v11, v8 | v9);
    os_unfair_lock_lock_with_options();
    closure #1 in CircularBuffer.checkoutToWrite()(&a2[2], &v14);
  }
}

void CircularBuffer.checkin(buffer:)(id *a1, id *a2, id *a3, uint64_t a4)
{
  v8 = a4;
  v13 = *v4;
  v12 = *(v4 + 1);
  if (a2 && a4)
  {
    goto LABEL_32;
  }

  if ((a4 & 0x100000000) != 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(v12 + 40) = v4;
    goto LABEL_14;
  }

  os_unfair_lock_lock_with_options();
  v4 = (v12 + 56);
  v5 = *(v12 + 56);
  v14 = *(v5 + 2);
  if (v14)
  {
    v7 = 0;
    v6 = 40;
    while (*&v5[v6] != a1)
    {
      v7 = (v7 + 1);
      v6 += 16;
      if (v14 == v7)
      {
        goto LABEL_8;
      }
    }

    v27 = v13;
    v13 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_34;
    }

    while (1)
    {
      *v4 = v5;
      v17 = *(v5 + 2);
      if (v13 != v17)
      {
        break;
      }

LABEL_12:
      *v4 = v5;
      v15 = *(v5 + 2);
      v14 = v7;
      v13 = v27;
      if (v15 >= v7)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

    v22 = &v5[v6 + 16];
    while (v13 < v17)
    {
      v26 = *v22;
      if (*v22 != a1)
      {
        if (v13 != v7)
        {
          if (v7 >= v17)
          {
            __break(1u);
            break;
          }

          v23 = &v5[16 * v7 + 32];
          v24 = *v23;
          v25 = *(v23 + 1);
          *v23 = *(v22 - 1);
          *(v23 + 1) = v26;
          *(v22 - 1) = v24;
          *v22 = v25;
          v17 = *(v5 + 2);
        }

        v7 = (v7 + 1);
      }

      v13 = (v13 + 1);
      v22 += 2;
      if (v13 == v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_8:
  v15 = *(v5 + 2);
LABEL_13:
  specialized Array.replaceSubrange<A>(_:with:)(v14, v15);
  os_unfair_lock_unlock(v12);
  os_unfair_lock_lock_with_options();
  v4 = *(v12 + 40);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 40) = v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_14:
  v20 = *(v4 + 2);
  v19 = *(v4 + 3);
  if (v20 >= v19 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v4);
    *(v12 + 40) = v4;
  }

  *(v4 + 2) = v20 + 1;
  v21 = &v4[32 * v20];
  *(v21 + 4) = a1;
  *(v21 + 5) = a2;
  *(v21 + 6) = a3;
  *(v21 + 14) = v8;
  v21[60] = 0;
  os_unfair_lock_unlock(v12);
  v28 = *v13;
  OS_dispatch_semaphore.signal()();
}

char *closure #1 in CircularBuffer.checkoutToWrite()@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = *(result + 5);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    v19 = *(v4 + 40);
    v16 = *(v4 + 56);
    v17 = *(v4 + 48);
    v15 = *(v4 + 60);
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    v6 = *(v2 + 2);
    os_unfair_lock_lock_with_options();
    outlined init with copy of Aggregate_AccessorProtocol(&v6[2], v18);
    os_unfair_lock_unlock(v6);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v18);
    v8 = *(v2 + 6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[16 * v10];
    *(v11 + 4) = DynamicType;
    *(v11 + 5) = v5;
    *(v2 + 6) = v8;
    v12 = 0x100000000;
    if (!v15)
    {
      v12 = 0;
    }

    v13 = v12 | v16;
    v14 = v19;
    *a2 = v5;
    a2[1] = v14;
    a2[2] = v17;
  }

  else
  {
    v6 = 0;
    result[56] = 0;
    *a2 = 0;
    a2[1] = 0;
    v13 = 0x200000000;
    a2[2] = 0;
  }

  a2[3] = v13;
  a2[4] = v6;
  return result;
}

uint64_t ATRCWriter.Storage._write(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(*v2 + 16))
    {
      v3 = a2 - result;
      result = ktrace_file_append_data();
      if (result)
      {
LABEL_9:
        _StringGuts.grow(_:)(29);

        v7 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v7);

        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v4 = v2[3];
      v5 = __OFADD__(v4, v3);
      v6 = v4 + v3;
      if (!v5)
      {
        v2[3] = v6;
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

Swift::Void __swiftcall ATRCWriter.deallocate()()
{
  v1 = *(v0 + 8);
  os_unfair_lock_lock_with_options();
  closure #1 in ATRCWriter.deallocate()(v1 + 8);
  os_unfair_lock_unlock(v1);
  if (v1)
  {
    if (*(v1 + 5))
    {
      outlined destroy of ATRCWriter.Storage(v1 + 8);
    }

    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 8) = 0;
  }

  else
  {
    __break(1u);

    os_unfair_lock_unlock(0);
    __break(1u);
  }
}

void closure #1 in ATRCWriter.deallocate()(uint64_t a1)
{
  if (*(a1 + 112) != 1)
  {
    goto LABEL_5;
  }

  if (*(a1 + 96) == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  BufferCompressor.deallocate()();
  if (*(a1 + 96) != 1)
  {
    *(*(a1 + 136) + 16) = *(a1 + 88);
LABEL_5:
    if (*(*a1 + 16))
    {
      ktrace_file_append_finish();
      v2 = *(a1 + 136);
      *(v2 + 8) = *(a1 + 16);
      *(v2 + 24) = *(a1 + 24);
      return;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

uint64_t ATRCWriter.describe(state:)(__int128 *a1)
{
  v1 = a1[1];
  v4 = *a1;
  v5[0] = v1;
  *(v5 + 10) = *(a1 + 26);
  closure #1 in ATRCWriter.describe(state:)(&v4, &v3);
  return v3;
}

uint64_t closure #1 in ATRCWriter.describe(state:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  _StringGuts.grow(_:)(39);

  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v4);

  result = MEMORY[0x26D69CDB0](0x2020200A29, 0xE500000000000000);
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = specialized InspectionState.wrapDescription<A>(_:)();
    MEMORY[0x26D69CDB0](v6);

    result = MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
    *a2 = 0xD00000000000001CLL;
    a2[1] = 0x800000026C33DFD0;
  }

  return result;
}

void ATRCWriter.consume(_:end:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(v2 + 8);
  os_unfair_lock_lock_with_options();
  closure #1 in ATRCWriter.consume(_:end:)(&v5[2], a1, v3);

  os_unfair_lock_unlock(v5);
}

const uint8_t *closure #1 in ATRCWriter.consume(_:end:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *(a1 + 128);
  result = *(a2 + 8);
  if (v6)
  {
    if (!result)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (*result != 123123123)
    {
      goto LABEL_25;
    }

    if (*(a1 + 16))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 16);
  }

  v9 = *(a2 + 24);
  if (result)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11 = __OFADD__(v8, v10);
  v12 = v8 + v10;
  if (v11)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(a1 + 16) = v12;
  if (*(a1 + 112) != 1)
  {
    v15 = &result[v9];
    if (result)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    result = ATRCWriter.Storage._write(_:)(result, v16);
    goto LABEL_22;
  }

  if (*(a1 + 96) == 1)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v13 = &result[v9];
  if (result)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = BufferCompressor.stream(src:finalize:)(result, v14, a3 & 1);
  if (!v3)
  {
LABEL_22:
    *(a1 + 128) = 0;
    *(a2 + 24) = 0;
    *(a2 + 28) = 0;
  }

  return result;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance ATRCWriter(__int128 *a1)
{
  v1 = a1[1];
  v4 = *a1;
  v5[0] = v1;
  *(v5 + 10) = *(a1 + 26);
  closure #1 in ATRCWriter.describe(state:)(&v4, &v3);
  return v3;
}

uint64_t SnapshotConsumer.describe(state:)()
{
  _StringGuts.grow(_:)(22);
  MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33DE10);
  Float.write<A>(to:)();
  MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
  return 0;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance SnapshotConsumer()
{
  _StringGuts.grow(_:)(22);
  MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33DE10);
  Float.write<A>(to:)();
  MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
  return 0;
}

uint64_t T_Header.describe(state:)()
{
  _StringGuts.grow(_:)(193);
  MEMORY[0x26D69CDB0](0x2072656461654828, 0xEF206E6F73726576);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v0);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v1);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v2);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  MEMORY[0x26D69CDB0](0x2064697020200A20, 0xE800000000000000);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](0x62656D697420200ALL, 0xEC00000020657361);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v5);

  MEMORY[0x26D69CDB0](2109216, 0xE300000000000000);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](0x5F6863616D20200ALL, 0xEF206D765F78616DLL);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0xD000000000000014, 0x800000026C33DE30);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33DE50);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](0x7367616C6620200ALL, 0xE900000000000020);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33DE70);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v10);

  MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33DE90);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v11);

  MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33DEB0);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v12);

  MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
  return 0;
}

uint64_t T_Header.Flags.describe(state:)()
{
  v1 = *v0;
  v2 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  strcpy(v5, "(Header.Flags ");
  HIBYTE(v5[1]) = -18;
  if ((v1 & 2) != 0)
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26D69CDB0]((v1 << 62 >> 63) & 0x73746F6F72, v2);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  MEMORY[0x26D69CDB0](2107680, 0xE300000000000000);
  return v5[0];
}

uint64_t closure #1 in T_Header.init()(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if ((a2 & 0x1000000000000000) == 0)
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v26 = a1;
        v27 = a2 & 0xFFFFFFFFFFFFFFLL;
        if (a1 == 43)
        {
          if (v4)
          {
            v5 = v4 - 1;
            if (v4 != 1)
            {
              LOWORD(v9) = 0;
              v16 = &v26 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                if (((10 * v9) & 0xF0000) != 0)
                {
                  break;
                }

                v9 = ((10 * v9) + v17);
                if ((v9 >> 16))
                {
                  break;
                }

                ++v16;
                if (!--v5)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        if (a1 != 45)
        {
          if (v4)
          {
            LOWORD(v9) = 0;
            v19 = &v26;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                break;
              }

              if (((10 * v9) & 0xF0000) != 0)
              {
                break;
              }

              v9 = ((10 * v9) + v20);
              if ((v9 >> 16))
              {
                break;
              }

              v19 = (v19 + 1);
              if (!--v4)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_61;
        }

        if (v4)
        {
          v5 = v4 - 1;
          if (v4 != 1)
          {
            LOWORD(v9) = 0;
            v12 = &v26 + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                break;
              }

              if (((10 * v9) & 0xF0000) != 0)
              {
                break;
              }

              v9 = ((10 * v9) - v13);
              if ((v9 & 0xFFFF0000) != 0)
              {
                break;
              }

              ++v12;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v24 = a1;
          v2 = a2;
          v7 = _StringObject.sharedUTF8.getter();
          a1 = v24;
          v5 = v25;
          a2 = v2;
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            if (--v5)
            {
              v9 = 0;
              if (v7)
              {
                v14 = v7 + 1;
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_61;
                  }

                  if (((10 * v9) & 0xF0000) != 0)
                  {
                    goto LABEL_61;
                  }

                  v9 = ((10 * v9) + v15);
                  if ((v9 >> 16))
                  {
                    goto LABEL_61;
                  }

                  ++v14;
                  if (!--v5)
                  {
                    goto LABEL_62;
                  }
                }
              }

              goto LABEL_60;
            }

            goto LABEL_61;
          }

          goto LABEL_73;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v18 = *v7 - 48;
                if (v18 > 9)
                {
                  goto LABEL_61;
                }

                if (((10 * v9) & 0xF0000) != 0)
                {
                  goto LABEL_61;
                }

                v9 = ((10 * v9) + v18);
                if ((v9 >> 16))
                {
                  goto LABEL_61;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

LABEL_61:
          v9 = 0;
          LOBYTE(v5) = 1;
LABEL_62:
          v28 = v5;
          if ((v5 & 1) == 0)
          {
            return v9;
          }

          goto LABEL_63;
        }

        if (v5 >= 1)
        {
          if (--v5)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_61;
                }

                if (((10 * v9) & 0xF0000) != 0)
                {
                  goto LABEL_61;
                }

                v9 = ((10 * v9) - v11);
                if ((v9 & 0xFFFF0000) != 0)
                {
                  goto LABEL_61;
                }

                ++v10;
                if (!--v5)
                {
                  goto LABEL_62;
                }
              }
            }

LABEL_60:
            LOBYTE(v5) = 0;
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        __break(1u);
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v22 = a1;
    v23 = a2;

    v9 = specialized _parseInteger<A, B>(ascii:radix:)(v22, v23, 10);

    a1 = v22;
    a2 = v23;
    if ((v9 & 0x10000) == 0)
    {
      return v9;
    }
  }

LABEL_63:
  if (a1 == 0x2E39392E39393939 && a2 == 0xEA00000000003939)
  {
    return 9999;
  }

  v2 = a1;
  v3 = a2;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 9999;
  }

LABEL_75:
  v26 = 0;
  v27 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v26 = 0xD000000000000023;
  v27 = 0x800000026C33E380;
  MEMORY[0x26D69CDB0](v2, v3);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int AttachmentID.hashValue.getter(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t AttachmentID.Typed<>.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v9)
  {
    return 7104878;
  }

  v13 = *(v8 + 16);
  if (v13)
  {
    v15 = *(v8 + 24);
    v14 = *(v8 + 32);
    v16 = *(v8 + 40);
    v17 = *(v8 + 41);
    v28 = *v8;
    v29 = v13;
    v30 = v15;
    v31 = v14;
    v32 = v16;
    v33 = v17;
    if (v17)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v26[9] = *(v14 + 144);
      v26[10] = *(v14 + 160);
      v26[11] = *(v14 + 176);
      v27 = *(v14 + 192);
      v26[5] = *(v14 + 80);
      v26[6] = *(v14 + 96);
      v26[7] = *(v14 + 112);
      v26[8] = *(v14 + 128);
      v26[1] = *(v14 + 16);
      v26[2] = *(v14 + 32);
      v26[3] = *(v14 + 48);
      v26[4] = *(v14 + 64);
      v26[0] = *v14;
      Interpreter.Iterator.subscript.getter(v9, a3, v10);
      v21 = InspectionState.describe<A>(_:)(v12, a3, a5, v18, v19, v20);
      (*(v7 + 8))(v12, a3);
      return v21;
    }
  }

  else
  {
    LODWORD(v26[0]) = v9;
    v23 = v9;
    type metadata accessor for AttachmentID.Typed(0, a3, v10, v10);
    *&v26[0] = String.init<A>(describing:)();
    *(&v26[0] + 1) = v24;
    MEMORY[0x26D69CDB0](8992, 0xE200000000000000);
    LODWORD(v28) = v23;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v25);

    return *&v26[0];
  }

  return result;
}

uint64_t AttachmentRef.code.getter(uint64_t a1, char a2)
{
  *(&v3 + 1) = a2 & 1;
  *&v3 = a1;
  return v3 >> 32;
}

uint64_t AttachmentRef.code.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t AttachmentRef.Typed.ref.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  *(v2 + 12) = HIDWORD(a2);
  return result;
}

void AttachmentRef.Typed.hash(into:)(int a1, uint64_t a2, uint64_t a3)
{
  v4 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  Hasher._combine(_:)(HIDWORD(a3));
}

Swift::Int AttachmentRef.Typed.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xFFFFFFFF00000000;
  Hasher.init(_seed:)();
  AttachmentRef.Typed.hash(into:)(v6, a1, v4 | v2 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttachmentRef.Typed<A>(uint64_t a1)
{
  Hasher.init(_seed:)();
  AttachmentRef.Typed.hash(into:)(v3, *v1, *(v1 + 8) | (*(v1 + 12) << 32));
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByNilLiteral.init(nilLiteral:) in conformance AttachmentRef.Typed<A>@<X0>(uint64_t a1@<X8>)
{
  result = AttachmentRef.Typed.init(nilLiteral:)();
  *a1 = 0;
  *(a1 + 8) = v3 & 1;
  *(a1 + 12) = -1;
  return result;
}

void AttachmentRef.hash(into:)(int a1, uint64_t a2, uint64_t a3)
{
  v4 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  Hasher._combine(_:)(HIDWORD(a3));
}

Swift::Int AttachmentRef.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(HIDWORD(a1));
  }

  Hasher._combine(_:)(HIDWORD(a2));
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AttachmentRef(_DWORD *a1, int *a2)
{
  v2 = *a2;
  if (*a1 == -1 && v2 == -1)
  {
    return 1;
  }

  return *a1 == v2 && a1[3] == a2[3];
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttachmentRef()
{
  v2 = *v0;
  v1 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AttachmentRef()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  Hasher._combine(_:)(*v0);
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttachmentRef(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 4);
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  if (v4 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void protocol witness for ExpressibleByNilLiteral.init(nilLiteral:) in conformance AttachmentRef(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = -1;
}

uint64_t static BufferAttachment.construct(attachment:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a3 + 116);
  v10 = *(a3 + 176);
  v11 = (v10 + 40);
  v12 = *(v10 + 56);
  v29[0] = *(v10 + 40);
  v29[1] = v12;
  v30[0] = *(v10 + 72);
  *(v30 + 9) = *(v10 + 81);
  v13 = (v10 + 72);
  v14 = (v10 + 84);
  v15 = (v10 + 88);
  while (1)
  {
    v16 = *v15;
    if (result < *v14)
    {
      v17 = (*v13 + 8 * result);
      if ((v17[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v16)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v29);
    }

    v13 = (v16 + 32);
    v14 = (v16 + 44);
    v15 = (v16 + 48);
    v11 = v16;
  }

  v18 = *v11;
  if (!v18)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v19 = (v18 + 24 * *v17);
  v20 = *v19;
  v21 = *(*v19 + 136);
  v27[0] = *(*v19 + 120);
  v27[1] = v21;
  v28[0] = *(v20 + 152);
  *(v28 + 9) = *(v20 + 161);
  v22 = *(v20 + 120);
  v23 = *(v20 + 152);
  v24 = *(v20 + 164);
  v25 = *(v20 + 168);
  result = (*(*(a5 + 8) + 24))(a4);
  if (result >= v24)
  {
    goto LABEL_10;
  }

  while ((*(v23 + 8 * result + 4) & 1) != 0)
  {
    do
    {
LABEL_10:
      if (!v25)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(result, 0, v27);
      }

      v22 = *v25;
      v23 = v25[4];
      v26 = *(v25 + 11);
      v25 = v25[6];
    }

    while (result >= v26);
  }

  if (!v22)
  {
    goto LABEL_19;
  }

  return specialized BufferAttachment.init(pointer:fileSize:)(a1, a2, a4, a5);
}

uint64_t static BufferAttachment.serialize(value:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(*(a7 - 8) + 64);
  v8 = a2 * v7;
  if ((a2 * v7) >> 64 != (a2 * v7) >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!a4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!(v8 % a4))
  {
    return a5(result, result + v8, a3);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t BufferAttachment.rawSize.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = *(*(a5 - 8) + 64);
  result = a2 * v5;
  if ((a2 * v5) >> 64 != (a2 * v5) >> 63)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t BufferAttachment.rawCapacity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = *(*(a5 - 8) + 64);
  result = a3 * v5;
  if ((a3 * v5) >> 64 != (a3 * v5) >> 63)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t BufferAttachment.subscript.setter(void *a1, uint64_t a2, uint64_t a3)
{
  specialized BufferAttachment.subscript.setter(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t BufferAttachment.mutLast(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[1];
  if (v11)
  {
    v12 = v11 - 1;
    if (v11 - 1 < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = v3[3];
      result = v12 * v13;
      if ((v12 * v13) >> 64 == (v12 * v13) >> 63)
      {
        UnsafeMutableRawPointer.loadUnaligned<A>(fromByteOffset:as:)(result, *v3, v6, v10);
        a1(v10);
        specialized BufferAttachment.subscript.setter(v10, v12, a3);
        return (*(v7 + 8))(v10, v6);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t BufferAttachment.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result *= a3;
    if ((v5 * a3) >> 64 == result >> 63)
    {
      return UnsafeMutableRawPointer.loadUnaligned<A>(fromByteOffset:as:)(result, a2, a4, a5);
    }
  }

  __break(1u);
  return result;
}

uint64_t BufferAttachment.subscript.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    result = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v11 + 64));
    result = malloc(v12);
  }

  v14 = result;
  v9[6] = result;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = v3[3];
    result = a2 * v15;
    if ((a2 * v15) >> 64 == (a2 * v15) >> 63)
    {
      UnsafeMutableRawPointer.loadUnaligned<A>(fromByteOffset:as:)(result, *v3, v10, v14);
      return BufferAttachment.subscript.modify;
    }
  }

  __break(1u);
  return result;
}

void BufferAttachment.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    specialized BufferAttachment.subscript.setter(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    specialized BufferAttachment.subscript.setter((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall BufferAttachment.deallocate()()
{
  if (*v0)
  {
    MEMORY[0x26D69EAB0](*v0, -1, -1);
    *v0 = 0;
  }
}

uint64_t protocol witness for static Attachment.construct(attachment:from:) in conformance BufferAttachment<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = static BufferAttachment.construct(attachment:from:)(a1, a2, a3, *(a4 + 16), *(a4 + 24));
  *a5 = result;
  a5[1] = v7;
  a5[2] = v8;
  a5[3] = v9;
  return result;
}

double protocol witness for Sequence.makeIterator() in conformance BufferAttachment<A>@<D0>(uint64_t a1@<X8>)
{
  BufferAttachment.makeIterator()(*v1, v1[1], v1[2], v1[3], v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t BufferAttachment<>.describe(state:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v9 = a1[3];
  v10 = a1[4];
  v11 = *(a1 + 20);
  v19 = a4;
  type metadata accessor for BufferAttachment(0, a6, a7, a4);
  swift_getWitnessTable();
  v18[1] = v7;
  v18[2] = 0x7FFFFFFFFFFFFFFFLL;
  LOBYTE(v19) = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v18[0] = Array.init<A>(_:)();
  v12 = type metadata accessor for Array();
  v16 = InspectionState.describe<A>(_:)(v18, v12, &protocol witness table for [A], v13, v14, v15);

  return v16;
}

uint64_t T_RawTreeNode.describe(state:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 41))
  {
    goto LABEL_12;
  }

  v7 = *a1;
  v6 = a1[1];
  v8 = *(a1 + 16);
  v10 = a1[3];
  v9 = a1[4];
  v11 = *(a1 + 40);
  v12 = _s21SwiftUITracingSupport12TraceAddressPAAE3ref8ifExists6within0E3RefQzSg13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA10SubgraphIDV_Tt2g5(a4, v9);
  v22 = v7;
  if ((a3 + 1) < 2)
  {
    v13 = 0x6870617267627553;
    v14 = 0xE800000000000000;
    if (a2 != -1)
    {
LABEL_4:
      _StringGuts.grow(_:)(16);

      strcpy(v31, "(parentIndex ");
      HIWORD(v31[1]) = -4864;
      v24 = a2;
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v15);

      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      v17 = v31[0];
      v16 = v31[1];
LABEL_8:
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      strcpy(v23, "(RawTreeNode ");
      HIWORD(v23[1]) = -4864;
      MEMORY[0x26D69CDB0](v13, v14);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v17, v16);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      if (!__OFSUB__(v22, 1))
      {
        v31[0] = v22 - 1;
        v31[1] = v6;
        v32 = v8;
        v33 = v10;
        v34 = v9;
        v35 = v11;
        v36 = 0;
        v19 = specialized InspectionState.wrapDescription<A>(_:)(v12 | ((HIDWORD(v12) & 1) << 32));
        MEMORY[0x26D69CDB0](v19);

        MEMORY[0x26D69CDB0](2109498, 0xE300000000000000);
        v24 = v22 - 1;
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        v26 = v8;
        v27 = v10;
        v28 = v9;
        v29 = v11;
        v30 = 0;
        v20 = specialized InspectionState.wrapDescription<A>(_:)(0x7365756C6176, 0xE600000000000000);
        MEMORY[0x26D69CDB0](v20);

        MEMORY[0x26D69CDB0](41, 0xE100000000000000);
        return v23[0];
      }

      __break(1u);
      goto LABEL_11;
    }

LABEL_7:
    v16 = 0xE400000000000000;
    v17 = 1414483794;
    goto LABEL_8;
  }

  if (!__OFSUB__(v7, 1))
  {
    v37 = v7 - 1;
    v38 = v6;
    v39 = v8;
    v40 = v10;
    v41 = v9;
    v42 = v11;
    v43 = 0;
    v13 = specialized InspectionState.wrapDescription<A>(_:)(a3);
    v14 = v18;
    if (a2 != -1)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

char *protocol witness for static Attachment.construct(attachment:from:) in conformance T_RawTreeNode@<X0>(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 && a2 - a1 >= 24)
  {
    result = *a1;
    LODWORD(v6) = *(a1 + 2);
    LODWORD(v7) = *(a1 + 3);
    v8 = a1[2];
  }

  else
  {
    result = specialized copyBytesSlow #1 <A>() in UnsafeRawBufferPointer.partialLoadUnaligned<A>()(a1, a2);
    v7 = HIDWORD(v6);
  }

  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 12) = v7;
  *(a3 + 16) = v8;
  return result;
}

uint64_t protocol witness for static Attachment.serialize(value:to:) in conformance T_RawTreeNode(void *a1, uint64_t (*a2)(void *, uint64_t *))
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = a1[1];
  v4[2] = v2;
  return a2(v4, &v5);
}

uint64_t T_TreeValueNode.describe(state:)(uint64_t *a1, unint64_t a2, uint64_t a3, int a4)
{
  if (!*(a1 + 41))
  {
    v6 = *a1;
    _s21SwiftUITracingSupport12TraceAddressPAAE3ref_6within0E3RefQz13RawIdentifierQz_AA11InterpreterC8IteratorVztFZAA11AttributeIDV_Tt2g5(a2, a1[4]);
    _StringGuts.grow(_:)(30);
    MEMORY[0x26D69CDB0](0x6C61566565725428, 0xEF2065646F4E6575);
    if (!__OFSUB__(v6, 1))
    {
      v7 = specialized InspectionState.wrapDescription<A>(_:)(HIDWORD(a2));
      MEMORY[0x26D69CDB0](v7);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v8 = specialized InspectionState.wrapDescription<A>(_:)(a4);
      MEMORY[0x26D69CDB0](v8);

      v9 = specialized InspectionState.wrapDescription<A>(_:)(SHIDWORD(a3));
      MEMORY[0x26D69CDB0](v9);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      v10 = specialized InspectionState.wrapDescription<A>(_:)(a3);
      MEMORY[0x26D69CDB0](v10);

      MEMORY[0x26D69CDB0](10528, 0xE200000000000000);
      return 0;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for static Attachment.serialize(value:to:) in conformance T_TreeValueNode(__int128 *a1, uint64_t (*a2)(__int128 *, void *))
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 3);
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = v2;
  return a2(&v4, v7);
}

uint64_t writeTreeValues #1 (elt:attributes:) in writeTreeState(subgraph:handle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = MEMORY[0x277D84FA0];
  v57 = 0;
  v58 = 0;
  v59 = xmmword_26C338070;
  Value = AGTreeElementGetValue();
  v53 = a3;
  if (Value == *MEMORY[0x277CEF7C8])
  {
    v6 = 0;
    v7 = 0;
    v8 = 32;
  }

  else
  {
    v9 = Value;
    v10 = specialized Trace_Handle.writtenOnce(string:)(1718379891, 0xE400000000000000);
    result = AGTreeElementGetType();
    if (result)
    {
      v12 = *(a3 + 48);
      if (!v12)
      {
LABEL_69:
        __break(1u);
        return result;
      }

      v13 = result;
      v14 = a2;
      os_unfair_lock_lock_with_options();
      v15 = Trace.Control.writtenOnce(type:lazy:flush:)(v13, 1, 1u);
      os_unfair_lock_unlock(v12);
      a3 = v53;
    }

    else
    {
      v14 = a2;
      v15 = -1;
    }

    result = specialized BufferAttachment.append_slow()();
    v16 = v58;
    v8 = *(&v59 + 1);
    if ((v58 * *(&v59 + 1)) >> 64 != (v58 * *(&v59 + 1)) >> 63)
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v7 = v57;
    v17 = v57 + v58 * *(&v59 + 1);
    *v17 = v9;
    *(v17 + 4) = v10;
    *(v17 + 8) = v15;
    *(v17 + 12) = 0x2000000000;
    *(v17 + 20) = 0;
    *(v17 + 24) = 0;
    v6 = v16 + 1;
    v58 = v16 + 1;
    specialized Set._Variant.insert(_:)(v56, v9);
    a2 = v14;
  }

  v56[0] = AGTreeElementMakeValueIterator();
  v56[1] = v18;
  result = AGTreeElementGetNextValue();
  if (result)
  {
    v54 = v7;
    v51 = (a2 + 32);
    v52 = a2;
    while (1)
    {
      Key = AGTreeValueGetKey();
      v20 = AGTreeValueGetValue();
      v21 = String.init(cString:)();
      v23 = specialized Trace_Handle.writtenOnce(string:)(v21, v22);

      v24 = *(a3 + 48);
      if (!v24)
      {
        goto LABEL_68;
      }

      Type = AGTreeValueGetType();
      os_unfair_lock_lock_with_options();
      v26 = Trace.Control.writtenOnce(type:lazy:flush:)(Type, 1, 1u);
      os_unfair_lock_unlock(v24);
      Flags = AGTreeValueGetFlags();
      if (!strcmp(Key, "position") || !strcmp(Key, "transform") || !strcmp(Key, "environment") || !strcmp(Key, "phase") || !strcmp(Key, "size"))
      {
        v28 = 4;
      }

      else if (!strcmp(Key, "layoutComputer") || !strcmp(Key, "displayList"))
      {
        v28 = 8;
      }

      else
      {
        v28 = 2 * ((Flags - 1) < 0xF);
      }

      result = AGTreeValueGetValue();
      v29 = v51;
      v30 = *(v52 + 16);
      while (v30)
      {
        v31 = *v29++;
        --v30;
        if (v31 == result)
        {
          v28 |= 1u;
          break;
        }
      }

      if (v6 == v59 || v54 == 0)
      {
        result = specialized BufferAttachment.append_slow()();
      }

      v33 = v58;
      if (v58 < 0)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        __break(1u);
        goto LABEL_67;
      }

      v8 = *(&v59 + 1);
      if ((v58 * *(&v59 + 1)) >> 64 != (v58 * *(&v59 + 1)) >> 63)
      {
        goto LABEL_64;
      }

      v54 = v57;
      v34 = v57 + v58 * *(&v59 + 1);
      *v34 = v20;
      *(v34 + 4) = v23;
      *(v34 + 8) = v26;
      *(v34 + 12) = Flags;
      *(v34 + 16) = v28;
      *(v34 + 20) = 0;
      *(v34 + 24) = 0;
      v6 = v33 + 1;
      v58 = v33 + 1;
      v35 = AGTreeValueGetValue();
      IndirectAttribute = AGGraphGetIndirectAttribute();
      v37 = 0;
      if (IndirectAttribute == v35)
      {
        v37 = AGGraphGetFlags();
      }

      *(v34 + 4) = v23;
      *(v34 + 8) = v26;
      *(v34 + 12) = Flags;
      *(v34 + 16) = v28;
      *(v34 + 20) = v37;
      *(v34 + 24) = 0;
      specialized Set._Variant.insert(_:)(&v55, v20);
      result = AGTreeElementGetNextValue();
      a3 = v53;
      if (!result)
      {
        v7 = v54;
        a2 = v52;
        break;
      }
    }
  }

  v38 = *(a2 + 16);
  if (v38)
  {
    v39 = 0;
    v40 = a2 + 32;
    do
    {
      v41 = *(v40 + 4 * v39);
      v42 = v60;
      if (*(v60 + 16) && (result = MEMORY[0x26D69DB90](*(v60 + 40), *(v40 + 4 * v39), 4), v43 = -1 << *(v42 + 32), v44 = result & ~v43, ((*(v42 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0))
      {
        v45 = ~v43;
        while (*(*(v42 + 48) + 4 * v44) != v41)
        {
          v44 = (v44 + 1) & v45;
          if (((*(v42 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
LABEL_47:
        if (v6 == v59 || v7 == 0)
        {
          result = specialized BufferAttachment.append_slow()();
          v7 = v57;
          v6 = v58;
        }

        if (v6 < 0)
        {
          goto LABEL_65;
        }

        v8 = *(&v59 + 1);
        if ((v6 * *(&v59 + 1)) >> 64 != (v6 * *(&v59 + 1)) >> 63)
        {
          goto LABEL_66;
        }

        v47 = v7 + v6 * *(&v59 + 1);
        *v47 = v41;
        *(v47 + 4) = xmmword_26C338080;
        *(v47 + 20) = 0;
        *(v47 + 24) = 0;
        v58 = ++v6;
        v48 = AGGraphGetIndirectAttribute();
        v49 = 0;
        if (v48 == v41)
        {
          v49 = AGGraphGetFlags();
        }

        *v47 = v41;
        *(v47 + 4) = xmmword_26C338080;
        *(v47 + 20) = v49;
        *(v47 + 24) = 0;
        result = specialized Set._Variant.insert(_:)(v56, v41);
      }

      ++v39;
    }

    while (v39 != v38);
  }

  if (v6)
  {
    result = specialized Trace_Handle.write<A>(attachment:)(v7, v6, v59, v8);
    v50 = result;
    if (!v7)
    {
      return result;
    }

    goto LABEL_59;
  }

  v50 = 0;
  result = 0;
  if (v7)
  {
LABEL_59:
    MEMORY[0x26D69EAB0](v7, -1, -1);
    return v50;
  }

  return result;
}

void closure #1 in writeTree #1 (root:) in writeTreeState(subgraph:handle:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *a1;
  NodeIterator = AGTreeElementMakeNodeIterator();
  v12 = specialized _copySequenceToContiguousArray<A>(_:)(NodeIterator, v11);
  if (!v12[2] || (v13 = AGGraphGetAttributeSubgraph()) == 0)
  {
    v14 = *a2;
    if (*a2)
    {
      v13 = *a2;
    }

    else
    {
      v13 = a4;
      v14 = 0;
    }

    v15 = v14;
  }

  v55 = *a2;
  if (*a2)
  {
    v16 = v13 == *a2;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v60 = v17;
  v59 = specialized Set.contains(_:)(v13, a5[19]);
  v61 = a2;
  v58 = *(a2 + 8);
  Type = AGTreeElementGetType();
  if (Type)
  {
    v19 = a5[6];
    if (!v19)
    {
      __break(1u);
LABEL_80:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v20 = Type;
    os_unfair_lock_lock_with_options();
    v21 = Trace.Control.writtenOnce(type:lazy:flush:)(v20, 1, 1u);
    os_unfair_lock_unlock(v19);
    v22 = v21;
  }

  else
  {
    v22 = 0xFFFFFFFFLL;
  }

  v57 = v22;
  v24 = v59;
  LODWORD(v23) = v60;
  if (v59)
  {

    v56 = 0;
  }

  else
  {
    v25 = writeTreeValues #1 (elt:attributes:) in writeTreeState(subgraph:handle:)(v9, v12, a5);

    v56 = v25 << 32;
  }

  if (v60)
  {
    v26 = 0;
  }

  else
  {
    v26 = v13;
  }

  if (*(a2 + 16) != 1)
  {
    v31 = -1;
    goto LABEL_33;
  }

  if (one-time initialization token for buffers != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    swift_beginAccess();
    rawValue = buffers._rawValue;
    v28 = *(buffers._rawValue + 2);
    if (!v28)
    {
      goto LABEL_80;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    buffers._rawValue = rawValue;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(rawValue);
      buffers._rawValue = rawValue;
    }

    if (v28 > rawValue[2])
    {
      __break(1u);
      goto LABEL_76;
    }

    v30 = v56;
    if (!v23)
    {
      v30 = 0;
    }

    v31 = specialized BufferAttachment.append(_:)(v58, v30 | v57, v26);
    buffers._rawValue = rawValue;
    swift_endAccess();
LABEL_33:
    LOBYTE(v28) = !v24;
    if (((v24 | v23) & 1) == 0)
    {
      break;
    }

    if (*(a5[3] + 16) != 1)
    {
      goto LABEL_54;
    }

LABEL_35:
    AGTreeElementMakeChildIterator();
    NextChild2 = AGTreeElementGetNextChild2();
    if (!NextChild2)
    {
      goto LABEL_63;
    }

    v33 = NextChild2;
    v24 = v28 & 1;
    while (1)
    {
      v34 = *(a3 + 80);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      *(a3 + 80) = v36;
      v37 = *(a3 + 64);
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_72;
      }

      a5 = *a3;
      v26 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a5[2] + 1, 1, a5);
      }

      v23 = a5[2];
      v39 = a5[3];
      if (v23 >= v39 >> 1)
      {
        a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v23 + 1, 1, a5);
      }

      a5[2] = v23 + 1;
      v40 = &a5[5 * v23];
      v40[4] = v33;
      v40[5] = v13;
      v40[6] = v31;
      *(v40 + 56) = v24;
      v40[8] = v38;
      *a3 = a5;
      v33 = AGTreeElementGetNextChild2();
      if (!v33)
      {
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  if (one-time initialization token for buffers == -1)
  {
    goto LABEL_46;
  }

LABEL_76:
  swift_once();
LABEL_46:
  swift_beginAccess();
  v41 = buffers._rawValue;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  buffers._rawValue = v41;
  if ((v42 & 1) == 0)
  {
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
    buffers._rawValue = v41;
  }

  v23 = v41[2];
  v43 = v41[3];
  if (v23 >= v43 >> 1)
  {
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v23 + 1, 1, v41);
  }

  v41[2] = v23 + 1;
  v44 = &v41[5 * v23];
  v44[4] = v13;
  v44[5] = 0;
  v44[6] = 0;
  *(v44 + 7) = xmmword_26C338090;
  buffers._rawValue = v41;
  swift_endAccess();
  swift_beginAccess();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  buffers._rawValue = v41;
  if ((v45 & 1) == 0)
  {
    v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
    buffers._rawValue = v41;
  }

  if (v23 >= v41[2])
  {
    __break(1u);
    goto LABEL_78;
  }

  v58 = -1;
  v31 = specialized BufferAttachment.append(_:)(-1, v56 | v57, v26);
  buffers._rawValue = v41;
  swift_endAccess();
  if (*(a5[3] + 16))
  {
    goto LABEL_35;
  }

LABEL_54:
  AGTreeElementMakeChildIterator();
  NextChild = AGTreeElementGetNextChild();
  if (NextChild)
  {
    v47 = NextChild;
    v24 = v28 & 1;
    do
    {
      v48 = *(a3 + 80);
      v35 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v35)
      {
        goto LABEL_71;
      }

      *(a3 + 80) = v49;
      v50 = *(a3 + 64);
      v51 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_73;
      }

      a5 = *a3;
      v26 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a5[2] + 1, 1, a5);
      }

      v23 = a5[2];
      v52 = a5[3];
      if (v23 >= v52 >> 1)
      {
        a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v23 + 1, 1, a5);
      }

      a5[2] = v23 + 1;
      v53 = &a5[5 * v23];
      v53[4] = v47;
      v53[5] = v13;
      v53[6] = v31;
      *(v53 + 56) = v24;
      v53[8] = v51;
      *a3 = a5;
      v47 = AGTreeElementGetNextChild();
    }

    while (v47);
  }

LABEL_63:

  if (v59)
  {
    *(v61 + 16) = 0;
  }

  else
  {
    *(v61 + 16) = v60 ^ 1;
    if (v58 == -1)
    {
      v54 = 1;
    }

    else
    {
      v54 = v60;
    }

    if (v54 != 1)
    {
LABEL_78:
      __break(1u);
    }
  }

  *v61 = v13;
}

void closure #2 in writeTree #1 (root:) in writeTreeState(subgraph:handle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 16) != 1)
  {
    return;
  }

  v5 = *a2;
  if (one-time initialization token for buffers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  rawValue = buffers._rawValue;
  if (*(buffers._rawValue + 2))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v7 = rawValue[2];
      if (v7)
      {
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(rawValue);
  v7 = rawValue[2];
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_7:
  v8 = v7 - 1;
  v9 = &rawValue[5 * v7];
  v11 = *(v9 - 1);
  v10 = *v9;
  v12 = v9[1];
  v13 = v9[2];
  v14 = v9[3];
  rawValue[2] = v8;
  buffers._rawValue = rawValue;
  swift_endAccess();
  if (!v5)
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v11 != v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = specialized Trace_Handle.write<A>(attachment:)(v10, v12, v13, v14);
  v16 = 0x100000000;
  if (!*(*(a4 + 24) + 16))
  {
    v16 = 0;
  }

  specialized Trace_Handle.write<A>(_:omit:)(v5, v16 | v15, 0);
  specialized Set._Variant.insert(_:)(v17, v5);
  if (v10)
  {
    MEMORY[0x26D69EAB0](v10, -1, -1);
  }
}

void one-time initialization function for backtraceBuffer()
{
  v0 = swift_slowAlloc();
  bzero(v0, 0x1000uLL);
  backtraceBuffer = v0;
  unk_2804965B0 = v0 + 4096;
}

uint64_t closure #1 in ValueDescription.init(string:type:range:within:)@<X0>(uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26C328DC0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](0, 0xE000000000000000);

  MEMORY[0x26D69CDB0](8236, 0xE200000000000000);
  v9 = _typeName(_:qualified:)();
  MEMORY[0x26D69CDB0](v9);

  MEMORY[0x26D69CDB0](8236, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  a6[3] = a5;
  __swift_allocate_boxed_opaque_existential_1Tm(a6);
  return UnsafeRawBufferPointer.load<A>(fromByteOffset:as:)();
}

_OWORD *ValueDescription.value.getter@<X0>(_OWORD *a1@<X8>)
{
  outlined init with copy of ValueDescription.Storage(v1, v4);
  if ((v5 & 1) == 0)
  {
    return outlined init with take of Any(v4, a1);
  }

  result = outlined destroy of ValueDescription.Storage(v4);
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t ValueDescription.description.getter()
{
  outlined init with copy of ValueDescription.Storage(v0, v9);
  if (v10)
  {
    return *&v9[0];
  }

  outlined init with take of Any(v9, &v7);
  v2 = __swift_project_boxed_opaque_existential_1(&v7, v8);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = String.init<A>(describing:)();
  __swift_destroy_boxed_opaque_existential_1(&v7);
  return v5;
}

uint64_t T_TracepointIDV0.describe(state:)()
{
  _StringGuts.grow(_:)(18);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v0);

  MEMORY[0x26D69CDB0](0x203A746420, 0xE500000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v1);

  return 0x3A65646F63205428;
}

uint64_t T_TracepointIDV0.code.setter(uint64_t result)
{
  if (WORD1(result))
  {
    __break(1u);
  }

  else
  {
    *v1 |= result << 24;
  }

  return result;
}

uint64_t (*T_TracepointIDV0._code.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 8) = *v1;
  *(a1 + 12) = HIBYTE(v2);
  return T_TracepointIDV0._code.modify;
}

uint64_t (*T_TracepointIDV0.code.modify(uint64_t a1))(uint64_t result, char a2)
{
  *a1 = v1;
  v2 = *v1;
  *(a1 + 12) = *v1;
  *(a1 + 8) = HIBYTE(v2);
  return T_TracepointIDV0.code.modify;
}

uint64_t T_TracepointIDV0.code.modify(uint64_t result, char a2)
{
  v2 = *(result + 8);
  v3 = HIWORD(v2);
  if (a2)
  {
    if (!v3)
    {
LABEL_5:
      **result = *(result + 12) | (v2 << 24);
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t T_TracepointIDV0.model(within:)(uint64_t *a1, unsigned int a2)
{
  v3 = *(a1 + 29);
  v4 = a1 + 7;
  v5 = *(a1 + 9);
  v73[0] = *(a1 + 7);
  v73[1] = v5;
  v74[0] = *(a1 + 11);
  v6 = a1 + 11;
  v7 = a1 + 25;
  v8 = a1 + 13;
  v9 = 8 * v3;
  *(v74 + 9) = *(a1 + 97);
  v10 = a1 + 7;
  v11 = a1 + 11;
  v12 = a1 + 25;
  v13 = a1 + 13;
  while (1)
  {
    v14 = *v13;
    if (v3 < *v12)
    {
      v15 = (*v11 + v9);
      if ((v15[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v14)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v73);
    }

    v11 = (v14 + 32);
    v12 = (v14 + 44);
    v13 = (v14 + 48);
    v10 = v14;
  }

  v16 = *v10;
  if (!v16)
  {
    goto LABEL_30;
  }

  v17 = v16 + 24 * *v15;
  v18 = a2 & 0x3FFFFF;
  v19 = *(*v17 + 32);
  v20 = __CFADD__(v19, v18);
  v21 = v19 + v18;
  if (v20)
  {
    __break(1u);
    goto LABEL_28;
  }

  *(*v17 + 32) = v21;
  v22 = a1[22];
  v23 = (v22 + 40);
  v24 = *(v22 + 56);
  v71[0] = *(v22 + 40);
  v71[1] = v24;
  v72[0] = *(v22 + 72);
  *(v72 + 9) = *(v22 + 81);
  v25 = (v22 + 72);
  v26 = (v22 + 84);
  v27 = (v22 + 88);
  while (1)
  {
    v28 = *v27;
    if (v3 < *v26)
    {
      v29 = (*v25 + v9);
      if ((v29[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v28)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v3, 0, v71);
    }

    v25 = (v28 + 32);
    v26 = (v28 + 44);
    v27 = (v28 + 48);
    v23 = v28;
  }

  v30 = *v23;
  if (!v30)
  {
    goto LABEL_31;
  }

  v31 = *(v30 + 24 * *v29);
  v32 = v31[11];
  v69 = v31[10];
  *v70 = v32;
  *&v70[9] = *(v31 + 185);
  v33 = v31[7];
  *&v67[96] = v31[6];
  *&v67[112] = v33;
  v34 = v31[9];
  *&v67[128] = v31[8];
  v68 = v34;
  v35 = v31[3];
  *&v67[32] = v31[2];
  *&v67[48] = v35;
  v36 = v31[5];
  *&v67[64] = v31[4];
  *&v67[80] = v36;
  v37 = v31[1];
  *v67 = *v31;
  *&v67[16] = v37;
  if (Interpreter.Iterator.dispatch(_:context:flags:)(HIBYTE(a2), v67, 0))
  {
    v38 = a1[17];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (!v39)
    {
      a1[17] = v40;
      v41 = *(a1 + 29);
      v42 = *(v4 + 1);
      *v67 = *v4;
      *&v67[16] = v42;
      *&v67[32] = *(v4 + 2);
      *&v67[41] = *(v4 + 41);
      while (1)
      {
        v43 = *v8;
        if (v41 < *v7)
        {
          v44 = (*v6 + 8 * v41);
          if ((v44[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v43)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v41, 0, v67);
        }

        v6 = (v43 + 32);
        v7 = (v43 + 44);
        v8 = (v43 + 48);
        v4 = v43;
      }

      if (!*v4)
      {
        goto LABEL_32;
      }

      result = *v4 + 24 * *v44;
      v46 = *(*result + 48);
      v39 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (!v39)
      {
        *(*result + 48) = v47;
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  *v67 = 0;
  *&v67[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  v48 = *a1;
  *&v67[8] = *(a1 + 1);
  *&v67[24] = *(a1 + 3);
  *&v67[40] = a1[5];
  v49 = *(a1 + 48);
  v50 = *(a1 + 10);
  v68 = *(a1 + 9);
  v69 = v50;
  v51 = a1[22];
  v52 = a1[23];
  v70[16] = *(a1 + 192);
  if (v49)
  {
    v53 = 0;
  }

  else
  {
    v53 = v48;
  }

  *v67 = v48;
  v67[48] = v49;
  *&v67[81] = *(a1 + 81);
  *&v67[97] = *(a1 + 97);
  *&v67[113] = *(a1 + 113);
  v54 = a1[16];
  v55 = a1[17];
  *&v67[49] = *(a1 + 49);
  *&v67[65] = *(a1 + 65);
  *&v67[128] = v54;
  *&v67[136] = v55;
  *v70 = v51;
  *&v70[8] = v52;
  v61 = xmmword_26C32DAD0;
  v62 = 0;
  v63 = 0;
  v64 = v51;
  v65 = v53;
  v66 = 1;
  v56 = Interpreter.Iterator.describe(state:)(&v61);
  v58 = v57;

  *v67 = v56;
  *&v67[8] = v58;
  MEMORY[0x26D69CDB0](0xD00000000000001ELL, 0x800000026C33E360);
  *&v61 = v55;
  v59 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v59);

  MEMORY[0x26D69CDB0](0x4449206C6C756620, 0xE900000000000020);
  v60 = T_TracepointIDV0.describe(state:)();
  MEMORY[0x26D69CDB0](v60);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t T_TracepointID.describe(state:)(uint64_t a1, unsigned int a2)
{
  _StringGuts.grow(_:)(22);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v3);

  v4 = MEMORY[0x26D69CDB0](0x203A7367616C6620, 0xE800000000000000);
  v5 = T_TracepointID.Flags.describe(state:)(v4, a2 >> 11);
  MEMORY[0x26D69CDB0](v5);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0x3A65646F63205428;
}

uint64_t T_TracepointID.Flags.describe(state:)(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So14T_TracepointIDa21SwiftUITracingSupportE5FlagsVTt0g5Tf4g_n(&outlined read-only object #0 of T_TracepointID.Flags.describe(state:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So14T_TracepointIDa21SwiftUITracingSupportE5FlagsVtMd, &_sSS_So14T_TracepointIDa21SwiftUITracingSupportE5FlagsVtMR);
  result = swift_arrayDestroy();
  v5 = 0;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = v2;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v5 << 6);
    v14 = *(*(v3 + 56) + v13);
    if ((v14 & ~v10) == 0)
    {
      v17 = *(*(v3 + 48) + 16 * v13);
      v18 = *(*(v3 + 48) + 16 * v13 + 8);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      MEMORY[0x26D69CDB0](v17, v18);

      if (v14)
      {
        v10 &= v14 ^ 0xFF;
      }
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v3 + 64 + 8 * v11);
    ++v5;
    if (v8)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  if ((~v2 & 6) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v15 = 3289899;
    }

    else
    {
      if ((v2 & 2) == 0)
      {
        v15 = 126;
        v16 = 0xE100000000000000;
        goto LABEL_20;
      }

      v15 = 3551531;
    }
  }

  else
  {
    v15 = 3421739;
  }

  v16 = 0xE300000000000000;
LABEL_20:
  MEMORY[0x26D69CDB0](v15, v16);
  result = 91;
  if (v10)
  {
    MEMORY[0x26D69CDB0](35, 0xE100000000000000);
    return 91;
  }

  return result;
}