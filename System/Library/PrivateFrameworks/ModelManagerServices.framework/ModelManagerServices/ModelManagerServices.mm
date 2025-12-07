uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_19794296C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Session.__allocating_init(assetBundleURIs:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v31 = a6;
  v32 = a7;
  v30 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_28(v16);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_29_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B8, &unk_197A97320);
  OUTLINED_FUNCTION_28(v18);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v29 - v20;
  v22 = *a9;
  v23 = *(a9 + 2);
  sub_19794364C(a1, &v29 - v20);
  v24 = sub_197A87118();
  result = __swift_getEnumTagSinglePayload(v21, 1, v24);
  if (result != 1)
  {

    if (a4 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a4 <= 0x7FFFFFFF)
    {
      sub_1979444C8(a8, v10, &qword_1EAF499A8, &qword_197A92B00);
      LODWORD(v34) = v23;
      Session.__allocating_init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:)(v21, a2, a3, a4, v30, v31, v32, v10, &v33, v28, v29, v30, v31, v32, v22, v34, v35, v36, v37, v38, v39);
      v26 = OUTLINED_FUNCTION_103_0();
      sub_197947A40(v26, v27, &qword_197A92B00);
      return v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return sub_197A88008();
}

double OUTLINED_FUNCTION_1_14@<D0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = *a1;
  *v1 = *a1;
  *(v1 + 8) = v2;
  *(v1 + 12) = v3;
  *(v1 + 16) = v5;
  *(v1 + 24) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1, uint64_t a2)
{

  return sub_197A87FD8();
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_36_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v2 - 368) + 32);
  *(v2 - 400) = a1;
  result = v1 + a1;
  *(v2 - 432) = v3;
  return result;
}

void OUTLINED_FUNCTION_36_3()
{

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_88(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_46(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_70_2(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_29()
{

  JUMPOUT(0x19A8EBE00);
}

void OUTLINED_FUNCTION_25()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_113()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_5@<X0>(char a1@<W8>)
{
  *(v1 - 144) = a1;
  v3 = *(v1 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 128, v3);
}

uint64_t OUTLINED_FUNCTION_79(uint64_t a1, uint64_t a2)
{

  return sub_197A88218();
}

void OUTLINED_FUNCTION_44()
{

  JUMPOUT(0x19A8EBE00);
}

BOOL OUTLINED_FUNCTION_48(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_56()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_48_3@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_197947A40(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_48_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_48_6(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_59_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, void (*a3)(void)@<X2>)
{
  v4 = *(a2 - 256);

  return sub_19799747C(a1, v4, a3);
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A883D8();
}

uint64_t OUTLINED_FUNCTION_59_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 360) = a3;
  *(v3 - 376) = a2;
  *(v3 - 440) = a1;

  return type metadata accessor for ModelManagerError(0);
}

BOOL OUTLINED_FUNCTION_65(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_65_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_203()
{
}

uint64_t OUTLINED_FUNCTION_65_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t sub_19794364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_197A87118();
  if (v4)
  {
    OUTLINED_FUNCTION_36_0();
    (*(v6 + 16))(a2, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);
  }

  OUTLINED_FUNCTION_52_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t type metadata accessor for ModelManagerError(uint64_t a1)
{
  result = qword_1ED8816C8;
  if (!qword_1ED8816C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_6()
{
}

unint64_t OUTLINED_FUNCTION_23_7(uint64_t a1)
{

  return sub_19796AB4C(a1);
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return MEMORY[0x1EEDC6A10](va, a2, a2, v16, v16);
}

unint64_t OUTLINED_FUNCTION_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_197948834(v7, v6, va);
}

uint64_t OUTLINED_FUNCTION_51_3()
{

  return sub_197967254(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_51_4(float a1)
{
  *v1 = a1;

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_51_5()
{
  v2 = *(v0 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 128, v2);
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_38_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

void OUTLINED_FUNCTION_37()
{

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_38_4()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_38_5(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_8(uint64_t a1, uint64_t a2)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_38_10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A883A8();
}

uint64_t OUTLINED_FUNCTION_14_0()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_74(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_197948834(v3, v4, va);
}

uint64_t OUTLINED_FUNCTION_9_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_9_7(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E69E87C0];

  return sub_197A5CF0C(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66_3(uint64_t result)
{
  *(v2 - 72) = *(v1 + *(result + 20));
  *(v2 - 73) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_6()
{

  return sub_1979636E8(v0, type metadata accessor for RequestMetadata);
}

uint64_t OUTLINED_FUNCTION_66_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_0()
{
  *(v1 - 896) = v0;

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_33_2(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E6510];

  return sub_197978B60(a1, a2, v3);
}

uint64_t OUTLINED_FUNCTION_33_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_197A880E8();
}

void OUTLINED_FUNCTION_33_5()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_33_8(uint64_t a1, uint64_t a2)
{

  return sub_197A880B8();
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  v2 = *(v0 - 96);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 120, v2);
}

uint64_t OUTLINED_FUNCTION_3_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_8()
{
}

uint64_t OUTLINED_FUNCTION_3_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_3_15(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return v1;
}

unint64_t OUTLINED_FUNCTION_3_16(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197954334(a1);
}

uint64_t OUTLINED_FUNCTION_3_19(uint64_t a1, uint64_t a2)
{

  return sub_197A87FD8();
}

void OUTLINED_FUNCTION_3_22()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_125(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A883D8();
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_71_5(uint64_t a1)
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_71_8()
{
  v3 = *(v0 + 40);
  *(v1 - 96) = *(v0 + 32);
  *(v1 - 88) = v3;
  *(v1 - 97) = 1;

  return sub_1979552D0();
}

uint64_t sub_1979444C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_6();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_197944528()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_22();
  v4(v3);
  return v0;
}

uint64_t sub_197944580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_182(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v4;
}

void Session.__allocating_init(assetBundleURI:useCaseID:onBehalfOfPID:parentOfOnBehalfOfPid:loggingIdentifier:sessionSetID:inferenceInterfaceVersion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int *a21)
{
  OUTLINED_FUNCTION_67();
  v123 = v21;
  v23 = v22;
  v136 = v24;
  v26 = v25;
  v132 = v27;
  v141 = v28;
  v138 = v29;
  v130 = v30;
  v32 = v31;
  v33 = type metadata accessor for ModelManagerError(0);
  v34 = OUTLINED_FUNCTION_28(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v36);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15_5(v38);
  v126 = sub_197A87118();
  OUTLINED_FUNCTION_2();
  v125 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_15_5(v41);
  v137 = sub_197A87298();
  OUTLINED_FUNCTION_2();
  v139 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_34(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
  v47 = OUTLINED_FUNCTION_10_7(v46, &v143);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v113 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v53 = OUTLINED_FUNCTION_28(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_13_0();
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = v113 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v59 = v113 - v58;
  v60 = a21[1];
  v135 = *a21;
  v134 = v60;
  v133 = a21[2];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B08, &qword_197A895D8);
  v61 = OUTLINED_FUNCTION_74_4(v115);
  v114 = xmmword_197A88E50;
  *(v61 + 16) = xmmword_197A88E50;
  v128 = v32;
  *(v61 + 32) = sub_197A870F8();
  *(v61 + 40) = v62;
  v127 = v23;
  sub_1979444C8(v23, v59, &qword_1EAF499A8, &qword_197A92B00);
  if (qword_1ED8803B0 != -1)
  {
    OUTLINED_FUNCTION_3_0(&qword_1ED8803B0);
  }

  v63 = qword_1ED880258;
  v147[11] = &type metadata for VoucherProvider;
  v147[12] = &off_1F0C11F50;

  v64 = v26;
  v65 = v26;
  v113[1] = v26;
  v66 = v136;
  sub_197945194(v61, v64, v136);

  v67 = v131;
  sub_1979444C8(v51, v131, &qword_1EAF499A0, &qword_197A920D8);
  v124 = v59;
  sub_1979444C8(v59, v57, &qword_1EAF499A8, &qword_197A92B00);
  OUTLINED_FUNCTION_86_1();
  OUTLINED_FUNCTION_85_1();
  v147[1] = &type metadata for VoucherProvider;
  v147[2] = &off_1F0C11F50;
  v68 = OUTLINED_FUNCTION_37_2();
  __swift_mutable_project_boxed_opaque_existential_1(&v146, &type metadata for VoucherProvider);
  v144[3] = type metadata accessor for ModelServiceClient();
  v145 = &protocol witness table for ModelServiceClient;
  v143 = &off_1F0C11F50;
  v144[0] = v63;
  v142[3] = &type metadata for VoucherProvider;
  sub_197947C44(v144, v68 + 16);
  v69 = (v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_useCaseID);
  v70 = v130;
  v71 = v138;
  *v69 = v130;
  v69[1] = v71;
  *(v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_parentOfOnBehalfOfPID) = v132;
  v72 = (v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_loggingIdentifier);
  *v72 = v65;
  v72[1] = v66;
  sub_197A878A8();
  v73 = sub_197A878A8();
  OUTLINED_FUNCTION_110_0(v73);
  v74 = *(v139 + 32);
  v119 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  v75 = v137;
  v118 = v139 + 32;
  v113[0] = v74;
  v74(v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_uuid, v63, v137);
  OUTLINED_FUNCTION_52_4((v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_inferenceInterfaceVersion));
  *(v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_customAssetConfigurations) = 0;
  v76 = v141;
  v123 = v51;
  v77 = v70;
  v78 = v129;
  if (v141 == -1)
  {
    v79 = OUTLINED_FUNCTION_24_5();
    if (v66)
    {
      v141 = getpid();
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v80 = sub_197A87608();
      v81 = OUTLINED_FUNCTION_80_2(v80, qword_1ED87D2E8);
      v77 = sub_197A87D78();
      if (OUTLINED_FUNCTION_68_3(v77))
      {
        v78 = v67;
        v82 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_96_0(v82, 1.5047e-36);
        _os_log_impl(&dword_197941000, v81, v77, "No onBehalfOfPID specified, querying originator pid failed, falling back to current process PID: %d", v82, 8u);
        v67 = v78;
        OUTLINED_FUNCTION_56_2();
      }

      OUTLINED_FUNCTION_83_2();
    }

    else
    {
      v141 = v79;
      if (qword_1ED87D2E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_1ED87D2E0);
      }

      v83 = sub_197A87608();
      v81 = OUTLINED_FUNCTION_80_2(v83, qword_1ED87D2E8);
      v84 = sub_197A87D78();
      if (OUTLINED_FUNCTION_55_0(v84))
      {
        v78 = v70;
        v85 = OUTLINED_FUNCTION_65_2();
        OUTLINED_FUNCTION_96_0(v85, 1.5047e-36);
        _os_log_impl(&dword_197941000, v81, OS_LOG_TYPE_DEFAULT, "No onBehalfOfPID specified, using originator PID: %d", v85, 8u);
        v77 = v70;
        OUTLINED_FUNCTION_56_2();
      }
    }

    v76 = v141;
  }

  *(v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_onBehalfOfPID) = v76;
  sub_1979444C8(v57, v78, &qword_1EAF499A8, &qword_197A92B00);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v75);
  v121 = v57;
  if (EnumTagSinglePayload == 1)
  {
    sub_197947A40(v78, &qword_1EAF499A8, &qword_197A92B00);
    (*(v139 + 16))(v140, v68 + v119, v75);
  }

  else
  {
    v87 = OUTLINED_FUNCTION_71_3();
    (v113[0])(v87, v78, v75);
  }

  v88 = v120;
  sub_1979444C8(v67, v120, &qword_1EAF499A0, &qword_197A920D8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v90 = v67;
  v91 = v126;
  v92 = v125;
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_104_0();

    OUTLINED_FUNCTION_5_5();
    v93 = v116;
    sub_19794B170(v88, v116, v94);
    sub_197947A40(v121, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v90, &qword_1EAF499A0, &qword_197A920D8);
    (*(v139 + 8))(v140, v137);
    __swift_destroy_boxed_opaque_existential_1Tm(v144);
    *(v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = MEMORY[0x1E69E7CC0];
    sub_19794B170(v93, v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v95 = v122;
    (*(v125 + 32))(v122, v88, v126);
    v96 = OUTLINED_FUNCTION_74_4(v115);
    *(v96 + 16) = v114;
    v141 = v76;
    v97 = sub_197A870F8();
    *(v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_supportedAssetBundleIdentifiers) = v96;
    *(v96 + 32) = v97;
    *(v96 + 40) = v98;
    v99 = v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata;
    (*(v92 + 16))(v68 + OBJC_IVAR____TtC20ModelManagerServices7Session_underlyingMetadata, v95, v91);
    v100 = type metadata accessor for Session.Metadata(0);
    v101 = v139;
    v102 = v77;
    v103 = *(v139 + 16);
    v104 = v137;
    v103(v99 + v100[9], v68 + v119, v137);
    v103(v99 + v100[10], v140, v104);
    OUTLINED_FUNCTION_100_1();
    v105 = v138;
    *v106 = v102;
    v106[1] = v105;
    *(v99 + v100[6]) = v141;
    *(v99 + v100[7]) = v132;
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_34_2(v107);
    OUTLINED_FUNCTION_52_4((v99 + v100[11]));
    *(v99 + v100[12]) = 0;
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
    OUTLINED_FUNCTION_70_2(v108);
    v109 = sub_197A87C08();
    OUTLINED_FUNCTION_21_3(v117, v110, v111, v109);
    OUTLINED_FUNCTION_53_3();
    v112 = swift_allocObject();
    OUTLINED_FUNCTION_42_4(v112);
    *(v99 + 72) = v68;

    OUTLINED_FUNCTION_16_4();
    sub_19795CB2C();

    sub_197947A40(v121, &qword_1EAF499A8, &qword_197A92B00);
    sub_197947A40(v131, &qword_1EAF499A0, &qword_197A920D8);
    (*(v92 + 8))(v122, v91);
    (*(v101 + 8))(v140, v104);
    __swift_destroy_boxed_opaque_existential_1Tm(v144);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v142);
  OUTLINED_FUNCTION_48_3(v147);
  (*(v92 + 8))(v128, v91);
  sub_197947A40(v123, &qword_1EAF499A0, &qword_197A920D8);
  OUTLINED_FUNCTION_48_3(&v145);
  OUTLINED_FUNCTION_20_6();
  OUTLINED_FUNCTION_66();
}

uint64_t sub_197945164()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A438, &qword_197A98088);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_197945194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_67();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B8, &unk_197A97320);
  OUTLINED_FUNCTION_28(v11);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = sub_197A87118();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  if (*(v8 + 16))
  {
    sub_197A878A8();
    sub_197A87108();

    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_197947A40(v14, &qword_1EAF499B8, &unk_197A97320);
      if (qword_1ED880370 != -1)
      {
        OUTLINED_FUNCTION_50(&qword_1ED880370);
      }

      v22 = sub_197A87608();
      __swift_project_value_buffer(v22, qword_1ED880520);
      OUTLINED_FUNCTION_27_9();
      sub_197A878A8();
      sub_197A878A8();
      v23 = sub_197A875E8();
      v24 = sub_197A87D68();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v25 = 136315394;
        *(v25 + 4) = sub_197948834(v6, v4, &v37);
        *(v25 + 12) = 2080;
        v26 = MEMORY[0x19A8EADB0](v8, MEMORY[0x1E69E6158]);
        v28 = sub_197948834(v26, v27, &v37);

        *(v25 + 14) = v28;
        _os_log_impl(&dword_197941000, v23, v24, "ModelManager Session %s couldn't get URL from %s", v25, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_44();
      }

      type metadata accessor for ModelManagerError(0);
      OUTLINED_FUNCTION_46_5();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
      OUTLINED_FUNCTION_46_5();
    }

    else
    {
      v35 = *(v17 + 32);
      v35(v21, v14, v15);
      v35(v10, v21, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
      OUTLINED_FUNCTION_46_5();
    }

    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_66();
  }

  else
  {
    if (qword_1ED880370 != -1)
    {
      OUTLINED_FUNCTION_50(&qword_1ED880370);
    }

    v29 = sub_197A87608();
    __swift_project_value_buffer(v29, qword_1ED880520);
    OUTLINED_FUNCTION_27_9();
    sub_197A878A8();
    v30 = sub_197A875E8();
    v31 = sub_197A87D68();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_197948834(v6, v4, &v37);
      _os_log_impl(&dword_197941000, v30, v31, "ModelManager Session %s doesn't have any asset bundle identifiers", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_44();
    }

    type metadata accessor for ModelManagerError(0);
    OUTLINED_FUNCTION_46_5();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A0, &qword_197A920D8);
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_66();

    swift_storeEnumTagMultiPayload();
  }
}

void OUTLINED_FUNCTION_52_4(_DWORD *a1@<X8>)
{
  v2 = *(v1 - 392);
  *a1 = *(v1 - 388);
  a1[1] = v2;
  a1[2] = *(v1 - 396);
}

uint64_t OUTLINED_FUNCTION_52_7()
{

  return sub_197A2FB58(v0);
}

double OUTLINED_FUNCTION_52_8@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 32);
  *a1 = result;
  *(a1 + 8) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return sub_197A87298();
}

uint64_t OUTLINED_FUNCTION_78(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

void OUTLINED_FUNCTION_91_2()
{

  JUMPOUT(0x19A8EAC80);
}

void OUTLINED_FUNCTION_91_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_53_1()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[1];
  v5 = HIDWORD(*v0);
  *(v1 - 96) = *v0;
  *(v1 - 92) = v5;
  *(v1 - 88) = v4;
  *(v1 - 80) = v3;
  *(v1 - 72) = v2;
  return v1 - 96;
}

uint64_t OUTLINED_FUNCTION_53_5(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_53_8()
{
  *(v0 + 4) = v2;
  *v3 = v2;
  *(v0 + 12) = 2080;
  *(v1 + 56) = v4;

  return swift_getMetatypeMetadata();
}

uint64_t OUTLINED_FUNCTION_40_4(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return type metadata accessor for _OSActivity();
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_10_10(unint64_t *a1)
{

  return sub_197955F04(a1, v1);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

unint64_t OUTLINED_FUNCTION_7_5(uint64_t a1, uint64_t a2)
{

  return sub_197978AF8(a1);
}

uint64_t OUTLINED_FUNCTION_7_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_192(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_9()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_31(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_78_0()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_94_0()
{

  JUMPOUT(0x19A8EAC80);
}

uint64_t OUTLINED_FUNCTION_94_1()
{

  return swift_allocError();
}

unint64_t OUTLINED_FUNCTION_94_5()
{
  *(v2 - 160) = v1;
  *(v2 - 152) = v0;
  *(v2 - 65) = 0;

  return sub_1979C43D0();
}

uint64_t sub_197945EF8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return sub_19796A2C8((v2 + 16), v0, v1);
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_18_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_16_6()
{
  *(v0 + 4) = v2;
  *v1 = v2;
  *(v0 + 12) = 2080;
  return 0;
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_30_5(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_30_6(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_11()
{
}

uint64_t OUTLINED_FUNCTION_30_13()
{

  return sub_197A63780();
}

void *OUTLINED_FUNCTION_78_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *v3 = v1;
  v3[1] = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_145()
{

  return sub_197A882F8();
}

void OUTLINED_FUNCTION_78_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_78_8()
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_78_9()
{
}

uint64_t OUTLINED_FUNCTION_69_7@<X0>(uint64_t a1@<X8>)
{

  return sub_197962AC8(v1 + a1 * v2, type metadata accessor for RequestKey);
}

void OUTLINED_FUNCTION_69_9()
{
  *(v1 + 56) = v0[1];
  *v0 = 0;
  v0[1] = 0;
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_39_5(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_39_7(uint64_t a1, uint64_t a2)
{

  return swift_storeEnumTagMultiPayload();
}

void *OUTLINED_FUNCTION_39_8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 136);

  return __swift_project_boxed_opaque_existential_1((a1 + 112), v2);
}

uint64_t OUTLINED_FUNCTION_45()
{
}

uint64_t OUTLINED_FUNCTION_45_1()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_45_4()
{
  *(v0 + 16) = *(v0 + 208);

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_45_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A883A8();
}

uint64_t OUTLINED_FUNCTION_45_7(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_19796AB98(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_64()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_64_5()
{
  *(v0 + 16) = v1;

  JUMPOUT(0x19A8EBBD0);
}

BOOL OUTLINED_FUNCTION_202()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_64_6@<X0>(uint64_t a1@<X8>)
{
  *(v3 + a1) = v1;
  *(v3 + v2[11]) = 0;
  *(v3 + v2[12]) = 0;
  *(v3 + v2[13]) = 0;
  return v3 + v2[14];
}

uint64_t OUTLINED_FUNCTION_64_8(uint64_t a1)
{

  return sub_197A87EB8();
}

uint64_t OUTLINED_FUNCTION_29_7(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6340];

  return swift_getWitnessTable(v3, a1);
}

uint64_t OUTLINED_FUNCTION_29_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return 0;
}

uint64_t OUTLINED_FUNCTION_8_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_8_10()
{
  v2 = *(v0 + 88);

  sub_19795C1F8(v2);
}

unint64_t OUTLINED_FUNCTION_6_5(uint64_t a1, uint64_t a2)
{

  return sub_197978AF8(a1);
}

uint64_t OUTLINED_FUNCTION_6_10@<X0>(void *a1@<X8>)
{
  v1 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_6_14()
{

  return swift_getAssociatedTypeWitness();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void OUTLINED_FUNCTION_19_8()
{
  *(v0 + 4) = v2;
  *v1 = v2;
  *(v0 + 12) = 2080;
}

uint64_t OUTLINED_FUNCTION_19_10@<X0>(uint64_t a1@<X8>)
{
  *(v3 + a1) = v1;
  *(v3 + v2[11]) = 0;
  *(v3 + v2[12]) = 0;
  *(v3 + v2[13]) = 0;
  return v3 + v2[14];
}

uint64_t OUTLINED_FUNCTION_19_11()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_19_14(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_19_15(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return sub_197A88148();
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_0_28()
{
  v3[5] = v1;
  v3[6] = v2;
  v3[2] = 0xD000000000000024;
  v3[3] = v0;
}

BOOL OUTLINED_FUNCTION_68_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_68_7()
{

  return sub_197962AC8(v0, type metadata accessor for RequestMetadata);
}

uint64_t OUTLINED_FUNCTION_5_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5_10()
{
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1979474F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_19798E5C8;

  return v6(a1);
}

uint64_t OUTLINED_FUNCTION_15_0@<X0>(void *a1@<X8>)
{
  v1 = a1[20];
  __swift_project_boxed_opaque_existential_1(a1 + 16, a1[19]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_15_7()
{
}

uint64_t OUTLINED_FUNCTION_15_9(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

uint64_t sub_197947748(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_197960FB0;

  return ModelServiceClient.establishment(of:)();
}

uint64_t ModelServiceClient.establishment(of:)()
{
  OUTLINED_FUNCTION_9();
  v1[11] = v2;
  v1[12] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v3);
  v1[13] = OUTLINED_FUNCTION_78_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_10(v4);
  v1[14] = v5;
  v1[15] = *(v6 + 64);
  v1[16] = OUTLINED_FUNCTION_90_4();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_197947900(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_75_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_6();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t sub_197947964()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_71_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_8_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_5_0(v1);

  return v4(v3);
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

uint64_t sub_197947A40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6();
  (*(v4 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_17_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return sub_197A880E8();
}

void OUTLINED_FUNCTION_20_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_17_5(void *a1@<X8>)
{
  v6 = *(v1 - 256);
  v7 = *(v5 - 360);
  *a1 = v6;
  a1[1] = v7;
  *(v3 + *(v4 + 24)) = v2;
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t a1, uint64_t a2)
{

  return sub_197A87FD8();
}

uint64_t sub_197947C44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_67_4(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

void OUTLINED_FUNCTION_67_8()
{
  *(v0 + 48) = v1;

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_67_10(uint64_t a1)
{

  return sub_197962AC8(a1, type metadata accessor for Session.Metadata);
}

uint64_t OUTLINED_FUNCTION_31_0(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_31_1()
{

  return sub_197A880B8();
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
}

void OUTLINED_FUNCTION_31_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_31_10(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v1;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_87_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_197A870F8();
}

uint64_t OUTLINED_FUNCTION_87_2(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_87_7()
{

  return sub_197A882F8();
}

void OUTLINED_FUNCTION_81_2()
{
  *(v1 + 56) = v0;

  JUMPOUT(0x19A8EBBD0);
}

unint64_t OUTLINED_FUNCTION_81_3(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_197948834(v3, v4, va);
}

uint64_t OUTLINED_FUNCTION_204()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_1(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E64F0];

  return sub_197978B60(a1, a2, v3);
}

void OUTLINED_FUNCTION_34_2(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  *a1 = v2;
  a1[1] = v3;
}

uint64_t OUTLINED_FUNCTION_34_3()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_159(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A883D8();
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

uint64_t OUTLINED_FUNCTION_80_2(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_197A875E8();
}

void OUTLINED_FUNCTION_146(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_92_0(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_92_1()
{
  *(v1 + 4) = v3;
  *(v1 + 12) = 1024;

  return sub_19796F6D0(v2, v0);
}

void OUTLINED_FUNCTION_92_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_92_4()
{
  v1 = *(v0 + 464);
  *(v1 + 168) = 0;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  return v0 + 384;
}

uint64_t OUTLINED_FUNCTION_46_2(uint64_t a1)
{

  return sub_197A87FD8();
}

uint64_t OUTLINED_FUNCTION_46_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_46_6(uint64_t a1)
{

  return sub_197A883D8();
}

uint64_t OUTLINED_FUNCTION_46_7()
{

  return swift_beginAccess();
}

uint64_t sub_197948484(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_88_1()
{

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 208, v0);
}

uint64_t OUTLINED_FUNCTION_143_0(uint64_t a1)
{

  return sub_197A88218();
}

uint64_t OUTLINED_FUNCTION_143_1()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

void OUTLINED_FUNCTION_143_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned __int8 a15)
{

  sub_197963674(a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_143_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85_1()
{
  v2 = *(v0 - 144);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 168, v2);
}

uint64_t OUTLINED_FUNCTION_85_3(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_85_5(uint64_t a1)
{

  return sub_197A87EB8();
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_25_7(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_1979487E0()
{
  OUTLINED_FUNCTION_71();
  v4 = OUTLINED_FUNCTION_114(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_6();
  v6 = OUTLINED_FUNCTION_22();
  v7(v6);
  return v0;
}

unint64_t sub_197948834(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_197A878A8();
  v6 = sub_197949504(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_197949604(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return sub_197947A40(v2, v0, v1);
}

void OUTLINED_FUNCTION_73_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1979489D4(const char *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 0;
  *(v3 + 24) = 0;
  *(v3 + 16) = sub_197949738(a1, a2, a3, &dword_197941000);
  swift_beginAccess();
  v4 = swift_unknownObjectRetain();
  os_activity_scope_enter(v4, (v3 + 24));
  swift_endAccess();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t OUTLINED_FUNCTION_125_0()
{
}

BOOL OUTLINED_FUNCTION_55_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_141_2@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = a2;

  return sub_197A878A8();
}

void *OUTLINED_FUNCTION_11_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *v3 = v1;
  v3[1] = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

void OUTLINED_FUNCTION_47_4()
{
  *(v0 + 16) = *(v0 + 192);

  JUMPOUT(0x19A8EBBD0);
}

uint64_t OUTLINED_FUNCTION_47_6(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEDC6A10](a1, a2, a2, v2, v2);
}

uint64_t OUTLINED_FUNCTION_77_0()
{
}

uint64_t OUTLINED_FUNCTION_79_1()
{

  return sub_197A878A8();
}

uint64_t OUTLINED_FUNCTION_77_5()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_77_7()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_77_10(uint64_t a1)
{
  *(v2 + 168) = *(*(v1 + 56) + 8 * a1);
}

uint64_t OUTLINED_FUNCTION_119_0()
{

  return sub_19796F6D0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_119_2(uint64_t a1)
{

  return sub_1979699A8(a1, type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle);
}

uint64_t OUTLINED_FUNCTION_119_3(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_197948F1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_3(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

uint64_t OUTLINED_FUNCTION_24_5()
{
  __swift_project_boxed_opaque_existential_1((v0 - 288), *(v0 - 264));

  return sub_197A1101C();
}

uint64_t OUTLINED_FUNCTION_93_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_7(uint64_t a1, uint64_t a2)
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_24_14()
{

  return sub_197969A00(v0, type metadata accessor for InferenceProviderRequestConfiguration);
}

uint64_t OUTLINED_FUNCTION_20_2(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_20_5(uint64_t a1)
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_20_6()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 - 128));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 - 208));

  return __swift_destroy_boxed_opaque_existential_1Tm((v0 - 168));
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

uint64_t OUTLINED_FUNCTION_20_12()
{

  return sub_197A87C08();
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_82_1()
{
  v6 = (v4 + v5[7]);
  *v6 = v3;
  v6[1] = v2;
  *(v4 + v5[8]) = v1;
  *(v4 + v5[9]) = v0;
}

uint64_t OUTLINED_FUNCTION_82_3(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_82_4()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_49_4()
{

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_49_5(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_49_6()
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_49_8()
{

  JUMPOUT(0x19A8EAC80);
}

uint64_t OUTLINED_FUNCTION_49_9(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_11()
{
  v3 = *(v1 - 104);
  *(v0 + 32) = *(v1 - 112);
  *(v0 + 40) = v3;
  *(v1 - 112) = 2;

  return sub_197A87FA8();
}

unint64_t sub_197949504(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_19798C868(a5, a6);
    *a1 = v9;
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
    result = sub_197A87E98();
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

uint64_t sub_197949604(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_4(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

void OUTLINED_FUNCTION_13_5(void *a1@<X8>)
{
  v5 = *(v1 - 256);
  v6 = *(v4 - 352);
  *a1 = v5;
  a1[1] = v6;
  v7 = v2 + *(v3 + 44);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v2 + *(v3 + 48)) = 0;
}

os_activity_t sub_197949738(const char *a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    if (!(a1 >> 32))
    {
      v8 = a1 & 0xFFFFF800;
      v9 = 55296;
      if (v8 != 55296)
      {
        v8 = a1 >> 16;
        if (a1 >> 16 > 0x10)
        {
          __break(1u);
        }

        else if (a1 <= 0x7F)
        {
          v10 = a1 + 1;
          goto LABEL_12;
        }

        v9 = (a1 & 0x3F) << 8;
        if (a1 >= 0x800)
        {
          goto LABEL_33;
        }

        v10 = (a1 >> 6) + v9 + 33217;
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (!a1)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_5;
  }

  if (!a4)
  {
LABEL_36:
    result = sub_197A87ED8();
    __break(1u);
    return result;
  }

  if (qword_1ED880398 != -1)
  {
    goto LABEL_26;
  }

LABEL_5:
  v6 = off_1ED8803A0;
  os_unfair_lock_lock(off_1ED8803A0 + 6);
  if (*(v6 + 2))
  {
    v7 = *(v6 + 2);
    goto LABEL_19;
  }

  v13 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  *(v6 + 2) = v13;
  if (!v13)
  {
LABEL_31:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_33:
      v17 = (v9 | (a1 >> 6) & 0x3F) << 8;
      v18 = (a1 >> 18) + ((v17 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
      v19 = (a1 >> 12) + v17 + 8487393;
      if (v8)
      {
        v10 = v18;
      }

      else
      {
        v10 = v19;
      }

LABEL_12:
      *description = (v10 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v10) & 0x18)));
      if (!a4)
      {
        goto LABEL_36;
      }

      if (qword_1ED880398 != -1)
      {
        swift_once();
      }

      v11 = off_1ED8803A0;
      os_unfair_lock_lock(off_1ED8803A0 + 6);
      if (*(v11 + 2))
      {
        break;
      }

      v15 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
      *(v11 + 2) = v15;
      if (v15)
      {
        v12 = v15;
        swift_unknownObjectRetain_n();
        goto LABEL_22;
      }
    }

    v12 = *(v11 + 2);
LABEL_22:
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v11 + 6);
    v14 = _os_activity_create(a4, description, v12, OS_ACTIVITY_FLAG_DEFAULT);
    goto LABEL_23;
  }

  v7 = v13;
  swift_unknownObjectRetain_n();
LABEL_19:
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v6 + 6);
  v14 = _os_activity_create(a4, a1, v7, OS_ACTIVITY_FLAG_DEFAULT);
LABEL_23:
  swift_unknownObjectRelease();
  return v14;
}

unint64_t sub_1979499EC(uint64_t a1, uint64_t a2)
{
  v11[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v7 = ~(-1 << *(v2 + 32));
  for (i = a2 & v7; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v7)
  {
    sub_197A44A54();
    v9 = _s20ModelManagerServices14UUIDIdentifierV2eeoiySbACyxG_AEtFZ_0();
    sub_197947A40(v6, &qword_1EAF49130, &qword_197A969C0);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_197949B70(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x646564616F6C6E75;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x4D63696D616E7964;
    }

    else
    {
      v4 = 0x646564616F6CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEB0000000065646FLL;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x646564616F6C6E75;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x4D63696D616E7964;
    }

    else
    {
      v2 = 0x646564616F6CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEB0000000065646FLL;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_86(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t InferenceProviderDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_197A879B8();
  if (v2)
  {
    MEMORY[0x19A8EB5D0](1);
    OUTLINED_FUNCTION_59_1();
    sub_197A879B8();
  }

  else
  {
    MEMORY[0x19A8EB5D0](0);
  }

  return sub_197A88328();
}

uint64_t sub_197949D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_197960FB0;

  return ModelXPCSender.createSession(metadata:alreadyLockedInferenceProvider:)();
}

uint64_t sub_197949DD0()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_10(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + v9);
  v15 = *(v0 + v10);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_197960E38;

  return sub_197949F18(v4, v12, v13, v0 + v7, v14, v15, v0 + v11);
}

uint64_t sub_197949F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  type metadata accessor for Session.Metadata(0);
  v7[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19794A034, a5, 0);
}

uint64_t OUTLINED_FUNCTION_96_0(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = *(v2 - 344);
  return result;
}

BOOL OUTLINED_FUNCTION_96_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_96_4(uint64_t a1, uint64_t a2)
{

  return swift_storeEnumTagMultiPayload();
}

unint64_t OUTLINED_FUNCTION_96_6()
{
  v3 = *(v1 - 96);
  *v0 = *(v1 - 112);
  v0[1] = v3;
  *(v1 - 65) = 1;

  return sub_19795F5C4();
}

uint64_t ModelXPCSender.createSession(metadata:alreadyLockedInferenceProvider:)()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v5 = OUTLINED_FUNCTION_250(v3, v4);
  SessionRequest = type metadata accessor for ModelXPCRequest.CreateSessionRequest(v5);
  *(v0 + 40) = SessionRequest;
  OUTLINED_FUNCTION_28(SessionRequest);
  *(v0 + 48) = OUTLINED_FUNCTION_78_0();
  Session = type metadata accessor for ModelXPCRequest.CreateSessionRequest.Response(0);
  OUTLINED_FUNCTION_28(Session);
  *(v0 + 56) = OUTLINED_FUNCTION_78_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v8);
  *(v0 + 64) = OUTLINED_FUNCTION_78_0();
  v9 = type metadata accessor for Session.Metadata(0);
  *(v0 + 72) = v9;
  OUTLINED_FUNCTION_28(v9);
  *(v0 + 80) = OUTLINED_FUNCTION_78_0();
  v10 = *(v2 + 16);
  *(v0 + 88) = *v2;
  *(v0 + 104) = v10;
  *(v0 + 136) = *(v2 + 32);
  v11 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_19794A620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_197A878A8();

    sub_197A878A8();
  }
}

uint64_t sub_19794A664(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    v5 = OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable(v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19794A6A8()
{
  v1 = v0[6].i64[0];
  if (*(v1 + 192))
  {
    v2 = v0[9].i64[0];
    v3 = v0[5].i64[1];
    v4 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
    sub_197A87298();
    OUTLINED_FUNCTION_3_14();
    (*(v5 + 16))(v2, v3 + v4);
    os_unfair_lock_lock((v1 + 200));
    v6 = *(v1 + 208);
    if (*(v6 + 16) && (v7 = sub_19794B040(), (v8 & 1) != 0))
    {
      v9 = *(v6 + 56) + 48 * v7;
      v10 = *v9;
      v0[10].i64[1] = *v9;
      v11 = *(v9 + 8);
      v0[11].i64[0] = v11;
      v12 = *(v9 + 16);
      v0[11].i64[1] = v12;
      v13 = *(v9 + 24);
      v0[12].i64[0] = v13;
      v14 = *(v9 + 32);
      v0[12].i64[1] = v14;
      v15 = *(v9 + 40);
      v0[3].i8[9] = v15;

      OUTLINED_FUNCTION_98_4();
      sub_19794A620(v16, v17, v18, v19);
      os_unfair_lock_unlock((v1 + 200));
      v20.i64[0] = v11;
      v20.i64[1] = v12;
      v21.i64[0] = v13;
      v21.i64[1] = v14;
      if (v10)
      {
        if (v10 != 1)
        {
          v53 = qword_1ED880218;

          if (v53 != -1)
          {
            OUTLINED_FUNCTION_0_21(&qword_1ED880218);
          }

          v54 = sub_197A87608();
          __swift_project_value_buffer(v54, qword_1ED880220);
          sub_197A44A54();
          v55 = sub_197A875E8();
          v56 = sub_197A87D38();
          v57 = os_log_type_enabled(v55, v56);
          v58 = v0[8].i64[1];
          if (v57)
          {
            v59 = v0[8].i64[0];
            v60 = OUTLINED_FUNCTION_56();
            v81 = OUTLINED_FUNCTION_93_0();
            *v60 = 136315138;
            OUTLINED_FUNCTION_140();
            sub_197A44A54();
            _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
            sub_197947A40(v59, &qword_1EAF49130, &qword_197A969C0);
            v61 = OUTLINED_FUNCTION_140();
            sub_197947A40(v61, v62, &qword_197A969C0);
            v63 = OUTLINED_FUNCTION_108_3();
            v66 = sub_197948834(v63, v64, v65);

            *(v60 + 4) = v66;
            _os_log_impl(&dword_197941000, v55, v56, "Waiting for creation of %s", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v81);
            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_37();
          }

          else
          {

            sub_197947A40(v58, &qword_1EAF49130, &qword_197A969C0);
          }

          v67 = swift_task_alloc();
          v0[13].i64[0] = v67;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
          OUTLINED_FUNCTION_134_3();
          *v67 = v68;
          OUTLINED_FUNCTION_49_10();
          OUTLINED_FUNCTION_133_3();
          goto LABEL_12;
        }

        v78 = 0;
        v79 = 0;
        v76 = 0;
        v77 = 0;
        v75 = 0;
      }

      else
      {
        v78 = v12;
        v79 = v11;
        v76 = v14;
        v77 = v13;
        v72 = v21;
        v74 = v20;
        sub_19794A620(v11, v12, v13, v14);
        v21 = v72;
        v20 = v74;
        v75 = v15;
      }
    }

    else
    {
      os_unfair_lock_unlock((v1 + 200));
      v15 = 0;
      v78 = 0;
      v79 = 0;
      v76 = 0;
      v77 = 0;
      v75 = 0;
      v20 = 0uLL;
      v21 = 0uLL;
      v10 = 1;
    }

    v0[16].i64[0] = v10;
    v0[14] = vextq_s8(v21, v21, 8uLL);
    v0[15] = vextq_s8(v20, v20, 8uLL);
    v0[3].i8[10] = v15;
    v73 = v0[9].i64[0];
    v26 = v0[7].i64[1];
    v28 = v0[6].i64[1];
    v27 = v0[7].i64[0];
    v29 = v0[6].i64[0];
    v71 = v0[5].i64[1];
    v72.i64[0] = v28;
    v30 = sub_197A87C08();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v30);
    sub_197A44A54();
    OUTLINED_FUNCTION_58_9();
    v34 = sub_19794A664(v31, v32, v33);
    v35 = (v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = v29;
    *(v37 + 24) = v34;
    sub_19794BE44();
    *(v37 + v35) = v29;
    *(v37 + v36) = v71;
    v38 = v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v38 = v79;
    *(v38 + 8) = v78;
    *(v38 + 16) = v77;
    *(v38 + 24) = v76;
    *(v38 + 32) = v75;
    swift_retain_n();

    OUTLINED_FUNCTION_124_4();
    sub_19794A620(v39, v40, v41, v42);
    OUTLINED_FUNCTION_47_8();
    v43 = sub_1979CC804();
    v0[16].i64[1] = v43;
    os_unfair_lock_lock((v1 + 200));
    v0[1].i64[0] = v43;
    v0[1].i64[1] = v79;
    v0[2].i64[0] = v78;
    v0[2].i64[1] = v77;
    v0[3].i64[0] = v76;
    v0[3].i8[8] = v75;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v1 + 208);
    sub_19794BBD0(v0[1].i64, v73, isUniquelyReferenced_nonNull_native, v45, v46, v47, v48, v49, v70, v71, v72.i64[0], v72.i64[1]);
    *(v1 + 208) = v80;
    os_unfair_lock_unlock((v1 + 200));
    v50 = swift_task_alloc();
    v0[17].i64[0] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    OUTLINED_FUNCTION_134_3();
    *v50 = v51;
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_133_3();
LABEL_12:
    OUTLINED_FUNCTION_138_1();

    return MEMORY[0x1EEE6DA10](v52);
  }

  *(v1 + 192) = 1;
  __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  OUTLINED_FUNCTION_116();
  v0[9].i64[1] = sub_1979DA678();
  OUTLINED_FUNCTION_121_3();
  v0[10].i64[0] = swift_allocObject();
  swift_weakInit();

  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_138_1();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_19794ACC0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_121_3();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_19794ACF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_10(v1);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = (((((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v6 + 8))(v0 + v4);

  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t OUTLINED_FUNCTION_104_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;
  *v2 = v3;
}

void OUTLINED_FUNCTION_113_4()
{
}

uint64_t OUTLINED_FUNCTION_129_0()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 48);

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
}

uint64_t OUTLINED_FUNCTION_99()
{

  return sub_197A878A8();
}

void OUTLINED_FUNCTION_130_0()
{
  *(v0 + 16) = v1;

  JUMPOUT(0x19A8EBBD0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_133_2()
{

  return sub_197A877A8();
}

__n128 OUTLINED_FUNCTION_133_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  v14 = (v10 + *(a1 + 20));
  result = a10;
  *v14 = a10;
  v14[1].n128_u64[0] = v11;
  v14[1].n128_u64[1] = v12;
  v14[2].n128_u8[0] = v13;
  return result;
}

unint64_t sub_19794B040()
{
  OUTLINED_FUNCTION_87_7();
  sub_197A87298();
  OUTLINED_FUNCTION_14_11();
  v2 = sub_19794A664(v0, 255, v1);
  OUTLINED_FUNCTION_145_2(v2, v3);
  sub_197A88358();
  v4 = OUTLINED_FUNCTION_105();

  return sub_1979499EC(v4, v5);
}

uint64_t sub_19794B0C4()
{
  OUTLINED_FUNCTION_71();
  v4 = OUTLINED_FUNCTION_114(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_6();
  v6 = OUTLINED_FUNCTION_22();
  v7(v6);
  return v0;
}

uint64_t sub_19794B118()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_22();
  v4(v3);
  return v0;
}

uint64_t sub_19794B170(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_19794B1D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_22();
  v5(v4);
  return a2;
}

uint64_t sub_19794B22C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_54_4();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t sub_19794B284()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

uint64_t sub_19794B2DC()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_3_14();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_140_1()
{
}

void Session.metadata.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499B0, &qword_197A96BA0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v21);
  sub_197944528();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_19794B284();
    sub_1979548FC(&qword_1ED8816D8, type metadata accessor for ModelManagerError, protocol conformance descriptor for ModelManagerError);
    swift_willThrowTypedImpl();
    swift_allocError();
  }

  sub_19794B284();
  OUTLINED_FUNCTION_93();
}

uint64_t sub_19794B554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_121();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_122();
  a20 = v22;
  if (sub_197A87C68())
  {
    OUTLINED_FUNCTION_183();
    sub_1979557E8();
    v25 = sub_197A875E8();
    sub_197A87D78();
    OUTLINED_FUNCTION_148_0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v22 + 64);
      v28 = OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_93_0();
      OUTLINED_FUNCTION_124_2();
      *v28 = 136315138;
      sub_197944528();
      v29 = _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
      v31 = v30;
      sub_197947900(v27, &qword_1EAF49130);
      OUTLINED_FUNCTION_188();
      v32 = sub_197948834(v29, v31, &a10);

      *(v28 + 4) = v32;
      OUTLINED_FUNCTION_31(&dword_197941000, v33, v34, "Task for create session %s cancelled before sending");
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      OUTLINED_FUNCTION_188();
    }

    type metadata accessor for ModelManagerError(0);
    OUTLINED_FUNCTION_0_14();
    sub_197955F04(v49, v50);
    v51 = OUTLINED_FUNCTION_133_0();
    v53 = OUTLINED_FUNCTION_88(v51, v52);
    OUTLINED_FUNCTION_75_0(v53, v54);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_142();

    return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v35 = *(v22 + 104);
    v36 = *(v22 + 112);
    v38 = *(v22 + 88);
    v37 = *(v22 + 96);
    v40 = *(v22 + 40);
    v39 = *(v22 + 48);
    v41 = *(v22 + 136);
    OUTLINED_FUNCTION_183();
    sub_1979557E8();
    v42 = v39 + *(v40 + 20);
    *v42 = v38;
    *(v42 + 8) = v37;
    *(v42 + 16) = v35;
    *(v42 + 24) = v36;
    *(v42 + 32) = v41;
    sub_19794A620(v38, v37, v35, v36);
    swift_task_alloc();
    OUTLINED_FUNCTION_14();
    *(v22 + 120) = v43;
    *v43 = v44;
    v43[1] = sub_197962758;
    OUTLINED_FUNCTION_142();

    return sub_19795644C(v45, v46);
  }
}

void OUTLINED_FUNCTION_118_0()
{
  *(v1 + 14) = v0;
  *(v1 + 18) = 2112;

  JUMPOUT(0x19A8EBBD0);
}

BOOL OUTLINED_FUNCTION_118_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1)
{

  return sub_197947A40(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_55_2()
{
}

void OUTLINED_FUNCTION_55_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_55_4(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

unint64_t OUTLINED_FUNCTION_55_6()
{
  v3 = *(v0 + 8);
  v4 = *(v0 + 12);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v1 - 96) = *v0;
  *(v1 - 88) = v3;
  *(v1 - 84) = v4;
  *(v1 - 80) = v5;
  *(v1 - 72) = v6;
  *(v1 - 97) = 0;

  return sub_1979C437C();
}

void OUTLINED_FUNCTION_56_2()
{

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_56_4(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return swift_slowAlloc();
}

uint64_t sub_19794BA28(uint64_t a1)
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_19_5();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_8_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_1_7(v2);
  OUTLINED_FUNCTION_112();

  return sub_19794BAB4(v4, v5, v6, v7, v8);
}

uint64_t sub_19794BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return OUTLINED_FUNCTION_2_2();
}

uint64_t sub_19794BAC8()
{
  OUTLINED_FUNCTION_33();
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_75(v1);
  *v2 = v3;
  v2[1] = sub_197963824;
  v4 = OUTLINED_FUNCTION_5(*(v0 + 24));

  return v5(v4);
}

void sub_19794BBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_24_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28_7();
  sub_19794B040();
  OUTLINED_FUNCTION_5_8();
  if (v14)
  {
    __break(1u);
LABEL_11:
    sub_197A88288();
    __break(1u);
    return;
  }

  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1F8, &qword_197A969C8);
  OUTLINED_FUNCTION_29_6();
  if (sub_197A87EB8())
  {
    OUTLINED_FUNCTION_78_6();
    sub_19794B040();
    OUTLINED_FUNCTION_47_5();
    if (!v16)
    {
      goto LABEL_11;
    }
  }

  if (v15)
  {
    OUTLINED_FUNCTION_66();

    sub_197A25E60(v17, v18);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_58_6();
    sub_197944580(v20, v21, v22, v23);
    OUTLINED_FUNCTION_51_7();
    sub_19794BD0C(v24, v25, v26, v27);
    OUTLINED_FUNCTION_66();
  }
}

void sub_19794BD0C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v9);
  sub_19794BDF8(a2, v8 + *(v10 + 72) * a1, &qword_1EAF49130, &qword_197A969C0);
  v11 = (a4[7] + 48 * a1);
  *(v11 + 25) = *(a3 + 25);
  v12 = a3[1];
  *v11 = *a3;
  v11[1] = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
    OUTLINED_FUNCTION_165();
  }
}

uint64_t sub_19794BDF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_182(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return v4;
}

uint64_t sub_19794BE44()
{
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_3_14();
  v3 = OUTLINED_FUNCTION_22();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return sub_19798B42C(sub_19798E47C, v1, v0);
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_197A880E8();
}

uint64_t OUTLINED_FUNCTION_26_8(unint64_t *a1)
{

  return sub_197A7E858(a1, protocol conformance descriptor for <> IPCResult<A, B>);
}

void sub_19794BF9C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_197A87118();
  OUTLINED_FUNCTION_70();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5] + 8) = (a2 - 1);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_70();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[9];
    }

    else
    {
      v10 = sub_197A87298();
      v14 = a4[10];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_19794C0C8()
{
  OUTLINED_FUNCTION_121_4();
  type metadata accessor for Session.Metadata(0);
  OUTLINED_FUNCTION_70();
  if (*(v1 + 84) == v0)
  {
    v2 = OUTLINED_FUNCTION_114_1();

    return __swift_getEnumTagSinglePayload(v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_64_9();
    return OUTLINED_FUNCTION_172_0(v6);
  }
}

void sub_19794C164()
{
  OUTLINED_FUNCTION_17_4();
  type metadata accessor for Session.Metadata(0);
  OUTLINED_FUNCTION_70();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_53_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }
}

uint64_t OUTLINED_FUNCTION_99_2()
{
  v2 = *(v0 + 176);
  v3 = *(v0 + 56);

  return __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
}

uint64_t sub_19794C2CC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_197A87118();
  OUTLINED_FUNCTION_70();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_18_0(*(a1 + a3[5] + 8));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    OUTLINED_FUNCTION_70();
    if (*(v12 + 84) == a2)
    {
      v8 = v11;
      v13 = a3[9];
    }

    else
    {
      v8 = sub_197A87298();
      v13 = a3[10];
    }

    v9 = a1 + v13;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void ModelXPCRequest.CreateSessionRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  v23 = v22;
  type metadata accessor for Session.Metadata(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_6_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A6D8, &qword_197A98520);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v25);
  v26 = OUTLINED_FUNCTION_88_0();
  SessionRequest = type metadata accessor for ModelXPCRequest.CreateSessionRequest(v26);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_113_0(v23, v23[3]);
  sub_197954810();
  OUTLINED_FUNCTION_144_4();
  sub_197A883A8();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    LOBYTE(v33) = 0;
    OUTLINED_FUNCTION_89_6();
    sub_197954374(v29);
    OUTLINED_FUNCTION_137_3();
    sub_197A87FD8();
    sub_197A49444();
    sub_19795F8C8();
    OUTLINED_FUNCTION_137_3();
    sub_197A87F88();
    v30 = OUTLINED_FUNCTION_67_0();
    v31(v30);
    v32 = v21 + *(SessionRequest + 20);
    *v32 = v33;
    *(v32 + 16) = v34;
    *(v32 + 32) = v35;
    sub_197953C7C();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_19795130C(v21, type metadata accessor for ModelXPCRequest.CreateSessionRequest);
  }

  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_93();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Session.requestPrewarm(metadata:)(Swift::OpaquePointer metadata)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v3);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v4);
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = swift_allocObject();
  v9[2]._rawValue = 0;
  v9[3]._rawValue = 0;
  v9[4]._rawValue = v1;
  v9[5]._rawValue = metadata._rawValue;

  sub_197A878A8();
  OUTLINED_FUNCTION_16_4();
  sub_1979CC804();
}

uint64_t sub_19794C77C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_19794C7C4()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_8_0(v3);
  *v4 = v5;
  v4[1] = sub_197960E38;
  v6 = OUTLINED_FUNCTION_81();

  return sub_19794C86C(v6, v7, v8, v2, v1);
}

uint64_t sub_19794C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_19794C88C, 0, 0);
}

uint64_t sub_19794C88C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v10 = (*(v4 + 32) + **(v4 + 32));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_75(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_11_6(v6);

  return v10(v8, v2, v3, v4);
}

uint64_t sub_19794C9B8(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_197960FB0;

  return ModelServiceClient.prewarmSession(session:metadata:)();
}

uint64_t sub_19794CA60()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_10_2();
  v0[21] = swift_initStackObject();
  v0[22] = sub_1979489D4("Client prewarming session", 25, 2);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_197964CDC;
  OUTLINED_FUNCTION_32_1(v0[16]);

  return ModelServiceClient.establishment(of:)();
}

uint64_t ModelServiceClient.prewarmSession(session:metadata:)()
{
  OUTLINED_FUNCTION_18();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v4);
  v1[19] = OUTLINED_FUNCTION_90_4();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void OUTLINED_FUNCTION_42_0()
{

  JUMPOUT(0x19A8EBE00);
}

uint64_t OUTLINED_FUNCTION_44_5@<X0>(void *a1@<X8>)
{
  result = *(v2 - 360);
  *a1 = *(v1 - 256);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_6()
{
}

uint64_t OUTLINED_FUNCTION_44_10(unint64_t *a1)
{

  return sub_197A7E858(a1, protocol conformance descriptor for <> IPCResult<A, B>);
}

void ModelXPCRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_92();
  a19 = v22;
  a20 = v23;
  v239 = v21;
  a10 = v20;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A458, &qword_197A98370);
  OUTLINED_FUNCTION_2();
  v237[1] = v27;
  v237[2] = v26;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30();
  v237[0] = v29;
  v235[1] = type metadata accessor for ModelXPCRequest.StartMonitoringInferences(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6_0();
  v236 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A460, &qword_197A98378);
  OUTLINED_FUNCTION_2();
  v234[2] = v33;
  v235[0] = v32;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_30();
  v234[1] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A468, &qword_197A98380);
  OUTLINED_FUNCTION_2();
  v233[2] = v37;
  v234[0] = v36;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_30();
  v233[0] = v39;
  v233[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A470, &qword_197A98388);
  OUTLINED_FUNCTION_2();
  v232[2] = v40;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_30();
  v232[1] = v42;
  v231[1] = type metadata accessor for ModelXPCRequest.FetchModelInstance(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A478, &qword_197A98390);
  OUTLINED_FUNCTION_2_1(v45, &a16);
  v230[5] = v46;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A480, &qword_197A98398);
  OUTLINED_FUNCTION_2_1(v49, &a13);
  v230[2] = v50;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A488, &qword_197A983A0);
  OUTLINED_FUNCTION_2_1(v53, &a10);
  v229[4] = v54;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A490, &qword_197A983A8);
  OUTLINED_FUNCTION_2_1(v57, v242);
  v229[1] = v58;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A498, &qword_197A983B0);
  OUTLINED_FUNCTION_2_1(v61, &v239);
  v228[3] = v62;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4A0, &qword_197A983B8);
  OUTLINED_FUNCTION_2_1(v65, v238);
  v228[0] = v66;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4A8, &qword_197A983C0);
  OUTLINED_FUNCTION_2_1(v69, v237);
  v227[2] = v70;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4B0, &qword_197A983C8);
  OUTLINED_FUNCTION_2_1(v73, v235);
  v226[4] = v74;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4B8, &qword_197A983D0);
  OUTLINED_FUNCTION_2_1(v77, v234);
  v226[1] = v78;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4C0, &qword_197A983D8);
  OUTLINED_FUNCTION_2_1(v81, v233);
  v225[3] = v82;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4C8, &qword_197A983E0);
  OUTLINED_FUNCTION_2_1(v85, v232);
  v225[0] = v86;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4D0, &qword_197A983E8);
  OUTLINED_FUNCTION_2_1(v89, v231);
  v224[3] = v90;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_30();
  v93 = OUTLINED_FUNCTION_15_5(v92);
  v223[4] = type metadata accessor for ModelXPCRequest.ReleaseRequest(v93);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v95);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4D8, &qword_197A983F0);
  OUTLINED_FUNCTION_2_1(v96, v230);
  v223[2] = v97;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_30();
  v100 = OUTLINED_FUNCTION_15_5(v99);
  v222[33] = type metadata accessor for ModelXPCRequest.AcquireRequest(v100);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4E0, &qword_197A983F8);
  OUTLINED_FUNCTION_2_1(v103, v229);
  v222[31] = v104;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_30();
  v107 = OUTLINED_FUNCTION_15_5(v106);
  v222[28] = type metadata accessor for ModelXPCRequest.CancelSessionRequest(v107);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4E8, &qword_197A98400);
  OUTLINED_FUNCTION_2_1(v110, v228);
  v222[26] = v111;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_30();
  v114 = OUTLINED_FUNCTION_15_5(v113);
  v222[23] = type metadata accessor for ModelXPCRequest.PrewarmSession(v114);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v116);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4F0, &qword_197A98408);
  OUTLINED_FUNCTION_2_1(v117, v227);
  v222[21] = v118;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_30();
  v121 = OUTLINED_FUNCTION_15_5(v120);
  v222[18] = type metadata accessor for ModelXPCRequest.DeleteSessionRequest(v121);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A4F8, &qword_197A98410);
  OUTLINED_FUNCTION_2_1(v124, v226);
  v222[16] = v125;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_30();
  v128 = OUTLINED_FUNCTION_15_5(v127);
  v222[13] = type metadata accessor for ModelXPCRequest.CreateSessionRequest(v128);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A500, &qword_197A98418);
  OUTLINED_FUNCTION_2_1(v131, v225);
  v222[11] = v132;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_30();
  v135 = OUTLINED_FUNCTION_15_5(v134);
  v222[8] = type metadata accessor for ModelXPCRequest.CancelRequest(v135);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v137);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A508, &qword_197A98420);
  OUTLINED_FUNCTION_2_1(v138, v224);
  v222[6] = v139;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_30();
  v142 = OUTLINED_FUNCTION_15_5(v141);
  v222[3] = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(v142);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_34(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A510, &qword_197A98428);
  OUTLINED_FUNCTION_2_1(v145, v223);
  v222[1] = v146;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v147);
  v149 = v222 - v148;
  type metadata accessor for ModelXPCRequest.ExecuteRequest(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_1_0();
  v153 = v152 - v151;
  type metadata accessor for ModelXPCRequest(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_1_0();
  v157 = (v156 - v155);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A518, &qword_197A98430);
  OUTLINED_FUNCTION_2();
  v238[1] = v158;
  v238[2] = v159;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_64_1();
  v161 = *(v25 + 24);
  v162 = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_113_0(v162, v163);
  sub_197951CA4();
  OUTLINED_FUNCTION_48_8();
  sub_197A883D8();
  sub_197953C7C();
  OUTLINED_FUNCTION_91();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_145_3();
      LOBYTE(v240) = 1;
      sub_197A49EC8();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.ExecuteInputStreamRequestCodingKeys, &v240);
      OUTLINED_FUNCTION_93_6();
      sub_197954374(v190);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9();
      OUTLINED_FUNCTION_78_8();
      v191 = OUTLINED_FUNCTION_24_12();
      v192(v191);
      v180 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest;
      goto LABEL_30;
    case 2u:
      OUTLINED_FUNCTION_145_3();
      LOBYTE(v240) = 2;
      sub_197A49E74();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.CancelRequestCodingKeys, &v240);
      OUTLINED_FUNCTION_96_5();
      sub_197954374(v181);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9();
      OUTLINED_FUNCTION_78_8();
      v182 = OUTLINED_FUNCTION_24_12();
      v183(v182);
      v180 = type metadata accessor for ModelXPCRequest.CancelRequest;
      goto LABEL_30;
    case 3u:
      OUTLINED_FUNCTION_145_3();
      LOBYTE(v240) = 3;
      sub_1979512B8();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.CreateSessionCodingKeys, &v240);
      OUTLINED_FUNCTION_95_6();
      sub_197954374(v184);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9();
      OUTLINED_FUNCTION_78_8();
      v185 = OUTLINED_FUNCTION_24_12();
      v186(v185);
      v180 = type metadata accessor for ModelXPCRequest.CreateSessionRequest;
      goto LABEL_30;
    case 4u:
      OUTLINED_FUNCTION_145_3();
      LOBYTE(v240) = 4;
      sub_197966494();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.DeleteSessionCodingKeys, &v240);
      OUTLINED_FUNCTION_99_5();
      sub_197954374(v177);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9();
      OUTLINED_FUNCTION_78_8();
      v178 = OUTLINED_FUNCTION_24_12();
      v179(v178);
      v180 = type metadata accessor for ModelXPCRequest.DeleteSessionRequest;
      goto LABEL_30;
    case 5u:
      OUTLINED_FUNCTION_145_3();
      LOBYTE(v240) = 5;
      sub_197964AD8();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.PrewarmSessionCodingKeys, &v240);
      OUTLINED_FUNCTION_91_7();
      sub_197954374(v199);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9();
      OUTLINED_FUNCTION_78_8();
      v200 = OUTLINED_FUNCTION_24_12();
      v201(v200);
      v180 = type metadata accessor for ModelXPCRequest.PrewarmSession;
      goto LABEL_30;
    case 6u:
      OUTLINED_FUNCTION_145_3();
      LOBYTE(v240) = 6;
      sub_197966C38();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.CancelSessionCodingKeys, &v240);
      OUTLINED_FUNCTION_88_4();
      sub_197954374(v205);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9();
      OUTLINED_FUNCTION_78_8();
      v206 = OUTLINED_FUNCTION_24_12();
      v207(v206);
      v180 = type metadata accessor for ModelXPCRequest.CancelSessionRequest;
      goto LABEL_30;
    case 7u:
      OUTLINED_FUNCTION_145_3();
      LOBYTE(v240) = 7;
      sub_197A49E20();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.AcquireAssertionCodingKeys, &v240);
      OUTLINED_FUNCTION_94_4();
      sub_197954374(v187);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9();
      OUTLINED_FUNCTION_78_8();
      v188 = OUTLINED_FUNCTION_24_12();
      v189(v188);
      v180 = type metadata accessor for ModelXPCRequest.AcquireRequest;
      goto LABEL_30;
    case 8u:
      OUTLINED_FUNCTION_145_3();
      LOBYTE(v240) = 8;
      sub_197A49DCC();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.ReleaseAssertionCodingKeys, &v240);
      OUTLINED_FUNCTION_87_8();
      sub_197954374(v211);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_74_9();
      OUTLINED_FUNCTION_78_8();
      v212 = OUTLINED_FUNCTION_24_12();
      v213(v212);
      v180 = type metadata accessor for ModelXPCRequest.ReleaseRequest;
      goto LABEL_30;
    case 9u:
      LOBYTE(v240) = 9;
      sub_197A49D24();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.FetchAssertionsCodingKeys, &v240);
      sub_197A49D78();
      OUTLINED_FUNCTION_41_8();
      goto LABEL_28;
    case 0xAu:
      v208 = *v157;
      LOBYTE(v240) = 10;
      sub_197A49C7C();
      OUTLINED_FUNCTION_131_3(&type metadata for ModelXPCRequest.RestoreAssertionsCodingKeys, &v240);
      v240 = v208;
      sub_197A49CD0();
      sub_197A880E8();
      goto LABEL_23;
    case 0xBu:
      LOBYTE(v240) = 11;
      sub_197A49BD4();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.FetchAssetsCodingKeys, &v240);
      sub_197A49C28();
      OUTLINED_FUNCTION_41_8();
      goto LABEL_28;
    case 0xCu:
      LOBYTE(v240) = 12;
      sub_197A49B2C();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.FetchDynamicAssetsCodingKeys, &v240);
      sub_197A49B80();
      OUTLINED_FUNCTION_41_8();
      goto LABEL_28;
    case 0xDu:
      v194 = *v157;
      v203 = v157[1];
      LOBYTE(v240) = 13;
      sub_197A49A84();
      v195 = v227[1];
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      v240 = v194;
      v241 = v203;
      sub_197A49AD8();
      OUTLINED_FUNCTION_177_1();
      goto LABEL_19;
    case 0xEu:
      LOBYTE(v240) = 14;
      sub_197A499DC();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.FetchDisabledUseCasesCodingKeys, &v240);
      sub_197A49A30();
      OUTLINED_FUNCTION_41_8();
      goto LABEL_28;
    case 0xFu:
      LOBYTE(v240) = 15;
      sub_197A49934();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.FetchAvailabilityCodingKeys, &v240);
      sub_197A49988();
      OUTLINED_FUNCTION_41_8();
      goto LABEL_28;
    case 0x10u:
      v170 = *v157;
      v169 = v157[1];
      v171 = *(v157 + 16);
      LOBYTE(v240) = 16;
      sub_197A4988C();
      v172 = v229[0];
      sub_197A88058();
      v240 = v170;
      v241 = v169;
      v242[0] = v171;
      sub_197A498E0();
      v173 = v229[2];
      sub_197A880E8();
      OUTLINED_FUNCTION_32();
      v174(v172, v173);
      OUTLINED_FUNCTION_138_2();
      v175 = OUTLINED_FUNCTION_61_3();
      goto LABEL_24;
    case 0x11u:
      v194 = *v157;
      v193 = v157[1];
      LOBYTE(v240) = 17;
      sub_197A497E4();
      v195 = v229[3];
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      v240 = v194;
      v241 = v193;
      sub_197A49838();
      OUTLINED_FUNCTION_177_1();
LABEL_19:
      OUTLINED_FUNCTION_32();
      v204(v195, v194);
      v175 = OUTLINED_FUNCTION_32_8();
      goto LABEL_24;
    case 0x12u:
      LOBYTE(v240) = 18;
      sub_197A4973C();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.ForceAssetVersionSwitchCodingKeys, &v240);
      sub_197A49790();
      OUTLINED_FUNCTION_41_8();
      goto LABEL_28;
    case 0x13u:
      LOBYTE(v240) = 19;
      sub_197A49694();
      OUTLINED_FUNCTION_11_8(&type metadata for ModelXPCRequest.DumpStateCodingKeys, &v240);
      sub_197A496E8();
      OUTLINED_FUNCTION_41_8();
LABEL_28:
      v217 = OUTLINED_FUNCTION_24_12();
      v218(v217);
      goto LABEL_31;
    case 0x14u:
      OUTLINED_FUNCTION_145_3();
      LOBYTE(v240) = 20;
      sub_197A49640();
      OUTLINED_FUNCTION_23_11();
      sub_197A88058();
      OUTLINED_FUNCTION_92_6();
      sub_197954374(v196);
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_78_8();
      v197 = OUTLINED_FUNCTION_32_8();
      v198(v197);
      v180 = type metadata accessor for ModelXPCRequest.FetchModelInstance;
      goto LABEL_30;
    case 0x15u:
      v202 = *v157;
      LOBYTE(v240) = 21;
      sub_197A49598();
      OUTLINED_FUNCTION_131_3(&type metadata for ModelXPCRequest.SetAssetsHaveUpdatedCodingKeys, &v240);
      v240 = v202;
      sub_197A495EC();
      sub_197A880E8();
LABEL_23:
      v209 = OUTLINED_FUNCTION_61_3();
      v210(v209);
      OUTLINED_FUNCTION_138_2();
      v175 = OUTLINED_FUNCTION_102_3();
LABEL_24:
      v176(v175);

      goto LABEL_33;
    case 0x16u:
      v214 = *v157;
      LOBYTE(v240) = 22;
      sub_197A494F0();
      OUTLINED_FUNCTION_131_3(&type metadata for ModelXPCRequest.IgnoreAssetUpdatesCodingKeys, &v240);
      LOBYTE(v240) = v214;
      sub_197A49544();
      sub_197A880E8();
      v215 = OUTLINED_FUNCTION_170_0();
      v216(v215);
      OUTLINED_FUNCTION_138_2();
      v167 = OUTLINED_FUNCTION_102_3();
      break;
    case 0x17u:
      v161 = v236;
      sub_197A49444();
      LOBYTE(v240) = 23;
      sub_197A4949C();
      OUTLINED_FUNCTION_23_11();
      sub_197A88058();
      OUTLINED_FUNCTION_84_6();
      sub_197954374(v219);
      OUTLINED_FUNCTION_40_0();
      sub_197A880E8();
      v220 = OUTLINED_FUNCTION_32_8();
      v221(v220);
      v180 = type metadata accessor for ModelXPCRequest.StartMonitoringInferences;
LABEL_30:
      sub_19795130C(v161, v180);
LABEL_31:
      OUTLINED_FUNCTION_138_2();
      v167 = OUTLINED_FUNCTION_61();
      break;
    default:
      OUTLINED_FUNCTION_102_3();
      sub_197A49444();
      LOBYTE(v240) = 0;
      sub_197A49F1C();
      OUTLINED_FUNCTION_41_2();
      sub_197A88058();
      OUTLINED_FUNCTION_101_3();
      sub_197954374(v164);
      v165 = v222[2];
      sub_197A880E8();
      OUTLINED_FUNCTION_32();
      v166(v149, v165);
      sub_19795130C(v153, type metadata accessor for ModelXPCRequest.ExecuteRequest);
      v167 = OUTLINED_FUNCTION_32_8();
      break;
  }

  v168(v167);
LABEL_33:
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

uint64_t OUTLINED_FUNCTION_61_5(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return sub_197945EF8((v1 - 328), a1 + 32);
}

void OUTLINED_FUNCTION_61_6()
{
  *(v0 + 216) = 0;
  *(v0 + 224) = &unk_197A967A8;
  *(v0 + 232) = 0;
}

uint64_t TaskCancellableMessage.encode(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  OUTLINED_FUNCTION_34_0();
  v21 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_34_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_197A883B8();
  (*(v12 + 16))(v16, v2, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    OUTLINED_FUNCTION_2_7();
    sub_197A881F8();
  }

  else
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v19 = *(v16 + *(TupleTypeMetadata3 + 64));
    (*(v21 + 32))(v10, v16 + *(TupleTypeMetadata3 + 48), v5);
    __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    OUTLINED_FUNCTION_2_7();
    sub_197A881F8();
    if (!v3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      sub_197A881E8();
      if (v19)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
        sub_197A881D8();
      }
    }

    (*(v21 + 8))(v10, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t OUTLINED_FUNCTION_152_1()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_152_2(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_167(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A883A8();
}

uint64_t sub_19794ECC8()
{
  OUTLINED_FUNCTION_9();
  v1[6] = v2;
  v1[7] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A200, &qword_197A969D0);
  v1[8] = v3;
  OUTLINED_FUNCTION_28(v3);
  v1[9] = OUTLINED_FUNCTION_78_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499F0, &qword_197A92358);
  v1[10] = v4;
  OUTLINED_FUNCTION_28(v4);
  v1[11] = OUTLINED_FUNCTION_78_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v5);
  v1[12] = OUTLINED_FUNCTION_78_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1D0, &qword_197A96818);
  OUTLINED_FUNCTION_28(v6);
  v1[13] = OUTLINED_FUNCTION_78_0();
  v7 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_197A87258();
}

uint64_t OUTLINED_FUNCTION_83_3(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

void ModelXPCRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_92();
  v356 = v10;
  v12 = v11;
  v349[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5B0, &qword_197A98438);
  OUTLINED_FUNCTION_2_1(v14, &v356);
  v353 = v15;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v349[0] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5B8, &qword_197A98440);
  OUTLINED_FUNCTION_2_1(v18, &v355);
  v352 = v19;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  v348[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5C0, &qword_197A98448);
  OUTLINED_FUNCTION_2_1(v22, &v354);
  v335[1] = v23;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_30();
  v348[0] = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5C8, &qword_197A98450);
  OUTLINED_FUNCTION_2_1(v26, &v352);
  v334[1] = v27;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30();
  v347[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5D0, &qword_197A98458);
  OUTLINED_FUNCTION_2_1(v30, &v350);
  v333[1] = v31;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_30();
  v347[0] = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5D8, &qword_197A98460);
  OUTLINED_FUNCTION_2_1(v34, v349);
  v332[1] = v35;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_30();
  v346[1] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5E0, &qword_197A98468);
  OUTLINED_FUNCTION_2_1(v38, v348);
  v331[1] = v39;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_30();
  v346[0] = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5E8, &qword_197A98470);
  OUTLINED_FUNCTION_2_1(v42, v347);
  v330[9] = v43;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_30();
  v345[1] = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5F0, &qword_197A98478);
  OUTLINED_FUNCTION_2_1(v46, v346);
  v330[7] = v47;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_30();
  v345[0] = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A5F8, &qword_197A98480);
  OUTLINED_FUNCTION_2_1(v50, v345);
  v330[5] = v51;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_30();
  v344[1] = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A600, &qword_197A98488);
  OUTLINED_FUNCTION_2_1(v54, v344);
  v330[3] = v55;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A608, &qword_197A98490);
  OUTLINED_FUNCTION_2_1(v58, &v343);
  v330[1] = v59;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A610, &qword_197A98498);
  OUTLINED_FUNCTION_2_1(v62, &v342);
  v329 = v63;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A618, &qword_197A984A0);
  OUTLINED_FUNCTION_2_1(v66, &v341);
  v328[1] = v67;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A620, &qword_197A984A8);
  OUTLINED_FUNCTION_2_1(v70, &v340);
  v327 = v71;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A628, &qword_197A984B0);
  OUTLINED_FUNCTION_2_1(v74, &v339);
  v326 = v75;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A630, &qword_197A984B8);
  OUTLINED_FUNCTION_2_1(v78, &v338);
  v324[1] = v79;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A638, &qword_197A984C0);
  OUTLINED_FUNCTION_2_1(v82, &v337);
  v323 = v83;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A640, &qword_197A984C8);
  OUTLINED_FUNCTION_2_1(v86, &v336);
  v322 = v87;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A648, &qword_197A984D0);
  OUTLINED_FUNCTION_2_1(v90, v335);
  v321 = v91;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A650, &qword_197A984D8);
  OUTLINED_FUNCTION_2_1(v94, v334);
  v320 = v95;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A658, &qword_197A984E0);
  OUTLINED_FUNCTION_2_1(v98, v333);
  v319 = v99;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v101);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A660, &qword_197A984E8);
  OUTLINED_FUNCTION_2_1(v102, v332);
  v318 = v103;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A668, &qword_197A984F0);
  OUTLINED_FUNCTION_2_1(v106, v331);
  v317 = v107;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_34(v109);
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A670, &unk_197A984F8);
  OUTLINED_FUNCTION_2();
  v351 = v110;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_39_9(v112, v304);
  v350 = type metadata accessor for ModelXPCRequest(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v120);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v129);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_13_0();
  v133 = MEMORY[0x1EEE9AC00](v132);
  v135 = &v304 - v134;
  v136 = MEMORY[0x1EEE9AC00](v133);
  v138 = &v304 - v137;
  v139 = MEMORY[0x1EEE9AC00](v136);
  v141 = &v304 - v140;
  v142 = MEMORY[0x1EEE9AC00](v139);
  v144 = &v304 - v143;
  v145 = MEMORY[0x1EEE9AC00](v142);
  v147 = &v304 - v146;
  MEMORY[0x1EEE9AC00](v145);
  v149 = &v304 - v148;
  v150 = v12[3];
  v355 = v12;
  OUTLINED_FUNCTION_113_0(v12, v150);
  sub_197951CA4();
  v151 = v356;
  sub_197A883A8();
  if (v151)
  {
    goto LABEL_10;
  }

  v306 = v147;
  v307 = v144;
  v308 = v141;
  v309 = v138;
  v310 = v135;
  v152 = v353;
  v356 = v149;
  v153 = v354;
  v154 = a10;
  v155 = sub_197A88028();
  sub_197953BF0(v155, 0);
  if (v157 == v158 >> 1)
  {
    v159 = v351;
LABEL_9:
    v171 = v350;
    v172 = sub_197A87E88();
    swift_allocError();
    v174 = v173;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48DD0, &qword_197A89820);
    *v174 = v171;
    sub_197A87F38();
    sub_197A87E78();
    (*(*(v172 - 8) + 104))(v174, *MEMORY[0x1E69E6AF8], v172);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v159 + 8))(v154, v153);
LABEL_10:
    v175 = v355;
    goto LABEL_11;
  }

  v305 = 0;
  if (v157 >= (v158 >> 1))
  {
    __break(1u);
    JUMPOUT(0x197951258);
  }

  v160 = *(v156 + v157);
  sub_197953BF8(v157 + 1);
  v162 = v161;
  v164 = v163;
  swift_unknownObjectRelease();
  if (v162 != v164 >> 1)
  {
    v159 = v351;
    v153 = v354;
    v154 = a10;
    goto LABEL_9;
  }

  v165 = v152;
  v166 = v349[0];
  v167 = v305;
  switch(v160)
  {
    case 1:
      LOBYTE(v357) = 1;
      sub_197A49EC8();
      OUTLINED_FUNCTION_20_11(&type metadata for ModelXPCRequest.ExecuteInputStreamRequestCodingKeys, &v357);
      type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest(0);
      OUTLINED_FUNCTION_93_6();
      sub_197954374(v186);
      v187 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_39(v187, v188);
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v251 = OUTLINED_FUNCTION_8_4();
      v252(v251);
      v253 = OUTLINED_FUNCTION_4_11();
      v254(v253);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 2:
      LOBYTE(v357) = 2;
      sub_197A49E74();
      OUTLINED_FUNCTION_20_11(&type metadata for ModelXPCRequest.CancelRequestCodingKeys, &v357);
      type metadata accessor for ModelXPCRequest.CancelRequest(0);
      OUTLINED_FUNCTION_96_5();
      sub_197954374(v179);
      v180 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_39(v180, v181);
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v231 = OUTLINED_FUNCTION_8_4();
      v232(v231);
      v233 = OUTLINED_FUNCTION_4_11();
      v234(v233);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 3:
      LOBYTE(v357) = 3;
      sub_1979512B8();
      v182 = v354;
      sub_197A87F28();
      if (v167)
      {
        (*(v351 + 8))(a10, v182);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      type metadata accessor for ModelXPCRequest.CreateSessionRequest(0);
      OUTLINED_FUNCTION_95_6();
      sub_197954374(v201);
      OUTLINED_FUNCTION_80_5();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_32();
      v239 = OUTLINED_FUNCTION_170_0();
      v240(v239);
      v241 = OUTLINED_FUNCTION_4_11();
      v242(v241);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_12();
LABEL_38:
      sub_197A49444();
      v301 = v355;
      OUTLINED_FUNCTION_5_12();
      sub_197A49444();
      v175 = v301;
      break;
    case 4:
      LOBYTE(v357) = 4;
      sub_197966494();
      OUTLINED_FUNCTION_20_11(&type metadata for ModelXPCRequest.DeleteSessionCodingKeys, &v357);
      type metadata accessor for ModelXPCRequest.DeleteSessionRequest(0);
      OUTLINED_FUNCTION_99_5();
      sub_197954374(v176);
      v177 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_39(v177, v178);
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v219 = OUTLINED_FUNCTION_8_4();
      v220(v219);
      v221 = OUTLINED_FUNCTION_4_11();
      v222(v221);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 5:
      LOBYTE(v357) = 5;
      sub_197964AD8();
      OUTLINED_FUNCTION_20_11(&type metadata for ModelXPCRequest.PrewarmSessionCodingKeys, &v357);
      type metadata accessor for ModelXPCRequest.PrewarmSession(0);
      OUTLINED_FUNCTION_91_7();
      sub_197954374(v192);
      v193 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_39(v193, v194);
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v265 = OUTLINED_FUNCTION_8_4();
      v266(v265);
      v267 = OUTLINED_FUNCTION_4_11();
      v268(v267);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 6:
      LOBYTE(v357) = 6;
      sub_197966C38();
      OUTLINED_FUNCTION_20_11(&type metadata for ModelXPCRequest.CancelSessionCodingKeys, &v357);
      type metadata accessor for ModelXPCRequest.CancelSessionRequest(0);
      OUTLINED_FUNCTION_88_4();
      sub_197954374(v195);
      v196 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_39(v196, v197);
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v277 = OUTLINED_FUNCTION_8_4();
      v278(v277);
      v279 = OUTLINED_FUNCTION_4_11();
      v280(v279);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 7:
      LOBYTE(v357) = 7;
      sub_197A49E20();
      OUTLINED_FUNCTION_20_11(&type metadata for ModelXPCRequest.AcquireAssertionCodingKeys, &v357);
      type metadata accessor for ModelXPCRequest.AcquireRequest(0);
      OUTLINED_FUNCTION_94_4();
      sub_197954374(v183);
      v184 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_39(v184, v185);
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v243 = OUTLINED_FUNCTION_8_4();
      v244(v243);
      v245 = OUTLINED_FUNCTION_4_11();
      v246(v245);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 8:
      LOBYTE(v357) = 8;
      sub_197A49DCC();
      OUTLINED_FUNCTION_20_11(&type metadata for ModelXPCRequest.ReleaseAssertionCodingKeys, &v357);
      type metadata accessor for ModelXPCRequest.ReleaseRequest(0);
      OUTLINED_FUNCTION_87_8();
      sub_197954374(v198);
      v199 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_39(v199, v200);
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v289 = OUTLINED_FUNCTION_8_4();
      v290(v289);
      v291 = OUTLINED_FUNCTION_4_11();
      v292(v291);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 9:
      LOBYTE(v357) = 9;
      sub_197A49D24();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.FetchAssertionsCodingKeys, &v357);
      sub_197A51C14();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v227 = OUTLINED_FUNCTION_12_10();
      v228(v227);
      v229 = OUTLINED_FUNCTION_4_11();
      v230(v229);
      OUTLINED_FUNCTION_50_10(v324);
      goto LABEL_37;
    case 10:
      LOBYTE(v357) = 10;
      sub_197A49C7C();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.RestoreAssertionsCodingKeys, &v357);
      sub_197A51BC0();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v285 = OUTLINED_FUNCTION_12_10();
      v286(v285);
      v287 = OUTLINED_FUNCTION_4_11();
      v288(v287);
      *v311 = v357;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 11:
      LOBYTE(v357) = 11;
      sub_197A49BD4();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.FetchAssetsCodingKeys, &v357);
      sub_197A51B6C();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v215 = OUTLINED_FUNCTION_12_10();
      v216(v215);
      v217 = OUTLINED_FUNCTION_4_11();
      v218(v217);
      OUTLINED_FUNCTION_50_10(&v325);
      goto LABEL_37;
    case 12:
      LOBYTE(v357) = 12;
      sub_197A49B2C();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.FetchDynamicAssetsCodingKeys, &v357);
      sub_197A51B18();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v223 = OUTLINED_FUNCTION_12_10();
      v224(v223);
      v225 = OUTLINED_FUNCTION_4_11();
      v226(v225);
      OUTLINED_FUNCTION_50_10(&v326);
      goto LABEL_37;
    case 13:
      LOBYTE(v357) = 13;
      sub_197A49A84();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.FetchPolicyCodingKeys, &v357);
      sub_197A51AC4();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v273 = OUTLINED_FUNCTION_12_10();
      v274(v273);
      v275 = OUTLINED_FUNCTION_4_11();
      v276(v275);
      *v312 = v357;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 14:
      LOBYTE(v357) = 14;
      sub_197A499DC();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.FetchDisabledUseCasesCodingKeys, &v357);
      sub_197A51A70();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v211 = OUTLINED_FUNCTION_12_10();
      v212(v211);
      v213 = OUTLINED_FUNCTION_4_11();
      v214(v213);
      OUTLINED_FUNCTION_50_10(&v327);
      goto LABEL_37;
    case 15:
      LOBYTE(v357) = 15;
      sub_197A49934();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.FetchAvailabilityCodingKeys, &v357);
      sub_197A51A1C();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v235 = OUTLINED_FUNCTION_12_10();
      v236(v235);
      v237 = OUTLINED_FUNCTION_4_11();
      v238(v237);
      OUTLINED_FUNCTION_50_10(v328);
      goto LABEL_37;
    case 16:
      LOBYTE(v357) = 16;
      sub_197A4988C();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.LoadAssetBundleCodingKeys, &v357);
      sub_197A519C8();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v204 = OUTLINED_FUNCTION_12_10();
      v205(v204);
      v206 = OUTLINED_FUNCTION_4_11();
      v207(v206);
      v208 = *(&v357 + 1);
      v209 = v358;
      v210 = v313;
      *v313 = v357;
      v210[1] = v208;
      *(v210 + 16) = v209;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 17:
      LOBYTE(v357) = 17;
      sub_197A497E4();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.HoldAssetBundleCodingKeys, &v357);
      sub_197A51974();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v255 = OUTLINED_FUNCTION_12_10();
      v256(v255);
      v257 = OUTLINED_FUNCTION_4_11();
      v258(v257);
      v259 = *(&v357 + 1);
      v260 = v314;
      *v314 = v357;
      v260[1] = v259;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 18:
      LOBYTE(v357) = 18;
      sub_197A4973C();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.ForceAssetVersionSwitchCodingKeys, &v357);
      sub_197A51920();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v281 = OUTLINED_FUNCTION_12_10();
      v282(v281);
      v283 = OUTLINED_FUNCTION_4_11();
      v284(v283);
      OUTLINED_FUNCTION_50_10(&v329);
      goto LABEL_37;
    case 19:
      LOBYTE(v357) = 19;
      sub_197A49694();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.DumpStateCodingKeys, &v357);
      sub_197A518CC();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v297 = OUTLINED_FUNCTION_12_10();
      v298(v297);
      v299 = OUTLINED_FUNCTION_4_11();
      v300(v299);
      OUTLINED_FUNCTION_50_10(v330);
      goto LABEL_37;
    case 20:
      LOBYTE(v357) = 20;
      sub_197A49640();
      OUTLINED_FUNCTION_22_6(&type metadata for ModelXPCRequest.FetchModelInstanceCodingKeys, &v357);
      type metadata accessor for ModelXPCRequest.FetchModelInstance(0);
      OUTLINED_FUNCTION_92_6();
      sub_197954374(v189);
      v190 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_39(v190, v191);
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v261 = OUTLINED_FUNCTION_8_4();
      v262(v261);
      v263 = OUTLINED_FUNCTION_4_11();
      v264(v263);
      OUTLINED_FUNCTION_67_2();
      goto LABEL_37;
    case 21:
      LOBYTE(v357) = 21;
      sub_197A49598();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.SetAssetsHaveUpdatedCodingKeys, &v357);
      sub_197A51878();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v269 = OUTLINED_FUNCTION_12_10();
      v270(v269);
      v271 = OUTLINED_FUNCTION_4_11();
      v272(v271);
      *v315 = v357;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 22:
      LOBYTE(v357) = 22;
      sub_197A494F0();
      OUTLINED_FUNCTION_15_9(&type metadata for ModelXPCRequest.IgnoreAssetUpdatesCodingKeys, &v357);
      sub_197A51824();
      OUTLINED_FUNCTION_23_11();
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v293 = OUTLINED_FUNCTION_79_4();
      v294(v293);
      v295 = OUTLINED_FUNCTION_4_11();
      v296(v295);
      *v316 = v357;
      OUTLINED_FUNCTION_79_9();
      goto LABEL_37;
    case 23:
      LOBYTE(v357) = 23;
      sub_197A4949C();
      OUTLINED_FUNCTION_22_6(&type metadata for ModelXPCRequest.StartMonitoringInferencesCodingKeys, &v357);
      type metadata accessor for ModelXPCRequest.StartMonitoringInferences(0);
      OUTLINED_FUNCTION_84_6();
      sub_197954374(v202);
      v203 = v337;
      sub_197A87FD8();
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      (*(v165 + 8))(v166, v203);
      v302 = OUTLINED_FUNCTION_4_11();
      v303(v302);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_12();
      goto LABEL_38;
    default:
      LOBYTE(v357) = 0;
      sub_197A49F1C();
      OUTLINED_FUNCTION_20_11(&type metadata for ModelXPCRequest.ExecuteRequestCodingKeys, &v357);
      type metadata accessor for ModelXPCRequest.ExecuteRequest(0);
      OUTLINED_FUNCTION_101_3();
      sub_197954374(v168);
      v169 = OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_39(v169, v170);
      OUTLINED_FUNCTION_66_9();
      swift_unknownObjectRelease();
      v247 = OUTLINED_FUNCTION_8_4();
      v248(v247);
      v249 = OUTLINED_FUNCTION_4_11();
      v250(v249);
      OUTLINED_FUNCTION_67_2();
LABEL_37:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_12();
      goto LABEL_38;
  }

LABEL_11:
  __swift_destroy_boxed_opaque_existential_1Tm(v175);
  OUTLINED_FUNCTION_93();
}

unint64_t sub_1979512B8()
{
  result = qword_1ED87FCA0;
  if (!qword_1ED87FCA0)
  {
    result = swift_getWitnessTable(byte_197A9DFBC, &type metadata for ModelXPCRequest.CreateSessionCodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FCA0);
  }

  return result;
}

uint64_t sub_19795130C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_197951364()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_197960E38;
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_142();

  return sub_1979568DC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_197951430()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_1979514C0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ModelManagerError(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for ModelXPCRequest(0);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49C08, &qword_197A92C98);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for IPCSessionWrapper(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979516B8, v2, 0);
}

uint64_t sub_1979516B8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_99_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_88_2(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_30_7(v1);

  return sub_19794ECC8();
}

void ModelXPCRequest.CreateSessionRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_72_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A6D0, &qword_197A98518);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_13_1();
  v15 = sub_197954810();
  OUTLINED_FUNCTION_125(&type metadata for ModelXPCRequest.CreateSessionRequest.CodingKeys, v16, v15);
  type metadata accessor for Session.Metadata(0);
  OUTLINED_FUNCTION_89_6();
  sub_197954374(v17);
  OUTLINED_FUNCTION_53_11();
  sub_197A880E8();
  if (!v12)
  {
    v18 = (v13 + *(type metadata accessor for ModelXPCRequest.CreateSessionRequest(0) + 20));
    v21 = *v18;
    v22 = v18[1];
    v23 = v18[2];
    v24 = v18[3];
    sub_19794A620(*v18, v22, v23, v24);
    sub_1979518CC();
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_58();
    sub_197A88098();
    sub_197955620(v21, v22, v23, v24);
  }

  v19 = OUTLINED_FUNCTION_79_4();
  v20(v19);
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_168();
}

unint64_t sub_1979518CC()
{
  result = qword_1ED87FC78;
  if (!qword_1ED87FC78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderDescriptor, &type metadata for InferenceProviderDescriptor, v0, v1);
    atomic_store(result, &qword_1ED87FC78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelXPCRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1979519ECLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelXPCRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_197951A9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1979928B8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)()
{
  OUTLINED_FUNCTION_9();
  v1[13] = v16;
  v1[14] = v0;
  v1[11] = v2;
  v1[12] = v3;
  v1[9] = v4;
  v1[10] = v5;
  v1[7] = v6;
  v1[8] = v7;
  v1[5] = v8;
  v1[6] = v9;
  v10 = type metadata accessor for TaskCancellableMessage(0, v7, v2, v3);
  v1[15] = v10;
  v1[16] = *(v10 - 8);
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t a1)
{

  return swift_getWitnessTable(protocol conformance descriptor for GreedyBufferingAsyncSequence<A, B>, a1);
}

void OUTLINED_FUNCTION_32_9(uint64_t a1)
{

  sub_197A25908();
}

unint64_t sub_197951CA4()
{
  result = qword_1ED880DC0[0];
  if (!qword_1ED880DC0[0])
  {
    result = swift_getWitnessTable(aM_21, &type metadata for ModelXPCRequest.CodingKeys, v0, v1);
    atomic_store(result, qword_1ED880DC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_37_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37_3()
{

  return sub_197A87C08();
}

void OUTLINED_FUNCTION_37_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t TaskCancellingXPCPeerHandler.handleIncomingRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[3] = type metadata accessor for XPCReceivedMessageWrapper(0);
  v7[4] = &protocol witness table for XPCReceivedMessageWrapper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  v5 = sub_197A87818();
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  sub_19795255C(v7, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t TaskCancellableMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a5;
  sub_197A87DB8();
  OUTLINED_FUNCTION_34_0();
  v48 = v10;
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v44 - v11;
  OUTLINED_FUNCTION_34_0();
  v52 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v53 = a3;
  v17 = type metadata accessor for TaskCancellableMessage(0, a2, a3, a4);
  OUTLINED_FUNCTION_34_0();
  v50 = v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v44 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = v57;
  sub_197A88388();
  if (!v25)
  {
    v46 = v24;
    v47 = v22;
    v57 = v16;
    OUTLINED_FUNCTION_3_4();
    v26 = sub_197A881C8();
    if (v24)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
    }

    else
    {
      v45 = v26;
      OUTLINED_FUNCTION_3_4();
      v27 = v54;
      sub_197A88188();
      if (__swift_getEnumTagSinglePayload(v27, 1, a2) == 1)
      {
        (*(v48 + 8))(v27, v49);
        v29 = v46;
        *v46 = v45;
        v30 = v17;
        swift_storeEnumTagMultiPayload();
        v32 = v50;
        v31 = v51;
      }

      else
      {
        v33 = v52;
        v34 = v57;
        (*(v52 + 32))(v57, v27, a2);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v36 = *(TupleTypeMetadata3 + 48);
        v37 = v47;
        *v47 = v45;
        (*(v33 + 16))(v37 + v36, v34, a2);
        __swift_project_boxed_opaque_existential_1(v55, v56);
        v38 = sub_197A88198();
        v39 = 0;
        if ((v40 & 1) == 0 && v38 == 3)
        {
          __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
          v39 = sub_197A881A8();
        }

        v41 = *(TupleTypeMetadata3 + 64);
        (*(v52 + 8))(v57, a2);
        v42 = v39 & 1;
        v43 = v47;
        *(v47 + v41) = v42;
        v30 = v17;
        swift_storeEnumTagMultiPayload();
        v32 = v50;
        v29 = v46;
        (*(v50 + 32))(v46, v43, v30);
        v31 = v51;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      (*(v32 + 32))(v31, v29, v30);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_197952474(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_54_0();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t type metadata accessor for XPCReceivedMessageWrapper(uint64_t a1)
{
  result = qword_1ED87E3C0;
  if (!qword_1ED87E3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

double sub_19795255C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  OUTLINED_FUNCTION_14_7();
  v5 = *(v4 + 88);
  v130 = v2;
  v7 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  v132 = v7;
  *&v133 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v125 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_32_4();
  v118 = v12;
  v117 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v124 = &v115 - v15;
  v16 = OUTLINED_FUNCTION_39_4();
  v17 = OUTLINED_FUNCTION_39_4();
  v126 = AssociatedTypeWitness;
  v18 = type metadata accessor for TaskCancellableMessage(0, AssociatedTypeWitness, v16, v17);
  OUTLINED_FUNCTION_2();
  v127 = v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v119 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v115 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v24);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v25);
  v120 = &v115 - v26;
  swift_checkMetadataState();
  OUTLINED_FUNCTION_2();
  v122 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_32_4();
  v116 = v29;
  v115 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v121 = &v115 - v32;
  v33 = *(AssociatedConformanceWitness + 8);
  v34 = *(AssociatedConformanceWitness + 16);
  v123 = v35;
  v36 = type metadata accessor for TaskCancellableMessage(0, v35, v33, v34);
  OUTLINED_FUNCTION_2();
  v129 = v37;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = (&v115 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v115 - v42;
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  LOBYTE(v45) = (*(v45 + 24))(v44, v45);
  v47 = a1[3];
  v46 = a1[4];
  v128 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v47);
  v48 = *(v46 + 8);
  if (v45)
  {
    v49 = OUTLINED_FUNCTION_11_3();
    WitnessTable = swift_getWitnessTable(v49, v36);
    v48(v36, v36, WitnessTable, v47, v46);
    v51 = v129;
    (*(v129 + 16))(v41, v43, v36);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v53 = *v41;
    if (EnumCaseMultiPayload == 1)
    {
      v54 = sub_197A87C08();
      OUTLINED_FUNCTION_31_5(v54, v55, v56, v54);
      OUTLINED_FUNCTION_33_6();
      v57 = swift_allocObject();
      v57[2] = 0;
      v57[3] = 0;
      v57[4] = v130;
      v57[5] = v53;

      OUTLINED_FUNCTION_16_4();
      sub_19795CB2C();

      (*(v51 + 8))(v43, v36);
    }

    else
    {
      v131 = v43;
      v68 = v123;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v70 = *(TupleTypeMetadata3 + 48);
      LODWORD(v127) = *(v41 + *(TupleTypeMetadata3 + 64));
      v125 = *(v122 + 32);
      v126 = v122 + 32;
      (v125)(v121, v41 + v70, v68);
      if (qword_1ED87E900 != -1)
      {
        OUTLINED_FUNCTION_0_13();
        swift_once();
      }

      v71 = sub_197A87608();
      __swift_project_value_buffer(v71, qword_1ED87DF90);
      v72 = sub_197A875E8();
      sub_197A87D48();
      v73 = OUTLINED_FUNCTION_18_5();
      if (os_log_type_enabled(v73, v74))
      {
        OUTLINED_FUNCTION_10_9();
        v75 = swift_slowAlloc();
        *v75 = 134217984;
        *(v75 + 4) = v53;
        OUTLINED_FUNCTION_16_5();
        _os_log_impl(v76, v77, v78, v79, v80, v81);
        OUTLINED_FUNCTION_8();
        MEMORY[0x19A8EBE00]();
      }

      v82 = v128;
      v83 = v128[3];
      v84 = v128[4];
      __swift_project_boxed_opaque_existential_1(v128, v83);
      (*(v84 + 40))(v83, v84);
      sub_197961900(v82, &v135);
      v85 = v121;
      v86 = v122;
      v87 = v116;
      v88 = v123;
      (*(v122 + 16))(v116, v121, v123);
      v89 = (*(v86 + 80) + 72) & ~*(v86 + 80);
      v90 = (v115 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = swift_allocObject();
      v92 = v133;
      *(v91 + 16) = v132;
      *(v91 + 24) = v92;
      sub_197945EF8(&v135, v91 + 32);
      (v125)(v91 + v89, v87, v88);
      *(v91 + v90) = v130;
      *(v91 + ((v90 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;

      sub_197961964(v53, v127, &unk_197A92628, v91);

      (*(v86 + 8))(v85, v88);
      (*(v129 + 8))(v131, v36);
    }
  }

  else
  {
    v58 = OUTLINED_FUNCTION_11_3();
    v59 = swift_getWitnessTable(v58, v18);
    v60 = v131;
    v48(v18, v18, v59, v47, v46);
    v61 = v18;
    v62 = v127;
    v63 = v119;
    (*(v127 + 16))(v119, v60, v61);
    v64 = swift_getEnumCaseMultiPayload();
    v129 = *v63;
    if (v64 == 1)
    {
      v65 = sub_197A87C08();
      __swift_storeEnumTagSinglePayload(v120, 1, 1, v65);
      OUTLINED_FUNCTION_33_6();
      v66 = swift_allocObject();
      v66[2] = 0;
      v66[3] = 0;
      v67 = v129;
      v66[4] = v130;
      v66[5] = v67;

      OUTLINED_FUNCTION_16_4();
      sub_19795CB2C();

      (*(v62 + 8))(v60, v61);
    }

    else
    {
      v93 = v126;
      v94 = swift_getTupleTypeMetadata3();
      v95 = *(v94 + 48);
      LODWORD(v123) = *(v63 + *(v94 + 64));
      v121 = *(v125 + 32);
      v122 = v125 + 32;
      (v121)(v124, v63 + v95, v93);
      if (qword_1ED87E900 != -1)
      {
        OUTLINED_FUNCTION_0_13();
        swift_once();
      }

      v96 = sub_197A87608();
      __swift_project_value_buffer(v96, qword_1ED87DF90);
      v97 = sub_197A875E8();
      v98 = sub_197A87D48();
      if (os_log_type_enabled(v97, v98))
      {
        OUTLINED_FUNCTION_10_9();
        v99 = swift_slowAlloc();
        *v99 = 134217984;
        *(v99 + 4) = v129;
        _os_log_impl(&dword_197941000, v97, v98, "Received message %llu.", v99, 0xCu);
        OUTLINED_FUNCTION_8();
        MEMORY[0x19A8EBE00]();
      }

      v100 = v128;
      v101 = v128[3];
      v102 = v128[4];
      __swift_project_boxed_opaque_existential_1(v128, v101);
      (*(v102 + 40))(v101, v102);
      sub_197961900(v100, &v135);
      v103 = v124;
      v104 = v125;
      v105 = v118;
      v106 = v126;
      (*(v125 + 16))(v118, v124, v126);
      v107 = (*(v104 + 80) + 72) & ~*(v104 + 80);
      v108 = (v117 + v107 + 7) & 0xFFFFFFFFFFFFFFF8;
      v109 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
      v110 = swift_allocObject();
      v111 = v133;
      *(v110 + 16) = v132;
      *(v110 + 24) = v111;
      sub_197945EF8(&v135, v110 + 32);
      (v121)(v110 + v107, v105, v106);
      *(v110 + v108) = v130;
      v112 = v129;
      *(v110 + v109) = v129;

      sub_197961964(v112, v123, &unk_197A92608, v110);

      (*(v104 + 8))(v103, v106);
      (*(v62 + 8))(v131, v61);
    }
  }

  v113 = v134;
  *(v134 + 32) = 0;
  result = 0.0;
  *v113 = 0u;
  v113[1] = 0u;
  return result;
}

uint64_t sub_1979531B4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_28_4();
  v2(v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979532CC()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v1 = OUTLINED_FUNCTION_28_4();
  v2(v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_19795339C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1979533C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1979533C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5265747563657865 && a2 == 0xEE00747365757165;
  if (v4 || (sub_197A88218() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x8000000197AA44B0 == a2;
    if (v6 || (sub_197A88218() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65526C65636E6163 && a2 == 0xED00007473657571;
      if (v7 || (sub_197A88218() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6553657461657263 && a2 == 0xED00006E6F697373;
        if (v8 || (sub_197A88218() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65536574656C6564 && a2 == 0xED00006E6F697373;
          if (v9 || (sub_197A88218() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x536D726177657270 && a2 == 0xEE006E6F69737365;
            if (v10 || (sub_197A88218() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65536C65636E6163 && a2 == 0xED00006E6F697373;
              if (v11 || (sub_197A88218() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000197AA44D0 == a2;
                if (v12 || (sub_197A88218() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x8000000197AA44F0 == a2;
                  if (v13 || (sub_197A88218() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7373416863746566 && a2 == 0xEF736E6F69747265;
                    if (v14 || (sub_197A88218() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x8000000197AA4510 == a2;
                      if (v15 || (sub_197A88218() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7373416863746566 && a2 == 0xEB00000000737465;
                        if (v16 || (sub_197A88218() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x8000000197AA4530 == a2;
                          if (v17 || (sub_197A88218() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6C6F506863746566 && a2 == 0xEB00000000796369;
                            if (v18 || (sub_197A88218() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000015 && 0x8000000197AA4550 == a2;
                              if (v19 || (sub_197A88218() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000011 && 0x8000000197AA4570 == a2;
                                if (v20 || (sub_197A88218() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6573734164616F6CLL && a2 == 0xEF656C646E754274;
                                  if (v21 || (sub_197A88218() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x65737341646C6F68 && a2 == 0xEF656C646E754274;
                                    if (v22 || (sub_197A88218() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000017 && 0x8000000197AA4590 == a2;
                                      if (v23 || (sub_197A88218() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x74617453706D7564 && a2 == 0xE900000000000065;
                                        if (v24 || (sub_197A88218() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000012 && 0x8000000197AA45B0 == a2;
                                          if (v25 || (sub_197A88218() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000014 && 0x8000000197AA45D0 == a2;
                                            if (v26 || (sub_197A88218() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000012 && 0x8000000197AA45F0 == a2;
                                              if (v27 || (sub_197A88218() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else if (a1 == 0xD000000000000019 && 0x8000000197AA4610 == a2)
                                              {

                                                return 23;
                                              }

                                              else
                                              {
                                                v29 = sub_197A88218();

                                                if (v29)
                                                {
                                                  return 23;
                                                }

                                                else
                                                {
                                                  return 24;
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
}

uint64_t OUTLINED_FUNCTION_50_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A883D8();
}

uint64_t OUTLINED_FUNCTION_50_11()
{

  return sub_197A87FD8();
}

uint64_t sub_197953C00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_197953C7C()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

_BYTE *sub_197953CD4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x197953DA0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceProviderDescriptor.Instance.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_197953E70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197953EB8(char a1)
{
  result = 0x5265747563657865;
  switch(a1)
  {
    case 1:
    case 23:
      return 0xD000000000000019;
    case 2:
      return 0x65526C65636E6163;
    case 3:
      v4 = 1634038371;
      goto LABEL_9;
    case 4:
      v4 = 1701602660;
LABEL_9:
      v5 = v4 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
    case 5:
      return 0x536D726177657270;
    case 6:
      v5 = 0x6C65636E6163;
      return v5 & 0xFFFFFFFFFFFFLL | 0x6553000000000000;
    case 7:
    case 8:
      return 0xD000000000000010;
    case 9:
    case 11:
      return 0x7373416863746566;
    case 10:
    case 15:
      return 0xD000000000000011;
    case 12:
      return 0xD000000000000012;
    case 13:
      return 0x6C6F506863746566;
    case 14:
      return 0xD000000000000015;
    case 16:
      v3 = 1684107116;
      goto LABEL_11;
    case 17:
      v3 = 1684828008;
LABEL_11:
      result = v3 | 0x6573734100000000;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 19:
      result = 0x74617453706D7564;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_131_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_131_2()
{
  *(v1 - 112) = v0;

  return type metadata accessor for ModelServiceClient();
}

uint64_t OUTLINED_FUNCTION_131_3(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

unint64_t sub_197954254(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v6 = v5;
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable(v6, v7);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_197954298(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49130, &qword_197A969C0);
    v3 = OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable(v3);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1979542E4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49130, &qword_197A969C0);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197954334(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_165_1(0, v3);
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable(v5, v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_197954374(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Assertion.LiveDaemonInterface(unsigned int *a1, int a2)
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

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2)
{

  return sub_197A88118();
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{
  *(v3 + 8) = v1;
  v5 = *(v2 + 136);
  *(v4 + 16) = a1;
  return v5;
}

uint64_t OUTLINED_FUNCTION_2_13(uint64_t a1)
{

  return sub_197A87FD8();
}

unint64_t OUTLINED_FUNCTION_2_15(uint64_t a1)
{

  return sub_197954334(a1);
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_19(unint64_t *a1)
{
  v2 = MEMORY[0x1E69695E0];

  return sub_197954654(a1, v2);
}

unint64_t OUTLINED_FUNCTION_2_22@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_197948834(0xD00000000000001BLL, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t sub_197954654(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_197A87298();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197954698()
{
  result = qword_1ED87FF00;
  if (!qword_1ED87FF00)
  {
    result = swift_getWitnessTable(byte_197A8D0E0, &type metadata for Version.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FF00);
  }

  return result;
}

unint64_t sub_1979546EC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_137_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49030, &qword_197A96B90);
    OUTLINED_FUNCTION_15_1();
    sub_19796AA70(v4);
    v5 = OUTLINED_FUNCTION_119();
    result = swift_getWitnessTable(v5);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_197954774(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49030, &qword_197A96B90);
    v10 = sub_1979548FC(a2, type metadata accessor for CustomAssetConfiguration, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197954810()
{
  result = qword_1ED87FD78;
  if (!qword_1ED87FD78)
  {
    result = swift_getWitnessTable(byte_197A9DE2C, &type metadata for ModelXPCRequest.CreateSessionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FD78);
  }

  return result;
}

uint64_t sub_19795486C(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

unint64_t sub_1979548A8()
{
  result = qword_1ED87FC58;
  if (!qword_1ED87FC58)
  {
    result = swift_getWitnessTable(byte_197A9720C, &type metadata for Session.Metadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_1ED87FC58);
  }

  return result;
}

uint64_t sub_1979548FC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Session.Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x197954A10);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Session.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_197954AC8(char a1)
{
  result = 0x6E75427465737361;
  switch(a1)
  {
    case 1:
      result = 0x4965736143657375;
      break;
    case 2:
      result = 0x666C616865426E6FLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 25705;
      break;
    case 6:
      result = 0x536E6F6973736573;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_150()
{

  return swift_slowAlloc();
}

uint64_t sub_197954C9C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_44_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197954DB0()
{
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_24_6();
  sub_197947900(v0, &qword_1EAF499A8);
  v4 = OUTLINED_FUNCTION_21_5();
  v5(v4);
  OUTLINED_FUNCTION_6_7();
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_100_0();
  swift_storeEnumTagMultiPayload();
  v6 = swift_task_alloc();
  OUTLINED_FUNCTION_181(v6);
  OUTLINED_FUNCTION_5_7();
  sub_197955F04(v7, v3);
  OUTLINED_FUNCTION_10_10(&qword_1ED880268);
  sub_197956470();
  OUTLINED_FUNCTION_57_2();
  *v2 = v8;
  v2[1] = sub_197962E18;
  OUTLINED_FUNCTION_8_7(v9, *(v1 + 144));
  OUTLINED_FUNCTION_169_0();

  return IPCSession.sendWithTaskCancellationWithReply<A, B>(_:)();
}

uint64_t OUTLINED_FUNCTION_117_0(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t Session.Metadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A250, &qword_197A96B88);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1979548A8();
  OUTLINED_FUNCTION_39_0(&type metadata for Session.Metadata.CodingKeys, v9, v8);
  sub_197A87118();
  OUTLINED_FUNCTION_18_9();
  sub_1979548FC(v10, v11, MEMORY[0x1E6968FB8]);
  OUTLINED_FUNCTION_48_0();
  sub_197A880E8();
  if (!v1)
  {
    type metadata accessor for Session.Metadata(0);
    OUTLINED_FUNCTION_55();
    sub_197A880B8();
    OUTLINED_FUNCTION_55();
    sub_197A880F8();
    OUTLINED_FUNCTION_55();
    sub_197A880D8();
    OUTLINED_FUNCTION_55();
    sub_197A880B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
    sub_1979542E4(&qword_1ED87FC88, protocol conformance descriptor for UUIDIdentifier<A>);
    OUTLINED_FUNCTION_48_0();
    sub_197A880E8();
    sub_197A87298();
    OUTLINED_FUNCTION_3_11();
    sub_1979548FC(v12, v13, MEMORY[0x1E69695B0]);
    OUTLINED_FUNCTION_48_0();
    sub_197A880E8();
    sub_1979552D0();
    OUTLINED_FUNCTION_55();
    sub_197A880E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49030, &qword_197A96B90);
    sub_197954774(&qword_1ED87FB40, &qword_1ED87FB60, protocol conformance descriptor for CustomAssetConfiguration, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_48_0();
    sub_197A88098();
  }

  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1979552D0()
{
  result = qword_1ED87FC10;
  if (!qword_1ED87FC10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Version, &type metadata for Version, v0, v1);
    atomic_store(result, &qword_1ED87FC10);
  }

  return result;
}

uint64_t Version.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49140, &qword_197A8CEB0);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v15 = v1[1];
  v14 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197954698();
  sub_197A883D8();
  v18 = 0;
  OUTLINED_FUNCTION_2_4(v10, &v18);
  if (!v2)
  {
    v11 = v14;
    v17 = 1;
    OUTLINED_FUNCTION_2_4(v15, &v17);
    v16 = 2;
    OUTLINED_FUNCTION_2_4(v11, &v16);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t OUTLINED_FUNCTION_128_3(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_54()
{
}

void OUTLINED_FUNCTION_54_2(_DWORD *a1@<X8>)
{
  v2 = *(v1 - 408);
  *a1 = *(v1 - 404);
  a1[1] = v2;
  a1[2] = *(v1 - 412);
}

uint64_t OUTLINED_FUNCTION_54_3(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_storeEnumTagMultiPayload();
}

void sub_197955620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t OUTLINED_FUNCTION_86(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A88218();
}

uint64_t OUTLINED_FUNCTION_86_1()
{

  return sub_197947C44(v0 - 128, v0 - 168);
}

void OUTLINED_FUNCTION_98_2()
{
  *(v0 + 16) = v1;

  JUMPOUT(0x19A8EBBD0);
}

uint64_t sub_1979557E8()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

uint64_t sub_197955840()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[13];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult;
  OUTLINED_FUNCTION_95(v2 + OBJC_IVAR____TtC20ModelManagerServices16IPCCachedSession_cachedSessionResult, (v0 + 2));
  sub_197944580(v2 + v3, v1, &qword_1EAF4A1D0, &qword_197A96818);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF4A1C8, qword_197A967F8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = v0[13];
  if (EnumTagSinglePayload == 1)
  {
    v7 = &qword_1EAF4A1D0;
    v8 = &qword_197A96818;
  }

  else
  {
    OUTLINED_FUNCTION_63();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_8_8();
      sub_19794B22C(v6, v23);

      OUTLINED_FUNCTION_15();
      goto LABEL_16;
    }

    v7 = &qword_1EAF4A1C8;
    v8 = qword_197A967F8;
  }

  sub_197947A40(v6, v7, v8);
  v9 = v0[7];
  v10 = *(v9 + 136);
  if (v10 || (v11 = v0[12], sub_197A87C08(), OUTLINED_FUNCTION_41(), __swift_storeEnumTagSinglePayload(v12, v13, v14, v15), v16 = sub_197A25358(&qword_1ED880378, 255, type metadata accessor for IPCCachedSession, protocol conformance descriptor for IPCCachedSession), v17 = swift_allocObject(), v17[2] = v9, v17[3] = v16, v17[4] = v9, swift_retain_n(), *(v9 + 136) = sub_1979CC048(0, 0, v11, &dword_197A969E8, v17), , (v10 = *(v9 + 136)) != 0))
  {
    v0[14] = v10;

    v18 = swift_task_alloc();
    v0[15] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    v0[16] = v19;
    *v18 = v0;
    v18[1] = sub_197A2237C;
    v20 = v0[9];
    v21 = v0[10];
    v22 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA20](v20, v10, v21, v19, v22);
  }

  type metadata accessor for IPCSessionWrapper(0);
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_197947A40(v0[11], &qword_1EAF499F0, &qword_197A92358);
  if (qword_1ED87FC08 != -1)
  {
    OUTLINED_FUNCTION_7_7(&qword_1ED87FC08);
  }

  v29 = sub_197A87608();
  OUTLINED_FUNCTION_66_5(v29, qword_1ED87FB48);
  v30 = sub_197A875E8();
  v31 = sub_197A87D68();
  if (OUTLINED_FUNCTION_65(v31))
  {
    v32 = OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_137(v32);
    OUTLINED_FUNCTION_53();
    _os_log_impl(v33, v34, v35, v36, v37, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v38 = type metadata accessor for ModelManagerError(0);
  OUTLINED_FUNCTION_4_8();
  v41 = sub_197A25358(v39, 255, v40, protocol conformance descriptor for ModelManagerError);
  OUTLINED_FUNCTION_88(v38, v41);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  OUTLINED_FUNCTION_13();
LABEL_16:

  return v24();
}

uint64_t sub_197955C38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t OUTLINED_FUNCTION_22_2()
{
}

uint64_t OUTLINED_FUNCTION_115_0()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_22_3(uint64_t a1)
{

  return sub_19796AB4C(a1);
}

uint64_t OUTLINED_FUNCTION_22_6(uint64_t a1, uint64_t a2)
{

  return sub_197A87F28();
}

unint64_t OUTLINED_FUNCTION_22_8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_197948834(a1, a2, va);
}

uint64_t OUTLINED_FUNCTION_84()
{

  return sub_197A87FA8();
}

void OUTLINED_FUNCTION_84_1(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  *(a4 - 256) = a3;
  *(v4 - 384) = a2;
  *(v4 - 392) = a1;
}

uint64_t OUTLINED_FUNCTION_84_3(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_182(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_84_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_197A87F28();
}

uint64_t sub_197955EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197955F04(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    v4 = OUTLINED_FUNCTION_133_0();
    result = swift_getWitnessTable(v4);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_176_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197A881B8();
}

uint64_t OUTLINED_FUNCTION_176_1(uint64_t a1, uint64_t a2)
{

  return __swift_getEnumTagSinglePayload(a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_42_4(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return sub_197945EF8((v1 - 328), a1 + 32);
}

unint64_t OUTLINED_FUNCTION_42_5(uint64_t a1)
{

  return sub_19796A788(a1);
}

uint64_t OUTLINED_FUNCTION_42_8()
{
  *(v1 + 4) = v3;
  *(v1 + 12) = 1024;

  return sub_197969A00(v2, v0);
}

uint64_t OUTLINED_FUNCTION_4_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return sub_197956214(v5, v6);
}

unint64_t OUTLINED_FUNCTION_4_4(uint64_t a1)
{

  return sub_197954254(a1);
}

uint64_t OUTLINED_FUNCTION_4_5(unint64_t *a1)
{

  return sub_197955EBC(a1, v1, protocol conformance descriptor for InferenceProviderXPCRequest);
}

uint64_t OUTLINED_FUNCTION_4_7()
{
}

uint64_t OUTLINED_FUNCTION_4_9(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_12@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  return sub_197A878A8();
}

uint64_t sub_197956214(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_197956244()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v19 = v0[12];
  v20 = v0[17];
  v4 = v0[9];
  v5 = v0[10];
  v18 = v5;
  v6 = v0[7];
  v7 = v0[8];
  static TaskCancellableMessage.wrapMessage(_:)(v0[6], v7, v3, v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF4A2C8, &unk_197A974C0);
  inited = swift_initStackObject();
  v0[18] = inited;
  *(inited + 20) = 0;
  *(inited + 16) = 0;
  v9 = swift_task_alloc();
  v0[19] = v9;
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v4;
  v9[5] = v5;
  v9[6] = v3;
  v9[7] = v19;
  v9[8] = v2;
  v9[9] = inited;
  v10 = v2;
  v9[10] = v20;
  v9[11] = v1;
  v11 = v1;
  v12 = swift_task_alloc();
  v0[20] = v12;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v4;
  v12[5] = v18;
  v12[6] = v3;
  v12[7] = v19;
  v12[8] = v10;
  v12[9] = inited;
  v12[10] = v11;
  v12[11] = v20;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[21] = v13;
  *v13 = v14;
  v13[1] = sub_19795E9A8;
  v15 = v0[9];
  v16 = v0[5];

  return MEMORY[0x1EEE6DE18](v16, &unk_197A981D8, v9, sub_197A454E4, v12, 0, 0, v15);
}

uint64_t OUTLINED_FUNCTION_178()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_178_1()
{

  return sub_197A878A8();
}

uint64_t OUTLINED_FUNCTION_178_2()
{

  return sub_19796DD70(v0 + 16);
}

uint64_t sub_19795644C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_197951430, 0, 0);
}

unint64_t sub_197956470()
{
  result = qword_1ED87F960;
  if (!qword_1ED87F960)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF49C08, &qword_197A92C98);
    v4[0] = sub_197955F04(&qword_1ED87FD40, type metadata accessor for ModelXPCRequest.CreateSessionRequest.Response);
    v4[1] = sub_197955F04(&qword_1ED87FD48, type metadata accessor for ModelXPCRequest.CreateSessionRequest.Response);
    v4[2] = sub_197955F04(&qword_1ED8813C8, type metadata accessor for ModelManagerError);
    v4[3] = sub_197955F04(&qword_1ED8813D0, type metadata accessor for ModelManagerError);
    result = swift_getWitnessTable(protocol conformance descriptor for <> IPCResult<A, B>, v3, v4);
    atomic_store(result, &qword_1ED87F960);
  }

  return result;
}

uint64_t UUIDIdentifier.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_197A883C8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_197A87298();
  sub_197954654(&qword_1ED881010, MEMORY[0x1E69695B0]);
  sub_197A88258();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t OUTLINED_FUNCTION_89_1()
{

  return sub_19794B170(v2, v3 + v0, v1);
}

uint64_t OUTLINED_FUNCTION_89_5(uint64_t a1, uint64_t a2)
{

  return sub_197A88058();
}

uint64_t static TaskCancellableMessage.wrapMessage(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v11 = *(TupleTypeMetadata3 + 48);
  v12 = *(TupleTypeMetadata3 + 64);
  if (qword_1ED880280 != -1)
  {
    swift_once();
  }

  v13 = off_1ED880288;
  os_unfair_lock_lock(off_1ED880288 + 6);
  v14 = *(v13 + 2);
  *(v13 + 2) = v14 + 1;
  os_unfair_lock_unlock(v13 + 6);
  *a5 = v14;
  (*(*(a2 - 8) + 16))(&a5[v11], a1, a2);
  a5[v12] = sub_197A87C68() & 1;
  type metadata accessor for TaskCancellableMessage(0, a2, a3, a4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1979568DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_19795691C, 0, 0);
}

uint64_t sub_19795691C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  v6 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = v1;
  *(v3 + 72) = v6;
  *(v3 + 88) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 112) = v7;
  *v7 = v8;
  v7[1] = sub_19795E88C;
  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DE38]();
}

void sub_197956A64(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 5);
  sub_197957074(&a2[4]);
  os_unfair_lock_unlock(a2 + 5);
}

uint64_t sub_197956B2C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = a8;
  v62 = a5;
  v63 = a3;
  v53 = a1;
  v54 = type metadata accessor for ModelManagerError(0);
  MEMORY[0x1EEE9AC00](v54);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v59 = a7;
  v58 = sub_197A87B98();
  v16 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v52 - v17;
  v68 = a6;
  v65 = a9;
  v67 = a10;
  v18 = type metadata accessor for TaskCancellableMessage(0, a6, a9, a10);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v52 - v20;
  if (qword_1ED880278 != -1)
  {
    swift_once();
  }

  v56 = a11;
  v22 = sub_197A87608();
  __swift_project_value_buffer(v22, qword_1ED880470);
  v23 = *(v19 + 16);
  v64 = a2;
  v23(v21, a2, v18);
  v24 = sub_197A875E8();
  v25 = sub_197A87D48();
  v26 = os_log_type_enabled(v24, v25);
  v55 = v18;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v52 = a4;
    v28 = v27;
    *v27 = 134217984;
    v29 = sub_1979BA440(v18);
    (*(v19 + 8))(v21, v18);
    *(v28 + 1) = v29;
    _os_log_impl(&dword_197941000, v24, v25, "Sending message %llu.", v28, 0xCu);
    v30 = v28;
    a4 = v52;
    MEMORY[0x19A8EBE00](v30, -1, -1);
  }

  else
  {
    (*(v19 + 8))(v21, v18);
  }

  v32 = v57;
  v31 = v58;
  (*(v16 + 16))(v57, a4, v58);
  v33 = (*(v16 + 80) + 72) & ~*(v16 + 80);
  v34 = swift_allocObject();
  v35 = v62;
  v36 = v68;
  *(v34 + 2) = v62;
  *(v34 + 3) = v36;
  v37 = v59;
  v38 = v65;
  v39 = v66;
  *(v34 + 4) = v59;
  *(v34 + 5) = v39;
  v40 = v67;
  *(v34 + 6) = v38;
  *(v34 + 7) = v40;
  v41 = v56;
  *(v34 + 8) = v56;
  (*(v16 + 32))(&v34[v33], v32, v31);
  v42 = *(v39 + 40);
  v43 = v55;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TaskCancellableMessage<A>, v55);
  v45 = v41;
  v46 = v60;
  v47 = v61;
  v42(v64, sub_19795E3E0, v34, v43, v37, WitnessTable, v45, v61, v35, v39);
  if (v46)
  {

    sub_19795E388();
    swift_allocError();
    return sub_197A45AC0(v47, v48);
  }

  else
  {
    v50 = v67;
    v51 = v68;

    *v53 = 1;
    result = sub_197A87C68();
    if (result)
    {
      return sub_197A45150(v64, v35, v51, v66, v65, v50);
    }
  }

  return result;
}

uint64_t sub_197956FC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF48B18, &qword_197A89600);
  v1 = sub_197A87B98();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 72) & ~*(*(v1 - 8) + 80)), v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

void sub_1979570B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a8;
  v15 = type metadata accessor for ModelManagerError(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v21;
  _s3XPC10XPCSessionC20ModelManagerServicesE4send_12replyHandleryx_ys6ResultOyq_AD0cD5ErrorOGYbctAJYKSERzSeR_r0_lF(a1, a2, a3, a4, a5, a6, a7, v17);
  if (v18)
  {
    sub_197A45AC0(v17, v20);
  }
}

void _s3XPC10XPCSessionC20ModelManagerServicesE4send_12replyHandleryx_ys6ResultOyq_AD0cD5ErrorOGYbctAJYKSERzSeR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v35 = a8;
  v14 = sub_197A87768();
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v31 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v32 = &v30 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a2;
  v21[7] = a3;

  v22 = v36;
  sub_197A87678();
  if (v22)
  {
    v37 = v22;
    MEMORY[0x19A8EBBD0](v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48B18, &qword_197A89600);
    v23 = v34;
    if (swift_dynamicCast())
    {

      v25 = v32;
      v24 = v33;
      (*(v33 + 32))(v32, v20, v23);
      (*(v24 + 16))(v31, v25, v23);
      v26 = sub_197A87988();
      v27 = v35;
      *v35 = v26;
      v27[1] = v28;
      type metadata accessor for ModelManagerError(0);
      swift_storeEnumTagMultiPayload();
      sub_19795E388();
      swift_willThrowTypedImpl();

      (*(v24 + 8))(v25, v23);
      v29 = v37;
    }

    else
    {

      MEMORY[0x19A8EBBD0](v22);
      ModelManagerError.init(wrapping:)(v22, v35);
      type metadata accessor for ModelManagerError(0);
      sub_19795E388();
      swift_willThrowTypedImpl();

      v29 = v22;
    }
  }

  else
  {
  }
}

uint64_t sub_197957488()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979575B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t InferenceProviderAssetDescriptor.version.getter()
{
  type metadata accessor for InferenceProviderAssetDescriptor(0);
  OUTLINED_FUNCTION_99();
  return OUTLINED_FUNCTION_22();
}

uint64_t LoadState.description.getter()
{
  v1 = 0x4D63696D616E7964;
  if (*v0 != 1)
  {
    v1 = 0x646564616F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646564616F6C6E75;
  }
}

_BYTE *storeEnumTagSinglePayload for RequestPriority(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1979577A0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1979577EC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v6 = 1801675106;
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_132();
      OUTLINED_FUNCTION_131();
      break;
    case 3:
      v6 = 1701998438;
LABEL_5:
      v5 = v6 | 0x756F726700000000;
      v3 = 0xEA0000000000646ELL;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v8 = 1801675106;
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_130();
      OUTLINED_FUNCTION_66_1();
      break;
    case 3:
      v8 = 1701998438;
LABEL_10:
      v2 = v8 | 0x756F726700000000;
      v7 = 0xEA0000000000646ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_86(v5, a2, v2);
  }

  return v10 & 1;
}

void static AssetCost.+ infix(_:_:)(void *a1@<X8>, void *a2@<X0>, void *a3@<X1>)
{
  if (__CFADD__(*a2, *a3))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_14(a1);
  }
}

Swift::Void __swiftcall Session.cancel()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v0);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_57_5();
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_58_7(v6);
  OUTLINED_FUNCTION_16_4();
  sub_1979CC804();
}

uint64_t sub_197957A08()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  *v3 = v4;
  v3[1] = sub_197960FB0;
  v5 = OUTLINED_FUNCTION_81();

  return sub_197957BA8(v5, v6, v7, v1);
}

uint64_t sub_197957AA8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_6_10(*(v0 + 16));
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_19796E2B4;
  v2 = OUTLINED_FUNCTION_5(*(v0 + 16));

  return v3(v2);
}

uint64_t sub_197957BC8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_197960FB0;

  return ModelServiceClient.cancelSessionRequest(session:)();
}

uint64_t ModelServiceClient.cancelSessionRequest(session:)()
{
  OUTLINED_FUNCTION_18();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_28(v3);
  v1[15] = OUTLINED_FUNCTION_90_4();
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_49_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197957D28()
{
  OUTLINED_FUNCTION_80();
  type metadata accessor for _OSActivity();
  v0[17] = swift_initStackObject();
  v0[18] = sub_1979489D4("Client cancelling session", 25, 2);
  if (qword_1ED880218 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ED880218);
  }

  v1 = v0[13];
  v2 = sub_197A87608();
  v0[19] = OUTLINED_FUNCTION_66_5(v2, qword_1ED880220);

  v3 = sub_197A875E8();
  v4 = sub_197A87D78();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = v0[13];
    OUTLINED_FUNCTION_56();
    v16 = OUTLINED_FUNCTION_41_0();
    *v1 = 136315138;
    v7 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
    sub_197A87298();
    OUTLINED_FUNCTION_3_14();
    (*(v8 + 16))(v5, v6 + v7);
    _s20ModelManagerServices14UUIDIdentifierV10uuidStringSSvg_0();
    sub_197947A40(v5, &qword_1EAF49130, &qword_197A969C0);
    v9 = OUTLINED_FUNCTION_90();
    sub_197948834(v9, v10, v11);
    OUTLINED_FUNCTION_77_0();
    *(v1 + 4) = v5;
    OUTLINED_FUNCTION_31(&dword_197941000, v12, v13, "Sending cancel session for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_29();
  }

  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_19795814C;
  OUTLINED_FUNCTION_32_1(v0[13]);

  return ModelServiceClient.establishment(of:)();
}

uint64_t sub_197957F54(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_197A87298();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ModelManagerError(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for ModelXPCRequest(0);
  v3[16] = swift_task_alloc();
  v3[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49BE8, &qword_197A92C68);
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for IPCSessionWrapper(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF499A8, &qword_197A92B00);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1979666C0, v2, 0);
}

uint64_t sub_19795814C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_24();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  OUTLINED_FUNCTION_46_0();
  v5 = *(v4 + 112);
  if (v0)
  {
    v6 = sub_197A3F588;
  }

  else
  {
    v6 = sub_197958294;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_197958294()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[15];
  v2 = v0[13];
  OUTLINED_FUNCTION_6_11(v0[14]);
  v3 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  sub_197A87298();
  OUTLINED_FUNCTION_3_14();
  (*(v4 + 16))(v1, v2 + v3);
  OUTLINED_FUNCTION_23();
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_19796C728;
  v6 = OUTLINED_FUNCTION_5(v0[15]);

  return v7(v6);
}

uint64_t ModelXPCSender.cancelSession(id:)()
{
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_87_2(v1);
  v3 = type metadata accessor for ModelXPCRequest.CancelSessionRequest(v2);
  OUTLINED_FUNCTION_28(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_78_0();
  v4 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_197958488()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_197960FB0;

  return ModelXPCSender.cancelSession(id:)();
}

uint64_t sub_197958520()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_98_1();
  sub_197944528();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_139(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_177_0(v1);

  return sub_1979588D4(v3, v4);
}

uint64_t OUTLINED_FUNCTION_172_0@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_172_1()
{

  return sub_197A878A8();
}

void sub_1979585F0()
{
  OUTLINED_FUNCTION_67();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  OUTLINED_FUNCTION_28(v1);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC20ModelManagerServices7Session_uuid;
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v10 + 16))(v8, v0 + v9);
  sub_197A87C08();
  OUTLINED_FUNCTION_41();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  sub_197947C44(v0 + 16, v18);
  sub_197944528();
  v15 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_197945EF8(v18, v16 + 32);
  sub_19795EE70(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  OUTLINED_FUNCTION_16_4();
  sub_19795CB2C();

  sub_197947A40(v8, &qword_1EAF49130, &qword_197A969C0);
  OUTLINED_FUNCTION_66();
}

uint64_t sub_1979587F4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49130, &qword_197A969C0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(v0 + v2);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1979588D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1979588F8, 0, 0);
}

uint64_t sub_1979588F8()
{
  OUTLINED_FUNCTION_9();
  v0 = OUTLINED_FUNCTION_19();
  v1 = OUTLINED_FUNCTION_89_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_6(v1);

  return v4(v3);
}

uint64_t sub_197958988(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x614364616F6C6E75;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEC00000064656863;
  }

  if (a2)
  {
    v5 = 0x614364616F6C6E75;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (a2)
  {
    v6 = 0xEC00000064656863;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_86(v3, a2, v5);
  }

  return v8 & 1;
}

void InferenceProviderPrewarmInformation.init(bundleIdentifier:requestorAuditToken:sessionUUID:useCaseIdentifier:onBehalfOfPid:metadata:customAssetConfigurations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_95_0();
  *v25 = v23;
  *(v25 + 8) = v24;
  v27 = v26[1];
  *(v25 + 16) = *v26;
  *(v25 + 32) = v27;
  v28 = *(type metadata accessor for InferenceProviderPrewarmInformation(0) + 24);
  sub_197A87298();
  OUTLINED_FUNCTION_6();
  (*(v29 + 32))(v22 + v28, v21);
  OUTLINED_FUNCTION_82_1();
  *(v22 + v30) = a21;
  OUTLINED_FUNCTION_66();
}

uint64_t OUTLINED_FUNCTION_90_1(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEDC6A10](a1, a2, a2, v2, v2);
}

uint64_t OUTLINED_FUNCTION_90_2()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 1024;

  return sub_19796F6D0(v3, v0);
}

uint64_t OUTLINED_FUNCTION_90_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_93_2()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_93_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[3] = a1;
  v4[4] = a2;
  *v4 = v8;
  v4[5] = v7;
  v4[6] = v6;
  v4[7] = v5;
  v4[8] = v3;
  v4[9] = v2;
  v4[10] = 0;
  return v8;
}

uint64_t OUTLINED_FUNCTION_93_5()
{
  *(v1 - 96) = v0;

  return sub_197A873D8();
}

uint64_t OUTLINED_FUNCTION_93_7()
{
  v3 = *v0;
  *(v1 - 160) = v0[1];
  *(v1 - 144) = v3;

  return sub_197A878A8();
}

unint64_t sub_197958CA8()
{
  result = qword_1ED87E1E0;
  if (!qword_1ED87E1E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InferenceProviderXPCRequest.WireCode, &type metadata for InferenceProviderXPCRequest.WireCode, v0, v1);
    atomic_store(result, &qword_1ED87E1E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestPriority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_197958DA4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_54_4();
  v4(v3);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  return a2;
}

uint64_t sub_197958DFC()
{
  OUTLINED_FUNCTION_71();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_22();
  v3(v2);
  return v0;
}

uint64_t getEnumTagSinglePayload for StateDump.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

double sub_197958EE0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  v78 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = v5;
  v80 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v74 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF48AB0, &unk_197A89150);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v74 - v8;
  v9 = type metadata accessor for InferenceProviderXPCRequest(0);
  v74 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = v11;
  v76 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491A0, &qword_197A8D2D8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v83 = (&v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491A8, &qword_197A8D2E0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v82 = (&v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - v21;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  LOBYTE(v23) = (*(v24 + 24))(v23, v24);
  v25 = a1[3];
  v26 = a1[4];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = *(v26 + 8);
  if (v23)
  {
    v28 = sub_19795AC1C(&qword_1ED87DE60, &qword_1EAF491A8, &qword_197A8D2E0);
    v27(v18, v18, v28, v25, v26);
    v29 = v22;
    v30 = v82;
    sub_1979444C8(v22, v82, &qword_1EAF491A8, &qword_197A8D2E0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = *v30;
    if (EnumCaseMultiPayload == 1)
    {
      v33 = sub_197A87C08();
      __swift_storeEnumTagSinglePayload(v84, 1, 1, v33);
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = v86;
      v34[5] = v32;

      sub_19795CB2C();
    }

    else
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491B8, &qword_197A8D320);
      v42 = *(v30 + *(v41 + 64));
      v43 = v77;
      sub_197969D64(v30 + *(v41 + 48), v77, type metadata accessor for InferenceProviderXPCRequest);
      if (qword_1ED87E900 != -1)
      {
        swift_once();
      }

      v44 = sub_197A87608();
      __swift_project_value_buffer(v44, qword_1ED87DF90);
      v45 = sub_197A875E8();
      v46 = sub_197A87D48();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = v32;
        _os_log_impl(&dword_197941000, v45, v46, "Received message %llu.", v47, 0xCu);
        MEMORY[0x19A8EBE00](v47, -1, -1);
      }

      v48 = v85;
      v49 = v85[3];
      v50 = v85[4];
      __swift_project_boxed_opaque_existential_1(v85, v49);
      (*(v50 + 40))(v49, v50);
      sub_197947C44(v48, &v88);
      v51 = v76;
      sub_197969DC4(v43, v76, type metadata accessor for InferenceProviderXPCRequest);
      v52 = (*(v74 + 80) + 56) & ~*(v74 + 80);
      v53 = (v75 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      sub_197945EF8(&v88, v54 + 16);
      sub_197969D64(v51, v54 + v52, type metadata accessor for InferenceProviderXPCRequest);
      *(v54 + v53) = v86;
      *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;

      sub_197969E24(v32, v42, &unk_197A8D330, v54);

      sub_1979693D8(v43, type metadata accessor for InferenceProviderXPCRequest);
    }

    v55 = &qword_1EAF491A8;
    v56 = &qword_197A8D2E0;
    v57 = v29;
  }

  else
  {
    v35 = sub_19795AC1C(qword_1ED87D4D0, &qword_1EAF491A0, &qword_197A8D2D8);
    v27(v13, v13, v35, v25, v26);
    v36 = v83;
    sub_1979444C8(v17, v83, &qword_1EAF491A0, &qword_197A8D2D8);
    v37 = swift_getEnumCaseMultiPayload();
    v38 = *v36;
    if (v37 == 1)
    {
      v39 = sub_197A87C08();
      __swift_storeEnumTagSinglePayload(v84, 1, 1, v39);
      v40 = swift_allocObject();
      v40[2] = 0;
      v40[3] = 0;
      v40[4] = v86;
      v40[5] = v38;

      sub_19795CB2C();
    }

    else
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF491B0, &qword_197A8D2F8);
      v59 = *(v36 + *(v58 + 64));
      v60 = v81;
      sub_197969D64(v36 + *(v58 + 48), v81, type metadata accessor for InferenceProviderXPCRequest.Notification);
      if (qword_1ED87E900 != -1)
      {
        swift_once();
      }

      v61 = sub_197A87608();
      __swift_project_value_buffer(v61, qword_1ED87DF90);
      v62 = sub_197A875E8();
      v63 = sub_197A87D48();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 134217984;
        *(v64 + 4) = v38;
        _os_log_impl(&dword_197941000, v62, v63, "Received message %llu.", v64, 0xCu);
        MEMORY[0x19A8EBE00](v64, -1, -1);
      }

      v65 = v85;
      v66 = v85[3];
      v67 = v85[4];
      __swift_project_boxed_opaque_existential_1(v85, v66);
      (*(v67 + 40))(v66, v67);
      sub_197947C44(v65, &v88);
      v68 = v80;
      sub_197969DC4(v60, v80, type metadata accessor for InferenceProviderXPCRequest.Notification);
      v69 = (*(v78 + 80) + 56) & ~*(v78 + 80);
      v70 = (v79 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v71 = swift_allocObject();
      sub_197945EF8(&v88, v71 + 16);
      sub_197969D64(v68, v71 + v69, type metadata accessor for InferenceProviderXPCRequest.Notification);
      *(v71 + v70) = v86;
      *(v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;

      sub_197969E24(v38, v59, &unk_197A8D308, v71);

      sub_1979693D8(v60, type metadata accessor for InferenceProviderXPCRequest.Notification);
    }

    v55 = &qword_1EAF491A0;
    v56 = &qword_197A8D2D8;
    v57 = v17;
  }

  sub_19795B324(v57, v55, v56);
  v72 = v87;
  *(v87 + 32) = 0;
  result = 0.0;
  *v72 = 0u;
  v72[1] = 0u;
  return result;
}

uint64_t sub_197959A00()
{
  v1 = type metadata accessor for InferenceProviderXPCRequest.Notification(0);
  OUTLINED_FUNCTION_10(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_197A87298();
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(v0 + v3);
  OUTLINED_FUNCTION_6_3();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_197959AD8()
{
  v2 = *(type metadata accessor for InferenceProviderXPCRequest(0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v4 = v0 + v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v37 = sub_197A877A8();
      if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v37))
      {
        OUTLINED_FUNCTION_36_0();
        (*(v38 + 8))(v0 + v3, v37);
      }

      v39 = *(type metadata accessor for ClientData(0) + 20);
      if (!__swift_getEnumTagSinglePayload(v4 + v39, 1, v37))
      {
        OUTLINED_FUNCTION_36_0();
        (*(v40 + 8))(v4 + v39);
      }

      break;
    case 3u:

      v41 = *(type metadata accessor for InferenceProviderPrewarmInformation(0) + 24);
      sub_197A87298();
      OUTLINED_FUNCTION_0();
      (*(v42 + 8))(v4 + v41);

      goto LABEL_23;
    case 4u:

      v20 = v4 + *(type metadata accessor for InferenceProviderAssetDescriptor(0) + 24);
      v21 = type metadata accessor for CustomAssetConfiguration(0);
      if (!OUTLINED_FUNCTION_18_2(v21))
      {

        v22 = *(v1 + 24);
        sub_197A877A8();
        OUTLINED_FUNCTION_0();
        (*(v23 + 8))(v20 + v22);
      }

      v24 = *(type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(0) + 28);
      sub_197A87298();
      OUTLINED_FUNCTION_0();
      (*(v25 + 8))(v4 + v24);
      break;
    case 5u:
      v26 = type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(0);
      v27 = v4 + *(v26 + 20);
      v28 = sub_197A877A8();
      if (!OUTLINED_FUNCTION_18_2(v28))
      {
        OUTLINED_FUNCTION_36_0();
        (*(v29 + 8))(v27, v1);
      }

      v30 = *(type metadata accessor for ClientData(0) + 20);
      if (!__swift_getEnumTagSinglePayload(v27 + v30, 1, v1))
      {
        OUTLINED_FUNCTION_36_0();
        (*(v31 + 8))(v27 + v30, v1);
      }

      v32 = v4 + *(v26 + 24);

      v33 = type metadata accessor for InferenceProviderRequestConfiguration(0);
      v34 = v33[7];
      v35 = sub_197A87298();
      v45 = v26;
      v36 = *(*(v35 - 8) + 8);
      v36(v32 + v34, v35);
      v36(v32 + v33[8], v35);
      v36(v32 + v33[11], v35);

      v36(v4 + *(v45 + 28), v35);
      break;
    case 6u:

      v44 = type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(0);
      v7 = v4 + v44[5];

      v8 = type metadata accessor for RequestMetadata(0);
      v9 = v7 + v8[5];
      v10 = sub_197A877A8();
      if (!__swift_getEnumTagSinglePayload(v9, 1, v10))
      {
        OUTLINED_FUNCTION_36_0();
        (*(v11 + 8))(v9, v10);
      }

      v12 = *(type metadata accessor for ClientData(0) + 20);
      if (!__swift_getEnumTagSinglePayload(v9 + v12, 1, v10))
      {
        OUTLINED_FUNCTION_36_0();
        (*(v13 + 8))(v9 + v12, v10);
      }

      v14 = v8[6];
      v15 = sub_197A87298();
      OUTLINED_FUNCTION_6();
      v17 = *(v16 + 8);
      v17(v7 + v14, v15);
      v17(v7 + v8[7], v15);

      v17(v7 + v8[14], v15);

      v18 = v4 + v44[6];

      v19 = type metadata accessor for InferenceProviderRequestConfiguration(0);
      v17(v18 + v19[7], v15);
      v17(v18 + v19[8], v15);
      v17(v18 + v19[11], v15);

      v17(v4 + v44[7], v15);
      break;
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
      sub_197A87298();
      OUTLINED_FUNCTION_0();
      (*(v5 + 8))(v0 + v3);
      break;
    case 0xBu:
      sub_197A87298();
      OUTLINED_FUNCTION_0();
      (*(v6 + 8))(v0 + v3);
      if (*(v4 + *(type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(0) + 20)) >= 4uLL)
      {
LABEL_23:
      }

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_6_3();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_19795A200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7[3] = type metadata accessor for XPCReceivedMessageWrapper(0);
  v7[4] = &protocol witness table for XPCReceivedMessageWrapper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  v5 = sub_197A87818();
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  sub_197958EE0(v7, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

void InferenceProviderXPCRequest.init(from:)()
{
  OUTLINED_FUNCTION_92();
  v94 = v0;
  v3 = v2;
  v89 = v4;
  v90 = type metadata accessor for InferenceProviderXPCRequest(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_35();
  v88 = v8;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_35();
  v87 = v10;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_35();
  v86 = v12;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_35();
  v85 = v14;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_35();
  v91 = v16;
  OUTLINED_FUNCTION_134();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_35();
  v84 = v18;
  OUTLINED_FUNCTION_134();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v77 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v77 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_77_1();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v77 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v77 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v77 - v33;
  v35 = v3[3];
  v93 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v35);
  v36 = v94;
  sub_197A88388();
  v94 = v36;
  if (v36)
  {
    goto LABEL_6;
  }

  v83 = v32;
  v78 = v29;
  v79 = v1;
  v80 = v25;
  v81 = v22;
  v82 = v34;
  v37 = v91;
  v38 = v92;
  OUTLINED_FUNCTION_113_0(v97, v98);
  v39 = sub_197A88198();
  if ((v40 & 1) != 0 || v39 != 2)
  {
    v44 = sub_197A87E88();
    v45 = swift_allocError();
    v47 = v46;
    v42 = v93;
    OUTLINED_FUNCTION_113_0(v93, v93[3]);
    OUTLINED_FUNCTION_100_0();
    sub_197A88378();
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_197A87E58();
    MEMORY[0x19A8EAC80](0xD000000000000040, 0x8000000197AA3710);
    OUTLINED_FUNCTION_113_0(v97, v98);
    sub_197A88198();
    v48 = sub_197A88148();
    MEMORY[0x19A8EAC80](v48);

    sub_197A87E78();
    (*(*(v44 - 8) + 104))(v47, *MEMORY[0x1E69E6B00], v44);
    v94 = v45;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
    goto LABEL_7;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v97, v98);
  sub_197958CA8();
  v41 = v94;
  sub_197A881B8();
  v94 = v41;
  if (v41)
  {
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v97);
LABEL_6:
    v42 = v93;
LABEL_7:
    v43 = v42;
    goto LABEL_8;
  }

  v49 = v83;
  switch(v95)
  {
    case 1:
      OUTLINED_FUNCTION_51_5();
      sub_197A0DA7C();
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v65 = v89;
      v94 = 0;
      v66 = v96;
      *v37 = v95;
      *(v37 + 8) = v66;
      OUTLINED_FUNCTION_100_0();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v67 = v82;
      sub_197958DA4(v37, v82);
      v68 = v93;
      goto LABEL_27;
    case 2:
      OUTLINED_FUNCTION_51_5();
      v56 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.ConvertData(v56);
      OUTLINED_FUNCTION_95_4();
      sub_19796A788(v57);
      v38 = v85;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v94 = 0;
      OUTLINED_FUNCTION_137_2();
      goto LABEL_25;
    case 3:
      OUTLINED_FUNCTION_51_5();
      v58 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.PrewarmBundle(v58);
      OUTLINED_FUNCTION_94_2();
      sub_19796A788(v59);
      v38 = v86;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v94 = 0;
      OUTLINED_FUNCTION_137_2();
      goto LABEL_25;
    case 4:
      OUTLINED_FUNCTION_51_5();
      v52 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.TransitionAsset(v52);
      OUTLINED_FUNCTION_98_3();
      sub_19796A788(v53);
      v49 = v78;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v94 = 0;
      OUTLINED_FUNCTION_61_3();
      goto LABEL_22;
    case 5:
      OUTLINED_FUNCTION_51_5();
      v69 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.InferenceRequest(v69);
      OUTLINED_FUNCTION_88_3();
      sub_19796A788(v70);
      v49 = v79;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v94 = 0;
      OUTLINED_FUNCTION_61_3();
      goto LABEL_22;
    case 6:
      OUTLINED_FUNCTION_51_5();
      v71 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.DirectStreamHandshake(v71);
      OUTLINED_FUNCTION_86_3();
      sub_19796A788(v72);
      v49 = v80;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v94 = 0;
      OUTLINED_FUNCTION_61_3();
      goto LABEL_22;
    case 7:
      __swift_mutable_project_boxed_opaque_existential_1(v97, v98);
      v60 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.FetchNextStreamResultsRequest(v60);
      OUTLINED_FUNCTION_91_4();
      sub_19796A788(v61);
      v62 = v81;
      v63 = v94;
      sub_197A881B8();
      v94 = v63;
      if (v63)
      {
        goto LABEL_5;
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v64 = v62;
      break;
    case 8:
      OUTLINED_FUNCTION_51_5();
      v75 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.AwaitEndStreamRequest(v75);
      OUTLINED_FUNCTION_84_4();
      sub_19796A788(v76);
      v38 = v84;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v94 = 0;
      OUTLINED_FUNCTION_137_2();
      goto LABEL_25;
    case 9:
      OUTLINED_FUNCTION_51_5();
      v54 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.WillCancelNotification(v54);
      OUTLINED_FUNCTION_97_3();
      sub_19796A788(v55);
      v38 = v87;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v94 = 0;
      OUTLINED_FUNCTION_137_2();
      goto LABEL_25;
    case 10:
      OUTLINED_FUNCTION_51_5();
      v73 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.InputStreamInferenceRequest(v73);
      OUTLINED_FUNCTION_85_4();
      sub_19796A788(v74);
      v38 = v88;
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v94 = 0;
      OUTLINED_FUNCTION_137_2();
      goto LABEL_25;
    case 11:
      OUTLINED_FUNCTION_51_5();
      v50 = OUTLINED_FUNCTION_54_4();
      type metadata accessor for InferenceProviderXPCRequest.InputStreamEndedRequest(v50);
      OUTLINED_FUNCTION_100_2();
      sub_19796A788(v51);
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v94 = 0;
      OUTLINED_FUNCTION_137_2();
LABEL_25:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v64 = v38;
      break;
    default:
      OUTLINED_FUNCTION_51_5();
      sub_197A0DAD0();
      OUTLINED_FUNCTION_18_7();
      sub_197A881B8();
      v94 = 0;
      OUTLINED_FUNCTION_61_3();
LABEL_22:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_8();
      v64 = v49;
      break;
  }

  v67 = v82;
  sub_197958DA4(v64, v82);
  v68 = v93;
  v65 = v89;
LABEL_27:
  __swift_destroy_boxed_opaque_existential_1Tm(v97);
  OUTLINED_FUNCTION_6_8();
  sub_197958DA4(v67, v65);
  v43 = v68;
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  OUTLINED_FUNCTION_93();
}

uint64_t sub_19795AC1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(protocol conformance descriptor for TaskCancellableMessage<A>, v5);
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_28_2()
{
  v4 = *(v0 - 256);
  v5 = *(v2 - 352);

  sub_197945194(v4, v1, v5);
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_28_8()
{

  JUMPOUT(0x19A8EAC80);
}

uint64_t OUTLINED_FUNCTION_28_9(uint64_t a1)
{

  return swift_getWitnessTable(byte_197A97960, a1);
}

uint64_t sub_19795ADB8()
{
  OUTLINED_FUNCTION_18();

  v1 = v0[18];
  sub_197963674(v0[21], v0[22], v0[23], v0[24], v0[25]);
  sub_197947A40(v1, &qword_1EAF49130, &qword_197A969C0);

  OUTLINED_FUNCTION_13();

  return v2();
}

void sub_19795AE74()
{
  OUTLINED_FUNCTION_92();
  v2 = v1;
  OUTLINED_FUNCTION_72_0();
  v5 = OUTLINED_FUNCTION_165_1(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_64_1();
  v8 = OUTLINED_FUNCTION_113_0(v0, v0[3]);
  v2(v8);
  sub_197A883D8();
  v9 = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_2_15(&qword_1ED87FC88);
  OUTLINED_FUNCTION_61_4();
  sub_197A880E8();
  v11 = OUTLINED_FUNCTION_170_0();
  v12(v11);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_93();
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *(v5 - 384);

  return sub_1979444C8(v4, v7, a3, a4);
}

uint64_t ModelXPCRequest.PrewarmSession.metadata.getter()
{
  type metadata accessor for ModelXPCRequest.PrewarmSession(0);

  return sub_197A878A8();
}

uint64_t OUTLINED_FUNCTION_161_0()
{

  return sub_197958DA4(v0, v1);
}

uint64_t OUTLINED_FUNCTION_161_1(uint64_t a1, uint64_t a2)
{

  return sub_197A880B8();
}

uint64_t TaskCancellingXPCReceivedMessage.__deallocating_deinit()
{
  TaskCancellingXPCReceivedMessage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_19795B188()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19795B26C()
{
  OUTLINED_FUNCTION_18();
  v0 = sub_197A875E8();
  sub_197A87D48();
  v1 = OUTLINED_FUNCTION_18_5();
  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_10_9();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_6(v3, 3.852e-34);
    OUTLINED_FUNCTION_20_1(&dword_197941000, v4, v5, "Completed task for message %llu.");
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t sub_19795B324(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_19795B378(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_36_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_19795B3D4()
{
  OUTLINED_FUNCTION_33();
  if (qword_1ED87E900 != -1)
  {
    OUTLINED_FUNCTION_0_13();
    swift_once();
  }

  v1 = sub_197A87608();
  __swift_project_value_buffer(v1, qword_1ED87DF90);
  v2 = sub_197A875E8();
  sub_197A87D48();
  v3 = OUTLINED_FUNCTION_18_5();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_10_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_6(v5, 3.852e-34);
    OUTLINED_FUNCTION_20_1(&dword_197941000, v6, v7, "Replying to message %llu.");
    OUTLINED_FUNCTION_8();
    MEMORY[0x19A8EBE00]();
  }

  v8 = v0[17];

  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = v0[10];
  v12 = v0[11];
  v13 = __swift_project_boxed_opaque_existential_1(v0 + 7, v11);
  (*(v10 + 16))(v13, v11, v12, v9, v10);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  OUTLINED_FUNCTION_13();

  return v14();
}

uint64_t sub_19795B534()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_19795B62C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_2();
  v4 = *(v1 + *(v3 + 112));
  os_unfair_lock_lock((v4 + 24));
  sub_19795E71C((v4 + 16), a1);

  os_unfair_lock_unlock((v4 + 24));
}

uint64_t sub_19795B69C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_73();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_151()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_151_2()
{
  *(v0 + 568) = *(*(v0 + 464) + 208);
}

__n128 OUTLINED_FUNCTION_151_3@<Q0>(unint64_t a1@<X8>)
{
  v6 = (v4 + v3);
  v6->n128_u64[0] = a1;
  v6->n128_u64[1] = v1;
  result = *(v5 - 104);
  v6[1] = result;
  v6[2].n128_u8[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_151_4()
{

  return swift_retain_n();
}

unint64_t InferenceProviderAssetDescriptor.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF49008, &qword_197A8BB38);
  OUTLINED_FUNCTION_28(v2);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v23 = 60;
  v24 = 0xE100000000000000;
  MEMORY[0x19A8EAC80](v6, v7);
  sub_197A878A8();
  MEMORY[0x19A8EAC80](0x6F6973726576202CLL, 0xEB00000000203A6ELL);

  v8 = v23;
  v9 = v24;
  v10 = (v1 + *(type metadata accessor for InferenceProviderAssetDescriptor(0) + 28));
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v11 = 0x29656E6F6E28;
    v12 = 0xE600000000000000;
  }

  v23 = v8;
  v24 = v9;
  sub_197A878A8();
  sub_197A878A8();
  MEMORY[0x19A8EAC80](v11, v12);

  v14 = v23;
  v13 = v24;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_197A87E58();

  v23 = 0xD000000000000010;
  v24 = 0x8000000197AA2350;
  sub_1979487E0();
  type metadata accessor for CustomAssetConfiguration(0);
  v15 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_64_0(v15, 1, v16);
  if (v17)
  {
    v18 = 0x29656E6F6E28;
    sub_197947A40(v5, &qword_1EAF49008, &qword_197A8BB38);
    v20 = 0xE600000000000000;
  }

  else
  {
    v18 = CustomAssetConfiguration.description.getter();
    v20 = v19;
    OUTLINED_FUNCTION_3_3();
    sub_19796B99C();
  }

  MEMORY[0x19A8EAC80](v18, v20);

  v23 = v14;
  v24 = v13;
  sub_197A878A8();
  v21 = OUTLINED_FUNCTION_60();
  MEMORY[0x19A8EAC80](v21);

  sub_197A878A8();
  MEMORY[0x19A8EAC80](62, 0xE100000000000000);

  return v23;
}

void *sub_19795BA78(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v6 = __OFADD__(v4, v3);
  v5 = v4 + v3;
  if (!v6)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v6 = __OFADD__(v3, 1);
        v7 = v3 + 1;
        if (!v6)
        {
          result[1] = v7;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_19795BAE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t sub_19795BBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16[10];
  sub_197A87B68();
  if (v17)
  {
    v18 = swift_task_alloc();
    v16[31] = v18;
    *v18 = v16;
    v18[1] = sub_197963BD0;
    OUTLINED_FUNCTION_38_9();

    return MEMORY[0x1EEE6DA40](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    v31 = v27;
    v28 = swift_task_alloc();
    v16[32] = v28;
    *v28 = v16;
    v29 = OUTLINED_FUNCTION_1_15(v28);

    return v31(v29);
  }
}

uint64_t sub_19795BD18()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  OUTLINED_FUNCTION_13();

  return v3();
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);

  return sub_197947C44(v4 - 248, v4 - 328);
}