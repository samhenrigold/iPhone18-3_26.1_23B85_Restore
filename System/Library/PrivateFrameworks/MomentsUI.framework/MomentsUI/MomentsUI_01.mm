uint64_t specialized static Exif.filterVideo(inputURL:outputURL:)(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for UTType();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for URLResourceValues();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static Exif.filterVideo(inputURL:outputURL:), 0, 0);
}

uint64_t specialized static Exif.filterVideo(inputURL:outputURL:)()
{
  v118 = v0;
  v1 = COERCE_DOUBLE(specialized static DefaultsManager.MomentsUIDomain.doubleValueFor(_:)());
  if (v2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  if (v3 > 0.0)
  {
    if (one-time initialization token for interstitial != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    v0[27] = __swift_project_value_buffer(v4, static CommonLogger.interstitial);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_21607C000, v5, v6, "[EXIF] Background Processing Fake Work for %{public}f seconds BEGIN", v7, 0xCu);
      MEMORY[0x21CE94770](v7, -1, -1);
    }

    v8 = static Duration.seconds(_:)();
    v10 = v9;
    static Clock<>.continuous.getter();
    v11 = swift_task_alloc();
    v0[28] = v11;
    *v11 = v0;
    v11[1] = specialized static Exif.filterVideo(inputURL:outputURL:);

    return specialized Clock.sleep(for:tolerance:)(v8, v10, 0, 0, 1);
  }

  if (one-time initialization token for exif != -1)
  {
    swift_once();
  }

  v13 = v0[23];
  v14 = v0[17];
  v15 = v0[18];
  v16 = v0[7];
  v17 = type metadata accessor for Logger();
  v0[30] = __swift_project_value_buffer(v17, static CommonLogger.exif);
  v18 = *(v15 + 16);
  v0[31] = v18;
  v0[32] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  log = v18;
  (v18)(v13, v16, v14);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[23];
  v24 = v0[17];
  v23 = v0[18];
  if (v21)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v117[0] = v26;
    *v25 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v30 = v24;
    v31 = *(v23 + 8);
    v31(v22, v30);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v117);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_21607C000, v19, v20, "Exif.filterVideo() resourceValues for %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x21CE94770](v26, -1, -1);
    MEMORY[0x21CE94770](v25, -1, -1);
  }

  else
  {

    v33 = v24;
    v31 = *(v23 + 8);
    v31(v22, v33);
  }

  v0[33] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v35 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v36 = v35;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSURLResourceKey(inited + 32);
  URL.resourceValues(forKeys:)();
  v38 = v0[10];
  v37 = v0[11];
  v39 = v0[9];

  URLResourceValues.contentType.getter();
  if ((*(v37 + 48))(v39, 1, v38) == 1)
  {
    v41 = v0[15];
    v40 = v0[16];
    v42 = v0[14];
    outlined destroy of UTType?(v0[9], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();
    (*(v41 + 8))(v40, v42);
LABEL_28:

    v107 = v0[1];

    return v107();
  }

  v45 = v0[12];
  v44 = v0[13];
  v47 = v0[10];
  v46 = v0[11];
  (*(v46 + 32))(v44, v0[9], v47);
  (*(v46 + 16))(v45, v44, v47);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v0[11];
  v52 = v0[12];
  v53 = v0[10];
  v110 = v31;
  if (v50)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v117[0] = v55;
    *v54 = 136315138;
    v56 = UTType.identifier.getter();
    v58 = v57;
    v59 = v53;
    v60 = *(v51 + 8);
    v60(v52, v59);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v117);

    *(v54 + 4) = v61;
    _os_log_impl(&dword_21607C000, v48, v49, "Exif.filterVideo() inputType: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x21CE94770](v55, -1, -1);
    MEMORY[0x21CE94770](v54, -1, -1);
  }

  else
  {

    v62 = v53;
    v60 = *(v51 + 8);
    v60(v52, v62);
  }

  v0[34] = v60;
  v63 = UTType.identifier.getter();
  v64 = MEMORY[0x21CE91FC0](v63);
  v0[35] = v64;
  v65 = v64;

  v66 = objc_allocWithZone(MEMORY[0x277CE6650]);
  URL._bridgeToObjectiveC()(v67);
  v69 = v68;
  v70 = [v66 initWithURL:v68 options:0];
  v0[36] = v70;

  v71 = [objc_allocWithZone(MEMORY[0x277CE6400]) initWithAsset:v70 presetName:*MEMORY[0x277CE5C78]];
  v0[37] = v71;
  if (!v71)
  {
    v115 = v60;

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_21607C000, v99, v100, "Exif.filterVideo() Creating AVAssetExportSession failed", v101, 2u);
      MEMORY[0x21CE94770](v101, -1, -1);
    }

    v102 = v0[15];
    logb = v0[16];
    v104 = v0[13];
    v103 = v0[14];
    v105 = v0[10];

    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v106 = 1;
    swift_willThrow();

    v115(v104, v105);
    (*(v102 + 8))(logb, v103);
    goto LABEL_28;
  }

  v72 = v71;
  v74 = v0[21];
  v73 = v0[22];
  v75 = v0[17];
  v77 = v0[7];
  v76 = v0[8];
  v78 = [objc_opt_self() metadataItemFilterForSharing];
  [v72 setMetadataItemFilter_];

  (log)(v73, v77, v75);
  (log)(v74, v76, v75);
  v79 = v65;
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.info.getter();

  v82 = os_log_type_enabled(v80, v81);
  v84 = v0[21];
  v83 = v0[22];
  v85 = v0[17];
  if (v82)
  {
    v86 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v117[0] = v114;
    *v86 = 136315650;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v116 = v79;
    v87 = dispatch thunk of CustomStringConvertible.description.getter();
    loga = v80;
    v89 = v88;
    v110(v83, v85);
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, v117);

    *(v86 + 4) = v90;
    *(v86 + 12) = 2080;
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v92;
    v110(v84, v85);
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, v117);

    *(v86 + 14) = v94;
    *(v86 + 22) = 2080;
    v79 = v116;
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v117);

    *(v86 + 24) = v98;
    _os_log_impl(&dword_21607C000, loga, v81, "Exif.filterVideo() Exporting %s to %s as %s", v86, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v114, -1, -1);
    MEMORY[0x21CE94770](v86, -1, -1);
  }

  else
  {

    v110(v84, v85);
    v110(v83, v85);
  }

  v108 = swift_task_alloc();
  v0[38] = v108;
  *v108 = v0;
  v108[1] = specialized static Exif.filterVideo(inputURL:outputURL:);
  v109 = v0[8];

  return MEMORY[0x2821FAED0](v109, v79, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = v2[26];
  v4 = v2[25];
  v5 = v2[24];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = specialized static Exif.filterVideo(inputURL:outputURL:);
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = specialized static Exif.filterVideo(inputURL:outputURL:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = specialized static Exif.filterVideo(inputURL:outputURL:);
  }

  else
  {
    v2 = specialized static Exif.filterVideo(inputURL:outputURL:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 80);

  v2(v7, v8);
  (*(v5 + 8))(v4, v6);

  v9 = *(v0 + 8);

  return v9();
}

{
  v44 = v0;
  v1 = v0[39];
  v2 = v0[31];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[8];
  v2(v0[20], v0[7], v4);
  v2(v3, v5, v4);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v39 = v0[39];
    v9 = v0[33];
    v37 = v8;
    v10 = v0[20];
    v36 = v0[19];
    v11 = v0[17];
    v12 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43[0] = v41;
    *v12 = 136315650;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v9(v10, v11);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v43);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v9(v36, v11);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v43);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2112;
    v21 = v39;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v22;
    *v38 = v22;
    _os_log_impl(&dword_21607C000, v7, v37, "Exif.filterVideo() Exporting %s to %s %@", v12, 0x20u);
    outlined destroy of UTType?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x21CE94770](v38, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v41, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  else
  {
    v23 = v0[33];
    v25 = v0[19];
    v24 = v0[20];
    v26 = v0[17];

    v23(v25, v26);
    v23(v24, v26);
  }

  v28 = v0[36];
  v27 = v0[37];
  v30 = v0[34];
  v29 = v0[35];
  v31 = v0[15];
  v32 = v0[13];
  v40 = v0[14];
  v42 = v0[16];
  v33 = v0[10];
  swift_willThrow();

  v30(v32, v33);
  (*(v31 + 8))(v42, v40);

  v34 = v0[1];

  return v34();
}

uint64_t specialized static Exif.filterVideo(inputURL:outputURL:)(uint64_t a1)
{
  v111 = v1;
  v2 = v1[29];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[EXIF] Background Processing Fake Work END", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  if (one-time initialization token for exif != -1)
  {
    swift_once();
  }

  v6 = v1[23];
  v7 = v1[17];
  v8 = v1[18];
  v9 = v1[7];
  v10 = type metadata accessor for Logger();
  v1[30] = __swift_project_value_buffer(v10, static CommonLogger.exif);
  v11 = *(v8 + 16);
  v1[31] = v11;
  v1[32] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  log = v11;
  (v11)(v6, v9, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v1[23];
  v17 = v1[17];
  v16 = v1[18];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v110[0] = v102;
    *v18 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v101 = v13;
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v15, v17);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v110);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_21607C000, v12, v101, "Exif.filterVideo() resourceValues for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v102);
    MEMORY[0x21CE94770](v102, -1, -1);
    MEMORY[0x21CE94770](v18, -1, -1);
  }

  else
  {

    v22 = *(v16 + 8);
    v22(v15, v17);
  }

  v1[33] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v25 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v26 = v25;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSURLResourceKey(inited + 32);
  URL.resourceValues(forKeys:)();
  if (v2)
  {

LABEL_21:

    v97 = v1[1];

    return v97();
  }

  v27 = v1[10];
  v28 = v1[11];
  v29 = v1[9];

  URLResourceValues.contentType.getter();
  if ((*(v28 + 48))(v29, 1, v27) == 1)
  {
    v31 = v1[15];
    v30 = v1[16];
    v32 = v1[14];
    outlined destroy of UTType?(v1[9], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();
    (*(v31 + 8))(v30, v32);
    goto LABEL_21;
  }

  v34 = v1[12];
  v35 = v1[13];
  v36 = v1[10];
  v37 = v1[11];
  (*(v37 + 32))(v35, v1[9], v36);
  (*(v37 + 16))(v34, v35, v36);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  v40 = os_log_type_enabled(v38, v39);
  v42 = v1[11];
  v41 = v1[12];
  v43 = v1[10];
  v103 = v22;
  if (v40)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v110[0] = v45;
    *v44 = 136315138;
    v46 = UTType.identifier.getter();
    v48 = v47;
    v49 = v43;
    v50 = *(v42 + 8);
    v50(v41, v49);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v110);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_21607C000, v38, v39, "Exif.filterVideo() inputType: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x21CE94770](v45, -1, -1);
    MEMORY[0x21CE94770](v44, -1, -1);
  }

  else
  {

    v52 = v43;
    v50 = *(v42 + 8);
    v50(v41, v52);
  }

  v1[34] = v50;
  v53 = UTType.identifier.getter();
  v54 = MEMORY[0x21CE91FC0](v53);
  v1[35] = v54;
  v55 = v54;

  v56 = objc_allocWithZone(MEMORY[0x277CE6650]);
  URL._bridgeToObjectiveC()(v57);
  v59 = v58;
  v60 = [v56 initWithURL:v58 options:0];
  v1[36] = v60;

  v61 = [objc_allocWithZone(MEMORY[0x277CE6400]) initWithAsset:v60 presetName:*MEMORY[0x277CE5C78]];
  v1[37] = v61;
  if (!v61)
  {
    v108 = v50;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_21607C000, v89, v90, "Exif.filterVideo() Creating AVAssetExportSession failed", v91, 2u);
      MEMORY[0x21CE94770](v91, -1, -1);
    }

    v92 = v1[15];
    logb = v1[16];
    v94 = v1[13];
    v93 = v1[14];
    v95 = v1[10];

    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v96 = 1;
    swift_willThrow();

    v108(v94, v95);
    (*(v92 + 8))(logb, v93);
    goto LABEL_21;
  }

  v62 = v61;
  v63 = v1[21];
  v64 = v1[22];
  v65 = v1[17];
  v67 = v1[7];
  v66 = v1[8];
  v68 = [objc_opt_self() metadataItemFilterForSharing];
  [v62 setMetadataItemFilter_];

  (log)(v64, v67, v65);
  (log)(v63, v66, v65);
  v69 = v55;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();

  v72 = os_log_type_enabled(v70, v71);
  v74 = v1[21];
  v73 = v1[22];
  v75 = v1[17];
  if (v72)
  {
    v76 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v110[0] = v107;
    *v76 = 136315650;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v109 = v69;
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    loga = v70;
    v79 = v78;
    v103(v73, v75);
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v110);

    *(v76 + 4) = v80;
    *(v76 + 12) = 2080;
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    v83 = v82;
    v103(v74, v75);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v110);

    *(v76 + 14) = v84;
    *(v76 + 22) = 2080;
    v69 = v109;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v110);

    *(v76 + 24) = v88;
    _os_log_impl(&dword_21607C000, loga, v71, "Exif.filterVideo() Exporting %s to %s as %s", v76, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v107, -1, -1);
    MEMORY[0x21CE94770](v76, -1, -1);
  }

  else
  {

    v103(v74, v75);
    v103(v73, v75);
  }

  v99 = swift_task_alloc();
  v1[38] = v99;
  *v99 = v1;
  v99[1] = specialized static Exif.filterVideo(inputURL:outputURL:);
  v100 = v1[8];

  return MEMORY[0x2821FAED0](v100, v69, 0, 0);
}

{
  v111 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[EXIF] Background Processing Fake Work END", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  if (one-time initialization token for exif != -1)
  {
    swift_once();
  }

  v5 = v1[23];
  v6 = v1[17];
  v7 = v1[18];
  v8 = v1[7];
  v9 = type metadata accessor for Logger();
  v1[30] = __swift_project_value_buffer(v9, static CommonLogger.exif);
  v10 = *(v7 + 16);
  v1[31] = v10;
  v1[32] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  log = v10;
  (v10)(v5, v8, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v1[23];
  v16 = v1[17];
  v15 = v1[18];
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v110[0] = v18;
    *v17 = 136315138;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v22 = v16;
    v23 = *(v15 + 8);
    v23(v14, v22);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v110);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_21607C000, v11, v12, "Exif.filterVideo() resourceValues for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x21CE94770](v18, -1, -1);
    MEMORY[0x21CE94770](v17, -1, -1);
  }

  else
  {

    v25 = v16;
    v23 = *(v15 + 8);
    v23(v14, v25);
  }

  v1[33] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21658CA50;
  v27 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v28 = v27;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of NSURLResourceKey(inited + 32);
  URL.resourceValues(forKeys:)();
  v30 = v1[10];
  v29 = v1[11];
  v31 = v1[9];

  URLResourceValues.contentType.getter();
  if ((*(v29 + 48))(v31, 1, v30) == 1)
  {
    v33 = v1[15];
    v32 = v1[16];
    v34 = v1[14];
    outlined destroy of UTType?(v1[9], &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
    (*(v33 + 8))(v32, v34);
LABEL_19:

    v99 = v1[1];

    return v99();
  }

  v37 = v1[12];
  v36 = v1[13];
  v39 = v1[10];
  v38 = v1[11];
  (*(v38 + 32))(v36, v1[9], v39);
  (*(v38 + 16))(v37, v36, v39);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v1[11];
  v44 = v1[12];
  v45 = v1[10];
  v103 = v23;
  if (v42)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v110[0] = v47;
    *v46 = 136315138;
    v48 = UTType.identifier.getter();
    v50 = v49;
    v51 = v45;
    v52 = *(v43 + 8);
    v52(v44, v51);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v110);

    *(v46 + 4) = v53;
    _os_log_impl(&dword_21607C000, v40, v41, "Exif.filterVideo() inputType: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x21CE94770](v47, -1, -1);
    MEMORY[0x21CE94770](v46, -1, -1);
  }

  else
  {

    v54 = v45;
    v52 = *(v43 + 8);
    v52(v44, v54);
  }

  v1[34] = v52;
  v55 = UTType.identifier.getter();
  v56 = MEMORY[0x21CE91FC0](v55);
  v1[35] = v56;
  v57 = v56;

  v58 = objc_allocWithZone(MEMORY[0x277CE6650]);
  URL._bridgeToObjectiveC()(v59);
  v61 = v60;
  v62 = [v58 initWithURL:v60 options:0];
  v1[36] = v62;

  v63 = [objc_allocWithZone(MEMORY[0x277CE6400]) initWithAsset:v62 presetName:*MEMORY[0x277CE5C78]];
  v1[37] = v63;
  if (!v63)
  {
    v108 = v52;

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_21607C000, v91, v92, "Exif.filterVideo() Creating AVAssetExportSession failed", v93, 2u);
      MEMORY[0x21CE94770](v93, -1, -1);
    }

    v94 = v1[15];
    logb = v1[16];
    v96 = v1[13];
    v95 = v1[14];
    v97 = v1[10];

    lazy protocol witness table accessor for type Exif.ExifError and conformance Exif.ExifError();
    swift_allocError();
    *v98 = 1;
    swift_willThrow();

    v108(v96, v97);
    (*(v94 + 8))(logb, v95);
    goto LABEL_19;
  }

  v64 = v63;
  v66 = v1[21];
  v65 = v1[22];
  v67 = v1[17];
  v69 = v1[7];
  v68 = v1[8];
  v70 = [objc_opt_self() metadataItemFilterForSharing];
  [v64 setMetadataItemFilter_];

  (log)(v65, v69, v67);
  (log)(v66, v68, v67);
  v71 = v57;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();

  v74 = os_log_type_enabled(v72, v73);
  v76 = v1[21];
  v75 = v1[22];
  v77 = v1[17];
  if (v74)
  {
    v78 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v110[0] = v107;
    *v78 = 136315650;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v109 = v71;
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    loga = v72;
    v81 = v80;
    v103(v75, v77);
    v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v110);

    *(v78 + 4) = v82;
    *(v78 + 12) = 2080;
    v83 = dispatch thunk of CustomStringConvertible.description.getter();
    v85 = v84;
    v103(v76, v77);
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v110);

    *(v78 + 14) = v86;
    *(v78 + 22) = 2080;
    v71 = v109;
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, v110);

    *(v78 + 24) = v90;
    _os_log_impl(&dword_21607C000, loga, v73, "Exif.filterVideo() Exporting %s to %s as %s", v78, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v107, -1, -1);
    MEMORY[0x21CE94770](v78, -1, -1);
  }

  else
  {

    v103(v76, v77);
    v103(v75, v77);
  }

  v101 = swift_task_alloc();
  v1[38] = v101;
  *v101 = v1;
  v101[1] = specialized static Exif.filterVideo(inputURL:outputURL:);
  v102 = v1[8];

  return MEMORY[0x2821FAED0](v102, v71, 0, 0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined destroy of NSURLResourceKey(uint64_t a1)
{
  type metadata accessor for NSURLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
}

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

{
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t outlined destroy of UTType?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(a1) & 1;
}

uint64_t one-time initialization function for registration()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017ContactCollectionb5AssetD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017ContactCollectionb5AssetD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static ContactCollectionViewAssetCell.registration);
  __swift_project_value_buffer(v0, static ContactCollectionViewAssetCell.registration);
  type metadata accessor for ContactCollectionViewAssetCell(0);
  type metadata accessor for ClientContactViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static MapCollectionViewSmallAssetCell.registration);
  __swift_project_value_buffer(v0, static MapCollectionViewSmallAssetCell.registration);
  type metadata accessor for MapCollectionViewSmallAssetCell(0);
  type metadata accessor for ClientMapViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb14LandscapeAssetD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb14LandscapeAssetD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static WorkoutCollectionViewLandscapeAssetCell.registration);
  __swift_project_value_buffer(v0, static WorkoutCollectionViewLandscapeAssetCell.registration);
  type metadata accessor for WorkoutCollectionViewLandscapeAssetCell(0);
  type metadata accessor for ClientWorkoutViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017MessageCollectionbD0CAF0h10SuggestionB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017MessageCollectionbD0CAF0h10SuggestionB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static MessageCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MessageCollectionViewCell.registration);
  type metadata accessor for MessageCollectionViewCell();
  type metadata accessor for MessageSuggestionViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaFirstPartyCollectionbD0CAF06ClienthijB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaFirstPartyCollectionbD0CAF06ClienthijB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static MediaFirstPartyCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MediaFirstPartyCollectionViewCell.registration);
  type metadata accessor for MediaFirstPartyCollectionViewCell(0);
  type metadata accessor for ClientMediaFirstPartyViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015VideoCollectionbD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015VideoCollectionbD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static VideoCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static VideoCollectionViewCell.registration);
  type metadata accessor for VideoCollectionViewCell(0);
  type metadata accessor for ClientVideoViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaThirdPartyCollectionbD0CAF06ClienthijB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI025MediaThirdPartyCollectionbD0CAF06ClienthijB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static MediaThirdPartyCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MediaThirdPartyCollectionViewCell.registration);
  type metadata accessor for MediaThirdPartyCollectionViewCell(0);
  type metadata accessor for ClientMediaThirdPartyViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI031StateOfMindHorizontalCollectionbD0CAF06ClienthijB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI031StateOfMindHorizontalCollectionbD0CAF06ClienthijB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static StateOfMindHorizontalCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static StateOfMindHorizontalCollectionViewCell.registration);
  type metadata accessor for StateOfMindHorizontalCollectionViewCell(0);
  type metadata accessor for ClientStateOfMindViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016MosaicCollectionbD0CAF0h10SuggestionB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016MosaicCollectionbD0CAF0h10SuggestionB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static MosaicCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MosaicCollectionViewCell.registration);
  type metadata accessor for MosaicCollectionViewCell();
  type metadata accessor for MosaicSuggestionViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb5AssetD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb5AssetD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static MapCollectionViewAssetCell.registration);
  __swift_project_value_buffer(v0, static MapCollectionViewAssetCell.registration);
  type metadata accessor for MapCollectionViewAssetCell(0);
  type metadata accessor for ClientMapViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019LivePhotoCollectionD0CAF06ClienthiB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019LivePhotoCollectionD0CAF06ClienthiB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static LivePhotoCollectionCell.registration);
  __swift_project_value_buffer(v0, static LivePhotoCollectionCell.registration);
  type metadata accessor for LivePhotoCollectionCell(0);
  type metadata accessor for ClientLivePhotoViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024SuggestionListCollectionbD0CAF06MosaichB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024SuggestionListCollectionbD0CAF06MosaichB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static SuggestionListCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static SuggestionListCollectionViewCell.registration);
  type metadata accessor for SuggestionListCollectionViewCell();
  type metadata accessor for MosaicSuggestionViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013MapCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static MapCollectionViewMediumAssetCell.registration);
  __swift_project_value_buffer(v0, static MapCollectionViewMediumAssetCell.registration);
  type metadata accessor for MapCollectionViewSmallAssetCell(0);
  type metadata accessor for ClientMapViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016PosterCollectionbD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016PosterCollectionbD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static PosterCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static PosterCollectionViewCell.registration);
  type metadata accessor for PosterCollectionViewCell(0);
  type metadata accessor for ClientPosterViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021PosterSmallCollectionbD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021PosterSmallCollectionbD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static PosterSmallCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static PosterSmallCollectionViewCell.registration);
  type metadata accessor for PosterSmallCollectionViewCell(0);
  type metadata accessor for ClientPosterViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI026PosterHorizontalCollectionbD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI026PosterHorizontalCollectionbD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static PosterHorizontalCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static PosterHorizontalCollectionViewCell.registration);
  type metadata accessor for PosterHorizontalCollectionViewCell(0);
  type metadata accessor for ClientPosterViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013TipCollectionbD0CAF0h10SuggestionB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013TipCollectionbD0CAF0h10SuggestionB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static TipCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static TipCollectionViewCell.registration);
  type metadata accessor for TipCollectionViewCell();
  type metadata accessor for TipSuggestionViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionbD0CAF06ClienthijB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionbD0CAF06ClienthijB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static StateOfMindCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static StateOfMindCollectionViewCell.registration);
  type metadata accessor for StateOfMindCollectionViewCell(0);
  type metadata accessor for ClientStateOfMindViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionb5SmallD0CAF06ClienthijB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021StateOfMindCollectionb5SmallD0CAF06ClienthijB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static StateOfMindCollectionViewSmallCell.registration);
  __swift_project_value_buffer(v0, static StateOfMindCollectionViewSmallCell.registration);
  type metadata accessor for StateOfMindCollectionViewSmallCell(0);
  type metadata accessor for ClientStateOfMindViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI034MediaFirstPartyLandscapeCollectionbD0CAF06ClienthijB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI034MediaFirstPartyLandscapeCollectionbD0CAF06ClienthijB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static MediaFirstPartyLandscapeCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MediaFirstPartyLandscapeCollectionViewCell.registration);
  type metadata accessor for MediaFirstPartyLandscapeCollectionViewCell(0);
  type metadata accessor for ClientMediaFirstPartyViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019EvergreenCollectionbD0CAF0h10SuggestionB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019EvergreenCollectionbD0CAF0h10SuggestionB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static EvergreenCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static EvergreenCollectionViewCell.registration);
  type metadata accessor for EvergreenCollectionViewCell();
  type metadata accessor for EvergreenSuggestionViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionbD0CAF06ClienthiB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionbD0CAF06ClienthiB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static MotionActivityCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static MotionActivityCollectionViewCell.registration);
  type metadata accessor for MotionActivityCollectionViewCell(0);
  type metadata accessor for ClientMotionActivityViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb9LandscapeD0CAF06ClienthiB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb9LandscapeD0CAF06ClienthiB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static MotionActivityCollectionViewLandscapeCell.registration);
  __swift_project_value_buffer(v0, static MotionActivityCollectionViewLandscapeCell.registration);
  type metadata accessor for MotionActivityCollectionViewLandscapeCell(0);
  type metadata accessor for ClientMotionActivityViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb5SmallD0CAF06ClienthiB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024MotionActivityCollectionb5SmallD0CAF06ClienthiB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static MotionActivityCollectionViewSmallCell.registration);
  __swift_project_value_buffer(v0, static MotionActivityCollectionViewSmallCell.registration);
  type metadata accessor for MotionActivityCollectionViewSmallCell(0);
  type metadata accessor for ClientMotionActivityViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015PhotoCollectionbD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI015PhotoCollectionbD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static PhotoCollectionViewCell.registration);
  __swift_project_value_buffer(v0, static PhotoCollectionViewCell.registration);
  type metadata accessor for PhotoCollectionViewCell(0);
  type metadata accessor for ClientPhotoViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb5AssetD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb5AssetD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static WorkoutCollectionViewAssetCell.registration);
  __swift_project_value_buffer(v0, static WorkoutCollectionViewAssetCell.registration);
  type metadata accessor for WorkoutCollectionViewAssetCell(0);
  type metadata accessor for ClientWorkoutViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017WorkoutCollectionb10SmallAssetD0CAF06ClienthB5ModelCGMR);
  __swift_allocate_value_buffer(v0, static WorkoutCollectionViewSmallAssetCell.registration);
  __swift_project_value_buffer(v0, static WorkoutCollectionViewSmallAssetCell.registration);
  type metadata accessor for WorkoutCollectionViewSmallAssetCell(0);
  type metadata accessor for ClientWorkoutViewModel(0);
  return UICollectionView.CellRegistration.init(handler:)();
}

uint64_t closure #1 in variable initialization expression of static ContactCollectionViewAssetCell.registration(void *a1, uint64_t a2, id *a3)
{
  v3 = *a3;
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0xC8);
  v5 = *a3;
  return v4(v3);
}

uint64_t static ContactCollectionViewAssetCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017ContactCollectionb5AssetD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017ContactCollectionb5AssetD0CAF06ClienthB5ModelCGMR);
  v3 = __swift_project_value_buffer(v2, static ContactCollectionViewAssetCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *ContactCollectionViewAssetCell.contactView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI30ContactCollectionViewAssetCell_contactView);
  v2 = v1;
  return v1;
}

id ContactCollectionViewAssetCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ContactCollectionViewAssetCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ContactCollectionViewAssetCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI30ContactCollectionViewAssetCell_contactView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableContactViewModel.empty;
  v4 = 3;
  v3 = objc_allocWithZone(type metadata accessor for ContactView(0));
  *(v0 + v1) = ContactView.init(viewModel:style:)(v2, &v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall ContactCollectionViewAssetCell.releaseResources()()
{
  v1 = v0;
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[ContactCollectionViewAssetCell] release resources", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9MomentsUI30ContactCollectionViewAssetCell_contactView);
  if (v6)
  {
    (*((*MEMORY[0x277D85000] & *v6) + 0x1A8))();
  }
}

id ContactCollectionViewAssetCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactCollectionViewAssetCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized ContactCollectionViewAssetCell.init(frame:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI30ContactCollectionViewAssetCell_contactView;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = static MutableContactViewModel.empty;
  v12 = 3;
  v3 = objc_allocWithZone(type metadata accessor for ContactView(0));
  v4 = ContactView.init(viewModel:style:)(v2, &v12);
  *(v0 + v1) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = CollectionViewAssetCell.init(assetView:)(v5);
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0x90);
    v8 = v6;
    v9 = v7();
    [v9 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v8;
  }

  else
  {
    v11 = [objc_allocWithZone(type metadata accessor for AssetView(0)) init];

    return CollectionViewAssetCell.init(assetView:)(v11);
  }
}

uint64_t type metadata accessor for ContactCollectionViewAssetCell(uint64_t a1)
{
  result = type metadata singleton initialization cache for ContactCollectionViewAssetCell;
  if (!type metadata singleton initialization cache for ContactCollectionViewAssetCell)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

uint64_t MutableMotionActivityViewModel.build()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v99 = v76 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v76 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v98 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v100 = v76 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v76 - v18;
  v20 = type metadata accessor for DateInterval();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v26 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v26)
  {
    return 0;
  }

  v97 = v5;
  v27 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v27)
  {
    return 0;
  }

  v94 = v76 - v24;
  v95 = v10;
  v96 = v12;
  v28 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v29 = v25;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v28, v19, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v92 = *(v29 + 48);
  if ((v92)(v19, 1, v20) == 1)
  {
    outlined destroy of DateInterval?(v19);
    return 0;
  }

  v88 = v29 + 48;
  v93 = v23;
  v31 = *(v29 + 32);
  v32 = v94;
  v76[1] = v29 + 32;
  v76[0] = v31;
  v31(v94, v19, v20);
  v90 = v2;
  v77 = *(v2 + 16);
  v77(v96, v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v1);
  v33 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v34 = v33[1];
  v78 = *v33;
  v35 = v100;
  (*(v29 + 16))(v100, v32, v20);
  v89 = v29;
  (*(v29 + 56))(v35, 0, 1, v20);
  v36 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v37 = *(v0 + v36);
  v87 = *(v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_steps);
  v38 = *(v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity);
  v86 = *(v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_motionActivity + 8);
  if (v86)
  {
    v39 = 0;
  }

  else
  {
    v39 = v38;
  }

  v85 = v39;
  v40 = (v0 + OBJC_IVAR____TtC9MomentsUI30MutableMotionActivityViewModel_subtitle);
  swift_beginAccess();
  v41 = v40[1];
  v82 = *v40;
  if (v37)
  {
    v42 = v34 == 0;
  }

  else
  {
    v42 = 1;
  }

  v44 = !v42 && v41 != 0;
  v81 = v44;
  v83 = v41;

  v45 = v26;
  v79 = v34;

  v80 = v37;
  v84 = v37;
  v46 = v95;
  UUID.init()();
  v47 = v46;
  v48 = v77;
  v77(v99, v47, v1);
  v91 = v1;
  v48(v97, v96, v1);
  v49 = *(v27 + 16);
  if (v49)
  {
    v101 = MEMORY[0x277D84F90];
    v77 = v45;
    v50 = v45;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
    v51 = v101;
    v52 = (v27 + 32);
    v53 = *(v101 + 16);
    v54 = v90;
    v55 = v93;
    v56 = v92;
    do
    {
      v58 = *v52++;
      v57 = v58;
      v101 = v51;
      v59 = *(v51 + 24);
      if (v53 >= v59 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v53 + 1, 1);
        v51 = v101;
      }

      *(v51 + 16) = v53 + 1;
      *(v51 + v53++ + 32) = v57;
      --v49;
    }

    while (v49);
    v45 = v77;
  }

  else
  {
    v60 = v45;
    v51 = MEMORY[0x277D84F90];
    v54 = v90;
    v55 = v93;
    v56 = v92;
  }

  v61 = v78;
  if (!v79)
  {
    v61 = 0;
  }

  v92 = v61;
  v62 = 0xE000000000000000;
  if (v79)
  {
    v62 = v79;
  }

  v90 = v62;
  v63 = v98;
  outlined init with copy of DateInterval?(v100, v98, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v64 = (v56)(v63, 1, v20);
  v65 = v91;
  v66 = v84;
  if (v64 == 1)
  {
    DateInterval.init()();
    v67 = (v56)(v63, 1, v20);
    v68 = v96;
    if (v67 != 1)
    {
      outlined destroy of DateInterval?(v63);
    }
  }

  else
  {
    (v76[0])(v55, v63, v20);
    v68 = v96;
  }

  v69 = v80;
  if (v80)
  {
    v70 = v66;
    v71 = specialized static DBAssetModel.baseImage2DB(_:)(v69);
  }

  else
  {
    v71 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_nTm(MEMORY[0x277D84F90], specialized __RawDictionaryStorage.find<A>(_:));
  }

  if (v83)
  {
    v72 = v82;
  }

  else
  {
    v72 = 0;
  }

  if (v83)
  {
    v73 = v83;
  }

  else
  {
    v73 = 0xE000000000000000;
  }

  LOBYTE(v101) = v81;
  type metadata accessor for DBMotionActivityModel(0);
  swift_allocObject();
  v74 = specialized DBMotionActivityModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:assetData:steps:motionTypeRawValue:subtitle:renderState:)(v99, v97, v45, v51, v92, v90, v93, v71, v87, v85, v86, v72, v73, &v101);

  v75 = *(v54 + 8);
  v75(v95, v65);
  outlined destroy of DateInterval?(v100);
  v75(v68, v65);
  (*(v89 + 8))(v94, v20);
  return v74;
}

uint64_t outlined destroy of DateInterval?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI25PlaybackStateViewObserver_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI25PlaybackStateViewObserver_pGMR, &_s9MomentsUI25PlaybackStateViewObserver_pMd, &_s9MomentsUI25PlaybackStateViewObserver_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI10CloudSubDB_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI10CloudSubDB_pGMR, &_s9MomentsUI10CloudSubDB_pMd, &_s9MomentsUI10CloudSubDB_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay9MomentsUI11CloudRecord_pXpGGMd, &_ss23_ContiguousArrayStorageCySay9MomentsUI11CloudRecord_pXpGGMR, &_sSay9MomentsUI11CloudRecord_pXpGMd, &_sSay9MomentsUI11CloudRecord_pXpGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI13RouteLocationVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI13RouteLocationVGMR, type metadata accessor for RouteLocation);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay9MomentsUI11DBAssetDataCGGMd, &_ss23_ContiguousArrayStorageCySay9MomentsUI11DBAssetDataCGGMR, &_sSay9MomentsUI11DBAssetDataCGMd, &_sSay9MomentsUI11DBAssetDataCGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI12MapViewModel_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI12MapViewModel_pGMR, &_s9MomentsUI12MapViewModel_pMd, &_s9MomentsUI12MapViewModel_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_9MomentsUI12DBSuggestionCtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_9MomentsUI12DBSuggestionCtGMR, &_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMd, &_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI16ContactViewModel_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI16ContactViewModel_pGMR, &_s9MomentsUI16ContactViewModel_pMd, &_s9MomentsUI16ContactViewModel_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMd, &_ss23_ContiguousArrayStorageCy8CloudKit12CKSyncEngineC23PendingRecordZoneChangeOGMR, MEMORY[0x277CBBC78]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI16WorkoutViewModel_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI16WorkoutViewModel_pGMR, &_s9MomentsUI16WorkoutViewModel_pMd, &_s9MomentsUI16WorkoutViewModel_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI11CloudRecord_pGMR, &_s9MomentsUI11CloudRecord_pMd, &_s9MomentsUI11CloudRecord_pMR);
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI12DBAssetModelC5StyleOGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI12DBAssetModelC5StyleOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI14AssetViewModelC5StyleOGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI14AssetViewModelC5StyleOGMR);
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
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMd, &_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMR);
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
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI18HashableCoordinateVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI18HashableCoordinateVGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy9MomentsUI9AssetTypeOGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI9AssetTypeOGMR);
  *v3 = result;
  return result;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10Foundation4UUIDVGSgGMd, &_ss23_ContiguousArrayStorageCySay10Foundation4UUIDVGSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGSgMd, &_sSay10Foundation4UUIDVGSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_Si_Sdt5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_Si_Sdt5valuetGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_Si_Sdt5valuetMd, &_sSS3key_Si_Sdt5valuetMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17NSManagedObjectIDC_SaySo08CKRecordF0CGtGMd, &_ss23_ContiguousArrayStorageCySo17NSManagedObjectIDC_SaySo08CKRecordF0CGtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17NSManagedObjectIDC_SaySo08CKRecordC0CGtMd, &_sSo17NSManagedObjectIDC_SaySo08CKRecordC0CGtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SSs5Int64VtGMd, &_ss23_ContiguousArrayStorageCySS_SSs5Int64VtGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SSs5Int64VtMd, &_sSS_SSs5Int64VtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd, &_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMR);
  v10 = *(type metadata accessor for Tips.Action() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Tips.Action() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI16DBAssetModelTypeOGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI16DBAssetModelTypeOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMd, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMR, MEMORY[0x277CC8990]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySS3key_10Foundation4DateV5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_10Foundation4DateV5valuetGMR, &_sSS3key_10Foundation4DateV5valuetMd, "j");
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

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
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
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
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
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

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_So06CFNullD0aSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSo06CFNullD0aSgGMd, &_ss18_DictionaryStorageCySo11CFStringRefaSo06CFNullD0aSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v11, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaSo0C6WeightaGMd, &_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaSo0C6WeightaGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMd, &_ss18_DictionaryStorageCySo29UIFontDescriptorAttributeNameaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v11, &_sSo29UIFontDescriptorAttributeNamea_yptMd, &_sSo29UIFontDescriptorAttributeNamea_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26UIFontDescriptorFeatureKeya_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaSiGMd, &_ss18_DictionaryStorageCySo26UIFontDescriptorFeatureKeyaSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Si_SdtTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSi_SdtGMd, &_ss18_DictionaryStorageCySSSi_SdtGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

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
      *v12 = v7;
      v12[1] = v8;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation3URLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation3URLVtMd, &_sSS_10Foundation3URLVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3URLVGMd, &_ss18_DictionaryStorageCySS10Foundation3URLVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_sSS_10Foundation3URLVtMd, &_sSS_10Foundation3URLVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for URL();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaypGMd, &_ss18_DictionaryStorageCySo24UIFontDescriptorTraitKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v11, &_sSo24UIFontDescriptorTraitKeya_yptMd, &_sSo24UIFontDescriptorTraitKeya_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_yXlXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSyXlXpGMd, &_ss18_DictionaryStorageCySSyXlXpGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v11, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI14AssetViewModelC5StyleO_AETt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI14AssetViewModelC5StyleOAEGMd, &_ss18_DictionaryStorageCy9MomentsUI14AssetViewModelC5StyleOAEGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)();
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo18NSFileAttributeKeya_So0C14ProtectionTypeaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaSo0C14ProtectionTypeaGMd, &_ss18_DictionaryStorageCySo18NSFileAttributeKeyaSo0C14ProtectionTypeaGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI9AssetTypeO_AC12InterstitialV17SelectionBehaviorOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI9AssetTypeOAC12InterstitialV17SelectionBehaviorOGMd, &_ss18_DictionaryStorageCy9MomentsUI9AssetTypeOAC12InterstitialV17SelectionBehaviorOGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4UUIDVtMd, &_sSS_10Foundation4UUIDVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_sSS_10Foundation4UUIDVtMd, &_sSS_10Foundation4UUIDVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for UUID();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_So6UIFontCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaSo6UIFontCGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaSo6UIFontCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11DBAssetDataCTt0g5Tf4g_nTm(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9MomentsUI11DBAssetDataCGMd, &_ss18_DictionaryStorageCySS9MomentsUI11DBAssetDataCGMR);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = a2(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_AETt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    v22 = v8;

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = type metadata accessor for UUID();
      v15 = *(v14 - 8);
      v16 = *(v15 + 32);
      v17 = *(v15 + 72) * v12;
      v16(v13 + v17, v5, v14);
      result = (v16)(v7[7] + v17, &v5[v22], v14);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v21;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ShyAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ShyACGtMd, &_s10Foundation4UUIDV_ShyACGtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVShyAEGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVShyAEGGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_s10Foundation4UUIDV_ShyACGtMd, &_s10Foundation4UUIDV_ShyACGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI10DBSnapshotC3TabO_Say10Foundation4UUIDVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMd, &_ss18_DictionaryStorageCy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI16DBAssetModelEnumO_Si6models_Si5bytesSd8durationtTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI16DBAssetModelEnumOSi6models_Si5bytesSd8durationtGMd, &_ss18_DictionaryStorageCy9MomentsUI16DBAssetModelEnumOSi6models_Si5bytesSd8durationtGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = (v3[7] + 24 * result);
      *v11 = v6;
      v11[1] = v7;
      v11[2] = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI18HashableCoordinateV_AC12MapViewModel_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI18HashableCoordinateVAC12MapViewModel_pGMd, &_ss18_DictionaryStorageCy9MomentsUI18HashableCoordinateVAC12MapViewModel_pGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v18 = *(a1 + 48);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  v7 = v18;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v17 = v7;
    return v3;
  }

  v9 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 16 * result);
    *v10 = v4;
    v10[1] = v5;
    *(v3[7] + 16 * result) = v7;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 4;
    v4 = *(v9 - 2);
    v5 = *(v9 - 1);
    v19 = *v9;
    v15 = v7;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v9 = v14;
    v7 = v19;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI11MapLocationC_AC0E9ViewModel_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9MomentsUI11MapLocationCAC0E9ViewModel_pGMd, &_ss18_DictionaryStorageCy9MomentsUI11MapLocationCAC0E9ViewModel_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v12 = *i;

      v6 = v12;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MomentsUI11DBAssetDataCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = static _DictionaryStorage.allocate(capacity:)();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v16, v12, a2, v27);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = type metadata accessor for UUID();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9SwiftData20PersistentIdentifierVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9SwiftData20PersistentIdentifierVtMd, &_s10Foundation4UUIDV_9SwiftData20PersistentIdentifierVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9SwiftData20PersistentIdentifierVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9SwiftData20PersistentIdentifierVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_s10Foundation4UUIDV_9SwiftData20PersistentIdentifierVtMd, &_s10Foundation4UUIDV_9SwiftData20PersistentIdentifierVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for PersistentIdentifier();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say9MomentsUI12DBAssetModelCGTt0g5Tf4g_nTm(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v6 = a1[4];
  v7 = a1[5];
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMd, &_ss18_DictionaryStorageCySo38UIApplicationOpenExternalURLOptionsKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v11, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMd, &_sSo38UIApplicationOpenExternalURLOptionsKeya_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI11CloudDeviceVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9MomentsUI11CloudDeviceVtMd, &_sSS_9MomentsUI11CloudDeviceVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9MomentsUI11CloudDeviceVGMd, &_ss18_DictionaryStorageCySS9MomentsUI11CloudDeviceVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_sSS_9MomentsUI11CloudDeviceVtMd, &_sSS_9MomentsUI11CloudDeviceVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for CloudDevice(0);
      result = outlined init with take of CloudMetaDevice(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for CloudDevice);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9MomentsUI15CloudMetaDeviceVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9MomentsUI15CloudMetaDeviceVtMd, &_sSS_9MomentsUI15CloudMetaDeviceVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9MomentsUI15CloudMetaDeviceVGMd, &_ss18_DictionaryStorageCySS9MomentsUI15CloudMetaDeviceVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_sSS_9MomentsUI15CloudMetaDeviceVtMd, &_sSS_9MomentsUI15CloudMetaDeviceVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for CloudMetaDevice(0);
      result = outlined init with take of CloudMetaDevice(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for CloudMetaDevice);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DateVGMd, &_ss18_DictionaryStorageCySS10Foundation4DateVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of DateInterval?(v9, v5, &_sSS_10Foundation4DateVtMd, &_sSS_10Foundation4DateVtMR);
      v11 = *v5;
      v12 = v5[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Date();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSG_SitTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSG_SitGMd, &_ss18_DictionaryStorageCySSSaySSG_SitGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

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
      *v12 = v7;
      v12[1] = v8;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10CKRecordIDC_s6ResultOySo0C0Cs5Error_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10CKRecordIDCs6ResultOySo0C0Cs5Error_pGGMd, &_ss18_DictionaryStorageCySo10CKRecordIDCs6ResultOySo0C0Cs5Error_pGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      outlined copy of Result<CKRecord, Error>(v5);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Se_SEpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEpGMd, &_ss18_DictionaryStorageCySSSe_SEpGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of DateInterval?(v4, &v13, &_sSS_Se_SEptMd, &_sSS_Se_SEptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Decodable & Encodable(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo10CKRecordIDCGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *outlined init with take of Decodable & Encodable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t outlined init with take of CloudMetaDevice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of DateInterval?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t one-time initialization function for empty()
{
  v0 = type metadata accessor for DateInterval();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v7 = static ScreenSize.zero;
  DateInterval.init()();
  v8 = objc_allocWithZone(type metadata accessor for MutableVideoViewModel(0));
  *&v8[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video] = 0;
  v9 = &v8[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds];
  *v9 = 0;
  v9[8] = 1;
  swift_weakInit();
  swift_weakAssign();
  (*(v1 + 16))(v4, v6, v0);
  v10 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(v7, MEMORY[0x277D84F90], 0, 0xE000000000000000, v4);

  result = (*(v1 + 8))(v6, v0);
  static MutableVideoViewModel.empty = v10;
  return result;
}

{
  v0 = type metadata accessor for DateInterval();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v7 = static ScreenSize.zero;
  DateInterval.init()();
  *(objc_allocWithZone(type metadata accessor for MutableLivePhotoViewModel(0)) + OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto) = 0;
  swift_weakInit();
  swift_weakAssign();
  (*(v1 + 16))(v4, v6, v0);
  v8 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(v7, MEMORY[0x277D84F90], 0, 0xE000000000000000, v4);

  result = (*(v1 + 8))(v6, v0);
  static MutableLivePhotoViewModel.empty = v8;
  return result;
}

{
  v0 = type metadata accessor for DateInterval();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v7 = static ScreenSize.zero;
  DateInterval.init()();
  objc_allocWithZone(type metadata accessor for MutablePhotoViewModel(0));
  swift_weakInit();
  swift_weakAssign();
  (*(v1 + 16))(v4, v6, v0);
  v8 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(v7, MEMORY[0x277D84F90], 0, 0xE000000000000000, v4);

  result = (*(v1 + 8))(v6, v0);
  static MutablePhotoViewModel.empty = v8;
  return result;
}

{
  v0 = type metadata accessor for DateInterval();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v21 = static ScreenSize.zero;
  DateInterval.init()();
  type metadata accessor for MapLocation(0);
  v10 = swift_allocObject();
  UUID.init()();
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem) = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType) = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_confidenceLevel) = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_horizontalUncertainty) = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_clusterCount) = 1;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_name) = xmmword_21658F9D0;
  v11 = (v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_city);
  *v11 = 0;
  v11[1] = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_latitude) = 0;
  *(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_longitude) = 0;
  v12 = *(v1 + 16);
  v12(v10 + OBJC_IVAR____TtC9MomentsUI11MapLocation_dateInterval, v9, v0);
  v13 = OBJC_IVAR____TtC9MomentsUI11MapLocation_mapItem;
  swift_beginAccess();
  *(v10 + v13) = 0;
  v14 = OBJC_IVAR____TtC9MomentsUI11MapLocation_pinType;
  swift_beginAccess();
  *(v10 + v14) = 3;
  v15 = *(v1 + 8);
  v15(v9, v0);
  DateInterval.init()();
  v12(v4, v7, v0);
  memset(v22, 0, sizeof(v22));
  v23 = 1;
  objc_allocWithZone(type metadata accessor for MutableMapViewModel(0));
  v16 = v21;

  v17 = specialized MutableMapViewModel.init(viewport:styles:location:dateInterval:pinGlyph:pinColor:)(v16, MEMORY[0x277D84F90], v10, v4, 0, v22);

  v18 = v17;
  MutableMapViewModel.adjustTitleAndSubtitleIfNeeded()();

  result = (v15)(v7, v0);
  static MutableMapViewModel.empty = v18;
  return result;
}

id MutableVideoViewModel.__allocating_init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v6);
  *&v16[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video] = 0;
  v17 = &v16[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds];
  *v17 = 0;
  v17[8] = 1;
  swift_weakInit();
  swift_weakAssign();
  (*(v13 + 16))(v15, a5, v12);
  v18 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(a1, a2, a3, a4, v15);

  (*(v13 + 8))(a5, v12);
  return v18;
}

id static MutableVideoViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableVideoViewModel.empty;

  return v1;
}

void *MutableVideoViewModel.video.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MutableVideoViewModel.video.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MutableVideoViewModel.videoDurationSeconds.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  swift_beginAccess();
  return *v1;
}

uint64_t MutableVideoViewModel.videoDurationSeconds.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void *MutableVideoViewModel.thumbnail.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id MutableVideoViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video) = 0;
  v15 = v5 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  *v15 = 0;
  *(v15 + 8) = 1;
  swift_weakInit();
  swift_weakAssign();
  (*(v12 + 16))(v14, a5, v11);
  v16 = specialized MutablePhotosFamilyViewModel.init(intendedViewport:supportedStyles:photoLocalIdentifier:dateInterval:)(a1, a2, a3, a4, v14);

  (*(v12 + 8))(a5, v11);
  return v16;
}

char *MutableVideoViewModel.__allocating_init(dbObject:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableVideoViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

char *MutableVideoViewModel.init(dbObject:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableVideoViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void MutableVideoViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableVideoViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video) = 0;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  *v1 = 0;
  *(v1 + 8) = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableVideoViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableVideoViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video) = 0;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  *v1 = 0;
  *(v1 + 8) = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableVideoViewModel.render()()
{
  v1[27] = v0;
  v2 = type metadata accessor for OSSignpostID();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](MutableVideoViewModel.render(), 0, 0);
}

{
  v1 = v0[27];
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  v0[33] = v2;
  if (v2 && (v3 = (v1 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier), swift_beginAccess(), v4 = *v3, v0[34] = *v3, v5 = v3[1], (v0[35] = v5) != 0))
  {
    v6 = one-time initialization token for assetRendering;
    v7 = v2;

    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for OSSignposter();
    v0[36] = __swift_project_value_buffer(v8, static CommonSignposter.assetRendering);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v9 = OSSignposter.logHandle.getter();
    v10 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v9, v10, v12, "UIService_LoadVideoAsset", "", v11, 2u);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    v14 = v0[31];
    v13 = v0[32];
    v15 = v0[28];
    v16 = v0[29];

    v17 = *(v16 + 16);
    v0[37] = v17;
    v0[38] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v14, v13, v15);
    v0[39] = type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v0[40] = OSSignpostIntervalState.init(id:isOpen:)();
    v18 = swift_task_alloc();
    v0[41] = v18;
    *(v18 + 16) = v4;
    *(v18 + 24) = v5;
    v19 = swift_task_alloc();
    v0[42] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7PHAssetCSgMd, &_sSo7PHAssetCSgMR);
    *v19 = v0;
    v19[1] = MutableVideoViewModel.render();

    return MEMORY[0x2822007B8](v0 + 24, 0, 0, 0x2874657373416870, 0xEE00293A6D6F7266, partial apply for closure #1 in static PhotosUtilities.phAsset(from:), v18, v20);
  }

  else
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static CommonLogger.viewModel);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21607C000, v22, v23, "[MutableVideoViewModel] Doees not have maximumSupportedViewport", v24, 2u);
      MEMORY[0x21CE94770](v24, -1, -1);
    }

    v25 = v0[1];

    return v25();
  }
}

{

  return MEMORY[0x2822009F8](MutableVideoViewModel.render(), 0, 0);
}

{
  v1 = *(v0 + 192);
  *(v0 + 344) = v1;
  if (v1)
  {
    v2 = *(v0 + 264);
    v3 = *(v0 + 216);
    *(v0 + 424) = 2;
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
    v6 = ((*MEMORY[0x277D85000] & *v2) + 96) & 0xFFFFFFFFFFFFLL | 0x8189000000000000;
    *(v0 + 352) = v5;
    *(v0 + 360) = v6;
    v7 = v5();
    v8 = *((*v4 & *v2) + 0x78);
    v9 = ((*v4 & *v2) + 120) & 0xFFFFFFFFFFFFLL | 0x893B000000000000;
    *(v0 + 368) = v8;
    *(v0 + 376) = v9;
    v10 = v8();
    v11 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass;
    *(v0 + 384) = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass;
    *(v0 + 425) = *(v3 + v11);
    v12 = swift_task_alloc();
    *(v0 + 392) = v12;
    *v12 = v0;
    v12[1] = MutableVideoViewModel.render();

    return PHAsset.closestExactImage(type:viewport:assetClass:)(v0 + 16, (v0 + 424), (v0 + 425), v7, v10);
  }

  else
  {

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static CommonLogger.viewModel);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21607C000, v15, v16, "[MutableVideoViewModel] Cannot retrieve PHAsset", v17, 2u);
      MEMORY[0x21CE94770](v17, -1, -1);
    }

    v18 = *(v0 + 320);
    v19 = *(v0 + 256);
    v20 = *(v0 + 264);
    v21 = *(v0 + 224);
    v22 = *(v0 + 232);

    $defer #1 () in MutableVideoViewModel.render()(v18, "UIService_LoadVideoAsset");

    (*(v22 + 8))(v19, v21);

    v23 = *(v0 + 8);

    return v23();
  }
}

{

  return MEMORY[0x2822009F8](MutableVideoViewModel.render(), 0, 0);
}

{
  v29 = v0;
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI25ConstructedPhotosResource_pMd, &_s9MomentsUI25ConstructedPhotosResource_pMR);
    type metadata accessor for Video(0);
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 208);
      v2 = *(v0 + 216);
      v3 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
      swift_beginAccess();
      v4 = *(v2 + v3);
      *(v2 + v3) = v1;

      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of ConstructedPhotosResource?(v0 + 16);
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static CommonLogger.viewModel);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 272);
    v8 = *(v0 + 280);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v28);
    _os_log_impl(&dword_21607C000, v6, v7, "[MutableVideoViewModel] Cannot render, localID=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CE94770](v11, -1, -1);
    MEMORY[0x21CE94770](v10, -1, -1);
  }

LABEL_10:
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v12, v13, v15, "UIService_LoadVideoThumbnail", "", v14, 2u);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  v27 = *(v0 + 384);
  v26 = *(v0 + 368);
  v16 = *(v0 + 352);
  v17 = *(v0 + 296);
  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 224);
  v25 = *(v0 + 216);

  v17(v18, v19, v20);
  swift_allocObject();
  *(v0 + 400) = OSSignpostIntervalState.init(id:isOpen:)();
  *(v0 + 426) = 0;
  v21 = v16();
  v22 = v26();
  *(v0 + 427) = *(v25 + v27);
  v23 = swift_task_alloc();
  *(v0 + 408) = v23;
  *v23 = v0;
  v23[1] = MutableVideoViewModel.render();

  return PHAsset.closestExactImage(type:viewport:assetClass:)(v0 + 56, (v0 + 426), (v0 + 427), v21, v22);
}

{

  return MEMORY[0x2822009F8](MutableVideoViewModel.render(), 0, 0);
}

{
  v22 = v0;
  if (v0[10])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI25ConstructedPhotosResource_pMd, &_s9MomentsUI25ConstructedPhotosResource_pMR);
    type metadata accessor for Image(0);
    if (swift_dynamicCast())
    {
      v1 = v0[27];

      v2 = v0[25];
      v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v4 = *(v1 + v3);
      *(v1 + v3) = v2;

      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of ConstructedPhotosResource?((v0 + 7));
  }

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static CommonLogger.viewModel);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[35];
  if (v8)
  {
    v10 = v0[34];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v21);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21607C000, v6, v7, "[MutableVideoViewModel] Cannot render, localID=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CE94770](v12, -1, -1);
    MEMORY[0x21CE94770](v11, -1, -1);
  }

  else
  {
  }

LABEL_10:
  v14 = v0[43];
  v15 = v0[27];
  [v14 duration];
  v17 = v16;
  v18 = v15 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  swift_beginAccess();
  *v18 = v17;
  *(v18 + 8) = 0;
  v19 = swift_task_alloc();
  v0[52] = v19;
  *v19 = v0;
  v19[1] = MutableVideoViewModel.render();

  return MutablePhotosFamilyViewModel.sharedRender(asset:)(v14);
}

{

  return MEMORY[0x2822009F8](MutableVideoViewModel.render(), 0, 0);
}

{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[32];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  $defer #1 () in MutableVideoViewModel.render()(v0[50], "UIService_LoadVideoThumbnail");

  v8 = *(v6 + 8);
  v8(v5, v7);
  $defer #1 () in MutableVideoViewModel.render()(v2, "UIService_LoadVideoAsset");

  v8(v3, v7);

  v9 = v0[1];

  return v9();
}

uint64_t $defer #1 () in MutableVideoViewModel.render()(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for assetRendering != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static CommonSignposter.assetRendering);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t MutableVideoViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = *((*MEMORY[0x277D85000] & *v3) + 0xB0), v5 = v3, LOBYTE(v4) = v4(), v5, (v4 & 1) != 0) && (v6 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage, swift_beginAccess(), (v7 = *(v1 + v6)) != 0))
  {
    v8 = v7;
    v9 = Image.hasUIImage.getter();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall MutableVideoViewModel.clearCache()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  return 1;
}

char *MutableVideoViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(type metadata accessor for VideoView(0));
  v4 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView;
  v5 = objc_allocWithZone(type metadata accessor for VideoStaticView());
  v6 = v1;
  *&v3[v4] = [v5 init];
  v7 = OBJC_IVAR____TtC9MomentsUI9VideoView_videoPlayerView;
  *&v3[v7] = [objc_allocWithZone(type metadata accessor for VideoPlayerView()) init];
  v8 = *MEMORY[0x277D76560];
  if (one-time initialization token for accessibilityString != -1)
  {
    swift_once();
  }

  v9 = static VideoView.Constants.accessibilityString;
  v10 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
  v11 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v12 = v6;
  *&v3[v10] = [v11 init];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v2;
  v31.receiver = v3;
  v31.super_class = type metadata accessor for AssetView(0);
  v15 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v16 = *((*MEMORY[0x277D85000] & *v15) + 0xE8);
  v17 = v15;
  v16();
  AssetView.setFallBackView()();
  [v17 setIsAccessibilityElement_];
  v18 = [v17 accessibilityTraits];
  if ((v8 & ~v18) != 0)
  {
    v19 = v8;
  }

  else
  {
    v19 = 0;
  }

  [v17 setAccessibilityTraits_];
  v20 = MEMORY[0x21CE91FC0](v9, *(&v9 + 1));
  [v17 setAccessibilityLabel_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21658CA50;
  v22 = type metadata accessor for UITraitUserInterfaceStyle();
  v23 = MEMORY[0x277D74BF0];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  v24 = v17;
  MEMORY[0x21CE92C30](v21, sel_handleTraitChange);
  swift_unknownObjectRelease();

  [v24 handleTraitChange];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  [v24 setClipsToBounds_];
  v25 = *&v24[OBJC_IVAR____TtC9MomentsUI9VideoView_videoStaticView];
  v26 = v24;
  [v26 addSubview_];
  [v26 addSubview_];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v27 = *&v26[OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView];
  v28 = MEMORY[0x21CE91FC0](0x6F65646976, 0xE500000000000000);
  v29 = [objc_opt_self() systemImageNamed_];

  [v27 setImage_];
  return v15;
}

uint64_t MutableVideoViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id MutableVideoViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for VideoViewModel.video.getter in conformance MutableVideoViewModel()
{
  v1 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t protocol witness for VideoViewModel.videoDurationSeconds.getter in conformance MutableVideoViewModel()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds;
  swift_beginAccess();
  return *v1;
}

void *protocol witness for VideoViewModel.thumbnail.getter in conformance MutableVideoViewModel()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277CBBC78]);
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277CDD5C8]);
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for RouteLocation);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = v1;
  if (*v1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  v4.n128_f64[0] = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  v5 = *v1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  v7 = *(v6 + 0x10);
  v8 = (*(v6 + 0x18) >> 1) - v7;
  specialized Sequence._copySequenceContents(initializing:)(&v16, (v6 + 8 * v7 + 32), v8, a1, v4);
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v9)
    {
      v10 = *(v6 + 16);
      v11 = __OFADD__(v10, v9);
      v12 = v10 + v9;
      if (v11)
      {
        __break(1u);
LABEL_22:
        *(v6 + 16) = a1;
        goto LABEL_8;
      }

      *(v6 + 16) = v12;
    }

    if (v9 != v8)
    {
      goto LABEL_8;
    }
  }

  a1 = *(v6 + 16);
  v13 = specialized FlattenSequence.Iterator.next()();
  if (v13)
  {
    while (1)
    {
      if (a1 + 1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = v13;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v15;
      }

      v5 = *v2;
      v6 = *v2 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(v6 + 0x18) >> 1)
      {
        v14 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      }

      else
      {
        v14 = a1;
      }

      while (v14 != a1)
      {
        *(v6 + 32 + 8 * a1++) = v13;
        v13 = specialized FlattenSequence.Iterator.next()();
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      *(v6 + 16) = v14;
      a1 = v14;
    }
  }

LABEL_8:

  *v2 = v5;
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[24 * v8 + 32], (a1 + 32), 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

{
  specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277CBBC58]);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI5ColorVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI5ColorVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI15QueuableRequestVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI15QueuableRequestVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI16DBAssetModelTypeOGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI16DBAssetModelTypeOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd, &_ss23_ContiguousArrayStorageCySo6CGRectVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI18SuggestionSubgroupVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI18SuggestionSubgroupVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI15SuggestionGroupVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI15SuggestionGroupVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV19AssetGroupViewModelVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV19AssetGroupViewModelVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV7SectionVGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV7SectionVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV4ItemOGMd, &_ss23_ContiguousArrayStorageCy9MomentsUI12InterstitialV4ItemOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized MutableVideoViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v25[3] = a3;
  v25[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video] = 0;
  v8 = &a2[OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_videoDurationSeconds];
  *v8 = 0;
  v8[8] = 1;
  swift_weakInit();
  outlined init with copy of DBObject(v25, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  type metadata accessor for DBVideoModel(0);
  if (swift_dynamicCast())
  {
    swift_weakAssign();

    v10 = specialized MutablePhotosFamilyViewModel.init(dbObject:)(v9, a2);
    v12 = *(v23 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
    v11 = *(v23 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
    v13 = &v10[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier];
    swift_beginAccess();
    *v13 = v12;
    *(v13 + 1) = v11;
    v14 = v10;

    v15 = v14;

    v17 = *(v23 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier);
    v16 = *(v23 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_cloudIdentifier + 8);

    v18 = &v15[OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier];
    swift_beginAccess();
    *v18 = v17;
    *(v18 + 1) = v16;

    v19 = DBAssetModel.baseVideo.getter();

    __swift_destroy_boxed_opaque_existential_1(v25);
    v20 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
    swift_beginAccess();
    v21 = *&v15[v20];
    *&v15[v20] = v19;

    return v15;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
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

char *specialized MutableVideoViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableVideoViewModel.init(dbObject:)(v9, v11, a3, a4);
}

uint64_t outlined destroy of ConstructedPhotosResource?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI25ConstructedPhotosResource_pSgMd, &_s9MomentsUI25ConstructedPhotosResource_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MutableVideoViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for MutableVideoViewModel;
  if (!type metadata singleton initialization cache for MutableVideoViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with copy of DBObject(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t key path setter for TransferPosterViewModel.title : TransferPosterViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x238))(v6);
}

uint64_t key path setter for TransferPosterViewModel.eventStart : TransferPosterViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x250))(v6);
}

uint64_t TransferPosterViewModel.title.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v4 + v8, a4, a2, a3);
}

uint64_t TransferPosterViewModel.title.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of AttributedString?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t outlined assign with take of AttributedString?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t key path setter for TransferPosterViewModel.eventEnd : TransferPosterViewModel(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of DateInterval?(a1, &v8 - v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x268))(v6);
}

uint64_t TransferPosterViewModel.isHost.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TransferPosterViewModel.isHost.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TransferPosterViewModel.placeName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double TransferPosterViewModel.placeName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

MomentsUI::TransferPosterViewModel::CodingKeys_optional __swiftcall TransferPosterViewModel.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferPosterViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t TransferPosterViewModel.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x656C746974;
  v2 = 0x646E45746E657665;
  v3 = 0x74736F487369;
  if (a1 != 3)
  {
    v3 = 0x6D614E6563616C70;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x617453746E657665;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TransferPosterViewModel.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x656C746974;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = *a2;
  v6 = 0xE800000000000000;
  v7 = 0x646E45746E657665;
  v8 = 0xE600000000000000;
  v9 = 0x74736F487369;
  if (v3 != 3)
  {
    v9 = 0x6D614E6563616C70;
    v8 = 0xE900000000000065;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x617453746E657665;
  if (*a1)
  {
    v4 = 0xEA00000000007472;
  }

  else
  {
    v10 = 0x656C746974;
  }

  if (*a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE500000000000000;
  v14 = 0xE800000000000000;
  v15 = 0x646E45746E657665;
  v16 = 0xE600000000000000;
  v17 = 0x74736F487369;
  if (v5 != 3)
  {
    v17 = 0x6D614E6563616C70;
    v16 = 0xE900000000000065;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v2 = 0x617453746E657665;
    v13 = 0xEA00000000007472;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TransferPosterViewModel.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance TransferPosterViewModel.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TransferPosterViewModel.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TransferPosterViewModel.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferPosterViewModel.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TransferPosterViewModel.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xE800000000000000;
  v6 = 0x646E45746E657665;
  v7 = 0xE600000000000000;
  v8 = 0x74736F487369;
  if (v2 != 3)
  {
    v8 = 0x6D614E6563616C70;
    v7 = 0xE900000000000065;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x617453746E657665;
    v3 = 0xEA00000000007472;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TransferPosterViewModel.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x646E45746E657665;
  v4 = 0x74736F487369;
  if (v1 != 3)
  {
    v4 = 0x6D614E6563616C70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617453746E657665;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransferPosterViewModel.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TransferPosterViewModel.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransferPosterViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransferPosterViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id TransferPosterViewModel.init(coder:)(void *a1)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v53 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v53 = &v53 - v9;
  MEMORY[0x28223BE20](v8);
  v56 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v53 - v12;
  v14 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_title;
  v15 = type metadata accessor for AttributedString();
  v16 = *(*(v15 - 8) + 56);
  v16(v1 + v14, 1, 1, v15);
  v17 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventStart;
  v18 = type metadata accessor for Date();
  v63 = *(v18 - 8);
  v19 = *(v63 + 56);
  v55 = v17;
  v19(v2 + v17, 1, 1, v18);
  v57 = v19;
  v58 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd;
  v19(v2 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd, 1, 1, v18);
  v59 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost;
  *(v2 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost) = 2;
  v20 = (v2 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName);
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
  *v20 = 0;
  v20[1] = 0;
  v62 = v20;
  v21 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v21)
  {
    v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v23 = MEMORY[0x21CE91FC0](0, 0xE000000000000000);
    v24 = [v22 initWithString_];

    v21 = v24;
  }

  v60 = v21;
  AttributedString.init(_:)();
  v25 = 1;
  v16(v13, 0, 1, v15);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v13, v2 + v14, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  swift_endAccess();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
  v26 = v64;
  v27 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v27)
  {
    v28 = v27;
    v29 = v53;
    v30 = v57;
    v57(v53, 1, 1, v18);
    lazy protocol witness table accessor for type Date and conformance Date();
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v31 = v29;
    v32 = (*(v63 + 48))(v29, 1, v18);
    v33 = v61;
    v34 = v56;
    if (v32 != 1)
    {
      (*(v63 + 32))(v56, v31, v18);
      v25 = 0;
    }
  }

  else
  {
    v33 = v61;
    v34 = v56;
    v30 = v57;
  }

  v35 = 1;
  v30(v34, v25, 1, v18);
  v36 = v55;
  swift_beginAccess();
  outlined assign with take of AttributedString?(v34, v2 + v36, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  v37 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v37)
  {
    v38 = v37;
    v39 = v54;
    v30(v54, 1, 1, v18);
    lazy protocol witness table accessor for type Date and conformance Date();
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    v40 = v63;
    if ((*(v63 + 48))(v39, 1, v18) != 1)
    {
      (*(v40 + 32))(v33, v39, v18);
      v35 = 0;
    }
  }

  v30(v33, v35, 1, v18);
  v41 = v58;
  swift_beginAccess();
  outlined assign with take of AttributedString?(v33, v2 + v41, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  v42 = MEMORY[0x21CE91FC0](0x74736F487369, 0xE600000000000000);
  v43 = [v26 decodeBoolForKey_];

  v44 = v59;
  swift_beginAccess();
  *(v2 + v44) = v43;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v45 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v45)
  {
    v65 = 0;
    v66 = 0;
    v46 = v45;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    v47 = v66;
    if (v66)
    {
      v48 = v65;
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v48 = 0;
    v47 = 0;
  }

  v49 = v62;
  swift_beginAccess();
  *v49 = v48;
  v49[1] = v47;

  v50 = specialized AssetViewModel.init(coder:)(v26);

  v51 = v50;
  if (v50)
  {
  }

  return v50;
}

Swift::Void __swiftcall TransferPosterViewModel.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for AttributedString();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssetViewModel.encode(with:)(with);
  (*((*MEMORY[0x277D85000] & *v1) + 0x230))();
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    AttributedString.init(stringLiteral:)();
    if (v17(v12, 1, v13) != 1)
    {
      outlined destroy of UTType?(v12, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
  v18 = NSAttributedString.init(_:)();
  v19 = MEMORY[0x21CE91FC0](0x656C746974, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

  (*((*MEMORY[0x277D85000] & *v2) + 0x248))();
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  isa = 0;
  if (v22(v9, 1, v20) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v21 + 8))(v9, v20);
  }

  v24 = MEMORY[0x21CE91FC0](0x617453746E657665, 0xEA00000000007472);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v24];
  swift_unknownObjectRelease();

  v25 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x260))();
  if (v22(v7, 1, v20) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = Date._bridgeToObjectiveC()().super.isa;
    (*(v21 + 8))(v7, v20);
  }

  v27 = MEMORY[0x21CE91FC0](0x646E45746E657665, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];
  swift_unknownObjectRelease();

  if ((*((*v25 & *v2) + 0x278))() == 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v29 = MEMORY[0x21CE91FC0](0x74736F487369, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];
  swift_unknownObjectRelease();

  v30 = (*((*v25 & *v2) + 0x290))();
  if (v31)
  {
    v32 = MEMORY[0x21CE91FC0](v30);
  }

  else
  {
    v32 = 0;
  }

  v33 = MEMORY[0x21CE91FC0](0x6D614E6563616C70, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeObject:v32 forKey:v33];

  swift_unknownObjectRelease();
}

void TransferPosterViewModel.init(from:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_title;
  v2 = type metadata accessor for AttributedString();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventStart;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost) = 2;
  v6 = (v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName);
  *v6 = 0;
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void TransferPosterViewModel.init(dbObject:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_title;
  v2 = type metadata accessor for AttributedString();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventStart;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost) = 2;
  v6 = (v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName);
  *v6 = 0;
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *TransferPosterViewModel.init(posterViewModel:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - v11;
  v13 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_title;
  v14 = type metadata accessor for AttributedString();
  (*(*(v14 - 8) + 56))(&v3[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventStart;
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v17(&v3[v15], 1, 1, v16);
  v18 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd;
  v17(&v3[OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd], 1, 1, v16);
  v19 = OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost;
  v3[OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_isHost] = 2;
  v20 = &v3[OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_placeName];
  *v20 = 0;
  v20[1] = 0;
  v21 = swift_getObjectType();
  (*(a2 + 24))(v21, a2);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v12, &v3[v13], &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  swift_endAccess();
  v22 = v46;
  (*(a2 + 40))(v21, a2);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v22, &v3[v15], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  (*(a2 + 48))(v21, a2);
  swift_beginAccess();
  outlined assign with take of AttributedString?(v22, &v3[v18], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  LOBYTE(v18) = (*(a2 + 56))(v21, a2);
  swift_beginAccess();
  v3[v19] = v18;
  v23 = (*(a2 + 32))(v21, a2);
  v25 = v24;
  swift_beginAccess();
  *v20 = v23;
  v20[1] = v25;

  if (one-time initialization token for zero != -1)
  {
    swift_once();
  }

  v26 = static ScreenSize.zero;
  v27 = (*(a2 + 16))(v21, a2);
  v28 = *((*MEMORY[0x277D85000] & *a1) + 0xD0);
  v29 = a1;
  v45 = v28();
  v31 = v30;

  v32 = v48;
  (*(*(a2 + 8) + 24))(v21);
  LODWORD(v46) = *(v29 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v33 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v34 = &v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v34 = 0;
  v34[1] = 0;
  v35 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v36 = type metadata accessor for DateInterval();
  (*(*(v36 - 8) + 56))(&v3[v35], 1, 1, v36);
  UUID.init()();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v26;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v37 = *&v3[v33];
  *&v3[v33] = v27;
  v38 = v26;
  v39 = v27;

  swift_beginAccess();
  *v34 = v45;
  v34[1] = v31;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v32, &v3[v35]);
  v40 = swift_endAccess();
  v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v46;
  (*(ObjectType + 328))(v50, v40);
  LOBYTE(v35) = v50[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v41 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v41 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v41 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v41 + 112) = v35;
  *&v3[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v41;
  v42 = type metadata accessor for AssetViewModel(0);
  v49.receiver = v3;
  v49.super_class = v42;
  v43 = objc_msgSendSuper2(&v49, sel_init);

  outlined destroy of UTType?(v32, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  return v43;
}

double TransferPosterViewModel.__ivar_destroyer()
{
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_title, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventStart, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI23TransferPosterViewModel_eventEnd, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  return result;
}

id TransferPosterViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransferPosterViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized TransferPosterViewModel.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TransferPosterViewModel.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for NSAttributedString(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
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

uint64_t outlined assign with copy of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TransferPosterViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for TransferPosterViewModel;
  if (!type metadata singleton initialization cache for TransferPosterViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransferPosterViewModel.CodingKeys and conformance TransferPosterViewModel.CodingKeys);
  }

  return result;
}

void type metadata completion function for TransferPosterViewModel(uint64_t a1)
{
  type metadata accessor for AttributedString?(319, &lazy cache variable for type metadata for AttributedString?, MEMORY[0x277CC8C40]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AttributedString?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for AttributedString?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void one-time initialization function for timeSeparator()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000216577810;
  v1._countAndFlagsBits = 2108704;
  v1._object = 0xE300000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000034;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static MomentDateFormatter.timeSeparator = v3;
}

__int128 *MomentDateFormatter.timeSeparator.unsafeMutableAddressor()
{
  if (one-time initialization token for timeSeparator != -1)
  {
    swift_once();
  }

  return &static MomentDateFormatter.timeSeparator;
}

void one-time initialization function for commaSeparator()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000002165777F0;
  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000017;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static MomentDateFormatter.commaSeparator = v3;
}

__int128 *MomentDateFormatter.commaSeparator.unsafeMutableAddressor()
{
  if (one-time initialization token for commaSeparator != -1)
  {
    swift_once();
  }

  return &static MomentDateFormatter.commaSeparator;
}

uint64_t static MomentDateFormatter.timeSeparator.getter(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

BOOL specialized static MomentDateFormatter.Interstitial.sameHourMin(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Calendar();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Calendar.current.getter();
  LODWORD(v30) = *MEMORY[0x277CC9980];
  v11 = *(v4 + 104);
  v11(v6);
  v29 = a1;
  v31 = Calendar.component(_:from:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  v13 = *(v8 + 8);
  v13(v10, v7);
  static Calendar.current.getter();
  v28 = v11;
  v23 = v4 + 104;
  (v11)(v6, v30, v3);
  v14 = Calendar.component(_:from:)();
  v27 = v12;
  v24 = v4 + 8;
  v12(v6, v3);
  v30 = v7;
  v25 = v8 + 8;
  v26 = v13;
  v13(v10, v7);
  if (v31 != v14)
  {
    return 0;
  }

  static Calendar.current.getter();
  v22 = *MEMORY[0x277CC99A0];
  v15 = v28;
  v28(v6);
  v31 = Calendar.component(_:from:)();
  v16 = v27;
  v27(v6, v3);
  v17 = v30;
  v18 = v26;
  v26(v10, v30);
  static Calendar.current.getter();
  v15(v6, v22, v3);
  v19 = Calendar.component(_:from:)();
  v16(v6, v3);
  v18(v10, v17);
  return v31 == v19;
}

uint64_t specialized static MomentDateFormatter.Interstitial.timeRangeRepresentation(startTime:endTime:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static MomentDateFormatter.Interstitial.sameHourMin(startDate:endDate:)(a1, a2))
  {
    if (one-time initialization token for shortTimeFormatter != -1)
    {
      swift_once();
    }

    v2 = static MomentDateFormatter.shortTimeFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v4 = [v2 stringForObjectValue_];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = Date._bridgeToObjectiveC()().super.isa;
      v9 = [v2 stringForObjectValue_];

      if (v9)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        if (one-time initialization token for timeSeparator != -1)
        {
          swift_once();
        }

        v11 = static MomentDateFormatter.timeSeparator;

        MEMORY[0x21CE92100](v11, *(&v11 + 1));

        MEMORY[0x21CE92100](v5, v7);

        return v10;
      }
    }
  }

  if (one-time initialization token for shortTimeFormatter != -1)
  {
    swift_once();
  }

  v13 = static MomentDateFormatter.shortTimeFormatter;
  v14 = Date._bridgeToObjectiveC()().super.isa;
  v15 = [v13 stringForObjectValue_];

  if (!v15)
  {
    return 0;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v16;
}

uint64_t specialized static MomentDateFormatter.Interstitial.timeRangeWithSameDayRepresentation(startTime:endTime:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for yearDateFormatter != -1)
  {
    swift_once();
  }

  v4 = static MomentDateFormatter.yearDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v6 = [v4 stringForObjectValue_];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = specialized static MomentDateFormatter.Interstitial.timeRangeRepresentation(startTime:endTime:)(a1, a2);
    if (v9)
    {
      v10 = v8;
      v11 = v9;

      MEMORY[0x21CE92100](0x20A280E220, 0xA500000000000000);

      MEMORY[0x21CE92100](v10, v11);

      return v7;
    }
  }

  return 0;
}

uint64_t specialized static MomentDateFormatter.Interstitial.singleDateRangeRepresentation(_:)()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  DateInterval.start.getter();
  DateInterval.end.getter();
  v7 = specialized static MomentDateFormatter.Interstitial.sameHourMin(startDate:endDate:)(v6, v4);
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7 || (DateInterval.start.getter(), DateInterval.end.getter(), v9 = specialized static MomentDateFormatter.Interstitial.timeRangeWithSameDayRepresentation(startTime:endTime:)(v6, v4), v11 = v10, v8(v4, v0), v8(v6, v0), !v11))
  {
    if (one-time initialization token for yearDateTimeFormatter != -1)
    {
      swift_once();
    }

    v12 = static MomentDateFormatter.yearDateTimeFormatter;
    DateInterval.start.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v8(v6, v0);
    v14 = [v12 stringForObjectValue_];

    if (v14)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t specialized static MomentDateFormatter.Interstitial.timeRangeWithDifferentDaysRepresentation(_:)()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for yearDateFormatter != -1)
  {
    swift_once();
  }

  v4 = static MomentDateFormatter.yearDateFormatter;
  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v6 = *(v1 + 8);
  v6(v3, v0);
  v7 = [v4 stringForObjectValue_];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  DateInterval.end.getter();
  v11 = Date._bridgeToObjectiveC()().super.isa;
  v6(v3, v0);
  v12 = [v4 stringForObjectValue_];

  if (!v12)
  {

    return 0;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (one-time initialization token for timeSeparator != -1)
  {
    swift_once();
  }

  v16 = static MomentDateFormatter.timeSeparator;
  v18[0] = v8;
  v18[1] = v10;

  MEMORY[0x21CE92100](v16, *(&v16 + 1));

  MEMORY[0x21CE92100](v13, v15);

  return v18[0];
}

uint64_t specialized static MomentDateFormatter.Interstitial.generateFormattedDate(dateInterval:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Calendar();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for DateInterval();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DateInterval?(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of DateInterval?(v14);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    static Calendar.current.getter();
    DateInterval.start.getter();
    DateInterval.end.getter();
    v20 = Calendar.isDate(_:inSameDayAs:)();
    v21 = *(v3 + 8);
    v21(v6, v2);
    v21(v8, v2);
    (*(v24 + 8))(v11, v25);
    if (v20)
    {
      v22 = specialized static MomentDateFormatter.Interstitial.singleDateRangeRepresentation(_:)();
    }

    else
    {
      v22 = specialized static MomentDateFormatter.Interstitial.timeRangeWithDifferentDaysRepresentation(_:)();
    }

    v23 = v22;
    (*(v16 + 8))(v18, v15);
    return v23;
  }
}

uint64_t outlined init with copy of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id EditableLabelView.tintColor.getter(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for EditableLabelView();
  v3 = objc_msgSendSuper2(&v5, sel_tintColor);

  return v3;
}

void EditableLabelView.tintColor.setter(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EditableLabelView();
  objc_msgSendSuper2(&v5, sel_setTintColor_, a1);
  v3 = EditableLabelView.textField.getter();
  v4 = [v1 tintColor];
  [v3 setTintColor_];
}

id EditableLabelView.isEditing.didset(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView_isEditing) == 1)
  {
    v2 = EditableLabelView.label.getter();
    [v2 setHidden_];

    v3 = EditableLabelView.textField.getter();
    [v3 setHidden_];

    v4 = OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___textField;
    [*(v1 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___textField) becomeFirstResponder];
    v5 = *(v1 + v4);
    v6 = sel_selectAll_;
    v7 = 0;
  }

  else
  {
    v9 = EditableLabelView.textField.getter();
    [v9 resignFirstResponder];

    v10 = EditableLabelView.label.getter();
    v11 = EditableLabelView.attributedText.getter();
    [v10 setAttributedText_];

    [*(v1 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___label) setHidden_];
    v5 = *(v1 + OBJC_IVAR____TtC9MomentsUI17EditableLabelView____lazy_storage___textField);
    v6 = sel_setHidden_;
    v7 = 1;
  }

  return [v5 v6];
}