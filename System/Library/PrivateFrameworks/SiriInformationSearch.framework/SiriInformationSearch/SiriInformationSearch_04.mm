uint64_t PommesDialogStateManager.allStates()(uint64_t a1)
{
  v1 = PommesDialogStateManager.readDialogState()();
  v2 = PommesDialogStateManager.preprocess(_:)(v1);

  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of PommesDialogStateManager.allStates());
  outlined destroy of MediaUserStateCenter?(&unk_283698100, &_sSS_SStMd, &_sSS_SStMR);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  return v6;
}

Swift::Void __swiftcall PommesDialogStateManager.reset()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x223DDF550](0x7453676F6C616944, 0xEB00000000657461);
    [v2 removeObjectForKey_];

    v4 = *(v0 + 16);
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DAE30);
      [v5 removeObjectForKey_];
    }
  }
}

uint64_t PommesDialogStateManager.readDialogState()()
{
  v1 = *v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[2];
  if (!v6)
  {
    v27 = 0u;
    v28 = 0u;
LABEL_13:
    outlined destroy of MediaUserStateCenter?(&v27, &_sypSgMd, &_sypSgMR);
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v7 = v6;
  v8 = MEMORY[0x223DDF550](0x7453676F6C616944, 0xEB00000000657461);
  v9 = [v7 objectForKey_];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo12NSDictionaryCGMd, &_sSDySSSo12NSDictionaryCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v10 = v25;
  Date.init()();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.pommes);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24[0] = v1;
    v16 = v15;
    *&v27 = v15;
    *v14 = 136315138;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    v17 = Dictionary.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v27);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2232BB000, v12, v13, "User Defaults dialog state: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v20 = v16;
    v1 = v24[0];
    MEMORY[0x223DE0F80](v20, -1, -1);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

  MEMORY[0x28223BE20](v21);
  v24[-2] = v5;
  v24[-1] = v1;
  v22 = specialized Dictionary.compactMapValues<A>(_:)(partial apply for closure #1 in PommesDialogStateManager.readDialogState(), &v24[-4], v10);

  (*(v3 + 8))(v5, v2);
  return v22;
}

uint64_t closure #1 in PommesDialogStateManager.readDialogState()@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v37 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for Date();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  *&v40 = 1701869940;
  *(&v40 + 1) = 0xE400000000000000;
  v12 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (!*(&v41 + 1))
  {
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v19 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
    return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
  }

  v35 = v38;
  v36 = v39;
  *&v40 = 0x65756C6176;
  *(&v40 + 1) = 0xE500000000000000;
  v13 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (!*(&v41 + 1))
  {
LABEL_34:

LABEL_35:
    outlined destroy of MediaUserStateCenter?(&v42, &_sypSgMd, &_sypSgMR);
    goto LABEL_39;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:

    goto LABEL_39;
  }

  v33 = v38;
  v34 = v39;
  *&v40 = 0x746E756F63;
  *(&v40 + 1) = 0xE500000000000000;
  v14 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v14)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (!*(&v41 + 1))
  {
LABEL_33:

    goto LABEL_34;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  v31 = v15;
  v32 = v38;
  *&v40 = 0x736574756E696DLL;
  *(&v40 + 1) = 0xE700000000000000;
  v16 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (!*(&v41 + 1))
  {

    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_37:

    goto LABEL_38;
  }

  v31 = v38;
  *&v40 = 0x6E6F69746361;
  *(&v40 + 1) = 0xE600000000000000;
  v17 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (!*(&v41 + 1))
  {

    goto LABEL_33;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_37;
  }

  v30 = v38;
  *&v40 = 0x6974617269707865;
  *(&v40 + 1) = 0xEA00000000006E6FLL;
  v18 = [v11 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v21 = v44;
  v42 = v40;
  v43 = v41;
  if (!*(&v41 + 1))
  {

    outlined destroy of MediaUserStateCenter?(&v42, &_sypSgMd, &_sypSgMR);
    (*(v21 + 56))(v7, 1, 1, v8);
    goto LABEL_45;
  }

  v22 = swift_dynamicCast();
  (*(v21 + 56))(v7, v22 ^ 1u, 1, v8);
  if ((*(v21 + 48))(v7, 1, v8) == 1)
  {

LABEL_45:
    outlined destroy of MediaUserStateCenter?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_39;
  }

  v23 = *(v21 + 32);
  v23(v10, v7, v8);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    (*(v21 + 8))(v10, v8);

    goto LABEL_39;
  }

  v24 = v30;
  v25 = MEMORY[0x223DDFAA0](v30);

  v26 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
  v23(&a3[*(v26 + 36)], v10, v8);
  v27 = v36;
  *a3 = v35;
  *(a3 + 1) = v27;
  v28 = v34;
  *(a3 + 2) = v33;
  *(a3 + 3) = v28;
  v29 = v31;
  *(a3 + 4) = v32;
  *(a3 + 5) = v29;
  *(a3 + 6) = v25;
  return (*(*(v26 - 8) + 56))(a3, 0, 1, v26);
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v45 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
  v7 = MEMORY[0x28223BE20](v45);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v40 - v10;
  v11 = MEMORY[0x277D84F98];
  v12 = *(a3 + 64);
  v52 = MEMORY[0x277D84F98];
  v13 = 1 << *(a3 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v41 = v9;
  v44 = (v9 + 48);
  v48 = a3;

  v18 = 0;
  if (v15)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v19 >= v16)
    {

      return v11;
    }

    v15 = *(a3 + 64 + 8 * v19);
    ++v18;
  }

  while (!v15);
  v49 = v11;
  v18 = v19;
  while (1)
  {
    v20 = __clz(__rbit64(v15)) | (v18 << 6);
    v21 = (*(v48 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v51 = *(*(v48 + 56) + 8 * v20);
    v24 = v51;

    v25 = v24;
    v26 = v50;
    v46(&v51);
    v50 = v26;
    if (v26)
    {
      v39 = v49;

      return v39;
    }

    v15 &= v15 - 1;

    if ((*v44)(v6, 1, v45) == 1)
    {

      result = outlined destroy of MediaUserStateCenter?(v6, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMd, &_s21SiriInformationSearch24PommesDialogStateManagerC0E5Value33_DDAE567450B270DABF8F98FB8100F132LLVSgMR);
      v11 = v49;
      if (!v15)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v27 = v42;
    outlined init with take of PommesDialogStateManager.DialogValue(v6, v42, type metadata accessor for PommesDialogStateManager.DialogValue);
    outlined init with take of PommesDialogStateManager.DialogValue(v27, v43, type metadata accessor for PommesDialogStateManager.DialogValue);
    v11 = v49;
    v28 = *(v49 + 16);
    if (*(v49 + 24) <= v28)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28 + 1, 1);
      v11 = v52;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v29 = v11 + 64;
    v30 = -1 << *(v11 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v11 + 64 + 8 * (v31 >> 6))) == 0)
    {
      break;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v11 + 64 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v29 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = (*(v11 + 48) + 16 * v33);
    *v38 = v23;
    v38[1] = v22;
    result = outlined init with take of PommesDialogStateManager.DialogValue(v43, *(v11 + 56) + *(v41 + 72) * v33, type metadata accessor for PommesDialogStateManager.DialogValue);
    ++*(v11 + 16);
    if (!v15)
    {
      goto LABEL_8;
    }

LABEL_7:
    v49 = v11;
  }

  v34 = 0;
  v35 = (63 - v30) >> 6;
  while (++v32 != v35 || (v34 & 1) == 0)
  {
    v36 = v32 == v35;
    if (v32 == v35)
    {
      v32 = 0;
    }

    v34 |= v36;
    v37 = *(v29 + 8 * v32);
    if (v37 != -1)
    {
      v33 = __clz(__rbit64(~v37)) + (v32 << 6);
      goto LABEL_26;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

Swift::Int specialized Dictionary.compactMapValues<A>(_:)(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a1;
  v58 = a2;
  v6 = &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR);
  v7 = MEMORY[0x28223BE20](v59);
  v53 = (&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v62 = &v52 - v10;
  MEMORY[0x28223BE20](v9);
  v56 = &v52 - v11;
  v54 = MEMORY[0x277D84F98];
  v64 = MEMORY[0x277D84F98];
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v60 = a3;

  v18 = 0;
  v55 = a3 + 64;
LABEL_5:
  v19 = v18;
  if (!v15)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v20 = v6;
    v61 = v4;
    v18 = v19;
LABEL_11:
    v21 = __clz(__rbit64(v15)) | (v18 << 6);
    v22 = *(v60 + 56);
    v23 = (*(v60 + 48) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v22 + *(*(type metadata accessor for PommesDialogStateManager.DialogValue(0) - 8) + 72) * v21;
    v27 = v59;
    v28 = v56;
    outlined init with copy of PommesDialogStateManager.DialogValue(v26, &v56[*(v59 + 48)]);
    *v28 = v25;
    v28[1] = v24;
    v29 = v28;
    v30 = v62;
    v6 = v20;
    outlined init with take of PommesSearchReason?(v29, v62, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, v20);
    v31 = *(v27 + 48);

    v32 = v30 + v31;
    v33 = v61;
    v57(v63, v32);
    v4 = v33;
    if (v33)
    {
      break;
    }

    v15 &= v15 - 1;
    v34 = v63[0];
    if (v63[0])
    {
      outlined init with take of PommesSearchReason?(v62, v53, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, v20);
      v35 = v54;
      v36 = *(v54 + 16);
      if (*(v54 + 24) <= v36)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36 + 1, 1);
        v35 = v64;
      }

      v54 = v35;
      v38 = *v53;
      v37 = v53[1];
      Hasher.init(_seed:)();
      v61 = v37;
      String.hash(into:)();
      result = Hasher._finalize()();
      v39 = v54;
      v40 = v54 + 64;
      v41 = -1 << *(v54 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v54 + 64 + 8 * (v42 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v41) >> 6;
        while (++v43 != v46 || (v45 & 1) == 0)
        {
          v47 = v43 == v46;
          if (v43 == v46)
          {
            v43 = 0;
          }

          v45 |= v47;
          v48 = *(v40 + 8 * v43);
          if (v48 != -1)
          {
            v44 = __clz(__rbit64(~v48)) + (v43 << 6);
            goto LABEL_27;
          }
        }

        goto LABEL_31;
      }

      v44 = __clz(__rbit64((-1 << v42) & ~*(v54 + 64 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
      v49 = *(v59 + 48);
      *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      v50 = (v39[6] + 16 * v44);
      v51 = v61;
      *v50 = v38;
      v50[1] = v51;
      *(v39[7] + 8 * v44) = v34;
      ++v39[2];
      result = outlined destroy of PommesDialogStateManager.DialogValue(v53 + v49);
      v12 = v55;
      goto LABEL_5;
    }

    result = outlined destroy of MediaUserStateCenter?(v62, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, v20);
    v19 = v18;
    v12 = v55;
    if (!v15)
    {
LABEL_7:
      while (1)
      {
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v18 >= v16)
        {
          goto LABEL_29;
        }

        v15 = *(v12 + 8 * v18);
        ++v19;
        if (v15)
        {
          v20 = v6;
          v61 = v4;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }
  }

  outlined destroy of MediaUserStateCenter?(v62, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR);

LABEL_29:

  return v54;
}

Swift::Int specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void **, uint64_t), void (*a4)(unint64_t, uint64_t))
{
  v5 = v4;
  v6 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (1)
  {
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v38 = *(*(a1 + 56) + 8 * v15);
    v19 = v38;

    v20 = v19;
    a3(v37, &v38, a2);
    if (v5)
    {
      break;
    }

    v10 &= v10 - 1;

    v21 = v37[0];
    if (v37[0])
    {
      v22 = *(v6 + 16);
      if (*(v6 + 24) <= v22)
      {
        a4(v22 + 1, 1);
        v6 = v39;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = v6 + 64;
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v6 + 64 + 8 * (v25 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v24) >> 6;
        while (++v26 != v29 || (v28 & 1) == 0)
        {
          v30 = v26 == v29;
          if (v26 == v29)
          {
            v26 = 0;
          }

          v28 |= v30;
          v31 = *(v23 + 8 * v26);
          if (v31 != -1)
          {
            v27 = __clz(__rbit64(~v31)) + (v26 << 6);
            goto LABEL_25;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~*(v6 + 64 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v32 = (*(v6 + 48) + 16 * v27);
      *v32 = v18;
      v32[1] = v17;
      *(*(v6 + 56) + 8 * v27) = v21;
      ++*(v6 + 16);
      v5 = 0;
      if (!v10)
      {
LABEL_7:
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v11)
          {

            return v6;
          }

          v10 = *(v7 + 8 * v14);
          ++v13;
          if (v10)
          {
            v13 = v14;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {

      v5 = 0;
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  return v6;
}

unint64_t PommesDialogStateManager.readStateCacheEntries()()
{
  v1 = v0[2];
  if (!v1)
  {
    v18 = 0u;
    v19 = 0u;
LABEL_13:
    outlined destroy of MediaUserStateCenter?(&v18, &_sypSgMd, &_sypSgMR);
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So15StateCacheEntryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v2 = *v0;
  v3 = v1;
  v4 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DAE30);
  v5 = [v3 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo12NSDictionaryCGMd, &_sSDySSSo12NSDictionaryCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So15StateCacheEntryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v18 = v10;
    *v9 = 136315138;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    v11 = Dictionary.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2232BB000, v7, v8, "User Defaults state cache entries: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  v14 = specialized Dictionary.compactMapValues<A>(_:)(v16, v2, closure #1 in PommesDialogStateManager.readStateCacheEntries(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));

  return v14;
}

void closure #1 in PommesDialogStateManager.readStateCacheEntries()(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *&v19 = 0x6574617473;
  *(&v19 + 1) = 0xE500000000000000;
  v4 = [*a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v24 = 0u;
  }

  v25 = v19;
  v26 = v24;
  if (!*(&v24 + 1))
  {
LABEL_26:
    outlined destroy of MediaUserStateCenter?(&v25, &_sypSgMd, &_sypSgMR);
    goto LABEL_30;
  }

  if (swift_dynamicCast())
  {
    v27 = v18;
    *&v20 = 0xD000000000000013;
    *(&v20 + 1) = 0x80000002234DAEC0;
    v5 = [v3 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v24 = 0u;
    }

    v25 = v20;
    v26 = v24;
    if (*(&v24 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_29:

        goto LABEL_30;
      }

      *&v21 = 0xD000000000000014;
      *(&v21 + 1) = 0x80000002234DAEE0;
      v6 = [v3 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v6)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0u;
        v24 = 0u;
      }

      v25 = v21;
      v26 = v24;
      if (*(&v24 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_28:

          goto LABEL_29;
        }

        *&v22 = 0xD000000000000015;
        *(&v22 + 1) = 0x80000002234DAF00;
        v7 = [v3 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v7)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0u;
          v24 = 0u;
        }

        v25 = v22;
        v26 = v24;
        if (*(&v24 + 1))
        {
          if (swift_dynamicCast())
          {
            *&v23 = 0xD000000000000016;
            *(&v23 + 1) = 0x80000002234DAF20;
            v8 = [v3 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v8)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v23 = 0u;
              v24 = 0u;
            }

            v25 = v23;
            v26 = v24;
            if (*(&v24 + 1))
            {
              if (swift_dynamicCast())
              {
                v10 = [objc_allocWithZone(MEMORY[0x277D052E0]) init];
                type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v10 setFamily:isa state:? counts:?];

                v12 = Array._bridgeToObjectiveC()().super.isa;

                [v10 setFamily:v12 state:? minutes:?];

                v13 = Array._bridgeToObjectiveC()().super.isa;

                [v10 setUse:v13 case:? state:? counts:?];

                v14 = Array._bridgeToObjectiveC()().super.isa;

                [v10 setUse:v14 case:? state:? minutes:?];

                v15 = objc_allocWithZone(MEMORY[0x277D052D8]);
                v16 = v10;
                v17 = MEMORY[0x223DDF550](v27);

                v9 = [v15 initWithState:v17 meta:v16];

                goto LABEL_31;
              }
            }

            else
            {

              outlined destroy of MediaUserStateCenter?(&v25, &_sypSgMd, &_sypSgMR);
            }

            v9 = 0;
            goto LABEL_31;
          }

          goto LABEL_28;
        }
      }
    }

    goto LABEL_26;
  }

LABEL_30:
  v9 = 0;
LABEL_31:
  *a2 = v9;
}

uint64_t closure #1 in PommesDialogStateManager.writeDialogState(_:)@<X0>(char *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = *(type metadata accessor for PommesDialogStateManager.DialogValue(0) + 36);
  if ((static Date.> infix(_:_:)() & 1) != 0 && (v6 = *(a1 + 6), v6 != 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
    v8 = swift_allocObject();
    v9 = v8;
    v10 = MEMORY[0x277D837D0];
    *(v8 + 16) = xmmword_2234D1940;
    *(v8 + 32) = 1701869940;
    *(v8 + 40) = 0xE400000000000000;
    v11 = *a1;
    v12 = *(a1 + 1);
    *(v8 + 56) = v10;
    *(v8 + 64) = v11;
    *(v8 + 72) = v12;
    *(v8 + 88) = v10;
    *(v8 + 96) = 0x65756C6176;
    *(v8 + 104) = 0xE500000000000000;
    v13 = *(a1 + 2);
    v14 = *(a1 + 3);
    if (!v14)
    {
      v13 = 0;
    }

    v15 = 0xE000000000000000;
    if (v14)
    {
      v15 = *(a1 + 3);
    }

    *(v8 + 120) = v10;
    *(v8 + 128) = v13;
    *(v8 + 136) = v15;
    *(v8 + 184) = v10;
    *(v8 + 152) = v10;
    *(v8 + 160) = 0x746E756F63;
    *(v8 + 168) = 0xE500000000000000;
    v16 = *(a1 + 4);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    v18 = MEMORY[0x277D84F90];
    if (v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v9[24] = v19;
    v9[27] = v17;
    v9[28] = 0x736574756E696DLL;
    v9[29] = 0xE700000000000000;
    if (*(a1 + 5))
    {
      v18 = *(a1 + 5);
    }

    v9[31] = v10;
    v9[32] = v18;
    v9[39] = v10;
    v9[35] = v17;
    v9[36] = 0x6E6F69746361;
    v9[37] = 0xE600000000000000;
    v20 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    v21 = [v20 initWithInteger_];
    v22 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v9[40] = v21;
    v9[47] = MEMORY[0x277D837D0];
    v9[43] = v22;
    v9[44] = 0x6974617269707865;
    v9[45] = 0xEA00000000006E6FLL;
    v23 = type metadata accessor for Date();
    v9[51] = v23;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9 + 48);
    (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, &a1[v5], v23);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    result = NSDictionary.init(dictionaryLiteral:)();
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t closure #1 in PommesDialogStateManager.writeStateCacheEntries(_:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyp_yptGMd, &_ss23_ContiguousArrayStorageCyyp_yptGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2234D1950;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 32) = 0x6574617473;
  *(v4 + 40) = 0xE500000000000000;
  v6 = [v3 state];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = (v4 + 64);
    *(v4 + 88) = v5;
    if (v10)
    {
      *v11 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = (v4 + 64);
    *(v4 + 88) = v5;
  }

  *v11 = 0;
  v10 = 0xE000000000000000;
LABEL_6:
  *(v4 + 72) = v10;
  *(v4 + 120) = v5;
  *(v4 + 96) = 0xD000000000000013;
  *(v4 + 104) = 0x80000002234DAEC0;
  v12 = [v3 meta];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 family_state_counts];

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    *(v4 + 152) = v16;
    if (v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    *(v4 + 152) = v16;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_11:
  *(v4 + 128) = v15;
  *(v4 + 184) = v5;
  *(v4 + 160) = 0xD000000000000014;
  *(v4 + 168) = 0x80000002234DAEE0;
  v17 = [v3 meta];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 family_state_minutes];

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v4 + 216) = v16;
    if (v20)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(v4 + 216) = v16;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_16:
  *(v4 + 192) = v20;
  *(v4 + 248) = v5;
  *(v4 + 224) = 0xD000000000000015;
  *(v4 + 232) = 0x80000002234DAF00;
  v21 = [v3 meta];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 use_case_state_counts];

    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v4 + 280) = v16;
    if (v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v4 + 280) = v16;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:
  *(v4 + 256) = v24;
  *(v4 + 312) = v5;
  *(v4 + 288) = 0xD000000000000016;
  *(v4 + 296) = 0x80000002234DAF20;
  v25 = [v3 meta];
  if (!v25)
  {
    *(v4 + 344) = v16;
LABEL_25:
    v28 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v26 = v25;
  v27 = [v25 use_case_state_minutes];

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v4 + 344) = v16;
  if (!v28)
  {
    goto LABEL_25;
  }

LABEL_26:
  *(v4 + 320) = v28;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  result = NSDictionary.init(dictionaryLiteral:)();
  *a2 = result;
  return result;
}

uint64_t PommesDialogStateManager.preprocess(_:)(uint64_t a1)
{
  v87 = *v1;
  v88 = v1;
  v3 = type metadata accessor for Date();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v84 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
  v91 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v90 = &v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetSgMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v84 - v14);
  v99 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So15StateCacheEntryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v16 = *(a1 + 64);
  v95 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v89 = (v17 + 63) >> 6;
  v92 = a1;

  v20 = 0;
  v97 = v8;
  v93 = v13;
  v94 = v15;
  while (1)
  {
    if (!v19)
    {
      if (v89 <= v20 + 1)
      {
        v25 = v20 + 1;
      }

      else
      {
        v25 = v89;
      }

      v26 = v25 - 1;
      while (1)
      {
        v24 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v24 >= v89)
        {
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR);
          (*(*(v67 - 8) + 56))(v13, 1, 1, v67);
          v19 = 0;
          v20 = v26;
          goto LABEL_17;
        }

        v19 = *(v95 + 8 * v24);
        ++v20;
        if (v19)
        {
          v23 = v13;
          v20 = v24;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v23 = v13;
    v24 = v20;
LABEL_16:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v28 = v27 | (v24 << 6);
    v29 = (*(v92 + 48) + 16 * v28);
    v31 = *v29;
    v30 = v29[1];
    v32 = v90;
    outlined init with copy of PommesDialogStateManager.DialogValue(*(v92 + 56) + *(v91 + 72) * v28, v90);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR);
    v34 = *(v33 + 48);
    *v23 = v31;
    *(v23 + 1) = v30;
    v13 = v23;
    outlined init with take of PommesDialogStateManager.DialogValue(v32, &v23[v34], type metadata accessor for PommesDialogStateManager.DialogValue);
    (*(*(v33 - 8) + 56))(v23, 0, 1, v33);

LABEL_17:
    outlined init with take of PommesSearchReason?(v13, v15, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetSgMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetSgMR);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMd, &_sSS3key_21SiriInformationSearch24PommesDialogStateManagerC0F5Value33_DDAE567450B270DABF8F98FB8100F132LLV5valuetMR);
    if ((*(*(v35 - 8) + 48))(v15, 1, v35) == 1)
    {
      break;
    }

    v36 = v15[1];
    v98 = *v15;
    outlined init with take of PommesDialogStateManager.DialogValue(v15 + *(v35 + 48), v8, type metadata accessor for PommesDialogStateManager.DialogValue);
    v37 = [objc_allocWithZone(MEMORY[0x277D052E0]) init];
    v38 = *v8;
    v39 = v8[1];
    v40 = *v8 == 0x796C696D6166;
    v96 = v36;
    if (v40 && v39 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v41 = &selRef_setFamily_state_counts_;
      v42 = &selRef_setFamily_state_minutes_;
LABEL_23:
      v8 = v97;
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v37 *v41];

      v44 = Array._bridgeToObjectiveC()().super.isa;

      [v37 *v42];

      v13 = v93;
      v36 = v96;
      goto LABEL_24;
    }

    if (v38 == 0x65736143657375 && v39 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v41 = &selRef_setUse_case_state_counts_;
      v42 = &selRef_setUse_case_state_minutes_;
      goto LABEL_23;
    }

LABEL_24:
    v45 = v8[3];
    v46 = v13;
    if (v45)
    {
      v47 = v8[2];
      v48 = v37;
      v45 = MEMORY[0x223DDF550](v47, v45);
    }

    else
    {
      v49 = v37;
    }

    v50 = [objc_allocWithZone(MEMORY[0x277D052D8]) initWithState:v45 meta:v37];

    v51 = v50;
    v52 = v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = v52;
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v98, v36);
    v56 = *(v52 + 16);
    v57 = (v54 & 1) == 0;
    v58 = v56 + v57;
    if (__OFADD__(v56, v57))
    {
      goto LABEL_50;
    }

    v59 = v54;
    if (*(v99 + 24) >= v58)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v58, isUniquelyReferenced_nonNull_native);
      v60 = specialized __RawDictionaryStorage.find<A>(_:)(v98, v36);
      if ((v59 & 1) != (v61 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v55 = v60;
    }

    if (v59)
    {

      v99 = v100;
      v21 = v100[7];
      v22 = *(v21 + 8 * v55);
      *(v21 + 8 * v55) = v51;
    }

    else
    {
      v62 = v100;
      v100[(v55 >> 6) + 8] |= 1 << v55;
      v63 = (v62[6] + 16 * v55);
      *v63 = v98;
      v63[1] = v36;
      *(v62[7] + 8 * v55) = v51;

      v99 = v62;
      v64 = v62[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_51;
      }

      *(v99 + 16) = v66;
    }

    v8 = v97;
    outlined destroy of PommesDialogStateManager.DialogValue(v97);
    v15 = v94;
    v13 = v46;
  }

  if (one-time initialization token for pommes == -1)
  {
    goto LABEL_42;
  }

LABEL_52:
  swift_once();
LABEL_42:
  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.pommes);

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134349056;
    *(v71 + 4) = *(v99 + 16);

    _os_log_impl(&dword_2232BB000, v69, v70, "Preprocessing %{public}ld dialog state values before adding it to request", v71, 0xCu);
    MEMORY[0x223DE0F80](v71, -1, -1);
  }

  else
  {
  }

  v72 = objc_opt_self();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for StateCacheEntry, 0x277D052D8);
  v73 = v99;
  v74 = Dictionary._bridgeToObjectiveC()().super.isa;
  v75 = v84;
  Date.init()();
  v76 = Date._bridgeToObjectiveC()().super.isa;
  (*(v85 + 8))(v75, v86);
  v77 = [v72 preprocessEntries:v74 timestamp:v76];

  v78 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.compactMapValues<A>(_:)(v73, v87, closure #1 in PommesDialogStateManager.writeStateCacheEntries(_:), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));

  v79 = v88[2];
  if (v79)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    v80 = v79;
    v81 = Dictionary._bridgeToObjectiveC()().super.isa;

    v82 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DAE30);
    [v80 setObject:v81 forKey:v82];
  }

  else
  {
  }

  return v78;
}

uint64_t PommesDialogStateManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PommesDialogStateManager.DialogValue(uint64_t a1)
{
  result = type metadata singleton initialization cache for PommesDialogStateManager.DialogValue;
  if (!type metadata singleton initialization cache for PommesDialogStateManager.DialogValue)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
    v19 = *(v12 - 8);
    outlined init with take of PommesDialogStateManager.DialogValue(v11 + *(v19 + 72) * v8, a3, type metadata accessor for PommesDialogStateManager.DialogValue);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for PommesCandidateId();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for PommesBridgeResultCandidateState(0);
    v20 = *(v13 - 8);
    outlined init with take of PommesDialogStateManager.DialogValue(v12 + *(v20 + 72) * v7, a2, type metadata accessor for PommesBridgeResultCandidateState);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for PommesBridgeResultCandidateState(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a1, a2, v21, a4);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
      return outlined assign with take of PommesBridgeResultCandidateState(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PommesDialogStateManager.DialogValue);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1 & 1, v21);
  }

  return result;
}

{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1 & 1, v21);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PommesCandidateId();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for PommesBridgeResultCandidateState(0);
      return outlined assign with take of PommesBridgeResultCandidateState(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for PommesBridgeResultCandidateState);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v27);
}

{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t specialized PommesDialogStateManager.decompose(_:)(uint64_t a1, uint64_t a2)
{
  v2 = lazy protocol witness table accessor for type String and conformance String();
  v3 = MEMORY[0x223DDFE20](35, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v2);
  if (v3[2] == 2 && (v3[4] ^ v3[5]) >= 0x4000 && (v3[8] ^ v3[9]) >> 14)
  {
    v5 = v3[4];
    v6 = v3[5];
    v7 = v3[6];
    v8 = v3[7];

    v9 = MEMORY[0x223DDF600](v5, v6, v7, v8);

    String.init<A>(_:)();
    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t outlined destroy of PommesDialogStateManager.DialogValue(uint64_t a1)
{
  v2 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of PommesDialogStateManager.DialogValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesDialogStateManager.DialogValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    a2(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, v46 & 1);
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of Set<String>.Iterator._Variant(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void type metadata completion function for PommesDialogStateManager.DialogValue(uint64_t a1)
{
  type metadata accessor for String?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [NSNumber]?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ActionType(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

void type metadata accessor for [NSNumber]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [NSNumber]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [NSNumber]?);
    }
  }
}

uint64_t outlined init with take of PommesDialogStateManager.DialogValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of PommesBridgeResultCandidateState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void *PommesResponse.pommesRequestResult.getter()
{
  v0 = type metadata accessor for PommesRenderOptions.PromptType();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D5A0A0]) init];
  if (v7)
  {
    v8 = v7;
    v32 = v4;
    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    [v8 setPommesConfidenceScore_];
    v9 = PommesResponse.metadataDomainName.getter();
    v10 = MEMORY[0x223DDF550](v9);

    [v8 setPegasusDomain_];

    [v8 setIsLowConfidenceKnowledgeResult_];
    [v8 setIsQueryDirectQuestion_];
    v11 = dispatch thunk of PommesResponse.experiences.getter();
    v12 = v11;
    if (v11 >> 62)
    {
LABEL_27:
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v6;
    v34 = v1;
    v35 = v0;
    if (v13)
    {
      v14 = 0;
      v0 = v12 & 0xC000000000000001;
      v1 = v12 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v0)
        {
          v15 = MEMORY[0x223DDFF80](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v6 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v17 = dispatch thunk of Experience.renderOptions.getter();
        v18 = PommesRenderOptions.promptTypes.getter();

        v19 = *(v18 + 16);

        if (v19)
        {
          break;
        }

        ++v14;
        if (v6 == v13)
        {
          goto LABEL_14;
        }
      }

      if (v16)
      {
        v25 = v16;
        v26 = dispatch thunk of Experience.renderOptions.getter();

        v27 = PommesRenderOptions.promptTypes.getter();
        if (*(v27 + 16))
        {
          v29 = v34;
          v28 = v35;
          v30 = v32;
          (*(v34 + 16))(v32, v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v35);

          v31 = v33;
          (*(v29 + 32))(v33, v30, v28);
          [v8 setPegasusPromptType_];

          (*(v29 + 8))(v31, v28);
        }

        else
        {
        }
      }
    }

    else
    {
LABEL_14:
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.pommes);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2232BB000, v21, v22, "Unable to initialize POMMESSchemaPOMMESRequestResult", v23, 2u);
      MEMORY[0x223DE0F80](v23, -1, -1);
    }

    return 0;
  }

  return v8;
}

uint64_t PommesResponse.curareDescription.getter()
{
  _StringGuts.grow(_:)(32);
  MEMORY[0x223DDF6D0](0x6469666E6F63227BLL, 0xEF203A2265636E65);
  dispatch thunk of PommesResponse.primaryQueryConfidence()();
  Double.write<A>(to:)();
  MEMORY[0x223DDF6D0](0x644974616322202CLL, 0xEC000000203A2273);
  dispatch thunk of PommesResponse.primaryCatIds()();
  v0 = MEMORY[0x223DDF850]();
  v2 = v1;

  MEMORY[0x223DDF6D0](v0, v2);

  MEMORY[0x223DDF6D0](125, 0xE100000000000000);
  return 0;
}

double static PommesResponse.makeDefaultInteractionStream()@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  v3 = NSProcessInfo.isRunningUnitTests.getter();

  if ((v3 & 1) != 0 || (v4 = objc_allocWithZone(MEMORY[0x277D08440]), v5 = MEMORY[0x223DDF550](0x4D4D4F5049524953, 0xEA00000000005345), v6 = [v4 initWithStreamId_], v5, !v6))
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = type metadata accessor for FSFCurareInteractionStream();
    *(a1 + 32) = &protocol witness table for FSFCurareInteractionStream;
    *a1 = v6;
  }

  return result;
}

uint64_t closure #2 in PommesResponse.pommesRequestResult.getter(uint64_t a1)
{
  v2 = type metadata accessor for PommesRenderOptions.PromptType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D566C8])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x277D566B8])
  {
    return 1;
  }

  if (v6 != *MEMORY[0x277D566C0])
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.pommes);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2232BB000, v9, v10, "Received @unknown promptType from experience", v11, 2u);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return 2;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DDFF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DDFF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DDFF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DDFF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DDFF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for FSFCurareInteractionStream()
{
  result = lazy cache variable for type metadata for FSFCurareInteractionStream;
  if (!lazy cache variable for type metadata for FSFCurareInteractionStream)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FSFCurareInteractionStream);
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.asPegasusPromptContext()()
{
  type metadata accessor for Apple_Parsec_Siri_Context_PromptContext();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext, MEMORY[0x277D38DB0], MEMORY[0x277D38DA8]);
  return static Message.with(_:)();
}

uint64_t closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.asPegasusPromptContext()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Google_Protobuf_Int32Value();
  MEMORY[0x28223BE20](v2);
  Com_Apple_Siri_Product_Proto_PromptContext.previousDomainName.getter();
  Apple_Parsec_Siri_Context_PegasusSemanticValue.label.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.previousNldomainName.getter();
  Apple_Parsec_Siri_Context_PegasusSemanticValue.value.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.domainHints.getter();
  Apple_Parsec_Siri_Context_PromptContext.domainHints.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.alertDomainHints.getter();
  Apple_Parsec_Siri_Context_PromptContext.alertDomainHints.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.backgroundDomainHints.getter();
  Apple_Parsec_Siri_Context_PromptContext.backgroundDomainHints.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.dictationPrompt.getter();
  Apple_Parsec_Siri_Context_PromptContext.dictationPrompt.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.getter();
  Apple_Parsec_Siri_Context_PromptContext.strictPrompt.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.objectDisambiguation.getter();
  Apple_Parsec_Siri_Context_PromptContext.objectDisambiguation.setter();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Google_Protobuf_Int32Value and conformance Google_Protobuf_Int32Value, MEMORY[0x277D21588], MEMORY[0x277D21580]);
  static Message.with(_:)();
  Apple_Parsec_Siri_Context_PromptContext.ambiguityTarget.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.listenAfterSpeaking.getter();
  Apple_Parsec_Siri_Context_PromptContext.listenAfterSpeaking.setter();
  Com_Apple_Siri_Product_Proto_PromptContext.promptTargetHints.getter();
  return Apple_Parsec_Siri_Context_PromptContext.promptTargetHints.setter();
}

uint64_t closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.asPegasusPromptContext()()
{
  v0 = type metadata accessor for Google_Protobuf_Int32Value();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Com_Apple_Siri_Product_Proto_PromptContext.ambiguityTarget.getter();
  Google_Protobuf_Int32Value.value.getter();
  (*(v1 + 8))(v3, v0);
  return Google_Protobuf_Int32Value.value.setter();
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()()
{
  type metadata accessor for Apple_Parsec_Siri_Context_ClientDisplayHints();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ClientDisplayHints and conformance Apple_Parsec_Siri_Context_ClientDisplayHints, MEMORY[0x277D397B8], MEMORY[0x277D397B0]);
  return static Message.with(_:)();
}

uint64_t closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ResponseOptions();
  MEMORY[0x28223BE20](v3);
  if (*(Com_Apple_Siri_Product_Proto_PromptContext.domainHints.getter() + 16))
  {
  }

  Apple_Parsec_Siri_Context_ClientDisplayHints.displayHintsDomain.setter();
  v4 = Com_Apple_Siri_Product_Proto_PromptContext.displayHints.getter();
  MEMORY[0x28223BE20](v4);
  *(&v8 - 2) = a2;
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology010Com_Apple_D26_Product_Proto_DisplayHintVG_10PegasusAPI0g8_Parsec_d9_Context_ljK0Vs5NeverOTg5(partial apply for closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints(), (&v8 - 4), v4);

  v6 = MEMORY[0x223DDAFF0](v5);
  MEMORY[0x28223BE20](v6);
  *(&v8 - 2) = a2;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ResponseOptions and conformance Apple_Parsec_Siri_Context_ResponseOptions, MEMORY[0x277D39658], MEMORY[0x277D39650]);
  static Message.with(_:)();
  return Apple_Parsec_Siri_Context_ClientDisplayHints.responseOptions.setter();
}

uint64_t closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusDisplayHint();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_PegasusDisplayHint and conformance Apple_Parsec_Siri_Context_PegasusDisplayHint, MEMORY[0x277D38C88], MEMORY[0x277D38C80]);
  return static Message.with(_:)();
}

uint64_t closure #1 in closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue();
  MEMORY[0x28223BE20](v3);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_PegasusSemanticValue and conformance Apple_Parsec_Siri_Context_PegasusSemanticValue, MEMORY[0x277D38C98], MEMORY[0x277D38C90]);
  static Message.with(_:)();
  Apple_Parsec_Siri_Context_PegasusDisplayHint.idValue.setter();
  static Message.with(_:)();
  return Apple_Parsec_Siri_Context_PegasusDisplayHint.displayValue.setter();
}

unint64_t Com_Apple_Siri_Product_Proto_PromptContext.makeLabel(fromNode:)(uint64_t a1, uint64_t a2)
{
  v2 = lazy protocol witness table accessor for type String and conformance String();
  v3 = MEMORY[0x223DDFE20](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32 * v4);
    v6 = *v5;
    v7 = v5[1];
    swift_bridgeObjectRetain_n();

    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = result;
    }

    if (v10 >> 14 < v6 >> 14)
    {
      __break(1u);
    }

    else
    {
      Substring.subscript.getter();

      countAndFlagsBits = Substring.lowercased()()._countAndFlagsBits;

      result = Substring.index(_:offsetBy:limitedBy:)();
      if (v12)
      {
        result = v7;
      }

      if (v7 >> 14 >= result >> 14)
      {
        Substring.subscript.getter();

        lazy protocol witness table accessor for type Substring and conformance Substring();
        String.append<A>(contentsOf:)();

        return countAndFlagsBits;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v16[1] = a3;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(v7);
  Com_Apple_Siri_Product_Proto_SemanticValue.serializedValue.getter();
  v10 = *(v6 + 8);
  v10(v9, v5);
  v11 = Apple_Parsec_Siri_Context_PegasusSemanticValue.value.setter();
  a4(v11);
  v12 = Com_Apple_Siri_Product_Proto_SemanticValue.ontologyNodePojoClassName.getter();
  v14 = v13;
  v10(v9, v5);
  Com_Apple_Siri_Product_Proto_PromptContext.makeLabel(fromNode:)(v12, v14);

  return Apple_Parsec_Siri_Context_PegasusSemanticValue.label.setter();
}

uint64_t closure #2 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()(uint64_t a1, uint64_t a2)
{
  v3 = Com_Apple_Siri_Product_Proto_PromptContext.responseOptions.getter();
  v6[2] = a2;
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology010Com_Apple_D28_Product_Proto_SemanticValueVG_10PegasusAPI0g8_Parsec_d9_Context_ljK0Vs5NeverOTg5(partial apply for closure #1 in closure #2 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints(), v6, v3);

  return MEMORY[0x223DDAC80](v4);
}

uint64_t closure #1 in closure #2 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Apple_Parsec_Siri_Context_PegasusSemanticValue();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_PegasusSemanticValue and conformance Apple_Parsec_Siri_Context_PegasusSemanticValue, MEMORY[0x277D38C98], MEMORY[0x277D38C90]);
  return static Message.with(_:)();
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in Com_Apple_Siri_Product_Proto_PromptContext.exportClientDisplayHints()(uint64_t a1)
{
  Com_Apple_Siri_Product_Proto_SemanticValue.serializedValue.getter();
  Apple_Parsec_Siri_Context_PegasusSemanticValue.value.setter();
  v1 = Com_Apple_Siri_Product_Proto_SemanticValue.ontologyNodePojoClassName.getter();
  Com_Apple_Siri_Product_Proto_PromptContext.makeLabel(fromNode:)(v1, v2);

  return Apple_Parsec_Siri_Context_PegasusSemanticValue.label.setter();
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_PromptContext and conformance Apple_Parsec_Siri_Context_PromptContext(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PlayRadioStationPreflightClient.isSpanMatchedPlayRadioStationTask(task:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (v9[3])
  {
    type metadata accessor for UsoTask_play_common_RadioStation();
    if (swift_dynamicCast())
    {

      v2 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5Tm(MEMORY[0x277D84F90], byte_2836956C8, a1, MEMORY[0x277D5EC88], specialized Array.append<A>(contentsOf:));

      if (v2 >> 62)
      {
        goto LABEL_18;
      }

      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        while (1)
        {
          v4 = 0;
          while ((v2 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x223DDFF80](v4, v2);
            v6 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }

LABEL_9:
            v9[0] = v5;
            v7 = closure #1 in PlayRadioStationPreflightClient.isSpanMatchedPlayRadioStationTask(task:)(v9);

            if (v7)
            {

              return 1;
            }

            ++v4;
            if (v6 == v3)
            {
              goto LABEL_19;
            }
          }

          if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_18:
          v3 = __CocoaSet.count.getter();
          if (!v3)
          {
            goto LABEL_19;
          }
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }

        goto LABEL_9;
      }

LABEL_19:
    }
  }

  else
  {
LABEL_15:
    outlined destroy of MediaUserStateCenter?(v9, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

uint64_t closure #1 in PlayRadioStationPreflightClient.isSpanMatchedPlayRadioStationTask(task:)(uint64_t *a1)
{
  v2 = v1;
  v95 = type metadata accessor for UsoIdentifier.NluComponent();
  v70 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v74 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
  v6 = MEMORY[0x28223BE20](v5);
  v77 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v67 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v72 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v88 = v67 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v87 = v67 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v67 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v93 = v67 - v21;
  MEMORY[0x28223BE20](v20);
  v94 = v67 - v22;
  v23 = type metadata accessor for UsoIdentifier();
  v92 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v89 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v75 = v67 - v26;
  v27 = *a1;
  dispatch thunk of UsoEntity_common_RadioStation.name.getter();
  v90 = v23;
  v91 = v5;
  if (!v28 || (, (result = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)()) == 0))
  {
LABEL_16:
    v44 = 0;
    if (!dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter())
    {
      return 0;
    }

    goto LABEL_17;
  }

  v86 = *(result + 16);
  if (!v86)
  {

    goto LABEL_16;
  }

  v67[1] = v27;
  v68 = v1;
  v30 = 0;
  v84 = result + ((*(v92 + 80) + 32) & ~*(v92 + 80));
  v83 = (v92 + 16);
  LODWORD(v82) = *MEMORY[0x277D5E4B0];
  v80 = (v70 + 56);
  v81 = (v70 + 104);
  v79 = (v70 + 48);
  v69 = (v70 + 32);
  v73 = (v70 + 8);
  v78 = (v92 + 8);
  v31 = v75;
  v76 = v19;
  v85 = result;
  while (v30 < *(result + 16))
  {
    (*(v92 + 16))(v31, v84 + *(v92 + 72) * v30, v23);
    v32 = v94;
    UsoIdentifier.sourceComponent.getter();
    v33 = v93;
    v34 = v95;
    (*v81)(v93, v82, v95);
    (*v80)(v33, 0, 1, v34);
    v35 = *(v91 + 48);
    outlined init with copy of UsoIdentifier.NluComponent?(v32, v9);
    outlined init with copy of UsoIdentifier.NluComponent?(v33, &v9[v35]);
    v36 = *v79;
    if ((*v79)(v9, 1, v34) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v93, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of MediaUserStateCenter?(v94, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      (*v78)(v31, v23);
      if (v36(&v9[v35], 1, v95) != 1)
      {
        goto LABEL_6;
      }

      outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
LABEL_36:

      v66 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      v44 = 1;
      v2 = v68;
      if (!v66)
      {
        return 1;
      }

LABEL_17:

      v45 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      v46 = v89;
      if (v45 && (v47 = dispatch thunk of CodeGenGlobalArgs.getUsoIdentifiersFor(attributeName:)(), result = , v47))
      {
        LODWORD(v76) = v44;
        v68 = v2;
        v94 = *(v47 + 16);
        if (v94)
        {
          v48 = 0;
          v86 = v47 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
          v85 = v92 + 16;
          LODWORD(v84) = *MEMORY[0x277D5E4B0];
          v82 = (v70 + 56);
          v83 = (v70 + 104);
          v49 = (v70 + 48);
          v78 = (v70 + 32);
          v80 = (v70 + 8);
          v81 = (v92 + 8);
          v93 = v47;
          while (1)
          {
            if (v48 >= *(v47 + 16))
            {
              goto LABEL_41;
            }

            (*(v92 + 16))(v46, v86 + *(v92 + 72) * v48, v23);
            v52 = v87;
            UsoIdentifier.sourceComponent.getter();
            v53 = v88;
            v54 = v49;
            v55 = v95;
            (*v83)(v88, v84, v95);
            (*v82)(v53, 0, 1, v55);
            v56 = *(v91 + 48);
            v57 = v77;
            outlined init with copy of UsoIdentifier.NluComponent?(v52, v77);
            outlined init with copy of UsoIdentifier.NluComponent?(v53, v57 + v56);
            v58 = v46;
            v59 = *v54;
            v60 = v55;
            v49 = v54;
            if ((*v54)(v57, 1, v60) == 1)
            {
              break;
            }

            v61 = v72;
            outlined init with copy of UsoIdentifier.NluComponent?(v57, v72);
            if (v59(v57 + v56, 1, v95) == 1)
            {
              outlined destroy of MediaUserStateCenter?(v88, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
              outlined destroy of MediaUserStateCenter?(v87, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
              v23 = v90;
              (*v81)(v89, v90);
              (*v80)(v61, v95);
              v51 = v57;
              v47 = v93;
LABEL_22:
              result = outlined destroy of MediaUserStateCenter?(v51, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
              goto LABEL_23;
            }

            v62 = v74;
            v63 = v95;
            (*v78)(v74, v57 + v56, v95);
            lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent();
            LODWORD(v79) = dispatch thunk of static Equatable.== infix(_:_:)();
            v64 = *v80;
            (*v80)(v62, v63);
            outlined destroy of MediaUserStateCenter?(v88, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
            outlined destroy of MediaUserStateCenter?(v87, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
            v23 = v90;
            (*v81)(v89, v90);
            v65 = v63;
            v49 = v54;
            v64(v61, v65);
            result = outlined destroy of MediaUserStateCenter?(v57, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
            v47 = v93;
            if (v79)
            {
              goto LABEL_39;
            }

LABEL_23:
            ++v48;
            v46 = v89;
            if (v94 == v48)
            {
              goto LABEL_33;
            }
          }

          outlined destroy of MediaUserStateCenter?(v53, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          outlined destroy of MediaUserStateCenter?(v52, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
          v23 = v90;
          (*v81)(v58, v90);
          v50 = v59(v57 + v56, 1, v95) == 1;
          v51 = v57;
          v47 = v93;
          if (v50)
          {
            outlined destroy of MediaUserStateCenter?(v57, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
LABEL_39:

            return 0;
          }

          goto LABEL_22;
        }

LABEL_33:

        if (v76)
        {
          return 1;
        }
      }

      else if (v44)
      {
        return 1;
      }

      return 0;
    }

    v38 = v93;
    v37 = v94;
    v39 = v95;
    v40 = v76;
    outlined init with copy of UsoIdentifier.NluComponent?(v9, v76);
    if (v36(&v9[v35], 1, v39) != 1)
    {
      v41 = v74;
      (*v69)(v74, &v9[v35], v39);
      lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent();
      v71 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *v73;
      v43 = v41;
      v23 = v90;
      (*v73)(v43, v39);
      outlined destroy of MediaUserStateCenter?(v38, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      outlined destroy of MediaUserStateCenter?(v37, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      v31 = v75;
      (*v78)(v75, v23);
      v42(v76, v39);
      outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
      if (v71)
      {
        goto LABEL_36;
      }

      goto LABEL_7;
    }

    outlined destroy of MediaUserStateCenter?(v38, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    outlined destroy of MediaUserStateCenter?(v37, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
    v31 = v75;
    v23 = v90;
    (*v78)(v75, v90);
    (*v73)(v40, v39);
LABEL_6:
    outlined destroy of MediaUserStateCenter?(v9, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSg_AFtMR);
LABEL_7:
    ++v30;
    result = v85;
    if (v86 == v30)
    {

      v2 = v68;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t PlayRadioStationPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v106 = *v1;
  v3 = type metadata accessor for PommesSearchReason();
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v103 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v102 = (&v85 - v6);
  v7 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v94 = *(v7 - 8);
  v95 = v7;
  MEMORY[0x28223BE20](v7);
  v93 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  v98 = *(v9 - 8);
  v99 = v9;
  MEMORY[0x28223BE20](v9);
  v97 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v96 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v85 - v18;
  v20 = type metadata accessor for PommesSearchRequest(0);
  v21 = a1;
  v22 = *(a1 + *(v20 + 76));
  v23 = specialized Sequence.flatMap<A>(_:)(v22);
  v34 = v23;
  v89 = v22;
  v86 = v17;
  v87 = v13;
  v91 = v19;
  v92 = v20;
  v88 = v14;
  v90 = v21;
  if (!(v23 >> 62))
  {
    v35 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_35:

    return 1;
  }

  v35 = __CocoaSet.count.getter();
  if (!v35)
  {
    goto LABEL_35;
  }

LABEL_6:
  v36 = 0;
  while (1)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x223DDFF80](v36, v34);
      v26 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
LABEL_15:
        __break(1u);
LABEL_16:

        return 1;
      }
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        swift_once();
        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Logger.pommes);
        v25 = 0;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v107 = 0;
          v108[0] = v29;
          *v28 = 136315138;
          v30 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v31 = String.init<A>(describing:)();
          v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v108);

          *(v28 + 4) = v33;
          _os_log_impl(&dword_2232BB000, v26, v27, "ConversionUtils.convertUserDialogActToTasks error: %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v29);
          MEMORY[0x223DE0F80](v29, -1, -1);
          MEMORY[0x223DE0F80](v28, -1, -1);

          return 1;
        }

        goto LABEL_16;
      }

      v37 = *(v34 + 8 * v36 + 32);

      v26 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
        goto LABEL_15;
      }
    }

    if ((*(*v1 + 80))(v37))
    {
      break;
    }

    ++v36;
    if (v26 == v35)
    {
      goto LABEL_35;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  v39 = __swift_project_value_buffer(v38, static Logger.pommes);

  v85 = v39;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v100;
  if (v42)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v108[0] = v45;
    *v44 = 136315394;
    v46 = UsoTask.verbString.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v108);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = UsoTask.baseEntityAsString.getter();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v108);

    *(v44 + 14) = v51;
    _os_log_impl(&dword_2232BB000, v40, v41, "PlayRadioStationPreflightClient matched task: %s::%s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v45, -1, -1);
    MEMORY[0x223DE0F80](v44, -1, -1);
  }

  v52 = v91;
  v53 = v92;
  v54 = v101;
  v55 = v98;
  v56 = v99;
  v57 = v97;
  if (*(v89 + 16))
  {
    (*(v98 + 16))(v97, v89 + ((*(v98 + 80) + 32) & ~*(v98 + 80)), v99);
    v58 = v55;
    v59 = Siri_Nlu_External_Span.matcherNames.getter();
    (*(v58 + 8))(v57, v56);
    if (*(v59 + 16))
    {
      v60 = v87;
      (*(v43 + 16))(v87, v59 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v54);

      v61 = v54;
      v62 = v93;
      Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
      (*(v43 + 8))(v60, v61);
      v63 = v86;
      Siri_Nlu_External_UserStatedTask.task.getter();
      (*(v94 + 8))(v62, v95);
      v64 = v88;
      (*(v96 + 32))(v52, v63, v88);
      static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();

      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.info.getter();

      v67 = os_log_type_enabled(v65, v66);
      v53 = v92;
      if (v67)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v108[0] = v69;
        *v68 = 136315138;
        v70 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
        v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v108);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_2232BB000, v65, v66, "Likely matched graph: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        v53 = v92;
        MEMORY[0x223DE0F80](v69, -1, -1);
        MEMORY[0x223DE0F80](v68, -1, -1);

        (*(v96 + 8))(v91, v64);
      }

      else
      {

        (*(v96 + 8))(v52, v64);
      }
    }

    else
    {

      v53 = v92;
    }
  }

  v73 = v90;
  v74 = (v90 + *(v53 + 32));
  v75 = *v74;
  v76 = v74[1];
  v77 = v102;
  PommesSearchRequest.pommesCandidateId.getter(v102);
  v78 = type metadata accessor for PommesCandidateId();
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  v79 = v103;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v103);
  v80 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v73, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v75, v76, v77, v79, 0x6867696C66657270, 0xE900000000000074, 0xD00000000000001FLL, 0x80000002234D1A30);
  (*(v104 + 8))(v79, v105);
  outlined destroy of MediaUserStateCenter?(v77, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if (v80)
  {

    return v80;
  }

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_2232BB000, v82, v83, "PlayRadioStationPreflightClient#ignore could not build PommesResponse with given parameters", v84, 2u);
    MEMORY[0x223DE0F80](v84, -1, -1);
  }

  return 1;
}

uint64_t Siri_Nlu_External_UserParse.playRadioStationRelevantTasks()(uint64_t a1)
{
  v2 = Siri_Nlu_External_Span.matcherNames.getter();
  v3 = specialized Sequence.flatMap<A>(_:)(v2);

  if (!v1)
  {
    v11 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      goto LABEL_19;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        v6 = v3 & 0xFFFFFFFFFFFFFF8;
        while ((v3 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DDFF80](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v2 = v11;
            goto LABEL_21;
          }

LABEL_10:
          static UsoTask_CodegenConverter.convert(task:)();
          if (v10)
          {
            type metadata accessor for UsoTask_play_common_RadioStation();
            if (swift_dynamicCast())
            {

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v6 = v3 & 0xFFFFFFFFFFFFFF8;
            }

            else
            {
            }
          }

          else
          {

            outlined destroy of MediaUserStateCenter?(v9, &_sypSgMd, &_sypSgMR);
          }

          ++v5;
          if (v7 == v4)
          {
            goto LABEL_17;
          }
        }

        if (v5 < *(v6 + 16))
        {
          break;
        }

        __break(1u);
LABEL_19:
        v4 = __CocoaSet.count.getter();
        if (!v4)
        {
          goto LABEL_20;
        }
      }

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

LABEL_20:
    v2 = MEMORY[0x277D84F90];
LABEL_21:
  }

  return v2;
}

uint64_t UsoEntity.recursiveAttributeCheck(where:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  result = UsoEntity.attributes.getter();
  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v25 = result + 64;
  v24 = v8;
  v26 = result;
  if (v7)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_4:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_37;
    }

    if (v9 >= v8)
    {
      v23 = 0;
LABEL_34:

      return v23;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
  }

  while (!v7);
  v3 = v9;
  while (1)
  {
LABEL_8:
    v10 = (*(result + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v7)))));
    v12 = *v10;
    v11 = v10[1];

    v13 = UsoEntity.attributes.getter();
    if (*(v13 + 16))
    {
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v13 + 56) + 8 * v14);

        goto LABEL_13;
      }
    }

    else
    {
    }

    v17 = MEMORY[0x277D84F90];
LABEL_13:
    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        break;
      }

      goto LABEL_29;
    }

    result = __CocoaSet.count.getter();
    v18 = result;
    if (result)
    {
      break;
    }

LABEL_29:
    v7 &= v7 - 1;

    result = v26;
    v8 = v24;
    v4 = v25;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v19 = 0;
  while ((v17 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x223DDFF80](v19, v17);
    v20 = result;
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_35;
    }

LABEL_21:
    if (a1(v20))
    {

      goto LABEL_33;
    }

    if (dispatch thunk of UsoValue.getAsEntity()())
    {
      v22 = UsoEntity.recursiveAttributeCheck(where:)(a1, a2);

      if (v22)
      {

LABEL_33:
        v23 = 1;
        goto LABEL_34;
      }
    }

    else
    {
    }

    ++v19;
    if (v21 == v18)
    {
      goto LABEL_29;
    }
  }

  if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

  v20 = *(v17 + 8 * v19 + 32);

  v21 = v19 + 1;
  if (!__OFADD__(v19, 1))
  {
    goto LABEL_21;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5Tm(uint64_t a1, unsigned __int8 a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  v8 = UsoTask.arguments.getter();
  v9 = 0xEC00000073656974;
  v10 = 0x69746E4572657375;
  v11 = 0xE900000000000065;
  v12 = 0x636E657265666572;
  if (a2 != 2)
  {
    v12 = 0x72656767697274;
    v11 = 0xE700000000000000;
  }

  if (a2)
  {
    v10 = 0x746567726174;
    v9 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  if (a2 <= 1u)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  if (!*(v8 + 16))
  {

    goto LABEL_28;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_28:

    return a1;
  }

  v18 = *(*(v8 + 56) + 8 * v15);

  v28 = MEMORY[0x277D84F90];
  v24 = a5;
  if (v18 >> 62)
  {
LABEL_33:
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  v25 = MEMORY[0x277D84F90];
  while (v19 != v20)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      MEMORY[0x223DDFF80](v20, v18);
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    a4(0);
    dispatch thunk of UsoValue.getAsEntity()();
    static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

    ++v20;
    if (v27)
    {
      MEMORY[0x223DDF820](v22);
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v25 = v28;
      v20 = v21;
    }
  }

  v24(v25);
  return a1;
}

uint64_t outlined init with copy of UsoIdentifier.NluComponent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology13UsoIdentifierV12NluComponentOSgMd, &_s12SiriOntology13UsoIdentifierV12NluComponentOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent()
{
  result = lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent;
  if (!lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent)
  {
    type metadata accessor for UsoIdentifier.NluComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoIdentifier.NluComponent and conformance UsoIdentifier.NluComponent);
  }

  return result;
}

uint64_t AudioTypeFeaturiser.name.getter()
{
  type metadata accessor for AudioTypeFeaturiser(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19AudioTypeFeaturiserCmMd, &_s21SiriInformationSearch19AudioTypeFeaturiserCmMR);
  return String.init<A>(describing:)();
}

uint64_t AudioTypeFeaturiser.__allocating_init(query:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized AudioTypeFeaturiser.init(query:)(a1);

  return v2;
}

uint64_t AudioTypeFeaturiser.init(query:)(uint64_t a1)
{
  v1 = specialized AudioTypeFeaturiser.init(query:)(a1);

  return v1;
}

void AudioTypeFeaturiser.featurise(candidate:rankedSlotIndex:)(char **a1)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v30 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v10 = matched - 8;
  MEMORY[0x28223BE20](matched);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_exactScore);
  v14 = OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_requestedType;
  v31 = v7;
  v32 = v6;
  (*(v7 + 16))(v12, v1 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_requestedType, v6);
  v15 = *a1;
  v16 = OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType;
  v17 = *(v10 + 28);
  v34 = v4;
  v35 = v3;
  v18 = *(v4 + 16);
  v18(&v12[v17], &v15[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType], v3);
  LOBYTE(v10) = specialized Set.contains(_:)(v12, v13);
  v19 = outlined destroy of AudioTypeFeaturiser.ExactMatchKey(v12);
  if (v10)
  {
    v20 = 1.35;
  }

  else
  {
    v21 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_relatedScore);
    if (*(v21 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v1 + v14), (v22 & 1) != 0) && (v23 = v30, v24 = specialized Dictionary.subscript.getter(v30, v19, *(v21 + 36), 0, v21), (*(v31 + 8))(v23, v32), v25 = &v15[v16], v26 = v33, v27 = v35, v18(v33, v25, v35), LOBYTE(v23) = specialized Set.contains(_:)(v26, v24), , v19 = (*(v34 + 8))(v26, v27), (v23 & 1) != 0))
    {
      v20 = 1.175;
    }

    else
    {
      v20 = 1.0;
    }
  }

  v28 = MEMORY[0x277D85000];
  v29 = (*((*MEMORY[0x277D85000] & *v15) + 0xB8))(v19);
  (*((*v28 & *v29) + 0x88))(v20);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = *(a5 + 48);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v8 - 8) + 16))(v6, v7 + *(*(v8 - 8) + 72) * a2, v8);
}

void *specialized Dictionary.subscript.getter(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioTypeFeaturiser.ExactMatchKey()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398B8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AudioTypeFeaturiser.ExactMatchKey(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398B8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioTypeFeaturiser.ExactMatchKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398B8]);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39538]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AudioTypeFeaturiser.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_requestedType;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AudioTypeFeaturiser.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_requestedType;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

BOOL specialized static AudioTypeFeaturiser.ExactMatchKey.== infix(_:_:)()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RequestedMediaType and conformance Apple_Parsec_Siri_V2alpha_RequestedMediaType, MEMORY[0x277D398B0], MEMORY[0x277D398C8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v2 != v1)
  {
    return 0;
  }

  type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioItemType and conformance Apple_Parsec_Siri_V2alpha_AudioItemType, MEMORY[0x277D39530], MEMORY[0x277D39548]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v2 == v1;
}

uint64_t specialized AudioTypeFeaturiser.init(query:)(uint64_t a1)
{
  v89 = OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_exactScore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLVGMR);
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v94 = *(*(matched - 8) + 72);
  v1 = (*(*(matched - 8) + 80) + 32) & ~*(*(matched - 8) + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_2234D1AD0;
  v2 = v80 + v1;
  v3 = *MEMORY[0x277D39898];
  v85 = *MEMORY[0x277D39898];
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  v62 = *(v4 - 8);
  v5 = *(v62 + 104);
  v98 = v4;
  v5(v2, v3);
  v6 = *(matched + 20);
  v7 = *MEMORY[0x277D39520];
  v66 = *MEMORY[0x277D39520];
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v81 = *(v8 - 8);
  v9 = *(v81 + 104);
  v9(v2 + v6, v7, v8);
  v92 = *MEMORY[0x277D39880];
  (v5)(v2 + v94);
  v75 = *MEMORY[0x277D39488];
  (v9)(v2 + v94 + *(matched + 20));
  (v5)(v2 + 2 * v94, v92, v98);
  v72 = *MEMORY[0x277D394B0];
  (v9)(v2 + 2 * v94 + *(matched + 20));
  v10 = v2 + 3 * v94;
  (v5)(v10, v92, v98);
  v83 = *MEMORY[0x277D394C0];
  (v9)(v10 + *(matched + 20));
  v77 = *MEMORY[0x277D39848];
  (v5)(v2 + 4 * v94);
  v74 = *MEMORY[0x277D394F8];
  (v9)(v2 + 4 * v94 + *(matched + 20));
  (v5)(v2 + 5 * v94, *MEMORY[0x277D397E0], v98);
  v73 = *MEMORY[0x277D39480];
  (v9)(v2 + 5 * v94 + *(matched + 20));
  (v5)(v2 + 6 * v94, *MEMORY[0x277D398A0], v98);
  v9(v2 + 6 * v94 + *(matched + 20), *MEMORY[0x277D39528], v8);
  (v5)(v2 + 7 * v94, *MEMORY[0x277D39838], v98);
  v96 = v5;
  v64 = *MEMORY[0x277D394E0];
  v97 = v9;
  (v9)(v2 + 7 * v94 + *(matched + 20));
  v11 = *MEMORY[0x277D39858];
  (v5)(v2 + 8 * v94, v11, v98);
  v63 = *MEMORY[0x277D39500];
  (v9)(v2 + 8 * v94 + *(matched + 20));
  (v5)(v2 + 9 * v94, v11, v98);
  v82 = *MEMORY[0x277D394A0];
  (v9)(v2 + 9 * v94 + *(matched + 20));
  (v5)(v2 + 10 * v94, *MEMORY[0x277D39868], v98);
  v56 = *MEMORY[0x277D39508];
  (v9)(v2 + 10 * v94 + *(matched + 20));
  (v5)(v2 + 11 * v94, *MEMORY[0x277D397F8], v98);
  v9(v2 + 11 * v94 + *(matched + 20), v82, v8);
  (v5)(v2 + 12 * v94);
  v71 = *MEMORY[0x277D394B8];
  (v9)(v2 + 12 * v94 + *(matched + 20));
  (v5)(v2 + 13 * v94);
  v60 = *MEMORY[0x277D39510];
  (v9)(v2 + 13 * v94 + *(matched + 20));
  (v5)(v2 + 14 * v94);
  v9(v2 + 14 * v94 + *(matched + 20), v66, v8);
  v12 = v2 + 15 * v94;
  (v5)(v12);
  v55 = *MEMORY[0x277D394D8];
  (v9)(v12 + *(matched + 20));
  v13 = *MEMORY[0x277D39840];
  (v5)(v2 + 16 * v94, v13, v98);
  v9(v2 + 16 * v94 + *(matched + 20), *MEMORY[0x277D394E8], v8);
  (v5)(v2 + 17 * v94, v13, v98);
  v9(v2 + 17 * v94 + *(matched + 20), v82, v8);
  v58 = *MEMORY[0x277D39820];
  (v5)(v2 + 18 * v94);
  v9(v2 + 18 * v94 + *(matched + 20), *MEMORY[0x277D394D0], v8);
  v14 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLV_SayAIGTt0g5Tf4g_n(v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v76 + v89) = v14;
  v59 = OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_relatedScore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAC0f1_g1_h1_i10_AudioItemL0OGtGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAC0f1_g1_h1_i10_AudioItemL0OGtGMR);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAA0c1_d1_e1_f10_AudioItemI0OGtMR);
  v93 = *(*(v90 - 8) + 72);
  v15 = (*(*(v90 - 8) + 80) + 32) & ~*(*(v90 - 8) + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_2234D0350;
  v52 = *(v90 + 48);
  (v5)(v57 + v15, v85, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOGMR);
  v16 = *(v81 + 72);
  v17 = (*(v81 + 80) + 32) & ~*(v81 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2234CF920;
  v9(v18 + v17, v83, v8);
  v19 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v18);
  swift_setDeallocating();
  v79 = *(v81 + 8);
  v79(v18 + v17, v8);
  swift_deallocClassInstance();
  v95 = v57 + v15;
  *(v95 + v52) = v19;
  v53 = *(v90 + 48);
  (v5)(v57 + v15 + v93, v77, v98);
  v78 = 3 * v16;
  v84 = 2 * v16;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2234CF910;
  v9(v20 + v17, v64, v8);
  v86 = v16;
  v9(v20 + v17 + v16, v63, v8);
  v9(v20 + v17 + 2 * v16, v66, v8);
  v21 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v57 + v15 + v93 + v53) = v21;
  v54 = *(v90 + 48);
  (v5)();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2234CF920;
  v97(v22 + v17, v73, v8);
  v23 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v22);
  swift_setDeallocating();
  v79(v22 + v17, v8);
  swift_deallocClassInstance();
  *(v95 + 2 * v93 + v54) = v23;
  v67 = *(v90 + 48);
  (v5)();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2234D1AE0;
  v97(v24 + v17, v55, v8);
  v97(v24 + v17 + v86, v74, v8);
  v97(v24 + v17 + v84, v64, v8);
  v97(v24 + v17 + v78, v63, v8);
  v25 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v95 + 3 * v93 + v67) = v25;
  v65 = *(v90 + 48);
  (v5)();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2234CF920;
  v97(v26 + v17, v56, v8);
  v27 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v26);
  swift_setDeallocating();
  v79(v26 + v17, v8);
  swift_deallocClassInstance();
  *(v95 + 4 * v93 + v65) = v27;
  v68 = *(v90 + 48);
  v96();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2234CF910;
  v97(v28 + v17, v75, v8);
  v97(v28 + v17 + v86, v72, v8);
  v97(v28 + v17 + v84, v83, v8);
  v29 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v95 + 5 * v93 + v68) = v29;
  v69 = *(v90 + 48);
  v96();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2234CF910;
  v97(v30 + v17, v71, v8);
  v97(v30 + v17 + v86, v82, v8);
  v97(v30 + v17 + v84, *MEMORY[0x277D394C8], v8);
  v31 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v95 + 6 * v93 + v69) = v31;
  v70 = *(v90 + 48);
  v96();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2234CF920;
  v97(v32 + v17, v83, v8);
  v33 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v32);
  swift_setDeallocating();
  v79(v32 + v17, v8);
  swift_deallocClassInstance();
  *(v95 + 7 * v93 + v70) = v33;
  v87 = *(v90 + 48);
  v96();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2234CF940;
  v97(v34 + v17, v72, v8);
  v97(v34 + v17 + v86, *MEMORY[0x277D394A8], v8);
  v35 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v95 + 8 * v93 + v87) = v35;
  v88 = *(v90 + 48);
  v96();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2234CF940;
  v97(v36 + v17, v74, v8);
  v97(v36 + v17 + v86, v73, v8);
  v37 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v95 + 9 * v93 + v88) = v37;
  v38 = *(v90 + 48);
  (v96)(v95 + 10 * v93, v58, v98);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2234CF910;
  v97(v39 + v17, v75, v8);
  v97(v39 + v17 + v86, v71, v8);
  v97(v39 + v17 + v84, v60, v8);
  v40 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_Tt0g5Tf4g_n(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v95 + 10 * v93 + v38) = v40;
  v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI44Apple_Parsec_Siri_V2alpha_RequestedMediaTypeO_ShyAC0e1_f1_g1_h10_AudioItemK0OGTt0g5Tf4g_n(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v76 + v59) = v41;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  __swift_project_value_buffer(v42, static Logger.pommes);

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v99 = v46;
    *v45 = 136315138;
    v47 = Apple_Parsec_Siri_V2alpha_RequestedMediaType.toString.getter();
    if (v48)
    {
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0xE000000000000000;
    }

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v99);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_2232BB000, v43, v44, "AudioTypeFeaturiser : requestedMediaType=%s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x223DE0F80](v46, -1, -1);
    MEMORY[0x223DE0F80](v45, -1, -1);
  }

  (*(v62 + 16))(v76 + OBJC_IVAR____TtC21SiriInformationSearch19AudioTypeFeaturiser_requestedType, a1 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_requestedType, v98);
  return v76;
}

uint64_t outlined destroy of AudioTypeFeaturiser.ExactMatchKey(uint64_t a1)
{
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

uint64_t type metadata completion function for AudioTypeFeaturiser(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
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

uint64_t type metadata completion function for AudioTypeFeaturiser.ExactMatchKey(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_RequestedMediaType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ProfileSliceResolvingDataProvider.__allocating_init(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v6 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t ProfileSliceResolvingDataProvider.init(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = 0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v3 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;

  return v3;
}

uint64_t ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v24 = a4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  outlined init with copy of MediaUserStateCenter?(a1, &v21 - v11, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v13 = type metadata accessor for PommesSearchRequest(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v12, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    return 0;
  }

  v14 = *&v12[*(v13 + 92)];

  v15 = outlined destroy of PommesSearchRequest(v12);
  if (!*(v14 + 16))
  {

    return 0;
  }

  if (one-time initialization token for shared != -1)
  {
    v15 = swift_once();
  }

  v23 = &v21;
  v16 = static PerformanceUtil.shared;
  v22 = "exactScore";
  MEMORY[0x28223BE20](v15);
  v20 = a3;
  Date.init()();
  v17 = *(*v16 + 200);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_sSay10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR);
  LOBYTE(v20) = 2;
  v17(&v25, 0xD000000000000034, v22 | 0x8000000000000000, 0, v9, "SiriInformationSearch/ProfileSliceResolvingDataProvider.swift", 61, 2, 57, "fetch(for:assistantData:serviceHelper:dispatchQueue:)", 53, v20, partial apply for closure #1 in ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:), &v21 - 8, v18);

  (*(v7 + 8))(v9, v6);
  return v25;
}

uint64_t closure #1 in closure #1 in ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, _OWORD *a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v28 = a4;
  v29 = a5;
  v26 = a1;
  v27 = a3;
  v30 = a2;
  v25 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  outlined init with copy of MediaUserStateCenter?(a6, &v25 - v15, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v17 = type metadata accessor for PommesSearchRequest(0);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v16, 1, v17) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v16, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = &v16[*(v17 + 32)];
    v19 = *v21;
    v20 = *(v21 + 1);

    outlined destroy of PommesSearchRequest(v16);
  }

  outlined init with copy of MediaUserStateCenter?(a6, v14, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  if (v18(v14, 1, v17) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v14, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
    v22 = 1;
  }

  else
  {
    PommesSearchRequest.pommesCandidateId.getter(v10);
    outlined destroy of PommesSearchRequest(v14);
    v22 = 0;
  }

  v23 = type metadata accessor for PommesCandidateId();
  (*(*(v23 - 8) + 56))(v10, v22, 1, v23);
  ProfileSliceResolvingDataProvider.resolve(_:serviceHelper:dispatchQueue:assistantData:requestId:pommesCandidateId:pommesSearchRequest:)(v26, v27, v28, v29, v19, v20, v10, a6, v25);

  return outlined destroy of MediaUserStateCenter?(v10, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
}

uint64_t ProfileSliceResolvingDataProvider.resolve(_:serviceHelper:dispatchQueue:assistantData:requestId:pommesCandidateId:pommesSearchRequest:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(char *, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v184 = a8;
  v198 = a7;
  v190 = a4;
  v177 = a3;
  v178 = a2;
  v195 = a9;
  v181 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v180 = *(v181 - 8);
  v12 = MEMORY[0x28223BE20](v181);
  v175 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v173 = &v171 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v176 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v179 = &v171 - v18;
  v187 = type metadata accessor for SiriKitContactResolver();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v185 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v192 = (&v171 - v21);
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v196 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v200 = &v171 - v26;
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v174 = &v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v191 = &v171 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v171 - v33;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = __swift_project_value_buffer(v35, static Logger.pommes);
  v37 = *(v28 + 16);
  v197 = a1;
  v189 = v28 + 16;
  v188 = v37;
  v37(v34, a1, v27);
  v183 = v36;
  v38 = Logger.logObject.getter();
  v39 = v27;
  v40 = static os_log_type_t.debug.getter();
  v41 = os_log_type_enabled(v38, v40);
  v199 = a5;
  v193 = v28;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v182 = a6;
    v43 = v42;
    *v42 = 134217984;
    v44 = v200;
    MEMORY[0x223DDBB90]();
    v45 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
    (*(v23 + 8))(v44, v22);
    v46 = *(v28 + 8);
    v46(v34, v39);
    *(v43 + 1) = v45;
    _os_log_impl(&dword_2232BB000, v38, v40, "Attempting to resolve profile slice type: %ld", v43, 0xCu);
    v47 = v43;
    v48 = v182;
    v49 = v198;
    MEMORY[0x223DE0F80](v47, -1, -1);
    v50 = v39;
  }

  else
  {
    v46 = *(v28 + 8);
    v46(v34, v39);
    v50 = v39;
    v48 = a6;
    v49 = v198;
  }

  v51 = v196;
  v52 = v197;
  MEMORY[0x223DDBB90]();
  v53 = (*(v23 + 88))(v51, v22);
  if (v53 == *MEMORY[0x277D39720])
  {
    goto LABEL_7;
  }

  v71 = v53;
  if (v53 == *MEMORY[0x277D396E8])
  {
    return ProfileSliceResolvingDataProvider.resolveAmpSlice(requestId:pommesCandidateId:pommesSearchRequest:serviceHelper:dispatchQueue:)(v199, v48, v49, v184, v195);
  }

  if (v53 == *MEMORY[0x277D39730] || v53 == *MEMORY[0x277D39728])
  {
LABEL_7:
    v184 = v46;
    v54 = v192;
    outlined init with copy of MediaUserStateCenter?(v49, v192, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v55 = v191;
    v188(v191, v52, v50);
    v56 = v194[7];

    v57 = v48;
    v58 = v185;
    SiriKitContactResolver.init()();
    v194 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    type metadata accessor for ContactProfileSliceResolver(0);
    v59 = swift_allocObject();
    v198 = v23;
    v60 = v59;
    v61 = v187;
    v59[5] = v187;
    v59[6] = &protocol witness table for SiriKitContactResolver;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59 + 2);
    (*(v186 + 32))(boxed_opaque_existential_1, v58, v61);
    v63 = v190;
    v64 = v190[3];
    *(v60 + 11) = v190[2];
    *(v60 + 13) = v64;
    *(v60 + 15) = v63[4];
    *(v60 + 130) = *(v63 + 74);
    v65 = v63[1];
    *(v60 + 7) = *v63;
    *(v60 + 9) = v65;
    v60[19] = v199;
    v60[20] = v57;
    v196 = v22;
    outlined init with take of PommesCandidateId?(v54, v60 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId);
    (*(v193 + 32))(v60 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest, v55, v50);
    *(v60 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_contactStore) = v194;
    *(v60 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil) = v56;
    outlined init with copy of MediaUserStateCenter?(v63, &v201, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);

    v67 = v200;
    MEMORY[0x223DDBB90](v66);
    ContactProfileSliceResolver.resolveNameSlice(label:)(v67, v195);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v60 + 2);
    v68 = *(v60 + 13);
    v203 = *(v60 + 11);
    v204 = v68;
    *v205 = *(v60 + 15);
    *&v205[10] = *(v60 + 130);
    v69 = *(v60 + 9);
    v201 = *(v60 + 7);
    v202 = v69;
    outlined destroy of MediaUserStateCenter?(&v201, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);

    outlined destroy of MediaUserStateCenter?(v60 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v184(v60 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest, v50);

    swift_deallocClassInstance();
    return (*(v198 + 8))(v67, v196);
  }

  if (v53 == *MEMORY[0x277D396E0])
  {
    outlined init with copy of MediaUserStateCenter?(v49, v192, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v72 = v48;
    v188(v191, v52, v50);
    v73 = v194[7];

    v74 = v185;
    SiriKitContactResolver.init()();
    v75 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v76 = v50;
    v172 = v50;
    v198 = v23;
    v77 = v75;
    type metadata accessor for ContactProfileSliceResolver(0);
    v78 = swift_allocObject();
    v79 = v187;
    *(v78 + 40) = v187;
    *(v78 + 48) = &protocol witness table for SiriKitContactResolver;
    v80 = __swift_allocate_boxed_opaque_existential_1((v78 + 16));
    (*(v186 + 32))(v80, v74, v79);
    v81 = v190;
    v82 = v190[3];
    *(v78 + 88) = v190[2];
    *(v78 + 104) = v82;
    *(v78 + 120) = v81[4];
    *(v78 + 130) = *(v81 + 74);
    v83 = v81[1];
    *(v78 + 56) = *v81;
    *(v78 + 72) = v83;
    v84 = v199;
    *(v78 + 152) = v199;
    *(v78 + 160) = v72;
    outlined init with take of PommesCandidateId?(v192, v78 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId);
    (*(v193 + 32))(v78 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest, v191, v76);
    *(v78 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_contactStore) = v77;
    *(v78 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil) = v73;
    v85 = v200;
    (*(v198 + 104))(v200, v71, v22);
    v196 = v22;
    v197 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil;
    v86 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId;
    v87 = *(*v73 + 128);
    outlined init with copy of MediaUserStateCenter?(v81, &v201, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);

    v88 = v87(v84, v72, v78 + v86, v85);
    ContactProfileSliceResolver.resolveContactSlice(requestType:label:)(0, v85, v195);
    (*(**(v78 + v197) + 136))(*(v78 + 152), *(v78 + 160), v78 + v86, v88);

    (*(v198 + 8))(v85, v196);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v78 + 16));
    v89 = *(v78 + 104);
    v203 = *(v78 + 88);
    v204 = v89;
    *v205 = *(v78 + 120);
    *&v205[10] = *(v78 + 130);
    v90 = *(v78 + 72);
    v201 = *(v78 + 56);
    v202 = v90;
    outlined destroy of MediaUserStateCenter?(&v201, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotVSgMR);

    outlined destroy of MediaUserStateCenter?(v78 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    (*(v193 + 8))(v78 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest, v172);
    v91 = *(v78 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_contactStore);

    return swift_deallocClassInstance();
  }

  if (v53 == *MEMORY[0x277D39710])
  {
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v199;
    if (v94)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_2232BB000, v92, v93, "Resolving me card slice", v96, 2u);
      MEMORY[0x223DE0F80](v96, -1, -1);
    }

    return ProfileSliceResolvingDataProvider.resolveMeCardSlice(from:requestId:pommesCandidateId:)(v190, v95, v48, v49, v195);
  }

  v97 = v46;
  v98 = v199;
  if (v53 == *MEMORY[0x277D39738])
  {
    v99 = v23;
    v196 = v22;
    v182 = v48;
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_2232BB000, v100, v101, "Resolving RouteInfo slice", v102, 2u);
      MEMORY[0x223DE0F80](v102, -1, -1);
    }

    type metadata accessor for RouteInfoProfileSliceResolver(0);
    v103 = swift_allocObject();
    v104 = *(v180 + 56);
    v105 = v181;
    v104(v103 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue, 1, 1, v181);
    v106 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_dispatchGroup;
    *(v103 + v106) = dispatch_group_create();
    *(v103 + OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
    v107 = v179;
    v104(v179, 1, 1, v105);
    v108 = OBJC_IVAR____TtC21SiriInformationSearch29RouteInfoProfileSliceResolver_routeInfoProfileSliceValue;
    swift_beginAccess();
    v197 = v103;
    outlined assign with take of MediaUserStateCenter?(v107, v103 + v108, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
    swift_endAccess();
    v109 = v194[7];
    v110 = v200;
    v111 = v196;
    (*(v99 + 104))(v200, v71, v196);
    v112 = *(*v109 + 128);

    v194 = v109;
    v113 = v112(v199, v182, v198, v110);
    (*(v99 + 8))(v110, v111);
    v114 = v178;
    if (v178)
    {
      v115 = v177;
      if (v177)
      {
        v116 = v179;
        v117 = v181;
        v104(v179, 1, 1, v181);
        v118 = v197;
        swift_beginAccess();
        swift_unknownObjectRetain();
        v119 = v115;
        outlined assign with take of MediaUserStateCenter?(v116, v118 + v108, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
        swift_endAccess();
        RouteInfoProfileSliceResolver.populateProfileSliceValue(serviceHelper:dispatchQueue:)(v114, v119);
        v120 = v118 + v108;
        v121 = v176;
        outlined init with copy of MediaUserStateCenter?(v120, v176, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
        v122 = v180;
        if ((*(v180 + 48))(v121, 1, v117) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v121, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
          v123 = Logger.logObject.getter();
          v124 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            *v125 = 0;
            _os_log_impl(&dword_2232BB000, v123, v124, "There was an error while creating the routeInfoProfileSlice. Returning no profile slice for .sliceLabelRouteInfo", v125, 2u);
            MEMORY[0x223DE0F80](v125, -1, -1);
          }

          (*(*v194 + 144))(v199, v182, v198, v113, 3);
          swift_unknownObjectRelease();

          v126 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
          (*(*(v126 - 8) + 56))(v195, 1, 1, v126);
        }

        else
        {
          v167 = v173;
          (*(v122 + 32))(v173, v121, v117);
          v168 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
          MEMORY[0x28223BE20](v168);
          *(&v171 - 2) = v167;
          lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460], MEMORY[0x277D39458]);
          v169 = v195;
          static Message.with(_:)();
          (*(*v194 + 136))(v199, v182, v198, v113);
          swift_unknownObjectRelease();

          (*(*(v168 - 8) + 56))(v169, 0, 1, v168);
          (*(v122 + 8))(v167, v181);
        }

        goto LABEL_45;
      }

      swift_unknownObjectRetain();
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        *v165 = 0;
        _os_log_impl(&dword_2232BB000, v163, v164, "Cannot create route info slice because there is no dispatch queue provided", v165, 2u);
        MEMORY[0x223DE0F80](v165, -1, -1);
      }

      (*(*v194 + 144))(v199, v182, v198, v113, 3);
      swift_unknownObjectRelease();
    }

    else
    {
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&dword_2232BB000, v142, v143, "Cannot create route info slice because there is no service helper", v144, 2u);
        MEMORY[0x223DE0F80](v144, -1, -1);
      }

      (*(*v194 + 144))(v199, v182, v198, v113, 3);
    }

    v166 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    (*(*(v166 - 8) + 56))(v195, 1, 1, v166);
LABEL_45:
  }

  if (v53 == *MEMORY[0x277D396F8])
  {
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_2232BB000, v127, v128, "Resolving parking location slice", v129, 2u);
      MEMORY[0x223DE0F80](v129, -1, -1);
    }

    type metadata accessor for ParkingLocationProfileSliceResolver(0);
    v130 = swift_allocObject();
    v131 = *(v180 + 56);
    v132 = v181;
    v131(v130 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue, 1, 1, v181);
    *(v130 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_semaphore) = dispatch_semaphore_create(0);
    v133 = v179;
    v131(v179, 1, 1, v132);
    v134 = OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_profileSliceValue;
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v133, v130 + v134, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
    swift_endAccess();
    *(v130 + OBJC_IVAR____TtC21SiriInformationSearch35ParkingLocationProfileSliceResolver_resolutionSucceeded) = 0;
    ParkingLocationProfileSliceResolver.resolveParkingLocationSlice(serviceHelper:dispatchQueue:)(v178, v177, v195);
  }

  if (v53 == *MEMORY[0x277D39700])
  {
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&dword_2232BB000, v135, v136, "Resolving foreground App slice", v137, 2u);
      MEMORY[0x223DE0F80](v137, -1, -1);
    }

    specialized RunningBoardForegroundAppProvider.getForegroundAppId()();

    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768], MEMORY[0x277D39760]);
    v138 = v175;
    v139 = v181;
    static Message.with(_:)();
    v140 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    MEMORY[0x28223BE20](v140);
    *(&v171 - 2) = v138;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460], MEMORY[0x277D39458]);
    v141 = v195;
    static Message.with(_:)();
    (*(*(v140 - 8) + 56))(v141, 0, 1, v140);
    return (*(v180 + 8))(v138, v139);
  }

  else
  {
    v145 = v48;
    v182 = v48;
    v146 = v194[7];

    v148 = v200;
    MEMORY[0x223DDBB90](v147);
    v149 = (*(*v146 + 128))(v98, v145, v49, v148);

    v192 = *(v23 + 8);
    (v192)(v148, v22);
    v150 = *(*v194[7] + 144);
    v151 = v50;

    v152 = v199;
    v199 = v149;
    v150(v152, v182, v49, v149, 2);

    v153 = v174;
    v188(v174, v197, v50);
    v154 = Logger.logObject.getter();
    v155 = v22;
    v156 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v154, v156))
    {
      v157 = swift_slowAlloc();
      *v157 = 134217984;
      v158 = v200;
      MEMORY[0x223DDBB90]();
      v159 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
      v160 = v158;
      v161 = v192;
      (v192)(v160, v155);
      v97(v153, v151);
      *(v157 + 4) = v159;
      _os_log_impl(&dword_2232BB000, v154, v156, "Skipping profile resolution request for an unsupported type: %ld", v157, 0xCu);
      MEMORY[0x223DE0F80](v157, -1, -1);
      v162 = v161;
    }

    else
    {
      v97(v153, v50);
      v162 = v192;
    }

    v162(v196, v155);
    v170 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    return (*(*(v170 - 8) + 56))(v195, 1, 1, v170);
  }
}

uint64_t ProfileSliceResolvingDataProvider.resolveAmpSlice(requestId:pommesCandidateId:pommesSearchRequest:serviceHelper:dispatchQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v160 = a4;
  v176 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v166 = v149 - v10;
  v183 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v184 = v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v179 = *(v180 - 8);
  v12 = MEMORY[0x28223BE20](v180);
  v172 = v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v163 = v149 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v162 = v149 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v157 = v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v156 = v149 - v20;
  v170 = type metadata accessor for DispatchTimeInterval();
  v171 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = (v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = type metadata accessor for DispatchTime();
  v178 = *(v169 - 8);
  v22 = MEMORY[0x28223BE20](v169);
  v167 = (v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v177 = (v149 - v24);
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v5 + 56);
  (*(v26 + 104))(v28, *MEMORY[0x277D396E8], v25);
  v30 = *(*v29 + 128);

  v173 = a1;
  v174 = a2;
  v31 = a2;
  v175 = a3;
  v32 = v5;
  v33 = v30(a1, v31, a3, v28);

  (*(v26 + 8))(v28, v25);
  v34 = swift_allocObject();
  v181 = v34;
  *(v34 + 16) = 0;
  v35 = v34 + 16;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v165 = (v36 + 16);
  swift_beginAccess();
  outlined init with copy of MediaUserStateCenter?(v5 + 16, &v193, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  v37 = v194;
  outlined destroy of MediaUserStateCenter?(&v193, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  if (!v37)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.pommes);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2232BB000, v39, v40, "ProfileSliceResolvingDataProvider Initializing the shared media user state center ...", v41, 2u);
      MEMORY[0x223DE0F80](v41, -1, -1);
    }

    v42 = [objc_opt_self() shared];
    v194 = type metadata accessor for ICMediaUserStateCenter();
    v195 = &protocol witness table for ICMediaUserStateCenter;
    v193 = v42;
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(&v193, v5 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    swift_endAccess();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2232BB000, v43, v44, "ProfileSliceResolvingDataProvider Initializing the shared media user state center complete", v45, 2u);
      MEMORY[0x223DE0F80](v45, -1, -1);
    }
  }

  outlined init with copy of MediaUserStateCenter?(v32 + 16, &v190, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  if (v191)
  {
    v161 = v35;
    v164 = v33;
    outlined init with take of DomainWarmupHandling(&v190, &v193);
    v46 = dispatch_group_create();
    dispatch_group_enter(v46);
    v47 = v194;
    v48 = v195;
    __swift_project_boxed_opaque_existential_1(&v193, v194);
    v159 = v32;
    v49 = swift_allocObject();
    v49[2] = v46;
    v49[3] = v36;
    v49[4] = v181;
    v50 = v36;
    v51 = v48[4];
    v52 = v46;
    v158 = v50;

    v53 = v159;
    v51(partial apply for closure #1 in ProfileSliceResolvingDataProvider.resolveAmpSlice(requestId:pommesCandidateId:pommesSearchRequest:serviceHelper:dispatchQueue:), v49, v47, v48);

    v54 = v167;
    static DispatchTime.now()();
    v55 = v168;
    *v168 = 1000;
    v56 = v171;
    v57 = *(v171 + 104);
    v154 = *MEMORY[0x277D85178];
    v58 = v170;
    v155 = v171 + 104;
    v153 = v57;
    v57(v55);
    v59 = v177;
    MEMORY[0x223DDF450](v54, v55);
    v61 = *(v56 + 8);
    v60 = v56 + 8;
    v152 = v61;
    v61(v55, v58);
    v62 = v178 + 8;
    v63 = *(v178 + 8);
    v64 = v169;
    v63(v54, v169);
    v167 = v52;
    LODWORD(v54) = MEMORY[0x223DDFB80](v59);
    v151 = v63;
    v150 = v62;
    v63(v59, v64);
    v65 = v53;
    v149[3] = v54;
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v66 = v165;
      swift_beginAccess();
      if (!*v66)
      {
        v67 = v156;
        outlined init with copy of MediaUserStateCenter?(v160, v156, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
        v68 = type metadata accessor for PommesSearchRequest(0);
        if ((*(*(v68 - 8) + 48))(v67, 1, v68) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v67, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
        }

        else
        {
          v78 = *(v67 + *(v68 + 60));
          outlined destroy of PommesSearchRequest(v67);
          if ((v78 & 1) == 0)
          {
            v79 = v161;
            swift_beginAccess();
            v80 = *v79;
            if (*v79)
            {
              v171 = v60;
              v81 = *(v80 + 16);

              if (v81)
              {
                v82 = 0;
                v83 = (v80 + 32);
                v65 = MEMORY[0x277D84F90];
                while (v82 < *(v80 + 16))
                {
                  outlined init with copy of AppDataProviding(v83, &v190);
                  v60 = v191;
                  v84 = v192;
                  __swift_project_boxed_opaque_existential_1(&v190, v191);
                  if ((*(v84 + 32))(v60, v84))
                  {
                    outlined init with take of DomainWarmupHandling(&v190, &v185);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v189 = v65;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 16) + 1, 1);
                      v65 = v189;
                    }

                    v87 = *(v65 + 16);
                    v86 = *(v65 + 24);
                    if (v87 >= v86 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1);
                    }

                    v88 = v186;
                    v60 = v187;
                    v89 = __swift_mutable_project_boxed_opaque_existential_1(&v185, v186);
                    MEMORY[0x28223BE20](v89);
                    v91 = v149 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
                    (*(v92 + 16))(v91);
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v87, v91, &v189, v88, v60);
                    __swift_destroy_boxed_opaque_existential_1(&v185);
                    v65 = v189;
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1(&v190);
                  }

                  ++v82;
                  v83 += 40;
                  if (v81 == v82)
                  {
                    goto LABEL_34;
                  }
                }

                __break(1u);
                goto LABEL_85;
              }

              v65 = MEMORY[0x277D84F90];
LABEL_34:

              v93 = v161;
              v58 = v170;
              v64 = v169;
              v55 = v168;
            }

            else
            {
              v65 = 0;
              v93 = v161;
            }

            *v93 = v65;

            v65 = v159;
          }
        }
      }
    }

    v94 = *(v65 + 64);
    if (v94)
    {

      v95 = v177;
      static DispatchTime.now()();
      *v55 = 1;
      v153(v55, v154, v58);
      v96 = v162;
      MEMORY[0x223DDF450](v95, v55);
      v152(v55, v58);
      v151(v95, v64);
      (*(v178 + 56))(v96, 0, 1, v64);
      v97 = (*(*v94 + 176))(v96);

      outlined destroy of MediaUserStateCenter?(v96, &_s8Dispatch0A4TimeVSgMd, &_s8Dispatch0A4TimeVSgMR);
    }

    else
    {
      v97 = 0;
    }

    v83 = v164;
    v98 = v166;
    v99 = v161;
    swift_beginAccess();
    v100 = *v99;
    if (*v99)
    {
      v101 = *(v100 + 16);
      if (v101)
      {
        v102 = *(**(v65 + 56) + 136);

        v102(v173, v174, v175, v83);

        if (v97)
        {
          v103 = v97;
        }

        else
        {
          v103 = MEMORY[0x277D84F90];
        }

        v104 = v157;
        outlined init with copy of MediaUserStateCenter?(v160, v157, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
        v105 = type metadata accessor for PommesSearchRequest(0);
        if ((*(*(v105 - 8) + 48))(v104, 1, v105) == 1)
        {
          outlined destroy of MediaUserStateCenter?(v104, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
          LODWORD(v177) = 0;
        }

        else
        {
          LODWORD(v177) = *(v104 + *(v105 + 60));
          outlined destroy of PommesSearchRequest(v104);
        }

        v133 = v183;
        (*(v179 + 104))(v163, *MEMORY[0x277D39D58], v180);
        v178 = v100;
        v134 = v100 + 32;
        v135 = (v182 + 48);
        v136 = (v182 + 32);
        v137 = MEMORY[0x277D84F90];
        do
        {
          outlined init with copy of AppDataProviding(v134, &v190);
          createAMPUserState(mediaUserState:muxUserInfo:)(&v190, v103, v98);
          __swift_destroy_boxed_opaque_existential_1(&v190);
          if ((*v135)(v98, 1, v133) == 1)
          {
            outlined destroy of MediaUserStateCenter?(v98, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
          }

          else
          {
            v138 = *v136;
            (*v136)(v184, v98, v133);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v137 + 2) + 1, 1, v137);
            }

            v140 = *(v137 + 2);
            v139 = *(v137 + 3);
            if (v140 >= v139 >> 1)
            {
              v137 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v139 > 1), v140 + 1, 1, v137);
            }

            *(v137 + 2) = v140 + 1;
            v133 = v183;
            v138(&v137[((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v140], v184, v183);
          }

          v134 += 40;
          --v101;
        }

        while (v101);

        v141 = v163;
        createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)(v137, v163, 1, v177, v176);

        (*(v179 + 8))(v141, v180);
        goto LABEL_70;
      }
    }

    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v106 = v165;
      swift_beginAccess();
      v107 = *v106;
      v60 = v180;
      if (v107)
      {
        v108 = v107;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v109 = type metadata accessor for Logger();
        __swift_project_value_buffer(v109, static Logger.pommes);
        v110 = v107;
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v188 = v107;
          v189 = v114;
          *v113 = 136315138;
          v115 = v107;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v116 = String.init<A>(describing:)();
          v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, &v189);

          *(v113 + 4) = v118;
          v60 = v180;
          _os_log_impl(&dword_2232BB000, v111, v112, "ProfileSliceResolvingDataProvider : AMP user state refresh return an error : %s", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v114);
          MEMORY[0x223DE0F80](v114, -1, -1);
          MEMORY[0x223DE0F80](v113, -1, -1);
        }

        v119 = *(**(v65 + 56) + 144);

        v119(v173, v174, v175, v83, 3);

        goto LABEL_58;
      }

      if (*v161)
      {
        if (*(*v161 + 16))
        {
          goto LABEL_58;
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v143 = type metadata accessor for Logger();
        __swift_project_value_buffer(v143, static Logger.pommes);
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v144, v145))
        {
          goto LABEL_83;
        }

        v146 = swift_slowAlloc();
        *v146 = 0;
        v147 = "ProfileSliceResolvingDataProvider : AMP user state refresh returned no user states";
      }

      else
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v148 = type metadata accessor for Logger();
        __swift_project_value_buffer(v148, static Logger.pommes);
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v144, v145))
        {
          goto LABEL_83;
        }

        v146 = swift_slowAlloc();
        *v146 = 0;
        v147 = "ProfileSliceResolvingDataProvider : AMP user state refresh return nil";
      }

      _os_log_impl(&dword_2232BB000, v144, v145, v147, v146, 2u);
      MEMORY[0x223DE0F80](v146, -1, -1);
LABEL_83:

      v124 = *(**(v65 + 56) + 144);

      v125 = v173;
      v126 = v174;
      v127 = v175;
      v128 = v83;
      v129 = 3;
LABEL_57:
      v124(v125, v126, v127, v128, v129);

LABEL_58:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMR);
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_2234CF920;
      Apple_Parsec_Siri_V2alpha_AmpUserState.init()();
      v131 = v179;
      v132 = v172;
      (*(v179 + 104))(v172, *MEMORY[0x277D39D50], v60);
      createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)(v130, v132, 1, 0, v176);

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      (*(v131 + 8))(v132, v60);
LABEL_70:
      __swift_destroy_boxed_opaque_existential_1(&v193);
    }

    v60 = v180;
    if (one-time initialization token for pommes == -1)
    {
LABEL_54:
      v120 = type metadata accessor for Logger();
      __swift_project_value_buffer(v120, static Logger.pommes);
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_2232BB000, v121, v122, "ProfileSliceResolvingDataProvider : timeout while waiting for AMP user state refresh", v123, 2u);
        MEMORY[0x223DE0F80](v123, -1, -1);
      }

      v124 = *(**(v65 + 56) + 144);

      v125 = v173;
      v126 = v174;
      v127 = v175;
      v128 = v83;
      v129 = 1;
      goto LABEL_57;
    }

LABEL_85:
    swift_once();
    goto LABEL_54;
  }

  outlined destroy of MediaUserStateCenter?(&v190, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static Logger.pommes);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_2232BB000, v70, v71, "ProfileSliceResolvingDataProvider the shared media user state center initialization failed", v72, 2u);
    MEMORY[0x223DE0F80](v72, -1, -1);
  }

  v73 = *(**(v32 + 56) + 144);

  v73(v173, v174, v175, v33, 3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVGMR);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_2234CF920;
  Apple_Parsec_Siri_V2alpha_AmpUserState.init()();
  v75 = v179;
  v76 = v172;
  v77 = v180;
  (*(v179 + 104))(v172, *MEMORY[0x277D39D50], v180);
  createAmpUsersStateSlice(ampUserStates:resolution:isPostResolution:isMultiUserRequest:)(v74, v76, 1, 0, v176);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v75 + 8))(v76, v77);
}

void closure #1 in ProfileSliceResolvingDataProvider.resolveAmpSlice(requestId:pommesCandidateId:pommesSearchRequest:serviceHelper:dispatchQueue:)(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;

  swift_beginAccess();
  if (a2)
  {
    v12 = *(a4 + 16);
    *(a4 + 16) = a2;
    v13 = a2;
  }

  else
  {
    *(a5 + 16) = a1;
  }

  dispatch_group_leave(a3);
}

uint64_t ProfileSliceResolvingDataProvider.resolveMeCardSlice(from:requestId:pommesCandidateId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a1;
  v48 = a5;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v38 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v5;
  v17 = *(v5 + 56);
  (*(v14 + 104))(v16, *MEMORY[0x277D39710], v13);
  v18 = *(*v17 + 128);

  v43 = a2;
  v45 = a3;
  v46 = a4;
  v19 = v18(a2, a3, a4, v16);

  v20 = (*(v14 + 8))(v16, v13);
  v21 = *(v41 + 24);
  if (v21 && *(v21 + 16))
  {
    MEMORY[0x28223BE20](v20);
    *(&v38 - 2) = v22;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460], MEMORY[0x277D39458]);
    v23 = v44;
    static Message.with(_:)();
    v24 = *(**(v42 + 56) + 136);

    v24(v43, v45, v46, v19);

    v26 = v47;
    v25 = v48;
    (*(v47 + 32))(v48, v12, v23);
    return (*(v26 + 56))(v25, 0, 1, v23);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.pommes);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2232BB000, v29, v30, "No Me card data available; returning no profile slice for .sliceLabelMe", v31, 2u);
      MEMORY[0x223DE0F80](v31, -1, -1);
    }

    v32 = *(**(v42 + 56) + 144);

    v32(v43, v45, v46, v19, 3);

    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768], MEMORY[0x277D39760]);
    v33 = v38;
    v34 = v40;
    v35 = static Message.with(_:)();
    MEMORY[0x28223BE20](v35);
    *(&v38 - 2) = v33;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460], MEMORY[0x277D39458]);
    v36 = v48;
    v37 = v44;
    static Message.with(_:)();

    (*(v47 + 56))(v36, 0, 1, v37);
    return (*(v39 + 8))(v33, v34);
  }
}

uint64_t closure #1 in ProfileSliceResolvingDataProvider.resolveMeCardSlice(from:requestId:pommesCandidateId:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AD8]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.isPostResolution.setter();
  (*(v1 + 104))(v3, *MEMORY[0x277D39D50], v0);
  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
}

uint64_t closure #2 in ProfileSliceResolvingDataProvider.resolveMeCardSlice(from:requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 104))(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39710]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2234CF920;
  (*(v7 + 16))(v9 + v8, a2, v6);
  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

uint64_t closure #3 in ProfileSliceResolvingDataProvider.resolveMeCardSlice(from:requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v37 - v5;
  v51 = type metadata accessor for Google_Protobuf_Any();
  v7 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v44 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = v37 - v10;
  v52 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v11 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v43 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 104))(v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39710]);
  v37[1] = a1;
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  v16 = *(a2 + 16);
  if (v16)
  {
    v17 = a2 + 32;
    v49 = (v7 + 56);
    v50 = v6;
    v48 = (v11 + 56);
    v41 = (v7 + 8);
    v42 = (v7 + 32);
    v38 = v11;
    v39 = (v11 + 32);
    v40 = (v11 + 48);
    v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
    v46 = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x277D38FC0], MEMORY[0x277D38FB8]);
    v45 = MEMORY[0x277D84F90];
    v18 = v52;
    while (1)
    {
      v19 = *(v17 + 80);
      v56[4] = *(v17 + 64);
      v56[5] = v19;
      v57 = *(v17 + 96);
      v20 = *(v17 + 16);
      v56[0] = *v17;
      v56[1] = v20;
      v21 = *(v17 + 48);
      v56[2] = *(v17 + 32);
      v56[3] = v21;
      v55[3] = v47;
      v55[4] = v46;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
      MEMORY[0x28223BE20](boxed_opaque_existential_1);
      v37[-2] = v56;
      outlined init with copy of AssistantDataSnapshot.MeCard(v56, &v54);
      v23 = v58;
      static Message.with(_:)();
      defaultAnyTypeURLPrefix.getter();
      v24 = v50;
      Google_Protobuf_Any.init(message:partial:typePrefix:)();
      if (v23)
      {

        outlined destroy of AssistantDataSnapshot.MeCard(v56);
        (*v49)(v24, 1, 1, v51);
        outlined destroy of MediaUserStateCenter?(v24, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
        (*v48)(v53, 1, 1, v18);
        v58 = 0;
      }

      else
      {
        v25 = v51;
        (*v49)(v24, 0, 1, v51);
        v26 = v53;
        v27 = v44;
        v28 = (*v42)(v44, v24, v25);
        MEMORY[0x28223BE20](v28);
        v37[-2] = v27;
        lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768], MEMORY[0x277D39760]);
        static Message.with(_:)();
        v58 = 0;
        outlined destroy of AssistantDataSnapshot.MeCard(v56);
        (*v48)(v26, 0, 1, v52);
        v29 = v27;
        v18 = v52;
        (*v41)(v29, v25);
        if ((*v40)(v26, 1, v18) != 1)
        {
          v30 = *v39;
          (*v39)(v43, v53, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
          }

          v32 = *(v45 + 2);
          v31 = *(v45 + 3);
          v33 = v38;
          if (v32 >= v31 >> 1)
          {
            v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v45);
            v33 = v38;
            v45 = v35;
          }

          v34 = v45;
          *(v45 + 2) = v32 + 1;
          v30(&v34[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32], v43, v18);
          goto LABEL_5;
        }
      }

      outlined destroy of MediaUserStateCenter?(v53, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVSgMR);
LABEL_5:
      v17 += 104;
      if (!--v16)
      {
        return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
      }
    }
  }

  v45 = MEMORY[0x277D84F90];
  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

uint64_t ProfileSliceResolvingDataProvider.deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);

  return v0;
}

uint64_t ProfileSliceResolvingDataProvider.__deallocating_deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance ProfileSliceResolvingDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 208))();
  *a1 = result;
  return result;
}

uint64_t specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of MediaUserStateCenter?(a1, v7, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for ProfileSliceResolvingDataProvider();
  v5 = swift_allocObject();
  *(v5 + 64) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  *(v5 + 16) = 0u;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v7, v5 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v5);
}

void *partial apply for closure #1 in ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[2] = *(v1 + 24);
  v4 = *(v1 + 48);
  v7 = *(v1 + 32);
  v8 = v4;
  result = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in closure #1 in ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:), v6, v3);
  *a1 = result;
  return result;
}

uint64_t dispatch thunk of ProfileSliceResolvingDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 208);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t outlined init with take of PommesCandidateId?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DDFF80](v2, v25);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = specialized static VocabularyResult.makeResults(from:userId:)(isUniquelyReferenced_nonNull_bridgeObject, 0, 0);

      v7 = v6 >> 62;
      if (v6 >> 62)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        __CocoaSet.count.getter();
        goto LABEL_20;
      }

      if (v9)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v13 >> 1) - v12) < v8)
          {
            goto LABEL_42;
          }

          v32 = v3;
          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_44;
            }

            lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [VocabularyResult] and conformance [A], &_sSay21SiriInformationSearch16VocabularyResultCGMd, &_sSay21SiriInformationSearch16VocabularyResultCGMR, MEMORY[0x277D83988]);
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch16VocabularyResultCGMd, &_sSay21SiriInformationSearch16VocabularyResultCGMR);
              v18 = specialized protocol witness for Collection.subscript.read in conformance [A](v31, i, v6);
              v20 = *v19;
              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for VocabularyResult();
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v8 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v8);
            v22 = v21 + v8;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_52;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = v1;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DDFF80](v3, v26);
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v3 >= *(v28 + 16))
        {
          goto LABEL_47;
        }

        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          v25 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = __CocoaSet.count.getter();
          isUniquelyReferenced_nonNull_bridgeObject = v25;
          goto LABEL_3;
        }
      }

      v6 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter();

      v7 = v6 ? v6 : v2;
      v2 = v7 >> 62;
      v8 = v7 >> 62 ? __CocoaSet.count.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v4 >> 62;
      if (v4 >> 62)
      {
        v23 = __CocoaSet.count.getter();
        v11 = v23 + v8;
        if (__OFADD__(v23, v8))
        {
LABEL_43:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = v10 + v8;
        if (__OFADD__(v10, v8))
        {
          goto LABEL_43;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v9)
      {
        goto LABEL_22;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v31 = v8;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v2)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_5:

          if (v31 > 0)
          {
            goto LABEL_48;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_5;
        }
      }

      if (((v14 >> 1) - v13) < v31)
      {
        goto LABEL_49;
      }

      v16 = v12 + 8 * v13 + 32;
      if (v2)
      {
        if (v15 < 1)
        {
          goto LABEL_51;
        }

        lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A], &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMd, &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMR);
        for (i = 0; i != v15; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMd, &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMR);
          v18 = specialized protocol witness for Collection.subscript.read in conformance [A](v30, i, v7);
          v20 = *v19;

          (v18)(v30, 0);
          *(v16 + 8 * i) = v20;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGMd, &_s12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGMR);
        swift_arrayInitWithCopy();
      }

      v1 = v27;
      if (v31 >= 1)
      {
        v21 = *(v12 + 16);
        v5 = __OFADD__(v21, v31);
        v22 = v21 + v31;
        if (v5)
        {
          goto LABEL_50;
        }

        *(v12 + 16) = v22;
      }

LABEL_6:
      v2 = MEMORY[0x277D84F90];
      if (v3 == v1)
      {
        return v4;
      }
    }

    if (!v9)
    {
      v12 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_22:
    __CocoaSet.count.getter();
    goto LABEL_23;
  }

  return v2;
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_53;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v39 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v40 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v35 = isUniquelyReferenced_nonNull_bridgeObject;
    v38 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v37 = v1;
    while (1)
    {
      if (v40)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DDFF80](v2, v35);
      }

      else
      {
        if (v2 >= *(v39 + 16))
        {
          goto LABEL_47;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v38 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = specialized NSDictionary.arrayValue<A>(for:)();

      if (v7)
      {
      }

      else
      {
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static Logger.pommes);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v42[0] = v12;
          *v11 = 136315138;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v3;
          v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v42);

          *(v11 + 4) = v16;
          v3 = v15;
          _os_log_impl(&dword_2232BB000, v9, v10, "PegasusProxy#equivalentAppInfo unable find concepts from key:%s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x223DE0F80](v12, -1, -1);
          MEMORY[0x223DE0F80](v11, -1, -1);
        }

        v7 = MEMORY[0x277D84F90];
      }

      v17 = v7 >> 62;
      if (v7 >> 62)
      {
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v20 = isUniquelyReferenced_nonNull_bridgeObject + v18;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v18))
        {
          goto LABEL_48;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = isUniquelyReferenced_nonNull_bridgeObject + v18;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v18))
        {
          goto LABEL_48;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v19)
        {
          v21 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v20 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_26:
        __CocoaSet.count.getter();
        goto LABEL_27;
      }

      if (v19)
      {
        goto LABEL_26;
      }

LABEL_27:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v21 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_28:
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v17)
      {
        v25 = v21;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v21 = v25;
        v24 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_32:
          if (((v23 >> 1) - v22) < v18)
          {
            goto LABEL_50;
          }

          v41 = v3;
          v43 = v2;
          v26 = v21 + 8 * v22 + 32;
          v36 = v21;
          if (v17)
          {
            if (v24 < 1)
            {
              goto LABEL_52;
            }

            lazy protocol witness table accessor for type [NSDictionary] and conformance [A]();
            for (i = 0; i != v24; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSDictionaryCGMd, &_sSaySo12NSDictionaryCGMR);
              v28 = specialized protocol witness for Collection.subscript.read in conformance [A](v42, i, v7);
              v30 = *v29;
              (v28)(v42, 0);
              *(v26 + 8 * i) = v30;
            }
          }

          else
          {
            type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
            swift_arrayInitWithCopy();
          }

          v3 = v41;
          v4 = v37;
          v2 = v43;
          if (v18 >= 1)
          {
            v31 = *(v36 + 16);
            v6 = __OFADD__(v31, v18);
            v32 = v31 + v18;
            if (v6)
            {
              goto LABEL_51;
            }

            *(v36 + 16) = v32;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_32;
        }
      }

      v4 = v37;
      if (v18 > 0)
      {
        goto LABEL_49;
      }

LABEL_5:
      if (v2 == v4)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v33 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v33;
  }

  return MEMORY[0x277D84F90];
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v4 = &_sSaySo8INPersonCGMd;
    v30 = v1;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223DDFF80](v2, v29);
      }

      else
      {
        if (v2 >= *(v33 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject siriMatches];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for INPerson();
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v5 = v8;
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_42:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_42;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          goto LABEL_24;
        }

LABEL_23:
        __CocoaSet.count.getter();
        goto LABEL_24;
      }

      if (v12)
      {
        goto LABEL_23;
      }

      v14 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v37 = v3;
        goto LABEL_25;
      }

LABEL_24:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v37 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v10)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_29:
          if (((v16 >> 1) - v15) < v11)
          {
            goto LABEL_46;
          }

          v35 = v2;
          v19 = v14 + 8 * v15 + 32;
          v31 = v14;
          if (v10)
          {
            if (v17 < 1)
            {
              goto LABEL_48;
            }

            lazy protocol witness table accessor for type [INPerson] and conformance [A]();
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v4, &_sSaySo8INPersonCGMR);
              v21 = specialized protocol witness for Collection.subscript.read in conformance [A](v36, i, v9);
              v23 = v4;
              v24 = *v22;
              (v21)(v36, 0);
              *(v19 + 8 * i) = v24;
              v4 = v23;
            }
          }

          else
          {
            type metadata accessor for INPerson();
            swift_arrayInitWithCopy();
          }

          v2 = v35;
          v1 = v30;
          v3 = v37;
          if (v11 >= 1)
          {
            v25 = *(v31 + 16);
            v6 = __OFADD__(v25, v11);
            v26 = v25 + v11;
            if (v6)
            {
              goto LABEL_47;
            }

            *(v31 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_29;
        }
      }

      v3 = v37;
      if (v11 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return MEMORY[0x277D84F90];
}

id SEMSpanMatcher.search(_:)(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v2 = [v1 matchSpans:a1 error:v9];
  v3 = v9[0];
  if (v2)
  {
    v4 = v2;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SEMSpanMatchResult, 0x277D55D30);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v3;

    v3 = specialized Sequence.flatMap<A>(_:)(v5);
  }

  else
  {
    v7 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

id protocol witness for static SpanMatcher.indexMatcher() in conformance SEMSpanMatcher@<X0>(void *a1@<X8>)
{
  result = [swift_getObjCClassFromMetadata() indexMatcher];
  *a1 = result;
  return result;
}

void @nonobjc SEMSpanMatcher.indexLocale()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [v0 indexLocale_];
  v2 = v6[0];
  if (v1)
  {
    v3 = v1;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v2;
  }

  else
  {
    v5 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void @nonobjc SEMSpanMatcher.indexLocale(userId:)(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = MEMORY[0x223DDF550](a1);
  }

  else
  {
    v3 = 0;
  }

  v8[0] = 0;
  v4 = [v2 indexLocaleWithUserId:v3 error:v8];

  v5 = v8[0];
  if (v4)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v7 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t VocabularySearchClient.__allocating_init(spanMatcher:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized VocabularySearchClient.init(spanMatcher:)(v7, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t VocabularySearchClient.init(spanMatcher:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized VocabularySearchClient.init(spanMatcher:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

Swift::OpaquePointer_optional __swiftcall VocabularySearchClient.search(_:itemTypes:fieldTypes:)(Swift::String_optional _, Swift::OpaquePointer_optional itemTypes, Swift::OpaquePointer_optional fieldTypes)
{
  v4 = *&itemTypes.is_nil;
  rawValue = itemTypes.value._rawValue;
  object = _.value._object;
  countAndFlagsBits = _.value._countAndFlagsBits;
  v8 = type metadata accessor for PerformanceUtil.Ticket(0);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!object)
  {
    goto LABEL_8;
  }

  v11 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v11 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    Date.init()();
    v12 = &v10[v8[5]];
    *v12 = "SiriInformationSearch/VocabularySearchClient.swift";
    *(v12 + 1) = 50;
    v12[16] = 2;
    *&v10[v8[6]] = 50;
    v13 = &v10[v8[7]];
    *v13 = "search(_:itemTypes:fieldTypes:)";
    *(v13 + 1) = 31;
    v13[16] = 2;
    v14 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000023, 0x80000002234DB120);
    v15 = &v10[v8[8]];
    *v15 = v14;
    v15[1] = v16;
    MEMORY[0x28223BE20](v14);
    v24[-6] = v3;
    v24[-5] = countAndFlagsBits;
    v24[-4] = object;
    v24[-3] = rawValue;
    v24[-2] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch16VocabularyResultCGSgMd, &_sSay21SiriInformationSearch16VocabularyResultCGSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    v17 = v24[1];
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static PerformanceUtil.shared + 184))(v10, 1);
    outlined destroy of PerformanceUtil.Ticket(v10);
  }

  else
  {
LABEL_8:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.pommes);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2232BB000, v20, v21, "Empty query given to vocabulary search client", v22, 2u);
      MEMORY[0x223DE0F80](v22, -1, -1);
    }

    v17 = 0;
  }

  v23 = v17;
  result.value._rawValue = v23;
  result.is_nil = v18;
  return result;
}

void closure #1 in VocabularySearchClient.search(_:itemTypes:fieldTypes:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v110 = a6;
  v118[1] = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[8];
  v109 = a5;
  if (v16)
  {
    v108 = a1;
LABEL_3:
    v17 = v16;
    v18 = MEMORY[0x223DDF550](a2, a3);
    v106 = v17;
    v107 = [v17 queryFromText_];

    v19 = MEMORY[0x277D84F90];
    v118[0] = MEMORY[0x277D84F90];
    if (a4)
    {
      v116[0] = MEMORY[0x277D84F90];
      v20 = *(a4 + 16);
      if (v20)
      {
        v21 = (a4 + 32);
        do
        {
          v24 = *v21++;
          v25 = objc_allocWithZone(MEMORY[0x277D55D20]);
          v115[0] = 0;
          if ([v25 initWithItemType:v24 error:v115])
          {
            MEMORY[0x223DDF820](v115[0]);
            if (*((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v19 = v116[0];
          }

          else
          {
            v22 = v115[0];
            v23 = _convertNSErrorToError(_:)();

            swift_willThrow();
            v7 = 0;
          }

          --v20;
        }

        while (v20);
      }

      if (v19 >> 62)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
        v103 = _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
        v19 = v103;
        a5 = v109;
      }

      else
      {
        v26 = v19 & 0xFFFFFFFFFFFFFF8;

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
        v27 = swift_dynamicCastMetatype();
        a5 = v109;
        if (v27 || (v89 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
        {
LABEL_14:
        }

        else
        {
          v90 = v26 + 32;
          while (1)
          {
            v111 = &unk_2836AE538;
            v112 = &unk_2836B3FF8;
            if (!swift_dynamicCastObjCProtocolConditional())
            {
              break;
            }

            v90 += 8;
            if (!--v89)
            {
              goto LABEL_14;
            }
          }

          v19 = v26 | 1;
        }
      }

      specialized Array.append<A>(contentsOf:)(v19);
      v19 = MEMORY[0x277D84F90];
    }

    if (a5)
    {
      v116[0] = v19;
      v28 = *(a5 + 16);
      if (v28)
      {
        v29 = (a5 + 32);
        do
        {
          v32 = *v29++;
          v33 = objc_allocWithZone(MEMORY[0x277D55D18]);
          v115[0] = 0;
          if ([v33 initWithFieldType:v32 error:v115])
          {
            MEMORY[0x223DDF820](v115[0]);
            if (*((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v19 = v116[0];
          }

          else
          {
            v30 = v115[0];
            v31 = _convertNSErrorToError(_:)();

            swift_willThrow();
            v7 = 0;
          }

          --v28;
        }

        while (v28);
      }

      if (v19 >> 62)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
        v104 = _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
        v19 = v104;
        a5 = v109;
      }

      else
      {
        v34 = v19 & 0xFFFFFFFFFFFFFF8;

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
        v35 = swift_dynamicCastMetatype();
        a5 = v109;
        if (v35 || (v91 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
        {
LABEL_27:
        }

        else
        {
          v92 = v34 + 32;
          while (1)
          {
            v113 = &unk_2836AE538;
            v114 = &unk_2836B3FF8;
            if (!swift_dynamicCastObjCProtocolConditional())
            {
              break;
            }

            v92 += 8;
            if (!--v91)
            {
              goto LABEL_27;
            }
          }

          v19 = v34 | 1;
        }
      }

      specialized Array.append<A>(contentsOf:)(v19);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v37 = __swift_project_value_buffer(v36, static Logger.pommes);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      v116[0] = v105[0];
      *v40 = 136315650;
      swift_beginAccess();
      v105[1] = v37;
      v41 = a5;
      v42 = v118[0];

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
      v44 = MEMORY[0x223DDF850](v42, v43);
      v46 = v45;

      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v116);

      *(v40 + 4) = v47;
      *(v40 + 12) = 2080;
      v48 = MEMORY[0x277D84F90];
      if (a4)
      {
        v49 = a4;
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
      }

      v50 = MEMORY[0x223DDF850](v49, MEMORY[0x277D84C58]);
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v116);

      *(v40 + 14) = v53;
      *(v40 + 22) = 2080;
      if (v41)
      {
        v54 = v41;
      }

      else
      {
        v54 = v48;
      }

      v55 = MEMORY[0x223DDF850](v54, MEMORY[0x277D84C58]);
      v57 = v56;

      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v116);

      *(v40 + 24) = v58;
      _os_log_impl(&dword_2232BB000, v38, v39, "VocabularySearchClient filters : %s itemTypes : %s fieldTypes : %s", v40, 0x20u);
      v59 = v105[0];
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v59, -1, -1);
      MEMORY[0x223DE0F80](v40, -1, -1);
    }

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObject_So15SEMEntityFilterpMd, _sSo8NSObject_So15SEMEntityFilterpMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v61 = v107;
    [v107 setEntityFilters_];

    v62 = v108[6];
    v63 = v108[7];
    __swift_project_boxed_opaque_existential_1(v108 + 3, v62);
    v64 = (*(v63 + 16))(v61, v62, v63);
    if (!v7)
    {
      v78 = v64;
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v117 = v82;
        *v81 = 136315138;
        v83 = type metadata accessor for VocabularyResult();

        v85 = MEMORY[0x223DDF850](v84, v83);
        v87 = v86;

        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, &v117);

        *(v81 + 4) = v88;
        _os_log_impl(&dword_2232BB000, v79, v80, "VocabularySearchClient results : %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x223DE0F80](v82, -1, -1);
        MEMORY[0x223DE0F80](v81, -1, -1);
      }

      else
      {
      }

LABEL_63:
      v97 = v110;
      goto LABEL_64;
    }

    v65 = v7;
LABEL_42:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.pommes);
    v69 = v65;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v117 = v65;
      v118[0] = v73;
      *v72 = 136315138;
      v74 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v75 = String.init<A>(describing:)();
      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v118);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_2232BB000, v70, v71, "VocabularySearchClient search failed : %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x223DE0F80](v73, -1, -1);
      MEMORY[0x223DE0F80](v72, -1, -1);
    }

    else
    {
    }

    v78 = 0;
    goto LABEL_63;
  }

  v66 = a1[6];
  v67 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v66);
  (*(v67 + 24))(v66, v67);
  v65 = v6;
  if (v6)
  {
    goto LABEL_42;
  }

  v108 = a1;
  v93 = objc_allocWithZone(MEMORY[0x277D55D40]);
  v94 = @nonobjc SEMTokenizer.init(tokenizerLocale:)(v15);
  v7 = 0;
  v95 = v108;
  v96 = v108[8];
  v108[8] = v94;

  v16 = v95[8];
  if (v16)
  {
    a5 = v109;
    goto LABEL_3;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  __swift_project_value_buffer(v98, static Logger.pommes);
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.error.getter();
  v101 = os_log_type_enabled(v99, v100);
  v97 = v110;
  if (v101)
  {
    v102 = swift_slowAlloc();
    *v102 = 0;
    _os_log_impl(&dword_2232BB000, v99, v100, "VocabularySearchClient : Failed to initialize the tokenizer", v102, 2u);
    MEMORY[0x223DE0F80](v102, -1, -1);
  }

  v78 = 0;
LABEL_64:
  *v97 = v78;
}

Swift::Void __swiftcall VocabularySearchClient.resetTokenizer()()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in VocabularySearchClient.resetTokenizer();
  *(v2 + 24) = v0;
  v4[4] = _sIg_Ieg_TRTA_0;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed () -> ();
  v4[3] = &block_descriptor_2;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t VocabularySearchClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t VocabularySearchClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t closure #1 in static VocabularyResult.makeResults(from:userId:)@<X0>(id a1@<X1>, void **a2@<X0>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t *a7@<X8>)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v9 = *a2;
  v10 = [a1 sourceIdentifier];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = [v9 sourceItemIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = a1;
  [a1 itemType];
  v13 = [a3 fieldMatches];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SEMFieldMatch, 0x277D55D28);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
LABEL_30:
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = a3;
  if (v15)
  {
    v16 = 0;
    v47 = MEMORY[0x277D84F90];
    do
    {
      a3 = v16;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x223DDFF80](a3, v14);
        }

        else
        {
          if (a3 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v17 = *(v14 + 8 * a3 + 32);
        }

        v18 = v17;
        v16 = (a3 + 1);
        if (__OFADD__(a3, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v19 = [v17 entityFieldInfo];
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++a3;
        if (v16 == v15)
        {
          goto LABEL_21;
        }
      }

      v21 = [v20 fieldType];

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
      }

      v23 = *(v47 + 2);
      v22 = *(v47 + 3);
      if (v23 >= v22 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v47);
      }

      *(v47 + 2) = v23 + 1;
      *&v47[2 * v23 + 32] = v21;
    }

    while (v16 != v15);
  }

LABEL_21:

  v24 = [v46 spanInfo];
  [v24 matchScore];

  v25 = [v46 spanInfo];
  [v25 spanRange];

  v26 = [v46 spanInfo];
  v27 = [v26 spanRange];
  v29 = v28;

  if (__OFADD__(v27, v29))
  {
    __break(1u);
LABEL_32:
    __break(1u);
  }

  v30 = [v46 spanValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = swift_allocObject();
  *(v31 + 16) = MEMORY[0x277D84F90];
  v32 = swift_allocObject();
  v32[2] = partial apply for closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
  v32[3] = v31;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed CCItemField) -> ();
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CCItemField) -> ();
  aBlock[3] = &block_descriptor_13;
  v33 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v34 = [a4 recursivelyEnumerateFieldsWithError:aBlock usingBlock:v33];
  _Block_release(v33);
  v35 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_32;
  }

  if ((v34 & 1) == 0)
  {
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  swift_beginAccess();

  v38 = [v43 personaIdentifier];
  if (v38)
  {
    v39 = v38;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v40 = objc_allocWithZone(type metadata accessor for VocabularyResult());

  v41 = VocabularyResult.init(appId:itemId:itemType:fieldTypes:score:spanBegin:spanEnd:semanticValue:fields:userId:personaId:)();

  *a7 = v41;
  return result;
}

void closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:)(void *a1, uint64_t a2)
{
  switch([a1 dataType])
  {
    case 0u:
      v4 = [a1 stringValue];
      if (v4)
      {
        v5 = v4;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      goto LABEL_27;
    case 1u:
      v20 = [a1 repeatedStringValue];
      if (v20)
      {
        v21 = v20;
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = *(v22 + 16);
        if (!v23)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v22 = MEMORY[0x277D84F90];
        v23 = *(MEMORY[0x277D84F90] + 16);
        if (!v23)
        {
LABEL_37:

          return;
        }
      }

      v32 = 0;
      v33 = v22 + 40;
      while (v32 < *(v22 + 16))
      {

        [a1 fieldType];
        v34 = objc_allocWithZone(type metadata accessor for VocabularyField());
        VocabularyField.init(value:fieldType:)();
        v35 = swift_beginAccess();
        MEMORY[0x223DDF820](v35);
        if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v32;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v33 += 16;
        if (v23 == v32)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_39:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_28:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      return;
    case 2u:
      LODWORD(v36) = [a1 uint32Value];
      goto LABEL_26;
    case 3u:
      v14 = [a1 repeatedUInt32Value];
      if (!v14)
      {
        return;
      }

      v7 = v14;
      v15 = swift_allocObject();
      *(v15 + 16) = a2;
      *(v15 + 24) = a1;
      v40 = partial apply for closure #1 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v41 = v15;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt32) -> ();
      v39 = &block_descriptor_49;
      v9 = _Block_copy(&v36);

      v16 = a1;

      [v7 enumerateUInt32ValuesWithBlock_];
      goto LABEL_22;
    case 4u:
      v36 = [a1 uint64Value];
      goto LABEL_26;
    case 5u:
      v24 = [a1 repeatedUInt64Value];
      if (!v24)
      {
        return;
      }

      v7 = v24;
      v25 = swift_allocObject();
      *(v25 + 16) = a2;
      *(v25 + 24) = a1;
      v40 = partial apply for closure #2 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v41 = v25;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt64) -> ();
      v39 = &block_descriptor_43;
      v9 = _Block_copy(&v36);

      v26 = a1;

      [v7 enumerateUInt64ValuesWithBlock_];
      goto LABEL_22;
    case 6u:
      LODWORD(v36) = [a1 int32Value];
      goto LABEL_26;
    case 7u:
      v17 = [a1 repeatedInt32Value];
      if (!v17)
      {
        return;
      }

      v7 = v17;
      v18 = swift_allocObject();
      *(v18 + 16) = a2;
      *(v18 + 24) = a1;
      v40 = partial apply for closure #3 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v41 = v18;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Int32) -> ();
      v39 = &block_descriptor_37;
      v9 = _Block_copy(&v36);

      v19 = a1;

      [v7 enumerateInt32ValuesWithBlock_];
      goto LABEL_22;
    case 8u:
      v36 = [a1 int64Value];
LABEL_26:
      dispatch thunk of CustomStringConvertible.description.getter();
      goto LABEL_27;
    case 9u:
      v11 = [a1 repeatedInt64Value];
      if (!v11)
      {
        return;
      }

      v7 = v11;
      v12 = swift_allocObject();
      *(v12 + 16) = a2;
      *(v12 + 24) = a1;
      v40 = partial apply for closure #4 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v41 = v12;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Int64) -> ();
      v39 = &block_descriptor_31;
      v9 = _Block_copy(&v36);

      v13 = a1;

      [v7 enumerateInt64ValuesWithBlock_];
      goto LABEL_22;
    case 0xAu:
      [a1 floatValue];
      Float.description.getter();
      goto LABEL_27;
    case 0xBu:
      v6 = [a1 repeatedFloatValue];
      if (!v6)
      {
        return;
      }

      v7 = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = a2;
      *(v8 + 24) = a1;
      v40 = partial apply for closure #5 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v41 = v8;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Float) -> ();
      v39 = &block_descriptor_25;
      v9 = _Block_copy(&v36);

      v10 = a1;

      [v7 enumerateFloatValuesWithBlock_];
      goto LABEL_22;
    case 0xCu:
      [a1 doubleValue];
      Double.description.getter();
LABEL_27:
      [a1 fieldType];
      v30 = objc_allocWithZone(type metadata accessor for VocabularyField());
      VocabularyField.init(value:fieldType:)();
      v31 = swift_beginAccess();
      MEMORY[0x223DDF820](v31);
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

      goto LABEL_39;
    case 0xDu:
      v27 = [a1 repeatedDoubleValue];
      if (!v27)
      {
        return;
      }

      v7 = v27;
      v28 = swift_allocObject();
      *(v28 + 16) = a2;
      *(v28 + 24) = a1;
      v40 = partial apply for closure #6 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:);
      v41 = v28;
      v36 = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Double) -> ();
      v39 = &block_descriptor_19_0;
      v9 = _Block_copy(&v36);

      v29 = a1;

      [v7 enumerateDoubleValuesWithBlock_];
LABEL_22:
      _Block_release(v9);

      return;
    default:
      return;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt32) -> ()(uint64_t a1, uint64_t a2)
{
  return thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt32) -> ()(a1, a2);
}

{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t closure #1 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:)(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  dispatch thunk of CustomStringConvertible.description.getter();
  [a3 fieldType];
  v7 = objc_allocWithZone(type metadata accessor for VocabularyField());
  VocabularyField.init(value:fieldType:)();
  v8 = swift_beginAccess();
  MEMORY[0x223DDF820](v8);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  dispatch thunk of CustomStringConvertible.description.getter();
  [a3 fieldType];
  v7 = objc_allocWithZone(type metadata accessor for VocabularyField());
  VocabularyField.init(value:fieldType:)();
  v8 = swift_beginAccess();
  MEMORY[0x223DDF820](v8);
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:)(uint64_t a1, void *a2)
{
  Float.description.getter();
  [a2 fieldType];
  v4 = objc_allocWithZone(type metadata accessor for VocabularyField());
  VocabularyField.init(value:fieldType:)();
  v5 = swift_beginAccess();
  MEMORY[0x223DDF820](v5);
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Float) -> ()(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t closure #6 in closure #2 in closure #1 in static VocabularyResult.makeResults(from:userId:)(uint64_t a1, void *a2)
{
  Double.description.getter();
  [a2 fieldType];
  v4 = objc_allocWithZone(type metadata accessor for VocabularyField());
  VocabularyField.init(value:fieldType:)();
  v5 = swift_beginAccess();
  MEMORY[0x223DDF820](v5);
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Double) -> ()(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

void thunk for @escaping @callee_guaranteed (@guaranteed CCItemField) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id @nonobjc SEMTokenizer.init(tokenizerLocale:)(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v13[0] = 0;
  v5 = [v2 initWithTokenizerLocale:isa error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = type metadata accessor for Locale();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = type metadata accessor for Locale();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t specialized VocabularySearchClient.init(spanMatcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x28223BE20](v8);
  v19 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3;
  v25 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v18 = "preparedRequestsIds";
  (*(v13 + 104))(v15, *MEMORY[0x277D851C8], v12);
  static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v20 + 104))(v19, *MEMORY[0x277D85260], v21);
  *(a2 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a2 + 64) = 0;
  outlined init with take of DomainWarmupHandling(&v23, a2 + 24);
  return a2;
}

uint64_t specialized static VocabularyResult.makeResults(from:userId:)(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 entityInfo];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    if (one-time initialization token for music != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.music);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2232BB000, v15, v16, "VocabularyResult: SEM span match result did not contain Cascade entity info", v17, 2u);
      MEMORY[0x223DE0F80](v17, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = [v3 allMetaContent];
  if (!v5)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17CCItemMetaContent_So0A7MessageCXcMd, &_sSo17CCItemMetaContent_So0A7MessageCXcMR);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = [v4 content];
  v23 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223DDFF80](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v22 = v11;
      closure #1 in static VocabularyResult.makeResults(from:userId:)(v4, &v22, a1, v19, &v21);

      if (v21)
      {
        MEMORY[0x223DDF820]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v10 = v23;
      }

      ++v9;
      if (v13 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_27:

  swift_unknownObjectRelease();
  return v10;
}

void partial apply for closure #1 in VocabularySearchClient.resetTokenizer()()
{
  v1 = *(v0 + 64);
  *(v0 + 64) = 0;
}

uint64_t objectdestroy_15Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t static AmpDataProvider.make(mediaUserStateCenter:)(uint64_t a1)
{
  outlined init with copy of MediaUserStateCenter?(a1, v4, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v1 = swift_allocObject();
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v4, v1 + 16);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  return specialized AnyDataProvider.init<A>(provider:)(v1);
}

uint64_t AmpDataProvider.__allocating_init(mediaUserStateCenter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 48) = 0;
  *(v2 + 56) = v3;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v2 + 16);
  swift_endAccess();
  return v2;
}

uint64_t AmpDataProvider.init(mediaUserStateCenter:)(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 48) = 0;
  *(v1 + 56) = v3;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(a1, v1 + 16);
  swift_endAccess();
  return v1;
}

uint64_t AmpDataProvider.prepare(dispatchQueue:)()
{
  v1 = v0;
  v2 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v5, static Signposter.pommes);
  v6 = OSSignposter.begin(name:context:)("proxy.AMPSlice", 14, 2u, 0, v4);
  v7 = *(*v0 + 96);
  v7(&v57, v6);
  v8 = v58;
  v9 = outlined destroy of MediaUserStateCenter?(&v57, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  if (!v8)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v60 = v4;
      v14 = v13;
      *v13 = 0;
      _os_log_impl(&dword_2232BB000, v11, v12, "AmpDataProvider Initializing the shared media user state center ...", v13, 2u);
      v4 = v60;
      MEMORY[0x223DE0F80](v14, -1, -1);
    }

    v15 = [objc_opt_self() shared];
    v58 = type metadata accessor for ICMediaUserStateCenter();
    v59 = &protocol witness table for ICMediaUserStateCenter;
    *&v57 = v15;
    (*(*v1 + 104))(&v57);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2232BB000, v16, v17, "AmpDataProvider Initializing the shared media user state center complete", v18, 2u);
      MEMORY[0x223DE0F80](v18, -1, -1);
    }
  }

  v7(&v55, v9);
  if (!v56)
  {
    outlined destroy of MediaUserStateCenter?(&v55, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2232BB000, v32, v33, "AmpDataProvider the shared media user state center initialization failed", v34, 2u);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

    lazy protocol witness table accessor for type DataProviderError and conformance DataProviderError();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    goto LABEL_38;
  }

  outlined init with take of DomainWarmupHandling(&v55, &v57);
  if (!AFSupportsMultiUser())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.pommes);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2232BB000, v37, v38, "AmpDataProvider getting the current user state from shared media user state center ...", v39, 2u);
      MEMORY[0x223DE0F80](v39, -1, -1);
    }

    v40 = v58;
    v41 = v59;
    __swift_project_boxed_opaque_existential_1(&v57, v58);
    (v41[2])(&v53, v40, v41);
    if (v54)
    {
      outlined init with take of DomainWarmupHandling(&v53, &v55);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_2232BB000, v42, v43, "AmpDataProvider getting the current user state from shared media user state center complete", v44, 2u);
        MEMORY[0x223DE0F80](v44, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMR);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_2234CF920;
      outlined init with copy of AppDataProviding(&v55, v45 + 32);
      (*(*v1 + 128))(v45);
      __swift_destroy_boxed_opaque_existential_1(&v55);
      goto LABEL_34;
    }

    outlined destroy of MediaUserStateCenter?(&v53, &_s21SiriInformationSearch14MediaUserState_pSgMd, &_s21SiriInformationSearch14MediaUserState_pSgMR);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_2232BB000, v47, v48, "AmpDataProvider the current user state cache is not initialized", v49, 2u);
      MEMORY[0x223DE0F80](v49, -1, -1);
    }

    lazy protocol witness table accessor for type DataProviderError and conformance DataProviderError();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v57);
LABEL_38:
    v46 = v4;
    goto LABEL_39;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.pommes);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2232BB000, v20, v21, "AmpDataProvider getting the current user states from shared media user state center", v22, 2u);
    MEMORY[0x223DE0F80](v22, -1, -1);
  }

  v23 = v58;
  v24 = v59;
  __swift_project_boxed_opaque_existential_1(&v57, v58);
  v25 = (v24[3])(v23, v24);
  v26 = (*(*v1 + 128))(v25);
  v27 = *((*(*v1 + 120))(v26) + 16);

  if (!v27)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2232BB000, v28, v29, "AmpDataProvider mediaUserStates is empty under Multi-User mode", v30, 2u);
      MEMORY[0x223DE0F80](v30, -1, -1);
    }
  }

LABEL_34:
  __swift_destroy_boxed_opaque_existential_1(&v57);
  v46 = v4;
LABEL_39:
  OSSignposter.end(token:message:)(v46, 0, 0xE000000000000000);
  return outlined destroy of SignpostToken(v4, type metadata accessor for SignpostToken);
}

uint64_t AmpDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  outlined init with copy of MediaUserStateCenter?(a1, &v22 - v4, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  v6 = type metadata accessor for PommesSearchRequest(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    v7 = outlined destroy of MediaUserStateCenter?(v5, &_s21SiriInformationSearch06PommesC7RequestVSgMd, &_s21SiriInformationSearch06PommesC7RequestVSgMR);
  }

  else
  {
    v8 = v5[*(v6 + 60)];
    v7 = outlined destroy of SignpostToken(v5, type metadata accessor for PommesSearchRequest);
    if (v8 == 1)
    {
      return (*(*v1 + 120))(v7);
    }
  }

  v10 = (*(*v1 + 120))(v7);
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v10 + 32;
    while (v13 < *(v11 + 16))
    {
      outlined init with copy of AppDataProviding(v14, &v23);
      v15 = v24;
      v16 = v25;
      __swift_project_boxed_opaque_existential_1(&v23, v24);
      if ((*(v16 + 32))(v15, v16))
      {

        outlined init with take of DomainWarmupHandling(&v23, v26);
        outlined init with take of DomainWarmupHandling(v26, v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMR);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_2234CF920;
        outlined init with take of DomainWarmupHandling(v27, v21 + 32);
        return v21;
      }

      ++v13;
      __swift_destroy_boxed_opaque_existential_1(&v23);
      v14 += 40;
      if (v12 == v13)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_10:

  if (one-time initialization token for pommes != -1)
  {
LABEL_16:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.pommes);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2232BB000, v18, v19, "AmpDataProvider could not find an active user state for non-multi user request", v20, 2u);
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

  return 0;
}

uint64_t AmpDataProvider.deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);

  return v0;
}

uint64_t AmpDataProvider.__deallocating_deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:) in conformance AmpDataProvider@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 168))();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DataProviderError and conformance DataProviderError()
{
  result = lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError;
  if (!lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError;
  if (!lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataProviderError and conformance DataProviderError);
  }

  return result;
}

uint64_t dispatch thunk of AmpDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 168);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t PIMSEnablementProvider.getMusicRankingInfluenceStatus()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MediaSuggestionManager.EnablementStatus();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  type metadata accessor for MediaSuggestionManager();
  swift_allocObject();
  MediaSuggestionManager.init()();
  dispatch thunk of MediaSuggestionManager.fetchStatus()();

  (*(v3 + 16))(v6, v8, v2);
  v9 = (*(v3 + 88))(v6, v2);
  if (v9 == *MEMORY[0x277D5FDC0])
  {
    (*(v3 + 8))(v8, v2);
    v10 = MEMORY[0x277D39A10];
LABEL_7:
    v11 = *v10;
    v12 = type metadata accessor for Apple_Parsec_Siri_Context_MusicRankingInfluence();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  if (v9 == *MEMORY[0x277D5FDB0])
  {
    (*(v3 + 8))(v8, v2);
    v10 = MEMORY[0x277D39A00];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D5FDB8])
  {
    (*(v3 + 8))(v8, v2);
    v10 = MEMORY[0x277D39A08];
    goto LABEL_7;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2232BB000, v15, v16, "MediaSuggestionManager returned an unknown PIMS enablement status. Defaulting to disabled.", v17, 2u);
    MEMORY[0x223DE0F80](v17, -1, -1);
  }

  v18 = *(v3 + 8);
  v18(v8, v2);
  v19 = *MEMORY[0x277D39A10];
  v20 = type metadata accessor for Apple_Parsec_Siri_Context_MusicRankingInfluence();
  (*(*(v20 - 8) + 104))(a1, v19, v20);
  return (v18)(v6, v2);
}

uint64_t static AudioQueueStateDataProvider.make(audioQueueStateManager:)(void *a1)
{
  type metadata accessor for AudioQueueStateDataProvider();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
  swift_allocObject();
  v3 = a1;
  return specialized AnyDataProvider.init<A>(provider:)(v2);
}

uint64_t AudioQueueStateDataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t createQueueStateProfileSlice(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v71 = a2;
  v53 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Google_Protobuf_Any();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x28223BE20](v9);
  v67 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49 - v17;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v56 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v49 - v26;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v29 = *(v28 - 8);
  v55 = *(v29 + 56);
  v55(v27, 1, 1, v28);
  outlined init with copy of MediaUserStateCenter?(v70, v18, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  v30 = *(v20 + 48);
  v70 = v19;
  if (v30(v18, 1, v19) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v18, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
    return outlined init with take of Apple_Parsec_Siri_V2alpha_ProfileSlice?(v27, v71);
  }

  else
  {
    v32 = v70;
    (*(v20 + 32))(v22, v18, v70);
    v72[3] = v32;
    v72[4] = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo and conformance Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
    v34 = *(v20 + 16);
    v50 = v22;
    v34(boxed_opaque_existential_1, v22, v32);
    defaultAnyTypeURLPrefix.getter();
    v66 = v15;
    Google_Protobuf_Any.init(message:partial:typePrefix:)();
    v49 = v20;
    v35 = v66;
    v36 = v67;
    v37 = v60;
    v38 = v61;
    (*(v60 + 56))(v66, 0, 1, v61);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.init()();
    (*(v58 + 104))(v57, *MEMORY[0x277D39AC8], v59);
    Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    v39 = v54;
    outlined init with copy of MediaUserStateCenter?(v35, v54, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    v40 = *(v37 + 48);
    if (v40(v39, 1, v38) == 1)
    {
      Google_Protobuf_Any.init()();
      if (v40(v39, 1, v38) != 1)
      {
        outlined destroy of MediaUserStateCenter?(v39, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
      }
    }

    else
    {
      (*(v37 + 32))(v62, v39, v38);
    }

    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
    (*(v64 + 104))(v63, *MEMORY[0x277D39D58], v65);
    Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
    v41 = v56;
    Apple_Parsec_Siri_V2alpha_ProfileSlice.init()();
    v55(v41, 0, 1, v28);
    outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSlice?(v41, v27);
    v42 = *(v29 + 48);
    if (!v42(v27, 1, v28))
    {
      (*(v52 + 104))(v51, *MEMORY[0x277D396F0], v53);
      Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
    }

    v43 = v42(v27, 1, v28);
    v44 = v71;
    v46 = v68;
    v45 = v69;
    if (!v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR);
      v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_2234CF920;
      (*(v46 + 16))(v48 + v47, v36, v45);
      Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
    }

    (*(v46 + 8))(v36, v45);
    outlined destroy of MediaUserStateCenter?(v66, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    (*(v49 + 8))(v50, v70);
    outlined init with copy of MediaUserStateCenter?(v27, v44, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
    return outlined destroy of MediaUserStateCenter?(v27, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  }
}

uint64_t outlined init with take of Apple_Parsec_Siri_V2alpha_ProfileSlice?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo and conformance Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo and conformance Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo and conformance Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo and conformance Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);
  }

  return result;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_ProfileSlice?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of AudioQueueStateDataProvider.fetch(for:assistantData:serviceHelper:dispatchQueue:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *(*v2 + 120);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  v9[4] = *(a2 + 64);
  v10 = v3;
  v11 = v4;
  return v5(a1, v9);
}

uint64_t SportsProperty.apply(to:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{

  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 == 6)
      {
        return SportsItem.athlete.setter();
      }

      else
      {
        return SportsItem.athleteQId.setter();
      }
    }

    else if (a4 == 4)
    {
      return SportsItem.sport.setter();
    }

    else
    {
      return SportsItem.sportQId.setter();
    }
  }

  else if (a4 > 1u)
  {
    if (a4 == 2)
    {
      return SportsItem.league.setter();
    }

    else
    {
      return SportsItem.leagueQId.setter();
    }
  }

  else if (a4)
  {
    return SportsItem.teamQId.setter();
  }

  else
  {
    return SportsItem.team.setter();
  }
}

uint64_t static PersonalizationLevel.from(uso:)@<X0>(uint64_t a2@<X8>)
{
  v3 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
  if (v3)
  {
    v4 = v3;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v18 = a2;
      v7 = 0;
      a2 = v4 & 0xC000000000000001;
      while (1)
      {
        if (a2)
        {
          MEMORY[0x223DDFF80](v7, v4);
        }

        else
        {
          if (v7 >= *(v5 + 16))
          {
            goto LABEL_26;
          }
        }

        dispatch thunk of CodeGenListEntry.entry.getter();
        if (v19 && (v8 = dispatch thunk of UsoEntity_common_SportsItem.type.getter(), , v8) && (v9 = dispatch thunk of UsoEntity_common_SportsItemType.name.getter(), v11 = v10, , v11))
        {
          if (v9 == 0xD000000000000015 && v11 == 0x80000002234DB330)
          {

            goto LABEL_24;
          }

          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v12)
          {

LABEL_24:
            v19 = v7;
            return closure #2 in static PersonalizationLevel.from(uso:)(&v19, v18);
          }
        }

        else
        {
        }

        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        ++v7;
        if (v13 == i)
        {

          a2 = v18;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_29:
    v17 = type metadata accessor for PersonalizationLevel();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    v14 = type metadata accessor for PersonalizationLevel();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t closure #2 in static PersonalizationLevel.from(uso:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
  if (!result)
  {
LABEL_26:
    v13 = type metadata accessor for PersonalizationLevel();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DDFF80](v3, result);
    goto LABEL_6;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    dispatch thunk of CodeGenListEntry.entry.getter();

    if (v14)
    {
      v5 = dispatch thunk of UsoEntity_common_SportsItem.name.getter();
      v7 = v6;

      if (v7)
      {
        if (v5 == 0xD00000000000001ALL && 0x80000002234DB350 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v8 = MEMORY[0x277D560F8];
LABEL_12:
          v9 = *v8;
          v10 = type metadata accessor for PersonalizationLevel();
          v11 = *(v10 - 8);
          (*(v11 + 104))(a2, v9, v10);
          return (*(v11 + 56))(a2, 0, 1, v10);
        }

        if (v5 == 0xD00000000000001CLL && 0x80000002234DB370 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v8 = MEMORY[0x277D56108];
          goto LABEL_12;
        }

        if (v5 == 0xD00000000000001DLL && 0x80000002234DB390 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v8 = MEMORY[0x277D56110];
          goto LABEL_12;
        }

        if (v5 == 0xD00000000000001BLL && 0x80000002234DB3B0 == v7)
        {

LABEL_25:
          v8 = MEMORY[0x277D56100];
          goto LABEL_12;
        }

        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t specialized static SportsProperty.from(entity:)(uint64_t a1)
{
  if (dispatch thunk of UsoEntity_common_SportsItem.type.getter())
  {
    v1 = dispatch thunk of UsoEntity_common_SportsItemType.name.getter();
    v3 = v2;

    v4 = dispatch thunk of UsoEntity_common_SportsItem.name.getter();
    if (!v3 || !v5)
    {
      goto LABEL_10;
    }

    v6 = v4;
    if (v1 == 0x74726F7073 && v3 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x69715F74726F7073 && v3 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x65756761656CLL && v3 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x715F65756761656CLL && v3 == 0xEA00000000006469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 1835099508 && v3 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x6469715F6D616574 && v3 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x6574656C687461 && v3 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v1 == 0x5F6574656C687461 && v3 == 0xEB00000000646971)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    return v6;
  }

  dispatch thunk of UsoEntity_common_SportsItem.name.getter();
LABEL_10:

  return 0;
}

uint64_t specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMd, &_s12SiriNLUTypes0A22_Nlu_External_UsoGraphVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v39 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Typespb_Domain();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  Apple_Parsec_Siri_Context_ResultEntity.domain.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D38E10], v8);
  lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(&lazy protocol witness table cache variable for type Typespb_Domain and conformance Typespb_Domain, MEMORY[0x277D38E18], MEMORY[0x277D38E20]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v9 + 8);
  v15(v12, v8);
  v15(v14, v8);
  result = 0;
  if (v42 == v45)
  {
    Apple_Parsec_Siri_Context_ResultEntity.usoEntity.getter();
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(&lazy protocol witness table cache variable for type Siri_Nlu_External_UsoGraph and conformance Siri_Nlu_External_UsoGraph, MEMORY[0x277D5DAD8], MEMORY[0x277D5DAD0]);
    Message.init(serializedData:extensions:partial:options:)();
    v17 = v6;
    v18 = v40;
    (*(v40 + 56))(v5, 0, 1, v6);
    v19 = v39;
    (*(v18 + 32))(v39, v5, v6);
    static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v42 = v24;
      *v23 = 136315138;
      v25 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v42);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_2232BB000, v20, v21, "Got USO graph for alternative entity: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x223DE0F80](v24, -1, -1);
      MEMORY[0x223DE0F80](v23, -1, -1);
    }

    if (static UsoConversionUtils.extractFirstEntityFromGraph(graph:)())
    {

      static UsoEntity_CodeGenConverter.convert(entity:)();

      if (*(&v43 + 1))
      {
        type metadata accessor for UsoEntity_common_SportsItem();
        if (swift_dynamicCast())
        {
          (*(v18 + 8))(v19, v17);

          return v45;
        }
      }

      else
      {
        outlined destroy of MediaUserStateCenter?(&v42, &_sypSgMd, &_sypSgMR);
      }

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v42 = v34;
        *v33 = 136315138;
        v35 = UsoTask.verbString.getter();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v42);
        v41 = v17;
        v38 = v37;

        *(v33 + 4) = v38;
        _os_log_impl(&dword_2232BB000, v31, v32, "Entity was not a sports entity but was a %s. Will ignore item", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x223DE0F80](v34, -1, -1);
        MEMORY[0x223DE0F80](v33, -1, -1);

        (*(v18 + 8))(v19, v41);
        return 0;
      }
    }

    else
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2232BB000, v28, v29, "Unable to extract sports entity from USO graph", v30, 2u);
        MEMORY[0x223DE0F80](v30, -1, -1);

LABEL_3:
        (*(v18 + 8))(v19, v17);
        return 0;
      }
    }

    goto LABEL_3;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsProperty(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SportsProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t lazy protocol witness table accessor for type Typespb_Domain and conformance Typespb_Domain(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v37 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v31 = v6;
  v32 = v2;
  while (v5)
  {
LABEL_13:
    v16 = __clz(__rbit64(v5)) | (v8 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v35 = *v17;
    v19 = *(*(a1 + 56) + 8 * v16);
    v20 = *(v19 + 16);
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v21 = swift_allocObject();
      v22 = _swift_stdlib_malloc_size(v21);
      v23 = v22 - 32;
      if (v22 < 32)
      {
        v23 = v22 - 25;
      }

      v21[2] = v20;
      v21[3] = (2 * (v23 >> 3)) | 1;
      v24 = specialized Sequence._copySequenceContents(initializing:)(&v36, v21 + 4, v20, v19);
      v25 = v36;
      v33 = v24;
      swift_bridgeObjectRetain_n();

      result = outlined consume of Set<String>.Iterator._Variant(v25);
      if (v33 != v20)
      {
        goto LABEL_32;
      }

      v6 = v31;
      v2 = v32;
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v26 = *(v1 + 16);
    if (*(v1 + 24) <= v26)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26 + 1, 1);
      v1 = v37;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v9 = v1 + 64;
    v10 = -1 << *(v1 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    if (((-1 << v11) & ~*(v1 + 64 + 8 * (v11 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v10) >> 6;
      while (++v12 != v28 || (v27 & 1) == 0)
      {
        v29 = v12 == v28;
        if (v12 == v28)
        {
          v12 = 0;
        }

        v27 |= v29;
        v30 = *(v9 + 8 * v12);
        if (v30 != -1)
        {
          v13 = __clz(__rbit64(~v30)) + (v12 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_31;
    }

    v13 = __clz(__rbit64((-1 << v11) & ~*(v1 + 64 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v5 &= v5 - 1;
    *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = (*(v1 + 48) + 16 * v13);
    *v14 = v35;
    v14[1] = v18;
    *(*(v1 + 56) + 8 * v13) = v21;
    ++*(v1 + 16);
  }

  while (1)
  {
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v15 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v15);
    ++v8;
    if (v5)
    {
      v8 = v15;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}