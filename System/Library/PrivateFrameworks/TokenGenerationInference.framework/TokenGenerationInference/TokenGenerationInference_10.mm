void sub_2209DD7B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209DD7C0);
  }

  _Unwind_Resume(a1);
}

void _s24TokenGenerationInference15AppAssetManagerC10identifier14cacheDirectory09temporaryI09container22adapterWeightsFileNameACSS_10Foundation3URLVAkA0D9Container33_568BE640AB36247B38BDDCAC53FE0F70LLCSgSStcAMLlfcySDySSSiGzYuYTXEfU_(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_6;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  v10 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
LABEL_6:
    v9 = 0;
    v10 = 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a2, a3, isUniquelyReferenced_nonNull_native);
  *a1 = v17;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.device);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v15 = 136446722;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v17);
    *(v15 + 12) = 2050;
    *(v15 + 14) = v9;
    *(v15 + 22) = 2050;
    *(v15 + 24) = v10;
    _os_log_impl(&dword_220940000, v13, v14, "AppAssetManager reference count for %{public}s incremented from %{public}ld to %{public}ld", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x223D90A10](v16, -1, -1);
    MEMORY[0x223D90A10](v15, -1, -1);
  }
}

uint64_t AppAssetManager.deinit()
{
  if (one-time initialization token for assetBundlesInUse != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AppAssetManager.assetBundlesInUse);
  _s24TokenGenerationInference15AppAssetManagerCfdySDySSSiGzYuYTXEfU_(&qword_27CF6DD88, v0);
  os_unfair_lock_unlock(&static AppAssetManager.assetBundlesInUse);
  v1 = OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_cacheDirectory;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_temporaryDirectory, v2);

  return v0;
}

void _s24TokenGenerationInference15AppAssetManagerCfdySDySSSiGzYuYTXEfU_(void *a1, uint64_t a2)
{
  v69[1] = *MEMORY[0x277D85DE8];
  v63 = type metadata accessor for URL();
  v8 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v9);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (!*(*a1 + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = *(a2 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_identifier);
  v4 = *(a2 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_identifier + 8);
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v4);
  if ((v14 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v64 = v2;
  v3 = *(*(v11 + 56) + 8 * v13);
  v5 = v3 - 1;
  if (!__OFSUB__(v3, 1))
  {
    v67 = a2;
    v62 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69[0] = *a1;
    v65 = v12;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3 - 1, v12, v4, isUniquelyReferenced_nonNull_native);
    *a1 = v69[0];
    if (one-time initialization token for device == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  swift_once();
LABEL_5:
  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Log.device);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v69[0] = v21;
    *v20 = 136446722;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v4, v69);
    *(v20 + 12) = 2050;
    *(v20 + 14) = v3;
    *(v20 + 22) = 2050;
    *(v20 + 24) = v5;
    _os_log_impl(&dword_220940000, v18, v19, "AppAssetManager reference count for %{public}s decremented from %{public}ld to %{public}ld", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x223D90A10](v21, -1, -1);
    MEMORY[0x223D90A10](v20, -1, -1);
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  v24 = os_log_type_enabled(v22, v23);
  v25 = v65;
  if (v5)
  {
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v69[0] = v27;
      *v26 = 136446466;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v4, v69);
      *(v26 + 12) = 2080;
      v68 = type metadata accessor for AppAssetManager(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15AppAssetManagerCmMd, &_s24TokenGenerationInference15AppAssetManagerCmMR);
      v28 = String.init<A>(describing:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v69);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_220940000, v22, v23, "Not cleaning up temporary files for %{public}s because another %s is still using them", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v27, -1, -1);
      MEMORY[0x223D90A10](v26, -1, -1);
    }
  }

  else
  {
    v61 = v17;
    if (v24)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v69[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v4, v69);
      _os_log_impl(&dword_220940000, v22, v23, "Deleting temporary files for asset bundle identifier: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x223D90A10](v32, -1, -1);
      MEMORY[0x223D90A10](v31, -1, -1);
    }

    v65 = OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_temporaryDirectory;
    URL.appendingPathComponent(_:)();
    v33 = objc_opt_self();
    v34 = [v33 defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v36 = MEMORY[0x223D8E6B0](countAndFlagsBits);

    v37 = [v34 fileExistsAtPath_];

    isa = v62[1].isa;
    (isa)(v66, v63);
    if (v37)
    {
      v39 = [v33 defaultManager];
      URL.appendingPathComponent(_:)();
      URL._bridgeToObjectiveC()(v40);
      v42 = v41;
      (isa)(v66, v63);
      v69[0] = 0;
      v43 = [v39 removeItemAtURL:v42 error:v69];

      if (v43)
      {
        v44 = v69[0];
      }

      else
      {
        v45 = v69[0];
        v46 = _convertNSErrorToError(_:)();

        swift_willThrow();

        v47 = v46;
        v62 = Logger.logObject.getter();
        LODWORD(v61) = static os_log_type_t.error.getter();
        v64 = 0;

        v48 = v62;
        if (os_log_type_enabled(v62, v61))
        {
          v49 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v69[0] = v60;
          *v49 = 136315394;
          URL.appendingPathComponent(_:)();
          lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v50 = dispatch thunk of CustomStringConvertible.description.getter();
          v52 = v51;
          (isa)(v66, v63);
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v69);

          *(v49 + 4) = v53;
          *(v49 + 12) = 2114;
          v54 = v46;
          v55 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 14) = v55;
          v56 = v59;
          *v59 = v55;
          v57 = v62;
          _os_log_impl(&dword_220940000, v62, v61, "Failed to cleanup temporary file %s: %{public}@", v49, 0x16u);
          outlined destroy of [Int](v56, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x223D90A10](v56, -1, -1);
          v58 = v60;
          __swift_destroy_boxed_opaque_existential_1(v60);
          MEMORY[0x223D90A10](v58, -1, -1);
          MEMORY[0x223D90A10](v49, -1, -1);
        }

        else
        {
        }
      }
    }
  }
}

void sub_2209DE2F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209DE2F8);
  }

  _Unwind_Resume(a1);
}

uint64_t AppAssetManager.__deallocating_deinit()
{
  AppAssetManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for AppAssetManager(uint64_t a1)
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

uint64_t AppAssetManager.draftWeightsURL.getter@<X0>(void *a1@<X0>, void (*a2)(uint64_t *, char *, void, uint64_t, __n128)@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a2;
  v20 = a1;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0x7466617264;
  v26 = 0xE500000000000000;
  v13 = *(v5 + 104);
  v13(v8, *MEMORY[0x277CC91C0], v4);
  v14 = lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = (v3 + *v20);
  v17 = v16[1];
  v25 = *v16;
  v26 = v17;
  v13(v8, *MEMORY[0x277CC91D8], v4);

  (v24)(&v25, v8, MEMORY[0x277D837D0], v14);
  v15(v8, v4);

  return (*(v21 + 8))(v12, v22);
}

id AppAssetManager.createCacheDirectoryIfNeeded()()
{
  v18[2] = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v17 = v5;
  v11 = v10;
  v18[0] = 0x7466617264;
  v18[1] = 0xE500000000000000;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91C0], v0);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v1 + 8))(v4, v0);
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  (*(v6 + 8))(v9, v17);
  v18[0] = 0;
  LOBYTE(v0) = [v11 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v18];

  if (v0)
  {
    return v18[0];
  }

  v16 = v18[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_2209DE96C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209DE974);
  }

  _Unwind_Resume(a1);
}

id AppAssetManager.createTemporaryDirectoryIfNeeded()()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_temporaryDirectory);
  v2 = v1;
  v6[0] = 0;
  v3 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_2209DEA78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209DEA80);
  }

  _Unwind_Resume(a1);
}

uint64_t AppAssetManager.copyAssetsIfNeeded(metadata:adapterWeights:draftMIL:draftWeights:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v173 = a3;
  v174 = a4;
  LODWORD(v175) = a2;
  LODWORD(v177) = a1;
  v172 = a5;
  v182 = type metadata accessor for TokenGenerationError.Context();
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182, v7);
  v180 = v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v171 = v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v176 = v160 - v14;
  v15 = type metadata accessor for URL();
  v178 = *(v15 - 8);
  v179 = v15;
  v17 = MEMORY[0x28223BE20](v15, v16);
  v170 = v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = v160 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = v160 - v25;
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = v160 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = v160 - v33;
  v36 = MEMORY[0x28223BE20](v32, v35);
  v38 = v160 - v37;
  v40 = MEMORY[0x28223BE20](v36, v39);
  v42 = v160 - v41;
  MEMORY[0x28223BE20](v40, v43);
  v45 = v160 - v44;
  AppAssetManager.createCacheDirectoryIfNeeded()();
  if (v6)
  {
    v46 = v182;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v143 = type metadata accessor for Logger();
    __swift_project_value_buffer(v143, static Log.device);
    v144 = v6;
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      *v147 = 138412290;
      v149 = v6;
      v150 = _swift_stdlib_bridgeErrorToNSError();
      *(v147 + 4) = v150;
      *v148 = v150;
      _os_log_impl(&dword_220940000, v145, v146, "Failed to copy an adapter asset: %@", v147, 0xCu);
      outlined destroy of [Int](v148, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D90A10](v148, -1, -1);
      MEMORY[0x223D90A10](v147, -1, -1);
    }

    v151 = v6;
    v152 = v180;
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v153 = type metadata accessor for TokenGenerationError();
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    swift_allocError();
    v155 = v154;
    v156 = v181;
    (*(v181 + 16))(v154, v152, v46);
    (*(*(v153 - 8) + 104))(v155, *MEMORY[0x277D71AF0], v153);
    swift_willThrow();

    return (*(v156 + 8))(v152, v46);
  }

  else
  {
    v167 = v42;
    v164 = v26;
    v165 = v38;
    v161 = v30;
    v162 = v34;
    v163 = v22;
    v169 = v45;
    v47 = v179;
    AppAssetManager.createTemporaryDirectoryIfNeeded()();
    v48 = v5;
    v49 = OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_cacheDirectory;
    v50 = v169;
    URL.appendingPathComponent(_:)();
    v166 = objc_opt_self();
    v51 = [v166 defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v53 = MEMORY[0x223D8E6B0](countAndFlagsBits);

    v54 = [v51 fileExistsAtPath_];

    v55 = v178 + 8;
    v168 = *(v178 + 8);
    v168(v50, v47);
    if (v54)
    {
      v56 = v49;
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, static Log.device);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_220940000, v58, v59, "Adapter metadata has already been copied. Skipping.", v60, 2u);
        MEMORY[0x223D90A10](v60, -1, -1);
      }

      v49 = v56;
    }

    else
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Log.device);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.debug.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = v177;
      if (v64)
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_220940000, v62, v63, "Copying metadata.", v66, 2u);
        MEMORY[0x223D90A10](v66, -1, -1);
      }

      v67 = v167;
      URL.appendingPathComponent(_:)();
      specialized AppAssetManager.copyContents(of:to:)(v65, v67);
      v168(v67, v179);
    }

    v69 = *(v48 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_adapterWeightsFileName);
    v68 = *(v48 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_adapterWeightsFileName + 8);
    v160[1] = v49;
    v167 = v68;
    URL.appendingPathComponent(_:)();
    v70 = [v166 defaultManager];
    v71 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v72 = MEMORY[0x223D8E6B0](v71);

    v73 = [v70 fileExistsAtPath_];

    v168(v50, v179);
    if (v73)
    {
      v175 = v69;
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, static Log.device);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_220940000, v75, v76, "Adapter weights have already been copied. Skipping.", v77, 2u);
        v78 = v77;
        v50 = v169;
        MEMORY[0x223D90A10](v78, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v79 = type metadata accessor for Logger();
      __swift_project_value_buffer(v79, static Log.device);
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_220940000, v80, v81, "Copying adapter weights.", v82, 2u);
        MEMORY[0x223D90A10](v82, -1, -1);
      }

      v83 = v165;
      URL.appendingPathComponent(_:)();
      specialized AppAssetManager.copyContents(of:to:)(v175, v83);
      v175 = v69;
      v168(v83, v179);
    }

    AppAssetManager.draftWeightsURL.getter(v50);
    v84 = [v166 defaultManager];
    v85 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v86 = v50;
    v87 = MEMORY[0x223D8E6B0](v85);

    v88 = [v84 fileExistsAtPath_];

    v182 = v55;
    v89 = v168;
    v168(v86, v179);
    v90 = v89;
    v177 = v48;
    if (v88)
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      __swift_project_value_buffer(v91, static Log.device);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.debug.getter();
      v94 = os_log_type_enabled(v92, v93);
      v95 = v169;
      v96 = v179;
      if (v94)
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_220940000, v92, v93, "Draft weights have already been copied. Skipping.", v97, 2u);
        MEMORY[0x223D90A10](v97, -1, -1);
      }
    }

    else
    {
      v98 = v174;
      if ((v174 & 0x100000000) != 0)
      {
        v95 = v169;
        v96 = v179;
      }

      else
      {
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        __swift_project_value_buffer(v99, static Log.device);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.debug.getter();
        v102 = os_log_type_enabled(v100, v101);
        v96 = v179;
        if (v102)
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&dword_220940000, v100, v101, "Copying draft weights.", v103, 2u);
          MEMORY[0x223D90A10](v103, -1, -1);
        }

        v104 = v162;
        AppAssetManager.draftWeightsURL.getter(v162);
        specialized AppAssetManager.copyContents(of:to:)(v98, v104);
        v95 = v169;
        v90(v104, v96);
      }
    }

    AppAssetManager.draftMILURL.getter(v95);
    v105 = [v166 defaultManager];
    v106 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v107 = MEMORY[0x223D8E6B0](v106);

    v108 = [v105 fileExistsAtPath_];

    v90(v95, v96);
    if (v108)
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      __swift_project_value_buffer(v109, static Log.device);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&dword_220940000, v110, v111, "Draft MIL has already been copied. Skipping.", v112, 2u);
        MEMORY[0x223D90A10](v112, -1, -1);
      }
    }

    else
    {
      v113 = v173;
      if ((v173 & 0x100000000) == 0)
      {
        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v114 = type metadata accessor for Logger();
        __swift_project_value_buffer(v114, static Log.device);
        v115 = Logger.logObject.getter();
        v116 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_220940000, v115, v116, "Copying draft MIL.", v117, 2u);
          MEMORY[0x223D90A10](v117, -1, -1);
        }

        v118 = v161;
        AppAssetManager.draftMILURL.getter(v161);
        specialized AppAssetManager.copyContents(of:to:)(v113, v118);
        v90(v118, v96);
      }
    }

    v119 = v169;
    URL.appendingPathComponent(_:)();
    v120 = [v166 defaultManager];
    v121 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v122 = MEMORY[0x223D8E6B0](v121);

    v123 = [v120 fileExistsAtPath_];

    v90(v119, v96);
    if (v123)
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v124 = type metadata accessor for Logger();
      __swift_project_value_buffer(v124, static Log.device);
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_220940000, v125, v126, "Adapter weights have already been cloned. Skipping.", v127, 2u);
        MEMORY[0x223D90A10](v127, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v128 = type metadata accessor for Logger();
      __swift_project_value_buffer(v128, static Log.device);
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        *v131 = 0;
        _os_log_impl(&dword_220940000, v129, v130, "Cloning adapter weights.", v131, 2u);
        MEMORY[0x223D90A10](v131, -1, -1);
      }

      v132 = v164;
      URL.appendingPathComponent(_:)();
      v133 = v163;
      URL.appendingPathComponent(_:)();
      specialized AppAssetManager.cloneFile(from:to:)();
      v90 = v168;
      v168(v133, v96);
      v90(v132, v96);
    }

    v134 = *(v178 + 56);
    v178 += 56;
    v134(v176, 1, 1, v96);
    v135 = v169;
    AppAssetManager.draftMILURL.getter(v169);
    v136 = [v166 defaultManager];
    v137 = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v138 = MEMORY[0x223D8E6B0](v137);

    v139 = [v136 fileExistsAtPath_];

    v90(v135, v96);
    if (!v139)
    {
      return outlined init with take of URL?(v176, v172);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v140 = v170;
    AppAssetManager.draftMILURL.getter(v170);
    specialized DraftModelCompiler.pathToCompiledDraftModel(mil:)();
    v142 = v171;
    v158 = v141;
    v90(v140, v96);
    if (v158)
    {
      URL.init(fileURLWithPath:)();

      v159 = v176;
      outlined destroy of [Int](v176, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v134(v142, 0, 1, v96);
      outlined init with take of URL?(v142, v159);
      return outlined init with take of URL?(v159, v172);
    }

    else
    {
      return outlined init with take of URL?(v176, v172);
    }
  }
}

NSObject *DraftModelCompiler.findCompiledDraftPathOrBeginCompilation(mil:identifier:appAssetManager:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v5;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.device);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v28 = v5;
    v26 = a4;
    v14 = swift_slowAlloc();
    v15 = a1;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v14 = 136446210;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, &v27);
    _os_log_impl(&dword_220940000, v12, v13, "Compiling draft model if needed for asset: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = v16;
    a1 = v15;
    MEMORY[0x223D90A10](v17, -1, -1);
    v18 = v14;
    a4 = v26;
    v6 = v28;
    MEMORY[0x223D90A10](v18, -1, -1);
  }

  os_unfair_lock_lock((v4 + 16));
  if (specialized Set.contains(_:)(a2, a3, *(v4 + 24)))
  {
    os_unfair_lock_unlock((v4 + 16));
    v12 = 0;
  }

  else
  {
    v22 = specialized DraftModelCompiler.pathToCompiledDraftModel(mil:)();
    if (v6)
    {
      os_unfair_lock_unlock((v4 + 16));
      return v12;
    }

    if (!v23)
    {

      specialized Set._Variant.insert(_:)(&v27, a2, a3);

      os_unfair_lock_unlock((v4 + 16));
      return DraftModelCompiler.startDraftModelCompilation(mil:identifier:appAssetManager:)(a1, a2, a3, a4);
    }

    v12 = v22;
    v25 = v23;
    os_unfair_lock_unlock((v4 + 16));
    if (v25 != 1)
    {
      return v12;
    }
  }

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_220940000, v19, v20, "Draft model already in the process of compiling. Skipping.", v21, 2u);
    MEMORY[0x223D90A10](v21, -1, -1);

    outlined consume of StartState #1 in DraftModelCompiler.findCompiledDraftPathOrBeginCompilation(mil:identifier:appAssetManager:)(v12, 1uLL);
  }

  else
  {
  }

  return 0;
}

uint64_t closure #1 in AppAssetManager.copyContents(of:to:)(uint64_t a1)
{
  v1 = FileDescriptor._seek(offset:from:)();
  if (v2)
  {
    v3 = v1;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v5 = v3;
  }

  else
  {
    URL.path(percentEncoded:)(1);
    String.utf8CString.getter();

    v6 = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
    v7 = v6;
    if ((v6 & 0x100000000) != 0)
    {
      lazy protocol witness table accessor for type Errno and conformance Errno();
      swift_willThrowTypedImpl();
      swift_allocError();
      *v10 = v7;
    }

    else
    {

      MEMORY[0x28223BE20](v8, v9);
      return FileDescriptor.closeAfter<A>(_:)();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in AppAssetManager.copyContents(of:to:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v5[0] = 0x100000000000;
  v5[1] = __DataStorage.init(length:)();
  specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(v5, a1, a2);
}

uint64_t AppAssetGarbageCollector.Manifest.Entry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for Date();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMd, &_ss22KeyedDecodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMR);
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = v19;
    v16 = v21;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v10, v7);
    (*(v15 + 32))(v14, v22, v4);
    outlined init with take of AppAssetGarbageCollector(v14, v16, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AppAssetGarbageCollector.Manifest.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVGMd, &_sSDySS24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVGMR);
  lazy protocol witness table accessor for type [String : AppAssetGarbageCollector.Manifest.Entry] and conformance <> [A : B]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656363417473616CLL && a2 == 0xEC00000064657373)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AppAssetGarbageCollector.Manifest.Entry(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppAssetGarbageCollector.Manifest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppAssetGarbageCollector.Manifest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppAssetGarbageCollector.Manifest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance AppAssetGarbageCollector.Manifest@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized AppAssetGarbageCollector.Manifest.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AppAssetGarbageCollector.removeEntry(url:)(uint64_t a1)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for JSONEncoder.OutputFormatting();
  v3 = *(v2 - 1);
  v45[2] = v2;
  v45[3] = v3;
  MEMORY[0x28223BE20](v2, v4);
  v47 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVSgMd, &_s24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v46 = v45 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.device);
  v15 = *(v10 + 16);
  v49 = a1;
  v15(v13, a1, v9);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v50[0] = v19;
    v45[0] = v18;
    *v18 = 136315138;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v10 + 8))(v13, v9);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v50);

    *(v18 + 4) = v23;
    v24 = v45[0];
    _os_log_impl(&dword_220940000, v16, v17, "AppAssetGarbageCollector: remove %s", v45[0], 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x223D90A10](v19, -1, -1);
    MEMORY[0x223D90A10](v24, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v25 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v26);
  v28 = v27;
  v50[0] = 0;
  v29 = [v25 removeItemAtURL:v27 error:v50];

  if (v29)
  {
    v30 = v50[0];
    v31 = URL.lastPathComponent.getter();
    v33 = v32;
    v34 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
    v35 = v46;
    (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
    v36 = *(type metadata accessor for AppAssetGarbageCollector(0) + 24);
    specialized Dictionary.subscript.setter(v35, v31, v33);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd, &_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMR);
    v37 = swift_allocObject();
    v37[1] = xmmword_220AE8A30;
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    v50[0] = v37;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
    lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    v50[0] = *(v48 + v36);
    lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest();

    v38 = v45[1];
    v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (v38)
    {
    }

    else
    {
      v43 = v39;
      v44 = v40;

      Data.write(to:options:)();
      outlined consume of Data._Representation(v43, v44);
    }
  }

  else
  {
    v42 = v50[0];
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

void sub_2209E1160(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209E1168);
  }

  _Unwind_Resume(a1);
}

void one-time initialization function for shared()
{
  type metadata accessor for DraftModelCompiler();
  v0 = swift_allocObject();
  TokenMask.subscript.read();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x277D84FA0];
  static DraftModelCompiler.shared = v0;
}

uint64_t DraftModelCompiler.startDraftModelCompilation(mil:identifier:appAssetManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v42 = a2;
  v50[1] = *MEMORY[0x277D85DE8];
  v48 = type metadata accessor for Date();
  v5 = *(v48 - 8);
  v7 = MEMORY[0x28223BE20](v48, v6);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v38 - v14;
  v49 = specialized DraftModelCompiler.draftModelConfiguration(mil:)();
  v46 = v15;
  Date.init()();
  v16 = objc_opt_self();
  v50[0] = 0;
  v17 = [v16 compiledModelWithConfiguration:v49 bundleCachePath:0 error:v50];
  v18 = v50[0];
  if (v17)
  {
    v19 = v17;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    v22 = v18;

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.device);
    (*(v5 + 16))(v12, v46, v48);

    v24 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v40))
    {
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v50[0] = v39;
      *v25 = 134349314;
      Date.init()();
      Date.timeIntervalSince(_:)();
      v27 = v26;
      v28 = *(v5 + 8);
      v29 = v21;
      v30 = v4;
      v31 = v48;
      v28(v41, v48);
      v32 = v31;
      v4 = v30;
      v28(v12, v32);
      *(v25 + 4) = v27;
      *(v25 + 12) = 2082;
      *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, v50);
      _os_log_impl(&dword_220940000, v24, v40, "Successfully compiled draft model in %{public}f seconds, to %{public}s", v25, 0x16u);
      v33 = v39;
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x223D90A10](v33, -1, -1);
      MEMORY[0x223D90A10](v25, -1, -1);

      v28(v46, v48);
    }

    else
    {

      v35 = *(v5 + 8);
      v36 = v48;
      v35(v12, v48);
      v35(v46, v36);
    }

    $defer #1 () in DraftModelCompiler.startDraftModelCompilation(mil:identifier:appAssetManager:)(v43, v42, v44);
  }

  else
  {
    v34 = v50[0];
    v47 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v5 + 8))(v46, v48);
    $defer #1 () in DraftModelCompiler.startDraftModelCompilation(mil:identifier:appAssetManager:)(v43, v42, v44);
  }

  return v4;
}

void sub_2209E15E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void $defer #1 () in DraftModelCompiler.startDraftModelCompilation(mil:identifier:appAssetManager:)(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 4);
  specialized Set._Variant.remove(_:)(a2, a3);

  os_unfair_lock_unlock(a1 + 4);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.device);
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_220940000, oslog, v7, "Released draft model compilation resources.", v8, 2u);
    MEMORY[0x223D90A10](v8, -1, -1);
  }
}

uint64_t DraftModelCompiler.__deallocating_deinit()
{
  outlined destroy of [Int](v0 + 24, &_sShySSGMd, &_sShySSGMR);

  return swift_deallocClassInstance();
}

os_log_t *AppContainer.init(auditToken:)(char *a1)
{
  v2 = v1;
  v107 = *MEMORY[0x277D85DE8];
  v96 = *v1;
  v4 = type metadata accessor for AuditToken();
  v97 = *(v4 - 8);
  v98 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v84 - v10;
  v12 = type metadata accessor for URL();
  v95 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v84 - v22;
  if (!container_query_create())
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Log.device);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_220940000, v48, v49, "Failed to create container query", v50, 2u);
      MEMORY[0x223D90A10](v50, -1, -1);
    }

    goto LABEL_21;
  }

  v24 = AuditToken.auditToken.getter();
  v99 = 1;
  v100 = v24;
  v101 = v25;
  v102 = v26;
  v103 = v27;
  v104 = v28;
  v105 = v29;
  v106 = v30;
  v31 = container_client_create_from_audit_token();
  if (!v31)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Log.device);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134217984;
      swift_beginAccess();
      *(v54 + 4) = v99;
      _os_log_impl(&dword_220940000, v52, v53, "Failed to create container client with error: %llu", v54, 0xCu);
      MEMORY[0x223D90A10](v54, -1, -1);
    }

    container_query_free();
LABEL_21:
    (*(v97 + 8))(a1, v98);
LABEL_50:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v93 = v31;
  container_query_operation_set_client();
  container_query_set_class();
  container_query_operation_set_flags();
  container_query_set_persona_unique_string();
  single_result = container_query_get_single_result();
  v94 = a1;
  if (!single_result)
  {
    container_query_get_last_error();
    v55 = container_error_copy_unlocalized_description();
    if (v55)
    {
      v92 = String.init(cString:)();
      v57 = v56;
      MEMORY[0x223D90A10](v55, -1, -1);
    }

    else
    {
      v57 = 0x8000000220AFC4D0;
      v92 = 0xD000000000000014;
    }

    v66 = v94;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Log.device);
    (*(v97 + 16))(v7, v66, v98);

    v95 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    v69 = v95;
    if (os_log_type_enabled(v95, v68))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v100 = v71;
      *v70 = 67240450;
      v72 = AuditToken.processIdentifier.getter();
      v73 = *(v97 + 8);
      v73(v7, v98);
      *(v70 + 4) = v72;
      *(v70 + 8) = 2082;
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v57, &v100);

      *(v70 + 10) = v74;
      v69 = v95;
      _os_log_impl(&dword_220940000, v95, v68, "Failed to lookup app container for pid: %{public}d(error: %{public}s).", v70, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x223D90A10](v71, -1, -1);
      MEMORY[0x223D90A10](v70, -1, -1);
    }

    else
    {
      v73 = *(v97 + 8);
      v73(v7, v98);
    }

    container_free_client();
    container_query_free();
    v73(v94, v98);
    goto LABEL_50;
  }

  if (!container_get_path())
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    __swift_project_value_buffer(v58, static Log.device);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_220940000, v59, v60, "No error reported during container lookup, but path is null. This should never happen.", v61, 2u);
      MEMORY[0x223D90A10](v61, -1, -1);
    }

    goto LABEL_28;
  }

  v33 = String.init(cString:)();
  v35 = v34;
  v36 = container_copy_sandbox_token();
  if (!v36)
  {

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Log.device);
    v59 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_220940000, v59, v64, "Failed to copy sandbox token for app container", v65, 2u);
      MEMORY[0x223D90A10](v65, -1, -1);
    }

LABEL_28:

    container_free_client();
    container_query_free();
    v62 = v94;
LABEL_49:
    (*(v97 + 8))(v62, v98);
    goto LABEL_50;
  }

  v37 = sandbox_extension_consume();
  if (v37 < 0)
  {
    v75 = v36;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static Log.device);

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v100 = v80;
      *v79 = 136446210;
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v100);

      *(v79 + 4) = v81;
      _os_log_impl(&dword_220940000, v77, v78, "Failed to get sandbox extension for path: %{public}s)", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x223D90A10](v80, -1, -1);
      MEMORY[0x223D90A10](v79, -1, -1);
    }

    else
    {
    }

    free(v75);
    container_free_client();
    container_query_free();
    v62 = v94;
    goto LABEL_49;
  }

  v90 = v37;
  v91 = v36;
  (v95[7].isa)(v11, 1, 1, v12);
  String.utf8CString.getter();

  URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
  outlined destroy of [Int](v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Log.device);
  isa = v95[2].isa;
  (isa)(v20, v23, v12);
  v96 = Logger.logObject.getter();
  LODWORD(v92) = static os_log_type_t.debug.getter();
  v39 = v96;
  if (os_log_type_enabled(v96, v92))
  {
    v40 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v100 = v85;
    v86 = v40;
    *v40 = 136315138;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v87 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v88 = v95[1].isa;
    (v88)(v20, v12);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v42, &v100);

    *(v40 + 4) = v43;
    v44 = v96;
    v45 = v86;
    _os_log_impl(&dword_220940000, v96, v92, "Successfully accessed app container at %s", v86, 0xCu);
    v46 = v85;
    __swift_destroy_boxed_opaque_existential_1(v85);
    MEMORY[0x223D90A10](v46, -1, -1);
    MEMORY[0x223D90A10](v45, -1, -1);
  }

  else
  {

    v88 = v95[1].isa;
    (v88)(v20, v12);
  }

  (isa)(v2 + OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_rootURL, v23, v12);
  URL.appendingPathComponent(_:)();
  (v88)(v23, v12);
  (v95[4].isa)(v2 + OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_systemDataDirectory, v16, v12);
  v82 = v91;
  *(v2 + OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_extensionHandle) = v90;
  free(v82);
  container_free_client();
  container_query_free();
  (*(v97 + 8))(v94, v98);
  return v2;
}

void sub_2209E2490(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209E2498);
  }

  _Unwind_Resume(a1);
}

uint64_t AppContainer.deinit()
{
  v1 = v0;
  v2 = sandbox_extension_release();
  if (v2)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.device);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 1) = v2;
      v7 = "Failed to release sandbox handle with code: %d";
      v8 = v5;
      v9 = v4;
      v10 = v6;
      v11 = 8;
LABEL_10:
      _os_log_impl(&dword_220940000, v9, v8, v7, v10, v11);
      MEMORY[0x223D90A10](v6, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.device);
    v4 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v13))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Successfully released sandbox extension";
      v8 = v13;
      v9 = v4;
      v10 = v6;
      v11 = 2;
      goto LABEL_10;
    }
  }

  v14 = OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_rootURL;
  v15 = type metadata accessor for URL();
  v16 = *(*(v15 - 8) + 8);
  v16(v1 + v14, v15);
  v16(v1 + OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_systemDataDirectory, v15);
  return v1;
}

uint64_t AppContainer.__deallocating_deinit()
{
  AppContainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for AppContainer(uint64_t a1)
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

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, uint64_t a2, uint64_t a3)
{
  Data.InlineSlice.ensureUniqueReference()();
  v5 = *a1;
  if (a1[1] < v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!__DataStorage._bytes.getter())
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (__OFSUB__(v5, __DataStorage._offset.getter()))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  MEMORY[0x223D8BBA0]();
  while (1)
  {
    v6 = FileDescriptor._read(into:retryOnInterrupt:)();
    if (v3)
    {
      break;
    }

    if ((v7 & 1) == 0)
    {
      if (!v6)
      {
        break;
      }

      LODWORD(v6) = FileDescriptor._write(_:retryOnInterrupt:)();
      if ((v8 & 1) == 0)
      {
        continue;
      }
    }

    v9 = v6;
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v10 = v9;
    break;
  }
}

void specialized AppAssetManager.__allocating_init(identifier:auditToken:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v140 = a2;
  v138 = a1;
  v120 = type metadata accessor for JSONEncoder.OutputFormatting();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v4);
  v119 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v117 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v116 = &v109 - v11;
  v130 = type metadata accessor for Date();
  v122 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v12);
  v129 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for AppAssetGarbageCollector(0);
  v15 = MEMORY[0x28223BE20](v135, v14);
  v128 = (&v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v17);
  v121 = &v109 - v18;
  v126 = type metadata accessor for URL.DirectoryHint();
  v133 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v19);
  v125 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v124 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v123 = &v109 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v127 = &v109 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v139 = &v109 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v109 - v37;
  v40 = MEMORY[0x28223BE20](v36, v39);
  v42 = &v109 - v41;
  MEMORY[0x28223BE20](v40, v43);
  v45 = &v109 - v44;
  v46 = type metadata accessor for AuditToken();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v48);
  v50 = &v109 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 16))(v50, a3, v46);
  type metadata accessor for AppContainer(0);
  swift_allocObject();
  v51 = AppContainer.init(auditToken:)(v50);
  if (v51)
  {
    v109 = v47;
    v110 = v46;
    v111 = a3;
    v134 = v45;
    URL.init(fileURLWithPath:)();
    v52 = OBJC_IVAR____TtC24TokenGenerationInferenceP33_568BE640AB36247B38BDDCAC53FE0F7012AppContainer_systemDataDirectory;
    v53 = v138;
    v141 = v138;
    v142 = v140;
    v115 = *MEMORY[0x277CC91C0];
    v136 = v21;
    v137 = v38;
    v54 = v133;
    v114 = *(v133 + 104);
    v56 = v125;
    v55 = v126;
    v114(v125);
    v113 = lazy protocol witness table accessor for type String and conformance String();
    v132 = v42;
    URL.appending<A>(path:directoryHint:)();
    v112 = *(v54 + 8);
    v112(v56, v55);
    v133 = v22;
    v57 = *(v22 + 16);
    v131 = v51;
    v57(v137, v51 + v52, v136);
    v141 = 795897204;
    v142 = 0xE400000000000000;
    MEMORY[0x223D8E780](v53, v140);
    (v114)(v56, v115, v55);
    v58 = v136;
    URL.appending<A>(path:directoryHint:)();
    v112(v56, v55);
    v59 = v58;

    v60 = v127;
    v57(v127, v137, v58);
    v61 = v128;
    *(v128 + *(v135 + 28)) = 0x4132750000000000;
    v125 = v57;
    v126 = v22 + 16;
    v57(v61, v60, v58);
    URL.appendingPathComponent(_:)();
    v62 = [objc_opt_self() defaultManager];
    v63 = URL.path.getter();
    v64 = MEMORY[0x223D8E6B0](v63);

    v65 = [v62 fileExistsAtPath_];

    v66 = v140;
    if (v65)
    {
      v82 = Data.init(contentsOf:options:)();
      v84 = v83;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      outlined consume of Data._Representation(v82, v84);
      v107 = v141;
      v108 = v138;
      v66 = v140;
    }

    else
    {
      v107 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v108 = v138;
    }

    v67 = v129;
    v128 = *(v133 + 8);
    v128(v60, v59);
    v68 = v135;
    *(v61 + *(v135 + 24)) = v107;
    v69 = v121;
    outlined init with take of AppAssetGarbageCollector(v61, v121, type metadata accessor for AppAssetGarbageCollector);
    static Date.now.getter();
    v70 = v116;
    (*(v122 + 16))(v116, v67, v130);
    v71 = *(v68 + 24);
    v72 = v70;
    v73 = v117;
    outlined init with take of AppAssetGarbageCollector(v72, v117, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = *(v69 + v71);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, v108, v66, isUniquelyReferenced_nonNull_native);
    v75 = v141;
    *(v69 + v71) = v141;
    type metadata accessor for JSONEncoder();
    swift_allocObject();

    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd, &_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMR);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_220AE8A30;
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    v141 = v76;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
    lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    v141 = v75;
    lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest();
    v77 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v79 = v78;
    v80 = v130;

    Data.write(to:options:)();
    (*(v122 + 8))(v129, v80);
    outlined consume of Data._Representation(v77, v79);

    AppAssetGarbageCollector.cleanUp()();
    if (v106)
    {
      outlined destroy of AppAssetGarbageCollector(v69, type metadata accessor for AppAssetGarbageCollector);
      v81 = v136;
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v85 = type metadata accessor for Logger();
      __swift_project_value_buffer(v85, static Log.device);
      v86 = v106;
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();

      v89 = v66;
      if (os_log_type_enabled(v87, v88))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *v90 = 138412290;
        v92 = v106;
        v93 = _swift_stdlib_bridgeErrorToNSError();
        *(v90 + 4) = v93;
        *v91 = v93;
        _os_log_impl(&dword_220940000, v87, v88, "AppAssetManager: garbage collection failed: %@", v90, 0xCu);
        outlined destroy of [Int](v91, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223D90A10](v91, -1, -1);
        MEMORY[0x223D90A10](v90, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v89 = v66;
      outlined destroy of AppAssetGarbageCollector(v69, type metadata accessor for AppAssetGarbageCollector);
      v81 = v136;
    }

    v94 = v131;
    v95 = v123;
    v96 = v125;
    (v125)(v123, v132, v81);
    v97 = v124;
    v96(v124, v139, v81);
    type metadata accessor for AppAssetManager(0);
    v98 = swift_allocObject();
    v99 = (v98 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_identifier);
    v100 = v138;
    *v99 = v138;
    v99[1] = v89;
    *(v98 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_container) = v94;
    v96((v98 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_cacheDirectory), v95, v81);
    v96((v98 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_temporaryDirectory), v97, v81);
    v101 = v98 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_adapterWeightsFileName;
    strcpy((v98 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_adapterWeightsFileName), "lora.part.bin");
    *(v101 + 14) = -4864;
    v102 = (v98 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_draftMILFileName);
    *v102 = 0x696D2E7466617264;
    v102[1] = 0xE90000000000006CLL;
    v103 = (v98 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_draftWeightsFileName);
    *v103 = 0xD000000000000011;
    v103[1] = 0x8000000220AFC4B0;
    v104 = one-time initialization token for assetBundlesInUse;
    swift_retain_n();

    if (v104 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&static AppAssetManager.assetBundlesInUse);
    _s24TokenGenerationInference15AppAssetManagerC10identifier14cacheDirectory09temporaryI09container22adapterWeightsFileNameACSS_10Foundation3URLVAkA0D9Container33_568BE640AB36247B38BDDCAC53FE0F70LLCSgSStcAMLlfcySDySSSiGzYuYTXEfU_(&qword_27CF6DD88, v100, v89);

    os_unfair_lock_unlock(&static AppAssetManager.assetBundlesInUse);

    (*(v109 + 8))(v111, v110);
    v105 = v128;
    v128(v97, v81);
    v105(v95, v81);
    v105(v139, v81);
    v105(v137, v81);
    v105(v132, v81);
    v105(v134, v81);
  }

  else
  {
    (*(v47 + 8))(a3, v46);
  }
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

uint64_t outlined init with take of AppAssetGarbageCollector(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A];
  if (!lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest()
{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest and conformance AppAssetGarbageCollector.Manifest);
  }

  return result;
}

uint64_t outlined init with copy of AppAssetGarbageCollector.Manifest.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AppAssetGarbageCollector(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized AppAssetManager.copyContents(of:to:)(int a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.device);
  (*(v6 + 16))(v9, a2, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a2;
    v14 = v13;
    v25 = swift_slowAlloc();
    v28 = v25;
    *v14 = 67240450;
    *(v14 + 4) = a1;
    *(v14 + 8) = 2082;
    lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v2;
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v28);

    *(v14 + 10) = v18;
    _os_log_impl(&dword_220940000, v11, v12, "Copying file descriptor %{public}d to %{public}s", v14, 0x12u);
    v19 = v25;
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x223D90A10](v19, -1, -1);
    v20 = v14;
    a2 = v26;
    MEMORY[0x223D90A10](v20, -1, -1);
  }

  else
  {

    v21 = (*(v6 + 8))(v9, v5);
  }

  MEMORY[0x28223BE20](v21, v22);
  *(&v24 - 4) = a1;
  *(&v24 - 1) = a2;
  return FileDescriptor.closeAfter<A>(_:)();
}

id specialized AppAssetManager.cloneFile(from:to:)()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v10[0] = 0;
  v7 = [v0 copyItemAtURL:v3 toURL:v5 error:v10];

  if (v7)
  {
    return v10[0];
  }

  v9 = v10[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_2209E40C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209E40D0);
  }

  _Unwind_Resume(a1);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id specialized DraftModelCompiler.draftModelConfiguration(mil:)()
{
  v0 = URL.path(percentEncoded:)(1);
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo17TGIE5FunctionObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo29TGIE5AdapterConfigurationObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }
  }

  v1 = objc_allocWithZone(TGIE5ModelConfigurationObjC);
  v2 = MEMORY[0x223D8E6B0](v0._countAndFlagsBits, v0._object);

  type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC, off_27844EEC0);
  lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5FunctionObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5FunctionObjC, off_27844EEC0);
  isa = Set._bridgeToObjectiveC()().super.isa;

  type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC, off_27844EEB0);
  lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC, off_27844EEB0);
  v4 = Set._bridgeToObjectiveC()().super.isa;

  v5 = [v1 initWithModelType:1 modelBundlePath:v2 e5Functions:isa adapterConfigurations:v4];

  return v5;
}

id specialized DraftModelCompiler.pathToCompiledDraftModel(mil:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = specialized DraftModelCompiler.draftModelConfiguration(mil:)();
  v1 = objc_opt_self();
  if ([v1 doesModelRequireCompilationWithConfiguration_])
  {

    return 0;
  }

  else
  {
    v8[0] = 0;
    v3 = [v1 compiledModelWithConfiguration:v0 bundleCachePath:0 error:v8];
    v4 = v8[0];
    if (v3)
    {
      v5 = v3;
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v4;
    }

    else
    {
      v2 = v8[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v2;
}

void sub_2209E4434(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209E443CLL);
  }

  _Unwind_Resume(a1);
}

unint64_t lazy protocol witness table accessor for type Errno and conformance Errno()
{
  result = lazy protocol witness table cache variable for type Errno and conformance Errno;
  if (!lazy protocol witness table cache variable for type Errno and conformance Errno)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errno and conformance Errno);
  }

  return result;
}

uint64_t outlined consume of StartState #1 in DraftModelCompiler.findCompiledDraftPathOrBeginCompilation(mil:identifier:appAssetManager:)(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t type metadata completion function for AppAssetGarbageCollector(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for AppAssetGarbageCollector.Manifest.Entry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags()
{
  result = lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags;
  if (!lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags;
  if (!lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FoundationModelsFeatureFlags and conformance FoundationModelsFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys);
  }

  return result;
}

void *specialized AppAssetGarbageCollector.Manifest.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMd, &_ss22KeyedDecodingContainerVy24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV10CodingKeys33_568BE640AB36247B38BDDCAC53FE0F70LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.CodingKeys and conformance AppAssetGarbageCollector.Manifest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVGMd, &_sSDySS24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVGMR);
    lazy protocol witness table accessor for type [String : AppAssetGarbageCollector.Manifest.Entry] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

unint64_t lazy protocol witness table accessor for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppAssetGarbageCollector.Manifest.Entry.CodingKeys and conformance AppAssetGarbageCollector.Manifest.Entry.CodingKeys);
  }

  return result;
}

uint64_t DataStreamStateManager.startPromptProcessingInstrumenter(uuid:onBehalfOfUserIdentifier:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v34 = a1;
  v4 = type metadata accessor for Logger();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation28PromptProcessingInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation28PromptProcessingInstrumenterVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DataStreamState(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v30 - v23;
  result = swift_beginAccess();
  v26 = *(v2 + 112);
  if (*(v26 + 16))
  {

    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
    if (v28)
    {
      outlined init with copy of DataStreamState(*(v26 + 56) + *(v17 + 72) * v27, v21);

      outlined init with take of DataStreamState(v21, v24);
      (*(v12 + 16))(v15, v34, v11);
      (*(v30 + 16))(v32, v3 + OBJC_IVAR____TtC24TokenGenerationInference22DataStreamStateManager_logger, v31);

      PromptProcessingInstrumenter.init(signpostLogger:requestIdentifier:onBehalfOfUserIdentifier:eventReporter:)();
      v29 = type metadata accessor for PromptProcessingInstrumenter();
      (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v10, v15);
      swift_endAccess();
      return outlined destroy of DataStreamState(v24);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.endPromptProcessingInstrumenter(uuid:state:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v57 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation28PromptProcessingInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation28PromptProcessingInstrumenterVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v56 = v47 - v6;
  v7 = type metadata accessor for UUID();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v55 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Instrumenter();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v50 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v47 - v19;
  v21 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
  v48 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PromptProcessingInstrumenter();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = v47 - v32;
  result = swift_beginAccess();
  v35 = *(v2 + 144);
  if (*(v35 + 16))
  {

    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v57);
    if (v37)
    {
      v38 = *(v35 + 56) + *(v26 + 72) * v36;
      v47[0] = *(v26 + 16);
      v47[1] = v26 + 16;
      (v47[0])(v30, v38, v25);

      (*(v26 + 32))(v33, v30, v25);
      v39 = v49;
      PromptProcessingInstrumenter.inputTokensCount.setter();
      v40 = type metadata accessor for DataStreamState(0);
      outlined init with copy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(v39 + *(v40 + 52), v20);
      v41 = v48;
      if ((*(v48 + 48))(v20, 1, v21) == 1)
      {
        outlined destroy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(v20);
      }

      else
      {
        (*(v41 + 32))(v24, v20, v21);
        (*(v41 + 16))(v17, v24, v21);
        (*(v41 + 56))(v17, 0, 1, v21);
        PromptProcessingInstrumenter.errorType.setter();
        (*(v41 + 8))(v24, v21);
      }

      __swift_project_boxed_opaque_existential_1((v3 + 192), *(v3 + 216));
      v42 = v50;
      (v47[0])(v50, v33, v25);
      v44 = v51;
      v43 = v52;
      (*(v51 + 104))(v42, *MEMORY[0x277D0DEC0], v52);
      dispatch thunk of InstrumenterFinalizerProtocol.end(instrumenter:)();
      (*(v44 + 8))(v42, v43);
      v45 = v55;
      (*(v53 + 16))(v55, v57, v54);
      v46 = v56;
      (*(v26 + 56))(v56, 1, 1, v25);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v46, v45);
      swift_endAccess();
      return (*(v26 + 8))(v33, v25);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.startFirstTokenInferenceInstrumenter(uuid:onBehalfOfUserIdentifier:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v34 = a1;
  v4 = type metadata accessor for Logger();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation31FirstTokenInferenceInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation31FirstTokenInferenceInstrumenterVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DataStreamState(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v30 - v23;
  result = swift_beginAccess();
  v26 = *(v2 + 112);
  if (*(v26 + 16))
  {

    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
    if (v28)
    {
      outlined init with copy of DataStreamState(*(v26 + 56) + *(v17 + 72) * v27, v21);

      outlined init with take of DataStreamState(v21, v24);
      (*(v12 + 16))(v15, v34, v11);
      (*(v30 + 16))(v32, v3 + OBJC_IVAR____TtC24TokenGenerationInference22DataStreamStateManager_logger, v31);

      FirstTokenInferenceInstrumenter.init(signpostLogger:requestIdentifier:onBehalfOfUserIdentifier:eventReporter:)();
      TokenInferenceInstrumenter = type metadata accessor for FirstTokenInferenceInstrumenter();
      (*(*(TokenInferenceInstrumenter - 8) + 56))(v10, 0, 1, TokenInferenceInstrumenter);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v10, v15);
      swift_endAccess();
      return outlined destroy of DataStreamState(v24);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.endFirstTokenInferenceInstrumenter(uuid:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation31FirstTokenInferenceInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation31FirstTokenInferenceInstrumenterVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v34 - v6;
  v8 = type metadata accessor for UUID();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v40 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Instrumenter();
  v37 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TokenInferenceInstrumenter = type metadata accessor for FirstTokenInferenceInstrumenter();
  v16 = *(TokenInferenceInstrumenter - 8);
  v18 = MEMORY[0x28223BE20](TokenInferenceInstrumenter, v17);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v34 - v22;
  result = swift_beginAccess();
  v25 = v1[15];
  if (*(v25 + 16))
  {

    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v27)
    {
      v28 = *(v25 + 56) + *(v16 + 72) * v26;
      v35 = a1;
      v36 = v7;
      v29 = *(v16 + 16);
      v29(v20, v28, TokenInferenceInstrumenter);

      (*(v16 + 32))(v23, v20, TokenInferenceInstrumenter);
      v30 = v2[27];
      v34[1] = v2[28];
      __swift_project_boxed_opaque_existential_1(v2 + 24, v30);
      v29(v14, v23, TokenInferenceInstrumenter);
      v31 = v37;
      (*(v37 + 104))(v14, *MEMORY[0x277D0DEC8], v11);
      dispatch thunk of InstrumenterFinalizerProtocol.end(instrumenter:)();
      (*(v31 + 8))(v14, v11);
      v32 = v40;
      (*(v38 + 16))(v40, v35, v39);
      v33 = v36;
      (*(v16 + 56))(v36, 1, 1, TokenInferenceInstrumenter);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v33, v32);
      swift_endAccess();
      return (*(v16 + 8))(v23, TokenInferenceInstrumenter);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.startExtendInferenceInstrumenter(uuid:onBehalfOfUserIdentifier:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v34 = a1;
  v4 = type metadata accessor for Logger();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation27ExtendInferenceInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation27ExtendInferenceInstrumenterVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DataStreamState(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v30 - v23;
  result = swift_beginAccess();
  v26 = *(v2 + 112);
  if (*(v26 + 16))
  {

    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
    if (v28)
    {
      outlined init with copy of DataStreamState(*(v26 + 56) + *(v17 + 72) * v27, v21);

      outlined init with take of DataStreamState(v21, v24);
      (*(v12 + 16))(v15, v34, v11);
      (*(v30 + 16))(v32, v3 + OBJC_IVAR____TtC24TokenGenerationInference22DataStreamStateManager_logger, v31);

      ExtendInferenceInstrumenter.init(signpostLogger:requestIdentifier:onBehalfOfUserIdentifier:eventReporter:)();
      v29 = type metadata accessor for ExtendInferenceInstrumenter();
      (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v10, v15);
      swift_endAccess();
      return outlined destroy of DataStreamState(v24);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.endExtendInferenceInstrumented(uuid:state:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation27ExtendInferenceInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation27ExtendInferenceInstrumenterVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for UUID();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Instrumenter();
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ExtendInferenceInstrumenter();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v35 - v23;
  result = swift_beginAccess();
  v26 = v2[17];
  if (*(v26 + 16))
  {

    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v28)
    {
      v29 = *(v26 + 56) + *(v17 + 72) * v27;
      v36 = a1;
      v37 = v8;
      v30 = *(v17 + 16);
      v30(v21, v29, v16);

      (*(v17 + 32))(v24, v21, v16);
      ExtendInferenceInstrumenter.outputTokensCount.setter();
      v31 = v3[27];
      v39 = v3[28];
      __swift_project_boxed_opaque_existential_1(v3 + 24, v31);
      v30(v15, v24, v16);
      v32 = v38;
      (*(v38 + 104))(v15, *MEMORY[0x277D0DEB8], v12);
      dispatch thunk of InstrumenterFinalizerProtocol.end(instrumenter:)();
      (*(v32 + 8))(v15, v12);
      v33 = v42;
      (*(v40 + 16))(v42, v36, v41);
      v34 = v37;
      (*(v17 + 56))(v37, 1, 1, v16);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v34, v33);
      swift_endAccess();
      return (*(v17 + 8))(v24, v16);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.startCompletePromptInstrumenter(uuid:onBehalfOfUserIdentifier:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v33 = a2;
  v34 = a1;
  v4 = type metadata accessor for Logger();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation33CompletePromptRequestInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation33CompletePromptRequestInstrumenterVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DataStreamState(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v30 - v23;
  result = swift_beginAccess();
  v26 = *(v2 + 112);
  if (*(v26 + 16))
  {

    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v34);
    if (v28)
    {
      outlined init with copy of DataStreamState(*(v26 + 56) + *(v17 + 72) * v27, v21);

      outlined init with take of DataStreamState(v21, v24);
      (*(v12 + 16))(v15, v34, v11);
      (*(v30 + 16))(v32, v3 + OBJC_IVAR____TtC24TokenGenerationInference22DataStreamStateManager_logger, v31);

      CompletePromptRequestInstrumenter.init(signpostLogger:requestIdentifier:oneshot:onBehalfOfUserIdentifier:eventReporter:)();
      v29 = type metadata accessor for CompletePromptRequestInstrumenter();
      (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v10, v15);
      swift_endAccess();
      return outlined destroy of DataStreamState(v24);
    }

    else
    {
    }
  }

  return result;
}

uint64_t DataStreamStateManager.endCompletePromptInstrumenter(uuid:state:)(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation33CompletePromptRequestInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation33CompletePromptRequestInstrumenterVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v65 = v56 - v6;
  v7 = type metadata accessor for UUID();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v63 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Instrumenter();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v58 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v56 - v19;
  v21 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CompletePromptRequestInstrumenter();
  v66 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26, v27);
  v30 = v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = v56 - v32;
  result = swift_beginAccess();
  v64 = v2;
  v35 = *(v2 + 128);
  if (*(v35 + 16))
  {

    v57 = a1;
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v37)
    {
      v38 = v66;
      v39 = *(v35 + 56) + *(v66 + 72) * v36;
      v56[0] = *(v66 + 16);
      v56[1] = v66 + 16;
      (v56[0])(v30, v39, v26);

      (*(v38 + 32))(v33, v30, v26);
      v40 = type metadata accessor for DataStreamState(0);
      outlined init with copy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(v67 + *(v40 + 52), v20);
      if ((*(v22 + 48))(v20, 1, v21) == 1)
      {
        outlined destroy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(v20);
      }

      else
      {
        (*(v22 + 32))(v25, v20, v21);
        (*(v22 + 16))(v17, v25, v21);
        (*(v22 + 56))(v17, 0, 1, v21);
        CompletePromptRequestInstrumenter.errorType.setter();
        (*(v22 + 8))(v25, v21);
      }

      v41 = v67 + *(v40 + 60);
      v42 = *(v41 + 104);
      v43 = v57;
      if (v42 == 2)
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v69 = 0;
        v70 = 0;
      }

      else
      {
        v46 = lazy protocol witness table accessor for type SpeculativeDecoderPerformanceMeasurement and conformance SpeculativeDecoderPerformanceMeasurement();
        v44 = swift_allocObject();
        v47 = *(v41 + 80);
        *(v44 + 80) = *(v41 + 64);
        *(v44 + 96) = v47;
        *(v44 + 112) = *(v41 + 96);
        v48 = *(v41 + 16);
        *(v44 + 16) = *v41;
        *(v44 + 32) = v48;
        v49 = *(v41 + 48);
        *(v44 + 48) = *(v41 + 32);
        *(v44 + 64) = v49;
        *(v44 + 120) = v42;
        v45 = &type metadata for SpeculativeDecoderPerformanceMeasurement;
      }

      v68 = v44;
      v71 = v45;
      v72 = v46;
      CompletePromptRequestInstrumenter.speculativeDecoderStats.setter();
      CompletePromptRequestInstrumenter.outputTokensCount.setter();
      CompletePromptRequestInstrumenter.inputTokensCount.setter();
      CompletePromptRequestInstrumenter.prefixKVCacheTokensMatchCount.setter();
      CompletePromptRequestInstrumenter.promptModulesKVCacheTokensMatchCount.setter();
      __swift_project_boxed_opaque_existential_1((v64 + 192), *(v64 + 216));
      v50 = v58;
      (v56[0])(v58, v33, v26);
      v52 = v59;
      v51 = v60;
      (*(v59 + 104))(v50, *MEMORY[0x277D0DED0], v60);
      dispatch thunk of InstrumenterFinalizerProtocol.end(instrumenter:)();
      (*(v52 + 8))(v50, v51);
      v53 = v63;
      (*(v61 + 16))(v63, v43, v62);
      v55 = v65;
      v54 = v66;
      (*(v66 + 56))(v65, 1, 1, v26);
      swift_beginAccess();
      specialized Dictionary.subscript.setter(v55, v53);
      swift_endAccess();
      return (*(v54 + 8))(v33, v26);
    }

    else
    {
    }
  }

  return result;
}

uint64_t specialized closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](specialized closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:), 0, 0);
}

uint64_t specialized closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:)()
{
  EventReporter.warmup()();
  if (v1)
  {
  }

  **(v0 + 16) = v1 != 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t DataStreamStateManager.removeState(uuid:state:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15DataStreamStateVSgMd, &_s24TokenGenerationInference15DataStreamStateVSgMR);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](DataStreamStateManager.removeState(uuid:state:), v2, 0);
}

uint64_t DataStreamStateManager.removeState(uuid:state:)()
{
  v1 = v0[10];
  v2 = v0[8];
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;

  specialized Sequence.contains(where:)(partial apply for closure #1 in DataStreamStateManager.removeState(uuid:state:), v4, v3);
  LOBYTE(v2) = v5;

  if (v2)
  {
    v6 = v0[9];
    v7 = type metadata accessor for DataStreamState(0);
    if (*(v6 + *(v7 + 60) + 104) != 2)
    {
      SpeculativeDecoderPerformanceMeasurement.printToOSLogForLLMWheel()();
      v6 = v0[9];
    }

    v8 = v0[14];
    v9 = v0[11];
    v10 = v0[10];
    (*(v0[13] + 16))(v8, v0[8], v0[12]);
    (*(*(v7 - 8) + 56))(v9, 1, 1, v7);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v9, v8);
    swift_endAccess();
    v11 = __swift_project_boxed_opaque_existential_1((v10 + 152), *(v10 + 176));
    v0[15] = v11;
    v0[16] = *v6;
    v12 = *v11;

    return MEMORY[0x2822009F8](DataStreamStateManager.removeState(uuid:state:), v12, 0);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

{
  rawValue = v0[10]._rawValue;
  OnDeviceInferenceAssetRepository.releaseAssetObjects(assetObjects:)(v0[16]);

  return MEMORY[0x2822009F8](DataStreamStateManager.removeState(uuid:state:), rawValue, 0);
}

{
  v1 = v0[9];
  v2 = v0[8];
  DataStreamStateManager.endFirstTokenInferenceInstrumenter(uuid:)(v2);
  DataStreamStateManager.endExtendInferenceInstrumented(uuid:state:)(v2, v1);
  DataStreamStateManager.endCompletePromptInstrumenter(uuid:state:)(v2, v1);

  v3 = v0[1];

  return v3();
}

char *DataStreamStateManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  v1 = OBJC_IVAR____TtC24TokenGenerationInference22DataStreamStateManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DataStreamStateManager.__deallocating_deinit()
{
  DataStreamStateManager.deinit();

  return MEMORY[0x282200960](v0);
}

void type metadata completion function for DataStreamState(uint64_t a1)
{
  type metadata accessor for [OnDeviceInferenceAssetObject](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Token](319, &lazy cache variable for type metadata for [Token], MEMORY[0x277D71DA0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Token](319, &lazy cache variable for type metadata for [ToolCallParser.FunctionDelta], MEMORY[0x277D71E38], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for StopSequenceMonitor();
        if (v4 <= 0x3F)
        {
          type metadata accessor for ToolCallParser();
          if (v5 <= 0x3F)
          {
            type metadata accessor for [Token](319, &lazy cache variable for type metadata for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?, MEMORY[0x277D20BD8], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for SpeculativeDecoderPerformanceMeasurement?, &type metadata for SpeculativeDecoderPerformanceMeasurement);
              if (v7 <= 0x3F)
              {
                type metadata accessor for [Token](319, &lazy cache variable for type metadata for FinishReason?, MEMORY[0x277D71B70], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for Int?, MEMORY[0x277D83B88]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for EventReporter();
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for [Token](319, &lazy cache variable for type metadata for Prompt.Rendering?, MEMORY[0x277D71DD8], MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [OnDeviceInferenceAssetObject](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [OnDeviceInferenceAssetObject])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [OnDeviceInferenceAssetObject]);
    }
  }
}

void type metadata accessor for [Token](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SpeculativeDecoderPerformanceMeasurement and conformance SpeculativeDecoderPerformanceMeasurement()
{
  result = lazy protocol witness table cache variable for type SpeculativeDecoderPerformanceMeasurement and conformance SpeculativeDecoderPerformanceMeasurement;
  if (!lazy protocol witness table cache variable for type SpeculativeDecoderPerformanceMeasurement and conformance SpeculativeDecoderPerformanceMeasurement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeculativeDecoderPerformanceMeasurement and conformance SpeculativeDecoderPerformanceMeasurement);
  }

  return result;
}

uint64_t DraftingBehavior.updated(with:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v30 = *(v1 + 24);
  v31 = *v1;
  v4 = *(v1 + 32);
  v29 = *(v1 + 36);
  v32 = *(v1 + 41);
  v33 = *(v1 + 8);
  v24 = *(v1 + 42);
  v25 = *(v1 + 40);
  v23 = *(v1 + 44);
  v26 = *(v1 + 48);
  v36 = *(v1 + 49);
  v34 = *(v1 + 64);
  v35 = *(v1 + 56);
  v5 = *(v1 + 72);
  v28 = SpeculationParameters.draftSteps.getter();
  v27 = v6;
  v7 = SpeculationParameters.treeFactor.getter();
  if ((v8 & 1) == 0)
  {
    v3 = v7;
  }

  v22 = SpeculationParameters.secondaryTreeFactor.getter();
  v10 = v9;
  matched = SpeculationParameters.softMatchTolerance.getter();
  v12 = SpeculationParameters.earlyReturn.getter();
  v13 = SpeculationParameters.earlyReturnProbabilityThreshold.getter();
  result = SpeculationParameters.useMaximumLikelihoodTree.getter();
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    if (result == 2)
    {
      v15 = v5;
    }

    else
    {
      v15 = result;
    }

    v16 = v23;
    if ((v13 & 0x100000000) == 0)
    {
      v16 = v13;
    }

    v17 = v24;
    if (v12 != 2)
    {
      v17 = v12;
    }

    v18 = ((matched & 0x100000000uLL) >> 32) & *&v25;
    v19 = v29;
    if ((matched & 0x100000000) == 0)
    {
      v19 = matched;
    }

    v20 = v30;
    if ((v10 & 1) == 0)
    {
      v20 = v22;
    }

    v21 = v31;
    result = v28;
    if ((v27 & 1) == 0)
    {
      v21 = v28;
    }

    *a1 = v21;
    *(a1 + 8) = v33;
    *(a1 + 16) = v3;
    *(a1 + 24) = v20;
    *(a1 + 32) = v10 & v4 & 1;
    *(a1 + 36) = v19;
    *(a1 + 40) = v18 & 1;
    *(a1 + 41) = v32 & v18;
    *(a1 + 42) = v17 & 1;
    *(a1 + 44) = v16;
    *(a1 + 48) = BYTE4(v13) & 1 & v26;
    *(a1 + 49) = v36;
    *(a1 + 56) = v35;
    *(a1 + 64) = v34;
    *(a1 + 72) = v15 & 1;
  }

  return result;
}

uint64_t ImageTokenizer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t OnDeviceAttachmentTokenizer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(imageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for AttachmentTokenizer.tokenize(imageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer, 0, 0);
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(imageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = EncodedImageArray.appendAndTokenize(image:configuration:);
  v4 = v0[3];

  return EncodedImageArray.appendAndTokenize(configuration:_:)(v4, &async function pointer to partial apply for closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:), v2);
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer, 0, 0);
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:);
  v4 = v0[3];

  return EncodedImageArray.appendAndTokenize(configuration:_:)(v4, &async function pointer to partial apply for closure #1 in EncodedImageArray.appendAndTokenize(imageSurface:configuration:), v2);
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(preprocessedImageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for AttachmentTokenizer.tokenize(preprocessedImageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer, 0, 0);
}

uint64_t protocol witness for AttachmentTokenizer.tokenize(preprocessedImageAttachment:configuration:) in conformance OnDeviceAttachmentTokenizer()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = EncodedImageArray.appendAndTokenize(image:configuration:);
  v4 = v0[3];

  return EncodedImageArray.appendAndTokenize(configuration:_:)(v4, &async function pointer to partial apply for closure #1 in EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:), v2);
}

uint64_t partial apply for closure #1 in EncodedImageArray.appendAndTokenize(imageSurface:configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:);

  return closure #1 in EncodedImageArray.appendAndTokenize(imageSurface:configuration:)(a1, v4);
}

uint64_t specialized OnDeviceAttachmentTokenizer.__allocating_init(imageTokenIDGenerator:useHighQualityImageTokenization:imageTokenizer:)(uint64_t a1, char a2, uint64_t a3)
{
  type metadata accessor for OnDeviceAttachmentTokenizer();
  v6 = swift_allocObject();
  type metadata accessor for EncodedImageArray();
  if (a3)
  {
    swift_allocObject();
    v7 = specialized EncodedImageArray.init(imageTokenIDGenerator:imageTokenizer:useHighQualityImageTokenization:)(a1, a3, a2 & 1);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 152) = MEMORY[0x277D84F90];
    *(v7 + 16) = a1;
    *(v7 + 24) = xmmword_220AEB790;
    *(v7 + 40) = xmmword_220AEB7A0;
    *(v7 + 56) = xmmword_220AEB7B0;
    *(v7 + 72) = 10000000;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0;
  }

  *(v6 + 16) = v7;
  return v6;
}

__n128 OnDeviceImagePreprocessor.__allocating_init(imageTokenizerConfiguration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  result = *(a1 + 32);
  *(v2 + 48) = result;
  *(v2 + 64) = v3;
  return result;
}

uint64_t OnDeviceImagePreprocessor.init(imageTokenizerConfiguration:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  return v1;
}

void OnDeviceImagePreprocessor.processCGImage(_:newImageDimension:)(CGImage *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v10 = Width;
  v11 = Height;
  v12 = a2;
  if (Width > Height)
  {
    v13 = Width;
  }

  else
  {
    v13 = Height;
  }

  if (v13 == v12)
  {
    v12 = Height;
  }

  else if (v10 >= v11)
  {
    v14 = v11 / v10 * v12;
    v10 = a2;
    v12 = round(v14);
  }

  else
  {
    v10 = round(v10 / v11 * v12);
  }

  if (v10 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_36;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v15 = v10;
  v16 = v12;
  v17 = v10 * v12;
  if ((v10 * v12) >> 64 != v17 >> 63)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v17 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v18 = 4 * v17;
  if (4 * v17 < 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v18)
  {
    v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v19 + 16) = v18;
    bzero((v19 + 32), v18);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if ((v15 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_42;
  }

  v54 = DeviceRGB;
  v21 = CGBitmapContextCreate((v19 + 32), v15, v16, v4[2], 4 * v15, DeviceRGB, 0x2006u);
  v22 = v21;
  if (v21)
  {
    CGContextSetInterpolationQuality(v21, kCGInterpolationLow);
    CGContextSetBlendMode(v22, kCGBlendModeCopy);
    v55 = a2;
    v56.size.width = v15;
    v56.size.height = v16;
    v56.origin.x = 0.0;
    v56.origin.y = 0.0;
    CGContextRef.draw(_:in:byTiling:)(a1, v56, 0);
    if ((*(v19 + 16) & 3) != 0)
    {
      goto LABEL_47;
    }

    v31 = v4[3];
    if (v31)
    {
      v32 = v4[2];
      v33 = v4[4];
      v34 = v4[5];
      v35 = v4[6];
      v36 = v4[7];
      v37 = v4[8];
      if (v55 == 0x8000000000000000 && v31 == -1)
      {
        __break(1u);
      }

      else
      {
        v38 = v55 / v31;
        if (!(v55 % v31))
        {
          if ((v38 * v38) >> 64 == (v38 * v38) >> 63)
          {
            v50 = v33;
            v51 = v35;
            v39 = v34;
            v52 = v36;
            v53 = v37;
            v49 = v32;
            specialized static CLIPImagePlanarizer.computedPaddingValue(pixelData:)(v19, v23, v24, v25, v26, v27, v28, v29, v30);
            v41 = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
            v42 = swift_allocObject();
            *(v42 + 16) = xmmword_220AEC420;
            *(v42 + 32) = 1;
            *(v42 + 40) = v39;
            *(v42 + 48) = v31;
            *(v42 + 56) = v31;

            *a3 = v15;
            *(a3 + 8) = v16;
            *(a3 + 16) = v19;
            *(a3 + 24) = 4;
            *(a3 + 32) = v41;
            *(a3 + 40) = v55;
            *(a3 + 48) = v42;
            *(a3 + 56) = v49;
            *(a3 + 64) = v31;
            *(a3 + 72) = v50;
            *(a3 + 80) = v39;
            *(a3 + 88) = v51;
            *(a3 + 96) = v52;
            *(a3 + 104) = v53;
            *(a3 + 112) = v38 * v38;
            *(a3 + 120) = v38;
            return;
          }

          goto LABEL_44;
        }
      }

LABEL_47:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (one-time initialization token for device != -1)
  {
LABEL_45:
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, static Log.device);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_220940000, v44, v45, "Failed to create CGContext for image to get the pixel data", v46, 2u);
    MEMORY[0x223D90A10](v46, -1, -1);
  }

  v47 = type metadata accessor for GenerationError();
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, MEMORY[0x277D71E28], MEMORY[0x277D71E30]);
  swift_allocError();
  (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D71E18], v47);
  swift_willThrow();
}

uint64_t OnDeviceImagePreprocessor.processSurfaceFastPath(surface:useHighQualityImageTokenization:)(void *a1, char a2)
{
  if (a2)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.device);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_26;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_220940000, v5, v6, "Cannot use fast path for high quality image tokenization", v7, 2u);
    v8 = v7;
LABEL_25:
    MEMORY[0x223D90A10](v8, -1, -1);
LABEL_26:

    return 0;
  }

  v10 = v2[3];
  v11 = [a1 width];
  v12 = [a1 height];
  v13 = v12;
  if (v11 != v10 && v12 != v10)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.device);
    v5 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v5, v17))
    {
      goto LABEL_26;
    }

    v18 = swift_slowAlloc();
    *v18 = 134218496;
    *(v18 + 4) = v11;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v13;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v10;
    v19 = "Cannot use fast path for image %ldx%ld, neither dimension is %ld";
    goto LABEL_24;
  }

  if (v10 < v11 || v10 < v12)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Log.device);
    v5 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v5, v17))
    {
      goto LABEL_26;
    }

    v18 = swift_slowAlloc();
    *v18 = 134218496;
    *(v18 + 4) = v11;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v13;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v10;
    v19 = "Cannot use fast path for image %ldx%ld, max dimension is %ld";
LABEL_24:
    _os_log_impl(&dword_220940000, v5, v17, v19, v18, 0x20u);
    v8 = v18;
    goto LABEL_25;
  }

  v22 = [a1 pixelFormat];
  if (v22 != 1111970369)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Log.device);
    v36 = a1;
    v5 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = [v36 pixelFormat];

      v39 = "Cannot use fast path for pixel format %u";
      v40 = v37;
      v41 = v5;
      v42 = v38;
      v43 = 8;
LABEL_45:
      _os_log_impl(&dword_220940000, v41, v40, v39, v42, v43);
      v8 = v38;
      goto LABEL_25;
    }

LABEL_46:

    return 0;
  }

  v23 = [a1 bytesPerRow];
  if ((v11 - 0x2000000000000000) >> 62 == 3)
  {
    v24 = 4 * v11;
    if (v23 == (4 * v11))
    {
      v3 = v2;
      if (one-time initialization token for device == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_56;
    }

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Log.device);
    v36 = a1;
    v5 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v45))
    {
      v38 = swift_slowAlloc();
      *v38 = 134218240;
      *(v38 + 4) = [v36 bytesPerRow];

      *(v38 + 12) = 2048;
      *(v38 + 14) = v24;
      v39 = "Cannot use fast path for unpacked surface %ld != %ld";
      v40 = v45;
      v41 = v5;
      v42 = v38;
      v43 = 22;
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  __break(1u);
LABEL_56:
  swift_once();
LABEL_32:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.device);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    *(v28 + 4) = v11;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v13;
    _os_log_impl(&dword_220940000, v26, v27, "Using image tokenizer IOSurface fast path for %ldx%ld surface", v28, 0x16u);
    MEMORY[0x223D90A10](v28, -1, -1);
  }

  v29 = [a1 bytesPerRow];
  v30 = v13 * v29;
  if ((v13 * v29) >> 64 != (v13 * v29) >> 63)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  [a1 lockWithOptions:1 seed:0];
  v31 = a1;
  v32 = [v31 baseAddress];
  v33 = v31;
  if (v30)
  {
    v34 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v30, 0);
    memcpy(v34 + 4, v32, v30);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  [v31 unlockWithOptions:1 seed:0];
  if ((v34[2] & 3) != 0)
  {
    goto LABEL_61;
  }

  v54 = v3[3];
  if (!v54)
  {
    goto LABEL_58;
  }

  v55 = v3[2];
  v56 = v3[4];
  v57 = v3[5];
  v58 = v3[6];
  v59 = v3[7];
  v60 = v3[8];
  if (v10 == 0x8000000000000000 && v54 == -1)
  {
    goto LABEL_60;
  }

  v61 = v10 / v54;
  if (!(v10 % v54))
  {
    v65 = v60;
    v66 = v55;
    v67 = v59;
    v68 = v58;
    v69 = v56;
    if ((v61 * v61) >> 64 == (v61 * v61) >> 63)
    {
      specialized static CLIPImagePlanarizer.computedPaddingValue(pixelData:)(v34, v46, v47, v48, v49, v50, v51, v52, v53);
      v63 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_220AEC420;
      *(v64 + 32) = 1;
      *(v64 + 40) = v57;
      *(v64 + 48) = v54;
      *(v64 + 56) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference14ProcessedImageVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference14ProcessedImageVGMR);
      result = swift_allocObject();
      *(result + 16) = xmmword_220AE8A30;
      *(result + 32) = v11;
      *(result + 40) = v13;
      *(result + 48) = v34;
      *(result + 56) = 4;
      *(result + 64) = v63;
      *(result + 72) = v10;
      *(result + 80) = v64;
      *(result + 88) = v66;
      *(result + 96) = v54;
      *(result + 104) = v69;
      *(result + 112) = v57;
      *(result + 120) = v68;
      *(result + 128) = v67;
      *(result + 136) = v65;
      *(result + 144) = v61 * v61;
      *(result + 152) = v61;
      return result;
    }

    goto LABEL_59;
  }

LABEL_61:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__n128 OnDeviceImagePreprocessor.processCGImage(_:useHighQualityImageTokenization:)(CGImage *a1, char a2)
{
  v6 = *(v2 + 24);
  OnDeviceImagePreprocessor.processCGImage(_:newImageDimension:)(a1, v6, v34);
  if (!v3)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[128 * v10];
    v12 = v38;
    *(v11 + 96) = v37;
    *(v11 + 112) = v12;
    v13 = v40;
    *(v11 + 128) = v39;
    *(v11 + 144) = v13;
    v14 = v34[1];
    *(v11 + 32) = v34[0];
    *(v11 + 48) = v14;
    result.n128_u64[0] = v35;
    v15 = v36;
    *(v11 + 64) = v35;
    *(v11 + 80) = v15;
    if (a2)
    {
      v16 = *(v2 + 32);
      if (v16 < 1)
      {
LABEL_9:

        if (one-time initialization token for device != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Log.device);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 134218240;
          *(v20 + 4) = v16;
          *(v20 + 12) = 2048;
          *(v20 + 14) = v6;
          _os_log_impl(&dword_220940000, v18, v19, "High quality image dimension %ld must be greater than 0 and a multiple of input image dimension %ld", v20, 0x16u);
          MEMORY[0x223D90A10](v20, -1, -1);
        }

        v21 = type metadata accessor for GenerationError();
        lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, MEMORY[0x277D71E28], MEMORY[0x277D71E30]);
        swift_allocError();
        (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D71E18], v21);
        swift_willThrow();
        return result;
      }

      if (v6)
      {
        if (v16 % v6)
        {
          goto LABEL_9;
        }

        v23 = v8;
        OnDeviceImagePreprocessor.processCGImage(_:newImageDimension:)(a1, *(v2 + 32), v33);
        v29 = v33[4];
        v30 = v33[5];
        v31 = v33[6];
        v32 = v33[7];
        v25 = v33[0];
        v26 = v33[1];
        v8 = v23;
        v2 = *(v23 + 2);
        v11 = *(v23 + 3);
        v6 = v2 + 1;
        v27 = v33[2];
        v28 = v33[3];
        if (v2 < v11 >> 1)
        {
LABEL_15:
          *(v8 + 2) = v6;
          v24 = &v8[128 * v2];
          *(v24 + 4) = v27;
          *(v24 + 5) = v28;
          *(v24 + 2) = v25;
          *(v24 + 3) = v26;
          result = v29;
          *(v24 + 8) = v31;
          *(v24 + 9) = v32;
          *(v24 + 6) = v29;
          *(v24 + 7) = v30;
          return result;
        }
      }

      else
      {
        __break(1u);
      }

      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v6, 1, v8);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t OnDeviceImagePreprocessor.processImageAttachment(imageAttachment:useHighQualityImageTokenization:)(uint64_t a1, char a2)
{
  v4 = v2;
  v6 = 24;
  if (a2)
  {
    v6 = 32;
  }

  v7 = *(v2 + v6);
  v8 = Prompt.ImageAttachment.data.getter();
  v10 = v9;
  v11 = specialized OnDeviceImagePreprocessor.makeCGImageWithImageIO(data:newImageDimension:)(v8, v9, v7);
  outlined consume of Data._Representation(v8, v10);
  if (!v3)
  {
    OnDeviceImagePreprocessor.processCGImage(_:useHighQualityImageTokenization:)(v11, a2 & 1);
    v4 = v12;
  }

  return v4;
}

void OnDeviceImagePreprocessor.processImageAttachment(imageSurfaceAttachment:useHighQualityImageTokenization:)(uint64_t a1, char a2)
{
  v4 = Prompt.ImageSurfaceAttachment.surface.getter();
  v5 = OnDeviceImagePreprocessor.processSurfaceFastPath(surface:useHighQualityImageTokenization:)(v4, a2);
  if (v2 || v5)
  {
LABEL_3:

    return;
  }

  if ([v4 pixelFormat] != 1111970369)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.device);
    v20 = v4;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = [v20 pixelFormat];

      _os_log_impl(&dword_220940000, v21, v22, "Unsupported surface pixel format: %u", v23, 8u);
      MEMORY[0x223D90A10](v23, -1, -1);
    }

    else
    {

      v21 = v20;
    }

    v24 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, MEMORY[0x277D71E28], MEMORY[0x277D71E30]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D71E18], v24);
    swift_willThrow();
    goto LABEL_3;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  [v4 lockWithOptions:1 seed:0];
  v7 = [v4 width];
  space = DeviceRGB;
  height = [v4 height];
  v8 = [v4 bytesPerRow];
  v9 = v4;
  v10 = [v9 baseAddress];
  v11 = [v9 bytesPerRow];
  v12 = [v9 height];
  if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = specialized Data.init(bytes:count:)(v10, v11 * v12);
  v15 = v14;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v13, v15);
  v17 = CGDataProviderCreateWithCFData(isa);

  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = CGImageCreate(v7, height, 8uLL, 0x20uLL, v8, space, 0x2006u, v17, 0, 0, kCGRenderingIntentDefault);

  if (v18)
  {
    [v9 unlockWithOptions:1 seed:0];
    OnDeviceImagePreprocessor.processCGImage(_:useHighQualityImageTokenization:)(v18, a2 & 1);

    return;
  }

LABEL_17:
  __break(1u);
}

NSObject *specialized OnDeviceImagePreprocessor.makeCGImageWithImageIO(data:newImageDimension:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = CGImageSourceCreateWithData(isa, 0);

  if (!v8)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.device);
    outlined copy of Data._Representation(a1, a2);
    ImageAtIndex = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(ImageAtIndex, v13))
    {
      result = swift_slowAlloc();
      LODWORD(result->isa) = 134217984;
      v14 = a2 >> 62;
      if ((a2 >> 62) > 1)
      {
        if (v14 == 2)
        {
          v19 = *(a1 + 16);
          v18 = *(a1 + 24);
          v20 = __OFSUB__(v18, v19);
          v15 = v18 - v19;
          if (v20)
          {
            __break(1u);
            do
            {
              if (v15 != 2)
              {
                v17 = 0;
                goto LABEL_36;
              }

              v22 = *(a1 + 16);
              v21 = *(a1 + 24);
              v20 = __OFSUB__(v21, v22);
              v17 = (v21 - v22);
              if (!v20)
              {
                goto LABEL_36;
              }

              __break(1u);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_220AE8A30;
              v30 = *MEMORY[0x277CD3650];
              *(inited + 32) = *MEMORY[0x277CD3650];
              *(inited + 64) = ImageAtIndex;
              *(inited + 40) = 8;
              v31 = v30;
              _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
              swift_setDeallocating();
              outlined destroy of (CFStringRef, Any)(inited + 32);
              v10 = Dictionary._bridgeToObjectiveC()().super.isa;

              ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, v10);

              if (ImageAtIndex)
              {

                return ImageAtIndex;
              }

              if (one-time initialization token for device != -1)
              {
                swift_once();
              }

              v16 = type metadata accessor for Logger();
              __swift_project_value_buffer(v16, static Log.device);
              a1 = v32;
              outlined copy of Data._Representation(v32, a2);
              ImageAtIndex = Logger.logObject.getter();
              v4 = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(ImageAtIndex, v4))
              {
                outlined consume of Data._Representation(v32, a2);
                goto LABEL_37;
              }

              result = swift_slowAlloc();
              LODWORD(result->isa) = 134217984;
              v15 = a2 >> 62;
            }

            while ((a2 >> 62) > 1);
            if (v15)
            {
              LODWORD(v17) = HIDWORD(v32) - v32;
              if (__OFSUB__(HIDWORD(v32), v32))
              {
                goto LABEL_40;
              }

              v17 = v17;
            }

            else
            {
              v17 = BYTE6(a2);
            }

LABEL_36:
            *(&result->isa + 4) = v17;
            v26 = result;
            outlined consume of Data._Representation(v32, a2);
            _os_log_impl(&dword_220940000, ImageAtIndex, v4, "Failed to create CGImage from %ld bytes using)", v26, 0xCu);
            MEMORY[0x223D90A10](v26, -1, -1);
LABEL_37:

            v27 = type metadata accessor for GenerationError();
            lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, MEMORY[0x277D71E28], MEMORY[0x277D71E30]);
            swift_allocError();
            (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D71E18], v27);
            swift_willThrow();

            return ImageAtIndex;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else if (v14)
      {
        LODWORD(v15) = HIDWORD(a1) - a1;
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v15 = v15;
      }

      else
      {
        v15 = BYTE6(a2);
      }

      *(&result->isa + 4) = v15;
      v23 = result;
      outlined consume of Data._Representation(a1, a2);
      _os_log_impl(&dword_220940000, ImageAtIndex, v13, "Failed to create CGImageSource with %ld bytes", v23, 0xCu);
      MEMORY[0x223D90A10](v23, -1, -1);
    }

    else
    {
      outlined consume of Data._Representation(a1, a2);
    }

    v24 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type GenerationError and conformance GenerationError, MEMORY[0x277D71E28], MEMORY[0x277D71E30]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D71E18], v24);
    swift_willThrow();
    return ImageAtIndex;
  }

  result = CGImageSourceCopyPropertiesAtIndex(v8, 0, 0);
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v33 = 0;
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
LABEL_42:
  __break(1u);
  return result;
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type GenerationError and conformance GenerationError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of (CFStringRef, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for LLMModelAssetMetadata.DraftMetadata(uint64_t a1)
{
  v2 = MEMORY[0x277D29B58];
  *(a1 + 8) = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata, MEMORY[0x277D29B58], MEMORY[0x277D29B68]);
  result = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata, v2, MEMORY[0x277D29B60]);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LLMDraftModelAssetMetadata.DraftMetadata(uint64_t a1)
{
  v2 = MEMORY[0x277D29980];
  *(a1 + 8) = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMDraftModelAssetMetadata.DraftMetadata and conformance LLMDraftModelAssetMetadata.DraftMetadata, MEMORY[0x277D29980], MEMORY[0x277D29990]);
  result = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMDraftModelAssetMetadata.DraftMetadata and conformance LLMDraftModelAssetMetadata.DraftMetadata, v2, MEMORY[0x277D29988]);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LLMAdapterAssetMetadata.DraftMetadata(uint64_t a1)
{
  v2 = MEMORY[0x277D29C00];
  *(a1 + 8) = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMAdapterAssetMetadata.DraftMetadata and conformance LLMAdapterAssetMetadata.DraftMetadata, MEMORY[0x277D29C00], MEMORY[0x277D29C10]);
  result = lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMAdapterAssetMetadata.DraftMetadata and conformance LLMAdapterAssetMetadata.DraftMetadata, v2, MEMORY[0x277D29C08]);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ClassifierOutputClass(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClassifierOutputClass(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ClassifierMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassifierMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t getEnumTagSinglePayload for MetadataSpecialToken(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MetadataSpecialToken(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t MetadataSpecialToken.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v23 = a2;
  v24 = a4;
  v21 = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference015MetadataSpecialD0O16StringCodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference015MetadataSpecialD0O16StringCodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference015MetadataSpecialD0O13IntCodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference015MetadataSpecialD0O13IntCodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference015MetadataSpecialD0O10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference015MetadataSpecialD0O10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v19 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v24)
  {
    v26 = 1;
    lazy protocol witness table accessor for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v22;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v20 + 8))(v7, v17);
  }

  else
  {
    v25 = 0;
    lazy protocol witness table accessor for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v19 + 8))(v11, v8);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MetadataSpecialToken.CodingKeys()
{
  if (*v0)
  {
    return 0x676E69727473;
  }

  else
  {
    return 7630441;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MetadataSpecialToken.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetadataSpecialToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetadataSpecialToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.CodingKeys and conformance MetadataSpecialToken.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetadataSpecialToken.IntCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetadataSpecialToken.IntCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.IntCodingKeys and conformance MetadataSpecialToken.IntCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MetadataSpecialToken.IntCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetadataSpecialToken.StringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetadataSpecialToken.StringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetadataSpecialToken.StringCodingKeys and conformance MetadataSpecialToken.StringCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MetadataSpecialToken@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized MetadataSpecialToken.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MetadataSpecialToken(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    return (v3 == v4) & ~v5;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if (v3 == v4 && v6 == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t specialized SpecialTokenMetadataProtocol.mapToDictionary()()
{
  v0 = type metadata accessor for Prompt.SpecialToken();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference015MetadataSpecialC0OTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = MEMORY[0x223D8C3D0]();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    static Prompt.SpecialToken.startPrompt.getter();
    v9 = Prompt.SpecialToken.identifier.getter();
    v11 = v10;
    (*(v1 + 8))(v4, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, 0, 0, v9, v11, isUniquelyReferenced_nonNull_native);

    v5 = v79;
  }

  v13 = MEMORY[0x223D8C3B0](v6);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    static Prompt.SpecialToken.endPrompt.getter();
    v17 = Prompt.SpecialToken.identifier.getter();
    v19 = v18;
    (*(v1 + 8))(v4, v0);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v16, 1, v17, v19, v20);

    v5 = v79;
  }

  v21 = MEMORY[0x223D8C3A0](v13);
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    static Prompt.SpecialToken.Chat.instructions.getter();
    v25 = Prompt.SpecialToken.identifier.getter();
    v27 = v26;
    (*(v1 + 8))(v4, v0);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v24, 1, v25, v27, v28);

    v5 = v79;
  }

  v29 = MEMORY[0x223D8C390](v21);
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    static Prompt.SpecialToken.Chat.user.getter();
    v33 = Prompt.SpecialToken.identifier.getter();
    v35 = v34;
    (*(v1 + 8))(v4, v0);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v32, 1, v33, v35, v36);

    v5 = v79;
  }

  v37 = MEMORY[0x223D8C3E0](v29);
  if (v38)
  {
    v39 = v37;
    v40 = v38;
    static Prompt.SpecialToken.Chat.response.getter();
    v41 = Prompt.SpecialToken.identifier.getter();
    v43 = v42;
    (*(v1 + 8))(v4, v0);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v40, 1, v41, v43, v44);

    v5 = v79;
  }

  v45 = MEMORY[0x223D8C400](v37);
  if (v46)
  {
    v47 = v45;
    v48 = v46;
    static Prompt.SpecialToken.Chat.turnEnd.getter();
    v49 = Prompt.SpecialToken.identifier.getter();
    v51 = v50;
    (*(v1 + 8))(v4, v0);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v48, 1, v49, v51, v52);

    v5 = v79;
  }

  v53 = MEMORY[0x223D8C410](v45);
  if (v54)
  {
    v55 = v53;
    v56 = v54;
    static Prompt.SpecialToken.Chat.defaultInstructions.getter();
    v57 = Prompt.SpecialToken.identifier.getter();
    v59 = v58;
    (*(v1 + 8))(v4, v0);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v56, 1, v57, v59, v60);

    v5 = v79;
  }

  v61 = MEMORY[0x223D8C3F0](v53);
  if (v62)
  {
    v63 = v61;
    v64 = v62;
    static Prompt.SpecialToken.startImageStr.getter();
    v65 = Prompt.SpecialToken.identifier.getter();
    v67 = v66;
    (*(v1 + 8))(v4, v0);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v64, 1, v65, v67, v68);

    v5 = v79;
  }

  v69 = MEMORY[0x223D8C3C0](v61);
  if (v70)
  {
    v71 = v69;
    v72 = v70;
    static Prompt.SpecialToken.endImageStr.getter();
    v73 = Prompt.SpecialToken.identifier.getter();
    v75 = v74;
    (*(v1 + 8))(v4, v0);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, v72, 1, v73, v75, v76);

    return v79;
  }

  return v5;
}

{
  v0 = type metadata accessor for Prompt.SpecialToken();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference015MetadataSpecialC0OTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = MEMORY[0x223D8BFF0]();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    static Prompt.SpecialToken.startPrompt.getter();
    v9 = Prompt.SpecialToken.identifier.getter();
    v11 = v10;
    (*(v1 + 8))(v4, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, 0, 0, v9, v11, isUniquelyReferenced_nonNull_native);

    v5 = v79;
  }

  v13 = MEMORY[0x223D8BFD0](v6);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    static Prompt.SpecialToken.endPrompt.getter();
    v17 = Prompt.SpecialToken.identifier.getter();
    v19 = v18;
    (*(v1 + 8))(v4, v0);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v16, 1, v17, v19, v20);

    v5 = v79;
  }

  v21 = MEMORY[0x223D8BFC0](v13);
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    static Prompt.SpecialToken.Chat.instructions.getter();
    v25 = Prompt.SpecialToken.identifier.getter();
    v27 = v26;
    (*(v1 + 8))(v4, v0);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v24, 1, v25, v27, v28);

    v5 = v79;
  }

  v29 = MEMORY[0x223D8BFB0](v21);
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    static Prompt.SpecialToken.Chat.user.getter();
    v33 = Prompt.SpecialToken.identifier.getter();
    v35 = v34;
    (*(v1 + 8))(v4, v0);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v32, 1, v33, v35, v36);

    v5 = v79;
  }

  v37 = MEMORY[0x223D8C000](v29);
  if (v38)
  {
    v39 = v37;
    v40 = v38;
    static Prompt.SpecialToken.Chat.response.getter();
    v41 = Prompt.SpecialToken.identifier.getter();
    v43 = v42;
    (*(v1 + 8))(v4, v0);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v40, 1, v41, v43, v44);

    v5 = v79;
  }

  v45 = MEMORY[0x223D8C020](v37);
  if (v46)
  {
    v47 = v45;
    v48 = v46;
    static Prompt.SpecialToken.Chat.turnEnd.getter();
    v49 = Prompt.SpecialToken.identifier.getter();
    v51 = v50;
    (*(v1 + 8))(v4, v0);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v48, 1, v49, v51, v52);

    v5 = v79;
  }

  v53 = MEMORY[0x223D8C030](v45);
  if (v54)
  {
    v55 = v53;
    v56 = v54;
    static Prompt.SpecialToken.Chat.defaultInstructions.getter();
    v57 = Prompt.SpecialToken.identifier.getter();
    v59 = v58;
    (*(v1 + 8))(v4, v0);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v56, 1, v57, v59, v60);

    v5 = v79;
  }

  v61 = MEMORY[0x223D8C010](v53);
  if (v62)
  {
    v63 = v61;
    v64 = v62;
    static Prompt.SpecialToken.startImageStr.getter();
    v65 = Prompt.SpecialToken.identifier.getter();
    v67 = v66;
    (*(v1 + 8))(v4, v0);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v64, 1, v65, v67, v68);

    v5 = v79;
  }

  v69 = MEMORY[0x223D8BFE0](v61);
  if (v70)
  {
    v71 = v69;
    v72 = v70;
    static Prompt.SpecialToken.endImageStr.getter();
    v73 = Prompt.SpecialToken.identifier.getter();
    v75 = v74;
    (*(v1 + 8))(v4, v0);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, v72, 1, v73, v75, v76);

    return v79;
  }

  return v5;
}

{
  v0 = type metadata accessor for Prompt.SpecialToken();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference015MetadataSpecialC0OTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v6 = MEMORY[0x223D8C700]();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    static Prompt.SpecialToken.startPrompt.getter();
    v9 = Prompt.SpecialToken.identifier.getter();
    v11 = v10;
    (*(v1 + 8))(v4, v0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, 0, 0, v9, v11, isUniquelyReferenced_nonNull_native);

    v5 = v79;
  }

  v13 = MEMORY[0x223D8C6E0](v6);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    static Prompt.SpecialToken.endPrompt.getter();
    v17 = Prompt.SpecialToken.identifier.getter();
    v19 = v18;
    (*(v1 + 8))(v4, v0);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v16, 1, v17, v19, v20);

    v5 = v79;
  }

  v21 = MEMORY[0x223D8C6D0](v13);
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    static Prompt.SpecialToken.Chat.instructions.getter();
    v25 = Prompt.SpecialToken.identifier.getter();
    v27 = v26;
    (*(v1 + 8))(v4, v0);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v24, 1, v25, v27, v28);

    v5 = v79;
  }

  v29 = MEMORY[0x223D8C6C0](v21);
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    static Prompt.SpecialToken.Chat.user.getter();
    v33 = Prompt.SpecialToken.identifier.getter();
    v35 = v34;
    (*(v1 + 8))(v4, v0);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v32, 1, v33, v35, v36);

    v5 = v79;
  }

  v37 = MEMORY[0x223D8C710](v29);
  if (v38)
  {
    v39 = v37;
    v40 = v38;
    static Prompt.SpecialToken.Chat.response.getter();
    v41 = Prompt.SpecialToken.identifier.getter();
    v43 = v42;
    (*(v1 + 8))(v4, v0);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v40, 1, v41, v43, v44);

    v5 = v79;
  }

  v45 = MEMORY[0x223D8C730](v37);
  if (v46)
  {
    v47 = v45;
    v48 = v46;
    static Prompt.SpecialToken.Chat.turnEnd.getter();
    v49 = Prompt.SpecialToken.identifier.getter();
    v51 = v50;
    (*(v1 + 8))(v4, v0);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v48, 1, v49, v51, v52);

    v5 = v79;
  }

  v53 = MEMORY[0x223D8C740](v45);
  if (v54)
  {
    v55 = v53;
    v56 = v54;
    static Prompt.SpecialToken.Chat.defaultInstructions.getter();
    v57 = Prompt.SpecialToken.identifier.getter();
    v59 = v58;
    (*(v1 + 8))(v4, v0);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v56, 1, v57, v59, v60);

    v5 = v79;
  }

  v61 = MEMORY[0x223D8C720](v53);
  if (v62)
  {
    v63 = v61;
    v64 = v62;
    static Prompt.SpecialToken.startImageStr.getter();
    v65 = Prompt.SpecialToken.identifier.getter();
    v67 = v66;
    (*(v1 + 8))(v4, v0);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v63, v64, 1, v65, v67, v68);

    v5 = v79;
  }

  v69 = MEMORY[0x223D8C6F0](v61);
  if (v70)
  {
    v71 = v69;
    v72 = v70;
    static Prompt.SpecialToken.endImageStr.getter();
    v73 = Prompt.SpecialToken.identifier.getter();
    v75 = v74;
    (*(v1 + 8))(v4, v0);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v71, v72, 1, v73, v75, v76);

    return v79;
  }

  return v5;
}

void specialized LocalizationMetadataProtocol.mapToDictionary()(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v238 = a7;
  v239 = a6;
  v240 = a5;
  v241 = a4;
  v242 = a3;
  v10 = type metadata accessor for Prompt.SpecialToken();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v233 = &v230 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v234 = &v230 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v235 = &v230 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v236 = &v230 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v237 = &v230 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v230 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v230 - v32;
  v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS24TokenGenerationInference015MetadataSpecialC0OGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v245 = v7;
  v35 = a1();
  v243 = v11;
  v244 = v10;
  if (v35)
  {
    v36 = v35;
    v232 = a2;
    v246 = v34;
    static Prompt.SpecialToken.localeInstruction.getter();
    v230 = Prompt.SpecialToken.identifier.getter();
    v231 = v37;
    (*(v11 + 8))(v33, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMR);
    v38 = static _DictionaryStorage.copy(original:)();
    v39 = v38;
    v40 = 0;
    v41 = 1 << *(v36 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v36 + 64);
    v44 = (v41 + 63) >> 6;
    v45 = v38 + 64;
    while (v43)
    {
      v46 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
LABEL_11:
      v49 = v46 | (v40 << 6);
      v50 = (*(v36 + 48) + 16 * v49);
      v52 = *v50;
      v51 = v50[1];
      v53 = (*(v36 + 56) + 16 * v49);
      v54 = *v53;
      v55 = v53[1];
      *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v56 = (v39[6] + 16 * v49);
      *v56 = v52;
      v56[1] = v51;
      v57 = v39[7] + 24 * v49;
      *v57 = v54;
      *(v57 + 8) = v55;
      *(v57 + 16) = 1;
      v58 = v39[2];
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_107;
      }

      v39[2] = v60;
    }

    v47 = v40;
    while (1)
    {
      v40 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v40 >= v44)
      {

        v61 = v246;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v247 = v61;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v230, v231, isUniquelyReferenced_nonNull_native);

        v34 = v247;
        v11 = v243;
        v10 = v244;
        a2 = v232;
        goto LABEL_15;
      }

      v48 = *(v36 + 64 + 8 * v40);
      ++v47;
      if (v48)
      {
        v46 = __clz(__rbit64(v48));
        v43 = (v48 - 1) & v48;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

LABEL_15:
  v63 = a2();
  if (v63)
  {
    v64 = v63;
    v246 = v34;
    static Prompt.SpecialToken.localeInstructionInjectionLocation.getter();
    v231 = Prompt.SpecialToken.identifier.getter();
    v232 = v65;
    (*(v11 + 8))(v30, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMR);
    v66 = static _DictionaryStorage.copy(original:)();
    v67 = v66;
    v68 = 0;
    v69 = 1 << *(v64 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v64 + 64);
    v72 = (v69 + 63) >> 6;
    v73 = v66 + 64;
    while (v71)
    {
      v74 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
LABEL_25:
      v77 = v74 | (v68 << 6);
      v78 = (*(v64 + 48) + 16 * v77);
      v80 = *v78;
      v79 = v78[1];
      v81 = (*(v64 + 56) + 16 * v77);
      v82 = *v81;
      v83 = v81[1];
      *(v73 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v77;
      v84 = (v67[6] + 16 * v77);
      *v84 = v80;
      v84[1] = v79;
      v85 = v67[7] + 24 * v77;
      *v85 = v82;
      *(v85 + 8) = v83;
      *(v85 + 16) = 1;
      v86 = v67[2];
      v59 = __OFADD__(v86, 1);
      v87 = v86 + 1;
      if (v59)
      {
        goto LABEL_108;
      }

      v67[2] = v87;
    }

    v75 = v68;
    while (1)
    {
      v68 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      if (v68 >= v72)
      {

        v88 = v246;
        v89 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v88;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v231, v232, v89);

        v34 = v247;
        v11 = v243;
        v10 = v244;
        goto LABEL_29;
      }

      v76 = *(v64 + 64 + 8 * v68);
      ++v75;
      if (v76)
      {
        v74 = __clz(__rbit64(v76));
        v71 = (v76 - 1) & v76;
        goto LABEL_25;
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    return;
  }

LABEL_29:
  v90 = v242();
  if (v90)
  {
    v91 = v90;
    v246 = v34;
    v92 = v237;
    static Prompt.SpecialToken.Chat.instructions.getter();
    v232 = Prompt.SpecialToken.identifier.getter();
    v242 = v93;
    (*(v11 + 8))(v92, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMR);
    v94 = static _DictionaryStorage.copy(original:)();
    v95 = v94;
    v96 = 0;
    v97 = 1 << *(v91 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v99 = v98 & *(v91 + 64);
    v100 = (v97 + 63) >> 6;
    v101 = v94 + 64;
    while (v99)
    {
      v102 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
LABEL_39:
      v105 = v102 | (v96 << 6);
      v106 = (*(v91 + 48) + 16 * v105);
      v108 = *v106;
      v107 = v106[1];
      v109 = (*(v91 + 56) + 16 * v105);
      v110 = *v109;
      v111 = v109[1];
      *(v101 + ((v105 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v105;
      v112 = (v95[6] + 16 * v105);
      *v112 = v108;
      v112[1] = v107;
      v113 = v95[7] + 24 * v105;
      *v113 = v110;
      *(v113 + 8) = v111;
      *(v113 + 16) = 1;
      v114 = v95[2];
      v59 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v59)
      {
        goto LABEL_109;
      }

      v95[2] = v115;
    }

    v103 = v96;
    while (1)
    {
      v96 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        goto LABEL_102;
      }

      if (v96 >= v100)
      {

        v116 = v246;
        v117 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v116;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v95, v232, v242, v117);

        v34 = v247;
        v11 = v243;
        v10 = v244;
        break;
      }

      v104 = *(v91 + 64 + 8 * v96);
      ++v103;
      if (v104)
      {
        v102 = __clz(__rbit64(v104));
        v99 = (v104 - 1) & v104;
        goto LABEL_39;
      }
    }
  }

  v118 = v241();
  if (v118)
  {
    v119 = v118;
    v246 = v34;
    v120 = v236;
    static Prompt.SpecialToken.Chat.defaultInstructions.getter();
    v241 = Prompt.SpecialToken.identifier.getter();
    v242 = v121;
    (*(v11 + 8))(v120, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMR);
    v122 = static _DictionaryStorage.copy(original:)();
    v123 = v122;
    v124 = 0;
    v125 = 1 << *(v119 + 32);
    v126 = -1;
    if (v125 < 64)
    {
      v126 = ~(-1 << v125);
    }

    v127 = v126 & *(v119 + 64);
    v128 = (v125 + 63) >> 6;
    v129 = v122 + 64;
    while (v127)
    {
      v130 = __clz(__rbit64(v127));
      v127 &= v127 - 1;
LABEL_53:
      v133 = v130 | (v124 << 6);
      v134 = (*(v119 + 48) + 16 * v133);
      v136 = *v134;
      v135 = v134[1];
      v137 = (*(v119 + 56) + 16 * v133);
      v138 = *v137;
      v139 = v137[1];
      *(v129 + ((v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v133;
      v140 = (v123[6] + 16 * v133);
      *v140 = v136;
      v140[1] = v135;
      v141 = v123[7] + 24 * v133;
      *v141 = v138;
      *(v141 + 8) = v139;
      *(v141 + 16) = 1;
      v142 = v123[2];
      v59 = __OFADD__(v142, 1);
      v143 = v142 + 1;
      if (v59)
      {
        goto LABEL_110;
      }

      v123[2] = v143;
    }

    v131 = v124;
    while (1)
    {
      v124 = v131 + 1;
      if (__OFADD__(v131, 1))
      {
        goto LABEL_103;
      }

      if (v124 >= v128)
      {

        v144 = v246;
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v144;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v123, v241, v242, v145);

        v34 = v247;
        v11 = v243;
        v10 = v244;
        break;
      }

      v132 = *(v119 + 64 + 8 * v124);
      ++v131;
      if (v132)
      {
        v130 = __clz(__rbit64(v132));
        v127 = (v132 - 1) & v132;
        goto LABEL_53;
      }
    }
  }

  v146 = v240();
  if (v146)
  {
    v147 = v146;
    v246 = v34;
    v148 = v235;
    static Prompt.SpecialToken.Chat.response.getter();
    v241 = Prompt.SpecialToken.identifier.getter();
    v242 = v149;
    (*(v11 + 8))(v148, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMR);
    v150 = static _DictionaryStorage.copy(original:)();
    v151 = v150;
    v152 = 0;
    v153 = 1 << *(v147 + 32);
    v154 = -1;
    if (v153 < 64)
    {
      v154 = ~(-1 << v153);
    }

    v155 = v154 & *(v147 + 64);
    v156 = (v153 + 63) >> 6;
    v157 = v150 + 64;
    while (v155)
    {
      v158 = __clz(__rbit64(v155));
      v155 &= v155 - 1;
LABEL_67:
      v161 = v158 | (v152 << 6);
      v162 = (*(v147 + 48) + 16 * v161);
      v164 = *v162;
      v163 = v162[1];
      v165 = (*(v147 + 56) + 16 * v161);
      v166 = *v165;
      v167 = v165[1];
      *(v157 + ((v161 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v161;
      v168 = (v151[6] + 16 * v161);
      *v168 = v164;
      v168[1] = v163;
      v169 = v151[7] + 24 * v161;
      *v169 = v166;
      *(v169 + 8) = v167;
      *(v169 + 16) = 1;
      v170 = v151[2];
      v59 = __OFADD__(v170, 1);
      v171 = v170 + 1;
      if (v59)
      {
        goto LABEL_111;
      }

      v151[2] = v171;
    }

    v159 = v152;
    while (1)
    {
      v152 = v159 + 1;
      if (__OFADD__(v159, 1))
      {
        goto LABEL_104;
      }

      if (v152 >= v156)
      {

        v172 = v246;
        v173 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v172;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v241, v242, v173);

        v34 = v247;
        v11 = v243;
        v10 = v244;
        break;
      }

      v160 = *(v147 + 64 + 8 * v152);
      ++v159;
      if (v160)
      {
        v158 = __clz(__rbit64(v160));
        v155 = (v160 - 1) & v160;
        goto LABEL_67;
      }
    }
  }

  v174 = v239();
  if (v174)
  {
    v175 = v174;
    v246 = v34;
    v176 = v234;
    static Prompt.SpecialToken.Chat.user.getter();
    v241 = Prompt.SpecialToken.identifier.getter();
    v242 = v177;
    (*(v11 + 8))(v176, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMR);
    v178 = static _DictionaryStorage.copy(original:)();
    v179 = v178;
    v180 = 0;
    v181 = 1 << *(v175 + 32);
    v182 = -1;
    if (v181 < 64)
    {
      v182 = ~(-1 << v181);
    }

    v183 = v182 & *(v175 + 64);
    v184 = (v181 + 63) >> 6;
    v185 = v178 + 64;
    while (v183)
    {
      v186 = __clz(__rbit64(v183));
      v183 &= v183 - 1;
LABEL_81:
      v189 = v186 | (v180 << 6);
      v190 = (*(v175 + 48) + 16 * v189);
      v192 = *v190;
      v191 = v190[1];
      v193 = (*(v175 + 56) + 16 * v189);
      v194 = *v193;
      v195 = v193[1];
      *(v185 + ((v189 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v189;
      v196 = (v179[6] + 16 * v189);
      *v196 = v192;
      v196[1] = v191;
      v197 = v179[7] + 24 * v189;
      *v197 = v194;
      *(v197 + 8) = v195;
      *(v197 + 16) = 1;
      v198 = v179[2];
      v59 = __OFADD__(v198, 1);
      v199 = v198 + 1;
      if (v59)
      {
        goto LABEL_112;
      }

      v179[2] = v199;
    }

    v187 = v180;
    while (1)
    {
      v180 = v187 + 1;
      if (__OFADD__(v187, 1))
      {
        goto LABEL_105;
      }

      if (v180 >= v184)
      {

        v200 = v246;
        v201 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v200;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v179, v241, v242, v201);

        v34 = v247;
        v11 = v243;
        v10 = v244;
        break;
      }

      v188 = *(v175 + 64 + 8 * v180);
      ++v187;
      if (v188)
      {
        v186 = __clz(__rbit64(v188));
        v183 = (v188 - 1) & v188;
        goto LABEL_81;
      }
    }
  }

  v202 = v238();
  if (v202)
  {
    v203 = v202;
    v246 = v34;
    v204 = v233;
    static Prompt.SpecialToken.Chat.turnEnd.getter();
    v244 = Prompt.SpecialToken.identifier.getter();
    v245 = v205;
    (*(v11 + 8))(v204, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMR);
    v206 = static _DictionaryStorage.copy(original:)();
    v207 = v206;
    v208 = 0;
    v209 = 1 << *(v203 + 32);
    v210 = -1;
    if (v209 < 64)
    {
      v210 = ~(-1 << v209);
    }

    v211 = v210 & *(v203 + 64);
    v212 = (v209 + 63) >> 6;
    v213 = v206 + 64;
    while (v211)
    {
      v214 = __clz(__rbit64(v211));
      v211 &= v211 - 1;
LABEL_95:
      v217 = v214 | (v208 << 6);
      v218 = (*(v203 + 48) + 16 * v217);
      v220 = *v218;
      v219 = v218[1];
      v221 = (*(v203 + 56) + 16 * v217);
      v222 = *v221;
      v223 = v221[1];
      *(v213 + ((v217 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v217;
      v224 = (v207[6] + 16 * v217);
      *v224 = v220;
      v224[1] = v219;
      v225 = v207[7] + 24 * v217;
      *v225 = v222;
      *(v225 + 8) = v223;
      *(v225 + 16) = 1;
      v226 = v207[2];
      v59 = __OFADD__(v226, 1);
      v227 = v226 + 1;
      if (v59)
      {
        goto LABEL_113;
      }

      v207[2] = v227;
    }

    v215 = v208;
    while (1)
    {
      v208 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        goto LABEL_106;
      }

      if (v208 >= v212)
      {

        v228 = v246;
        v229 = swift_isUniquelyReferenced_nonNull_native();
        v247 = v228;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v207, v244, v245, v229);

        return;
      }

      v216 = *(v203 + 64 + 8 * v208);
      ++v215;
      if (v216)
      {
        v214 = __clz(__rbit64(v216));
        v211 = (v216 - 1) & v216;
        goto LABEL_95;
      }
    }
  }
}

uint64_t E5Function.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference10E5FunctionV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference10E5FunctionV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type E5Function.CodingKeys and conformance E5Function.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v9[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance E5Function.CodingKeys()
{
  v1 = 1701869940;
  v2 = 0x6E654C716573;
  if (*v0 != 2)
  {
    v2 = 0x6E654C787463;
  }

  if (*v0)
  {
    v1 = 0x5472657470616461;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance E5Function.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized E5Function.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance E5Function.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type E5Function.CodingKeys and conformance E5Function.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance E5Function.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type E5Function.CodingKeys and conformance E5Function.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance E5Function@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized E5Function.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t StopToken.encode(to:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference04StopD0V10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference04StopD0V10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StopToken.CodingKeys and conformance StopToken.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StopToken.CodingKeys()
{
  if (*v0)
  {
    return 0x6156676E69727473;
  }

  else
  {
    return 0x65756C6156746E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StopToken.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6156746E69 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StopToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StopToken.CodingKeys and conformance StopToken.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StopToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StopToken.CodingKeys and conformance StopToken.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance StopToken@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized StopToken.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StopToken(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (v7 && (v5 == *(a2 + 16) && v6 == v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

unint64_t DefaultParameters.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6574537466617264;
  switch(a1)
  {
    case 1:
      return 0x4173497466617264;
    case 2:
      return 0x6572547466617264;
    case 3:
      return 0xD000000000000018;
    case 4:
      return 0xD000000000000017;
    case 5:
      return 0xD000000000000013;
    case 6:
      return 0xD000000000000010;
    case 7:
      return 0xD000000000000024;
    case 8:
      v3 = 9;
      goto LABEL_16;
    case 9:
      return 0xD000000000000012;
    case 10:
      v3 = 5;
      goto LABEL_16;
    case 11:
      return 0x74617265706D6574;
    case 12:
      return 0xD000000000000010;
    case 13:
      v3 = 13;
LABEL_16:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t DefaultParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference17DefaultParametersV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference17DefaultParametersV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v3[48];
    v16 = 4;
    v15 = v10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = v3[56];
    v16 = 7;
    v15 = v11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = v3[100];
    v16 = 11;
    v15 = v12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DefaultParameters.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized DefaultParameters.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DefaultParameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DefaultParameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance DefaultParameters@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized DefaultParameters.init(from:)(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

unint64_t ModelMetadata.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7079546C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0x617A696C61636F6CLL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x656B6F54706F7473;
      break;
    case 12:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ModelMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference13ModelMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference13ModelMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v33[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v33[0] = *(v3 + 16);
    LOBYTE(v25) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v33[0] = *(v3 + 24);
    LOBYTE(v25) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference10E5FunctionVGMd, &_sSDySS24TokenGenerationInference10E5FunctionVGMR);
    lazy protocol witness table accessor for type [String : E5Function] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v36 = *(v3 + 32);
    v35[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMR);
    lazy protocol witness table accessor for type [String : MetadataSpecialToken] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 120);
    v33[4] = *(v3 + 104);
    v33[5] = v10;
    v33[6] = *(v3 + 136);
    v34 = *(v3 + 152);
    v11 = *(v3 + 56);
    v33[0] = *(v3 + 40);
    v33[1] = v11;
    v12 = *(v3 + 88);
    v33[2] = *(v3 + 72);
    v33[3] = v12;
    v13 = *(v3 + 120);
    v29 = *(v3 + 104);
    v30 = v13;
    v31 = *(v3 + 136);
    v32 = *(v3 + 152);
    v14 = *(v3 + 56);
    v25 = *(v3 + 40);
    v26 = v14;
    v15 = *(v3 + 88);
    v27 = *(v3 + 72);
    v28 = v15;
    v24 = 4;
    outlined init with copy of DefaultParameters?(v33, v22);
    lazy protocol witness table accessor for type DefaultParameters and conformance DefaultParameters();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22[4] = v29;
    v22[5] = v30;
    v22[6] = v31;
    v23 = v32;
    v22[0] = v25;
    v22[1] = v26;
    v22[2] = v27;
    v22[3] = v28;
    outlined destroy of [Int](v22, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
    LOBYTE(v19) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v19 = *(v3 + 176);
    v21 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v19 = *(v3 + 184);
    v21 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd, &_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMR);
    lazy protocol witness table accessor for type [String : [String : MetadataSpecialToken]] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + 216);
    v19 = *(v3 + 200);
    *&v20 = v16;
    v21 = 9;
    lazy protocol witness table accessor for type ClassifierMetadata and conformance ClassifierMetadata();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = *(v3 + 240);
    v19 = *(v3 + 224);
    v20 = v17;
    v21 = 10;
    lazy protocol witness table accessor for type StopToken and conformance StopToken();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v19) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for ModelMetadata(0);
    LOBYTE(v19) = 12;
    type metadata accessor for PromptPreprocessingTemplateVersion();
    lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, MEMORY[0x277D71ED8], MEMORY[0x277D71EE0]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ModelMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v55 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference13ModelMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedDecodingContainerVy24TokenGenerationInference13ModelMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = v55 - v9;
  v11 = type metadata accessor for ModelMetadata(0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  v91 = v15 + 40;
  *(v15 + 104) = 0u;
  *(v15 + 88) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 15) = 0;
  *(v15 + 16) = 1;
  *(v15 + 17) = 0;
  *(v15 + 18) = 0;
  *(v15 + 76) = 0;
  v16 = *(v13 + 72);
  v17 = type metadata accessor for PromptPreprocessingTemplateVersion();
  v18 = *(*(v17 - 8) + 56);
  v64 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys();
  v60 = v10;
  v20 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v66 = v15;
  if (v20)
  {
    v65 = v20;
    __swift_destroy_boxed_opaque_existential_1(v63);
    swift_bridgeObjectRelease_n();
    v61 = 0;
    v62 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
LABEL_4:
    v28 = *(v91 + 5);
    v87 = *(v91 + 4);
    v88 = v28;
    v89 = *(v91 + 6);
    v90 = *(v91 + 56);
    v29 = *(v91 + 1);
    v83 = *v91;
    v84 = v29;
    v30 = *(v91 + 3);
    v85 = *(v91 + 2);
    v86 = v30;
    outlined destroy of [Int](&v83, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);

    outlined consume of ClassifierMetadata?(v24, v25, v26);
    outlined consume of StopToken?(v61, v23, v62, v27);
    return outlined destroy of [Int](&v66[v64], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  }

  v55[5] = v17;
  v56 = v6;
  LOBYTE(v83) = 0;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v91;
  *v15 = v21;
  *(v15 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  LOBYTE(v80[0]) = 1;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x277D83808], MEMORY[0x277D83528]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v55[1] = v83;
  *(v15 + 2) = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference10E5FunctionVGMd, &_sSDySS24TokenGenerationInference10E5FunctionVGMR);
  LOBYTE(v80[0]) = 2;
  lazy protocol witness table accessor for type [String : E5Function] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v55[4] = v83;
  *(v15 + 3) = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMR);
  LOBYTE(v80[0]) = 3;
  lazy protocol witness table accessor for type [String : MetadataSpecialToken] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v55[3] = v83;
  *(v15 + 4) = v83;
  v82 = 4;
  lazy protocol witness table accessor for type DefaultParameters and conformance DefaultParameters();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v76 = v87;
  v77 = v88;
  v78 = v89;
  v79 = v90;
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v75 = v86;
  v33 = *v22;
  v34 = *(v22 + 1);
  v35 = *(v22 + 3);
  v80[2] = *(v22 + 2);
  v80[3] = v35;
  v80[0] = v33;
  v80[1] = v34;
  v36 = *(v22 + 4);
  v37 = *(v22 + 5);
  v38 = *(v22 + 6);
  v81 = *(v22 + 56);
  v80[5] = v37;
  v80[6] = v38;
  v80[4] = v36;
  outlined destroy of [Int](v80, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
  v39 = v77;
  *(v22 + 4) = v76;
  *(v22 + 5) = v39;
  *(v22 + 6) = v78;
  *(v22 + 56) = v79;
  v40 = v73;
  *v22 = v72;
  *(v22 + 1) = v40;
  v41 = v75;
  *(v22 + 2) = v74;
  *(v22 + 3) = v41;
  LOBYTE(v67) = 5;
  *(v15 + 20) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v15 + 21) = v42;
  v55[2] = v42;
  v71 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v15 + 22) = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd, &_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMR);
  v71 = 7;
  lazy protocol witness table accessor for type [String : [String : MetadataSpecialToken]] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v15 + 23) = v67;
  LOBYTE(v67) = 8;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15[192] = v43;
  v71 = 9;
  lazy protocol witness table accessor for type ClassifierMetadata and conformance ClassifierMetadata();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v65 = 0;
  v44 = v68;
  v45 = v69;
  v24 = v67;
  v46 = v66;
  *(v66 + 25) = v67;
  *(v46 + 26) = v44;
  v25 = v44;
  v26 = v45;
  *(v46 + 27) = v45;
  v71 = 10;
  lazy protocol witness table accessor for type StopToken and conformance StopToken();
  v47 = v65;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v65 = v47;
  if (v47)
  {
    (*(v58 + 8))(v60, v59);
    __swift_destroy_boxed_opaque_existential_1(v63);
    v61 = 0;
    v62 = 0;
    v23 = 0;
    v27 = 1;
LABEL_5:

    goto LABEL_4;
  }

  v48 = v68;
  v49 = v69;
  v50 = v70;
  v61 = v67;
  v62 = v69;
  v51 = v66;
  *(v66 + 28) = v67;
  v51[29] = v48;
  v23 = v48;
  v51[30] = v49;
  v51[31] = v50;
  v27 = v50;
  LOBYTE(v67) = 11;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v65 = 0;
  v66[256] = v52;
  LOBYTE(v67) = 12;
  lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, MEMORY[0x277D71ED8], MEMORY[0x277D71EF8]);
  v53 = v65;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v65 = v53;
  if (v53)
  {
    (*(v58 + 8))(v60, v59);
    __swift_destroy_boxed_opaque_existential_1(v63);
    goto LABEL_5;
  }

  (*(v58 + 8))(v60, v59);
  v54 = v66;
  outlined assign with take of PromptPreprocessingTemplateVersion?(v56, &v66[v64]);
  outlined init with copy of ModelMetadata(v54, v57);
  __swift_destroy_boxed_opaque_existential_1(v63);
  return outlined destroy of ModelMetadata(v54);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModelMetadata.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ModelMetadata.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModelMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModelMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelMetadata.CodingKeys and conformance ModelMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ModelMetadata.init(from:metadataUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v192 = &v173 - v8;
  v9 = type metadata accessor for PromptPreprocessingTemplateVersion();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v177 = &v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog21LLMModelAssetMetadataV34PromptPreprocessingTemplateVersionOSgMd, &_s12ModelCatalog21LLMModelAssetMetadataV34PromptPreprocessingTemplateVersionOSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v173 - v15;
  v197 = type metadata accessor for LLMModelAssetMetadata.PromptPreprocessingTemplateVersion();
  v194 = *(v197 - 8);
  v18 = MEMORY[0x28223BE20](v197, v17);
  v178 = &v173 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v184 = &v173 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog21LLMModelAssetMetadataV05DraftE0VSgMd, &_s12ModelCatalog21LLMModelAssetMetadataV05DraftE0VSgMR);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v188 = &v173 - v24;
  v190 = type metadata accessor for LLMModelAssetMetadata.DraftMetadata();
  v189 = *(v190 - 8);
  v26 = MEMORY[0x28223BE20](v190, v25);
  v182 = &v173 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v181 = &v173 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog21LLMModelAssetMetadataV18DeviceLocalizationVSgMd, &_s12ModelCatalog21LLMModelAssetMetadataV18DeviceLocalizationVSgMR);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = &v173 - v32;
  v187 = type metadata accessor for LLMModelAssetMetadata.DeviceLocalization();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187, v34);
  v180 = &v173 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9StopTokenVSgMd, &_s12ModelCatalog9StopTokenVSgMR);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v203 = &v173 - v38;
  v185 = type metadata accessor for StopToken();
  v204 = *(v185 - 8);
  MEMORY[0x28223BE20](v185, v39);
  v179 = &v173 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog21LLMModelAssetMetadataV22DeviceSpecialTokensMapVSgMd, &_s12ModelCatalog21LLMModelAssetMetadataV22DeviceSpecialTokensMapVSgMR);
  v43 = MEMORY[0x28223BE20](v41 - 8, v42);
  v202 = &v173 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v45);
  v47 = &v173 - v46;
  v201 = type metadata accessor for LLMModelAssetMetadata.DeviceSpecialTokensMap();
  v208 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v48);
  v196 = &v173 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for LLMModelAssetMetadata.ANEExtendInfo();
  v50 = *(v217 - 8);
  v52 = MEMORY[0x28223BE20](v217, v51);
  v216 = &v173 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v54);
  v215 = &v173 - v55;
  *(a3 + 32) = 0u;
  v195 = (a3 + 32);
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 1;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 2;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 1;
  *(a3 + 256) = 2;
  v56 = *(type metadata accessor for ModelMetadata(0) + 64);
  v183 = v10;
  v57 = *(v10 + 56);
  v174 = v56;
  v176 = v10 + 56;
  v175 = v57;
  v57(a3 + v56, 1, 1, v9);
  *a3 = LLMModelAssetMetadata.modelType.getter();
  *(a3 + 8) = v58;
  *(a3 + 16) = LLMModelAssetMetadata.adapterTypeToSymbolMapping.getter();
  v236 = a1;
  v59 = LLMModelAssetMetadata.e5FunctionNameMap.getter();
  v198 = v33;
  v206 = a3;
  v207 = a2;
  v193 = v9;
  v191 = v16;
  if (v59)
  {
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference10E5FunctionVGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference10E5FunctionVGMR);
    v61 = static _DictionaryStorage.copy(original:)();
    v62 = v61;
    v63 = 0;
    v218 = v60;
    v64 = *(v60 + 64);
    v200 = v60 + 64;
    v65 = 1 << *(v60 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & v64;
    v199 = (v65 + 63) >> 6;
    v212 = v50 + 16;
    v214 = v50;
    v211 = v50 + 8;
    v210 = v61 + 64;
    v209 = v47;
    v213 = v61;
    if (v67)
    {
      while (1)
      {
        v68 = __clz(__rbit64(v67));
        v219 = (v67 - 1) & v67;
LABEL_11:
        v71 = v68 | (v63 << 6);
        v224 = 16 * v71;
        v72 = *(v218 + 56);
        v73 = (*(v218 + 48) + 16 * v71);
        v74 = v73[1];
        v225 = *v73;
        v75 = v214;
        v76 = *(v214 + 16);
        v77 = v215;
        v78 = v217;
        v76(v215, v72 + *(v214 + 72) * v71, v217);
        v79 = v216;
        v76(v216, v77, v78);
        v80 = v74;

        v81 = LLMModelAssetMetadata.ANEExtendInfo.type.getter();
        v223 = v82;
        v222 = LLMModelAssetMetadata.ANEExtendInfo.adapterType.getter();
        v221 = v83;
        v220 = LLMModelAssetMetadata.ANEExtendInfo.seqLen.getter();
        v84 = LLMModelAssetMetadata.ANEExtendInfo.ctxLen.getter();
        v85 = *(v75 + 8);
        v85(v79, v78);
        v85(v77, v78);
        *(v210 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
        v62 = v213;
        v86 = (*(v213 + 48) + v224);
        *v86 = v225;
        v86[1] = v80;
        v87 = (*(v62 + 56) + 48 * v71);
        v88 = v223;
        *v87 = v81;
        v87[1] = v88;
        v89 = v221;
        v87[2] = v222;
        v87[3] = v89;
        v87[4] = v220;
        v87[5] = v84;
        v90 = *(v62 + 16);
        v91 = __OFADD__(v90, 1);
        v92 = v90 + 1;
        if (v91)
        {
          break;
        }

        *(v62 + 16) = v92;
        v47 = v209;
        v67 = v219;
        if (!v219)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v69 = v63;
      while (1)
      {
        v63 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          break;
        }

        if (v63 >= v199)
        {

          a3 = v206;
          goto LABEL_16;
        }

        v70 = *(v200 + 8 * v63);
        ++v69;
        if (v70)
        {
          v68 = __clz(__rbit64(v70));
          v219 = (v70 - 1) & v70;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  v62 = 0;
LABEL_16:
  *(a3 + 24) = v62;
  LLMModelAssetMetadata.specialTokensMap.getter();
  v93 = v208;
  v94 = *(v208 + 48);
  v95 = v47;
  v96 = v47;
  v97 = v201;
  if (v94(v95, 1, v201) == 1)
  {
    outlined destroy of [Int](v96, &_s12ModelCatalog21LLMModelAssetMetadataV22DeviceSpecialTokensMapVSgMd, &_s12ModelCatalog21LLMModelAssetMetadataV22DeviceSpecialTokensMapVSgMR);
  }

  else
  {
    v98 = v196;
    (*(v93 + 32))(v196, v96, v97);
    v99 = v93;
    v100 = specialized SpecialTokenMetadataProtocol.mapToDictionary()();
    v101 = v99;
    a3 = v206;
    (*(v101 + 8))(v98, v97);
    *v195 = v100;
  }

  v102 = v202;
  LLMModelAssetMetadata.specialTokensMap.getter();
  if (v94(v102, 1, v97) == 1)
  {
    outlined destroy of [Int](v102, &_s12ModelCatalog21LLMModelAssetMetadataV22DeviceSpecialTokensMapVSgMd, &_s12ModelCatalog21LLMModelAssetMetadataV22DeviceSpecialTokensMapVSgMR);
    v228 = 0u;
    v229 = 0u;
    *&v230 = 0;
  }

  else
  {
    *(&v229 + 1) = v97;
    *&v230 = MEMORY[0x277D29BA8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v228);
    (*(v208 + 32))(boxed_opaque_existential_1, v102, v97);
  }

  v104 = v207;
  v105 = v204;
  v106 = v203;
  v107 = type metadata accessor for LLMModelAssetMetadata();
  lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMModelAssetMetadata and conformance LLMModelAssetMetadata, MEMORY[0x277D29BB8], MEMORY[0x277D29BB0]);
  v108 = v205;
  AssetMetadata.stopToken(metadataURL:deviceSpecialTokensMap:)();
  if (v108)
  {
    v109 = type metadata accessor for URL();
    (*(*(v109 - 8) + 8))(v104, v109);
    (*(*(v107 - 8) + 8))(v236, v107);
    outlined destroy of [Int](&v228, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMR);
    return outlined destroy of ModelMetadata(a3);
  }

  v225 = v107;
  outlined destroy of [Int](&v228, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMR);
  v111 = v185;
  v112 = (*(v105 + 48))(v106, 1, v185);
  v224 = 0;
  if (v112 == 1)
  {
    outlined destroy of [Int](v106, &_s12ModelCatalog9StopTokenVSgMd, &_s12ModelCatalog9StopTokenVSgMR);
    v113 = v189;
    v114 = v187;
    v115 = v193;
    v116 = v191;
  }

  else
  {
    v117 = v179;
    (*(v105 + 32))(v179, v106, v111);
    v118 = StopToken.intValue.getter();
    v120 = v119;
    v121 = StopToken.stringValue.getter();
    v122 = v105;
    v124 = v123;
    (*(v122 + 8))(v117, v111);
    v125 = v120 & 1;
    v116 = v191;
    *(a3 + 224) = v118;
    *(a3 + 232) = v125;
    v115 = v193;
    *(a3 + 240) = v121;
    *(a3 + 248) = v124;
    v113 = v189;
    v114 = v187;
  }

  *(a3 + 160) = LLMModelAssetMetadata.backboneSignature.getter();
  *(a3 + 168) = v126;
  *(a3 + 176) = LLMModelAssetMetadata.adapterTypeToSignatureMapping.getter();
  v127 = v198;
  LLMModelAssetMetadata.localization.getter();
  v128 = v186;
  if ((*(v186 + 48))(v127, 1, v114) == 1)
  {
    outlined destroy of [Int](v198, &_s12ModelCatalog21LLMModelAssetMetadataV18DeviceLocalizationVSgMd, &_s12ModelCatalog21LLMModelAssetMetadataV18DeviceLocalizationVSgMR);
  }

  else
  {
    v129 = v180;
    (*(v128 + 32))(v180, v198, v114);
    specialized LocalizationMetadataProtocol.mapToDictionary()(MEMORY[0x277D29B88], MEMORY[0x277D29BA0], MEMORY[0x277D29B78], MEMORY[0x277D29B98], MEMORY[0x277D29B80], MEMORY[0x277D29B70], MEMORY[0x277D29B90]);
    v131 = v130;
    (*(v128 + 8))(v129, v114);
    *(a3 + 184) = v131;
  }

  *(a3 + 192) = LLMModelAssetMetadata.allowPromptFallback.getter();
  v132 = v188;
  LLMModelAssetMetadata.defaultParameters.getter();
  v133 = v190;
  if ((*(v113 + 48))(v132, 1, v190) == 1)
  {
    outlined destroy of [Int](v132, &_s12ModelCatalog21LLMModelAssetMetadataV05DraftE0VSgMd, &_s12ModelCatalog21LLMModelAssetMetadataV05DraftE0VSgMR);
  }

  else
  {
    v134 = v181;
    (*(v113 + 32))(v181, v132, v133);
    v135 = v182;
    (*(v113 + 16))(v182, v134, v133);
    _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog013LLMModelAssetH0V0gH0V_Tt0g5(v135, v226);
    (*(v113 + 8))(v134, v133);
    v136 = *(a3 + 104);
    v137 = *(a3 + 136);
    v233 = *(a3 + 120);
    v234 = v137;
    v235 = *(a3 + 152);
    v228 = *(a3 + 40);
    v138 = *(a3 + 72);
    v229 = *(a3 + 56);
    v230 = v138;
    v231 = *(a3 + 88);
    v232 = v136;
    outlined destroy of [Int](&v228, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
    v139 = v226[5];
    *(a3 + 104) = v226[4];
    *(a3 + 120) = v139;
    *(a3 + 136) = v226[6];
    v140 = v226[1];
    *(a3 + 40) = v226[0];
    *(a3 + 56) = v140;
    v141 = v226[3];
    *(a3 + 72) = v226[2];
    *(a3 + 152) = v227;
    *(a3 + 88) = v141;
  }

  v142 = LLMModelAssetMetadata.prewarmForConstrainedDecoding.getter();
  if (v142 != 2)
  {
    *(a3 + 256) = v142;
  }

  LLMModelAssetMetadata.promptPreprocessingTemplateVersion.getter();
  v143 = v194;
  v144 = v197;
  if ((*(v194 + 48))(v116, 1, v197) == 1)
  {
    v145 = type metadata accessor for URL();
    (*(*(v145 - 8) + 8))(v207, v145);
    (*(*(v225 - 8) + 8))(v236);
    return outlined destroy of [Int](v116, &_s12ModelCatalog21LLMModelAssetMetadataV34PromptPreprocessingTemplateVersionOSgMd, &_s12ModelCatalog21LLMModelAssetMetadataV34PromptPreprocessingTemplateVersionOSgMR);
  }

  else
  {
    v146 = *(v143 + 32);
    v147 = v116;
    v148 = v143;
    v149 = v184;
    v146(v184, v147, v144);
    LLMModelAssetMetadata.PromptPreprocessingTemplateVersion.rawValue.getter();
    v150 = v192;
    PromptPreprocessingTemplateVersion.init(rawValue:)();
    if ((*(v183 + 48))(v150, 1, v115) == 1)
    {
      outlined destroy of [Int](v192, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
      if (one-time initialization token for device == -1)
      {
LABEL_40:
        v151 = type metadata accessor for Logger();
        __swift_project_value_buffer(v151, static Log.device);
        v152 = v194;
        v153 = v178;
        v154 = v184;
        (*(v194 + 16))(v178, v184, v197);
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          *&v228 = v158;
          *v157 = 136315138;
          v159 = LLMModelAssetMetadata.PromptPreprocessingTemplateVersion.rawValue.getter();
          v161 = v160;
          v162 = *(v152 + 8);
          v162(v153, v197);
          v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v161, &v228);

          *(v157 + 4) = v163;
          _os_log_impl(&dword_220940000, v155, v156, "Invalid promptPreprocessingTemplateVersion: %s", v157, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v158);
          v154 = v184;
          MEMORY[0x223D90A10](v158, -1, -1);
          MEMORY[0x223D90A10](v157, -1, -1);
        }

        else
        {

          v162 = *(v152 + 8);
          v162(v153, v197);
        }

        v168 = type metadata accessor for TokenGenerationError();
        lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
        swift_allocError();
        v170 = v169;
        *&v228 = 0;
        *(&v228 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(46);

        *&v228 = 0xD00000000000002CLL;
        *(&v228 + 1) = 0x8000000220AFC8B0;
        v171 = LLMModelAssetMetadata.PromptPreprocessingTemplateVersion.rawValue.getter();
        MEMORY[0x223D8E780](v171);

        TokenGenerationError.Context.init(debugDescription:underlyingError:)();
        (*(*(v168 - 8) + 104))(v170, *MEMORY[0x277D71AF0], v168);
        swift_willThrow();
        v172 = type metadata accessor for URL();
        (*(*(v172 - 8) + 8))(v207, v172);
        (*(*(v225 - 8) + 8))(v236);
        v162(v154, v197);
        a3 = v206;
        return outlined destroy of ModelMetadata(a3);
      }

LABEL_47:
      swift_once();
      goto LABEL_40;
    }

    v164 = type metadata accessor for URL();
    (*(*(v164 - 8) + 8))(v207, v164);
    (*(*(v225 - 8) + 8))(v236);
    (*(v148 + 8))(v149, v144);
    v165 = *(v183 + 32);
    v166 = v177;
    v165(v177, v192, v115);
    v167 = v174;
    outlined destroy of [Int](a3 + v174, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    v165((a3 + v167), v166, v115);
    return v175(a3 + v167, 0, 1, v115);
  }
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog08LLMDraftA13AssetMetadataV05DraftE0VSgMd, &_s12ModelCatalog08LLMDraftA13AssetMetadataV05DraftE0VSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v106 - v8;
  v114 = type metadata accessor for LLMDraftModelAssetMetadata.DraftMetadata();
  v113 = *(v114 - 8);
  v11 = MEMORY[0x28223BE20](v114, v10);
  v108 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v107 = &v106 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog9StopTokenVSgMd, &_s12ModelCatalog9StopTokenVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v118 = &v106 - v17;
  v111 = type metadata accessor for StopToken();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v18);
  v106 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog08LLMDraftA13AssetMetadataV22DeviceSpecialTokensMapVSgMd, &_s12ModelCatalog08LLMDraftA13AssetMetadataV22DeviceSpecialTokensMapVSgMR);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v122 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v106 - v25;
  v27 = type metadata accessor for LLMDraftModelAssetMetadata.DeviceSpecialTokensMap();
  v121 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v116 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for LLMDraftModelAssetMetadata.ANEExtendInfo();
  v30 = *(v134 - 8);
  v32 = MEMORY[0x28223BE20](v134, v31);
  v133 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v132 = &v106 - v35;
  *(a3 + 16) = 0;
  *(a3 + 32) = 0u;
  v115 = (a3 + 32);
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 1;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 2;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 1;
  *(a3 + 256) = 2;
  v36 = *(type metadata accessor for ModelMetadata(0) + 64);
  v37 = type metadata accessor for PromptPreprocessingTemplateVersion();
  (*(*(v37 - 8) + 56))(a3 + v36, 1, 1, v37);
  *a3 = LLMDraftModelAssetMetadata.modelType.getter();
  *(a3 + 8) = v38;
  v39 = MEMORY[0x223D8BFA0]();
  v120 = a2;
  v112 = v9;
  if (v39)
  {
    v40 = v39;
    v109 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference10E5FunctionVGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference10E5FunctionVGMR);
    result = static _DictionaryStorage.copy(original:)();
    v42 = result;
    v43 = 0;
    v44 = *(v40 + 64);
    v117 = v40 + 64;
    v45 = 1 << *(v40 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & v44;
    v48 = (v45 + 63) >> 6;
    v130 = v30 + 2;
    v129 = v30 + 1;
    v128 = result + 64;
    v123 = v48;
    v127 = a1;
    v126 = v27;
    v125 = v26;
    v124 = v40;
    v131 = result;
    if (v47)
    {
      while (1)
      {
        v49 = __clz(__rbit64(v47));
        v135 = (v47 - 1) & v47;
LABEL_11:
        v52 = v49 | (v43 << 6);
        v140 = 16 * v52;
        v53 = *(v40 + 56);
        v54 = (*(v40 + 48) + 16 * v52);
        v55 = v54[1];
        v151 = *v54;
        v56 = v30[2];
        v57 = v132;
        v58 = v134;
        v56(v132, v53 + v30[9] * v52, v134);
        v59 = v133;
        v56(v133, v57, v58);

        v139 = LLMDraftModelAssetMetadata.ANEExtendInfo.type.getter();
        v138 = v60;
        v137 = LLMDraftModelAssetMetadata.ANEExtendInfo.seqLen.getter();
        v136 = LLMDraftModelAssetMetadata.ANEExtendInfo.ctxLen.getter();
        v61 = v30;
        v62 = v30[1];
        v62(v59, v58);
        result = (v62)(v57, v58);
        *(v128 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        v42 = v131;
        v63 = (*(v131 + 48) + v140);
        *v63 = v151;
        v63[1] = v55;
        v64 = (*(v42 + 56) + 48 * v52);
        v65 = v138;
        *v64 = v139;
        v64[1] = v65;
        v64[2] = 0;
        v64[3] = 0;
        v66 = v136;
        v64[4] = v137;
        v64[5] = v66;
        v67 = *(v42 + 16);
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        if (v68)
        {
          break;
        }

        *(v42 + 16) = v69;
        a1 = v127;
        v27 = v126;
        v26 = v125;
        v30 = v61;
        v40 = v124;
        v47 = v135;
        v48 = v123;
        if (!v135)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v50 = v43;
      while (1)
      {
        v43 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v43 >= v48)
        {

          a3 = v109;
          goto LABEL_16;
        }

        v51 = *(v117 + 8 * v43);
        ++v50;
        if (v51)
        {
          v49 = __clz(__rbit64(v51));
          v135 = (v51 - 1) & v51;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v42 = 0;
LABEL_16:
    *(a3 + 24) = v42;
    LLMDraftModelAssetMetadata.specialTokensMap.getter();
    v70 = v121;
    v71 = *(v121 + 48);
    if (v71(v26, 1, v27) == 1)
    {
      outlined destroy of [Int](v26, &_s12ModelCatalog08LLMDraftA13AssetMetadataV22DeviceSpecialTokensMapVSgMd, &_s12ModelCatalog08LLMDraftA13AssetMetadataV22DeviceSpecialTokensMapVSgMR);
    }

    else
    {
      v72 = v116;
      (*(v70 + 32))(v116, v26, v27);
      v73 = v70;
      v74 = specialized SpecialTokenMetadataProtocol.mapToDictionary()();
      (*(v73 + 8))(v72, v27);
      *v115 = v74;
    }

    v75 = v119;
    LLMDraftModelAssetMetadata.specialTokensMap.getter();
    v76 = v122;
    if (v71(v122, 1, v27) == 1)
    {
      outlined destroy of [Int](v76, &_s12ModelCatalog08LLMDraftA13AssetMetadataV22DeviceSpecialTokensMapVSgMd, &_s12ModelCatalog08LLMDraftA13AssetMetadataV22DeviceSpecialTokensMapVSgMR);
      v143 = 0u;
      v144 = 0u;
      *&v145 = 0;
    }

    else
    {
      *(&v144 + 1) = v27;
      *&v145 = MEMORY[0x277D29998];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v143);
      (*(v121 + 32))(boxed_opaque_existential_1, v76, v27);
    }

    v78 = v120;
    v79 = v118;
    v80 = type metadata accessor for LLMDraftModelAssetMetadata();
    lazy protocol witness table accessor for type LLMModelAssetMetadata.DraftMetadata and conformance LLMModelAssetMetadata.DraftMetadata(&lazy protocol witness table cache variable for type LLMDraftModelAssetMetadata and conformance LLMDraftModelAssetMetadata, MEMORY[0x277D299A8], MEMORY[0x277D299A0]);
    AssetMetadata.stopToken(metadataURL:deviceSpecialTokensMap:)();
    if (v75)
    {
      v81 = type metadata accessor for URL();
      (*(*(v81 - 8) + 8))(v78, v81);
      (*(*(v80 - 8) + 8))(a1, v80);
      outlined destroy of [Int](&v143, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMR);
      return outlined destroy of ModelMetadata(a3);
    }

    else
    {
      outlined destroy of [Int](&v143, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMd, &_s12ModelCatalog30DeviceSpecialTokensMapProtocol_pSgMR);
      v82 = v110;
      v83 = v111;
      if ((*(v110 + 48))(v79, 1, v111) == 1)
      {
        outlined destroy of [Int](v79, &_s12ModelCatalog9StopTokenVSgMd, &_s12ModelCatalog9StopTokenVSgMR);
      }

      else
      {
        v84 = *(v82 + 32);
        v151 = 0;
        v85 = v106;
        v84(v106, v79, v83);
        v140 = StopToken.intValue.getter();
        v87 = v86;
        v88 = StopToken.stringValue.getter();
        v90 = v89;
        (*(v82 + 8))(v85, v83);
        v91 = v87 & 1;
        v78 = v120;
        *(a3 + 224) = v140;
        *(a3 + 232) = v91;
        *(a3 + 240) = v88;
        *(a3 + 248) = v90;
      }

      v92 = v114;
      v93 = v112;
      LLMDraftModelAssetMetadata.defaultParameters.getter();
      v94 = v113;
      if ((*(v113 + 48))(v93, 1, v92) == 1)
      {
        outlined destroy of [Int](v93, &_s12ModelCatalog08LLMDraftA13AssetMetadataV05DraftE0VSgMd, &_s12ModelCatalog08LLMDraftA13AssetMetadataV05DraftE0VSgMR);
      }

      else
      {
        v95 = v107;
        (*(v94 + 32))(v107, v93, v92);
        v96 = v108;
        (*(v94 + 16))(v108, v95, v92);
        _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog08LLMDraftj5AssetH0V0gH0V_Tt0g5(v96, v141);
        (*(v94 + 8))(v95, v92);
        v97 = *(a3 + 104);
        v98 = *(a3 + 136);
        v148 = *(a3 + 120);
        v149 = v98;
        v150 = *(a3 + 152);
        v143 = *(a3 + 40);
        v99 = *(a3 + 72);
        v144 = *(a3 + 56);
        v145 = v99;
        v146 = *(a3 + 88);
        v147 = v97;
        outlined destroy of [Int](&v143, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
        v100 = v141[5];
        *(a3 + 104) = v141[4];
        *(a3 + 120) = v100;
        *(a3 + 136) = v141[6];
        v101 = v141[1];
        *(a3 + 40) = v141[0];
        *(a3 + 56) = v101;
        v102 = v141[3];
        *(a3 + 72) = v141[2];
        *(a3 + 152) = v142;
        *(a3 + 88) = v102;
      }

      *(a3 + 160) = LLMDraftModelAssetMetadata.backboneSignature.getter();
      *(a3 + 168) = v103;
      v104 = LLMDraftModelAssetMetadata.prewarmForConstrainedDecoding.getter();
      v105 = type metadata accessor for URL();
      (*(*(v105 - 8) + 8))(v78, v105);
      result = (*(*(v80 - 8) + 8))(a1, v80);
      if (v104 != 2)
      {
        *(a3 + 256) = v104;
      }
    }
  }

  return result;
}

uint64_t AdapterMetadata.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1701869940;
    v7 = 0xD000000000000010;
    v8 = 0xD000000000000011;
    if (a1 != 3)
    {
      v8 = 0xD000000000000016;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656B6F54706F7473;
    v2 = 0xD00000000000001DLL;
    if (a1 != 9)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000025;
    v4 = 0xD000000000000012;
    if (a1 == 6)
    {
      v4 = 0x617A696C61636F6CLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t AdapterMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference15AdapterMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference15AdapterMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v22 = *(v3 + 16);
    LOBYTE(v20[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMR);
    lazy protocol witness table accessor for type [String : MetadataSpecialToken] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + 152);
    v30[4] = *(v3 + 136);
    v30[5] = v10;
    v30[6] = *(v3 + 168);
    v31 = *(v3 + 184);
    v11 = *(v3 + 88);
    v30[0] = *(v3 + 72);
    v30[1] = v11;
    v12 = *(v3 + 120);
    v30[2] = *(v3 + 104);
    v30[3] = v12;
    v13 = *(v3 + 152);
    v26 = *(v3 + 136);
    v27 = v13;
    v28 = *(v3 + 168);
    v29 = *(v3 + 184);
    v14 = *(v3 + 88);
    v22 = *(v3 + 72);
    v23 = v14;
    v15 = *(v3 + 120);
    v24 = *(v3 + 104);
    v25 = v15;
    v33 = 5;
    outlined init with copy of DefaultParameters?(v30, v20);
    lazy protocol witness table accessor for type DefaultParameters and conformance DefaultParameters();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20[4] = v26;
    v20[5] = v27;
    v20[6] = v28;
    v21 = v29;
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v20[3] = v25;
    outlined destroy of [Int](v20, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
    *&v18 = *(v3 + 192);
    v32 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd, &_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMR);
    lazy protocol witness table accessor for type [String : [String : MetadataSpecialToken]] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = *(v3 + 200);
    *&v19 = *(v3 + 216);
    v32 = 7;
    lazy protocol witness table accessor for type ClassifierMetadata and conformance ClassifierMetadata();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v3 + 240);
    v18 = *(v3 + 224);
    v19 = v16;
    v32 = 8;
    lazy protocol witness table accessor for type StopToken and conformance StopToken();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v18) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v18) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AdapterMetadata.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AdapterMetadata.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AdapterMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AdapterMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance AdapterMetadata@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = specialized AdapterMetadata.init(from:)(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x102uLL);
  }

  return result;
}

uint64_t ClassifierMetadata.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference18ClassifierMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference18ClassifierMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  lazy protocol witness table accessor for type ClassifierDefaultOutputClass and conformance ClassifierDefaultOutputClass();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay24TokenGenerationInference21ClassifierOutputClassVGMd, &_sSay24TokenGenerationInference21ClassifierOutputClassVGMR);
    lazy protocol witness table accessor for type [ClassifierOutputClass] and conformance <A> [A](&lazy protocol witness table cache variable for type [ClassifierOutputClass] and conformance <A> [A], lazy protocol witness table accessor for type ClassifierOutputClass and conformance ClassifierOutputClass, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = a4;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay24TokenGenerationInference21ClassifierOutputClassVGGMd, &_sSDySSSay24TokenGenerationInference21ClassifierOutputClassVGGMR);
    lazy protocol witness table accessor for type [String : [ClassifierOutputClass]] and conformance <> [A : B]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassifierMetadata.CodingKeys()
{
  v1 = 0x6C4374757074756FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifierMetadata.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ClassifierMetadata.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifierMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifierMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierMetadata.CodingKeys and conformance ClassifierMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ClassifierMetadata@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized ClassifierMetadata.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t ClassifierOutputClass.encode(to:)(void *a1, uint64_t a2, float a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference21ClassifierOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference21ClassifierOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifierDefaultOutputClass.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64496E656B6F74 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifierDefaultOutputClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifierDefaultOutputClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ClassifierDefaultOutputClass@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference28ClassifierDefaultOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedDecodingContainerVy24TokenGenerationInference28ClassifierDefaultOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ClassifierDefaultOutputClass(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24TokenGenerationInference28ClassifierDefaultOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedEncodingContainerVy24TokenGenerationInference28ClassifierDefaultOutputClassV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifierDefaultOutputClass.CodingKeys and conformance ClassifierDefaultOutputClass.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassifierOutputClass.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x64496E656B6F74;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifierOutputClass.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64496E656B6F74 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000220AFC8E0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifierOutputClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifierOutputClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifierOutputClass.CodingKeys and conformance ClassifierOutputClass.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void protocol witness for Decodable.init(from:) in conformance ClassifierOutputClass(uint64_t a1@<X8>, void *a2@<X0>)
{
  v5 = specialized ClassifierOutputClass.init(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
  }
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSi_SiTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say24TokenGenerationInference21ClassifierOutputClassVGTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = (*(v3 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v3 + 56) + 8 * v12);

      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
      v19 = v18;

      if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
      {
LABEL_27:

        return 0;
      }

      if (v21 && v20 != v16)
      {
        break;
      }

LABEL_19:

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v23 = (v20 + 40);
    v24 = (v16 + 40);
    while (v21)
    {
      if (*(v23 - 1) != *(v24 - 1) || *v23 != *v24)
      {
        goto LABEL_27;
      }

      v23 += 4;
      v24 += 4;
      if (!--v21)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v11 = *(v3 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_24TokenGenerationInference015MetadataSpecialB0OTt1g5(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v26 = (v5 + 63) >> 6;
  v27 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v28 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(result + 56) + 24 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);

    outlined copy of MetadataSpecialToken(v16, v17, v18);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_28;
    }

    v22 = *(a2 + 56) + 24 * v19;
    v23 = *v22;
    if (*(v22 + 16) == 1)
    {
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      v24 = v23 == v16 && *(v22 + 8) == v17;
      if (v24)
      {
        outlined consume of MetadataSpecialToken(v16, v17, 1);
        result = v27;
        v7 = v28;
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined consume of MetadataSpecialToken(v16, v17, 1);
        result = v27;
        v7 = v28;
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v18)
      {
        v18 = 1;
LABEL_28:
        outlined consume of MetadataSpecialToken(v16, v17, v18);
        return 0;
      }

      v24 = v23 == v16;
      result = v27;
      v7 = v28;
      if (!v24)
      {
        return 0;
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v26)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v28 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SDySS24TokenGenerationInference015MetadataSpecialB0OGTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);

    specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v19 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_24TokenGenerationInference015MetadataSpecialB0OTt1g5(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog013LLMModelAssetH0V0gH0V_Tt0g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = 1;
  v4 = MEMORY[0x223D8C1F0]();
  v84 = v5 & 1;
  v6 = MEMORY[0x223D8C210]();
  v7 = MEMORY[0x223D8C220]();
  v83 = v8 & 1;
  v9 = MEMORY[0x223D8C290]();
  v82 = v10 & 1;
  v11 = MEMORY[0x223D8C2A0]();
  *&result = COERCE_DOUBLE(MEMORY[0x223D8C280]());
  v14 = v13;
  v15 = 0.0;
  v16 = 0.0;
  if ((v13 & 1) == 0)
  {
    *&result = COERCE_DOUBLE(MEMORY[0x223D8C280](result));
    if (v17)
    {
      __break(1u);
      goto LABEL_11;
    }

    v16 = *&result;
  }

  v42 = v11;
  v43 = v6;
  v44 = v4;
  v81 = v14 & 1;
  v40 = MEMORY[0x223D8C260](result);
  v18 = MEMORY[0x223D8C230]();
  v19 = COERCE_DOUBLE(MEMORY[0x223D8C2B0]());
  if ((v20 & 1) == 0)
  {
    v15 = v19;
    v80 = 0;
  }

  v41 = v7;
  v21 = MEMORY[0x223D8C1E0](*&v19);
  v22 = MEMORY[0x223D8C250]();
  v79 = v23 & 1;
  v24 = MEMORY[0x223D8C270]();
  v26 = v25;
  *&result = COERCE_DOUBLE(MEMORY[0x223D8C200]());
  v28 = v27;
  v29 = 0.0;
  if (v27)
  {
    goto LABEL_9;
  }

  *&result = COERCE_DOUBLE(MEMORY[0x223D8C200](result));
  if ((v30 & 1) == 0)
  {
    v29 = *&result;
LABEL_9:
    v78 = v28 & 1;
    v31 = MEMORY[0x223D8C240](result);
    v33 = v32;
    v34 = type metadata accessor for LLMModelAssetMetadata.DraftMetadata();
    (*(*(v34 - 8) + 8))(a1, v34);
    v77 = v33 & 1;
    *&v46 = v44;
    BYTE8(v46) = v84;
    BYTE9(v46) = v43;
    *&v47 = v41;
    BYTE8(v47) = v83;
    *&v48 = v9;
    BYTE8(v48) = v82;
    *(&v48 + 3) = v16;
    LOBYTE(v49) = v81;
    BYTE1(v49) = v40;
    BYTE2(v49) = v18;
    *(&v49 + 1) = v15;
    BYTE8(v49) = v80;
    BYTE9(v49) = v21;
    *&v50 = v22;
    BYTE8(v50) = v79;
    *&v51 = v24;
    *(&v51 + 1) = v26;
    *&v52 = v29;
    BYTE4(v52) = v78;
    *(&v52 + 1) = v31;
    LOBYTE(v53) = v33 & 1;
    HIBYTE(v53) = v42;
    v54 = v44;
    v55 = v84;
    v56 = v43;
    v57 = v41;
    v58 = v83;
    v59 = v9;
    v60 = v82;
    v61 = v16;
    v62 = v81;
    v63 = v40;
    v64 = v18;
    v65 = v15;
    v66 = v80;
    v67 = v21;
    v68 = v22;
    v69 = v79;
    v70 = v24;
    v71 = v26;
    v72 = v29;
    v73 = v78;
    v74 = v31;
    v75 = v33 & 1;
    v76 = v42;
    outlined init with copy of DefaultParameters(&v46, v45);
    *&result = COERCE_DOUBLE(outlined destroy of DefaultParameters(&v54));
    v35 = v51;
    v36 = v52;
    v37 = v49;
    *(a2 + 64) = v50;
    *(a2 + 80) = v35;
    *(a2 + 96) = v36;
    v38 = v47;
    v39 = v48;
    *a2 = v46;
    *(a2 + 16) = v38;
    *(a2 + 112) = v53;
    *(a2 + 32) = v39;
    *(a2 + 48) = v37;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog08LLMDraftj5AssetH0V0gH0V_Tt0g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = 1;
  v4 = MEMORY[0x223D8BE50]();
  v84 = v5 & 1;
  v6 = MEMORY[0x223D8BE70]();
  v7 = MEMORY[0x223D8BE80]();
  v83 = v8 & 1;
  v9 = MEMORY[0x223D8BEF0]();
  v82 = v10 & 1;
  v11 = MEMORY[0x223D8BF00]();
  *&result = COERCE_DOUBLE(MEMORY[0x223D8BEE0]());
  v14 = v13;
  v15 = 0.0;
  v16 = 0.0;
  if ((v13 & 1) == 0)
  {
    *&result = COERCE_DOUBLE(MEMORY[0x223D8BEE0](result));
    if (v17)
    {
      __break(1u);
      goto LABEL_11;
    }

    v16 = *&result;
  }

  v42 = v11;
  v43 = v6;
  v44 = v4;
  v81 = v14 & 1;
  v40 = MEMORY[0x223D8BEC0](result);
  v18 = MEMORY[0x223D8BE90]();
  v19 = COERCE_DOUBLE(MEMORY[0x223D8BF10]());
  if ((v20 & 1) == 0)
  {
    v15 = v19;
    v80 = 0;
  }

  v41 = v7;
  v21 = MEMORY[0x223D8BE40](*&v19);
  v22 = MEMORY[0x223D8BEB0]();
  v79 = v23 & 1;
  v24 = MEMORY[0x223D8BED0]();
  v26 = v25;
  *&result = COERCE_DOUBLE(MEMORY[0x223D8BE60]());
  v28 = v27;
  v29 = 0.0;
  if (v27)
  {
    goto LABEL_9;
  }

  *&result = COERCE_DOUBLE(MEMORY[0x223D8BE60](result));
  if ((v30 & 1) == 0)
  {
    v29 = *&result;
LABEL_9:
    v78 = v28 & 1;
    v31 = MEMORY[0x223D8BEA0](result);
    v33 = v32;
    v34 = type metadata accessor for LLMDraftModelAssetMetadata.DraftMetadata();
    (*(*(v34 - 8) + 8))(a1, v34);
    v77 = v33 & 1;
    *&v46 = v44;
    BYTE8(v46) = v84;
    BYTE9(v46) = v43;
    *&v47 = v41;
    BYTE8(v47) = v83;
    *&v48 = v9;
    BYTE8(v48) = v82;
    *(&v48 + 3) = v16;
    LOBYTE(v49) = v81;
    BYTE1(v49) = v40;
    BYTE2(v49) = v18;
    *(&v49 + 1) = v15;
    BYTE8(v49) = v80;
    BYTE9(v49) = v21;
    *&v50 = v22;
    BYTE8(v50) = v79;
    *&v51 = v24;
    *(&v51 + 1) = v26;
    *&v52 = v29;
    BYTE4(v52) = v78;
    *(&v52 + 1) = v31;
    LOBYTE(v53) = v33 & 1;
    HIBYTE(v53) = v42;
    v54 = v44;
    v55 = v84;
    v56 = v43;
    v57 = v41;
    v58 = v83;
    v59 = v9;
    v60 = v82;
    v61 = v16;
    v62 = v81;
    v63 = v40;
    v64 = v18;
    v65 = v15;
    v66 = v80;
    v67 = v21;
    v68 = v22;
    v69 = v79;
    v70 = v24;
    v71 = v26;
    v72 = v29;
    v73 = v78;
    v74 = v31;
    v75 = v33 & 1;
    v76 = v42;
    outlined init with copy of DefaultParameters(&v46, v45);
    *&result = COERCE_DOUBLE(outlined destroy of DefaultParameters(&v54));
    v35 = v51;
    v36 = v52;
    v37 = v49;
    *(a2 + 64) = v50;
    *(a2 + 80) = v35;
    *(a2 + 96) = v36;
    v38 = v47;
    v39 = v48;
    *a2 = v46;
    *(a2 + 16) = v38;
    *(a2 + 112) = v53;
    *(a2 + 32) = v39;
    *(a2 + 48) = v37;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t _s24TokenGenerationInference17DefaultParametersV4fromAcA21DraftMetadataProtocol_p_tcfCTf4en_n12ModelCatalog015LLMAdapterAssetH0V0gH0V_Tt0g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = 1;
  v4 = MEMORY[0x223D8C550]();
  v84 = v5 & 1;
  v6 = MEMORY[0x223D8C570]();
  v7 = MEMORY[0x223D8C580]();
  v83 = v8 & 1;
  v9 = MEMORY[0x223D8C5F0]();
  v82 = v10 & 1;
  v11 = MEMORY[0x223D8C600]();
  *&result = COERCE_DOUBLE(MEMORY[0x223D8C5E0]());
  v14 = v13;
  v15 = 0.0;
  v16 = 0.0;
  if ((v13 & 1) == 0)
  {
    *&result = COERCE_DOUBLE(MEMORY[0x223D8C5E0](result));
    if (v17)
    {
      __break(1u);
      goto LABEL_11;
    }

    v16 = *&result;
  }

  v42 = v11;
  v43 = v6;
  v44 = v4;
  v81 = v14 & 1;
  v40 = MEMORY[0x223D8C5C0](result);
  v18 = MEMORY[0x223D8C590]();
  v19 = COERCE_DOUBLE(MEMORY[0x223D8C610]());
  if ((v20 & 1) == 0)
  {
    v15 = v19;
    v80 = 0;
  }

  v41 = v7;
  v21 = MEMORY[0x223D8C540](*&v19);
  v22 = MEMORY[0x223D8C5B0]();
  v79 = v23 & 1;
  v24 = MEMORY[0x223D8C5D0]();
  v26 = v25;
  *&result = COERCE_DOUBLE(MEMORY[0x223D8C560]());
  v28 = v27;
  v29 = 0.0;
  if (v27)
  {
    goto LABEL_9;
  }

  *&result = COERCE_DOUBLE(MEMORY[0x223D8C560](result));
  if ((v30 & 1) == 0)
  {
    v29 = *&result;
LABEL_9:
    v78 = v28 & 1;
    v31 = MEMORY[0x223D8C5A0](result);
    v33 = v32;
    v34 = type metadata accessor for LLMAdapterAssetMetadata.DraftMetadata();
    (*(*(v34 - 8) + 8))(a1, v34);
    v77 = v33 & 1;
    *&v46 = v44;
    BYTE8(v46) = v84;
    BYTE9(v46) = v43;
    *&v47 = v41;
    BYTE8(v47) = v83;
    *&v48 = v9;
    BYTE8(v48) = v82;
    *(&v48 + 3) = v16;
    LOBYTE(v49) = v81;
    BYTE1(v49) = v40;
    BYTE2(v49) = v18;
    *(&v49 + 1) = v15;
    BYTE8(v49) = v80;
    BYTE9(v49) = v21;
    *&v50 = v22;
    BYTE8(v50) = v79;
    *&v51 = v24;
    *(&v51 + 1) = v26;
    *&v52 = v29;
    BYTE4(v52) = v78;
    *(&v52 + 1) = v31;
    LOBYTE(v53) = v33 & 1;
    HIBYTE(v53) = v42;
    v54 = v44;
    v55 = v84;
    v56 = v43;
    v57 = v41;
    v58 = v83;
    v59 = v9;
    v60 = v82;
    v61 = v16;
    v62 = v81;
    v63 = v40;
    v64 = v18;
    v65 = v15;
    v66 = v80;
    v67 = v21;
    v68 = v22;
    v69 = v79;
    v70 = v24;
    v71 = v26;
    v72 = v29;
    v73 = v78;
    v74 = v31;
    v75 = v33 & 1;
    v76 = v42;
    outlined init with copy of DefaultParameters(&v46, v45);
    *&result = COERCE_DOUBLE(outlined destroy of DefaultParameters(&v54));
    v35 = v51;
    v36 = v52;
    v37 = v49;
    *(a2 + 64) = v50;
    *(a2 + 80) = v35;
    *(a2 + 96) = v36;
    v38 = v47;
    v39 = v48;
    *a2 = v46;
    *(a2 + 16) = v38;
    *(a2 + 112) = v53;
    *(a2 + 32) = v39;
    *(a2 + 48) = v37;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t specialized static ClassifierMetadata.== infix(_:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != a4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  if (v6 != *(a5 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = a2 == a5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_15:
    if (a3)
    {
      if (a6)
      {
        v12 = a3;

        LOBYTE(v12) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say24TokenGenerationInference21ClassifierOutputClassVGTt1g5(v12, a6);

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  v8 = (a2 + 40);
  v9 = (a5 + 40);
  while (v6)
  {
    if (*(v8 - 1) != *(v9 - 1) || *v8 != *v9)
    {
      return 0;
    }

    v8 += 4;
    v9 += 4;
    if (!--v6)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized MetadataSpecialToken.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t specialized E5Function.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5472657470616461 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E654C716573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E654C787463 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized E5Function.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference10E5FunctionV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedDecodingContainerVy24TokenGenerationInference10E5FunctionV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type E5Function.CodingKeys and conformance E5Function.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = 0;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = v11;
    v22 = v10;
    v25 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    v21 = v13;
    v24 = 2;
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = 3;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v17 = v21;
    *a2 = v22;
    a2[1] = v12;
    a2[2] = v17;
    a2[3] = v15;
    v18 = v19;
    a2[4] = v20;
    a2[5] = v18;
  }

  return result;
}

uint64_t specialized StopToken.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference04StopD0V10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedDecodingContainerVy24TokenGenerationInference04StopD0V10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type StopToken.CodingKeys and conformance StopToken.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t specialized DefaultParameters.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574537466617264 && a2 == 0xEA00000000007370;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4173497466617264 && a2 == 0xEF65766974706164 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572547466617264 && a2 == 0xEF726F7463614665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000220AFCA50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220AFCA70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220AFB270 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220AFCA90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000220AFCAB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000220AFB2B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220AFB2D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000220AFCAE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220AFB2F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000220AFCB00 == a2)
  {

    return 13;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t specialized DefaultParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference17DefaultParametersV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedDecodingContainerVy24TokenGenerationInference17DefaultParametersV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v31 - v8;
  v112 = 1;
  v109 = 1;
  v107 = 1;
  v104 = 1;
  v103 = 1;
  v100 = 1;
  v98 = 1;
  v95 = 1;
  v10 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type DefaultParameters.CodingKeys and conformance DefaultParameters.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v113 = v2;
    v47 = 0;
    v48 = 0;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v62 = 0;
    v63 = v112;
    v64 = 2;
    v65 = v110;
    v66 = v111;
    v67 = 0;
    v68 = v109;
    *v69 = *v108;
    *&v69[3] = *&v108[3];
    v70 = 0;
    v71 = v107;
    v73 = v106;
    v72 = v105;
    v74 = 0;
    v75 = v104;
    v76 = 2;
    v77 = 2;
    v78 = v47;
    v79 = v103;
    v80 = 2;
    v81 = v101;
    v82 = v102;
    v83 = v52;
    v84 = v100;
    *&v85[3] = *&v99[3];
    *v85 = *v99;
    v86 = v51;
    v87 = v50;
    v88 = v49;
    v89 = v98;
    v91 = v97;
    v90 = v96;
    v92 = v48;
    v93 = v95;
    v94 = 2;
    return outlined destroy of DefaultParameters(&v62);
  }

  else
  {
    LOBYTE(v62) = 0;
    v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v112 = v12 & 1;
    LOBYTE(v62) = 1;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v62) = 2;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v109 = v13 & 1;
    LOBYTE(v62) = 3;
    v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v107 = v14 & 1;
    LOBYTE(v62) = 4;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v104 = BYTE4(v41) & 1;
    LOBYTE(v62) = 5;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v62) = 6;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v62) = 7;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v103 = BYTE4(v47) & 1;
    LOBYTE(v62) = 8;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v113 = 0;
    v38 = v15;
    LOBYTE(v62) = 9;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v113 = 0;
    v100 = v16 & 1;
    LOBYTE(v62) = 10;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v18;
    v51 = v17;
    v113 = 0;
    LOBYTE(v62) = 11;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v113 = 0;
    v98 = BYTE4(v49) & 1;
    LOBYTE(v62) = 12;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v113 = 0;
    v95 = v19 & 1;
    v61 = 13;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v113 = 0;
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    v22 = v45;
    *&v53 = v45;
    v23 = v112;
    BYTE8(v53) = v112;
    v24 = v44;
    BYTE9(v53) = v44;
    v25 = v43;
    *&v54 = v43;
    v31 = v109;
    BYTE8(v54) = v109;
    *&v55 = v42;
    v32 = v107;
    BYTE8(v55) = v107;
    HIDWORD(v55) = v41;
    v34 = v104;
    LOBYTE(v56) = v104;
    BYTE1(v56) = v40;
    BYTE2(v56) = v39;
    v26 = v47;
    DWORD1(v56) = v47;
    v33 = v103;
    BYTE8(v56) = v103;
    v27 = v38;
    BYTE9(v56) = v38;
    *&v57 = v52;
    v35 = v100;
    BYTE8(v57) = v100;
    *&v58 = v51;
    *(&v58 + 1) = v50;
    LODWORD(v59) = v49;
    v36 = v98;
    BYTE4(v59) = v98;
    *(&v59 + 1) = v48;
    v37 = v95;
    LOBYTE(v60) = v95;
    HIBYTE(v60) = v21;
    outlined init with copy of DefaultParameters(&v53, &v62);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v62 = v22;
    v63 = v23;
    v64 = v24;
    v65 = v110;
    v66 = v111;
    v67 = v25;
    v68 = v31;
    *v69 = *v108;
    *&v69[3] = *&v108[3];
    v70 = v42;
    v71 = v32;
    v73 = v106;
    v72 = v105;
    v74 = v41;
    v75 = v34;
    v76 = v40;
    v77 = v39;
    v78 = v26;
    v79 = v33;
    v80 = v27;
    v81 = v101;
    v82 = v102;
    v83 = v52;
    v84 = v35;
    *v85 = *v99;
    *&v85[3] = *&v99[3];
    v86 = v51;
    v87 = v50;
    v88 = v49;
    v89 = v36;
    v91 = v97;
    v90 = v96;
    v92 = v48;
    v93 = v37;
    v94 = v21;
    result = outlined destroy of DefaultParameters(&v62);
    v28 = v58;
    *(a2 + 64) = v57;
    *(a2 + 80) = v28;
    *(a2 + 96) = v59;
    *(a2 + 112) = v60;
    v29 = v54;
    *a2 = v53;
    *(a2 + 16) = v29;
    v30 = v56;
    *(a2 + 32) = v55;
    *(a2 + 48) = v30;
  }

  return result;
}

uint64_t specialized ModelMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546C65646F6DLL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220AFCB20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220AFCB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220AFC940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220AFCB60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220AFC980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000220AFCB80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220AFCA30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220AFC9F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656B6F54706F7473 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000220AFCA10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000220AFCBA0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t specialized AdapterMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220AFC940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220AFC960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000220AFC980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000220AFC9A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000220AFC9C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220AFC9F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656B6F54706F7473 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000220AFCA10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000220AFCA30 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

void *specialized AdapterMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24TokenGenerationInference15AdapterMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMd, &_ss22KeyedDecodingContainerVy24TokenGenerationInference15AdapterMetadataV10CodingKeys33_00FC6DBF691860C008D9C69E9A6F04F6LLOGMR);
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v6);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AdapterMetadata.CodingKeys and conformance AdapterMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v120 = 0;
    v54 = 0;
    v55 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v41 = 0;
    v42 = 1;

    v57 = v120;
    v58 = v55;
    v59 = v54;
    v60 = v53;
    v61 = v52;
    v62 = v51;
    v63 = v50;
    v64 = v49;
    v65 = v48;
    v66 = v47;
    v67 = v46;
    v68 = v42;
    v69 = v45;
    v70 = v44;
    LOWORD(v71) = v43;
    outlined destroy of [Int](&v57, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);

    outlined consume of ClassifierMetadata?(0, 0, 0);
    return outlined consume of StopToken?(0, 0, 0, 1);
  }

  else
  {
    v9 = a1;
    v10 = v5;
    v11 = a2;
    LOBYTE(v57) = 0;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v13;
    v37 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMR);
    LOBYTE(v56[0]) = 1;
    lazy protocol witness table accessor for type [String : MetadataSpecialToken] and conformance <> [A : B]();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v38 = v57;
    LOBYTE(v57) = 2;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = a1;
    v33 = v14;
    v34 = v15;
    LOBYTE(v57) = 3;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = v16;
    LOBYTE(v57) = 4;
    v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v119 = v17 & 1;
    v100 = 5;
    lazy protocol witness table accessor for type DefaultParameters and conformance DefaultParameters();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v120 = v101;
    v54 = v103;
    v55 = v102;
    v52 = v105;
    v53 = v104;
    v50 = v107;
    v51 = v106;
    v48 = v109;
    v49 = v108;
    v46 = v111;
    v47 = v110;
    v42 = v112;
    v44 = v114;
    v45 = v113;
    v43 = v115;
    memset(v94, 0, sizeof(v94));
    v95 = 0;
    v96 = 1;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    outlined destroy of [Int](v94, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd, &_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMR);
    LOBYTE(v56[0]) = 6;
    lazy protocol witness table accessor for type [String : [String : MetadataSpecialToken]] and conformance <> [A : B]();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v41 = v57;
    LOBYTE(v56[0]) = 7;
    lazy protocol witness table accessor for type ClassifierMetadata and conformance ClassifierMetadata();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = v57;
    v29 = v58;
    v30 = v59;
    LOBYTE(v56[0]) = 8;
    lazy protocol witness table accessor for type StopToken and conformance StopToken();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v58;
    v26 = v57;
    v27 = v59;
    v35 = v60;
    LOBYTE(v57) = 9;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v93 = 10;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v10 + 8))(v8, v40);
    v20 = v37;
    v56[0] = v37;
    v56[1] = v39;
    v56[2] = v38;
    v56[3] = v33;
    v22 = v31;
    v21 = v32;
    v56[4] = v34;
    v56[5] = v32;
    v56[6] = v36;
    v56[7] = v31;
    LODWORD(v40) = v119;
    LOBYTE(v56[8]) = v119;
    v56[9] = v120;
    v56[10] = v55;
    v56[11] = v54;
    v56[12] = v53;
    v56[13] = v52;
    v56[14] = v51;
    v56[15] = v50;
    v56[16] = v49;
    v56[17] = v48;
    v56[18] = v47;
    v56[19] = v46;
    v56[20] = v42;
    v56[21] = v45;
    v56[22] = v44;
    LOWORD(v56[23]) = v43;
    v56[24] = v41;
    v56[25] = v28;
    v56[26] = v29;
    v56[27] = v30;
    v56[28] = v26;
    v56[29] = v25;
    v56[30] = v27;
    v56[31] = v35;
    LOBYTE(v56[32]) = v18;
    BYTE1(v56[32]) = v19;
    outlined init with copy of AdapterMetadata(v56, &v57);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v57 = v20;
    v58 = v39;
    v59 = v38;
    v60 = v33;
    v61 = v34;
    v62 = v21;
    v63 = v36;
    v64 = v22;
    LOBYTE(v65) = v40;
    *(&v65 + 1) = v118[0];
    HIDWORD(v65) = *(v118 + 3);
    v66 = v120;
    v67 = v55;
    v68 = v54;
    v69 = v53;
    v70 = v52;
    v71 = v51;
    v72 = v50;
    v73 = v49;
    v74 = v48;
    v75 = v47;
    v76 = v46;
    v77 = v42;
    v78 = v45;
    v79 = v44;
    v80 = v43;
    v81 = v116;
    v82 = v117;
    v83 = v41;
    v84 = v28;
    v85 = v29;
    v86 = v30;
    v87 = v26;
    v88 = v25;
    v89 = v27;
    v90 = v35;
    v91 = v18;
    v92 = v19;
    outlined destroy of AdapterMetadata(&v57);
    return memcpy(v11, v56, 0x102uLL);
  }
}