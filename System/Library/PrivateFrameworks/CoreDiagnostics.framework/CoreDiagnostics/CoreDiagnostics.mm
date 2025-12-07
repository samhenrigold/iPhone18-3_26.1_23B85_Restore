unint64_t sub_1D97FBFCC()
{
  result = qword_1EDCFE310;
  if (!qword_1EDCFE310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCFE310);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D97FC078()
{
  result = qword_1EDCFE308;
  if (!qword_1EDCFE308)
  {
    sub_1D97FBFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE308);
  }

  return result;
}

uint64_t _s15CoreDiagnostics19CompatibilityBridgeC23WriteJetsamMemoryReport22visibilityEndowmentSet014audioAssertionK0SbShySo8NSNumberCGSg_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9849C54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  if (a1)
  {
    v11 = sub_1D97FC4A4(a1);
    if (v11)
    {
      if (!a2)
      {
        goto LABEL_13;
      }

LABEL_12:
      v20 = sub_1D97FC4A4(a2);
      if (v20)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }
  }

  sub_1D9849C44();

  v12 = sub_1D9849C24();
  v13 = sub_1D984A124();

  if (os_log_type_enabled(v12, v13))
  {
    v31 = v4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    if (a1)
    {
      sub_1D97FBFCC();
      sub_1D97FC078();
      v16 = sub_1D984A0B4();
      v18 = v17;
    }

    else
    {
      v16 = 0x7263736564206F4ELL;
      v18 = 0xEE006E6F69747069;
    }

    v19 = sub_1D9819F0C(v16, v18, &v32);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1D97FA000, v12, v13, "Unable to represent visibility endowments as a set as PIDs: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1DA738F10](v15, -1, -1);
    MEMORY[0x1DA738F10](v14, -1, -1);

    v4 = v31;
    (*(v5 + 8))(v10, v31);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  v11 = 0;
  if (a2)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_1D9849C44();

  v21 = sub_1D9849C24();
  v22 = sub_1D984A124();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315138;
    if (a2)
    {
      sub_1D97FBFCC();
      sub_1D97FC078();
      v25 = sub_1D984A0B4();
      v27 = v26;
    }

    else
    {
      v25 = 0x7263736564206F4ELL;
      v27 = 0xEE006E6F69747069;
    }

    v28 = sub_1D9819F0C(v25, v27, &v32);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1D97FA000, v21, v22, "Unable to represent audio assertions as a set as PIDs: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1DA738F10](v24, -1, -1);
    MEMORY[0x1DA738F10](v23, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v20 = 0;
LABEL_19:
  v29 = WriteJetsamMemoryReport(visibilityEndowmentSet:audioAssertionSet:)(v11, v20);

  return v29 & 1;
}

uint64_t sub_1D97FC4A4(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1D984A2E4())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E98, &qword_1D984F918);
  v3 = sub_1D984A334();
  if (v2)
  {
LABEL_4:

    sub_1D984A2D4();
    sub_1D97FBFCC();
    sub_1D97FC078();
    result = sub_1D984A0C4();
    v1 = v17;
    v5 = v18;
    v6 = v19;
    v7 = v20;
    v8 = v21;
    goto LABEL_11;
  }

LABEL_7:
  v9 = -1 << *(v1 + 32);
  v5 = v1 + 56;
  v6 = ~v9;
  v10 = -v9;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v8 = v11 & *(v1 + 56);

  v7 = 0;
LABEL_11:
  if (v1 < 0)
  {
    if (!sub_1D984A2F4())
    {
LABEL_21:
      sub_1D97FC7D8(v1);
      return v3;
    }

    sub_1D97FBFCC();
    swift_dynamicCast();
    v15 = v16;
LABEL_20:
    sub_1D984A684();

    sub_1D97FC7D8(v1);

    return 0;
  }

  v12 = v8;
  v13 = v7;
  if (v8)
  {
LABEL_17:
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    goto LABEL_20;
  }

  v14 = v7;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= ((v6 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v12 = *(v5 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t WriteJetsamMemoryReport(visibilityEndowmentSet:audioAssertionSet:)(void *a1, void *a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v5 = sub_1D9849DC4();
  v6 = [v4 initWithMachServiceName:v5 options:4096];

  v7 = [objc_opt_self() interfaceWithProtocol_];
  [v6 setRemoteObjectInterface_];

  [v6 resume];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v19 = sub_1D983AA70;
  v20 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1D983AC08;
  v18 = &block_descriptor_3;
  v9 = _Block_copy(&aBlock);
  v10 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v9);
  sub_1D984A284();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41E90, &qword_1D984F8E8);
  if (swift_dynamicCast())
  {
    if (a1)
    {
      a1 = sub_1D984A094();
    }

    if (a2)
    {
      a2 = sub_1D984A094();
    }

    v19 = sub_1D983AC78;
    v20 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1D983ACB8;
    v18 = &block_descriptor_3;
    v11 = _Block_copy(&aBlock);

    [v14 writeJetsamMemoryReportWithVisibilityEndowmentSet:a1 audioAssertionSet:a2 with:v11];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  [v6 invalidate];

  swift_beginAccess();
  v12 = *(v8 + 16);

  return v12;
}

CoreDiagnostics::CrashPatternInfo::Frame __swiftcall CrashPatternInfo.Frame.init(symbol:imageIndex:)(Swift::String_optional symbol, Swift::UInt imageIndex)
{
  *v2 = symbol;
  v2[1].value._countAndFlagsBits = imageIndex;
  result.symbol = symbol;
  result.imageIndex = imageIndex;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

CoreDiagnostics::CrashPatternInfo::Thread __swiftcall CrashPatternInfo.Thread.init(frames:name:triggered:)(Swift::OpaquePointer frames, Swift::String_optional name, Swift::Bool_optional triggered)
{
  *(v3 + 8) = name;
  *v3 = frames;
  *(v3 + 24) = triggered;
  result.name = name;
  result.frames = frames;
  result.triggered = triggered;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id CrashPatternInfo.init(procName:threads:usedImages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName];
  *v5 = a1;
  *(v5 + 1) = a2;
  *&v4[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads] = a3;
  *&v4[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for CrashPatternInfo();
  return objc_msgSendSuper2(&v7, sel_init);
}

id DiagnosticPatternMatching.init(type:)(int a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D984A164();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D984A154();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1D9849D54();
  MEMORY[0x1EEE9AC00](v9 - 8);
  *&v1[OBJC_IVAR____SwiftDiagnosticPatternMatching_type] = a1;
  v10 = &v1[OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher];
  if ((a1 - 1) > 1)
  {
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    sub_1D981A4E8(v10, &qword_1ECB41608, &qword_1D984C090);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v11 = sub_1D97FCF98();
    v16 = "n";
    v17 = v11;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0;
    sub_1D9849D44();
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D97FCFE4(&qword_1EDCFE318, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    v14 = v4;
    v15 = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41610, &qword_1D984C098);
    sub_1D97FD02C(&qword_1EDCFE320, &qword_1ECB41610, &qword_1D984C098, MEMORY[0x1E69E6328]);
    sub_1D984A2B4();
    (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v14);
    *&v1[OBJC_IVAR____SwiftDiagnosticPatternMatching_asyncQueue] = sub_1D984A1A4();
    v18.receiver = v1;
    v18.super_class = v15;
    return objc_msgSendSuper2(&v18, sel_init);
  }
}

unint64_t sub_1D97FCF98()
{
  result = qword_1EDCFE9C0;
  if (!qword_1EDCFE9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCFE9C0);
  }

  return result;
}

uint64_t sub_1D97FCFE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D97FD02C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

double DiagnosticPatternMatching.lookForCrashPatternRemote(report:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D97FD0F8(a1, &unk_1F550B5C8, sub_1D97FE778, &block_descriptor_103, &qword_1ECB41708, &unk_1D984CC40, &qword_1EDCFE400, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D97FD0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, unint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v101 = a7;
  v102 = a6;
  v100 = a5;
  v114 = a4;
  v113 = a3;
  v112 = a2;
  v115 = a1;
  v9 = sub_1D9849CF4();
  v103 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v104 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41640, &qword_1D984C0C0);
  v11 = MEMORY[0x1EEE9AC00](v109);
  v105 = (v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v93 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v123 = v93 - v16;
  v122 = sub_1D9849D14();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v118 = (v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = sub_1D9849D74();
  v119 = *(v120 - 8);
  v18 = MEMORY[0x1EEE9AC00](v120);
  v116 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v117 = v93 - v20;
  v111 = sub_1D9849D34();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v22 = v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D984A164();
  v106 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D984A154();
  MEMORY[0x1EEE9AC00](v26);
  v108 = sub_1D9849D54();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v28 = v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D9849CA4();
  result = MEMORY[0x1EEE9AC00](v29 - 8);
  if (qword_1EDCFE368 != -1)
  {
    result = swift_once();
  }

  if (byte_1EDCFE370 != 1)
  {
    *a8 = MEMORY[0x1E69E7CC0];
    *(a8 + 8) = 0;
    *(a8 + 16) = 0;
    return result;
  }

  v99 = v22;
  v97 = v9;
  v98 = v15;
  *&v128 = 0xD000000000000010;
  *(&v128 + 1) = 0x80000001D9853B00;
  v129 = 1;
  sub_1D9849CD4();
  sub_1D9849C94();
  v31 = sub_1D9849C84();
  v93[0] = 0;
  v96 = a8;
  v32 = v31;

  v94 = dispatch_semaphore_create(0);
  v93[2] = sub_1D97FCF98();
  v93[1] = "t to listener, error: ";
  sub_1D9849D44();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D97FCFE4(&qword_1EDCFE318, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41610, &qword_1D984C098);
  v95 = MEMORY[0x1E69E6328];
  sub_1D97FD02C(&qword_1EDCFE320, &qword_1ECB41610, &qword_1D984C098, MEMORY[0x1E69E6328]);
  sub_1D984A2B4();
  (v106)[13](v25, *MEMORY[0x1E69E8090], v23);
  v106 = sub_1D984A1A4();
  v33 = swift_allocBox();
  v35 = v34;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41648, &qword_1D984C0C8);
  v36 = *(v109 - 8);
  (*(v36 + 56))(v35, 1, 1, v109);
  v37 = swift_allocObject();
  v37[2] = v33;
  v37[3] = v32;
  v112 = v32;
  v38 = v115;
  v39 = v94;
  v37[4] = v115;
  v37[5] = v39;
  aBlock[4] = v113;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D97FE3F0;
  aBlock[3] = v114;
  v40 = _Block_copy(aBlock);
  v41 = (v38 & 0x7FFFFFFFFFFFFFFFLL);
  v42 = v39;
  v115 = v33;

  sub_1D9849D44();
  *&v125 = MEMORY[0x1E69E7CC0];
  sub_1D97FCFE4(&qword_1EDCFE360, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41650, &qword_1D984C0D0);
  sub_1D97FD02C(&qword_1EDCFE328, &qword_1ECB41650, &qword_1D984C0D0, v95);
  v43 = v99;
  v44 = v106;
  v45 = v111;
  sub_1D984A2B4();
  MEMORY[0x1DA737DF0](0, v28, v43, v40);
  _Block_release(v40);
  v46 = v42;
  (*(v110 + 8))(v43, v45);
  (*(v107 + 8))(v28, v108);

  v47 = v116;
  sub_1D9849D64();
  v48 = v118;
  *v118 = 10;
  v49 = v121;
  v50 = v122;
  (*(v121 + 104))(v48, *MEMORY[0x1E69E7F48], v122);
  v51 = v117;
  MEMORY[0x1DA7379E0](v47, v48);
  (*(v49 + 8))(v48, v50);
  v52 = *(v119 + 8);
  v53 = v120;
  v52(v47, v120);
  sub_1D984A1B4();
  v52(v51, v53);
  swift_beginAccess();
  v54 = v35;
  v55 = v123;
  sub_1D981A480(v35, v123, &qword_1ECB41640, &qword_1D984C0C0);
  v56 = *(v36 + 48);
  v57 = v109;
  v58 = v56(v55, 1);
  if (v58 != 1)
  {
    v60 = v46;
    sub_1D981A4E8(v55, &qword_1ECB41640, &qword_1D984C0C0);
    v61 = v98;
    sub_1D981A480(v54, v98, &qword_1ECB41640, &qword_1D984C0C0);
    if ((v56)(v61, 1, v57) == 1)
    {

      v62 = v96;
    }

    else
    {
      sub_1D981A474(v128, *(&v128 + 1), v129);
      v63 = v61;
      v64 = v105;
      sub_1D981A480(v63, v105, &qword_1ECB41640, &qword_1D984C0C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v65 = *v64;
        *&v125 = 0;
        *(&v125 + 1) = 0xE000000000000000;
        sub_1D984A354();
        MEMORY[0x1DA737B20](0xD000000000000025, 0x80000001D9853BC0);
        swift_getErrorValue();
        sub_1D984A5E4();

        v128 = v125;
        v129 = 1;
        v62 = v96;
      }

      else
      {
        v66 = v103;
        v67 = v104;
        v68 = v97;
        (*(v103 + 32))(v104, v64, v97);
        v69 = v100;
        v70 = v102;
        __swift_instantiateConcreteTypeFromMangledNameV2(v100, v102);
        sub_1D97FD02C(v101, v69, v70, &protocol conformance descriptor for PatternMatchResult<A>);
        v71 = v93[0];
        sub_1D9849CE4();
        v62 = v96;
        if (v71)
        {
          (*(v66 + 8))(v67, v68);

          sub_1D981A4E8(v98, &qword_1ECB41640, &qword_1D984C0C0);

          if (qword_1EDCFE578 != -1)
          {
            swift_once();
          }

          v72 = sub_1D9849C54();
          __swift_project_value_buffer(v72, qword_1EDD005E8);
          v73 = v71;
          v74 = sub_1D9849C24();
          v75 = sub_1D984A134();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *v76 = 138412290;
            v78 = v71;
            v79 = _swift_stdlib_bridgeErrorToNSError();
            *(v76 + 4) = v79;
            *v77 = v79;
            _os_log_impl(&dword_1D97FA000, v74, v75, "Failed to send message or decode reply: %@", v76, 0xCu);
            sub_1D981A4E8(v77, &qword_1ECB41628, &qword_1D984E3B0);
            MEMORY[0x1DA738F10](v77, -1, -1);
            MEMORY[0x1DA738F10](v76, -1, -1);
          }

          *&v125 = 0;
          *(&v125 + 1) = 0xE000000000000000;
          sub_1D984A354();
          MEMORY[0x1DA737B20](0xD000000000000028, 0x80000001D9853BF0);
          swift_getErrorValue();
          sub_1D984A5E4();

          v128 = v125;
          v129 = 1;
          goto LABEL_26;
        }

        v128 = v125;
        v129 = v126;
        if (qword_1EDCFE578 != -1)
        {
          swift_once();
        }

        v80 = sub_1D9849C54();
        __swift_project_value_buffer(v80, qword_1EDD005E8);
        v81 = v128;
        v82 = v129;
        sub_1D981A548(v128, *(&v128 + 1), v129);
        v83 = sub_1D9849C24();
        v84 = sub_1D984A134();
        sub_1D981A474(v81, *(&v81 + 1), v82);
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v124 = v86;
          *v85 = 136315138;
          v125 = v81;
          v126 = v82;
          sub_1D981A548(v81, *(&v81 + 1), v82);
          v87 = sub_1D9849E44();
          v89 = sub_1D9819F0C(v87, v88, &v124);

          *(v85 + 4) = v89;
          _os_log_impl(&dword_1D97FA000, v83, v84, "Received response: %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v86);
          v90 = v86;
          v62 = v96;
          MEMORY[0x1DA738F10](v90, -1, -1);
          MEMORY[0x1DA738F10](v85, -1, -1);
        }

        else
        {
        }

        (*(v66 + 8))(v104, v97);
      }

      v61 = v98;
    }

    sub_1D981A4E8(v61, &qword_1ECB41640, &qword_1D984C0C0);

LABEL_26:
    swift_beginAccess();
    v91 = v128;
    v92 = v129;
    *v62 = v128;
    *(v62 + 16) = v92;
    sub_1D981A548(v91, *(&v91 + 1), v92);
    sub_1D981A474(v91, *(&v91 + 1), v92);
    goto LABEL_27;
  }

  sub_1D981A474(v128, *(&v128 + 1), v129);
  sub_1D981A4E8(v55, &qword_1ECB41640, &qword_1D984C0C0);

  v59 = v96;
  *v96 = 0xD000000000000015;
  v59[1] = 0x80000001D9853B80;
  *(v59 + 16) = 1;
LABEL_27:
  sub_1D9849CB4();
}

uint64_t sub_1D97FE3F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D97FE434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41640, &qword_1D984C0C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = swift_projectBox();
  v11 = a3;
  sub_1D97FE77C();
  sub_1D9849CC4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41648, &qword_1D984C0C8);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  swift_beginAccess();
  sub_1D981B098(v7, v8);
  return sub_1D984A1C4();
}

unint64_t sub_1D97FE77C()
{
  result = qword_1EDCFE378;
  if (!qword_1EDCFE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE378);
  }

  return result;
}

uint64_t XPCPatternInfoContainer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41658, &qword_1D984C0D8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41660, &qword_1D984C0E0);
  v21 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41668, &qword_1D984C0E8);
  v8 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v10 = &v18 - v9;
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FEBD8();
  sub_1D984A704();
  if (v11 < 0)
  {
    v14 = v11 & 0x7FFFFFFFFFFFFFFFLL;
    LOBYTE(v23) = 1;
    sub_1D981A56C();
    v15 = v18;
    v16 = v22;
    sub_1D984A504();
    v23 = v14;
    type metadata accessor for PanicPatternInfo();
    sub_1D97FCFE4(&qword_1ECB41678, type metadata accessor for PanicPatternInfo, &protocol conformance descriptor for PanicPatternInfo);
    v17 = v20;
    sub_1D984A5A4();
    (*(v19 + 8))(v15, v17);
    return (*(v8 + 8))(v10, v16);
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_1D97FEC2C();
    v12 = v22;
    sub_1D984A504();
    v23 = v11;
    type metadata accessor for CrashPatternInfo();
    sub_1D97FCFE4(&qword_1EDCFE418, type metadata accessor for CrashPatternInfo, &protocol conformance descriptor for CrashPatternInfo);
    sub_1D984A5A4();
    (*(v21 + 8))(v7, v5);
    return (*(v8 + 8))(v10, v12);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D97FEBD8()
{
  result = qword_1EDCFE750;
  if (!qword_1EDCFE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE750);
  }

  return result;
}

unint64_t sub_1D97FEC2C()
{
  result = qword_1EDCFE738;
  if (!qword_1EDCFE738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE738);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CrashPatternInfo.Frame.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashPatternInfo.Frame.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D97FEDE8()
{
  if (*v0)
  {
    return 0x63696E6170;
  }

  else
  {
    return 0x6873617263;
  }
}

_WORD *storeEnumTagSinglePayload for CrashPatternAction(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashPatternAction(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t sub_1D97FEF0C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418F0, &qword_1D984D5B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF130();
  sub_1D984A704();
  LOBYTE(v11) = 0;
  sub_1D984A584();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418F8, &qword_1D984D5C0);
    sub_1D982153C();
    sub_1D984A534();
    v11 = *(v3 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41900, &qword_1D984D5C8);
    sub_1D9821614();
    sub_1D984A534();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D97FF130()
{
  result = qword_1EDCFE9B8;
  if (!qword_1EDCFE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE9B8);
  }

  return result;
}

uint64_t sub_1D97FF184()
{
  v1 = 0x73646165726874;
  if (*v0 != 1)
  {
    v1 = 0x67616D4964657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E636F7270;
  }
}

uint64_t storeEnumTagSinglePayload for CrashPatternDefinition.SymbolName.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashPatternDefinition.SymbolName.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t CrashPatternInfo.Thread.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418B8, &qword_1D984D580);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v12 = v1[2];
  v13 = v8;
  v11[1] = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF538();

  sub_1D984A704();
  v17 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418C0, &qword_1D984D588);
  sub_1D9820D2C();
  sub_1D984A5A4();

  if (!v2)
  {
    v15 = 1;
    sub_1D984A514();
    v14 = 2;
    sub_1D984A524();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D97FF538()
{
  result = qword_1EDCFE970;
  if (!qword_1EDCFE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE970);
  }

  return result;
}

uint64_t sub_1D97FF58C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6572656767697274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656D617266;
  }
}

uint64_t CrashPatternInfo.Frame.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418D0, &qword_1D984D598);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF78C();
  sub_1D984A704();
  v11 = 0;
  v7 = v9[1];
  sub_1D984A514();
  if (!v7)
  {
    v10 = 1;
    sub_1D984A594();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D97FF78C()
{
  result = qword_1EDCFE988;
  if (!qword_1EDCFE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE988);
  }

  return result;
}

uint64_t sub_1D97FF7E0()
{
  if (*v0)
  {
    return 0x646E496567616D69;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t sub_1D97FF81C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418E0, &qword_1D984D5A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF958();
  sub_1D984A704();
  sub_1D984A514();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D97FF958()
{
  result = qword_1EDCFE9A0;
  if (!qword_1EDCFE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE9A0);
  }

  return result;
}

uint64_t sub_1D97FF9EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D97FFA3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t XPCPatternInfoContainer.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41680, &qword_1D984C0F0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41688, &qword_1D984C0F8);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41690, &unk_1D984C100);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - v11;
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D97FEBD8();
  v14 = v30;
  sub_1D984A6F4();
  if (!v14)
  {
    v30 = v6;
    v15 = v10;
    v16 = v28;
    v17 = v29;
    v18 = sub_1D984A4E4();
    if (*(v18 + 16) == 1)
    {
      v25[1] = v18;
      if (*(v18 + 32))
      {
        LOBYTE(v32) = 1;
        sub_1D981A56C();
        sub_1D984A424();
        type metadata accessor for PanicPatternInfo();
        sub_1D97FCFE4(&qword_1ECB416A0, type metadata accessor for PanicPatternInfo, &protocol conformance descriptor for PanicPatternInfo);
        sub_1D984A4D4();
        (*(v27 + 8))(v5, v16);
        (*(v15 + 8))(v12, v9);
        swift_unknownObjectRelease();
        *v17 = v32 | 0x8000000000000000;
      }

      else
      {
        LOBYTE(v32) = 0;
        sub_1D97FEC2C();
        v22 = v8;
        sub_1D984A424();
        type metadata accessor for CrashPatternInfo();
        sub_1D97FCFE4(&qword_1EDCFE410, type metadata accessor for CrashPatternInfo, &protocol conformance descriptor for CrashPatternInfo);
        v24 = v30;
        sub_1D984A4D4();
        (*(v26 + 8))(v22, v24);
        (*(v15 + 8))(v12, v9);
        swift_unknownObjectRelease();
        *v17 = v32;
      }
    }

    else
    {
      v19 = sub_1D984A3A4();
      swift_allocError();
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41698, &qword_1D984D0B0);
      *v21 = &type metadata for XPCPatternInfoContainer;
      sub_1D984A434();
      sub_1D984A364();
      (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
      swift_willThrow();
      (*(v15 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v31);
}

uint64_t sub_1D97FFFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6873617263 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D984A5F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x63696E6170 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D984A5F4();

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

char *sub_1D98000B4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for CrashPatternInfo());
  result = CrashPatternInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

char *CrashPatternInfo.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41908, &qword_1D984D5D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF130();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for CrashPatternInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    v9 = sub_1D984A4B4();
    v11 = (v1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName);
    *v11 = v9;
    v11[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418F8, &qword_1D984D5C0);
    v16 = 1;
    sub_1D9821730();
    sub_1D984A464();
    *(v1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41900, &qword_1D984D5C8);
    v16 = 2;
    sub_1D9821808();
    sub_1D984A464();
    *(v1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages) = v17;
    v13 = type metadata accessor for CrashPatternInfo();
    v15.receiver = v1;
    v15.super_class = v13;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t sub_1D98003EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9800430(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t CrashPatternInfo.Thread.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418C8, &qword_1D984D590);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF538();
  sub_1D984A6F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418C0, &qword_1D984D588);
  v22 = 0;
  sub_1D9820E04();
  sub_1D984A4D4();
  v18 = a2;
  v9 = v23;
  v21 = 1;
  v10 = sub_1D984A444();
  v19 = v11;
  v12 = v10;
  v20 = 2;
  v13 = sub_1D984A454();
  (*(v6 + 8))(v8, v5);
  v14 = v18;
  v15 = v19;
  *v18 = v9;
  v14[1] = v12;
  v14[2] = v15;
  *(v14 + 24) = v13;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D9800700(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D980075C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t CrashPatternInfo.Frame.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418D8, &qword_1D984D5A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF78C();
  sub_1D984A6F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = 0;
  v9 = sub_1D984A444();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_1D984A4C4();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1D98009D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D9800A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t CrashPatternInfo.BinaryImage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418E8, &qword_1D984D5B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF958();
  sub_1D984A6F4();
  if (!v2)
  {
    v9 = sub_1D984A444();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t CrashPatternInfo.procName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName);

  return v1;
}

void sub_1D9800C64()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = sub_1D9801420(*v0, v2, v5, v4, &qword_1ECB41808, &qword_1D984D0D0, sub_1D981FF14);
  if (v6)
  {
    v7 = v6;
    if (qword_1EDCFE578 != -1)
    {
LABEL_26:
      swift_once();
    }

    v8 = sub_1D9849C54();
    __swift_project_value_buffer(v8, qword_1EDD005E8);

    v9 = sub_1D9849C24();
    v10 = sub_1D984A124();

    v47 = v1;
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v5;
      v5 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v68 = v12;
      *v5 = 136315906;
      *(v5 + 4) = sub_1D9819F0C(v3, v2, &v68);
      *(v5 + 12) = 2080;
      *(v5 + 14) = sub_1D9819F0C(v11, v4, &v68);
      *(v5 + 22) = 2080;
      *(v5 + 24) = sub_1D9819F0C(0xD000000000000016, 0x80000001D984CEE0, &v68);
      *(v5 + 32) = 2048;
      *(v5 + 34) = v7[2];

      _os_log_impl(&dword_1D97FA000, v9, v10, "Successfully parsed payload for %s in namespace %s as type %s. Count = %ld", v5, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v12, -1, -1);
      MEMORY[0x1DA738F10](v5, -1, -1);
    }

    else
    {
    }

    v1 = v7;
    v4 = 0;
    v3 = v7[2];
    v50 = v7 + 4;
    v21 = &qword_1ECB41810;
    v22 = &qword_1D984D0D8;
    v48 = v7;
    v49 = v3;
    while (1)
    {
      if (v4 == v3)
      {
        sub_1D981FEF8(&v68);
        v2 = v68;
        v81 = v73;
        v82 = v74;
        v83 = v75;
        v84 = v76;
        v77 = v69;
        v78 = v70;
        v24 = v71;
        v25 = v72;
        v4 = v3;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (v4 >= v1[2])
        {
          goto LABEL_25;
        }

        v26 = &v50[16 * v4];
        v27 = *v26;
        v28 = *(v26 + 1);
        v29 = *(v26 + 3);
        v54 = *(v26 + 2);
        v55 = v29;
        v52 = v27;
        v53 = v28;
        v30 = *(v26 + 4);
        v31 = *(v26 + 5);
        v32 = *(v26 + 7);
        v58 = *(v26 + 6);
        v59 = v32;
        v56 = v30;
        v57 = v31;
        v33 = *v26;
        v34 = *(v26 + 1);
        v35 = *(v26 + 3);
        v62 = *(v26 + 2);
        v63 = v35;
        v60 = v33;
        v61 = v34;
        v36 = *(v26 + 4);
        v37 = *(v26 + 5);
        v38 = *(v26 + 7);
        v66 = *(v26 + 6);
        v67 = v38;
        v64 = v36;
        v65 = v37;
        v68 = v4;
        v73 = v36;
        v74 = v37;
        v75 = v66;
        v76 = v38;
        v69 = v60;
        v70 = v61;
        v71 = v62;
        v72 = v63;
        nullsub_1();
        sub_1D981A480(&v52, v51, v21, v22);
        v2 = v68;
        v81 = v73;
        v82 = v74;
        v83 = v75;
        v84 = v76;
        v77 = v69;
        v78 = v70;
        v24 = v71;
        v25 = v72;
        ++v4;
      }

      v79 = v24;
      v80 = v25;
      v73 = v81;
      v74 = v82;
      v75 = v83;
      v76 = v84;
      v69 = v77;
      v70 = v78;
      v71 = v24;
      v72 = v25;
      v68 = v2;
      if (sub_1D981FEE0(&v68) == 1)
      {
        break;
      }

      v64 = v81;
      v65 = v82;
      v66 = v83;
      v67 = v84;
      v60 = v77;
      v61 = v78;
      v62 = v79;
      v63 = v80;
      sub_1D981A480(&v60, &v52, v21, v22);
      v7 = v22;
      v39 = sub_1D9849C24();
      v5 = sub_1D984A114();
      if (os_log_type_enabled(v39, v5))
      {
        v40 = v21;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v51[0] = v42;
        *v41 = 134218242;
        *(v41 + 4) = v2;
        *(v41 + 12) = 2080;
        v56 = v64;
        v57 = v65;
        v58 = v66;
        v59 = v67;
        v52 = v60;
        v53 = v61;
        v54 = v62;
        v55 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(v40, v7);
        v43 = sub_1D9849E44();
        v2 = v44;
        v45 = sub_1D9819F0C(v43, v44, v51);

        *(v41 + 14) = v45;
        _os_log_impl(&dword_1D97FA000, v39, v5, "Payload %ld: %s", v41, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x1DA738F10](v42, -1, -1);
        v46 = v41;
        v21 = v40;
        v1 = v48;
        v3 = v49;
        MEMORY[0x1DA738F10](v46, -1, -1);
        v23 = v40;
      }

      else
      {
        sub_1D981A4E8(&v60, v21, v22);
        v23 = v21;
      }

      sub_1D981A4E8(&v60, v23, v7);

      v22 = v7;
    }

    v47[4] = v1;
  }

  else
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v13 = sub_1D9849C54();
    __swift_project_value_buffer(v13, qword_1EDD005E8);

    v14 = sub_1D9849C24();
    v15 = sub_1D984A124();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v1;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v68 = v18;
      *v17 = 136315650;
      v19 = sub_1D9819F0C(v3, v2, &v68);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      v20 = sub_1D9819F0C(v5, v4, &v68);

      *(v17 + 14) = v20;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_1D9819F0C(0xD000000000000016, 0x80000001D984CEE0, &v68);
      _os_log_impl(&dword_1D97FA000, v14, v15, "Unable to parse payload for %s in namespace %s as type %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v18, -1, -1);
      v1 = v16;
      MEMORY[0x1DA738F10](v17, -1, -1);
    }

    else
    {
    }

    v1[4] = MEMORY[0x1E69E7CC0];
  }
}

double CrashMatcherOOP.init()@<D0>(uint64_t a1@<X8>)
{
  strcpy(&v4, "crashPayload");
  BYTE13(v4) = 0;
  HIWORD(v4) = -5120;
  *&v5 = 0x80000001D9853DC0;
  *(&v5 + 1) = MEMORY[0x1E69E7CC0];
  sub_1D9800C64();
  result = *&v4;
  v3 = v5;
  *a1 = v4;
  *(a1 + 16) = 0xD000000000000021;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_1D9801420(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v48 = a6;
  v49 = a7;
  v47 = a5;
  v11 = sub_1D984A394();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v46[13] = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v46[11] = v46 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v46 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v46[12] = v46 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v46[9] = v46 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v46[10] = v46 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v46[7] = v46 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v46[6] = v46 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v46[8] = v46 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v46[4] = v46 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v46[5] = v46 - v34;
  v35 = sub_1D984A3A4();
  v46[14] = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  sub_1D9802870(a1, a2, a3, a4);
  if (!v36)
  {
    return 0;
  }

  v46[1] = v19;
  v46[3] = v11;
  v46[2] = v12;
  v37 = sub_1D98499C4();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v46 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9849984();
  v41 = sub_1D98499D4();
  v43 = v42;
  v44 = v41;
  (*(v38 + 8))(v40, v37);

  sub_1D9849864();
  swift_allocObject();
  sub_1D9849854();
  __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
  v49();
  sub_1D9849844();

  sub_1D981FA9C(v44, v43);
  return v50;
}

uint64_t sub_1D9802870(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!MEMORY[0x1E69DB520])
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v23 = sub_1D9849C54();
    __swift_project_value_buffer(v23, qword_1EDD005E8);
    v8 = sub_1D9849C24();
    v24 = sub_1D984A134();
    if (os_log_type_enabled(v8, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D97FA000, v8, v24, "Trial is not available", v25, 2u);
      MEMORY[0x1DA738F10](v25, -1, -1);
    }

    goto LABEL_24;
  }

  v8 = [objc_opt_self() clientWithIdentifier_];
  v9 = sub_1D9849DC4();
  v10 = sub_1D9849DC4();
  v11 = [v8 levelForFactor:v9 withNamespaceName:v10];

  if (!v11)
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v26 = sub_1D9849C54();
    __swift_project_value_buffer(v26, qword_1EDD005E8);

    v27 = sub_1D9849C24();
    v28 = sub_1D984A124();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_1D9819F0C(a1, a2, &v40);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1D9819F0C(a3, a4, &v40);
      _os_log_impl(&dword_1D97FA000, v27, v28, "Missing level for %s in namespace %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v30, -1, -1);
      MEMORY[0x1DA738F10](v29, -1, -1);
    }

    goto LABEL_23;
  }

  v12 = [v11 fileValue];
  if (!v12)
  {
    __break(1u);
    JUMPOUT(0x1D9802EB0);
  }

  v13 = v12;
  v14 = [v12 path];

  if (!v14)
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v31 = sub_1D9849C54();
    __swift_project_value_buffer(v31, qword_1EDD005E8);

    v32 = sub_1D9849C24();
    v33 = sub_1D984A124();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_1D9819F0C(a1, a2, &v40);
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_1D9819F0C(a3, a4, &v40);
      _os_log_impl(&dword_1D97FA000, v32, v33, "Missing asset for %s in namespace %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v35, -1, -1);
      MEMORY[0x1DA738F10](v34, -1, -1);
    }

LABEL_23:
    [v8 dispose];
LABEL_24:
    v15 = 0;
    goto LABEL_26;
  }

  v38 = a1;
  v39 = a3;
  v15 = sub_1D9849DF4();
  v17 = v16;

  if (qword_1EDCFE578 != -1)
  {
    swift_once();
  }

  v18 = sub_1D9849C54();
  __swift_project_value_buffer(v18, qword_1EDD005E8);

  v19 = sub_1D9849C24();
  v20 = sub_1D984A134();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40 = v22;
    *v21 = 136315650;
    *(v21 + 4) = sub_1D9819F0C(v15, v17, &v40);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1D9819F0C(v38, a2, &v40);
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_1D9819F0C(v39, a4, &v40);
    _os_log_impl(&dword_1D97FA000, v19, v20, "Using Trial payload at %s for %s in namespace %s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA738F10](v22, -1, -1);
    MEMORY[0x1DA738F10](v21, -1, -1);

    [v8 dispose];
  }

  else
  {

    [v8 dispose];
  }

LABEL_26:

  return v15;
}

uint64_t sub_1D9803060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1D9818AC4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D98030B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D9803114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads);
  if (!v2)
  {
    return 2;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    return 2;
  }

  v4 = *(v2 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  for (i = (v2 + 56); ; i += 32)
  {
    v8 = *(i - 1);
    if (v6 & 1) == 0 || (*i)
    {
      if (v8)
      {
        v9 = *(i - 2) == v5 && v8 == v3;
        if (v9 || (sub_1D984A5F4() & 1) != 0)
        {
          break;
        }
      }
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D98031D4(uint64_t a1, uint64_t a2)
{
  v20 = *(a1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads);
  if (!v20)
  {
    return 2;
  }

  v2 = *(a2 + 40);
  if (!v2)
  {
    return 2;
  }

  v19 = *(v2 + 16);
  if (v19)
  {
    v3 = 0;
    v18 = v2 + 32;
    do
    {
      v4 = (v18 + 24 * v3);
      v5 = *(v4 + 17);
      v6 = *(v20 + 16);
      if (v6)
      {
        v7 = 0;
        v8 = *v4;
        v9 = v4[1];
        v10 = *(v4 + 16);
        while (1)
        {
          v11 = v20 + 32 + 32 * v7;
          v12 = *v11;
          if (v10 & 1) == 0 || (v13 = *(v11 + 24), v13 != 2) && (v13)
          {
            v14 = *(v12 + 16);
            if (v14)
            {
              break;
            }
          }

LABEL_8:
          if (++v7 == v6)
          {
            goto LABEL_24;
          }
        }

        v15 = (v12 + 40);
        while (1)
        {
          if (*v15)
          {
            v16 = *(v15 - 1) == v8 && *v15 == v9;
            if (v16 || (sub_1D984A5F4() & 1) != 0)
            {
              break;
            }
          }

          v15 += 3;
          if (!--v14)
          {
            goto LABEL_8;
          }
        }

        if (v5 != 2 && (v5 & 1) != 0)
        {
          return 0;
        }
      }

      else
      {
LABEL_24:
        if (v5 == 2 || (v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
    }

    while (v3 != v19);
  }

  return 1;
}

void sub_1D9803338(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads);
  if (v2)
  {
    v3 = *(a2 + 56);
    if (v3)
    {
      v4 = *(v2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = *(a2 + 48);
        v7 = *(a2 + 64);
        v24 = a1;
        v25 = OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages;
        v8 = v2 + 32;
        v23 = *(v2 + 16);
        v22 = v7;
        while (v5 < *(v2 + 16))
        {
          v9 = (v8 + 32 * v5);
          v10 = *v9;
          if (v7 & 1) == 0 || (v11 = *(v9 + 24), v11 != 2) && (v11)
          {
            v12 = *(v10 + 16);
            if (v12)
            {
              v13 = *(a1 + v25);

              v14 = 0;
              v15 = 48;
              while (v14 < *(v10 + 16))
              {
                if (v13)
                {
                  v16 = *(v10 + v15);
                  v17 = *(v13 + 16);
                  if (v17 && v16 < v17)
                  {
                    v19 = (v13 + 32 + 16 * v16);
                    v20 = v19[1];
                    if (v20)
                    {
                      v21 = *v19 == v6 && v20 == v3;
                      if (v21 || (sub_1D984A5F4() & 1) != 0)
                      {

                        return;
                      }
                    }

                    else
                    {
                    }
                  }
                }

                ++v14;
                v15 += 24;
                if (v12 == v14)
                {

                  v4 = v23;
                  a1 = v24;
                  v7 = v22;
                  v8 = v2 + 32;
                  goto LABEL_7;
                }
              }

              __break(1u);
              break;
            }
          }

LABEL_7:
          if (++v5 == v4)
          {
            return;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1D98034D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9803554()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D98035FC()
{
  sub_1D981FA9C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D9803644()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D980367C()
{
  MEMORY[0x1DA738FB0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D98036B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D98036F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t getScenarioStateVerboseFromEventDataWrapper(char a1)
{
  if (a1)
  {
    v1 = "ON";
  }

  else
  {
    v1 = "OFF";
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
}

__CFString *processName(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 20);
  v7[0] = *(v1 + 4);
  v7[1] = v2;
  v8 = *(v1 + 36);
  v9 = 0;
  if (LOBYTE(v7[0]))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  }

  else
  {
    v3 = @"unknown";
  }

  v4 = @"(unprintable)";
  if (v3)
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

__CFString *killDescription(unint64_t a1)
{
  if (a1 >= 0x12)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown-%llu)", a1];
  }

  else
  {
    v2 = off_1E85851E8[a1];
  }

  return v2;
}

uint64_t includeSection(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKeyedSubscript:a2];
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v5 = [v3 BOOLValue];
  }

  return v5;
}

uint64_t excludeSection(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKeyedSubscript:a2];
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v5 = [v3 BOOLValue] ^ 1;
  }

  return v5;
}

uint64_t kcdata_iter_size(uint64_t a1)
{
  v1 = *a1;
  if ((*a1 & 0xFFFFFFF0) == 0x20)
  {
    v1 = 17;
  }

  if (v1 <= 2309)
  {
    if (v1 == 17 || v1 == 19)
    {
      return *(a1 + 4);
    }

LABEL_15:
    v4 = *(a1 + 4);
    goto LABEL_19;
  }

  if (v1 != 2310)
  {
    if (v1 == 2312)
    {
      v4 = *(a1 + 4);
      if (v4 == 32)
      {
        if ((*(a1 + 8) & 0x8F) == 0)
        {
          return 24;
        }

        v4 = 32;
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v4 = *(a1 + 4);
  if (v4 == 112)
  {
    if ((*(a1 + 8) & 0x8F) == 0)
    {
      return 104;
    }

    v4 = 112;
  }

LABEL_19:
  v5 = v4 >= (*(a1 + 8) & 0xFu);
  v6 = v4 - (*(a1 + 8) & 0xF);
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

__CFString *DecodeQOS(int a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"QOS_CLASS_UNKNOWN (%u)", a1];
  }

  else
  {
    v2 = off_1E85855A0[a1];
  }

  return v2;
}

id DecodeThreadFlags(unint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E8585390, sizeof(__dst));
  v10 = xmmword_1E8585590;
  v4 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 32; ++i)
  {
    if (((1 << i) & a1) != 0)
    {
      if (*&__dst[256 * a2 + 8 * i])
      {
        [v4 addObject:?];
      }

      else
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_0x%04X", *&__dst[8 * a2 - 16], (1 << i)];
        [v4 addObject:v6];
      }
    }
  }

  for (j = 8; j != -8; j -= 8)
  {
  }

  for (k = 504; k != -8; k -= 8)
  {
  }

  return v4;
}

void handleDiagnosticLog(uint64_t a1, void *a2)
{
  v4 = a2;
  if (OSAIsFeedbackPromptingEnabled())
  {
    gotLoadHelper_x22__OBJC_CLASS___OSADiagnosticsReporter(v5);
    if (objc_opt_class() && (gotLoadHelper_x21__OBJC_CLASS___DiagnosticsReporterLaunchOptions(v6), objc_opt_class()))
    {
      v7 = objc_opt_new();
      [v7 setLog_path:v4];
      [*(v2 + 128) launchAppWith:a1 options:v7 completion:&__block_literal_global_0];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      handleDiagnosticLog_cold_1();
    }
  }
}

void __handleDiagnosticLog_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __handleDiagnosticLog_block_invoke_cold_1(v2);
  }
}

void sub_1D9813A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, ...)
{
  va_start(va, a46);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Swift::Bool __swiftcall DiagnosticPatternMatching.isPatternPayloadAvailable()()
{
  sub_1D981A480(v0 + OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher, v10, &qword_1ECB41608, &qword_1D984C090);
  v1 = v11;
  if (v11)
  {
    v2 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v4 = *(AssociatedTypeWitness - 8);
    MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v6 = &v10[-1] - v5;
    (*(v2 + 40))(v1, v2);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    LOBYTE(v1) = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v4 + 8))(v6, AssociatedTypeWitness);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    sub_1D981A4E8(v10, &qword_1ECB41608, &qword_1D984C090);
  }

  return v1 & 1;
}

BOOL DiagnosticPatternMatching.lookForPattern(report:)(uint64_t a1)
{
  v3 = OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher;
  sub_1D981A480(v1 + OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher, &v16, &qword_1ECB41608, &qword_1D984C090);
  v4 = v17;
  sub_1D981A4E8(&v16, &qword_1ECB41608, &qword_1D984C090);
  if (v4)
  {
    sub_1D981A480(v1 + v3, &v16, &qword_1ECB41608, &qword_1D984C090);
    v5 = v17;
    if (v17)
    {
      v6 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      if ((*(v6 + 48))(a1, v5, v6))
      {
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41638, &qword_1D984C0B8);
        v13 = sub_1D984A3C4();

        __swift_destroy_boxed_opaque_existential_1Tm(&v16);
        v14 = v13;
LABEL_15:
        v15 = *(v14 + 16);

        return v15 != 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    }

    else
    {
      sub_1D981A4E8(&v16, &qword_1ECB41608, &qword_1D984C090);
    }

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  if (qword_1EDCFE578 != -1)
  {
    swift_once();
  }

  v7 = sub_1D9849C54();
  __swift_project_value_buffer(v7, qword_1EDD005E8);
  v8 = v1;
  v9 = sub_1D9849C24();
  v10 = sub_1D984A134();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = *&v8[OBJC_IVAR____SwiftDiagnosticPatternMatching_type];

    _os_log_impl(&dword_1D97FA000, v9, v10, "there is no available matcher with type %u", v11, 8u);
    MEMORY[0x1DA738F10](v11, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t DiagnosticPatternMatching.lookForPattern(report:)(uint64_t a1)
{
  v3 = OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher;
  sub_1D981A480(v1 + OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher, &v14, &qword_1ECB41608, &qword_1D984C090);
  v4 = v15;
  sub_1D981A4E8(&v14, &qword_1ECB41608, &qword_1D984C090);
  if (v4)
  {
    sub_1D981A480(v1 + v3, &v14, &qword_1ECB41608, &qword_1D984C090);
    v5 = v15;
    if (v15)
    {
      v6 = v16;
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      if ((*(v6 + 48))(a1, v5, v6))
      {
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41638, &qword_1D984C0B8);
        v13 = sub_1D984A3C4();

        __swift_destroy_boxed_opaque_existential_1Tm(&v14);
        return v13;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    }

    else
    {
      sub_1D981A4E8(&v14, &qword_1ECB41608, &qword_1D984C090);
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v7 = sub_1D9849C54();
    __swift_project_value_buffer(v7, qword_1EDD005E8);
    v8 = v1;
    v9 = sub_1D9849C24();
    v10 = sub_1D984A134();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = *&v8[OBJC_IVAR____SwiftDiagnosticPatternMatching_type];

      _os_log_impl(&dword_1D97FA000, v9, v10, "there is no available matcher with type %u", v11, 8u);
      MEMORY[0x1DA738F10](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

void DiagnosticPatternMatching.lookForPatternAsync(report:callback:)(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  sub_1D981A480(&v3[OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher], v19, &qword_1ECB41608, &qword_1D984C090);
  v7 = v20;
  sub_1D981A4E8(v19, &qword_1ECB41608, &qword_1D984C090);
  if (v7)
  {
    v23 = MEMORY[0x1E69E7CC0];
    v8 = *&v3[OBJC_IVAR____SwiftDiagnosticPatternMatching_asyncQueue];
    v9 = swift_allocObject();
    v9[2] = &v23;
    v9[3] = v3;
    v9[4] = a1;
    v9[5] = &v24;
    v9[6] = a2;
    v9[7] = a3;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_1D981A440;
    *(a2 + 24) = v9;
    v21 = sub_1D981A444;
    v22 = a2;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1D98170A8;
    v20 = &block_descriptor;
    v10 = _Block_copy(v19);
    v11 = v3;
    v12 = a1;

    dispatch_async_and_wait(v8, v10);
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {

      return;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_1EDCFE578 != -1)
  {
LABEL_10:
    swift_once();
  }

  v14 = sub_1D9849C54();
  __swift_project_value_buffer(v14, qword_1EDD005E8);
  v15 = v3;
  v16 = sub_1D9849C24();
  v17 = sub_1D984A134();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = *(&v15->isa + OBJC_IVAR____SwiftDiagnosticPatternMatching_type);

    _os_log_impl(&dword_1D97FA000, v16, v17, "there is no available matcher with type %u", v18, 8u);
    MEMORY[0x1DA738F10](v18, -1, -1);
  }

  else
  {

    v16 = v15;
  }

  (a2)(v24);
}

uint64_t sub_1D9816EB8(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t (*a5)(void))
{
  sub_1D981A480(a2 + OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher, v13, &qword_1ECB41608, &qword_1D984C090);
  v9 = v14;
  if (!v14)
  {
    sub_1D981A4E8(v13, &qword_1ECB41608, &qword_1D984C090);
LABEL_4:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if (!(*(v10 + 48))(a3, v9, v10))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    goto LABEL_4;
  }

  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41638, &qword_1D984C0B8);
  v11 = sub_1D984A3C4();

  __swift_destroy_boxed_opaque_existential_1Tm(v13);
LABEL_7:
  *a1 = v11;

  if (*(*a1 + 16))
  {
    *a4 = 1;
  }

  return a5();
}

uint64_t DiagnosticPatternMatching.lookForPatternRemote<A>(report:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a4;
  v94 = a3;
  v112 = a2;
  v93 = sub_1D9849CF4();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v96 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41640, &qword_1D984C0C0);
  v8 = MEMORY[0x1EEE9AC00](v98);
  v97 = (v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v84 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v111 = (v84 - v13);
  v110 = sub_1D9849D14();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v106 = (v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = sub_1D9849D74();
  v107 = *(v108 - 8);
  v15 = MEMORY[0x1EEE9AC00](v108);
  v104 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v105 = v84 - v17;
  v103 = sub_1D9849D34();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D984A164();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D984A154();
  MEMORY[0x1EEE9AC00](v23);
  v100 = sub_1D9849D54();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v25 = v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D9849CA4();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v27 = *a1;
  if (qword_1EDCFE368 != -1)
  {
    swift_once();
  }

  if (byte_1EDCFE370 != 1)
  {
    result = sub_1D984A014();
    *a5 = result;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    return result;
  }

  v90 = v20;
  v91 = v27;
  v89 = v12;
  *&v116 = 0xD000000000000010;
  *(&v116 + 1) = 0x80000001D9853B00;
  v117 = 1;
  sub_1D9849CD4();
  sub_1D9849C94();
  v28 = sub_1D9849C84();
  v84[0] = 0;
  v88 = a5;
  v30 = v28;

  v85 = dispatch_semaphore_create(0);
  v87 = sub_1D97FCF98();
  v84[1] = "t to listener, error: ";
  sub_1D9849D44();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D97FCFE4(&qword_1EDCFE318, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41610, &qword_1D984C098);
  v86 = MEMORY[0x1E69E6328];
  sub_1D97FD02C(&qword_1EDCFE320, &qword_1ECB41610, &qword_1D984C098, MEMORY[0x1E69E6328]);
  sub_1D984A2B4();
  (v90)[13](v22, *MEMORY[0x1E69E8090], v19);
  v90 = sub_1D984A1A4();
  v31 = swift_allocBox();
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41648, &qword_1D984C0C8);
  v87 = *(v34 - 8);
  (*(v87 + 56))(v33, 1, 1, v34);
  v35 = swift_allocObject();
  v35[2] = v31;
  v35[3] = v30;
  v98 = v30;
  v36 = v91;
  v37 = v85;
  v35[4] = v91;
  v35[5] = v37;
  aBlock[4] = sub_1D97FE76C;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D97FE3F0;
  aBlock[3] = &block_descriptor_31;
  v38 = _Block_copy(aBlock);
  v39 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
  v40 = v37;
  v91 = v31;

  sub_1D9849D44();
  *&v113 = MEMORY[0x1E69E7CC0];
  sub_1D97FCFE4(&qword_1EDCFE360, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41650, &qword_1D984C0D0);
  sub_1D97FD02C(&qword_1EDCFE328, &qword_1ECB41650, &qword_1D984C0D0, v86);
  v41 = v101;
  v42 = v103;
  sub_1D984A2B4();
  MEMORY[0x1DA737DF0](0, v25, v41, v38);
  _Block_release(v38);
  (*(v102 + 8))(v41, v42);
  (*(v99 + 8))(v25, v100);

  v43 = v104;
  sub_1D9849D64();
  v44 = v106;
  *v106 = 10;
  v45 = v109;
  v46 = v110;
  (*(v109 + 104))(v44, *MEMORY[0x1E69E7F48], v110);
  v47 = v105;
  MEMORY[0x1DA7379E0](v43, v44);
  (*(v45 + 8))(v44, v46);
  v48 = *(v107 + 8);
  v49 = v108;
  v48(v43, v108);
  sub_1D984A1B4();
  v48(v47, v49);
  swift_beginAccess();
  v50 = v111;
  sub_1D981A480(v33, v111, &qword_1ECB41640, &qword_1D984C0C0);
  v51 = *(v87 + 48);
  if (v51(v50, 1, v34) != 1)
  {
    v53 = v90;
    sub_1D981A4E8(v50, &qword_1ECB41640, &qword_1D984C0C0);
    v54 = v89;
    sub_1D981A480(v33, v89, &qword_1ECB41640, &qword_1D984C0C0);
    if (v51(v54, 1, v34) == 1)
    {

      v55 = v88;
    }

    else
    {
      sub_1D981A474(v116, *(&v116 + 1), v117);
      v56 = v54;
      v57 = v97;
      sub_1D981A480(v56, v97, &qword_1ECB41640, &qword_1D984C0C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v58 = *v57;
        *&v113 = 0;
        *(&v113 + 1) = 0xE000000000000000;
        sub_1D984A354();
        MEMORY[0x1DA737B20](0xD000000000000025, 0x80000001D9853BC0);
        swift_getErrorValue();
        sub_1D984A5E4();

        v116 = v113;
        v117 = 1;
        v55 = v88;
      }

      else
      {
        v111 = v40;
        v61 = v92;
        v62 = v96;
        v63 = v93;
        (*(v92 + 32))(v96, v57, v93);
        type metadata accessor for PatternMatchResult(0, v112, v94, v95);
        swift_getWitnessTable();
        v64 = v84[0];
        sub_1D9849CE4();
        v55 = v88;
        if (v64)
        {
          (*(v61 + 8))(v62, v63);

          sub_1D981A4E8(v89, &qword_1ECB41640, &qword_1D984C0C0);

          if (qword_1EDCFE578 != -1)
          {
            swift_once();
          }

          v65 = sub_1D9849C54();
          __swift_project_value_buffer(v65, qword_1EDD005E8);
          v66 = v64;
          v67 = sub_1D9849C24();
          v68 = sub_1D984A134();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            *v69 = 138412290;
            v71 = v64;
            v72 = _swift_stdlib_bridgeErrorToNSError();
            *(v69 + 4) = v72;
            *v70 = v72;
            _os_log_impl(&dword_1D97FA000, v67, v68, "Failed to send message or decode reply: %@", v69, 0xCu);
            sub_1D981A4E8(v70, &qword_1ECB41628, &qword_1D984E3B0);
            MEMORY[0x1DA738F10](v70, -1, -1);
            MEMORY[0x1DA738F10](v69, -1, -1);
          }

          *&v113 = 0;
          *(&v113 + 1) = 0xE000000000000000;
          sub_1D984A354();
          MEMORY[0x1DA737B20](0xD000000000000028, 0x80000001D9853BF0);
          swift_getErrorValue();
          sub_1D984A5E4();

          v116 = v113;
          v117 = 1;
          goto LABEL_14;
        }

        v116 = v113;
        v117 = v114;
        if (qword_1EDCFE578 != -1)
        {
          swift_once();
        }

        v73 = sub_1D9849C54();
        __swift_project_value_buffer(v73, qword_1EDD005E8);
        v74 = v116;
        v75 = v117;
        sub_1D981A548(v116, *(&v116 + 1), v117);
        v76 = sub_1D9849C24();
        v77 = sub_1D984A134();
        sub_1D981A474(v74, *(&v74 + 1), v75);
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = v61;
          v80 = swift_slowAlloc();
          *&v113 = v80;
          *v78 = 136315138;
          v81 = sub_1D9818484(v74, *(&v74 + 1), v75, v112, v94, v95);
          v83 = sub_1D9819F0C(v81, v82, &v113);

          *(v78 + 4) = v83;
          _os_log_impl(&dword_1D97FA000, v76, v77, "Received response: %s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          MEMORY[0x1DA738F10](v80, -1, -1);
          MEMORY[0x1DA738F10](v78, -1, -1);

          (*(v79 + 8))(v96, v63);
        }

        else
        {

          (*(v61 + 8))(v96, v63);
        }
      }

      v54 = v89;
    }

    sub_1D981A4E8(v54, &qword_1ECB41640, &qword_1D984C0C0);

LABEL_14:
    swift_beginAccess();
    v59 = v116;
    v60 = v117;
    *v55 = v116;
    *(v55 + 16) = v60;
    sub_1D981A548(v59, *(&v59 + 1), v60);
    sub_1D981A474(v59, *(&v59 + 1), v60);
    goto LABEL_15;
  }

  sub_1D981A474(v116, *(&v116 + 1), v117);
  sub_1D981A4E8(v50, &qword_1ECB41640, &qword_1D984C0C0);

  v52 = v88;
  *v88 = 0xD000000000000015;
  v52[1] = 0x80000001D9853B80;
  *(v52 + 16) = 1;
LABEL_15:
  sub_1D9849CB4();
}

uint64_t sub_1D9818484(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D981A548(a1, a2, a3 & 1);
  type metadata accessor for PatternMatchResult(0, a4, a5, a6);
  return sub_1D9849E44();
}

double DiagnosticPatternMatching.lookForPanicPatternRemote(report:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D97FD0F8(a1 | 0x8000000000000000, &unk_1F550B578, sub_1D97FE778, &block_descriptor_96, &qword_1ECB416F8, &qword_1D984CC38, &qword_1ECB41700, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D981856C()
{
  result = os_variant_is_darwinos();
  byte_1EDCFE370 = result ^ 1;
  return result;
}

id DiagnosticPatternMatching.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticPatternMatching.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98186C0()
{
  v1 = *v0;
  sub_1D984A6A4();
  MEMORY[0x1DA738310](v1);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818708(uint64_t a1)
{
  v2 = *v1;
  sub_1D984A6A4();
  MEMORY[0x1DA738310](v2);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818758(uint64_t a1)
{
  v2 = sub_1D97FEBD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9818794(uint64_t a1)
{
  v2 = sub_1D97FEBD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D98187D8(uint64_t a1)
{
  v2 = sub_1D97FEC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9818814(uint64_t a1)
{
  v2 = sub_1D97FEC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D9818850(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D984A5F4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D98188D0(uint64_t a1)
{
  v2 = sub_1D981A56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D981890C(uint64_t a1)
{
  v2 = sub_1D981A56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9818948(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D984A5F4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D9818A4C(char a1)
{
  sub_1D984A6A4();
  MEMORY[0x1DA738310](a1 & 1);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818A94(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1D9818AC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D984A5F4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D9818B74(uint64_t a1)
{
  sub_1D984A6A4();
  sub_1D9818A24(v3, *v1);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9818948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9818C08@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D981AFCC();
  *a2 = result;
  return result;
}

uint64_t sub_1D9818C3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9818C90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D9818CE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D98187D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D9818D1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9818D70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D9818DC4()
{
  sub_1D984A6A4();
  MEMORY[0x1DA738310](0);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818E08(uint64_t a1)
{
  sub_1D984A6A4();
  MEMORY[0x1DA738310](0);
  return sub_1D984A6D4();
}

uint64_t sub_1D9818E48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9818E9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t PatternMatchResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  matched = type metadata accessor for PatternMatchResult.FailureCodingKeys(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1D984A5B4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v26 = v22 - v8;
  type metadata accessor for PatternMatchResult.SuccessCodingKeys(255, v4, v5, v6);
  v22[2] = swift_getWitnessTable();
  v27 = sub_1D984A5B4();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v23 = v22 - v9;
  v31 = v4;
  v32 = v6;
  type metadata accessor for PatternMatchResult.CodingKeys(255, v4, v5, v6);
  swift_getWitnessTable();
  v10 = sub_1D984A5B4();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v13 = v2[1];
  v33 = *v2;
  v22[1] = v13;
  v14 = *(v2 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D984A704();
  if (v14)
  {
    LOBYTE(v37) = 1;
    v15 = v26;
    v16 = v35;
    sub_1D984A504();
    v17 = v30;
    sub_1D984A584();
    (*(v29 + 8))(v15, v17);
    return (*(v34 + 8))(v12, v16);
  }

  else
  {
    LOBYTE(v37) = 0;
    v19 = v23;
    v20 = v35;
    sub_1D984A504();
    v37 = v33;
    sub_1D984A044();
    v36 = v32;
    swift_getWitnessTable();
    v21 = v27;
    sub_1D984A5A4();
    (*(v24 + 8))(v19, v21);
    return (*(v34 + 8))(v12, v20);
  }
}

uint64_t PatternMatchResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a5;
  matched = type metadata accessor for PatternMatchResult.FailureCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v49 = matched;
  v10 = sub_1D984A4F4();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v40 - v11;
  v12 = type metadata accessor for PatternMatchResult.SuccessCodingKeys(255, a2, a3, a4);
  v47 = swift_getWitnessTable();
  v44 = sub_1D984A4F4();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v40 - v13;
  v53 = a4;
  type metadata accessor for PatternMatchResult.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v52 = sub_1D984A4F4();
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v15 = a1[3];
  v56 = a1;
  v16 = a1;
  v18 = &v40 - v17;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  v19 = v55;
  sub_1D984A6F4();
  if (!v19)
  {
    v41 = v12;
    v42 = v14;
    v20 = v52;
    v21 = v53;
    v55 = v18;
    *&v57 = sub_1D984A4E4();
    sub_1D984A044();
    swift_getWitnessTable();
    *&v59 = sub_1D984A2A4();
    *(&v59 + 1) = v22;
    *&v60 = v23;
    *(&v60 + 1) = v24;
    sub_1D984A294();
    swift_getWitnessTable();
    sub_1D984A0E4();
    v25 = v57;
    if (v57 == 2 || (v40 = v59, v57 = v59, v58 = v60, (sub_1D984A0F4() & 1) == 0))
    {
      v28 = sub_1D984A3A4();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41698, &qword_1D984D0B0);
      *v30 = type metadata accessor for PatternMatchResult(0, a2, a3, v21);
      v31 = v55;
      sub_1D984A434();
      sub_1D984A364();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v54 + 8))(v31, v20);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v25)
      {
        LOBYTE(v57) = 1;
        v26 = v50;
        sub_1D984A424();
        v27 = v51;
        v34 = v46;
        v37 = sub_1D984A4B4();
        v39 = v38;
        (*(v45 + 8))(v26, v34);
        (*(v54 + 8))(v55, v20);
        swift_unknownObjectRelease();
      }

      else
      {
        LOBYTE(v57) = 0;
        v32 = v42;
        sub_1D984A424();
        v33 = v54;
        sub_1D984A044();
        v61 = a3;
        swift_getWitnessTable();
        v35 = v44;
        sub_1D984A4D4();
        (*(v43 + 8))(v32, v35);
        (*(v33 + 8))(v55, v20);
        swift_unknownObjectRelease();
        v39 = 0;
        v37 = v57;
        v27 = v51;
      }

      *v27 = v37;
      *(v27 + 8) = v39;
      *(v27 + 16) = v25 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v56);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D9819B38(uint64_t a1, id *a2)
{
  v3 = sub_1D9849DE4();
  *a2 = 0;
  return v3 & 1;
}

void sub_1D9819BB8(uint64_t *a2@<X8>)
{
  sub_1D9849DF4();
  v3 = sub_1D9849DC4();

  *a2 = v3;
}

uint64_t sub_1D9819BFC()
{
  v0 = sub_1D9849DF4();
  v1 = MEMORY[0x1DA737BA0](v0);

  return v1;
}

double sub_1D9819C38(uint64_t a1)
{
  sub_1D9849DF4();
  sub_1D9849E84();

  return result;
}

uint64_t sub_1D9819C8C(uint64_t a1)
{
  sub_1D9849DF4();
  sub_1D984A6A4();
  sub_1D9849E84();
  v1 = sub_1D984A6D4();

  return v1;
}

_DWORD *sub_1D9819D00@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D9819D1C(void *a1, uint64_t *a2)
{
  v2 = sub_1D9849DF4();
  v4 = v3;
  if (v2 == sub_1D9849DF4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D984A5F4();
  }

  return v7 & 1;
}

void sub_1D9819DA4(uint64_t *a2@<X8>)
{
  v3 = sub_1D9849DC4();

  *a2 = v3;
}

uint64_t sub_1D9819DEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9849DF4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D9819E18(uint64_t a1)
{
  v2 = sub_1D97FCFE4(&qword_1ECB416E8, type metadata accessor for URLResourceKey, &unk_1D984C95C);
  v3 = sub_1D97FCFE4(&qword_1ECB416F0, type metadata accessor for URLResourceKey, &unk_1D984C8FC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1D9819F0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D9819FD8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D981B108(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1D9819FD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D981A0E4(a5, a6);
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
    result = sub_1D984A3B4();
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

void *sub_1D981A0E4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D981A130(a1, a2);
  sub_1D981A260(&unk_1F550A590);
  return v3;
}

void *sub_1D981A130(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D983F8E8(v5, 0);
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

  result = sub_1D984A3B4();
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
        v10 = sub_1D9849EE4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D983F8E8(v10, 0);
        result = sub_1D984A344();
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

void sub_1D981A260(uint64_t a1)
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

  v3 = sub_1D981A34C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

char *sub_1D981A34C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41710, &qword_1D984FCE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D981A480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D981A4E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D981A56C()
{
  result = qword_1ECB41670;
  if (!qword_1ECB41670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41670);
  }

  return result;
}

uint64_t sub_1D981A654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D981A6BC(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D981A704(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D981A7BC()
{
  result = qword_1ECB416B8;
  if (!qword_1ECB416B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB416B8);
  }

  return result;
}

unint64_t sub_1D981A814()
{
  result = qword_1ECB416C0;
  if (!qword_1ECB416C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB416C0);
  }

  return result;
}

unint64_t sub_1D981A86C()
{
  result = qword_1ECB416C8;
  if (!qword_1ECB416C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB416C8);
  }

  return result;
}

unint64_t sub_1D981AA98()
{
  result = qword_1EDCFE728;
  if (!qword_1EDCFE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE728);
  }

  return result;
}

unint64_t sub_1D981AAF0()
{
  result = qword_1EDCFE730;
  if (!qword_1EDCFE730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE730);
  }

  return result;
}

unint64_t sub_1D981AB48()
{
  result = qword_1EDCFE718;
  if (!qword_1EDCFE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE718);
  }

  return result;
}

unint64_t sub_1D981ABA0()
{
  result = qword_1EDCFE720;
  if (!qword_1EDCFE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE720);
  }

  return result;
}

unint64_t sub_1D981ABF8()
{
  result = qword_1EDCFE740;
  if (!qword_1EDCFE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE740);
  }

  return result;
}

unint64_t sub_1D981AC50()
{
  result = qword_1EDCFE748;
  if (!qword_1EDCFE748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE748);
  }

  return result;
}

void sub_1D981ACA4(void *a1, uint64_t isEscapingClosureAtFileLocation, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v23 = 0;
  sub_1D981A480(isEscapingClosureAtFileLocation + OBJC_IVAR____SwiftDiagnosticPatternMatching_patternMatcher, v18, &qword_1ECB41608, &qword_1D984C090);
  v7 = v19;
  _Block_copy(a3);
  sub_1D981A4E8(v18, &qword_1ECB41608, &qword_1D984C090);
  if (v7)
  {
    v22 = MEMORY[0x1E69E7CC0];
    v8 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____SwiftDiagnosticPatternMatching_asyncQueue);
    a3 = swift_allocObject();
    a3[2] = &v22;
    a3[3] = isEscapingClosureAtFileLocation;
    a3[4] = a1;
    a3[5] = &v23;
    a3[6] = sub_1D981AFD4;
    a3[7] = v6;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1D981B260;
    *(v9 + 24) = a3;
    v20 = sub_1D981B268;
    v21 = v9;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1D98170A8;
    v19 = &block_descriptor_89;
    v10 = _Block_copy(v18);
    v11 = isEscapingClosureAtFileLocation;
    v12 = a1;

    dispatch_async_and_wait(v8, v10);
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {

      return;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_1EDCFE578 != -1)
  {
LABEL_10:
    swift_once();
  }

  v13 = sub_1D9849C54();
  __swift_project_value_buffer(v13, qword_1EDD005E8);
  v14 = isEscapingClosureAtFileLocation;
  v15 = sub_1D9849C24();
  v16 = sub_1D984A134();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = *(&v14->isa + OBJC_IVAR____SwiftDiagnosticPatternMatching_type);

    _os_log_impl(&dword_1D97FA000, v15, v16, "there is no available matcher with type %u", v17, 8u);
    MEMORY[0x1DA738F10](v17, -1, -1);
  }

  else
  {

    v15 = v14;
  }

  (a3[2])(a3, v23);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D981B098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41640, &qword_1D984C0C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D981B108(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D981B1A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D981B1C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1D981B200(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1D981B294(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41860, &qword_1D984D348);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D982076C();
  sub_1D984A704();
  v14 = 0;
  sub_1D984A584();
  if (!v4)
  {
    v13 = 1;
    sub_1D984A524();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D981B424(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41868, &qword_1D984D350);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D98207C0();
  sub_1D984A704();
  v15 = 0;
  sub_1D984A584();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v14 = 1;
  sub_1D984A524();
  v13 = 2;
  sub_1D984A524();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D981B5D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB417A8, &qword_1D984D090);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D981F728();
  sub_1D984A704();
  LOBYTE(v12) = 0;
  sub_1D984A514();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v13 = *(v3 + 32);
    v11 = 1;
    sub_1D981F88C();
    sub_1D984A534();
    *&v12 = *(v3 + 40);
    v11 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41790, &qword_1D984D088);
    sub_1D981F8E0(&qword_1ECB417B8, sub_1D981F958, MEMORY[0x1E69E6300]);
    sub_1D984A534();
    v12 = *(v3 + 48);
    v13 = *(v3 + 64);
    v11 = 3;
    sub_1D984A534();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1D981B828()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 1701667182;
  }
}

void sub_1D981B860(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D984A5F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9853E80 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D984A5F4();

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
}

uint64_t sub_1D981B944(uint64_t a1)
{
  v2 = sub_1D982076C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D981B980(uint64_t a1)
{
  v2 = sub_1D982076C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D981B9BC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D981EC90(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_1D981BA0C()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x4F65726975716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1D981BA70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D981EE68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D981BA98(uint64_t a1)
{
  v2 = sub_1D98207C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D981BAD4(uint64_t a1)
{
  v2 = sub_1D98207C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D981BB10@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1D981EF90(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D981BB68()
{
  v1 = 0x656D614E636F7270;
  v2 = 0x614E6C6F626D7973;
  if (*v0 != 2)
  {
    v2 = 0x6D497972616E6962;
  }

  if (*v0)
  {
    v1 = 0x614E646165726874;
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

uint64_t sub_1D981BBFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D981F198(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D981BC24(uint64_t a1)
{
  v2 = sub_1D981F728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D981BC60(uint64_t a1)
{
  v2 = sub_1D981F728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D981BC9C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D981F310(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1D981BD20()
{
  sub_1D984A6A4();
  sub_1D984A6C4();
  return sub_1D984A6D4();
}

uint64_t sub_1D981BD8C(uint64_t a1)
{
  sub_1D984A6A4();
  sub_1D984A6C4();
  return sub_1D984A6D4();
}

uint64_t CrashMatchedPattern.uuid.getter()
{
  v1 = *v0;

  return v1;
}

void CrashMatchedPattern.uuid.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1D981BF78()
{
  if (*v0)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 1684632949;
  }
}

void sub_1D981BFAC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D984A5F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D984A5F4();

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
}

uint64_t sub_1D981C088(uint64_t a1)
{
  v2 = sub_1D981C2D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D981C0C4(uint64_t a1)
{
  v2 = sub_1D981C2D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CrashMatchedPattern.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41720, &qword_1D984CCB0);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D981C2D8();
  sub_1D984A704();
  v13 = 0;
  sub_1D984A584();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41730, &qword_1D984CCB8);
    sub_1D981C5D4(&qword_1ECB41738, sub_1D981C32C, MEMORY[0x1E69E6300]);
    sub_1D984A534();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_1D981C2D8()
{
  result = qword_1ECB41728;
  if (!qword_1ECB41728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41728);
  }

  return result;
}

unint64_t sub_1D981C32C()
{
  result = qword_1ECB41740;
  if (!qword_1ECB41740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41740);
  }

  return result;
}

void CrashMatchedPattern.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41748, &unk_1D984CCC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D981C2D8();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v16 = 0;
    v9 = sub_1D984A4B4();
    v11 = v10;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41730, &qword_1D984CCB8);
    v15 = 1;
    sub_1D981C5D4(&qword_1ECB41750, sub_1D981C64C, MEMORY[0x1E69E6330]);
    sub_1D984A464();
    (*(v6 + 8))(v8, v5);
    v13 = v14[1];
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1D981C5D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41730, &qword_1D984CCB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D981C64C()
{
  result = qword_1ECB41758;
  if (!qword_1ECB41758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41758);
  }

  return result;
}

uint64_t sub_1D981C6A0()
{
  v1 = *v0;

  return v1;
}

char *sub_1D981C700(void *a1)
{
  v2 = *(v1 + 4);
  v3 = *v1;
  v92 = v1[1];
  v93 = v3;
  v91 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
    if (qword_1EDCFE578 != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_50;
  }

  type metadata accessor for CrashPatternInfo();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    v77 = 1;
    goto LABEL_57;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41800, &qword_1D984D0C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984CC70;
  v9 = swift_allocObject();
  v10 = v1[1];
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 4);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D981FBC0;
  *(v11 + 24) = v9;
  *(inited + 32) = sub_1D981FBC8;
  *(inited + 40) = v11;
  v85 = inited + 40;
  v12 = swift_allocObject();
  v13 = v1[1];
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 4);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D981FBCC;
  *(v14 + 24) = v12;
  *(inited + 48) = sub_1D9820A4C;
  *(inited + 56) = v14;
  v15 = swift_allocObject();
  v16 = v1[1];
  *(v15 + 16) = *v1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v1 + 4);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D981FBD0;
  *(v17 + 24) = v15;
  *(inited + 64) = sub_1D9820A4C;
  *(inited + 72) = v17;
  v18 = swift_allocObject();
  v19 = v1[1];
  *(v18 + 16) = *v1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v1 + 4);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1D981FC1C;
  *(v20 + 24) = v18;
  *(inited + 80) = sub_1D9820A4C;
  *(inited + 88) = v20;
  sub_1D981A480(&v91, v89, &qword_1ECB41808, &qword_1D984D0D0);
  v84 = v2 + 32;
  sub_1D981FC20(&v93, v89);
  sub_1D981FC20(&v92, v89);
  sub_1D981A480(&v91, v89, &qword_1ECB41808, &qword_1D984D0D0);
  sub_1D981FC20(&v93, v89);
  sub_1D981FC20(&v92, v89);
  sub_1D981A480(&v91, v89, &qword_1ECB41808, &qword_1D984D0D0);
  sub_1D981FC20(&v93, v89);
  sub_1D981FC20(&v92, v89);
  sub_1D981A480(&v91, v89, &qword_1ECB41808, &qword_1D984D0D0);
  sub_1D981FC20(&v93, v89);
  sub_1D981FC20(&v92, v89);
  sub_1D981A480(&v91, v89, &qword_1ECB41808, &qword_1D984D0D0);
  v80 = a1;
  v81 = 0;
  v21 = 0;
  v82 = MEMORY[0x1E69E7CC0];
  v83 = v4;
LABEL_4:
  while (v21 < v4)
  {
    v22 = (v84 + (v21 << 7));
    v23 = v22[4];
    v24 = v22[5];
    v25 = v22[7];
    v100 = v22[6];
    v26 = *v22;
    v27 = v22[1];
    v28 = v22[3];
    v96 = v22[2];
    v97 = v28;
    v94 = v26;
    v95 = v27;
    v101 = v25;
    v98 = v23;
    v99 = v24;
    v29 = v100;
    v30 = *(v22 + 24);
    v31 = *(v22 + 40);
    v32 = *(v22 + 56);
    v33 = *(v22 + 72);
    v106 = *(v22 + 88);
    v104 = v32;
    v105 = v33;
    v102 = v30;
    v103 = v31;
    v34 = __OFADD__(v21, 1);
    v35 = v21 + 1;
    if (v34)
    {
      goto LABEL_61;
    }

    v86 = v35;
    sub_1D981A480(&v94, v89, &qword_1ECB41810, &qword_1D984D0D8);
    v36 = 0;
    v37 = 0;
LABEL_7:
    v38 = 4;
    if (v36 > 4)
    {
      v38 = v36;
    }

    v39 = v38 + 1;
    v40 = v85 + 16 * v36;
    while (v36 != 4)
    {
      if (v39 == ++v36)
      {
        __break(1u);
LABEL_59:
        sub_1D981A4E8(&v91, &qword_1ECB41808, &qword_1D984D0D0);

        return v82;
      }

      v41 = v40 + 16;
      v42 = *(v40 - 8);
      aBlock[0] = v7;
      v89[2] = v104;
      v89[3] = v105;
      v90 = v106;
      v89[0] = v102;
      v89[1] = v103;

      v42(&v88, aBlock, v89);

      v40 = v41;
      if (v88 != 2)
      {
        v37 = 1;
        if (v88)
        {
          goto LABEL_7;
        }

LABEL_16:
        sub_1D981A4E8(&v94, &qword_1ECB41810, &qword_1D984D0D8);
        v4 = v83;
        v21 = v86;
        if (v86 != v83)
        {
          goto LABEL_4;
        }

        sub_1D981A4E8(&v91, &qword_1ECB41808, &qword_1D984D0D0);

        if (v81)
        {
        }

        return v82;
      }
    }

    if ((v37 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_1ECB415A8 != -1)
    {
      swift_once();
    }

    v43 = sub_1D9849C54();
    __swift_project_value_buffer(v43, qword_1ECB47600);
    sub_1D981A480(&v94, v89, &qword_1ECB41810, &qword_1D984D0D8);
    v44 = sub_1D9849C24();
    v45 = sub_1D984A134();
    sub_1D981A4E8(&v94, &qword_1ECB41810, &qword_1D984D0D8);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v89[0] = v47;
      *v46 = 136315138;

      v48 = v29;
      v49 = v44;
      v50 = sub_1D9819F0C(v29, *(&v29 + 1), v89);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_1D97FA000, v49, v45, "Matched the pattern definition with UUID %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1DA738F10](v47, -1, -1);
      MEMORY[0x1DA738F10](v46, -1, -1);

      v51 = v94;
      if (v94)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v48 = v29;
      v51 = v94;
      if (v94)
      {
LABEL_22:
        v52 = *(v51 + 16);
        if (v52)
        {
          v53 = (v51 + 32);

          v54 = MEMORY[0x1E69E7CC0];
          do
          {
            v55 = *v53++;
            if (v55 == 1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v54 = sub_1D98324D0(0, *(v54 + 2) + 1, 1, v54);
              }

              v57 = *(v54 + 2);
              v56 = *(v54 + 3);
              v58 = v57 + 1;
              if (v57 >= v56 >> 1)
              {
                v54 = sub_1D98324D0((v56 > 1), v57 + 1, 1, v54);
              }

              *(v54 + 2) = v58;
            }

            --v52;
          }

          while (v52);
        }

        else
        {

          v54 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_34;
      }
    }

    v54 = 0;
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = sub_1D98324B4(0, *(v82 + 2) + 1, 1, v82);
    }

    v60 = *(v82 + 2);
    v59 = *(v82 + 3);
    if (v60 >= v59 >> 1)
    {
      v82 = sub_1D98324B4((v59 > 1), v60 + 1, 1, v82);
    }

    *(v82 + 2) = v60 + 1;
    v61 = &v82[24 * v60];
    *(v61 + 4) = v48;
    *(v61 + 5) = *(&v29 + 1);
    *(v61 + 6) = v54;
    if (v29)
    {
      v62 = v51;
    }

    else
    {
      v62 = &unk_1F550A5E0;
    }

    if (v81)
    {
    }

    v63 = v62[2];
    if (v63)
    {

      v64 = 32;
      do
      {
        v65 = *(v62 + v64);
        v66 = sub_1D9849DC4();
        v67 = swift_allocObject();
        v68 = v99;
        *(v67 + 80) = v98;
        *(v67 + 96) = v68;
        v69 = v101;
        *(v67 + 112) = v100;
        *(v67 + 128) = v69;
        v70 = v95;
        *(v67 + 16) = v94;
        *(v67 + 32) = v70;
        v71 = v97;
        *(v67 + 48) = v96;
        *(v67 + 64) = v71;
        *(v67 + 144) = v65;
        aBlock[4] = sub_1D981FC7C;
        aBlock[5] = v67;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D98220F4;
        aBlock[3] = &block_descriptor_0;
        v72 = _Block_copy(aBlock);
        sub_1D981A480(&v94, v89, &qword_1ECB41810, &qword_1D984D0D8);

        AnalyticsSendEventLazy();
        _Block_release(v72);

        v64 += 4;
        --v63;
      }

      while (v63);
    }

    sub_1D981A4E8(&v94, &qword_1ECB41810, &qword_1D984D0D8);
    v81 = 1;
    v4 = v83;
    v21 = v86;
    if (v86 == v83)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  swift_once();
LABEL_50:
  v73 = sub_1D9849C54();
  __swift_project_value_buffer(v73, qword_1EDD005E8);
  v74 = sub_1D9849C24();
  v75 = sub_1D984A134();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_1D97FA000, v74, v75, "There are no crash payloads available", v76, 2u);
    MEMORY[0x1DA738F10](v76, -1, -1);
  }

  v77 = 0;
LABEL_57:
  sub_1D981FB6C();
  swift_allocError();
  *v79 = v77;
  return swift_willThrow();
}

char *sub_1D981D164(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (((*(v4 + 24))(v5, v4) & 1) == 0)
  {
    if (qword_1EDCFE578 == -1)
    {
LABEL_52:
      v85 = sub_1D9849C54();
      __swift_project_value_buffer(v85, qword_1EDD005E8);
      v86 = sub_1D9849C24();
      v87 = sub_1D984A134();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_1D97FA000, v86, v87, "There are no crash payloads available", v88, 2u);
        MEMORY[0x1DA738F10](v88, -1, -1);
      }

      v89 = 0;
      goto LABEL_56;
    }

LABEL_65:
    swift_once();
    goto LABEL_52;
  }

  type metadata accessor for CrashPatternInfo();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    v89 = 1;
LABEL_56:
    sub_1D981FB6C();
    swift_allocError();
    *v90 = v89;
    return swift_willThrow();
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41800, &qword_1D984D0C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984CC70;
  v10 = sub_1D981DABC(v2, v5, v4, v9);
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(inited + 32) = sub_1D9820A4C;
  *(inited + 40) = v13;
  v15 = sub_1D981DC58(v2, v5, v4, v14);
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  *(inited + 48) = sub_1D9820A4C;
  *(inited + 56) = v18;
  v20 = sub_1D981DD90(v2, v5, v4, v19);
  v22 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  *(inited + 64) = sub_1D9820A4C;
  *(inited + 72) = v23;
  v25 = sub_1D981DEC8(v2, v5, v4, v24);
  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  v29 = inited;
  *(inited + 80) = sub_1D9820A4C;
  *(inited + 88) = v28;
  v30 = *(v4 + 16);
  v31 = a1;
  v32 = v30(v5, v4);
  v33 = v32;
  v99 = *(v32 + 16);
  if (!v99)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v93 = 0;
  v34 = 0;
  v98 = v32 + 32;
  v100 = v29 + 40;
  v92 = MEMORY[0x1E69E7CC0];
  v95 = v32;
  v94 = v31;
  while (1)
  {
LABEL_5:
    if (v34 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_65;
    }

    v35 = v98 + (v34 << 7);
    v36 = *(v35 + 64);
    v37 = *(v35 + 80);
    v38 = *(v35 + 112);
    v111 = *(v35 + 96);
    v39 = *v35;
    v40 = *(v35 + 16);
    v41 = *(v35 + 48);
    v107 = *(v35 + 32);
    v108 = v41;
    v105 = v39;
    v106 = v40;
    v112 = v38;
    v109 = v36;
    v110 = v37;
    v42 = *(&v111 + 1);
    v96 = v111;
    v43 = *(v35 + 24);
    v44 = *(v35 + 40);
    v45 = *(v35 + 56);
    v46 = *(v35 + 72);
    v117 = *(v35 + 88);
    v115 = v45;
    v116 = v46;
    v113 = v43;
    v114 = v44;
    ++v34;
    sub_1D981A480(&v105, v103, &qword_1ECB41810, &qword_1D984D0D8);
    v47 = 0;
    v48 = 0;
LABEL_7:
    v49 = 4;
    if (v47 > 4)
    {
      v49 = v47;
    }

    v50 = v49 + 1;
    v51 = v100 + 16 * v47;
LABEL_10:
    if (v47 != 4)
    {
      break;
    }

    if ((v48 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (qword_1ECB415A8 != -1)
    {
      swift_once();
    }

    v54 = sub_1D9849C54();
    __swift_project_value_buffer(v54, qword_1ECB47600);
    sub_1D981A480(&v105, v103, &qword_1ECB41810, &qword_1D984D0D8);
    v55 = sub_1D9849C24();
    v56 = sub_1D984A134();
    sub_1D981A4E8(&v105, &qword_1ECB41810, &qword_1D984D0D8);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v103[0] = v58;
      *v57 = 136315138;

      v59 = sub_1D9819F0C(v96, v42, v103);

      *(v57 + 4) = v59;
      _os_log_impl(&dword_1D97FA000, v55, v56, "Matched the pattern definition with UUID %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1DA738F10](v58, -1, -1);
      MEMORY[0x1DA738F10](v57, -1, -1);
    }

    v60 = v93;
    v61 = v105;
    if (v105)
    {
      v62 = *(v105 + 16);
      if (v62)
      {
        v63 = v105;
        v64 = (v105 + 32);

        v65 = MEMORY[0x1E69E7CC0];
        do
        {
          v66 = *v64++;
          if (v66 == 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_1D98324D0(0, *(v65 + 2) + 1, 1, v65);
            }

            v68 = *(v65 + 2);
            v67 = *(v65 + 3);
            v69 = v68 + 1;
            if (v68 >= v67 >> 1)
            {
              v65 = sub_1D98324D0((v67 > 1), v68 + 1, 1, v65);
            }

            *(v65 + 2) = v69;
          }

          --v62;
        }

        while (v62);
      }

      else
      {
        v63 = v105;

        v65 = MEMORY[0x1E69E7CC0];
      }

      v61 = v63;
      v60 = v93;
    }

    else
    {

      v65 = 0;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v70 = v92;
    }

    else
    {
      v70 = sub_1D98324B4(0, *(v92 + 2) + 1, 1, v92);
    }

    v72 = *(v70 + 2);
    v71 = *(v70 + 3);
    if (v72 >= v71 >> 1)
    {
      v70 = sub_1D98324B4((v71 > 1), v72 + 1, 1, v70);
    }

    *(v70 + 2) = v72 + 1;
    v92 = v70;
    v73 = &v70[24 * v72];
    *(v73 + 4) = v96;
    *(v73 + 5) = v42;
    *(v73 + 6) = v65;
    if (v61)
    {
      v74 = v61;
    }

    else
    {
      v74 = &unk_1F550A5B8;
    }

    v97 = v74;
    if (v60)
    {
    }

    v75 = v74[2];
    if (v75)
    {

      v76 = 32;
      do
      {
        v77 = *(v74 + v76);
        v78 = sub_1D9849DC4();
        v79 = swift_allocObject();
        v80 = v110;
        *(v79 + 80) = v109;
        *(v79 + 96) = v80;
        v81 = v112;
        *(v79 + 112) = v111;
        *(v79 + 128) = v81;
        v82 = v106;
        *(v79 + 16) = v105;
        *(v79 + 32) = v82;
        v83 = v108;
        *(v79 + 48) = v107;
        *(v79 + 64) = v83;
        *(v79 + 144) = v77;
        aBlock[4] = sub_1D9820A6C;
        aBlock[5] = v79;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D98220F4;
        aBlock[3] = &block_descriptor_70;
        v84 = _Block_copy(aBlock);
        sub_1D981A480(&v105, v103, &qword_1ECB41810, &qword_1D984D0D8);

        AnalyticsSendEventLazy();
        _Block_release(v84);

        v74 = v97;
        v76 += 4;
        --v75;
      }

      while (v75);
    }

    sub_1D981A4E8(&v105, &qword_1ECB41810, &qword_1D984D0D8);
    v93 = 1;
    v33 = v95;
    v42 = v94;
    if (v34 == v99)
    {
      goto LABEL_63;
    }
  }

  if (v50 == ++v47)
  {
    __break(1u);
LABEL_63:

    return v92;
  }

  v52 = v51 + 16;
  v53 = *(v51 - 8);
  aBlock[0] = v7;
  v103[2] = v115;
  v103[3] = v116;
  v104 = v117;
  v103[0] = v113;
  v103[1] = v114;

  v53(&v102, aBlock, v103);

  v51 = v52;
  if (v102 == 2)
  {
    goto LABEL_10;
  }

  v48 = 1;
  if (v102)
  {
    goto LABEL_7;
  }

LABEL_16:
  sub_1D981A4E8(&v105, &qword_1ECB41810, &qword_1D984D0D8);
  v33 = v95;
  if (v34 != v99)
  {
    goto LABEL_5;
  }

  if (v93)
  {
  }

  return v92;
}

uint64_t (*sub_1D981DABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CrashMatcher(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);
  return sub_1D981FE44;
}

uint64_t sub_1D981DBF4(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 2;
  }

  if (*(a1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName) == *a2 && v2 == *(a1 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName + 8))
  {
    return 1;
  }

  else
  {
    return sub_1D984A5F4() & 1;
  }
}

uint64_t (*sub_1D981DC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t, uint64_t)
{
  v7 = type metadata accessor for CrashMatcher(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);
  return sub_1D981FBCC;
}

uint64_t (*sub_1D981DD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t, uint64_t)
{
  v7 = type metadata accessor for CrashMatcher(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);
  return sub_1D981FBD0;
}

void (*sub_1D981DEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t, uint64_t)
{
  v7 = type metadata accessor for CrashMatcher(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);
  return sub_1D981FC1C;
}

unint64_t sub_1D981E000(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41818, &unk_1D984D0E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984CC80;
  *(inited + 32) = 0x556E726574746170;
  *(inited + 40) = 0xEB00000000444955;
  *(inited + 48) = sub_1D9849DC4();
  *(inited + 56) = 0x6E6F69746361;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = sub_1D984A6E4();
  *(inited + 80) = 0x657079745F677562;
  *(inited + 88) = 0xE800000000000000;
  sub_1D97FBFCC();
  *(inited + 96) = sub_1D984A1E4();
  v3 = sub_1D98336F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41820, &qword_1D984E090);
  swift_arrayDestroy();
  return v3;
}

char *CrashMatcherOOP.lookForPattern(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D981C700(a1);
  v4 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v4 = result;
  }

  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

unint64_t sub_1D981E2D8()
{
  result = qword_1EDCFE408;
  if (!qword_1EDCFE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE408);
  }

  return result;
}

uint64_t sub_1D981E33C(uint64_t a1, int a2)
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

uint64_t sub_1D981E384(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D981E3E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D981E430(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D981E49C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D981E4F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D981E584()
{
  result = qword_1ECB41760;
  if (!qword_1ECB41760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41760);
  }

  return result;
}

unint64_t sub_1D981E5DC()
{
  result = qword_1ECB41768;
  if (!qword_1ECB41768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41768);
  }

  return result;
}

unint64_t sub_1D981E634()
{
  result = qword_1ECB41770;
  if (!qword_1ECB41770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41770);
  }

  return result;
}

void sub_1D981E688()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  v5 = v0[2];
  v4 = v0[3];
  v6 = sub_1D9801420(*v0, v2, v5, v4, &qword_1ECB417D8, &unk_1D984D0A0, sub_1D981FA00);
  if (v6)
  {
    v7 = v6;
    if (qword_1EDCFE578 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v36 = v1;
      v8 = sub_1D9849C54();
      __swift_project_value_buffer(v8, qword_1EDD005E8);

      v9 = sub_1D9849C24();
      v10 = sub_1D984A124();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = v5;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *&v45 = v13;
        *v12 = 136315906;
        *(v12 + 4) = sub_1D9819F0C(v3, v2, &v45);
        v1 = 2080;
        *(v12 + 12) = 2080;
        *(v12 + 14) = sub_1D9819F0C(v11, v4, &v45);
        *(v12 + 22) = 2080;
        *(v12 + 24) = sub_1D9819F0C(0xD000000000000016, 0x80000001D9853E10, &v45);
        *(v12 + 32) = 2048;
        *(v12 + 34) = *(v7 + 16);

        _os_log_impl(&dword_1D97FA000, v9, v10, "Successfully parsed payload for %s in namespace %s as type %s. Count = %ld", v12, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA738F10](v13, -1, -1);
        MEMORY[0x1DA738F10](v12, -1, -1);
      }

      else
      {
      }

      v3 = v7;
      v23 = *(v7 + 16);
      if (!v23)
      {
        break;
      }

      v7 = 0;
      v24 = (v3 + 32);
      v4 = &qword_1ECB417D0;
      v5 = &qword_1D984D098;
      v37 = v23;
      v38 = v3;
      while (v7 < *(v3 + 16))
      {
        v26 = v24[3];
        v25 = v24[4];
        v27 = v24[2];
        v46 = v24[1];
        v45 = *v24;
        v47 = v27;
        v48 = v26;
        v49 = v25;
        v41 = v26;
        v42 = v46;
        v39 = v27;
        v40 = v45;
        v2 = *(&v25 + 1);
        v28 = v25;
        sub_1D981A480(&v45, v44, &qword_1ECB417D0, v5);
        if (v42)
        {
          v45 = v40;
          v46 = v42;
          v47 = v39;
          v48 = v41;
          v49 = __PAIR128__(v2, v28);
          sub_1D981A480(&v45, v44, &qword_1ECB417D0, v5);
          v1 = &v45;
          v29 = sub_1D9849C24();
          v30 = v5;
          v31 = sub_1D984A114();
          if (os_log_type_enabled(v29, v31))
          {
            v32 = swift_slowAlloc();
            v2 = swift_slowAlloc();
            v43 = v2;
            *v32 = 134218242;
            *(v32 + 4) = v7;
            *(v32 + 12) = 2080;
            v44[2] = v47;
            v44[3] = v48;
            v44[4] = v49;
            v44[0] = v45;
            v44[1] = v46;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB417D0, v30);
            v33 = sub_1D9849E44();
            v1 = sub_1D9819F0C(v33, v34, &v43);

            *(v32 + 14) = v1;
            _os_log_impl(&dword_1D97FA000, v29, v31, "Payload %ld: %s", v32, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v2);
            MEMORY[0x1DA738F10](v2, -1, -1);
            v35 = v32;
            v23 = v37;
            v3 = v38;
            MEMORY[0x1DA738F10](v35, -1, -1);
          }

          else
          {
            sub_1D981A4E8(&v45, &qword_1ECB417D0, v30);
          }

          sub_1D981A4E8(&v45, &qword_1ECB417D0, v30);

          v5 = v30;
          ++v7;
          v24 += 5;
          if (v23 != v7)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      __break(1u);
LABEL_22:
      swift_once();
    }

LABEL_18:

    *(v36 + 32) = v3;
  }

  else
  {
    if (qword_1EDCFE578 != -1)
    {
      swift_once();
    }

    v14 = sub_1D9849C54();
    __swift_project_value_buffer(v14, qword_1EDD005E8);

    v15 = sub_1D9849C24();
    v16 = sub_1D984A124();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v45 = v18;
      *v17 = 136315650;
      v19 = sub_1D9819F0C(v3, v2, &v45);
      v20 = v1;
      v21 = v19;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = sub_1D9819F0C(v5, v4, &v45);

      *(v17 + 14) = v22;
      v1 = v20;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_1D9819F0C(0xD000000000000016, 0x80000001D9853E10, &v45);
      _os_log_impl(&dword_1D97FA000, v15, v16, "Unable to parse payload for %s in namespace %s as type %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA738F10](v18, -1, -1);
      MEMORY[0x1DA738F10](v17, -1, -1);
    }

    else
    {
    }

    *(v1 + 32) = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D981EC90(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41840, &qword_1D984D338);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D982076C();
  sub_1D984A6F4();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_1D984A4B4();
    v9[14] = 1;
    sub_1D984A454();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_1D981EE68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D9853E80 == a2 || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F65726975716572 && a2 == 0xEE0064657474696DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D984A5F4();

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

uint64_t sub_1D981EF90(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41850, &qword_1D984D340);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D98207C0();
  sub_1D984A6F4();
  if (!v1)
  {
    v12 = 0;
    v7 = sub_1D984A4B4();
    v11 = 1;
    sub_1D984A454();
    v10 = 2;
    sub_1D984A454();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_1D981F198(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E636F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E646165726874 && a2 == 0xEA0000000000656DLL || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEB0000000073656DLL || (sub_1D984A5F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D497972616E6962 && a2 == 0xEF656D614E656761)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D984A5F4();

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

void sub_1D981F310(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41778, &qword_1D984D080);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D981F728();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v27) = 0;
    *&v21 = sub_1D984A444();
    *(&v21 + 1) = v9;
    LOBYTE(v22) = 1;
    sub_1D981F77C();
    sub_1D984A464();
    v20 = v27;
    v36 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41790, &qword_1D984D088);
    LOBYTE(v22) = 2;
    sub_1D981F8E0(&qword_1ECB41798, sub_1D981F7D0, MEMORY[0x1E69E6330]);
    sub_1D984A464();
    v19 = v27;
    v37 = 3;
    sub_1D984A464();
    (*(v6 + 8))(v8, v5);
    v17 = *(&v34 + 1);
    v18 = v34;
    HIDWORD(v16) = v35;
    v10 = v21;
    v22 = v21;
    v11 = v20;
    v23 = v20;
    v12 = v36;
    LOBYTE(v24) = v36;
    v13 = v19;
    *(&v24 + 1) = v19;
    v25 = v34;
    v26 = v35;
    sub_1D981F824(&v22, &v27);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v27 = v10;
    v28 = v11;
    v29 = v12;
    v30 = v13;
    v31 = v18;
    v32 = v17;
    v33 = BYTE4(v16);
    sub_1D981F85C(&v27);
    v14 = v25;
    *(a2 + 32) = v24;
    *(a2 + 48) = v14;
    *(a2 + 64) = v26;
    v15 = v23;
    *a2 = v22;
    *(a2 + 16) = v15;
  }
}

unint64_t sub_1D981F728()
{
  result = qword_1ECB41780;
  if (!qword_1ECB41780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41780);
  }

  return result;
}

unint64_t sub_1D981F77C()
{
  result = qword_1ECB41788;
  if (!qword_1ECB41788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41788);
  }

  return result;
}

unint64_t sub_1D981F7D0()
{
  result = qword_1ECB417A0;
  if (!qword_1ECB417A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB417A0);
  }

  return result;
}

unint64_t sub_1D981F88C()
{
  result = qword_1ECB417B0;
  if (!qword_1ECB417B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB417B0);
  }

  return result;
}

uint64_t sub_1D981F8E0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41790, &qword_1D984D088);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D981F958()
{
  result = qword_1ECB417C0;
  if (!qword_1ECB417C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB417C0);
  }

  return result;
}

unint64_t sub_1D981F9AC()
{
  result = qword_1ECB417C8;
  if (!qword_1ECB417C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB417C8);
  }

  return result;
}

unint64_t sub_1D981FA00()
{
  result = qword_1ECB417E0;
  if (!qword_1ECB417E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB417D8, &unk_1D984D0A0);
    sub_1D981FFB0(&qword_1ECB417E8, &qword_1ECB417D0, &qword_1D984D098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB417E0);
  }

  return result;
}

uint64_t sub_1D981FA9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1D981FAF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D981FB08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D981FB6C()
{
  result = qword_1EDCFE710;
  if (!qword_1EDCFE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE710);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D981FC90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v7;
  v11 = *(a2 + 64);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  result = v5(v6, v10);
  *a3 = result;
  return result;
}

uint64_t objectdestroy_45Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 148, 7);
}

uint64_t objectdestroy_72Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for CrashMatcher(0, v5, *(v4 + 24), a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  (*(*(v5 - 8) + 8))(v4 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_1D981FE44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CrashMatcher(0, *(v4 + 16), *(v4 + 24), a4);

  return sub_1D981DBF4(a1, a2);
}

uint64_t sub_1D981FEE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1D981FEF8(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1D981FF14()
{
  result = qword_1EDCFE570;
  if (!qword_1EDCFE570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41808, &qword_1D984D0D0);
    sub_1D981FFB0(qword_1EDCFE588, &qword_1ECB41810, &qword_1D984D0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE570);
  }

  return result;
}

uint64_t sub_1D981FFB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D9820004(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D9820074(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1D98201B4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t getEnumTagSinglePayload for CrashPatternDefinition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashPatternDefinition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D9820520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1D9820568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D98205B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D9820600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D9820654()
{
  result = qword_1ECB41828;
  if (!qword_1ECB41828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41828);
  }

  return result;
}

unint64_t sub_1D98206C0()
{
  result = qword_1ECB41830;
  if (!qword_1ECB41830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41830);
  }

  return result;
}

unint64_t sub_1D9820718()
{
  result = qword_1ECB41838;
  if (!qword_1ECB41838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41838);
  }

  return result;
}

unint64_t sub_1D982076C()
{
  result = qword_1ECB41848;
  if (!qword_1ECB41848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41848);
  }

  return result;
}

unint64_t sub_1D98207C0()
{
  result = qword_1ECB41858;
  if (!qword_1ECB41858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41858);
  }

  return result;
}

unint64_t sub_1D9820838()
{
  result = qword_1ECB41870;
  if (!qword_1ECB41870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41870);
  }

  return result;
}

unint64_t sub_1D9820890()
{
  result = qword_1ECB41878;
  if (!qword_1ECB41878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41878);
  }

  return result;
}

unint64_t sub_1D98208E8()
{
  result = qword_1ECB41880;
  if (!qword_1ECB41880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41880);
  }

  return result;
}

unint64_t sub_1D9820940()
{
  result = qword_1ECB41888;
  if (!qword_1ECB41888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41888);
  }

  return result;
}

unint64_t sub_1D9820998()
{
  result = qword_1ECB41890;
  if (!qword_1ECB41890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41890);
  }

  return result;
}

unint64_t sub_1D98209F0()
{
  result = qword_1ECB41898;
  if (!qword_1ECB41898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41898);
  }

  return result;
}

uint64_t sub_1D9820AC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D9849C54();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D9849C34();
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

id CrashPatternInfo.__allocating_init(procName:threads:usedImages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_procName];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_threads] = a3;
  *&v9[OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages] = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t CrashPatternInfo.Thread.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1D9820C8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9821E10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9820CB4(uint64_t a1)
{
  v2 = sub_1D97FF538();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9820CF0(uint64_t a1)
{
  v2 = sub_1D97FF538();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9820D2C()
{
  result = qword_1EDCFE348;
  if (!qword_1EDCFE348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB418C0, &qword_1D984D588);
    sub_1D9820DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE348);
  }

  return result;
}

unint64_t sub_1D9820DB0()
{
  result = qword_1EDCFE438;
  if (!qword_1EDCFE438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE438);
  }

  return result;
}

unint64_t sub_1D9820E04()
{
  result = qword_1EDCFE340;
  if (!qword_1EDCFE340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB418C0, &qword_1D984D588);
    sub_1D9820E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE340);
  }

  return result;
}

unint64_t sub_1D9820E88()
{
  result = qword_1EDCFE430;
  if (!qword_1EDCFE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE430);
  }

  return result;
}

uint64_t CrashPatternInfo.Frame.symbol.getter()
{
  v1 = *v0;

  return v1;
}

void sub_1D9820F14(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D984A5F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646E496567616D69 && a2 == 0xEA00000000007865)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D984A5F4();

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
}

uint64_t sub_1D9820FF4(uint64_t a1)
{
  v2 = sub_1D97FF78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9821030(uint64_t a1)
{
  v2 = sub_1D97FF78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CrashPatternInfo.BinaryImage.name.getter()
{
  v1 = *v0;

  return v1;
}

void sub_1D982109C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D984A5F4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D9821124(uint64_t a1)
{
  v2 = sub_1D97FF958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9821160(uint64_t a1)
{
  v2 = sub_1D97FF958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CrashPatternInfo.BinaryImage.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB418E0, &qword_1D984D5A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D97FF958();
  sub_1D984A704();
  sub_1D984A514();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D98212D8@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(v2 + OBJC_IVAR____TtC15CoreDiagnostics16CrashPatternInfo_usedImages);
  if (!v3 || ((v4 = *(result + 16), (v5 = *(v3 + 16)) != 0) ? (v6 = v4 >= v5) : (v6 = 1), v6))
  {
    *a2 = xmmword_1D984D570;
  }

  else
  {
    *a2 = *(v3 + 16 * v4 + 32);
  }

  return result;
}

id CrashPatternInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D98213B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9821F2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D98213DC(uint64_t a1)
{
  v2 = sub_1D97FF130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9821418(uint64_t a1)
{
  v2 = sub_1D97FF130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D9821454()
{

  return result;
}

id CrashPatternInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CrashPatternInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D982153C()
{
  result = qword_1EDCFE338;
  if (!qword_1EDCFE338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB418F8, &qword_1D984D5C0);
    sub_1D98215C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE338);
  }

  return result;
}

unint64_t sub_1D98215C0()
{
  result = qword_1EDCFE428;
  if (!qword_1EDCFE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE428);
  }

  return result;
}

unint64_t sub_1D9821614()
{
  result = qword_1EDCFE358;
  if (!qword_1EDCFE358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41900, &qword_1D984D5C8);
    sub_1D9821698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE358);
  }

  return result;
}

unint64_t sub_1D9821698()
{
  result = qword_1EDCFE448[0];
  if (!qword_1EDCFE448[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCFE448);
  }

  return result;
}

unint64_t sub_1D9821730()
{
  result = qword_1EDCFE330;
  if (!qword_1EDCFE330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB418F8, &qword_1D984D5C0);
    sub_1D98217B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE330);
  }

  return result;
}

unint64_t sub_1D98217B4()
{
  result = qword_1EDCFE420;
  if (!qword_1EDCFE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE420);
  }

  return result;
}

unint64_t sub_1D9821808()
{
  result = qword_1EDCFE350;
  if (!qword_1EDCFE350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41900, &qword_1D984D5C8);
    sub_1D982188C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE350);
  }

  return result;
}

unint64_t sub_1D982188C()
{
  result = qword_1EDCFE440;
  if (!qword_1EDCFE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE440);
  }

  return result;
}

unint64_t sub_1D98219F4()
{
  result = qword_1ECB41910;
  if (!qword_1ECB41910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41910);
  }

  return result;
}

unint64_t sub_1D9821A4C()
{
  result = qword_1ECB41918;
  if (!qword_1ECB41918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41918);
  }

  return result;
}

unint64_t sub_1D9821AA4()
{
  result = qword_1ECB41920;
  if (!qword_1ECB41920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41920);
  }

  return result;
}

unint64_t sub_1D9821AFC()
{
  result = qword_1ECB41928;
  if (!qword_1ECB41928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41928);
  }

  return result;
}

unint64_t sub_1D9821B54()
{
  result = qword_1EDCFE9A8;
  if (!qword_1EDCFE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE9A8);
  }

  return result;
}

unint64_t sub_1D9821BAC()
{
  result = qword_1EDCFE9B0;
  if (!qword_1EDCFE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE9B0);
  }

  return result;
}

unint64_t sub_1D9821C04()
{
  result = qword_1EDCFE990;
  if (!qword_1EDCFE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE990);
  }

  return result;
}

unint64_t sub_1D9821C5C()
{
  result = qword_1EDCFE998;
  if (!qword_1EDCFE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE998);
  }

  return result;
}

unint64_t sub_1D9821CB4()
{
  result = qword_1EDCFE978;
  if (!qword_1EDCFE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE978);
  }

  return result;
}

unint64_t sub_1D9821D0C()
{
  result = qword_1EDCFE980;
  if (!qword_1EDCFE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE980);
  }

  return result;
}

unint64_t sub_1D9821D64()
{
  result = qword_1EDCFE960;
  if (!qword_1EDCFE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE960);
  }

  return result;
}

unint64_t sub_1D9821DBC()
{
  result = qword_1EDCFE968;
  if (!qword_1EDCFE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFE968);
  }

  return result;
}

uint64_t sub_1D9821E10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D617266 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572656767697274 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D984A5F4();

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

uint64_t sub_1D9821F2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E636F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D984A5F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646165726874 && a2 == 0xE700000000000000 || (sub_1D984A5F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67616D4964657375 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D984A5F4();

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

uint64_t sub_1D9822050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1D98220F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1D98247A4();
    v4 = sub_1D9849D94();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D9822180(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419B0, &qword_1D984E060);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D98245A4();
  sub_1D984A704();
  v13 = 0;
  sub_1D984A584();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    sub_1D98245F8(&qword_1ECB419B8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D984A534();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D9822348()
{
  if (*v0)
  {
    return 0x61724663696E6170;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_1D9822390(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D9853FA0 == a2 || (sub_1D984A5F4() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x61724663696E6170 && a2 == 0xEB0000000073656DLL)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D984A5F4();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D982247C(uint64_t a1)
{
  v2 = sub_1D98245A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D98224B8(uint64_t a1)
{
  v2 = sub_1D98245A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D98224F4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D98234FC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

CoreDiagnostics::PanicPatternAction_optional __swiftcall PanicPatternAction.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PanicPatternAction.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1D9822574()
{
  sub_1D984A6A4();
  sub_1D984A6C4();
  return sub_1D984A6D4();
}

uint64_t sub_1D98225FC(uint64_t a1)
{
  sub_1D984A6A4();
  sub_1D984A6C4();
  return sub_1D984A6D4();
}

_DWORD *sub_1D9822648@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1D9822668(int *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t PanicMatchedPattern.uuid.getter()
{
  v1 = *v0;

  return v1;
}

void PanicMatchedPattern.uuid.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1D982280C()
{
  if (*v0)
  {
    return 0x74634163696E6170;
  }

  else
  {
    return 1684632949;
  }
}

void sub_1D9822848(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D984A5F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74634163696E6170 && a2 == 0xEC000000736E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D984A5F4();

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
}

uint64_t sub_1D9822928(uint64_t a1)
{
  v2 = sub_1D9822B78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9822964(uint64_t a1)
{
  v2 = sub_1D9822B78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PanicMatchedPattern.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41930, &qword_1D984DCA0);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9822B78();
  sub_1D984A704();
  v13 = 0;
  sub_1D984A584();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41940, &qword_1D984DCA8);
    sub_1D9822E74(&qword_1ECB41948, sub_1D9822BCC, MEMORY[0x1E69E6300]);
    sub_1D984A534();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_1D9822B78()
{
  result = qword_1ECB41938;
  if (!qword_1ECB41938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41938);
  }

  return result;
}

unint64_t sub_1D9822BCC()
{
  result = qword_1ECB41950;
  if (!qword_1ECB41950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41950);
  }

  return result;
}

void PanicMatchedPattern.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41958, &qword_1D984DCB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9822B78();
  sub_1D984A6F4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v16 = 0;
    v9 = sub_1D984A4B4();
    v11 = v10;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41940, &qword_1D984DCA8);
    v15 = 1;
    sub_1D9822E74(&qword_1ECB41960, sub_1D9822EEC, MEMORY[0x1E69E6330]);
    sub_1D984A464();
    (*(v6 + 8))(v8, v5);
    v13 = v14[1];
    *a2 = v12;
    a2[1] = v11;
    a2[2] = v13;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1D9822E74(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB41940, &qword_1D984DCA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9822EEC()
{
  result = qword_1ECB41968;
  if (!qword_1ECB41968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41968);
  }

  return result;
}

unsigned __int8 *sub_1D9822F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41818, &unk_1D984D0E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D984CC80;
  *(inited + 32) = 0x556E726574746170;
  *(inited + 40) = 0xEB00000000444955;
  swift_beginAccess();

  v5 = sub_1D9849DC4();

  *(inited + 48) = v5;
  *(inited + 56) = 0x6E6F69746361;
  *(inited + 64) = 0xE600000000000000;
  result = sub_1D984A6E4();
  *(inited + 72) = result;
  *(inited + 80) = 0x657079745F677562;
  *(inited + 88) = 0xE800000000000000;
  v8 = *(a3 + 8);
  v7 = *(a3 + 16);
  v9 = (HIBYTE(v7) & 0xF);
  v10 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_65;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {

    sub_1D983F95C(v8, v7, 10);

    goto LABEL_65;
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((v8 & 0x1000000000000000) != 0)
    {
      v9 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1D984A3B4();
      v9 = result;
    }

    v12 = *v9;
    if (v12 == 43)
    {
      if (v10 >= 1)
      {
        v21 = v10 - 1;
        if (v10 != 1)
        {
          v22 = 0;
          if (v9)
          {
            v23 = v9 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v22, 0xAuLL))
              {
                goto LABEL_63;
              }

              v17 = __CFADD__(10 * v22, v24);
              v22 = 10 * v22 + v24;
              if (v17)
              {
                goto LABEL_63;
              }

              ++v23;
              if (!--v21)
              {
LABEL_55:
                LOBYTE(v9) = 0;
                goto LABEL_64;
              }
            }
          }

          goto LABEL_64;
        }

        goto LABEL_63;
      }

      goto LABEL_70;
    }

    if (v12 != 45)
    {
      if (v10)
      {
        v28 = 0;
        if (v9)
        {
          while (1)
          {
            v29 = *v9 - 48;
            if (v29 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v28, 0xAuLL))
            {
              goto LABEL_63;
            }

            v17 = __CFADD__(10 * v28, v29);
            v28 = 10 * v28 + v29;
            if (v17)
            {
              goto LABEL_63;
            }

            ++v9;
            if (!--v10)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_63:
      LOBYTE(v9) = 1;
      goto LABEL_64;
    }

    if (v10 >= 1)
    {
      v13 = v10 - 1;
      if (v10 != 1)
      {
        v14 = 0;
        if (v9)
        {
          v15 = v9 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              goto LABEL_63;
            }

            if (!is_mul_ok(v14, 0xAuLL))
            {
              goto LABEL_63;
            }

            v17 = 10 * v14 >= v16;
            v14 = 10 * v14 - v16;
            if (!v17)
            {
              goto LABEL_63;
            }

            ++v15;
            if (!--v13)
            {
              goto LABEL_55;
            }
          }
        }

LABEL_64:
        v35 = v9;
LABEL_65:
        *(inited + 96) = sub_1D984A254();
        v33 = sub_1D98336F8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41820, &qword_1D984E090);
        swift_arrayDestroy();
        return v33;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v34[0] = v8;
  v34[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v9)
      {
        v30 = 0;
        v31 = v34;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          if (!is_mul_ok(v30, 0xAuLL))
          {
            break;
          }

          v17 = __CFADD__(10 * v30, v32);
          v30 = 10 * v30 + v32;
          if (v17)
          {
            break;
          }

          ++v31;
          if (!--v9)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v9)
    {
      if (--v9)
      {
        v18 = 0;
        v19 = v34 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (!is_mul_ok(v18, 0xAuLL))
          {
            break;
          }

          v17 = 10 * v18 >= v20;
          v18 = 10 * v18 - v20;
          if (!v17)
          {
            break;
          }

          ++v19;
          if (!--v9)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_69;
  }

  if (v9)
  {
    if (--v9)
    {
      v25 = 0;
      v26 = v34 + 1;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        if (!is_mul_ok(v25, 0xAuLL))
        {
          break;
        }

        v17 = __CFADD__(10 * v25, v27);
        v25 = 10 * v25 + v27;
        if (v17)
        {
          break;
        }

        ++v26;
        if (!--v9)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_71:
  __break(1u);
  return result;
}

double PanicMatcherOOP.init()@<D0>(uint64_t a1@<X8>)
{
  strcpy(&v4, "panicPayloadV1");
  HIBYTE(v4) = -18;
  *&v5 = 0x80000001D9853F70;
  *(&v5 + 1) = MEMORY[0x1E69E7CC0];
  sub_1D981E688();
  result = *&v4;
  v3 = v5;
  *a1 = v4;
  *(a1 + 16) = 0xD000000000000021;
  *(a1 + 24) = v3;
  return result;
}

char *PanicMatcherOOP.lookForPattern(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D9823724(a1, *(v2 + 32));
  v5 = MEMORY[0x1E69E7CC0];
  if (result)
  {
    v5 = result;
  }

  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1D98234FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB41990, &qword_1D984E050);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D98245A4();
  sub_1D984A6F4();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_1D984A4B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419A0, &qword_1D984E058);
    v9[15] = 1;
    sub_1D98245F8(&qword_1ECB419A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D984A464();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

char *sub_1D9823724(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419C8, &qword_1D984E068);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419D0, &unk_1D984E070);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v87 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = *(a2 + 16);
  if (v95)
  {
    v97 = &v82 - v11;
    type metadata accessor for PanicPatternInfo();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v100 = v2;
      v93 = v7;
      v14 = swift_allocObject();
      v86 = v13 + OBJC_IVAR____SwiftPanicPatternInfo_panicReasonString;
      v94 = a2 + 32;
      v83 = a1;
      v84 = a2;

      swift_beginAccess();
      v15 = 0;
      v16 = 0;
      v92 = (v8 + 8);
      v85 = v103;
      *&v17 = 136315138;
      v90 = v17;
      v89 = MEMORY[0x1E69E7CC0];
      v96 = v14;
      v101 = "PanicPatternDefinition";
      while (1)
      {
        v19 = (v94 + 80 * v16);
        v20 = v19[3];
        v107 = v19[2];
        v108 = v20;
        v109 = v19[4];
        v110 = v20;
        v21 = v19[1];
        v105 = *v19;
        v106 = v21;
        v23 = *(&v21 + 1);
        v22 = v107;
        v99 = v16;
        if (v15)
        {
          sub_1D98246B8(&v105, v104);
          sub_1D981FC20(&v110, v104);

          v24 = v105;
          *(v14 + 16) = v110;
          if (v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = &unk_1F550A608;
          }

          v98 = v25;
        }

        else
        {
          sub_1D98246B8(&v105, v104);
          sub_1D981FC20(&v110, v104);
          v26 = v105;
          *(v14 + 16) = v110;
          v27 = &unk_1F550A608;
          if (v26)
          {
            v27 = v26;
          }

          v98 = v27;
        }

        if (qword_1ECB415B0 != -1)
        {
          swift_once();
        }

        v28 = sub_1D9849C54();
        v29 = __swift_project_value_buffer(v28, qword_1ECB47618);
        sub_1D98246B8(&v105, v104);
        v30 = sub_1D9849C24();
        v31 = sub_1D984A134();
        sub_1D981A4E8(&v105, &qword_1ECB417D0, &qword_1D984D098);
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v104[0] = v33;
          *v32 = v90;

          v34 = sub_1D9819F0C(v23, v22, v104);

          *(v32 + 4) = v34;
          _os_log_impl(&dword_1D97FA000, v30, v31, "create a regex %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          MEMORY[0x1DA738F10](v33, -1, -1);
          v35 = v32;
          v14 = v96;
          MEMORY[0x1DA738F10](v35, -1, -1);
        }

        v36 = v100;
        sub_1D9849C14();
        if (v36)
        {
          v37 = sub_1D9849C24();
          v38 = sub_1D984A134();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_1D97FA000, v37, v38, "Failed to create regex", v39, 2u);
            MEMORY[0x1DA738F10](v39, -1, -1);
          }

          v100 = 0;
          v18 = v99;
          goto LABEL_5;
        }

        v91 = v29;
        sub_1D9849F84();
        sub_1D9824728();
        v40 = v87;
        v41 = v93;
        sub_1D9849BF4();
        v42 = v88;
        sub_1D9849C04();
        v100 = 0;

        v43 = *v92;
        (*v92)(v40, v41);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB419E0, &unk_1D984E080);
        v45 = (*(*(v44 - 8) + 48))(v42, 1, v44) != 1;
        sub_1D981A4E8(v42, &qword_1ECB419C8, &qword_1D984E068);
        v46 = sub_1D9849C24();
        v47 = sub_1D984A134();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v91 = v43;
          v49 = v48;
          v50 = swift_slowAlloc();
          v104[0] = v50;
          *v49 = v90;
          if (v45)
          {
            v51 = 7562585;
          }

          else
          {
            v51 = 28494;
          }

          if (v45)
          {
            v52 = 0xE300000000000000;
          }

          else
          {
            v52 = 0xE200000000000000;
          }

          v53 = sub_1D9819F0C(v51, v52, v104);

          *(v49 + 4) = v53;
          _os_log_impl(&dword_1D97FA000, v46, v47, "panic string matched: %s", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v50);
          MEMORY[0x1DA738F10](v50, -1, -1);
          MEMORY[0x1DA738F10](v49, -1, -1);

          v91(v97, v93);
          if (!v45)
          {
LABEL_29:
            v14 = v96;
            goto LABEL_52;
          }
        }

        else
        {

          v43(v97, v93);
          if (!v45)
          {
            goto LABEL_29;
          }
        }

        v54 = *(v96 + 24);
        v91 = *(v96 + 16);
        v55 = *(v98 + 2);
        if (v55)
        {
          break;
        }

        v58 = MEMORY[0x1E69E7CC0];
LABEL_44:
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v14 = v96;
          v64 = v89;
        }

        else
        {
          v64 = sub_1D98325C4(0, *(v89 + 2) + 1, 1, v89);
          v14 = v96;
        }

        v66 = *(v64 + 2);
        v65 = *(v64 + 3);
        if (v66 >= v65 >> 1)
        {
          v64 = sub_1D98325C4((v65 > 1), v66 + 1, 1, v64);
        }

        *(v64 + 2) = v66 + 1;
        v89 = v64;
        v67 = &v64[24 * v66];
        *(v67 + 4) = v91;
        *(v67 + 5) = v54;
        *(v67 + 6) = v58;
        if (v55)
        {
          v68 = (v98 + 32);
          do
          {
            v69 = *v68++;
            v70 = sub_1D9849DC4();
            v71 = swift_allocObject();
            *(v71 + 16) = v14;
            *(v71 + 24) = v69;
            v72 = v108;
            *(v71 + 64) = v107;
            *(v71 + 80) = v72;
            *(v71 + 96) = v109;
            v73 = v106;
            *(v71 + 32) = v105;
            *(v71 + 48) = v73;
            v103[2] = sub_1D982478C;
            v103[3] = v71;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            v103[0] = sub_1D98220F4;
            v103[1] = &block_descriptor_1;
            v74 = _Block_copy(aBlock);
            sub_1D98246B8(&v105, v104);

            AnalyticsSendEventLazy();
            _Block_release(v74);

            --v55;
          }

          while (v55);
          v18 = v99;
          goto LABEL_5;
        }

LABEL_52:
        v18 = v99;
LABEL_5:
        v16 = v18 + 1;
        sub_1D981A4E8(&v105, &qword_1ECB417D0, &qword_1D984D098);
        v15 = 1;
        if (v16 == v95)
        {

          swift_deallocUninitializedObject();
          return v89;
        }
      }

      v56 = (v98 + 32);

      v57 = v55;
      v58 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v60 = *v56++;
        v59 = v60;
        if (v60 == 2)
        {
          break;
        }

        if (v59 == 1)
        {
          v61 = 0;
LABEL_39:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_1D9832700(0, *(v58 + 2) + 1, 1, v58);
          }

          v63 = *(v58 + 2);
          v62 = *(v58 + 3);
          if (v63 >= v62 >> 1)
          {
            v58 = sub_1D9832700((v62 > 1), v63 + 1, 1, v58);
          }

          *(v58 + 2) = v63 + 1;
          v58[v63 + 32] = v61;
        }

        if (!--v57)
        {
          goto LABEL_44;
        }
      }

      v61 = 1;
      goto LABEL_39;
    }

    v80 = 1;
  }

  else
  {
    if (qword_1ECB415B0 != -1)
    {
      swift_once();
    }

    v76 = sub_1D9849C54();
    __swift_project_value_buffer(v76, qword_1ECB47618);
    v77 = sub_1D9849C24();
    v78 = sub_1D984A134();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1D97FA000, v77, v78, "There is no panic payload available", v79, 2u);
      MEMORY[0x1DA738F10](v79, -1, -1);
    }

    v80 = 0;
  }

  sub_1D981FB6C();
  swift_allocError();
  *v81 = v80;
  return swift_willThrow();
}

unint64_t sub_1D9824408()
{
  result = qword_1ECB41970;
  if (!qword_1ECB41970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41970);
  }

  return result;
}

unint64_t sub_1D98244A0()
{
  result = qword_1ECB41978;
  if (!qword_1ECB41978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41978);
  }

  return result;
}

unint64_t sub_1D98244F8()
{
  result = qword_1ECB41980;
  if (!qword_1ECB41980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41980);
  }

  return result;
}

unint64_t sub_1D9824550()
{
  result = qword_1ECB41988;
  if (!qword_1ECB41988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41988);
  }

  return result;
}

unint64_t sub_1D98245A4()
{
  result = qword_1ECB41998;
  if (!qword_1ECB41998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41998);
  }

  return result;
}

uint64_t sub_1D98245F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB419A0, &qword_1D984E058);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9824664()
{
  result = qword_1ECB419C0;
  if (!qword_1ECB419C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB419C0);
  }

  return result;
}

uint64_t sub_1D98246B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB417D0, &qword_1D984D098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9824728()
{
  result = qword_1ECB419D8;
  if (!qword_1ECB419D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB419D0, &unk_1D984E070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB419D8);
  }

  return result;
}

unint64_t sub_1D98247A4()
{
  result = qword_1ECB419E8;
  if (!qword_1ECB419E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB419E8);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

unint64_t sub_1D982486C()
{
  result = qword_1ECB419F0;
  if (!qword_1ECB419F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB419F0);
  }

  return result;
}

unint64_t sub_1D98248C4()
{
  result = qword_1ECB419F8;
  if (!qword_1ECB419F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB419F8);
  }

  return result;
}

unint64_t sub_1D982491C()
{
  result = qword_1ECB41A00;
  if (!qword_1ECB41A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB41A00);
  }

  return result;
}

id PatternInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PatternInfo.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PatternInfo();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PatternInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PatternInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WatchdogExitReasonHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WatchdogExitReasonHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchdogExitReasonHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WatchdogExitReasonHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WatchdogExitReasonHelper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t _s15CoreDiagnostics24WatchdogExitReasonHelperC19descriptionFromCodeySSSgs5Int32VFZ_0(int a1)
{
  result = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD00000000000003ALL;
    }

    else if (a1 == 4)
    {
      return 0xD00000000000004DLL;
    }
  }

  else if (a1 == 1)
  {
    return 0xD000000000000020;
  }

  else if (a1 == 2)
  {
    return 0xD00000000000002ELL;
  }

  return result;
}