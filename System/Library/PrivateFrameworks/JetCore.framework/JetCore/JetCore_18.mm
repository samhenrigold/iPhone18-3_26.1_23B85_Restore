id sub_1DB49CE80(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1DB49CFE4();
    v4 = sub_1DB50A490();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_7JetCore0B30AnalyticsEventPayloadDecorator_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DB49CFE4()
{
  result = qword_1EE30C798;
  if (!qword_1EE30C798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE30C798);
  }

  return result;
}

uint64_t LanguagesMetricFieldProvider.addMetricsFields(into:using:)(void *a1)
{
  v3 = *v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  v7 = v6;
  if (!v3)
  {

LABEL_9:
    v12 = sub_1DB509E20();
    v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
    v17[0] = v12;
    v13 = a1[3];
    v14 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v13);
    (*(v14 + 16))(v17, 0x6175676E614C736FLL, 0xEB00000000736567, v13, v14);
    return __swift_destroy_boxed_opaque_existential_0(v17);
  }

  if (!*(v6 + 16))
  {
  }

  v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v9 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v7 + 56) + 32 * v8, v17);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v10 = sub_1DB33114C(v15, v16, v3);

  if (v10)
  {
    goto LABEL_9;
  }

  return result;
}

char *Promise<A>.init(_:)(void *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = Promise.__allocating_init()(a1, a3, a4, a5);
  v14 = sub_1DB49D368;
  v15 = v6;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1DB49D390;
  v13 = &block_descriptor_19;
  v7 = _Block_copy(&v10);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v7);
  v14 = j___s7JetCore7PromiseC6rejectyys5Error_pF_0;
  v15 = v6;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_1DB49D40C;
  v13 = &block_descriptor_3_0;
  v8 = _Block_copy(&v10);

  [a1 addErrorBlock_];

  _Block_release(v8);
  return v6;
}

uint64_t sub_1DB49D390(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DB49D40C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id Promise<A>.toAMSPromise(on:)(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC466D8, &unk_1DB51FDC0);
  v4 = *(v3 + 80);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = v5;
  Promise.then(perform:orCatchError:on:)(sub_1DB49D578, v6, sub_1DB49D590, v7, a1);

  return v8;
}

void sub_1DB49D590(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = sub_1DB509B10();
  [v2 finishWithError_];
}

uint64_t Promise<A>.init(_:)(void *a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB49D788;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB3330B0;
  v11 = &block_descriptor_9;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB49D78C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_12_0;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

JetCore::JetPackFileStreamSource __swiftcall JetPackFileStreamSource.init(path:)(Swift::String path)
{
  *v1 = path;
  v1[1]._countAndFlagsBits = 0;
  v1[1]._object = 0;
  result.path = path;
  return result;
}

uint64_t JetPackFileStreamSource.path.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JetPackFileStreamSource.makeStream()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB840]);
  v1 = sub_1DB50A620();
  v2 = [v0 initWithPath_];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_1DB49D8CC();
    v2 = swift_allocError();
    v3 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43CD0, &unk_1DB51FDD0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  return v4;
}

unint64_t sub_1DB49D8CC()
{
  result = qword_1ECC466E0;
  if (!qword_1ECC466E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC466E0);
  }

  return result;
}

uint64_t sub_1DB49D920()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB840]);
  v1 = sub_1DB50A620();
  v2 = [v0 initWithPath_];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    sub_1DB49D8CC();
    v2 = swift_allocError();
    v3 = 2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43CD0, &unk_1DB51FDD0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  return v4;
}

uint64_t sub_1DB49DA08@<X0>(uint64_t a1@<X8>)
{
  sub_1DB509BA0();
  v2 = sub_1DB509CA0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1DB49DA7C(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1EE30E1A8 != -1)
    {
      result = swift_once();
    }

    v6 = v3;
    v7 = v2;
    v4 = *(qword_1EE312DD8 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1DB37795C(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

uint64_t sub_1DB49DB4C(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1EE30E1A8 != -1)
    {
      result = swift_once();
    }

    v5[2] = v3;
    v5[3] = v2;
    v4 = *(qword_1EE312DD8 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1DB377940(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

uint64_t OSLogger.init(subsystem:category:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v3 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v3 + 24));
  sub_1DB34FFDC((v3 + 16), &v5);
  os_unfair_lock_unlock((v3 + 24));

  *a2 = v5;
  return result;
}

uint64_t LogMessageLevel.osLogType.getter(uint64_t a1)
{
  if (*v1 - 1 < 2)
  {
    return sub_1DB50AF40();
  }

  if (*v1)
  {
    return sub_1DB50AF10();
  }

  return sub_1DB50AF20();
}

uint64_t sub_1DB49DDE4()
{
  type metadata accessor for OSLogRegistry();
  v0 = swift_allocObject();
  v1 = sub_1DB31338C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46768, &qword_1DB520038);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  off_1EE30ED38 = v0;
  return result;
}

id sub_1DB49DE5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *a1;
  v13 = *(*a1 + 16);

  if (v13 && (v14 = sub_1DB30ED08(a2, a3, a4, a5), (v15 & 1) != 0))
  {
    v16 = v14;

    v17 = *(*(v12 + 56) + 8 * v16);
    *a6 = v17;
    return v17;
  }

  else
  {
    sub_1DB3D6CE4();

    v19 = sub_1DB50B100();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1DB31E558(v19, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *a1 = v21;
    *a6 = v19;
  }

  return result;
}

uint64_t OSLogger.Subsystem.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void sub_1DB49DFF0(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC466E8 = v2;
}

uint64_t sub_1DB49E0F4(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC67CA0 = result;
  return result;
}

void sub_1DB49E220(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC466F0 = v2;
}

uint64_t sub_1DB49E32C(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30C8F8 = result;
  return result;
}

void sub_1DB49E484(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC466F8 = v2;
}

void sub_1DB49E594(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC46700 = v2;
}

uint64_t sub_1DB49E6A8(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30C918 = result;
  return result;
}

void sub_1DB49E80C(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC46708 = v2;
}

void sub_1DB49E914(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC46710 = v2;
}

uint64_t sub_1DB49EA28(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC46718 = result;
  return result;
}

void sub_1DB49EBAC(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC46720 = v2;
}

uint64_t sub_1DB49ECC0(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC46728 = result;
  return result;
}

void sub_1DB49EE44(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC46730 = v2;
}

id sub_1DB49EF58@<X0>(void *a1@<X0>, void **a2@<X1>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

uint64_t sub_1DB49EFB4(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC46738 = result;
  return result;
}

void *sub_1DB49F12C(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_1DB50BEB0();
}

uint64_t sub_1DB49F178(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46758, &qword_1DB520028);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC46740 = result;
  return result;
}

uint64_t sub_1DB49F2E0(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46758, &qword_1DB520028);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30E408 = result;
  return result;
}

uint64_t sub_1DB49F428(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1ECC46748 = result;
  return result;
}

uint64_t sub_1DB49F57C(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB49FA28((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46760, &qword_1DB520030);
  swift_allocObject();
  result = sub_1DB50BEA0();
  qword_1EE30C908 = result;
  return result;
}

uint64_t sub_1DB49F6D4(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

Swift::Void __swiftcall OSLogger.log(contentsOf:withLevel:)(Swift::OpaquePointer contentsOf, JetCore::LogMessageLevel withLevel)
{
  v3 = *v2;
  if (*withLevel - 1 >= 2)
  {
    if (*withLevel)
    {
      v4 = sub_1DB50AF10();
    }

    else
    {
      v4 = sub_1DB50AF20();
    }
  }

  else
  {
    v4 = sub_1DB50AF40();
  }

  v5 = v4;
  if (os_log_type_enabled(v3, v4))
  {
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v6 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v6 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    *(swift_allocObject() + 16) = (os_unfair_lock_opaque_low & 1) == 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v8 = sub_1DB50A5E0();
    v10 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DB50EE90;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1DB31494C();
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v3, v5, v11);
  }
}

unint64_t sub_1DB49F924()
{
  result = qword_1ECC46750;
  if (!qword_1ECC46750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46750);
  }

  return result;
}

unint64_t sub_1DB49F9D4()
{
  result = qword_1EE30ED40;
  if (!qword_1EE30ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30ED40);
  }

  return result;
}

uint64_t sub_1DB49FA44@<X0>(void *a3@<X2>, void *a4@<X8>)
{
  v6 = sub_1DB50A620();
  v7 = [a3 objectForKeyedSubscript_];

  if (v7)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
    v7 = swift_allocObject();
    result = sub_1DB30C200(v11, v7 + 1);
    v9 = &off_1F56FB6B0;
    v10 = &type metadata for FoundationValue;
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    result = sub_1DB30623C(v11, &qword_1ECC426B0, &qword_1DB50EEB0);
    v10 = 0;
    v9 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  *a4 = v7;
  a4[3] = v10;
  a4[4] = v9;
  return result;
}

uint64_t sub_1DB49FB28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DB336FD4(0, &qword_1ECC45BF0, 0x1E695DF20);
  sub_1DB50A540();
  v5 = a1;
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB49FBCC(void (*a1)(char *, uint64_t, uint64_t, uint64_t, __int128 *), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v78 = a1;
  v79 = a2;
  v12 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = v67 - v13;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v75 = v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v67 - v21;
  v77 = a4;
  v74 = a5;
  v23 = a6;
  v24 = sub_1DB50A470();
  v99 = v24;
  v80 = a3;
  v84 = sub_1DB50AEE0();
  sub_1DB50AEF0();
  v95 = v91;
  v96 = v92;
  v97 = v93;
  v98 = v94;
  if (*(&v92 + 1))
  {
    v67[0] = 0x80000001DB530190;
    v72 = (v17 + 16);
    v73 = "NetworkReachability" & 0x2F00000000000000;
    v70 = (v14 + 56);
    v71 = (v14 + 16);
    v68 = (v17 + 8);
    v69 = (v14 + 8);
    v82 = xmmword_1DB50EE90;
    v67[1] = v23;
    v24 = v81;
    v85 = v22;
    while (1)
    {
      sub_1DB30C200(&v95, v90);
      sub_1DB30C200(&v97, v89);
      sub_1DB300B14(v90, &v91);
      sub_1DB336FD4(0, &qword_1ECC45BE0, 0x1E696AEC0);
      if (swift_dynamicCast())
      {
        v25 = v87;
        sub_1DB300B14(v89, &v87);
        *(&v92 + 1) = &type metadata for FoundationValue;
        *&v93 = &off_1F56FB6B0;
        *&v91 = swift_allocObject();
        sub_1DB30C200(&v87, (v91 + 16));
        v26 = sub_1DB50A650();
        v78(v22, v24, v26, v27, &v91);
        if (v7)
        {

          sub_1DB3151CC(&v91);
          __swift_destroy_boxed_opaque_existential_0(v89);
          __swift_destroy_boxed_opaque_existential_0(v90);

          return v24;
        }

        v28 = v77;
        (*v72)(v75, v85, v77);
        v29 = *v71;
        v30 = v76;
        v83 = 0;
        v31 = v74;
        v29(v76, v24, v74);
        (*v70)(v30, 0, 1, v31);
        sub_1DB50A540();
        v22 = v85;
        sub_1DB50A5A0();

        v32 = v31;
        v7 = v83;
        (*v69)(v24, v32);
        (*v68)(v22, v28);
        sub_1DB3151CC(&v91);
        __swift_destroy_boxed_opaque_existential_0(v89);
        __swift_destroy_boxed_opaque_existential_0(v90);
      }

      else
      {
        if (qword_1ECC42218 != -1)
        {
          swift_once();
        }

        v33 = qword_1ECC466E8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
        v34 = swift_allocObject();
        *(v34 + 16) = v82;
        v35 = sub_1DB301BC0(0, 43, 0, MEMORY[0x1E69E7CC0]);
        v88 = MEMORY[0x1E69E6158];
        *&v87 = 0x697274532D6E6F4ELL;
        *(&v87 + 1) = 0xEF2079656B20676ELL;
        v91 = 0u;
        v92 = 0u;
        sub_1DB301D4C(&v87, &v91);
        LOBYTE(v93) = 0;
        v37 = *(v35 + 2);
        v36 = *(v35 + 3);
        if (v37 >= v36 >> 1)
        {
          v35 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v35);
        }

        *(v35 + 2) = v37 + 1;
        v38 = &v35[40 * v37];
        v39 = v91;
        v40 = v92;
        v38[64] = v93;
        *(v38 + 2) = v39;
        *(v38 + 3) = v40;
        sub_1DB300B14(v90, &v87);
        sub_1DB30C4B8(&v87, v86, &qword_1ECC426B0, &qword_1DB50EEB0);
        v91 = 0u;
        v92 = 0u;
        sub_1DB301D4C(v86, &v91);
        LOBYTE(v93) = 0;
        v42 = *(v35 + 2);
        v41 = *(v35 + 3);
        if (v42 >= v41 >> 1)
        {
          v35 = sub_1DB301BC0((v41 > 1), v42 + 1, 1, v35);
        }

        sub_1DB30623C(&v87, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v35 + 2) = v42 + 1;
        v43 = &v35[40 * v42];
        v44 = v93;
        v45 = v92;
        *(v43 + 2) = v91;
        *(v43 + 3) = v45;
        v43[64] = v44;
        if (v73 != 0x2000000000000000)
        {
          v88 = MEMORY[0x1E69E6158];
          *&v87 = 0xD00000000000001ALL;
          *(&v87 + 1) = v67[0];
          v91 = 0u;
          v92 = 0u;
          sub_1DB301D4C(&v87, &v91);
          LOBYTE(v93) = 0;
          v47 = *(v35 + 2);
          v46 = *(v35 + 3);
          if (v47 >= v46 >> 1)
          {
            v35 = sub_1DB301BC0((v46 > 1), v47 + 1, 1, v35);
          }

          *(v35 + 2) = v47 + 1;
          v48 = &v35[40 * v47];
          v49 = v91;
          v50 = v92;
          v48[64] = v93;
          *(v48 + 2) = v49;
          *(v48 + 3) = v50;
        }

        v88 = &type metadata for FoundationDictionary;
        v51 = v80;
        *&v87 = v80;
        sub_1DB30C4B8(&v87, v86, &qword_1ECC426B0, &qword_1DB50EEB0);
        v91 = 0u;
        v92 = 0u;
        v52 = v51;
        sub_1DB301D4C(v86, &v91);
        LOBYTE(v93) = 0;
        v54 = *(v35 + 2);
        v53 = *(v35 + 3);
        if (v54 >= v53 >> 1)
        {
          v35 = sub_1DB301BC0((v53 > 1), v54 + 1, 1, v35);
        }

        *(v35 + 2) = v54 + 1;
        v55 = &v35[40 * v54];
        v56 = v91;
        v57 = v92;
        v55[64] = v93;
        *(v55 + 2) = v56;
        *(v55 + 3) = v57;
        sub_1DB30623C(&v87, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v34 + 32) = v35;
        v58 = sub_1DB50AF20();
        if (os_log_type_enabled(v33, v58))
        {
          if (qword_1EE30EDD8 != -1)
          {
            swift_once();
          }

          v59 = off_1EE30EDE0;
          os_unfair_lock_lock(off_1EE30EDE0 + 5);
          os_unfair_lock_opaque_low = LOBYTE(v59[4]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v59 + 5);
          if (os_unfair_lock_opaque_low == 2)
          {
            LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
          }

          v61 = swift_allocObject();
          *(v61 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
          *&v91 = v34;
          *(&v91 + 1) = sub_1DB31485C;
          *&v92 = v61;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
          sub_1DB314864();
          v62 = sub_1DB50A5E0();
          v64 = v63;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
          v65 = swift_allocObject();
          *(v65 + 16) = v82;
          *(v65 + 56) = MEMORY[0x1E69E6158];
          *(v65 + 64) = sub_1DB31494C();
          *(v65 + 32) = v62;
          *(v65 + 40) = v64;
          sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v33, v58, v65);

          v22 = v85;
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_0(v89);
        __swift_destroy_boxed_opaque_existential_0(v90);
        v24 = v81;
      }

      sub_1DB50AEF0();
      v95 = v91;
      v96 = v92;
      v97 = v93;
      v98 = v94;
      if (!*(&v92 + 1))
      {
        v24 = v99;
        break;
      }
    }
  }

  return v24;
}

uint64_t sub_1DB4A052C(void *a1)
{
  sub_1DB50AEE0();
  sub_1DB50AEF0();
  v79 = v75;
  v80 = v76;
  v81 = v77;
  v82 = v78;
  if (!*(&v76 + 1))
  {
    v64 = MEMORY[0x1E69E7CC8];
LABEL_41:

    return v64;
  }

  v83 = "NetworkReachability" & 0x2F00000000000000;
  v64 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    sub_1DB30C200(&v79, v74);
    sub_1DB30C200(&v81, v73);
    sub_1DB300B14(v74, &v75);
    sub_1DB336FD4(0, &qword_1ECC45BE0, 0x1E696AEC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v10 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50EE90;
      v12 = sub_1DB301BC0(0, 43, 0, MEMORY[0x1E69E7CC0]);
      v68 = MEMORY[0x1E69E6158];
      *&v67 = 0x697274532D6E6F4ELL;
      *(&v67 + 1) = 0xEF2079656B20676ELL;
      v75 = 0u;
      v76 = 0u;
      sub_1DB301D4C(&v67, &v75);
      LOBYTE(v77) = 0;
      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v75;
      v17 = v76;
      v15[64] = v77;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      sub_1DB300B14(v74, &v67);
      sub_1DB30C4B8(&v67, v72, &qword_1ECC426B0, &qword_1DB50EEB0);
      v75 = 0u;
      v76 = 0u;
      sub_1DB301D4C(v72, &v75);
      LOBYTE(v77) = 0;
      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        v12 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v12);
      }

      sub_1DB30623C(&v67, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v12 + 2) = v19 + 1;
      v20 = &v12[40 * v19];
      v21 = v77;
      v22 = v76;
      *(v20 + 2) = v75;
      *(v20 + 3) = v22;
      v20[64] = v21;
      if (v83 != 0x2000000000000000)
      {
        v68 = MEMORY[0x1E69E6158];
        *&v67 = 0xD00000000000001ALL;
        *(&v67 + 1) = 0x80000001DB530190;
        v75 = 0u;
        v76 = 0u;
        sub_1DB301D4C(&v67, &v75);
        LOBYTE(v77) = 0;
        v24 = *(v12 + 2);
        v23 = *(v12 + 3);
        if (v24 >= v23 >> 1)
        {
          v12 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v12);
        }

        *(v12 + 2) = v24 + 1;
        v25 = &v12[40 * v24];
        v26 = v75;
        v27 = v76;
        v25[64] = v77;
        *(v25 + 2) = v26;
        *(v25 + 3) = v27;
      }

      v68 = &type metadata for FoundationDictionary;
      *&v67 = a1;
      sub_1DB30C4B8(&v67, v72, &qword_1ECC426B0, &qword_1DB50EEB0);
      v75 = 0u;
      v76 = 0u;
      v28 = a1;
      sub_1DB301D4C(v72, &v75);
      LOBYTE(v77) = 0;
      v30 = *(v12 + 2);
      v29 = *(v12 + 3);
      if (v30 >= v29 >> 1)
      {
        v12 = sub_1DB301BC0((v29 > 1), v30 + 1, 1, v12);
      }

      *(v12 + 2) = v30 + 1;
      v31 = &v12[40 * v30];
      v32 = v75;
      v33 = v76;
      v31[64] = v77;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      sub_1DB30623C(&v67, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v11 + 32) = v12;
      v34 = sub_1DB50AF20();
      if (os_log_type_enabled(v10, v34))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v35 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v35[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v35 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v37 = swift_allocObject();
        *(v37 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v75 = v11;
        *(&v75 + 1) = sub_1DB314CB0;
        *&v76 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v38 = sub_1DB50A5E0();
        v40 = v39;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1DB50EE90;
        *(v41 + 56) = MEMORY[0x1E69E6158];
        *(v41 + 64) = sub_1DB31494C();
        *(v41 + 32) = v38;
        *(v41 + 40) = v40;
        sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v10, v34, v41);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v73);
      __swift_destroy_boxed_opaque_existential_0(v74);
      goto LABEL_5;
    }

    v2 = v67;
    sub_1DB300B14(v73, &v67);
    *(&v76 + 1) = &type metadata for FoundationValue;
    *&v77 = &off_1F56FB6B0;
    *&v75 = swift_allocObject();
    sub_1DB30C200(&v67, (v75 + 16));
    v3 = sub_1DB50A650();
    v5 = v4;
    sub_1DB30C4B8(&v75, &v67, &qword_1ECC42E38, &qword_1DB50FB80);
    if (!v68)
    {
      sub_1DB30623C(&v67, &qword_1ECC42E38, &qword_1DB50FB80);
LABEL_43:
      sub_1DB315178();
      swift_allocError();
      *v61 = v3;
      v61[1] = v5;
      v61[2] = 0x40000001F56F24A0uLL;
      v61[3] = MEMORY[0x1E69E7CC0];
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(v73);
      __swift_destroy_boxed_opaque_existential_0(v74);
      sub_1DB3151CC(&v75);

      return v64;
    }

    v6 = __swift_project_boxed_opaque_existential_1(&v67, v68);
    sub_1DB300B14(v6, v72);
    ScalarDictionary.Value.init(rawValue:)(v72, &v69);
    __swift_destroy_boxed_opaque_existential_0(&v67);
    v7 = v71;
    if (v71 == 255)
    {
      goto LABEL_43;
    }

    v9 = v69;
    v8 = v70;
    if (!v5)
    {

      __swift_destroy_boxed_opaque_existential_0(v73);
      __swift_destroy_boxed_opaque_existential_0(v74);
      sub_1DB3151CC(&v75);
      sub_1DB4A2454(v3, 0, v9, v8, v7);
      goto LABEL_5;
    }

    sub_1DB314BBC(v69, v70, v71);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v67 = v64;
    v43 = sub_1DB306160(v3, v5);
    v44 = *(v64 + 16);
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      break;
    }

    if (*(v64 + 24) >= v46)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v63 = v43;
        v66 = v42;
        sub_1DB3119D4();
        v42 = v66;
        v43 = v63;
      }
    }

    else
    {
      v65 = v42;
      sub_1DB31A114(v46, isUniquelyReferenced_nonNull_native);
      v47 = sub_1DB306160(v3, v5);
      v49 = v48 & 1;
      v42 = v65;
      if ((v65 & 1) != v49)
      {
        goto LABEL_46;
      }

      v43 = v47;
    }

    v50 = v67;
    v64 = v67;
    if (v42)
    {
      v51 = *(v67 + 56) + 24 * v43;
      v52 = *v51;
      v53 = *(v51 + 8);
      *v51 = v9;
      *(v51 + 8) = v8;
      v54 = *(v51 + 16);
      *(v51 + 16) = v7;
      sub_1DB31EB94(v52, v53, v54);

      sub_1DB31EB94(v9, v8, v7);

      __swift_destroy_boxed_opaque_existential_0(v73);
      __swift_destroy_boxed_opaque_existential_0(v74);
    }

    else
    {
      *(v67 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v55 = (v50[6] + 16 * v43);
      *v55 = v3;
      v55[1] = v5;
      v56 = v50[7] + 24 * v43;
      *v56 = v9;
      *(v56 + 8) = v8;
      *(v56 + 16) = v7;
      sub_1DB31EB94(v9, v8, v7);

      __swift_destroy_boxed_opaque_existential_0(v73);
      __swift_destroy_boxed_opaque_existential_0(v74);
      v57 = v50[2];
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_45;
      }

      v50[2] = v59;
    }

    sub_1DB3151CC(&v75);
LABEL_5:
    sub_1DB50AEF0();
    v79 = v75;
    v80 = v76;
    v81 = v77;
    v82 = v78;
    if (!*(&v76 + 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

void *sub_1DB4A0E54(void (*a1)(uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v93 = a1;
  v94 = a2;
  v12 = sub_1DB50B120();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = &v70 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = sub_1DB50B120();
  *&v96 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v97 = &v70 - v14;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v70 - v22;
  v85 = a4;
  v86 = a5;
  v87 = a6;
  v23 = sub_1DB50A470();
  v111 = v23;
  v24 = sub_1DB50AEE0();
  sub_1DB50AEF0();
  v107 = v103;
  v108 = v104;
  v109 = v105;
  v110 = v106;
  if (*(&v104 + 1))
  {
    v92 = "NetworkReachability" & 0x2F00000000000000;
    v89 = TupleTypeMetadata2 - 8;
    v78 = (v18 + 32);
    v79 = 0x80000001DB530190;
    v76 = (v18 + 16);
    v77 = (v15 + 32);
    v74 = (v15 + 56);
    v75 = (v15 + 16);
    v72 = (v18 + 8);
    v73 = (v15 + 8);
    v71 = (v96 + 8);
    v96 = xmmword_1DB50EE90;
    v90 = v24;
    v91 = a3;
    while (1)
    {
      sub_1DB30C200(&v107, v102);
      sub_1DB30C200(&v109, v101);
      sub_1DB300B14(v102, &v103);
      sub_1DB336FD4(0, &qword_1ECC45BE0, 0x1E696AEC0);
      if (swift_dynamicCast())
      {
        v23 = v99;
        sub_1DB300B14(v101, &v99);
        *(&v104 + 1) = &type metadata for FoundationValue;
        *&v105 = &off_1F56FB6B0;
        *&v103 = swift_allocObject();
        sub_1DB30C200(&v99, (v103 + 16));
        v25 = sub_1DB50A650();
        v93(v25);
        if (v7)
        {

          sub_1DB3151CC(&v103);
          __swift_destroy_boxed_opaque_existential_0(v101);
          __swift_destroy_boxed_opaque_existential_0(v102);

          return v23;
        }

        v26 = TupleTypeMetadata2;
        if ((*(*(TupleTypeMetadata2 - 8) + 48))(v97, 1, TupleTypeMetadata2) == 1)
        {

          sub_1DB3151CC(&v103);
          __swift_destroy_boxed_opaque_existential_0(v101);
          __swift_destroy_boxed_opaque_existential_0(v102);
          (*v71)(v97, v83);
          goto LABEL_5;
        }

        v59 = *(v26 + 48);
        v60 = v80;
        v61 = v97;
        v62 = v85;
        (*v78)(v80, v97, v85);
        v63 = &v61[v59];
        v64 = v82;
        v65 = v86;
        (*v77)(v82, v63, v86);
        v66 = *v76;
        v88 = 0;
        v66(v81, v60, v62);
        v67 = v84;
        (*v75)(v84, v64, v65);
        (*v74)(v67, 0, 1, v65);
        sub_1DB50A540();
        v7 = v88;
        sub_1DB50A5A0();

        (*v73)(v64, v65);
        v68 = v60;
        a3 = v91;
        (*v72)(v68, v62);
        sub_1DB3151CC(&v103);
      }

      else
      {
        if (qword_1ECC42218 != -1)
        {
          swift_once();
        }

        v27 = qword_1ECC466E8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
        v28 = swift_allocObject();
        *(v28 + 16) = v96;
        v29 = sub_1DB301BC0(0, 43, 0, MEMORY[0x1E69E7CC0]);
        v100 = MEMORY[0x1E69E6158];
        *&v99 = 0x697274532D6E6F4ELL;
        *(&v99 + 1) = 0xEF2079656B20676ELL;
        v103 = 0u;
        v104 = 0u;
        sub_1DB301D4C(&v99, &v103);
        LOBYTE(v105) = 0;
        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        if (v31 >= v30 >> 1)
        {
          v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
        }

        *(v29 + 2) = v31 + 1;
        v32 = &v29[40 * v31];
        v33 = v103;
        v34 = v104;
        v32[64] = v105;
        *(v32 + 2) = v33;
        *(v32 + 3) = v34;
        sub_1DB300B14(v102, &v99);
        sub_1DB30C4B8(&v99, v98, &qword_1ECC426B0, &qword_1DB50EEB0);
        v103 = 0u;
        v104 = 0u;
        sub_1DB301D4C(v98, &v103);
        LOBYTE(v105) = 0;
        v36 = *(v29 + 2);
        v35 = *(v29 + 3);
        if (v36 >= v35 >> 1)
        {
          v29 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v29);
        }

        sub_1DB30623C(&v99, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v29 + 2) = v36 + 1;
        v37 = &v29[40 * v36];
        v38 = v105;
        v39 = v104;
        *(v37 + 2) = v103;
        *(v37 + 3) = v39;
        v37[64] = v38;
        if (v92 != 0x2000000000000000)
        {
          v100 = MEMORY[0x1E69E6158];
          *&v99 = 0xD00000000000001ALL;
          *(&v99 + 1) = v79;
          v103 = 0u;
          v104 = 0u;
          sub_1DB301D4C(&v99, &v103);
          LOBYTE(v105) = 0;
          v41 = *(v29 + 2);
          v40 = *(v29 + 3);
          if (v41 >= v40 >> 1)
          {
            v29 = sub_1DB301BC0((v40 > 1), v41 + 1, 1, v29);
          }

          *(v29 + 2) = v41 + 1;
          v42 = &v29[40 * v41];
          v43 = v103;
          v44 = v104;
          v42[64] = v105;
          *(v42 + 2) = v43;
          *(v42 + 3) = v44;
        }

        v100 = &type metadata for FoundationDictionary;
        *&v99 = a3;
        sub_1DB30C4B8(&v99, v98, &qword_1ECC426B0, &qword_1DB50EEB0);
        v103 = 0u;
        v104 = 0u;
        v45 = a3;
        sub_1DB301D4C(v98, &v103);
        LOBYTE(v105) = 0;
        v47 = *(v29 + 2);
        v46 = *(v29 + 3);
        if (v47 >= v46 >> 1)
        {
          v29 = sub_1DB301BC0((v46 > 1), v47 + 1, 1, v29);
        }

        *(v29 + 2) = v47 + 1;
        v48 = &v29[40 * v47];
        v49 = v103;
        v50 = v104;
        v48[64] = v105;
        *(v48 + 2) = v49;
        *(v48 + 3) = v50;
        sub_1DB30623C(&v99, &qword_1ECC426B0, &qword_1DB50EEB0);
        *(v28 + 32) = v29;
        v51 = sub_1DB50AF20();
        if (os_log_type_enabled(v27, v51))
        {
          if (qword_1EE30EDD8 != -1)
          {
            swift_once();
          }

          v52 = off_1EE30EDE0;
          os_unfair_lock_lock(off_1EE30EDE0 + 5);
          os_unfair_lock_opaque_low = LOBYTE(v52[4]._os_unfair_lock_opaque);
          os_unfair_lock_unlock(v52 + 5);
          if (os_unfair_lock_opaque_low == 2)
          {
            LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
          }

          v54 = swift_allocObject();
          *(v54 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
          *&v103 = v28;
          *(&v103 + 1) = sub_1DB314CB0;
          *&v104 = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
          sub_1DB314864();
          v55 = sub_1DB50A5E0();
          v57 = v56;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
          v58 = swift_allocObject();
          *(v58 + 16) = v96;
          *(v58 + 56) = MEMORY[0x1E69E6158];
          *(v58 + 64) = sub_1DB31494C();
          *(v58 + 32) = v55;
          *(v58 + 40) = v57;
          sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v27, v51, v58);

          a3 = v91;
        }

        else
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v101);
      __swift_destroy_boxed_opaque_existential_0(v102);
LABEL_5:
      sub_1DB50AEF0();
      v107 = v103;
      v108 = v104;
      v109 = v105;
      v110 = v106;
      if (!*(&v104 + 1))
      {
        v23 = v111;
        break;
      }
    }
  }

  return v23;
}

char *sub_1DB4A190C(void *a1, __n128 a2)
{
  v3 = sub_1DB509B40();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 keyEnumerator];
  sub_1DB50AF00();
  sub_1DB4A1B24(v9);
  sub_1DB50B170();
  if (v26)
  {
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DB30C200(&v25, &v22);
      if (swift_dynamicCast())
      {
        v13 = v24;
        if (v24)
        {
          v14 = v23;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v10 = sub_1DB302404(0, *(v10 + 2) + 1, 1, v10);
          }

          v17 = *(v10 + 2);
          v16 = *(v10 + 3);
          v18 = v17 + 1;
          if (v17 >= v16 >> 1)
          {
            v20 = v17 + 1;
            v19 = sub_1DB302404((v16 > 1), v17 + 1, 1, v10);
            v18 = v20;
            v10 = v19;
          }

          *(v10 + 2) = v18;
          v12 = &v10[16 * v17];
          *(v12 + 4) = v21;
          *(v12 + 5) = v13;
        }
      }

      sub_1DB50B170();
    }

    while (v26);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  (*(v4 + 8))(v7, v3);
  return v10;
}

unint64_t sub_1DB4A1B24(__n128 a1)
{
  result = qword_1ECC46770;
  if (!qword_1ECC46770)
  {
    sub_1DB509B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46770);
  }

  return result;
}

void *sub_1DB4A1B7C(void *a1, uint64_t a2)
{
  v86 = a1;
  sub_1DB50AEE0();
  sub_1DB50AEF0();
  v82 = v78;
  v83 = v79;
  v84 = v80;
  v85 = v81;
  if (!*(&v79 + 1))
  {
    v67 = MEMORY[0x1E69E7CC8];
LABEL_41:

    return v67;
  }

  v67 = MEMORY[0x1E69E7CC8];
  v4 = &qword_1ECC45BE0;
  v70 = a2;
  while (1)
  {
    sub_1DB30C200(&v82, v77);
    sub_1DB30C200(&v84, v76);
    sub_1DB300B14(v77, &v78);
    sub_1DB336FD4(0, v4, 0x1E696AEC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = v4;
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v10 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50EE90;
      v12 = sub_1DB301BC0(0, 43, 0, MEMORY[0x1E69E7CC0]);
      v73 = MEMORY[0x1E69E6158];
      *&v71 = 0x697274532D6E6F4ELL;
      *(&v71 + 1) = 0xEF2079656B20676ELL;
      v78 = 0u;
      v79 = 0u;
      sub_1DB301D4C(&v71, &v78);
      LOBYTE(v80) = 0;
      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1DB301BC0((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v78;
      v17 = v79;
      v15[64] = v80;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      sub_1DB300B14(v77, &v71);
      sub_1DB30C4B8(&v71, v75, &qword_1ECC426B0, &qword_1DB50EEB0);
      v78 = 0u;
      v79 = 0u;
      sub_1DB301D4C(v75, &v78);
      LOBYTE(v80) = 0;
      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        v12 = sub_1DB301BC0((v18 > 1), v19 + 1, 1, v12);
      }

      sub_1DB30623C(&v71, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v12 + 2) = v19 + 1;
      v20 = &v12[40 * v19];
      v21 = v80;
      v22 = v79;
      *(v20 + 2) = v78;
      *(v20 + 3) = v22;
      v20[64] = v21;
      if (("NetworkReachability" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v73 = MEMORY[0x1E69E6158];
        *&v71 = 0xD00000000000001ALL;
        *(&v71 + 1) = 0x80000001DB530190;
        v78 = 0u;
        v79 = 0u;
        sub_1DB301D4C(&v71, &v78);
        LOBYTE(v80) = 0;
        v24 = *(v12 + 2);
        v23 = *(v12 + 3);
        if (v24 >= v23 >> 1)
        {
          v12 = sub_1DB301BC0((v23 > 1), v24 + 1, 1, v12);
        }

        *(v12 + 2) = v24 + 1;
        v25 = &v12[40 * v24];
        v26 = v78;
        v27 = v79;
        v25[64] = v80;
        *(v25 + 2) = v26;
        *(v25 + 3) = v27;
      }

      v73 = &type metadata for FoundationDictionary;
      v28 = v86;
      *&v71 = v86;
      sub_1DB30C4B8(&v71, v75, &qword_1ECC426B0, &qword_1DB50EEB0);
      v78 = 0u;
      v79 = 0u;
      v29 = v28;
      sub_1DB301D4C(v75, &v78);
      LOBYTE(v80) = 0;
      v31 = *(v12 + 2);
      v30 = *(v12 + 3);
      if (v31 >= v30 >> 1)
      {
        v12 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v12);
      }

      *(v12 + 2) = v31 + 1;
      v32 = &v12[40 * v31];
      v33 = v78;
      v34 = v79;
      v32[64] = v80;
      *(v32 + 2) = v33;
      *(v32 + 3) = v34;
      sub_1DB30623C(&v71, &qword_1ECC426B0, &qword_1DB50EEB0);
      *(v11 + 32) = v12;
      v35 = sub_1DB50AF20();
      if (os_log_type_enabled(v10, v35))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v36 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v36[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v36 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v38 = swift_allocObject();
        *(v38 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v78 = v11;
        *(&v78 + 1) = sub_1DB314CB0;
        *&v79 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v39 = sub_1DB50A5E0();
        v41 = v40;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_1DB50EE90;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = sub_1DB31494C();
        *(v42 + 32) = v39;
        *(v42 + 40) = v41;
        sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v10, v35, v42);

        a2 = v70;
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(v77);
      v4 = v9;
      goto LABEL_27;
    }

    v5 = v71;
    sub_1DB300B14(v76, &v71);
    *(&v79 + 1) = &type metadata for FoundationValue;
    *&v80 = &off_1F56FB6B0;
    *&v78 = swift_allocObject();
    sub_1DB30C200(&v71, (v78 + 16));
    v6 = sub_1DB50A650();
    sub_1DB33E4A4(v6, v7, &v78, a2, &v71);
    if (v2)
    {

      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(v77);
      sub_1DB3151CC(&v78);

      return v67;
    }

    v8 = *(&v71 + 1);
    if (!*(&v71 + 1))
    {

      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(v77);
      sub_1DB3151CC(&v78);
      sub_1DB4A2454(v71, 0, v72, v73, v74);
      goto LABEL_27;
    }

    v43 = v71;
    v64 = v72;
    v65 = v73;
    v66 = v74;
    sub_1DB314BBC(v72, v73, v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v71 = v67;
    v44 = v43;
    v46 = sub_1DB306160(v43, v8);
    v47 = v67[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      break;
    }

    if (v67[3] >= v49)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v69 = v45;
        sub_1DB3119D4();
        v45 = v69;
      }
    }

    else
    {
      v68 = v45;
      sub_1DB31A114(v49, isUniquelyReferenced_nonNull_native);
      v50 = sub_1DB306160(v44, v8);
      v52 = v51 & 1;
      v45 = v68;
      if ((v68 & 1) != v52)
      {
        goto LABEL_46;
      }

      v46 = v50;
    }

    v67 = v71;
    if (v45)
    {
      v53 = *(v71 + 56) + 24 * v46;
      v54 = *v53;
      v55 = *(v53 + 8);
      *v53 = v64;
      *(v53 + 8) = v65;
      v56 = *(v53 + 16);
      *(v53 + 16) = v66;
      sub_1DB31EB94(v54, v55, v56);

      sub_1DB31EB94(v64, v65, v66);

      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(v77);
    }

    else
    {
      *(v71 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v57 = (v67[6] + 16 * v46);
      *v57 = v44;
      v57[1] = v8;
      v58 = v67[7] + 24 * v46;
      *v58 = v64;
      *(v58 + 8) = v65;
      *(v58 + 16) = v66;
      sub_1DB31EB94(v64, v65, v66);

      __swift_destroy_boxed_opaque_existential_0(v76);
      __swift_destroy_boxed_opaque_existential_0(v77);
      v59 = v67[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_45;
      }

      v67[2] = v61;
    }

    v4 = &qword_1ECC45BE0;
    sub_1DB3151CC(&v78);
LABEL_27:
    sub_1DB50AEF0();
    v82 = v78;
    v83 = v79;
    v84 = v80;
    v85 = v81;
    if (!*(&v79 + 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:

  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

void sub_1DB4A2454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {

    sub_1DB31EB94(a3, a4, a5);
  }
}

void *Bag.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  return sub_1DB4A28D4(a1, &selRef_dictionaryForKey_, &unk_1ECC46780, &qword_1DB5142C0, sub_1DB3C8F68, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_URLForKey_, &qword_1ECC45828, &unk_1DB522590, sub_1DB3C8D2C, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_BOOLForKey_, &qword_1ECC46790, &unk_1DB5200B0, sub_1DB3C8C74, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_doubleForKey_, &qword_1ECC46798, &unk_1DB5225B0, sub_1DB3C8CD4, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_integerForKey_, &qword_1ECC467A0, &unk_1DB5200C0, sub_1DB3C8CA4, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_stringForKey_, &qword_1ECC467A8, &unk_1DB5225A0, sub_1DB3C8D04, a2);
}

{
  return sub_1DB4A28D4(a1, &selRef_arrayForKey_, &qword_1ECC467B0, &qword_1DB5200D0, sub_1DB3C8D30, a2);
}

void Bag.profile.getter(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 profile];
  v5 = sub_1DB50A650();
  v7 = v6;

  v8 = [v3 profileVersion];
  v9 = sub_1DB50A650();
  v11 = v10;

  *a1 = v5;
  a1[1] = v7;
  a1[2] = v9;
  a1[3] = v11;
}

JetCore::Bag::Profile __swiftcall Bag.Profile.init(name:version:)(Swift::String name, Swift::String version)
{
  *v2 = name;
  v2[1] = version;
  result.version = version;
  result.name = name;
  return result;
}

uint64_t Bag.Profile.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Bag.Profile.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Bag.Profile.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Bag.Profile.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void sub_1DB4A26D0(uint64_t a1)
{
  if (qword_1EE30ED30 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1EE30ED38 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB34FFDC((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
  qword_1ECC67CA8 = v2;
}

void *sub_1DB4A28D4@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = [*v6 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = swift_allocObject();
  result[2] = v11;
  result[3] = a5;
  result[4] = 0;
  *a6 = result;
  return result;
}

uint64_t sub_1DB4A29AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[3] = &type metadata for AMSKitBagFromJetEngineBag;
  a2[4] = sub_1DB4A29FC();
  *a2 = v3;

  return swift_unknownObjectRetain();
}

unint64_t sub_1DB4A29FC()
{
  result = qword_1ECC467B8[0];
  if (!qword_1ECC467B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC467B8);
  }

  return result;
}

uint64_t sub_1DB4A2A50@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

uint64_t _CodeByKind_OrNil.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness);
  v7 = sub_1DB50B120();
  v8 = *(*(v7 - 8) + 40);

  return v8(a4, a1, v7);
}

uint64_t _CodeByKind_OrNil.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_1DB50B120();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t _CodeByKind_OrNil.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_1DB50B120();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t _CodeByKind_OrNil.description.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1DB50B120();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  (*(v4 + 16))(v6, v1, v3, v9);
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v6, v3);
    return 7104878;
  }

  else
  {
    (*(v7 + 32))(v11, v6, AssociatedTypeWitness);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1DB50BA00();
    v12 = v14[0];
    (*(v7 + 8))(v11, AssociatedTypeWitness);
  }

  return v12;
}

uint64_t _CodeByKind_OrNil.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DB50B120();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v26 = &v24 - v10;
  type metadata accessor for CodeByKind(255, a2, a3, v11);
  v12 = sub_1DB50B120();
  v25 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness, v13);
  sub_1DB30BE90(a1, v29);
  swift_getWitnessTable();
  v16 = v30;
  v17 = sub_1DB50B150();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v19 = type metadata accessor for _CodeByKind_OrNil(0, a2, a3, v18);
    return (*(*(v19 - 8) + 8))(a4, v19);
  }

  else
  {
    v30 = a4;
    MEMORY[0x1EEE9AC00](v17);
    *(&v24 - 2) = a2;
    *(&v24 - 1) = a3;
    KeyPath = swift_getKeyPath();
    v22 = v26;
    sub_1DB4A2A50(sub_1DB4A4508, KeyPath, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v23, v26);

    __swift_destroy_boxed_opaque_existential_0(a1);
    (*(v25 + 8))(v15, v12);
    return (*(v27 + 40))(v30, v22, v28);
  }
}

uint64_t _CodeByKind_OrNil.init(_partiallyFrom:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = sub_1DB50B120();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v22 - v9;
  v12 = type metadata accessor for CodeByKind(255, a2, a3, v11);
  v13 = sub_1DB50B120();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness, v15);
  v18 = v24;
  sub_1DB30BE90(v24, v28);
  swift_getWitnessTable();
  Optional<A>.init(_partiallyFrom:)(v28, v12, v17);
  v26 = a2;
  v27 = a3;
  KeyPath = swift_getKeyPath();
  sub_1DB4A2A50(sub_1DB4019AC, KeyPath, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v20, v10);

  __swift_destroy_boxed_opaque_existential_0(v18);
  (*(v14 + 8))(v17, v13);
  return (*(v8 + 40))(v23, v10, v25);
}

uint64_t _CodeByKind_OrNil.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = type metadata accessor for CodeByKind(255, v4, v5, a4);
  v7 = sub_1DB50B120();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-v9];
  v14 = v4;
  v15 = v5;
  swift_getAssociatedTypeWitness();
  sub_1DB50B120();
  sub_1DB4A2A50(sub_1DB4A44F0, v13, MEMORY[0x1E69E73E0], v6, v11, v10);
  swift_getWitnessTable();
  sub_1DB50B130();
  return (*(v8 + 8))(v10, v7);
}

uint64_t _CodeByKind_OrNil._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for CodeByKind(255, v5, v6, a4);
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-v10];
  v16 = v5;
  v17 = v6;
  swift_getAssociatedTypeWitness();
  sub_1DB50B120();
  sub_1DB4A2A50(sub_1DB4A3AF8, v15, MEMORY[0x1E69E73E0], v7, v12, v11);
  WitnessTable = swift_getWitnessTable();
  Optional<A>._partiallyEncode(to:)(a1, v8, WitnessTable);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1DB4A39F8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return CodeByKind.init(wrappedValue:)(v9, a4);
}

BOOL static _CodeByKind_OrNil<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v26 - v9;
  v10 = sub_1DB50B120();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v26 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v26 - v15;
  v18 = *(v17 + 48);
  v30 = v11;
  v19 = *(v11 + 16);
  v19(&v26 - v15, a1, v10, v14);
  (v19)(&v16[v18], a2, v10);
  v20 = *(v8 + 48);
  if (v20(v16, 1, AssociatedTypeWitness) != 1)
  {
    (v19)(v31, v16, v10);
    if (v20(&v16[v18], 1, AssociatedTypeWitness) != 1)
    {
      v22 = v27;
      (*(v8 + 32))(v27, &v16[v18], AssociatedTypeWitness);
      v23 = v31;
      v24 = sub_1DB50A610();
      v25 = *(v8 + 8);
      v25(v22, AssociatedTypeWitness);
      v25(v23, AssociatedTypeWitness);
      (*(v30 + 8))(v16, v10);
      return (v24 & 1) != 0;
    }

    (*(v8 + 8))(v31, AssociatedTypeWitness);
LABEL_6:
    (*(v29 + 8))(v16, TupleTypeMetadata2);
    return 0;
  }

  if (v20(&v16[v18], 1, AssociatedTypeWitness) != 1)
  {
    goto LABEL_6;
  }

  (*(v30 + 8))(v16, v10);
  return 1;
}

uint64_t _CodeByKind_OrNil<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_1DB50B120();

  return sub_1DB50B140();
}

uint64_t _CodeByKind_OrNil<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1DB50BCF0();
  _CodeByKind_OrNil<>.hash(into:)(v5, a1, a2);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4A3FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1DB50BCF0();
  _CodeByKind_OrNil<>.hash(into:)(v6, a2, v4);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4A4078(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_1DB50B120();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB4A4104(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
        }

        if (v9)
        {
          if (v9 > 3)
          {
            LODWORD(v9) = 4;
          }

          if (v9 > 2)
          {
            if (v9 == 3)
            {
              LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v9) = *a1;
            }
          }

          else if (v9 == 1)
          {
            LODWORD(v9) = *a1;
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        return v8 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    return 0;
  }

  v15 = (*(v6 + 48))(a1);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DB4A42A4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v10 = 0;
    v11 = *(v8 + 64) + 1;
  }

  if (a3 <= v10)
  {
    goto LABEL_15;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v12))
    {
      v7 = 4;
      if (v10 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

LABEL_15:
    if (v10 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v7 = 1;
  if (v10 >= a2)
  {
LABEL_25:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v11] = 0;
    }

    else if (v7)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v9 >= 2)
    {
      v17 = *(v8 + 56);

      v17(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v14 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v14;
    v15 = 1;
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = (v14 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_39:
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v16 = v14 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_39;
  }

  if (v11 == 2)
  {
    *a1 = v16;
    if (v7 > 1)
    {
LABEL_43:
      if (v7 == 2)
      {
        *&a1[v11] = v15;
      }

      else
      {
        *&a1[v11] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v7 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v7)
  {
    a1[v11] = v15;
  }
}

JetCore::Account_optional __swiftcall AccountProvider.account(forUserID:)(Swift::String forUserID)
{
  v4 = v3;
  v8 = v1;
  v9 = v2;
  requirementFailure(_:file:line:)(sub_1DB4A479C, &v7, "JetCore/AccountProvider.swift", 29, 2, 80);
  *v4 = 0;
  result.value.base.super.isa = v5;
  result.is_nil = v6;
  return result;
}

void AccountProvider.onActiveAccountChange.getter(uint64_t a1)
{
  sub_1DB50B320();

  swift_getDynamicType();
  v1 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v1);

  MEMORY[0x1E1285C70](0xD00000000000002CLL, 0x80000001DB5301D0);
  sub_1DB50B580();
  __break(1u);
}

uint64_t AccountProviderActiveAccountChange.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4A46F0(uint64_t a1, uint64_t a2)
{
  sub_1DB50B320();

  swift_getDynamicType();
  v2 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v2);

  MEMORY[0x1E1285C70](0xD000000000000028, 0x80000001DB530200);
  return 60;
}

unint64_t sub_1DB4A47AC()
{
  result = qword_1ECC46840[0];
  if (!qword_1ECC46840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC46840);
  }

  return result;
}

uint64_t EmptyActionImplementation.perform(_:asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  return v0;
}

uint64_t sub_1DB4A48D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  return v0;
}

uint64_t sub_1DB4A495C(char a1, void (*a2)(uint64_t *))
{
  v5 = v2[5];
  ObjectType = swift_getObjectType();
  v7 = v2[3];
  v12 = v2[2];
  v13 = v7;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  Preferences.subscript.getter(&v12, ObjectType, v8, v5, &v14);

  v10 = v14;
  if (!v14)
  {
    if ((a1 & 1) == 0)
    {
      return result;
    }

    v10 = MEMORY[0x1E69E7CC8];
  }

  v15 = v10;
  a2(&v15);
  v11 = v2[2];
  v13 = v2[3];
  v14 = v15;
  v12 = v11;

  return Preferences.subscript.setter(&v14, &v12, ObjectType, v8, v5);
}

uint64_t sub_1DB4A4A60@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  ObjectType = swift_getObjectType();
  v7 = v2[3];
  v18[0] = v2[2];
  v18[1] = v7;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  Preferences.subscript.getter(v18, ObjectType, v8, v5, &v19);

  v10 = v19;
  if (!v19)
  {
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (!*(v10 + 16))
  {

    goto LABEL_7;
  }

  v15 = sub_1DB306160(v13, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
LABEL_7:
    *a2 = 0u;
    a2[1] = 0u;
  }

  sub_1DB300B14(*(v10 + 56) + 32 * v15, a2);
}

uint64_t sub_1DB4A4B88(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  sub_1DB301CDC(a3, v10);
  return sub_1DB30D454(v10, v6, v8);
}

uint64_t sub_1DB4A4C1C(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  sub_1DB30F708(v4, v5, v7);

  return sub_1DB301DBC(v7);
}

uint64_t sub_1DB4A4C9C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1DB4A4CE0(uint64_t a1, void *a2)
{
  sub_1DB4A495C(1, sub_1DB4A5028);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_1DB301DBC(a1);
}

void (*sub_1DB4A4D48(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x98uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 144) = v2;
  sub_1DB30BE90(a2, v5);
  sub_1DB4A4A60(a2, (v6 + 80));
  return sub_1DB4A4DD4;
}

void sub_1DB4A4DD4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 80;
  if (a2)
  {
    sub_1DB301CDC(*a1 + 80, v2 + 112);
    v4 = sub_1DB2FEA0C(v2, v2 + 40);
    MEMORY[0x1EEE9AC00](v4);
    sub_1DB4A495C(1, sub_1DB4A5020);
    __swift_destroy_boxed_opaque_existential_0((v2 + 40));
    sub_1DB301DBC(v2 + 112);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1DB4A495C(1, sub_1DB4A5028);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  sub_1DB301DBC(v3);
  free(v2);
}

uint64_t sub_1DB4A4F34()
{
  v1 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

void *Preferences.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  type metadata accessor for NestedPreferences();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v3;
  v7[5] = a3;

  swift_unknownObjectRetain();
  return v7;
}

uint64_t JSONContext.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1DB4A5A4C(a1, a2, sub_1DB31485C, a3);
}

{
  return sub_1DB4A5A4C(a1, a2, sub_1DB314CB0, a3);
}

JetCore::JSONContext __swiftcall JSONContext.init(userInfo:)(Swift::OpaquePointer userInfo)
{
  v60 = v1;
  v71 = sub_1DB50B560();
  v3 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44920, &qword_1DB516B68);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v59 - v12;
  v75 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F88, &qword_1DB511080);
  sub_1DB50A4F0();
  v13 = 0;
  v63 = v3;
  rawValue = userInfo._rawValue;
  v16 = *(userInfo._rawValue + 8);
  v15 = userInfo._rawValue + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v61 = v3 + 16;
  v69 = v5;
  v70 = (v3 + 32);
  v21 = (v3 + 8);
  v22 = v10;
  v65 = v20;
  v66 = v21;
  v68 = v10;
  while (v19)
  {
    v25 = v13;
LABEL_16:
    v29 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v30 = v29 | (v25 << 6);
    v32 = v63;
    v31 = rawValue;
    v33 = v62;
    v34 = v71;
    (*(v63 + 16))(v62, rawValue[6] + *(v63 + 72) * v30, v71);
    sub_1DB300B14(v31[7] + 32 * v30, v74);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44918, &qword_1DB518DE0);
    v36 = *(v35 + 48);
    v37 = *(v32 + 32);
    v22 = v68;
    v37(v68, v33, v34);
    sub_1DB30C200(v74, (v22 + v36));
    (*(*(v35 - 8) + 56))(v22, 0, 1, v35);
    v28 = v67;
    v5 = v69;
LABEL_17:
    sub_1DB4A60B8(v22, v28);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44918, &qword_1DB518DE0);
    if ((*(*(v38 - 8) + 48))(v28, 1, v38) == 1)
    {

      *v60 = v75;
      return result;
    }

    v39 = *(v38 + 48);
    (*v70)(v5, v28, v71);
    sub_1DB30C200((v28 + v39), v74);
    v40 = sub_1DB50B550();
    v42 = v41;
    sub_1DB300B14(v74, v73);
    v43 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v43;
    v75 = 0x8000000000000000;
    v46 = sub_1DB306160(v40, v42);
    v47 = *(v43 + 16);
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_32;
    }

    v50 = v45;
    if (*(v43 + 24) >= v49)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v45)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1DB3112DC();
        if (v50)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1DB319570(v49, isUniquelyReferenced_nonNull_native);
      v51 = sub_1DB306160(v40, v42);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_34;
      }

      v46 = v51;
      if (v50)
      {
LABEL_4:

        v23 = v72;
        v24 = (v72[7] + 32 * v46);
        __swift_destroy_boxed_opaque_existential_0(v24);
        sub_1DB30C200(v73, v24);
        __swift_destroy_boxed_opaque_existential_0(v74);
        v5 = v69;
        (*v66)(v69, v71);
        goto LABEL_5;
      }
    }

    v23 = v72;
    v72[(v46 >> 6) + 8] |= 1 << v46;
    v53 = (v23[6] + 16 * v46);
    *v53 = v40;
    v53[1] = v42;
    sub_1DB30C200(v73, (v23[7] + 32 * v46));
    __swift_destroy_boxed_opaque_existential_0(v74);
    v5 = v69;
    (*v66)(v69, v71);
    v54 = v23[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_33;
    }

    v23[2] = v56;
LABEL_5:

    v75 = v23;
    v22 = v68;
    v20 = v65;
  }

  if (v20 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = v20;
  }

  v27 = v26 - 1;
  v28 = v67;
  while (1)
  {
    v25 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44918, &qword_1DB518DE0);
      (*(*(v57 - 8) + 56))(v22, 1, 1, v57);
      v19 = 0;
      v13 = v27;
      goto LABEL_17;
    }

    v19 = *&v15[8 * v25];
    ++v13;
    if (v19)
    {
      v13 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result.storage._rawValue = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t JSONContext.Property.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t JSONContext.Property.codingUserInfoKey.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43510, &qword_1DB5118D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  v7 = *v2;
  v8 = v2[1];

  sub_1DB50B540();
  v9 = sub_1DB50B560();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v6, v9);
  }

  sub_1DB30623C(v6, &qword_1ECC43510, &qword_1DB5118D8);
  v12[2] = 0;
  v12[3] = 0xE000000000000000;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000012, 0x80000001DB52A570);
  v12[0] = v7;
  v12[1] = v8;
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD00000000000001ALL, 0x80000001DB52A590);
  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t JSONContext.addingValue<A>(_:forProperty:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  *a4 = *v4;
  v11[3] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);

  return sub_1DB30D454(v11, v7, v8);
}

JetCore::JSONContext __swiftcall JSONContext.init()()
{
  v1 = v0;
  result.storage._rawValue = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  v1->storage._rawValue = result.storage._rawValue;
  return result;
}

uint64_t JSONContext.removingValue<A>(forProperty:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = *v2;

  sub_1DB30F708(v3, v4, v6);
  return sub_1DB30623C(v6, &qword_1ECC426B0, &qword_1DB50EEB0);
}

uint64_t JSONContext.Property.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JSONContext.Property.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static JSONContext.Property.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DB50BA30();
  }
}

uint64_t sub_1DB4A5A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1DB50B120();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  v15 = *v5;
  if (*(v15 + 16) && (v17 = *a1, v16 = a1[1], v18 = sub_1DB306160(v17, v16), (v19 & 1) != 0))
  {
    sub_1DB300B14(*(v15 + 56) + 32 * v18, &v52);
    sub_1DB30C200(&v52, v57);
    sub_1DB300B14(v57, &v52);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v57);
      v20 = *(a2 - 8);
      v21 = *(v20 + 56);
      v21(v14, 0, 1, a2);
      (*(v20 + 32))(a5, v14, a2);
      return (v21)(a5, 0, 1, a2);
    }

    else
    {
      v24 = *(a2 - 8);
      v25 = *(v24 + 56);
      v49 = v24 + 56;
      v50 = v25;
      v25(v14, 1, 1, a2);
      (*(v11 + 8))(v14, v10);
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v26 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1DB50F8D0;
      v56 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v28._object = 0x80000001DB529860;
      v28._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v28);
      v55[3] = type metadata accessor for JSONContext.Property(0, a2, v29, v30);
      v55[0] = v17;
      v55[1] = v16;
      sub_1DB301CDC(v55, v51);
      v52 = 0u;
      v53 = 0u;

      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v31 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
        v56 = v31;
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v34 = &v31[40 * v33];
      v35 = v52;
      v36 = v53;
      v34[64] = v54;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v56 = v31;
      sub_1DB30623C(v55, &qword_1ECC426B0, &qword_1DB50EEB0);
      v37._countAndFlagsBits = 96;
      v37._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      *(v27 + 32) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v38 = swift_allocObject();
      v48 = xmmword_1DB50EE90;
      *(v38 + 16) = xmmword_1DB50EE90;
      v39 = MEMORY[0x1E69E6158];
      *(&v53 + 1) = MEMORY[0x1E69E6158];
      *&v52 = 0xD000000000000027;
      *(&v52 + 1) = 0x80000001DB5295C0;
      *(v38 + 48) = 0u;
      *(v38 + 32) = 0u;
      sub_1DB301D4C(&v52, v38 + 32);
      *(v38 + 64) = 0;
      *(v27 + 40) = v38;
      v40 = sub_1DB50AF40();
      if (os_log_type_enabled(v26, v40))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v41 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v41[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v41 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v43 = swift_allocObject();
        *(v43 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v52 = v27;
        *(&v52 + 1) = a4;
        *&v53 = v43;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v44 = sub_1DB50A5E0();
        v46 = v45;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v47 = swift_allocObject();
        *(v47 + 16) = v48;
        *(v47 + 56) = v39;
        *(v47 + 64) = sub_1DB31494C();
        *(v47 + 32) = v44;
        *(v47 + 40) = v46;
        sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v26, v40, v47);
      }

      __swift_destroy_boxed_opaque_existential_0(v57);
      return v50(a5, 1, 1, a2);
    }
  }

  else
  {
    v23 = *(*(a2 - 8) + 56);

    return v23(a5, 1, 1, a2, v12);
  }
}

uint64_t sub_1DB4A60B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44920, &qword_1DB516B68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB4A6138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1DB4A6174@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1DB30EDEC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB311750();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1DB50B560();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1DB30C200((*(v9 + 56) + 32 * v7), a2);
    sub_1DB30FF10(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t Dictionary<>.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = sub_1DB50B120();
  *&v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = sub_1DB50B560();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = a1[1];
  v55 = *a1;
  v56 = v15;
  v50 = a3;
  v18 = type metadata accessor for JSONContext.Property(0, a3, v16, v17);
  JSONContext.Property.codingUserInfoKey.getter(v13);
  if (*(a2 + 16) && (v19 = sub_1DB30EDEC(v13), (v20 & 1) != 0))
  {
    sub_1DB300B14(*(a2 + 56) + 32 * v19, &v52);
    (*(v11 + 8))(v13, v10);
    sub_1DB30C200(&v52, v59);
    sub_1DB300B14(v59, &v52);
    v21 = v50;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v59);
      v22 = *(v21 - 8);
      v23 = *(v22 + 56);
      v23(v9, 0, 1, v21);
      v24 = v49;
      (*(v22 + 32))(v49, v9, v21);
      return (v23)(v24, 0, 1, v21);
    }

    else
    {
      v26 = *(*(v21 - 8) + 56);
      v26(v9, 1, 1, v21);
      (*(v48 + 8))(v9, v7);
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v27 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1DB50F8D0;
      v58 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
      v29._object = 0x80000001DB529860;
      v29._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v57 = v18;
      v55 = v14;
      v56 = v15;
      sub_1DB301CDC(&v55, v51);
      v52 = 0u;
      v53 = 0u;

      sub_1DB301D4C(v51, &v52);
      v54 = 0;
      v30 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1DB301BC0(0, *(v30 + 2) + 1, 1, v30);
        v58 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v52;
      v35 = v53;
      v33[64] = v54;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v58 = v30;
      sub_1DB30623C(&v55, &qword_1ECC426B0, &qword_1DB50EEB0);
      v36._countAndFlagsBits = 96;
      v36._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *(v28 + 32) = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v37 = swift_allocObject();
      v48 = xmmword_1DB50EE90;
      *(v37 + 16) = xmmword_1DB50EE90;
      v38 = MEMORY[0x1E69E6158];
      *(&v53 + 1) = MEMORY[0x1E69E6158];
      *&v52 = 0xD000000000000027;
      *(&v52 + 1) = 0x80000001DB5295C0;
      *(v37 + 48) = 0u;
      *(v37 + 32) = 0u;
      sub_1DB301D4C(&v52, v37 + 32);
      *(v37 + 64) = 0;
      *(v28 + 40) = v37;
      v39 = sub_1DB50AF40();
      if (os_log_type_enabled(v27, v39))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v40 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v40[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v40 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v42 = swift_allocObject();
        *(v42 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v52 = v28;
        *(&v52 + 1) = sub_1DB31485C;
        *&v53 = v42;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v43 = sub_1DB50A5E0();
        v45 = v44;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v46 = swift_allocObject();
        *(v46 + 16) = v48;
        *(v46 + 56) = v38;
        *(v46 + 64) = sub_1DB31494C();
        *(v46 + 32) = v43;
        *(v46 + 40) = v45;
        sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v27, v39, v46);
      }

      v47 = v50;
      __swift_destroy_boxed_opaque_existential_0(v59);
      return (v26)(v49, 1, 1, v47);
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    return (*(*(v50 - 8) + 56))(v49, 1, 1);
  }
}

uint64_t sub_1DB4A695C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = a2[1];
  v9[0] = *a2;
  v9[1] = v7;

  Dictionary<>.subscript.getter(v9, v6, v5, a4);
}

uint64_t sub_1DB4A69D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = sub_1DB50B120();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  v12 = *a3;
  v11 = a3[1];
  (*(v13 + 16))(v15 - v9, a1, v8);
  v15[0] = v12;
  v15[1] = v11;

  return Dictionary<>.subscript.setter(v10, v15, v6);
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *&v67 = sub_1DB50B560();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v62 - v17;
  v20 = *a2;
  v19 = a2[1];
  (*(v9 + 16))(v11, a1, v8, v16);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    v21 = *(v9 + 8);
    v21(v11, v8);
    *&v75 = v20;
    *(&v75 + 1) = v19;
    type metadata accessor for JSONContext.Property(0, a3, v22, v23);
    JSONContext.Property.codingUserInfoKey.getter(v7);

    v24 = sub_1DB4A6174(v7, &v69);
    (v21)(a1, v8, v24);
    (*(v66 + 8))(v7, v67);
    return sub_1DB30623C(&v69, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  v62 = v9;
  v63 = v8;
  v64 = a1;
  (*(v12 + 32))(v18, v11, a3);
  MetatypeMetadata = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v73);
  (*(v12 + 16))(boxed_opaque_existential_0, v18, a3);
  v68[0] = v20;
  v68[1] = v19;
  v28 = type metadata accessor for JSONContext.Property(0, a3, v26, v27);
  JSONContext.Property.codingUserInfoKey.getter(v7);
  sub_1DB381FDC(&v73, v7, &v69);
  (*(v66 + 8))(v7, v67);
  v29 = v12;
  if (!*(&v70 + 1))
  {

    (*(v62 + 8))(v64, v63);
    (*(v12 + 8))(v18, a3);
    return sub_1DB30623C(&v69, &qword_1ECC426B0, &qword_1DB50EEB0);
  }

  sub_1DB30C200(&v69, &v75);
  sub_1DB300B14(&v75, &v69);
  v30 = v65;
  if (swift_dynamicCast())
  {

    (*(v62 + 8))(v64, v63);
    __swift_destroy_boxed_opaque_existential_0(&v75);
    v31 = *(v29 + 8);
    v31(v18, a3);
    return (v31)(v30, a3);
  }

  else
  {
    if (qword_1ECC42218 != -1)
    {
      swift_once();
    }

    v33 = qword_1ECC466E8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1DB511620;
    v72 = sub_1DB301BC0(0, 33, 0, MEMORY[0x1E69E7CC0]);
    v35._countAndFlagsBits = 0xD00000000000001FLL;
    v35._object = 0x80000001DB5302A0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    MetatypeMetadata = v28;
    *&v73 = v20;
    *(&v73 + 1) = v19;
    sub_1DB301CDC(&v73, v68);
    v69 = 0u;
    v70 = 0u;
    sub_1DB301D4C(v68, &v69);
    v71 = 0;
    v36 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1DB301BC0(0, *(v36 + 2) + 1, 1, v36);
    }

    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_1DB301BC0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[40 * v38];
    v40 = v69;
    v41 = v70;
    v39[64] = v71;
    *(v39 + 2) = v40;
    *(v39 + 3) = v41;
    v72 = v36;
    sub_1DB30623C(&v73, &qword_1ECC426B0, &qword_1DB50EEB0);
    v42._countAndFlagsBits = 96;
    v42._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v42);
    *(v34 + 32) = v72;
    v72 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v43._countAndFlagsBits = 0xD000000000000019;
    v43._object = 0x80000001DB5302C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v43);
    __swift_project_boxed_opaque_existential_1(&v75, v76);
    DynamicType = swift_getDynamicType();
    MetatypeMetadata = swift_getMetatypeMetadata();
    *&v73 = DynamicType;
    sub_1DB301CDC(&v73, v68);
    v69 = 0u;
    v70 = 0u;
    sub_1DB301D4C(v68, &v69);
    v71 = 0;
    v45 = v72;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_1DB301BC0(0, *(v45 + 2) + 1, 1, v45);
    }

    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_1DB301BC0((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v47 + 1;
    v48 = &v45[40 * v47];
    v49 = v69;
    v50 = v70;
    v48[64] = v71;
    *(v48 + 2) = v49;
    *(v48 + 3) = v50;
    v72 = v45;
    sub_1DB30623C(&v73, &qword_1ECC426B0, &qword_1DB50EEB0);
    v51._countAndFlagsBits = 11838;
    v51._object = 0xE200000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v51);
    *(v34 + 40) = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v52 = swift_allocObject();
    v67 = xmmword_1DB50EE90;
    *(v52 + 16) = xmmword_1DB50EE90;
    v53 = MEMORY[0x1E69E6158];
    *(&v70 + 1) = MEMORY[0x1E69E6158];
    *&v69 = 0xD000000000000018;
    *(&v69 + 1) = 0x80000001DB5302E0;
    *(v52 + 48) = 0u;
    *(v52 + 32) = 0u;
    sub_1DB301D4C(&v69, v52 + 32);
    *(v52 + 64) = 0;
    *(v34 + 48) = v52;
    v54 = sub_1DB50AF40();
    if (os_log_type_enabled(v33, v54))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v55 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v55[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v55 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v57 = swift_allocObject();
      *(v57 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v69 = v34;
      *(&v69 + 1) = sub_1DB314CB0;
      *&v70 = v57;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v58 = sub_1DB50A5E0();
      v60 = v59;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v61 = swift_allocObject();
      *(v61 + 16) = v67;
      *(v61 + 56) = v53;
      *(v61 + 64) = sub_1DB31494C();
      *(v61 + 32) = v58;
      *(v61 + 40) = v60;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v33, v54, v61);
    }

    (*(v62 + 8))(v64, v63);
    __swift_destroy_boxed_opaque_existential_0(&v75);
    return (*(v29 + 8))(v18, a3);
  }
}

void (*Dictionary<>.subscript.modify(uint64_t **a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v10 = sub_1DB50B120();
  v9[4] = v10;
  v11 = *(v10 - 8);
  v9[5] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[6] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[6] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v16 = *a2;
  v15 = a2[1];
  v9[7] = v14;
  v9[8] = v16;
  v9[9] = v15;
  *v9 = v16;
  v9[1] = v15;
  v17 = *v3;

  Dictionary<>.subscript.getter(a2, v17, a3, v14);
  return sub_1DB4A7598;
}

void sub_1DB4A7598(uint64_t **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[8];
    v3 = v2[9];
    v6 = v2[6];
    v5 = v2[7];
    v7 = v2[4];
    v8 = v2[5];
    v9 = v2[2];
    (*(v8 + 16))(v6, v5, v7);
    v10[0] = v4;
    v10[1] = v3;
    Dictionary<>.subscript.setter(v6, v10, v9);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v6 = v2[6];
    v5 = v2[7];
    Dictionary<>.subscript.setter(v5, v2, v2[2]);
  }

  free(v5);
  free(v6);

  free(v2);
}

void *_sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43510, &qword_1DB5118D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v79 - v3;
  v5 = sub_1DB50B560();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v93 = &v79 - v9;
  v10 = *a1;
  v107 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46948, &qword_1DB520558);
  sub_1DB50A4F0();
  v11 = 0;
  v13 = v10 + 64;
  v12 = *(v10 + 64);
  v92 = v10;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v94 = (v6 + 48);
  v87 = (v6 + 32);
  v90 = (v6 + 16);
  v81 = v6;
  v84 = (v6 + 8);
  v86 = "This may indicate a bug." & 0x2F00000000000000;
  v83 = 0x80000001DB530300;
  v85 = "Could not coerce " & 0x2F00000000000000;
  v82 = 0x80000001DB530320;
  v91 = xmmword_1DB50EE90;
  v89 = v4;
  v88 = v5;
  v80 = v17;
  while (v16)
  {
    v18 = v11;
LABEL_16:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v18 << 6);
    v23 = (*(v92 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    sub_1DB300B14(*(v92 + 56) + 32 * v22, v101);
    *&v102 = v25;
    *(&v102 + 1) = v24;
    sub_1DB30C200(v101, &v103);

LABEL_17:
    v105 = v102;
    v106[0] = v103;
    v106[1] = v104;
    v26 = *(&v102 + 1);
    if (!*(&v102 + 1))
    {

      return v107;
    }

    v27 = v105;
    sub_1DB30C200(v106, v101);

    sub_1DB50B540();
    if ((*v94)(v4, 1, v5) == 1)
    {
      sub_1DB30623C(v4, &qword_1ECC43510, &qword_1DB5118D8);
      if (qword_1ECC42218 != -1)
      {
        swift_once();
      }

      v95 = qword_1ECC466E8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v28 = swift_allocObject();
      *(v28 + 16) = v91;
      v29 = sub_1DB301BC0(0, 41, 0, MEMORY[0x1E69E7CC0]);
      if (v86 != 0x2000000000000000)
      {
        v100 = MEMORY[0x1E69E6158];
        v98 = 0xD000000000000011;
        v99 = v83;
        v102 = 0u;
        v103 = 0u;
        sub_1DB301D4C(&v98, &v102);
        LOBYTE(v104) = 0;
        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        if (v31 >= v30 >> 1)
        {
          v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
        }

        *(v29 + 2) = v31 + 1;
        v32 = &v29[40 * v31];
        v33 = v102;
        v34 = v103;
        v32[64] = v104;
        *(v32 + 2) = v33;
        *(v32 + 3) = v34;
        v4 = v89;
      }

      v100 = MEMORY[0x1E69E6158];
      v98 = v27;
      v99 = v26;
      sub_1DB301CDC(&v98, v97);
      v102 = 0u;
      v103 = 0u;
      sub_1DB301D4C(v97, &v102);
      LOBYTE(v104) = 0;
      v36 = *(v29 + 2);
      v35 = *(v29 + 3);
      if (v36 >= v35 >> 1)
      {
        v29 = sub_1DB301BC0((v35 > 1), v36 + 1, 1, v29);
      }

      *(v29 + 2) = v36 + 1;
      v37 = &v29[40 * v36];
      v38 = v102;
      v39 = v103;
      v37[64] = v104;
      *(v37 + 2) = v38;
      *(v37 + 3) = v39;
      sub_1DB30623C(&v98, &qword_1ECC426B0, &qword_1DB50EEB0);
      if (v85 != 0x2000000000000000)
      {
        v100 = MEMORY[0x1E69E6158];
        v98 = 0xD000000000000017;
        v99 = v82;
        v102 = 0u;
        v103 = 0u;
        sub_1DB301D4C(&v98, &v102);
        LOBYTE(v104) = 0;
        v41 = *(v29 + 2);
        v40 = *(v29 + 3);
        if (v41 >= v40 >> 1)
        {
          v29 = sub_1DB301BC0((v40 > 1), v41 + 1, 1, v29);
        }

        *(v29 + 2) = v41 + 1;
        v42 = &v29[40 * v41];
        v43 = v102;
        v44 = v103;
        v42[64] = v104;
        *(v42 + 2) = v43;
        *(v42 + 3) = v44;
      }

      *(v28 + 32) = v29;
      v45 = sub_1DB50AF40();
      if (os_log_type_enabled(v95, v45))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v46 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v46[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v46 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v48 = swift_allocObject();
        *(v48 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v102 = v28;
        *(&v102 + 1) = sub_1DB314CB0;
        *&v103 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v49 = sub_1DB50A5E0();
        v51 = v50;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v52 = swift_allocObject();
        *(v52 + 16) = v91;
        *(v52 + 56) = MEMORY[0x1E69E6158];
        *(v52 + 64) = sub_1DB31494C();
        *(v52 + 32) = v49;
        *(v52 + 40) = v51;
        sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v95, v45, v52);

        __swift_destroy_boxed_opaque_existential_0(v101);
        v4 = v89;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v101);
      }

      v5 = v88;
    }

    else
    {

      v53 = v93;
      (*v87)(v93, v4, v5);
      v54 = *v90;
      v55 = v96;
      (*v90)(v96, v53, v5);
      sub_1DB300B14(v101, &v102);
      v56 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v56;
      v58 = sub_1DB30EDEC(v55);
      v60 = *(v56 + 16);
      v61 = (v59 & 1) == 0;
      v62 = __OFADD__(v60, v61);
      v63 = v60 + v61;
      if (v62)
      {
        goto LABEL_50;
      }

      v64 = v59;
      if (*(v56 + 24) >= v63)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_42;
        }

        v69 = v58;
        sub_1DB311750();
        v58 = v69;
        v66 = v98;
        if ((v64 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_43:
        v67 = (v66[7] + 32 * v58);
        __swift_destroy_boxed_opaque_existential_0(v67);
        sub_1DB30C200(&v102, v67);
        v68 = *v84;
        (*v84)(v96, v5);
        v68(v93, v5);
        __swift_destroy_boxed_opaque_existential_0(v101);
        v107 = v66;
      }

      else
      {
        sub_1DB319D74(v63, isUniquelyReferenced_nonNull_native);
        v58 = sub_1DB30EDEC(v96);
        if ((v64 & 1) != (v65 & 1))
        {
          goto LABEL_52;
        }

LABEL_42:
        v66 = v98;
        if (v64)
        {
          goto LABEL_43;
        }

LABEL_46:
        v70 = v13;
        v71 = v4;
        v66[(v58 >> 6) + 8] |= 1 << v58;
        v72 = v81;
        v73 = v58;
        v74 = v96;
        v54(v66[6] + *(v81 + 72) * v58, v96, v5);
        sub_1DB30C200(&v102, (v66[7] + 32 * v73));
        v75 = *(v72 + 8);
        v75(v74, v5);
        v75(v93, v5);
        __swift_destroy_boxed_opaque_existential_0(v101);
        v76 = v66[2];
        v62 = __OFADD__(v76, 1);
        v77 = v76 + 1;
        if (v62)
        {
          goto LABEL_51;
        }

        v66[2] = v77;
        v107 = v66;
        v4 = v71;
        v13 = v70;
        v17 = v80;
      }
    }
  }

  if (v17 <= v11 + 1)
  {
    v19 = v11 + 1;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v16 = 0;
      v103 = 0u;
      v104 = 0u;
      v11 = v20;
      v102 = 0u;
      goto LABEL_17;
    }

    v16 = *(v13 + 8 * v18);
    ++v11;
    if (v16)
    {
      v11 = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

unint64_t MetricsError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 2)
  {
    if (!*(v0 + 16))
    {
      v14 = 0;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x7320746F6E6E6143, 0xED00002074726174);
      MEMORY[0x1E1285C70](v1, v2);
      v4 = " without starting it first";
      v5 = 0xD00000000000002ALL;
      goto LABEL_9;
    }

    if (v3 == 1)
    {
      sub_1DB50B320();

      v14 = 0x6520746F6E6E6143;
      MEMORY[0x1E1285C70](v1, v2);
      v4 = "No end(s) found for ";
      v5 = 0xD00000000000001ALL;
LABEL_9:
      v7 = v4 | 0x8000000000000000;
LABEL_11:
      MEMORY[0x1E1285C70](v5, v7);
      return v14;
    }

    sub_1DB50B320();

    v6 = 0xD000000000000014;
LABEL_13:
    v14 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46950, &qword_1DB520560);
    sub_1DB4A841C();
    sub_1DB301E30();
    v9 = sub_1DB50A900();
    MEMORY[0x1E1285C70](v9);

    return v14;
  }

  if (v3 == 3)
  {
    sub_1DB50B320();

    v14 = 0xD000000000000010;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46950, &qword_1DB520560);
    sub_1DB4A841C();
    sub_1DB301E30();
    v8 = sub_1DB50A900();
    MEMORY[0x1E1285C70](v8);

    v5 = 0x73696D2065726120;
    v7 = 0xEC000000676E6973;
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    sub_1DB50B320();

    v6 = 0xD00000000000001CLL;
    goto LABEL_13;
  }

  if (v1 <= 1)
  {
    v11 = v1 | v2;
    v12 = 0xD000000000000031;
    v13 = 0xD00000000000002ELL;
  }

  else
  {
    v11 = v1 ^ 2 | v2;
    v12 = 0xD00000000000003FLL;
    v13 = 0xD00000000000004ELL;
    if (!(v1 ^ 3 | v2))
    {
      v13 = 0xD00000000000002BLL;
    }
  }

  if (v11)
  {
    return v13;
  }

  else
  {
    return v12;
  }
}

unint64_t sub_1DB4A841C()
{
  result = qword_1ECC46958[0];
  if (!qword_1ECC46958[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC46950, &qword_1DB520560);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC46958);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7JetCore12MetricsErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DB4A84A4(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DB4A8564()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1DB50B330();
  swift_getAssociatedConformanceWitness();
  return sub_1DB50B2B0();
}

uint64_t sub_1DB4A8688()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1DB4A86F8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1DB4A8730(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 112) - 8) + 32))(v2 + *(*v2 + 128), a1);
  return v2;
}

uint64_t sub_1DB4A88EC()
{
  (*(*(*(*v0 + 112) - 8) + 8))(v0 + *(*v0 + 128));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t DiffableLens.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v2 + 96))(v5);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DiffableLens.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v3 + 96))(v8);
  swift_getAtKeyPath();
  (*(v7 + 8))(v10, v6);
  v12[0] = v12[1];
  return ReadOnlyLens.init(_:)(v12, *(v5 + *MEMORY[0x1E69E77B0] + 8), a3);
}

uint64_t DiffableLens.hash(into:)(uint64_t a1)
{
  (*(**v1 + 88))(v3);
  _s7JetCore15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1DB314BE8(v3);
}

uint64_t static DiffableLens.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 88))(v6);
  (*(*v2 + 88))(v5, v3);
  LOBYTE(v2) = MEMORY[0x1E1286770](v6, v5);
  sub_1DB314BE8(v5);
  sub_1DB314BE8(v6);
  return v2 & 1;
}

uint64_t DiffableLens.description.getter(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(**v1 + 96))(v2);
  return sub_1DB50A6C0();
}

uint64_t DiffableLens.hashValue.getter()
{
  v2[9] = *v0;
  sub_1DB50BCF0();
  DiffableLens.hash(into:)(v2);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4A8E80(uint64_t a1)
{
  sub_1DB50BCF0();
  DiffableLens.hash(into:)(v2);
  return sub_1DB50BD30();
}

uint64_t DiffableLens<A>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  return sub_1DB4A8FD4(a1, a2, sub_1DB4A9274, x8_0);
}

{
  return sub_1DB4A8FD4(a1, a2, sub_1DB4A9274, x8_0);
}

uint64_t DiffableLens<A>.init(_:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AnyComponentModelValueBox(0);
  v4 = swift_allocObject();
  result = sub_1DB2FEA0C(a1, v4 + 16);
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for AnyComponentModelValueBox(uint64_t a1)
{
  result = qword_1ECC46A60;
  if (!qword_1ECC46A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB4A8FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *)@<X4>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(0, v9);
  (*(v8 + 16))(v11, a1, a2);
  v13 = a3(v11);
  result = (*(v8 + 8))(a1, a2);
  *a4 = v13;
  return result;
}

uint64_t sub_1DB4A9184(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB4A9218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4A9280()
{
  v0 = sub_1DB509E00();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB509DF0();
  v4 = sub_1DB509DE0();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_1ECC67CB0 = v4;
  *algn_1ECC67CB8 = v6;
  return result;
}

uint64_t sub_1DB4A9360(char *a1, int a2)
{
  v23 = a2;
  v3 = sub_1DB509E00();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB509CA0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v20 = &v19 - v14;
  if (qword_1ECC422B0 != -1)
  {
    swift_once();
  }

  sub_1DB509BD0();
  sub_1DB509BD0();
  v15 = *(v7 + 8);
  v15(v9, v6);
  sub_1DB509DF0();
  sub_1DB509DE0();
  (*(v21 + 8))(v5, v22);
  v16 = v20;
  sub_1DB509BD0();

  v15(a1, v6);
  v15(v12, v6);
  v17 = v24;
  (*(v7 + 32))(v24 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v16, v6);
  *(v17 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_automaticallyCleanUp) = v23 & 1;
  return v17;
}

uint64_t sub_1DB4A9628()
{
  v1 = v0;
  v85[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1DB509CA0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v69 - v7;
  if (*(v0 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_automaticallyCleanUp))
  {
    v72 = v5;
    if (qword_1ECC42238 != -1)
    {
      swift_once();
    }

    v9 = qword_1ECC466F8;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v10 = swift_allocObject();
    v79 = xmmword_1DB50EE90;
    *(v10 + 16) = xmmword_1DB50EE90;
    v80 = sub_1DB301BC0(0, 23, 0, MEMORY[0x1E69E7CC0]);
    v11._object = 0x80000001DB5305F0;
    v11._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v11);
    v12 = *(v3 + 16);
    v78 = v0;
    v71 = OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url;
    v75 = v3 + 16;
    v74 = v12;
    v12(v8, v0 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v2);
    v13 = sub_1DB509C40();
    v15 = v14;
    v17 = *(v3 + 8);
    v16 = v3 + 8;
    v77 = v17;
    v17(v8, v2);
    v18 = MEMORY[0x1E69E6158];
    v85[3] = MEMORY[0x1E69E6158];
    v85[0] = v13;
    v85[1] = v15;
    sub_1DB301CDC(v85, v81);
    v82 = 0u;
    v83 = 0u;
    sub_1DB301D4C(v81, &v82);
    v84 = 0;
    v19 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1DB301BC0(0, *(v19 + 2) + 1, 1, v19);
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1DB301BC0((v20 > 1), v21 + 1, 1, v19);
    }

    v73 = v16 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    *(v19 + 2) = v21 + 1;
    v22 = &v19[40 * v21];
    v23 = v82;
    v24 = v83;
    v22[64] = v84;
    *(v22 + 2) = v23;
    *(v22 + 3) = v24;
    v80 = v19;
    sub_1DB301DBC(v85);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    *(v10 + 32) = v80;
    v26 = sub_1DB50AF40();
    v27 = os_log_type_enabled(v9, v26);
    v76 = v2;
    v70 = v9;
    if (v27)
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v28 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v28 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v30 = swift_allocObject();
      *(v30 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v82 = v10;
      *(&v82 + 1) = sub_1DB314CB0;
      *&v83 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v31 = sub_1DB50A5E0();
      v33 = v32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v34 = swift_allocObject();
      *(v34 + 16) = v79;
      *(v34 + 56) = v18;
      *(v34 + 64) = sub_1DB31494C();
      *(v34 + 32) = v31;
      *(v34 + 40) = v33;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v9, v26, v34);
    }

    v35 = v78;
    v36 = v74;
    v37 = v71;
    v38 = objc_opt_self();
    v39 = [v38 defaultManager];
    v40 = v72;
    v41 = v76;
    v36(v72, v35 + v37, v76);
    v42 = v37;
    sub_1DB509C40();
    v43 = v35;
    v44 = v77;
    v77(v40, v41);
    v45 = sub_1DB50A620();

    v46 = [v39 fileExistsAtPath_];

    if (v46)
    {
      v47 = [v38 defaultManager];
      v1 = v43;
      v74(v40, v43 + v42, v41);
      sub_1DB509C40();
      v44(v40, v41);
      v48 = sub_1DB50A620();

      *&v82 = 0;
      v49 = [v47 removeItemAtPath:v48 error:&v82];

      if (v49)
      {
        v50 = v82;
      }

      else
      {
        v66 = v82;
        v67 = sub_1DB509B20();

        swift_willThrow();
      }

      goto LABEL_26;
    }

    v52 = swift_allocObject();
    *(v52 + 16) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v53 = swift_allocObject();
    *(v53 + 16) = v79;
    v54 = MEMORY[0x1E69E6158];
    *(&v83 + 1) = MEMORY[0x1E69E6158];
    *&v82 = 0xD000000000000025;
    *(&v82 + 1) = 0x80000001DB530610;
    *(v53 + 48) = 0u;
    *(v53 + 32) = 0u;
    sub_1DB301D4C(&v82, v53 + 32);
    *(v53 + 64) = 0;
    *(v52 + 32) = v53;
    v55 = sub_1DB50AF40();
    if (!os_log_type_enabled(v70, v55))
    {

      v44 = v77;
      v1 = v78;
      v41 = v76;
LABEL_26:
      (v44)(v1 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v41, v51);
      return v1;
    }

    v56 = v54;
    v1 = v78;
    v57 = v76;
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v58 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    v59 = LOBYTE(v58[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v58 + 5);
    if (v59 == 2)
    {
      LOBYTE(v59) = os_variant_has_internal_content();
    }

    v60 = swift_allocObject();
    *(v60 + 16) = (v59 & 1) == 0;
    *&v82 = v52;
    *(&v82 + 1) = sub_1DB31485C;
    *&v83 = v60;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
    sub_1DB314864();
    v61 = sub_1DB50A5E0();
    v63 = v62;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
    v64 = swift_allocObject();
    *(v64 + 16) = v79;
    *(v64 + 56) = v56;
    *(v64 + 64) = sub_1DB31494C();
    *(v64 + 32) = v61;
    *(v64 + 40) = v63;
    sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v70, v55, v64);

    (v77)(v1 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v57, v65);
  }

  else
  {
    (*(v3 + 8))(v0 + OBJC_IVAR____TtC7JetCore33JetPackResourceBundleDiskLocation_url, v2, v6);
  }

  return v1;
}

uint64_t sub_1DB4A9F2C()
{
  sub_1DB4A9628();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for JetPackResourceBundleDiskLocation(uint64_t a1)
{
  result = qword_1ECC46B70;
  if (!qword_1ECC46B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB4A9FD8(uint64_t a1)
{
  result = sub_1DB509CA0();
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

uint64_t sub_1DB4AA070(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = sub_1DB509CA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v61 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = v53 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v53 - v9;
  v11 = [objc_opt_self() defaultManager];
  v60 = " bundle doesn't exist";
  *&v62 = a1;
  sub_1DB509BD0();
  sub_1DB509C40();
  v12 = sub_1DB50A620();

  LODWORD(a1) = [v11 fileExistsAtPath_];

  if (a1)
  {
    sub_1DB509C40();
    v13 = sub_1DB50A620();

    v64 = 0;
    v14 = [v11 contentsOfDirectoryAtPath:v13 error:&v64];

    v15 = v64;
    v16 = v10;
    if (!v14)
    {
      v51 = v64;
      sub_1DB509B20();

      swift_willThrow();
      return (*(v4 + 8))(v10, v3);
    }

    v63 = v11;
    v58 = v1;
    v17 = sub_1DB50A9A0();
    v18 = v15;

    v19 = v17;
    v20 = *(v17 + 16);
    if (v20)
    {
      v54 = v10;
      v55 = v4;
      v56 = (v4 + 8);
      v57 = v3;
      v53[1] = v19;
      v21 = (v19 + 40);
      v22 = v63;
      do
      {
        v24 = *(v21 - 1);
        v23 = *v21;
        v25 = qword_1ECC422B0;

        if (v25 != -1)
        {
          swift_once();
        }

        v26 = v24 == qword_1ECC67CB0 && v23 == *algn_1ECC67CB8;
        if (v26 || (sub_1DB50BA30() & 1) != 0)
        {
        }

        else
        {
          v27 = v61;
          sub_1DB509BD0();
          v28 = v59;
          sub_1DB509BD0();

          v29 = *v56;
          v30 = v27;
          v31 = v57;
          (*v56)(v30, v57);
          sub_1DB509C40();
          v32 = v31;
          v22 = v63;
          v29(v28, v32);
          v33 = sub_1DB50A620();

          v64 = 0;
          v34 = [v22 removeItemAtPath:v33 error:&v64];

          if (v34)
          {
            v35 = v64;
          }

          else
          {
            v36 = v64;
            v37 = sub_1DB509B20();

            swift_willThrow();
            v58 = 0;
          }
        }

        v21 += 2;
        --v20;
      }

      while (v20);

      v3 = v57;
      v16 = v54;
      v4 = v55;
    }

    else
    {
    }
  }

  else
  {
    v63 = v11;
    v38 = v10;
    v58 = v1;
    v39 = v4;
    if (qword_1ECC42238 != -1)
    {
      swift_once();
    }

    v40 = qword_1ECC466F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v41 = swift_allocObject();
    v62 = xmmword_1DB50EE90;
    *(v41 + 16) = xmmword_1DB50EE90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v42 = swift_allocObject();
    *(v42 + 16) = v62;
    v67 = MEMORY[0x1E69E6158];
    v64 = 0xD000000000000039;
    v65 = 0x80000001DB530660;
    *(v42 + 48) = 0u;
    *(v42 + 32) = 0u;
    sub_1DB301D4C(&v64, v42 + 32);
    *(v42 + 64) = 0;
    *(v41 + 32) = v42;
    v43 = sub_1DB50AF40();
    if (os_log_type_enabled(v40, v43))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v44 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v44[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v44 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v16 = v38;
      v46 = swift_allocObject();
      *(v46 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v64 = v41;
      v65 = sub_1DB314CB0;
      v66 = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v47 = sub_1DB50A5E0();
      v49 = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v50 = swift_allocObject();
      *(v50 + 16) = v62;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 64) = sub_1DB31494C();
      *(v50 + 32) = v47;
      *(v50 + 40) = v49;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v40, v43, v50);

      v4 = v39;
    }

    else
    {

      v4 = v39;
      v16 = v38;
    }
  }

  return (*(v4 + 8))(v16, v3);
}

uint64_t Encoder.withUserInfo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  a4[3] = &type metadata for _Wrapped_Encoder;
  a4[4] = sub_1DB4AA848();
  v9 = swift_allocObject();
  *a4 = v9;
  v9[5] = a2;
  v9[6] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9 + 2);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
  v9[7] = a1;
}

unint64_t sub_1DB4AA848()
{
  result = qword_1ECC46B80;
  if (!qword_1ECC46B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46B80);
  }

  return result;
}

uint64_t sub_1DB4AA998(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  return a3(v5, v6);
}

uint64_t CustomIntentDispatcher.dispatcher<A, B>(for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[4] = a7;
  v8[5] = v7;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DB4AAA10, 0, 0);
}

uint64_t sub_1DB4AAA10()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v3[3] = v4;
  v3[4] = *(v1 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v2, v4);
  v6 = v0[1];

  return v6();
}

uint64_t CustomIntentDispatcher.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[13] = a7;
  v8[14] = v7;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v10 = sub_1DB50B120();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = *(AssociatedTypeWitness - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4AAC00, 0, 0);
}

uint64_t sub_1DB4AAC00()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  (*(*(v0 + 104) + 40))(*(v0 + 88));
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  static StaticIntent._unwrapData<A>(of:)(v3, v4, v5, v1);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v6 = *(v0 + 112);
    v7 = *(v0 + 72);
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    v8 = swift_task_alloc();
    *(v0 + 168) = v8;
    *(v8 + 16) = v19;
    *(v8 + 32) = v18;
    *(v8 + 48) = v0 + 16;
    *(v8 + 56) = v6;
    *(v8 + 64) = v7;
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_1DB4AAE2C;
    v10 = *(v0 + 120);
    v11 = *(v0 + 56);

    return sub_1DB40CD74(v11, &unk_1DB520A28, v8, v10);
  }

  else
  {
    v13 = *(v0 + 160);
    v14 = *(v0 + 120);
    v15 = *(v0 + 56);
    v16 = *(*(v0 + 152) + 32);
    v16(v13, *(v0 + 144), v14);
    v16(v15, v13, v14);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1DB4AAE2C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1DB4AAFC4;
  }

  else
  {

    v2 = sub_1DB4AAF48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4AAF48()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4AAFC4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4AB044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DB4AB070, 0, 0);
}

uint64_t sub_1DB4AB070()
{
  v13 = v0[8];
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v12 = (*(v13 + 16) + **(v13 + 16));
  v5 = swift_task_alloc();
  v0[10] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v5 = v0;
  v5[1] = sub_1DB4AB1EC;
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[2];

  return v12(v10, v4, v8, AssociatedTypeWitness, v3, v2, v9, v7);
}

uint64_t sub_1DB4AB1EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB4AB2E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DB30C7A0;

  return sub_1DB4AB044(a1, v8, v9, v10, v4, v5, v6, v7);
}

uint64_t dispatch thunk of CustomIntentDispatcher.perform<A, B>(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 16) + **(a8 + 16));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1DB306AF4;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

id sub_1DB4AB520()
{
  result = [objc_allocWithZone(_JEAtomicCounter) initWithInitialValue_];
  qword_1ECC46B88 = result;
  return result;
}

uint64_t OperationID.init(_:)(uint64_t a1)
{
  v2 = sub_1DB509B80();
  v3 = sub_1DB509CA0();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t OperationID.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB50A910();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

JetCore::OperationID __swiftcall OperationID.init(uniqueForOperation:)(Swift::String uniqueForOperation)
{
  MEMORY[0x1E1285C70](35, 0xE100000000000000);
  if (qword_1ECC422B8 != -1)
  {
    swift_once();
  }

  [qword_1ECC46B88 increment];
  v1 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v1);

  countAndFlagsBits = uniqueForOperation._countAndFlagsBits;
  object = uniqueForOperation._object;
  result.rawValue._object = object;
  result.rawValue._countAndFlagsBits = countAndFlagsBits;
  return result;
}

void *OperationID.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v3 = sub_1DB50BA40();
    __swift_destroy_boxed_opaque_existential_0(v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t OperationID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DB50BAC0();
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

unint64_t sub_1DB4AB888()
{
  result = qword_1ECC46B90;
  if (!qword_1ECC46B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46B90);
  }

  return result;
}

uint64_t sub_1DB4AB8DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = sub_1DB50BA40();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_0(v9);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t AppMetricsFieldProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  v4 = [*v1 bundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DB50A650();
    v8 = v7;

    *(&v26 + 1) = MEMORY[0x1E69E6158];
    *&v25 = v6;
    *(&v25 + 1) = v8;
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 16))(&v25, 7368801, 0xE300000000000000, v9, v10);
    return __swift_destroy_boxed_opaque_existential_0(&v25);
  }

  else
  {
    if (qword_1ECC42228 != -1)
    {
      swift_once();
    }

    v12 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DB50F8D0;
    v29 = sub_1DB301BC0(0, 39, 0, MEMORY[0x1E69E7CC0]);
    v14._countAndFlagsBits = 0xD000000000000026;
    v14._object = 0x80000001DB5306A0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v28[3] = sub_1DB36AC44();
    v28[0] = v3;
    sub_1DB301CDC(v28, v24);
    v25 = 0u;
    v26 = 0u;
    v15 = v3;
    sub_1DB301D4C(v24, &v25);
    v27 = 1;
    v16 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1DB301BC0(0, *(v16 + 2) + 1, 1, v16);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1DB301BC0((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v25;
    v21 = v26;
    v19[64] = v27;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v29 = v16;
    sub_1DB301DBC(v28);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v13 + 32) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1DB50EE90;
    *(&v26 + 1) = MEMORY[0x1E69E6158];
    *&v25 = 0xD00000000000001BLL;
    *(&v25 + 1) = 0x80000001DB5306D0;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1DB301D4C(&v25, v23 + 32);
    *(v23 + 64) = 0;
    *(v13 + 40) = v23;
    *&v25 = v12;
    LOBYTE(v28[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v13, v28);
  }
}

uint64_t JetPackAssetSQLiteRecord.cacheKey.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t JetPackAssetSQLiteRecord.fileName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t JetPackAssetSQLiteRecord.metadata.getter()
{
  v1 = *(v0 + 40);
  sub_1DB3483BC(v1, *(v0 + 48));
  return v1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB4ABDC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1DB4ABE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB4ABE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, sqlite3_stmt **a4@<X3>, _DWORD *a5@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *zSql = a1;
    v15 = a2 & 0xFFFFFFFFFFFFFFLL;
    swift_beginAccess();
    v9 = *(a3 + 16);
    v10 = zSql;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_12:
    sub_1DB50B310();
  }

  v8 = a2 & 0xFFFFFFFFFFFFFFFLL;
  swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = (v8 + 32);
LABEL_6:
  v11 = sqlite3_prepare_v2(v9, v10, -1, a4, 0);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  if (sub_1DB331244(v11, qword_1EE312D90))
  {
    *a5 = v11;
  }

  else
  {
    sub_1DB388320();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1DB4AC054()
{
  qword_1EE30DCC8 = 0xD0000000000000C3;
  unk_1EE30DCD0 = 0x80000001DB5308A0;
  qword_1EE30DCD8 = MEMORY[0x1E69E7CC0];
}

void JetPackAssetDiskCacheSQLiteMetadataStore.findFirst(id:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  sub_1DB3457EC(v5, a1, a2);
}

uint64_t sub_1DB4AC0D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  *&v22 = 0;
  *(&v22 + 1) = 0xE000000000000000;
  MEMORY[0x1E1285C10](64);
  v21 = v22;
  MEMORY[0x1E1285C70](0xD000000000000027, 0x80000001DB530870);
  *(&v23 + 1) = MEMORY[0x1E69E72F0];
  *&v24 = &off_1F57000B8;
  LODWORD(v22) = a2;
  sub_1DB30C4B8(&v22, v26, &qword_1ECC42798, &qword_1DB50F210);
  v7 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1DB302D80((v8 > 1), v9 + 1, 1, v7);
  }

  v7[2] = v9 + 1;
  v10 = &v7[5 * v9];
  v11 = v26[0];
  v12 = v26[1];
  v10[8] = v27;
  *(v10 + 2) = v11;
  *(v10 + 3) = v12;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v22);
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB530810);
  *&v26[0] = 0;

  sub_1DB4ABE94(v21, *(&v21 + 1), a1, v26, &v22);

  if (v3)
  {
  }

  v14 = *&v26[0];
  if (!*&v26[0])
  {
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();
  *(inited + 16) = v14;
  *(inited + 24) = 0;
  sub_1DB4B03C0(v7);

  v16 = *(inited + 16);
  v17 = sqlite3_step(v16);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  if (!sub_1DB331244(v17, qword_1EE312D90))
  {
    sub_1DB388320();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v16);
  }

  if (v17 == 100)
  {
    sub_1DB4AC424(inited, &v22);
    swift_setDeallocating();
    sqlite3_finalize(*(inited + 16));

    v18 = v25;
    v19 = v23;
    *a3 = v22;
    *(a3 + 16) = v19;
    *(a3 + 32) = v24;
    *(a3 + 48) = v18;
  }

  else
  {
    swift_setDeallocating();
    sqlite3_finalize(v16);

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
  }

  return result;
}

_BYTE *sub_1DB4AC424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DB4AE7B8();
  if (!v4[2])
  {
    v15 = 0;
    v16 = 0;
    v8 = 0;
    v12 = 0;
    v14 = 0;
    v9 = 1;
    goto LABEL_21;
  }

  v5 = sub_1DB306160(25705, 0xE200000000000000);
  if (v6)
  {
    v7 = *(v4[7] + 4 * v5);
    if (sqlite3_column_type(*(a1 + 16), v7) != 5)
    {
      v8 = sqlite3_column_int(*(a1 + 16), v7);
      v9 = 0;
      if (v4[2])
      {
        goto LABEL_5;
      }

LABEL_20:
      v15 = 0;
      v16 = 0;
      v12 = 0;
      v14 = 0;
      goto LABEL_21;
    }
  }

  v8 = 0;
  v9 = 1;
  if (!v4[2])
  {
    goto LABEL_20;
  }

LABEL_5:
  v10 = sub_1DB306160(0x656B5F6568636163, 0xE900000000000079);
  if ((v11 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(v4[7] + 4 * v10)))
  {
    v12 = sub_1DB50A7A0();
    v14 = v13;
    if (!v4[2])
    {
LABEL_8:
      v15 = 0;
      v16 = 0;
LABEL_21:

      result = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    if (!v4[2])
    {
      goto LABEL_8;
    }
  }

  v17 = sub_1DB306160(0x6D616E5F656C6966, 0xE900000000000065);
  if ((v18 & 1) != 0 && sqlite3_column_text(*(a1 + 16), *(v4[7] + 4 * v17)))
  {
    v16 = sub_1DB50A7A0();
    v15 = v19;
    if (!v4[2])
    {
      goto LABEL_21;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
    if (!v4[2])
    {
      goto LABEL_21;
    }
  }

  v20 = sub_1DB306160(0x617461646174656DLL, 0xE800000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

  v22 = *(v4[7] + 4 * v20);

  v23 = sqlite3_column_bytes(*(a1 + 16), v22);
  result = sqlite3_column_blob(*(a1 + 16), v22);
  if (!result)
  {
LABEL_22:
    v25 = 0xF000000000000000;
    goto LABEL_23;
  }

  result = sub_1DB4AE69C(result, v23);
LABEL_23:
  *a2 = v8;
  *(a2 + 4) = v9;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;
  *(a2 + 40) = result;
  *(a2 + 48) = v25;
  return result;
}

void JetPackAssetDiskCacheSQLiteMetadataStore.findFirst(cacheKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);

  sub_1DB3455D4(v7, a1, a2, a3);
}

uint64_t sub_1DB4AC69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v24 = 0;
  *(&v24 + 1) = 0xE000000000000000;
  MEMORY[0x1E1285C10](71);
  v23 = v24;
  MEMORY[0x1E1285C70](0xD00000000000002ELL, 0x80000001DB5307E0);
  *(&v25 + 1) = MEMORY[0x1E69E6158];
  *&v26 = &off_1F5700098;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  sub_1DB30C4B8(&v24, v28, &qword_1ECC42798, &qword_1DB50F210);

  v9 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB302D80((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v28[0];
  v14 = v28[1];
  v12[8] = v29;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v24);
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB530810);
  *&v28[0] = 0;

  sub_1DB4ABE94(v23, *(&v23 + 1), a1, v28, &v24);

  if (v4)
  {
  }

  v16 = *&v28[0];
  if (!*&v28[0])
  {
    __break(1u);
    return result;
  }

  type metadata accessor for SQLiteStatement();
  inited = swift_initStackObject();
  *(inited + 16) = v16;
  *(inited + 24) = 0;
  sub_1DB4B03C0(v9);

  v18 = *(inited + 16);
  v19 = sqlite3_step(v18);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  if (!sub_1DB331244(v19, qword_1EE312D90))
  {
    sub_1DB388320();
    swift_allocError();
    *v22 = v19;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    swift_willThrow();
    swift_setDeallocating();
    sqlite3_finalize(v18);
  }

  if (v19 == 100)
  {
    sub_1DB4AC424(inited, &v24);
    swift_setDeallocating();
    sqlite3_finalize(*(inited + 16));

    v20 = v27;
    v21 = v25;
    *a4 = v24;
    *(a4 + 16) = v21;
    *(a4 + 32) = v26;
    *(a4 + 48) = v20;
  }

  else
  {
    swift_setDeallocating();
    sqlite3_finalize(v18);

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 1;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
  }

  return result;
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.findAll()()
{
  v1 = *(v0 + 16);

  sub_1DB3486A0(v1, v0);
  v3 = v2;

  return v3;
}

uint64_t sub_1DB4ACA44@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v26[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000034, 0x80000001DB530830, a1, v26, v24);
  if (!v2)
  {
    v6 = v26[0];
    if (v26[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v6;
      *(inited + 24) = 0;
      sub_1DB4B03C0(MEMORY[0x1E69E7CC0]);
      v8 = MEMORY[0x1E69E7CC0];
      for (i = 0x1EE30C000uLL; ; i = 0x1EE30C000)
      {
        v10 = *(inited + 16);
        v11 = sqlite3_step(v10);
        if (*(i + 2080) != -1)
        {
          swift_once();
        }

        v12 = qword_1EE312D90;
        if (!*(qword_1EE312D90 + 16) || (sub_1DB50BCF0(), sub_1DB50BD20(), v13 = sub_1DB50BD30(), v14 = -1 << *(v12 + 32), v15 = v13 & ~v14, ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0))
        {
LABEL_18:
          sub_1DB388320();
          swift_allocError();
          *v23 = v11;
          *(v23 + 8) = 0;
          *(v23 + 16) = 0;
          swift_willThrow();
          swift_setDeallocating();
          sqlite3_finalize(v10);
        }

        v16 = ~v14;
        while (*(*(v12 + 48) + 4 * v15) != v11)
        {
          v15 = (v15 + 1) & v16;
          if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        if (v11 != 100)
        {
          break;
        }

        sub_1DB4AC424(inited, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB3042F8(0, *(v8 + 2) + 1, 1, v8);
        }

        v18 = *(v8 + 2);
        v17 = *(v8 + 3);
        if (v18 >= v17 >> 1)
        {
          v8 = sub_1DB3042F8((v17 > 1), v18 + 1, 1, v8);
        }

        *(v8 + 2) = v18 + 1;
        v19 = &v8[56 * v18];
        v20 = v24[0];
        v21 = v24[1];
        v22 = v24[2];
        *(v19 + 10) = v25;
        *(v19 + 3) = v21;
        *(v19 + 4) = v22;
        *(v19 + 2) = v20;
      }

      swift_setDeallocating();
      sqlite3_finalize(v10);

      *a2 = v8;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.findAll(cacheKey:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  sub_1DB34843C(v5, a1, a2, v2);
  v7 = v6;

  return v7;
}

uint64_t sub_1DB4ACDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  MEMORY[0x1E1285C10](71);
  v37 = v38;
  MEMORY[0x1E1285C70](0xD00000000000002ELL, 0x80000001DB5307E0);
  *(&v39 + 1) = MEMORY[0x1E69E6158];
  *&v40 = &off_1F5700098;
  *&v38 = a2;
  *(&v38 + 1) = a3;
  sub_1DB30C4B8(&v38, v42, &qword_1ECC42798, &qword_1DB50F210);

  v9 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1DB302D80((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v12 = &v9[5 * v11];
  v13 = v42[0];
  v14 = v42[1];
  v12[8] = v43;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v38);
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB530810);
  *&v42[0] = 0;

  sub_1DB4ABE94(v37, *(&v37 + 1), a1, v42, &v38);

  if (v4)
  {
  }

  v16 = *&v42[0];
  if (*&v42[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v16;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v9);
    v36 = a4;

    v18 = MEMORY[0x1E69E7CC0];
    v19 = 0x1EE30C000uLL;
    for (i = &unk_1EE312000; ; i = v23)
    {
      v21 = *(inited + 16);
      v22 = sqlite3_step(v21);
      if (*(v19 + 2080) != -1)
      {
        swift_once();
      }

      v23 = i;
      v24 = i[434];
      if (!*(v24 + 16) || (sub_1DB50BCF0(), sub_1DB50BD20(), v25 = sub_1DB50BD30(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
      {
LABEL_20:
        sub_1DB388320();
        swift_allocError();
        *v35 = v22;
        *(v35 + 8) = 0;
        *(v35 + 16) = 0;
        swift_willThrow();
        swift_setDeallocating();
        sqlite3_finalize(v21);
      }

      v28 = ~v26;
      while (*(*(v24 + 48) + 4 * v27) != v22)
      {
        v27 = (v27 + 1) & v28;
        if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v22 != 100)
      {
        break;
      }

      sub_1DB4AC424(inited, &v38);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DB3042F8(0, *(v18 + 2) + 1, 1, v18);
      }

      v30 = *(v18 + 2);
      v29 = *(v18 + 3);
      if (v30 >= v29 >> 1)
      {
        v18 = sub_1DB3042F8((v29 > 1), v30 + 1, 1, v18);
      }

      *(v18 + 2) = v30 + 1;
      v31 = &v18[56 * v30];
      v32 = v38;
      v33 = v39;
      v34 = v40;
      *(v31 + 10) = v41;
      *(v31 + 3) = v33;
      *(v31 + 4) = v34;
      *(v31 + 2) = v32;
      v19 = 0x1EE30C000;
    }

    swift_setDeallocating();
    sqlite3_finalize(v21);

    *v36 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void JetPackAssetDiskCacheSQLiteMetadataStore.create(record:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = *(v2 + 16);
  sub_1DB32E354(v7, v6);

  sub_1DB34504C(v5, v7, a2);
}

uint64_t sub_1DB4AD294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = 0xE000000000000000;
  MEMORY[0x1E1285C10](84);
  MEMORY[0x1E1285C70](0xD000000000000043, 0x80000001DB530790);
  v53 = *(a2 + 8);
  if (*(&v53 + 1))
  {
    v7 = &off_1F5700098;
    v8 = MEMORY[0x1E69E6158];
    v9 = v53;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v48 = 0;
  }

  v46 = v9;
  v47 = *(&v53 + 1);
  v49 = v8;
  v50 = v7;
  sub_1DB30C4B8(&v46, &v43, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v53, v42, &unk_1ECC46C00, &qword_1DB516350);
  v10 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1DB302D80((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[5 * v12];
  v14 = v43;
  v15 = v44;
  v13[8] = v45;
  *(v13 + 2) = v14;
  *(v13 + 3) = v15;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v46);
  MEMORY[0x1E1285C70](8236, 0xE200000000000000);
  v52 = *(a2 + 24);
  if (*(&v52 + 1))
  {
    v16 = &off_1F5700098;
    v17 = MEMORY[0x1E69E6158];
    v18 = v52;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v48 = 0;
  }

  v46 = v18;
  v47 = *(&v52 + 1);
  v49 = v17;
  v50 = v16;
  sub_1DB30C4B8(&v46, &v43, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v52, v42, &unk_1ECC46C00, &qword_1DB516350);
  v20 = v10[2];
  v19 = v10[3];
  if (v20 >= v19 >> 1)
  {
    v10 = sub_1DB302D80((v19 > 1), v20 + 1, 1, v10);
  }

  v10[2] = v20 + 1;
  v21 = &v10[5 * v20];
  v22 = v43;
  v23 = v44;
  v21[8] = v45;
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v46);
  MEMORY[0x1E1285C70](8236, 0xE200000000000000);
  v51 = *(a2 + 40);
  v24 = *(&v51 + 1);
  if (*(&v51 + 1) >> 60 == 15)
  {
    v25 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0;
    v48 = 0;
  }

  else
  {
    v27 = &off_1F57000A8;
    v26 = MEMORY[0x1E6969080];
    v25 = v51;
  }

  v46 = v25;
  v47 = v24;
  v49 = v26;
  v50 = v27;
  sub_1DB30C4B8(&v46, &v43, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB30C4B8(&v51, v42, &qword_1ECC46B98, &unk_1DB520D40);
  v29 = v10[2];
  v28 = v10[3];
  if (v29 >= v28 >> 1)
  {
    v10 = sub_1DB302D80((v28 > 1), v29 + 1, 1, v10);
  }

  v10[2] = v29 + 1;
  v30 = &v10[5 * v29];
  v31 = v43;
  v32 = v44;
  v30[8] = v45;
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(&v46);
  MEMORY[0x1E1285C70](0x4E52555445522029, 0xED00002A20474E49);
  v46 = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, &v46, &v43);
  if (v3)
  {
  }

  v34 = v46;
  if (v46)
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v34;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v10);

    v37 = *(inited + 16);
    v38 = sqlite3_step(v37);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v38, qword_1EE312D90) && (v39 = sub_1DB3AD5F0(&unk_1F56F0100), v40 = sub_1DB331244(v38, v39), , v40))
    {
      sub_1DB4AC424(inited, a3);
      swift_setDeallocating();
      v36 = *(inited + 16);
    }

    else
    {
      sub_1DB388320();
      swift_allocError();
      *v41 = v38;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      v36 = v37;
    }

    sqlite3_finalize(v36);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4AD7FC(uint64_t a1, unsigned int a2)
{
  v21[5] = *MEMORY[0x1E69E9840];
  v21[1] = 0xE000000000000000;
  MEMORY[0x1E1285C10](37);
  MEMORY[0x1E1285C70](0xD000000000000025, 0x80000001DB530760);
  v21[3] = MEMORY[0x1E69E72F0];
  v21[4] = &off_1F57000B8;
  v21[0] = a2;
  sub_1DB30C4B8(v21, v19, &qword_1ECC42798, &qword_1DB50F210);
  v5 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1DB302D80((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v8 = &v5[5 * v7];
  v9 = v19[0];
  v10 = v19[1];
  v8[8] = v20;
  *(v8 + 2) = v9;
  *(v8 + 3) = v10;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(v21);
  v21[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, v21, v19);

  if (v2)
  {
  }

  v12 = v21[0];
  if (v21[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v12;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v5);

    v14 = *(inited + 16);
    v15 = sqlite3_step(v14);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v15, qword_1EE312D90) || (v16 = sub_1DB3AD5F0(&unk_1F56F00D8), v17 = sub_1DB331244(v15, v16), , !v17))
    {
      sub_1DB388320();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      swift_willThrow();
    }

    swift_setDeallocating();
    sqlite3_finalize(v14);
  }

  __break(1u);
  return result;
}

void JetPackAssetDiskCacheSQLiteMetadataStore.updateMetadata(id:metadata:)(_BOOL4 a1@<W0>, sqlite3_stmt *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 16);
  sub_1DB3483BC(a2, a3);

  sub_1DB344D70(v9, a2, a3, a1, a4);
}

uint64_t sub_1DB4ADB3C@<X0>(uint64_t a1@<X0>, sqlite3_stmt *a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E1285C10](60);
  MEMORY[0x1E1285C70](0xD000000000000024, 0x80000001DB530730);
  if (a3 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v38[2] = 0;
  }

  else
  {
    v14 = &off_1F57000A8;
    v13 = MEMORY[0x1E6969080];
    v11 = a2;
    v12 = a3;
  }

  v38[0] = v11;
  v38[1] = v12;
  v39 = v13;
  v40 = v14;
  sub_1DB30C4B8(v38, &v35, &qword_1ECC42798, &qword_1DB50F210);
  sub_1DB3483BC(a2, a3);
  v15 = sub_1DB302D80(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1DB302D80((v16 > 1), v17 + 1, 1, v15);
  }

  v15[2] = v17 + 1;
  v18 = &v15[5 * v17];
  v19 = v35;
  v20 = v36;
  v18[8] = v37;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(v38);
  MEMORY[0x1E1285C70](0x6920455245485720, 0xEC000000203D2064);
  v39 = MEMORY[0x1E69E72F0];
  v40 = &off_1F57000B8;
  LODWORD(v38[0]) = a4;
  sub_1DB30C4B8(v38, &v35, &qword_1ECC42798, &qword_1DB50F210);
  v22 = v15[2];
  v21 = v15[3];
  if (v22 >= v21 >> 1)
  {
    v15 = sub_1DB302D80((v21 > 1), v22 + 1, 1, v15);
  }

  v15[2] = v22 + 1;
  v23 = &v15[5 * v22];
  v24 = v35;
  v25 = v36;
  v23[8] = v37;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  MEMORY[0x1E1285C70](63, 0xE100000000000000);
  sub_1DB3883E4(v38);
  MEMORY[0x1E1285C70](0x494E525554455220, 0xEC0000002A20474ELL);
  v38[0] = 0;

  sub_1DB4ABE94(0, 0xE000000000000000, a1, v38, &v35);
  if (v5)
  {
  }

  v27 = v38[0];
  if (v38[0])
  {
    type metadata accessor for SQLiteStatement();
    inited = swift_initStackObject();
    *(inited + 16) = v27;
    *(inited + 24) = 0;
    sub_1DB4B03C0(v15);

    v30 = *(inited + 16);
    v31 = sqlite3_step(v30);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (sub_1DB331244(v31, qword_1EE312D90) && (v32 = sub_1DB3AD5F0(&unk_1F56F00B0), v33 = sub_1DB331244(v31, v32), , v33))
    {
      sub_1DB4AC424(inited, a5);
      swift_setDeallocating();
      v29 = *(inited + 16);
    }

    else
    {
      sub_1DB388320();
      swift_allocError();
      *v34 = v31;
      *(v34 + 8) = 0;
      *(v34 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      v29 = v30;
    }

    sqlite3_finalize(v29);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JetPackAssetDiskCacheSQLiteMetadataStore.beginTransaction()()
{
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v2 + 24));
  sub_1DB348194((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 24));
  if (!v1)
  {
  }
}

Swift::Void __swiftcall JetPackAssetDiskCacheSQLiteMetadataStore.endTransaction()()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB3481F8((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4AE04C, 0, 0);
}

uint64_t sub_1DB4AE04C()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1DB32D394;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return AssetSQLiteDatabase.executeWithTransaction<A>(_:)(v4, v5, v2, v3);
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1DB4AE148(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 16);

  sub_1DB3457EC(v5, a1, a2);
}

void sub_1DB4AE198(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*v3 + 16);

  sub_1DB3455D4(v7, a1, a2, a3);
}

uint64_t sub_1DB4AE200()
{
  v1 = *v0;
  v2 = *(*v0 + 16);

  sub_1DB3486A0(v2, v1);
  v4 = v3;

  return v4;
}

uint64_t sub_1DB4AE258(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + 16);

  sub_1DB34843C(v6, a1, a2, v5);
  v8 = v7;

  return v8;
}

void sub_1DB4AE2D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 32);
  v8[1] = *(a1 + 16);
  v8[2] = v5;
  v9 = *(a1 + 48);
  v8[0] = *a1;
  v6 = *(v4 + 16);
  sub_1DB32E354(v8, v7);

  sub_1DB34504C(v6, v8, a2);
}

void sub_1DB4AE374(_BOOL4 a1@<W0>, sqlite3_stmt *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*v4 + 16);
  sub_1DB3483BC(a2, a3);

  sub_1DB344D70(v9, a2, a3, a1, a4);
}

void sub_1DB4AE3F8()
{
  v2 = *(*(*v0 + 16) + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v2 + 24));
  sub_1DB349348((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 24));
  if (!v1)
  {
  }
}

void sub_1DB4AE468()
{
  v1 = *(*(*v0 + 16) + OBJC_IVAR____TtC7JetCore19AssetSQLiteDatabase_transactionCount);
  os_unfair_lock_lock((v1 + 24));
  sub_1DB349330((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1DB4AE4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DB306AF4;

  return JetPackAssetDiskCacheSQLiteMetadataStore.executeWithTransaction<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_1DB4AE5A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t sub_1DB4AE5E4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_1DB4AE69C(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1DB4AE5E4(a1, &a1[a2]);
  }

  sub_1DB509A70();
  swift_allocObject();
  sub_1DB509A30();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1DB509CC0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void *sub_1DB4AE7B8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1DB4AE88C(v0);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1DB4AE828()
{
  sqlite3_finalize(*(v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1DB4AE88C(uint64_t a1)
{
  v2 = sub_1DB314310(MEMORY[0x1E69E7CC0]);
  v3 = sqlite3_column_count(*(a1 + 16));
  if (v3 < 0)
  {
    goto LABEL_20;
  }

  v4 = v3;
  if (!v3)
  {
    return v2;
  }

  v5 = 0;
  while (1)
  {
    if (!sqlite3_column_name(*(a1 + 16), v5))
    {
      goto LABEL_5;
    }

    v7 = sub_1DB50A790();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1DB306160(v7, v9);
    v13 = v2[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v2[3] < v16)
    {
      sub_1DB31BD24(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_1DB306160(v7, v9);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

LABEL_12:
      if (v17)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v22 = v11;
    sub_1DB3129F8();
    v11 = v22;
    if (v17)
    {
LABEL_4:
      v6 = v11;

      *(v2[7] + 4 * v6) = v5;
      goto LABEL_5;
    }

LABEL_13:
    v2[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v2[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v9;
    *(v2[7] + 4 * v11) = v5;
    v20 = v2[2];
    v15 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v15)
    {
      goto LABEL_19;
    }

    v2[2] = v21;
LABEL_5:
    if (v4 == ++v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB4AEA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  v19 = a4;
  v8 = sub_1DB50A6B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 16);
  v18[0] = a1;
  v18[1] = a2;
  sub_1DB50A690();
  sub_1DB301E30();
  v13 = sub_1DB50B1D0();
  (*(v9 + 8))(v11, v8);
  if (qword_1EE30D758 != -1)
  {
    swift_once();
  }

  if (v13)
  {
    v14 = (v13 + 32);
  }

  else
  {
    v14 = 0;
  }

  v15 = sqlite3_bind_text(v12, a3, v14, -1, qword_1EE30D750);

  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  result = sub_1DB331244(v15, qword_1EE312D90);
  if (result)
  {
    *v19 = v15;
  }

  else
  {
    sub_1DB388320();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1DB4AEC50()
{
  result = qword_1ECC46BA0;
  if (!qword_1ECC46BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46BA0);
  }

  return result;
}

uint64_t sub_1DB4AECD8(uint64_t a1, int a2)
{
  v6 = *v2;
  v5 = v2[1];

  v7 = sub_1DB4AF004(v6, v5, a1, a2);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  result = sub_1DB331244(v7, qword_1EE312D90);
  if ((result & 1) == 0)
  {
    sub_1DB388320();
    swift_allocError();
    *v9 = v7;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DB4AEDA4(uint64_t a1, int a2)
{
  v3 = sqlite3_bind_int(*(a1 + 16), a2, *v2);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  result = sub_1DB331244(v3, qword_1EE312D90);
  if ((result & 1) == 0)
  {
    sub_1DB388320();
    swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DB4AEE50(uint64_t a1, int a2)
{
  v3 = sqlite3_bind_int64(*(a1 + 16), a2, *v2);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  result = sub_1DB331244(v3, qword_1EE312D90);
  if ((result & 1) == 0)
  {
    sub_1DB388320();
    swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

sqlite3_stmt *sub_1DB4AEEFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v7) = a3;
  result = sub_1DB509A40();
  v11 = result;
  if (!result)
  {
LABEL_4:
    v12 = __OFSUB__(a2, a1);
    v13 = a2 - a1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      result = sub_1DB509A50();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (v11)
      {
        v7 = v14;
      }

      else
      {
        v7 = 0;
      }

      if (v7 >= 0xFFFFFFFF80000000)
      {
        if (v7 <= 0x7FFFFFFF)
        {
          result = *(a4 + 16);
          if (qword_1EE30D758 == -1)
          {
            return sqlite3_bind_blob(result, a5, v11, v7, qword_1EE30D750);
          }

LABEL_18:
          v15 = result;
          swift_once();
          result = v15;
          return sqlite3_bind_blob(result, a5, v11, v7, qword_1EE30D750);
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  result = sub_1DB509A60();
  if (!__OFSUB__(a1, result))
  {
    v11 = (v11 + a1 - result);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1DB4AF004(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v9 = *(a1 + 16);
      v10 = *(a1 + 24);
      goto LABEL_9;
    }

    memset(v16, 0, 14);
    a1 = *(a3 + 16);
    if (qword_1EE30D758 == -1)
    {
LABEL_11:
      v7 = qword_1EE30D750;
      v8 = a4;
      v6 = 0;
LABEL_12:
      v11 = sqlite3_bind_blob(a1, v8, v16, v6, v7);

      return v11;
    }

LABEL_15:
    v15 = a1;
    swift_once();
    a1 = v15;
    goto LABEL_11;
  }

  if (!v5)
  {
    v16[0] = a1;
    LOWORD(v16[1]) = a2;
    BYTE2(v16[1]) = BYTE2(a2);
    BYTE3(v16[1]) = BYTE3(a2);
    BYTE4(v16[1]) = BYTE4(a2);
    BYTE5(v16[1]) = BYTE5(a2);
    a1 = *(a3 + 16);
    v6 = BYTE6(a2);
    if (qword_1EE30D758 != -1)
    {
      v13 = BYTE6(a2);
      v14 = *(a3 + 16);
      swift_once();
      v6 = v13;
      a1 = v14;
    }

    v7 = qword_1EE30D750;
    v8 = a4;
    goto LABEL_12;
  }

  v9 = a1;
  v10 = a1 >> 32;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  v11 = sub_1DB4AEEFC(v9, v10, a2, a3, a4);

  return v11;
}

uint64_t sub_1DB4AF204(uint64_t a1, int a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  sub_1DB509C00();
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  if (!sub_1DB331244(v8, qword_1EE312D90))
  {
    sub_1DB388320();
    swift_allocError();
    *v5 = v8;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    swift_willThrow();
  }

  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v3;
}

uint64_t sub_1DB4AF330@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int *a4@<X8>)
{
  swift_beginAccess();
  v8 = sqlite3_open_v2(a1, (a2 + 16), a3, 0);
  result = swift_endAccess();
  *a4 = v8;
  return result;
}

uint64_t sub_1DB4AF3B4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = sqlite3_close_v2(*(v0 + 16));
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  if (!sub_1DB331244(v2, qword_1EE312D90))
  {
    sub_1DB388320();
    v3 = swift_allocError();
    *v4 = v2;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    swift_willThrow();
    if (qword_1ECC42250 != -1)
    {
      swift_once();
    }

    v5 = qword_1ECC46708;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1DB50EE90;
    v24 = sub_1DB301BC0(0, 32, 0, MEMORY[0x1E69E7CC0]);
    v7._object = 0x80000001DB5309D0;
    v7._countAndFlagsBits = 0xD00000000000001FLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v7);
    swift_getErrorValue();
    v23[3] = v22;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v21, v22);
    sub_1DB301CDC(v23, v17);
    v18 = 0u;
    v19 = 0u;
    sub_1DB301D4C(v17, &v18);
    v20 = 0;
    v9 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DB301BC0(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1DB301BC0((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v18;
    v14 = v19;
    v12[64] = v20;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v24 = v9;
    sub_1DB301DBC(v23);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v6 + 32) = v24;
    *&v18 = v5;
    LOBYTE(v23[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v6, v23);
  }

  return v1;
}

uint64_t sub_1DB4AF670()
{
  sub_1DB4AF3B4();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DB4AF6C8@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X2>, _DWORD *a4@<X8>)
{
  swift_beginAccess();
  v8 = sqlite3_prepare_v2(*(a2 + 16), a1, -1, a3, 0);
  if (qword_1EE30C820 != -1)
  {
    swift_once();
  }

  result = sub_1DB331244(v8, qword_1EE312D90);
  if (result)
  {
    *a4 = v8;
  }

  else
  {
    sub_1DB388320();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t TransientPreferences.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46BA8, &unk_1DB520ED0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t TransientPreferences.init()()
{
  v1 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46BA8, &unk_1DB520ED0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

void TransientPreferences.subscript.getter(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_1DB4AFB08((v5 + 16), a1, a2);

  os_unfair_lock_unlock((v5 + 24));
}

void sub_1DB4AF918(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(*a1 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_1DB4AFB08((v5 + 16), a2, a3);

  os_unfair_lock_unlock((v5 + 24));
}

uint64_t sub_1DB4AF984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB30BE90(a3, v14);
  sub_1DB301CDC(a1, v13);
  v5 = *(*a2 + 16);
  os_unfair_lock_lock(v5 + 6);
  v6 = v15;
  v7 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  sub_1DB301CDC(v13, v12);
  sub_1DB30D454(v12, v8, v10);
  os_unfair_lock_unlock(v5 + 6);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return sub_1DB301DBC(v13);
}

uint64_t TransientPreferences.subscript.setter(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 6);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  sub_1DB301CDC(a1, v12);
  sub_1DB30D454(v12, v8, v10);
  os_unfair_lock_unlock(v5 + 6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_1DB301DBC(a1);
}

double sub_1DB4AFB08@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v9 = *a1;
  if (*(*a1 + 16))
  {
    v10 = sub_1DB306160(v7, v8);
    v12 = v11;

    if (v12)
    {
      sub_1DB300B14(*(v9 + 56) + 32 * v10, a3);
      return result;
    }
  }

  else
  {
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

void (*TransientPreferences.subscript.modify(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xB8uLL);
  }

  v6 = v5;
  *a1 = v5;
  sub_1DB30BE90(a2, v5);
  v7 = *(v2 + 16);
  *(v6 + 176) = v7;
  os_unfair_lock_lock((v7 + 24));
  sub_1DB4AFB08((v7 + 16), a2, (v6 + 80));
  os_unfair_lock_unlock((v7 + 24));
  return sub_1DB4AFC70;
}

void sub_1DB4AFC70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 176);
  if (a2)
  {
    sub_1DB301CDC(v2 + 80, v2 + 112);
    sub_1DB2FEA0C(v2, v2 + 40);
    os_unfair_lock_lock(v3 + 6);
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    __swift_project_boxed_opaque_existential_1((v2 + 40), v4);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    sub_1DB301CDC(v2 + 112, v2 + 144);
    sub_1DB30D454(v2 + 144, v6, v8);
    os_unfair_lock_unlock(v3 + 6);
    __swift_destroy_boxed_opaque_existential_0((v2 + 40));
    sub_1DB301DBC(v2 + 112);
  }

  else
  {
    os_unfair_lock_lock(v3 + 6);
    v9 = *(v2 + 24);
    v10 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1(v2, v9);
    v11 = (*(v10 + 8))(v9, v10);
    v13 = v12;
    sub_1DB301CDC(v2 + 80, v2 + 40);
    sub_1DB30D454(v2 + 40, v11, v13);
    os_unfair_lock_unlock(v3 + 6);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  sub_1DB301DBC(v2 + 80);

  free(v2);
}

void TransientPreferences.removeValue(forKey:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DB4B00F8(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1DB4AFE20(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  sub_1DB30F708(v4, v5, v7);

  return sub_1DB301DBC(v7);
}

uint64_t TransientPreferences.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1DB4AFF0C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  sub_1DB4AFB08((v5 + 16), a1, a2);

  os_unfair_lock_unlock((v5 + 24));
}

uint64_t sub_1DB4AFF74(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 6);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v10 = v9;
  sub_1DB301CDC(a1, v12);
  sub_1DB30D454(v12, v8, v10);
  os_unfair_lock_unlock(v5 + 6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_1DB301DBC(a1);
}

void (*sub_1DB4B002C(uint64_t **a1, void *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = TransientPreferences.subscript.modify(v4, a2);
  return sub_1DB48C338;
}

void sub_1DB4B00A4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1DB4B0164(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1DB4B017C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 0;

  result = sub_1DB4ABE94(a1, a2, v5, v21, v20);
  if (!v4)
  {
    v10 = v21[0];
    if (v21[0])
    {
      type metadata accessor for SQLiteStatement();
      inited = swift_initStackObject();
      *(inited + 16) = v10;
      *(inited + 24) = 0;
      sub_1DB4B03C0(a3);
      while (1)
      {
        v12 = *(inited + 16);
        v13 = sqlite3_step(v12);
        if (qword_1EE30C820 != -1)
        {
          swift_once();
        }

        v14 = qword_1EE312D90;
        if (!*(qword_1EE312D90 + 16))
        {
          break;
        }

        sub_1DB50BCF0();
        sub_1DB50BD20();
        v15 = sub_1DB50BD30();
        v16 = -1 << *(v14 + 32);
        v17 = v15 & ~v16;
        if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          break;
        }

        v18 = ~v16;
        while (*(*(v14 + 48) + 4 * v17) != v13)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        if (v13 != 100)
        {
          swift_setDeallocating();
          sqlite3_finalize(v12);
        }
      }

LABEL_14:
      sub_1DB388320();
      swift_allocError();
      *v19 = v13;
      *(v19 + 8) = 0;
      *(v19 + 16) = 0;
      swift_willThrow();
      swift_setDeallocating();
      sqlite3_finalize(v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DB4B03C0(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  result = sqlite3_bind_parameter_count(*(v3 + 16));
  if (v5 == result)
  {
    if (v5)
    {
      v7 = 0;
      v8 = a1 + 32;
      do
      {
        v19 = v7;
        result = sub_1DB388374(v8 + 40 * v7, &v20);
        if (v22 == 1)
        {
          break;
        }

        v25 = v20;
        v26 = v21;
        v27 = v22;
        v9 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        if (v9 < 0xFFFFFFFF80000000)
        {
          goto LABEL_26;
        }

        if (v9 > 0x7FFFFFFF)
        {
          goto LABEL_27;
        }

        sub_1DB388374(&v25, &v23);
        if (v24)
        {
          sub_1DB2FEA0C(&v23, &v19);
          v10 = v21;
          v11 = v22;
          __swift_project_boxed_opaque_existential_1(&v19, v21);
          (*(v11 + 8))(v3, v9, v10, v11);
          sub_1DB3883E4(&v25);
          result = __swift_destroy_boxed_opaque_existential_0(&v19);
          if (v2)
          {
            return result;
          }
        }

        else
        {
          sub_1DB3883E4(&v23);
          v12 = sqlite3_bind_null(*(v3 + 16), v9);
          if (qword_1EE30C820 != -1)
          {
            swift_once();
          }

          v13 = qword_1EE312D90;
          if (!*(qword_1EE312D90 + 16) || (sub_1DB50BCF0(), sub_1DB50BD20(), v14 = sub_1DB50BD30(), v15 = -1 << *(v13 + 32), v16 = v14 & ~v15, ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0))
          {
LABEL_23:
            sub_1DB388320();
            swift_allocError();
            *v18 = v12;
            *(v18 + 8) = 0;
            *(v18 + 16) = 0;
            swift_willThrow();
            return sub_1DB3883E4(&v25);
          }

          v17 = ~v15;
          while (*(*(v13 + 48) + 4 * v16) != v12)
          {
            v16 = (v16 + 1) & v17;
            if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          result = sub_1DB3883E4(&v25);
        }

        ++v7;
      }

      while (v7 != v5);
    }
  }

  else
  {
    sub_1DB4B0670();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1DB4B0670()
{
  result = qword_1ECC46BB0;
  if (!qword_1ECC46BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46BB0);
  }

  return result;
}

unint64_t SQLiteError.errorDescription.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    sub_1DB50B320();

    v7 = 0xD000000000000015;
    MEMORY[0x1E1285C70](v1, v2);
  }

  else
  {
    sub_1DB50B320();

    v7 = 0xD00000000000001ELL;
    if (sqlite3_errstr(v1))
    {
      v3 = sub_1DB50A790();
      v5 = v4;
    }

    else
    {
      v5 = 0xE900000000000029;
      v3 = 0x6E776F6E6B6E7528;
    }

    MEMORY[0x1E1285C70](v3, v5);
  }

  return v7;
}

uint64_t SQLiteError.errorCode.getter()
{
  if (v0[16])
  {
    return 999;
  }

  else
  {
    return *v0;
  }
}

unint64_t SQLiteError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = sub_1DB50A650();
  *(inited + 40) = v1;
  v2 = SQLiteError.errorDescription.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  v4 = 0x206E776F6E6B6E55;
  if (v3)
  {
    v4 = v2;
  }

  v5 = 0xED0000726F727265;
  if (v3)
  {
    v5 = v3;
  }

  *(inited + 48) = v4;
  *(inited + 56) = v5;
  v6 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB351638(inited + 32);
  return v6;
}

uint64_t sub_1DB4B090C()
{
  if (v0[16])
  {
    return 999;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1DB4B0928(uint64_t a1)
{
  v2 = sub_1DB4B0BA0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB4B0964(uint64_t a1)
{
  v2 = sub_1DB4B0BA0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t SQLiteResult.hashValue.getter()
{
  sub_1DB50BCF0();
  sub_1DB50BD20();
  return sub_1DB50BD30();
}

uint64_t sub_1DB4B0A28()
{
  sub_1DB50BCF0();
  sub_1DB50BD20();
  return sub_1DB50BD30();
}

uint64_t sub_1DB4B0A9C(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50BD20();
  return sub_1DB50BD30();
}

uint64_t sub_1DB4B0AF4()
{
  result = sub_1DB3AD5F0(&unk_1F56F0080);
  qword_1EE312D90 = result;
  return result;
}

unint64_t sub_1DB4B0B20()
{
  result = qword_1EE30D960[0];
  if (!qword_1EE30D960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30D960);
  }

  return result;
}

unint64_t sub_1DB4B0BA0()
{
  result = qword_1ECC46BB8;
  if (!qword_1ECC46BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46BB8);
  }

  return result;
}

uint64_t dispatch thunk of JetPackAssetDiskCacheMetadataStore.executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DB306AF4;

  return v15(a1, a2, a3, a4, a5, a6);
}

void sub_1DB4B0E98(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1DB30BC94();
  sub_1DB50B2B0();
  if (*(a1 + 16) && (v4 = sub_1DB30EDA8(v6), (v5 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v4, v7);
    sub_1DB314BE8(v6);
    sub_1DB300B14(v7, v6);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v7);
      *a2 = &type metadata for AppleServicesPropertyScope.SigningStyleProperty;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1DB314BE8(v6);
    if (qword_1ECC420A0 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    if (v6[0] == 1)
    {
      sub_1DB3CED20("JetCore/NetRequest.swift", 24, 2, 160);
    }

    *a2 = 0;
  }
}

uint64_t sub_1DB4B0FD4(uint64_t a1, uint64_t a2, void (*a3)(const char *, uint64_t, uint64_t, uint64_t))
{
  v9 = a2;
  sub_1DB30BC94();
  sub_1DB50B2B0();
  if (!*(a1 + 16) || (v5 = sub_1DB30EDA8(v10), (v6 & 1) == 0))
  {
    sub_1DB314BE8(v10);
    if (qword_1ECC420A0 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    if (v10[0] == 1)
    {
      a3("JetCore/NetRequest.swift", 24, 2, 160);
    }

    v8 = 0;
    return v8 & 1;
  }

  sub_1DB300B14(*(a1 + 56) + 32 * v5, v11);
  sub_1DB314BE8(v10);
  sub_1DB300B14(v11, v10);
  result = swift_dynamicCast();
  if (result)
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
    v8 = v9;
    return v8 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4B110C(uint64_t a1, uint64_t a2, void (*a3)(const char *, uint64_t, uint64_t, uint64_t))
{
  sub_1DB30BC94();
  sub_1DB50B2B0();
  if (*(a1 + 16) && (v5 = sub_1DB30EDA8(v9), (v6 & 1) != 0))
  {
    sub_1DB300B14(*(a1 + 56) + 32 * v5, v10);
    sub_1DB314BE8(v9);
    sub_1DB300B14(v10, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
    result = swift_dynamicCast();
    if (result)
    {
      __swift_destroy_boxed_opaque_existential_0(v10);
      return a2;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1DB314BE8(v9);
    if (qword_1ECC420A0 != -1)
    {
      swift_once();
    }

    sub_1DB50BEB0();
    if (v9[0] == 1)
    {
      a3("JetCore/NetRequest.swift", 24, 2, 160);
    }

    return 0;
  }

  return result;
}

JetCore::AppleServicesEncoder::SigningStyle_optional __swiftcall AppleServicesEncoder.SigningStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB50B680();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppleServicesEncoder.SigningStyle.rawValue.getter()
{
  v1 = 1701736302;
  v2 = 0x656D697270;
  if (*v0 != 2)
  {
    v2 = 0x6D726F6674616C70;
  }

  if (*v0)
  {
    v1 = 0x746C7561666564;
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

uint64_t sub_1DB4B132C()
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB4B13E4(uint64_t a1)
{
  sub_1DB50A740();
}

uint64_t sub_1DB4B1488(uint64_t a1)
{
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

void sub_1DB4B1548(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE500000000000000;
  v5 = 0x656D697270;
  if (*v1 != 2)
  {
    v5 = 0x6D726F6674616C70;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x746C7561666564;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id AppleServicesEncoder.Configuration.init(bag:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  v3 = [objc_opt_self() ams_sharedAccountStore];
  *(a2 + 32) = sub_1DB4B1704();
  *(a2 + 40) = &protocol witness table for ACAccountStore;
  *(a2 + 8) = v3;
  result = [objc_opt_self() currentProcess];
  *(a2 + 48) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  return result;
}

unint64_t sub_1DB4B1704()
{
  result = qword_1ECC46BC0;
  if (!qword_1ECC46BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC46BC0);
  }

  return result;
}

uint64_t *AppleServicesEncoder.Configuration.withAccountProvider(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB4B17A0(v2, a2);

  return __swift_assign_boxed_opaque_existential_1((a2 + 8), a1);
}

void AppleServicesEncoder.Configuration.withProcess(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB4B17A0(v2, a2);

  objc_storeStrong((a2 + 48), a1);
}

uint64_t AppleServicesEncoder.Configuration.withMediaTokenService(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB4B17A0(v2, a2);
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(a2 + 56) = a1;
  return result;
}

uint64_t AppleServicesEncoder.Configuration.withProtocolHandlingEnabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1DB4B17A0(v2, a2);
  *(a2 + 64) = a1;
  return result;
}

uint64_t AppleServicesEncoder.Configuration.withAnonymityEnabled(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1DB4B17A0(v2, a2);
  *(a2 + 65) = a1;
  return result;
}

uint64_t AppleServicesEncoder.Configuration.withAllowedSchemes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB4B17A0(v2, a2);

  *(a2 + 72) = a1;
  return result;
}

__n128 AppleServicesEncoder.init(_:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  v3 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

void *AppleServicesEncoder.amsRequestEncoder(toSatisfy:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DB509EE0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DB509F00();
  v43 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB509C50();
  if (v9)
  {
    v10 = v9;
    v11 = v1[9];
    if (v11)
    {
      v12 = v8;
      if ((sub_1DB33114C(v8, v9, v11) & 1) == 0)
      {
        sub_1DB509ED0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DB50EE90;
        *(inited + 32) = sub_1DB50A650();
        *(inited + 40) = v20;
        v41 = 0;
        v42 = 0xE000000000000000;
        sub_1DB50B320();

        v41 = 0x6020656D65686353;
        v42 = 0xE800000000000000;
        MEMORY[0x1E1285C70](v12, v10);

        MEMORY[0x1E1285C70](0x726F662073692060, 0xEE006E6564646962);
        v21 = v41;
        v22 = v42;
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 48) = v21;
        *(inited + 56) = v22;
        sub_1DB3135C0(inited);
        swift_setDeallocating();
        sub_1DB30623C(inited + 32, &unk_1ECC46BD0, &qword_1DB519760);
        sub_1DB3DCB68();
        sub_1DB509B00();
        sub_1DB509EF0();
        (*(v43 + 8))(v7, v5);
        swift_willThrow();
        return v5;
      }
    }
  }

  v13 = v1[7];
  if (v13)
  {
    v14 = *v1;
    v15 = objc_allocWithZone(MEMORY[0x1E698C9C0]);
    swift_unknownObjectRetain();
    v5 = [v15 initWithTokenService:v13 bag:v14];
    [v5 setClientInfo_];
    [v5 setDisableResponseDecoding_];
    if (*(v2 + 65) & 1) != 0 || (v16 = *(a1 + *(type metadata accessor for NetRequest(0) + 44)), (sub_1DB4B0FD4(v16, &type metadata for AppleServicesPropertyScope.IsAnonymityEnabledProperty, sub_1DB3D1FFC)))
    {
      [v5 setAccount_];
    }

    else
    {
      v23 = sub_1DB4B110C(v16, &type metadata for AppleServicesPropertyScope.OverrideAccountWithIDProperty, sub_1DB3D1784);
      if (v24)
      {
        v25 = v23;
        v26 = v24;
        v27 = v2[4];
        v28 = v2[5];
        __swift_project_boxed_opaque_existential_1(v2 + 1, v27);
        (*(v28 + 16))(&v41, v25, v26, v27, v28);
      }

      else
      {
        v34 = v2[4];
        v35 = v2[5];
        __swift_project_boxed_opaque_existential_1(v2 + 1, v34);
        (*(v35 + 8))(&v41, v34, v35);
      }

      v36 = v41;
      [v5 setAccount_];
    }

    v37 = *(a1 + *(type metadata accessor for NetRequest(0) + 44));
    [v5 setExcludeIdentifierHeadersForAccount_];
    [v5 setAlwaysIncludeAuthKitHeaders_];
    [v5 setAlwaysIncludeMMeClientInfoAndDeviceHeaders_];
    sub_1DB4B110C(v37, &type metadata for AppleServicesPropertyScope.AMSGrandSlamTokenID, sub_1DB3CF598);
    if (v38)
    {
      v39 = sub_1DB50A620();
    }

    else
    {
      v39 = 0;
    }

    [v5 setGsTokenIdentifier_];

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
    [v5 setIncludeClientVersions_];
    [v5 setClientInfo_];
    [v5 setRequestEncoding_];
    [v5 setDisableResponseDecoding_];
    v17 = *(a1 + *(type metadata accessor for NetRequest(0) + 44));
    sub_1DB4B0E98(v17, &v41);
    v18 = qword_1DB5213C0[v41];
    [v5 setAnisetteType_];
    [v5 setMescalType_];
    if (*(v2 + 65) & 1) != 0 || (sub_1DB4B0FD4(v17, &type metadata for AppleServicesPropertyScope.IsAnonymityEnabledProperty, sub_1DB3D1FFC))
    {
      [v5 setAccount_];
    }

    else
    {
      v29 = v2[4];
      v30 = v2[5];
      __swift_project_boxed_opaque_existential_1(v2 + 1, v29);
      (*(v30 + 8))(&v41, v29, v30);
      v31 = v41;
      [v5 setAccount_];
    }

    sub_1DB4B110C(v17, &type metadata for AppleServicesPropertyScope.AMSGrandSlamTokenID, sub_1DB3CF598);
    if (v32)
    {
      v33 = sub_1DB50A620();
    }

    else
    {
      v33 = 0;
    }

    [v5 setGsTokenIdentifier_];
  }

  return v5;
}

uint64_t AppleServicesEncoder.encodeRequest(fromContentsOf:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1DB509860();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4B2128, 0, 0);
}

uint64_t sub_1DB4B2128()
{
  v0[16] = AppleServicesEncoder.amsRequestEncoder(toSatisfy:)(v0[11]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1DB4B2220;
  v2 = v0[15];
  v3 = v0[11];

  return URLRequestEncoder.encodeRequest(fromContentsOf:)(v2, v3);
}

uint64_t sub_1DB4B2220()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1DB4B266C;
  }

  else
  {
    v2 = sub_1DB4B2334;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB4B2334()
{
  v1 = v0[12];
  v0[19] = *(v1 + 80);
  v0[20] = *(v1 + 88);
  return MEMORY[0x1EEE6DFA0](sub_1DB4B2364, 0, 0);
}

uint64_t sub_1DB4B2364()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1DB4B2424;
  v5 = swift_continuation_init();
  sub_1DB4B26D8(v5, v3, v4, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DB4B2424(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 168) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1DB4B25DC;
  }

  else
  {
    *(v2 + 176) = *(v2 + 80);
    v4 = sub_1DB4B2548;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DB4B2548()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v5 = v0[22];

  return v4(v5);
}

uint64_t sub_1DB4B25DC()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB4B266C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DB4B26D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1DB5097F0();
  v10 = [a2 requestByEncodingRequest:v9 parameters:0];

  sub_1DB4DCF14(v10);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v16[3] = &type metadata for SyncTaskScheduler;
  v16[4] = &protocol witness table for SyncTaskScheduler;
  v14[0] = sub_1DB4B2B98;
  v14[1] = v11;
  v14[2] = sub_1DB4B2BA4;
  v14[3] = v12;
  sub_1DB30BE90(v16, v15);
  v15[40] = 0;
  sub_1DB4B2BAC(a4);

  sub_1DB30B580(v14);

  sub_1DB30623C(v14, &unk_1ECC42B40, &qword_1DB50F200);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_1DB4B2844(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (a2)
  {
    a2(*a1);
  }

  **(*(a4 + 64) + 40) = v5;
  v6 = v5;

  return swift_continuation_throwingResume();
}

uint64_t sub_1DB4B28B8(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  swift_allocError();
  *v3 = a1;
  v4 = a1;

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1DB4B2934(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DB466114;

  return AppleServicesEncoder.encodeRequest(fromContentsOf:)(a2);
}

unint64_t sub_1DB4B29D0()
{
  result = qword_1ECC46BE0;
  if (!qword_1ECC46BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46BE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7JetCore20AppleServicesEncoderV5FixUp33_0DFC7CF9731A972CF743C6FA8AAB7D04LLVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1DB4B2A84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1DB4B2ACC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB4B2B44()
{
  result = qword_1ECC46BF0;
  if (!qword_1ECC46BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46BF0);
  }

  return result;
}

uint64_t sub_1DB4B2BAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DB4B2BD4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DB509DD0();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB509E90();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v14 = (*(v12 + 24))(v13, v12);
  v15 = v14;
  if (!a3)
  {

LABEL_9:
    sub_1DB509E80();
    _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
    v20 = sub_1DB509E50();
    (*(v24 + 8))(v7, v25);
    (*(v9 + 8))(v11, v8);
    v21 = ((v20 * 0x7777777777777777) >> 64) - v20;
    v28[3] = MEMORY[0x1E69E6530];
    v28[0] = (v21 >> 5) + (v21 >> 63);
    v22 = a1[3];
    v23 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v22);
    (*(v23 + 16))(v28, 0x656E6F7A656D6974, 0xEE0074657366664FLL, v22, v23);
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  if (!*(v14 + 16))
  {
  }

  v16 = sub_1DB306160(0x707954746E657665, 0xE900000000000065);
  if ((v17 & 1) == 0)
  {
  }

  sub_1DB300B14(*(v15 + 56) + 32 * v16, v28);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v18 = sub_1DB33114C(v26, v27, a3);

  if (v18)
  {
    goto LABEL_9;
  }

  return result;
}

char *Promise.flatMap<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Promise(0, AssociatedTypeWitness, v13, v14);
  v19 = Promise.__allocating_init()(v15, v16, v17, v18);
  sub_1DB30BE90(a1, v24);
  v20 = swift_allocObject();
  v21 = *(v11 + 80);
  v20[2] = v21;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = v19;
  sub_1DB2FEA0C(v24, (v20 + 8));
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = v19;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)(sub_1DB4B546C, v20, sub_1DB4B69D0, v22, a1);

  return v19;
}

uint64_t Promise.then()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4B30B4, 0, 0);
}

uint64_t sub_1DB4B30B4()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DB4B3180;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1DB4B3EB0(v2, 0, 0, sub_1DB4B5480, v3);
}

uint64_t sub_1DB4B3180()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4092E0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

char *Promise.__allocating_init(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s7JetCore7PromiseC8resolved7toValueACyxGx_tFZ_0(a1, a2, a3, a4);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v6;
}

char *Promise.__allocating_init(error:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Promise.State(0, *(v4 + 80), a3, a4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  *(&v10 - v7) = a1;
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  return sub_1DB4B45F8(v8);
}

char *Promise.map<A>(on:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = type metadata accessor for Promise(0, a4, a3, a4);
  v13 = Promise.__allocating_init()(v9, v10, v11, v12);
  v14 = swift_allocObject();
  v15 = *(v8 + 80);
  v14[2] = v15;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)(sub_1DB4B62A8, v14, sub_1DB4B62B4, v16, a1);

  return v13;
}

char *Promise.__allocating_init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 80);
  v6 = type metadata accessor for Promise.State(0, v5, a3, a4);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v12 - v7);
  type metadata accessor for Promise.Observer(0, v5, v9, v10);
  *v8 = sub_1DB50A9D0();
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  return sub_1DB4B45F8(v8);
}

void Promise.resolve(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for Promise.State(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27[-v12 - 8];
  v14 = *(v4 + 2);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v4 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v13, &v4[v15], v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    (*(v8 + 8))(v13, v7);
    os_unfair_lock_unlock(v14 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_13;
  }

  v17 = *v13;
  (*(*(v6 - 8) + 16))(v10, a1, v6);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  (*(v8 + 40))(&v4[v15], v10, v7);
  swift_endAccess();
  os_unfair_lock_unlock(v14 + 4);
  v20 = type metadata accessor for Promise.Observer(0, v6, v18, v19);
  if (sub_1DB50AA00())
  {
    v21 = 0;
    v22 = v17 + 32;
    while (1)
    {
      v23 = sub_1DB50A9F0();
      sub_1DB50A9B0();
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = *(v20 - 8);
      (*(v24 + 16))(v27, v22, v20);
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_12;
      }

      sub_1DB4B41D8(a1, v20);
      (*(v24 + 8))(v27, v20);
      ++v21;
      v22 += 80;
      if (v25 == sub_1DB50AA00())
      {
        goto LABEL_9;
      }
    }

    sub_1DB50B380();
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_9:
}

void Promise.reject(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for Promise.State(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28[-v12 - 8];
  v14 = *(v4 + 2);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v4 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v13, &v4[v15], v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    (*(v8 + 8))(v13, v7);
    os_unfair_lock_unlock(v14 + 4);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_13;
  }

  v17 = *v13;
  *v10 = a1;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v18 = a1;
  (*(v8 + 40))(&v4[v15], v10, v7);
  swift_endAccess();
  os_unfair_lock_unlock(v14 + 4);
  v21 = type metadata accessor for Promise.Observer(0, v6, v19, v20);
  if (sub_1DB50AA00())
  {
    v22 = 0;
    v23 = v17 + 32;
    while (1)
    {
      v24 = sub_1DB50A9F0();
      sub_1DB50A9B0();
      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = *(v21 - 8);
      (*(v25 + 16))(v28, v23, v21);
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_12;
      }

      sub_1DB4B4414(a1, v21);
      (*(v25 + 8))(v28, v21);
      ++v22;
      v23 += 80;
      if (v26 == sub_1DB50AA00())
      {
        goto LABEL_9;
      }
    }

    sub_1DB50B380();
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    sub_1DB50B580();
    __break(1u);
    return;
  }

LABEL_9:
}

uint64_t Promise.then(perform:orCatchError:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  sub_1DB30BE90(a5, v12);
  v12[40] = 0;

  sub_1DB4B4E8C(v11);
  v9 = type metadata accessor for Promise.Observer(0, *(v6 + 80), v7, v8);
  return (*(*(v9 - 8) + 8))(v11, v9);
}

uint64_t Promise.always(on:perform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v3;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v3;
  swift_retain_n();
  swift_retain_n();
  Promise.then(perform:orCatchError:on:)(sub_1DB3368E8, v7, sub_1DB3368E8, v8, a1);
}

void sub_1DB4B3E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for Result(255, *(*v4 + 80), a3, a4);
  v7 = sub_1DB50B120();
  v8 = sub_1DB4B68D0;
  v9 = v4;
  sub_1DB47D0C4(sub_1DB4B68EC, v6, v5);
}

uint64_t sub_1DB4B3EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1DB50AAD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1DB4B3F44, v6, v8);
}

uint64_t sub_1DB4B3F44()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1DB4B3FEC;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DB4B3FEC(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

char *Promise.__allocating_init(on:executor:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = Promise.__allocating_init()(a1, a2, a3, a4);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v7;
  v11 = *(v9 + 8);

  v11(sub_1DB4B62F0, v10, v8, v9);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1DB4B41D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(*(v7 - 8) + 16))(v21, v8, v6);
  v9 = v21[0];
  if (v23)
  {
    (*(v4 + 16))(&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    return sub_1DB3A06CC(&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v3);
  }

  else
  {
    v11 = v21[1];

    sub_1DB2FEA0C(&v22, v18);
    v12 = v19;
    v13 = v20;
    v17 = __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v4 + 16))(&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v14 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = v3;
    *(v15 + 3) = v9;
    *(v15 + 4) = v11;
    (*(v4 + 32))(&v15[v14], &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v16 = *(v13 + 8);

    v16(sub_1DB3B90A0, v15, v12, v13);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

uint64_t sub_1DB4B4414(void *a1, uint64_t a2)
{
  v3 = v2;
  (*(*(a2 - 8) + 16))(v21, v3, a2);
  if (v23)
  {
    v6 = v21[0];
    v18[0] = a1;
    v7 = a1;
    v8 = *(a2 + 16);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    return sub_1DB3A07C4(v18, v6, v8, v9, MEMORY[0x1E69E7288]);
  }

  else
  {

    v12 = v21[2];
    v11 = v21[3];
    sub_1DB2FEA0C(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = v11;
    v15[4] = a1;
    v16 = *(v14 + 8);

    v17 = a1;
    v16(sub_1DB38B1CC, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

char *sub_1DB4B45F8(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  v5 = *(v3 + 96);
  v8 = type metadata accessor for Promise.State(0, *(v3 + 80), v6, v7);
  (*(*(v8 - 8) + 32))(&v1[v5], a1, v8);
  return v1;
}

uint64_t sub_1DB4B46B4(void (*a1)(uint64_t (*)(), uint64_t, uint64_t (*)(), uint64_t), uint64_t a2, uint64_t a3)
{
  swift_retain_n();
  a1(j___s7JetCore7PromiseC7resolve7toValueyx_tF, a3, j___s7JetCore7PromiseC7resolve7toErrorys0F0_p_tF, a3);
}

uint64_t Promise.isResolved.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DB4B6318(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DB4B479C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v4 = a1;
  v6 = *a1;
  v7 = type metadata accessor for Promise.State(0, *(*a1 + 80), a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = *(v6 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v10, v4 + v11, v7);
  LOBYTE(v4) = swift_getEnumCaseMultiPayload() != 0;
  result = (*(v8 + 8))(v10, v7);
  *a2 = v4;
  return result;
}

uint64_t sub_1DB4B48EC@<X0>(char *a1@<X0>, void *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  v8 = type metadata accessor for Promise.State(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v23 - v10);
  v12 = *(v6 + 96);
  swift_beginAccess();
  (*(v9 + 16))(v11, &a1[v12], v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    *a2 = *v11;
    v20 = type metadata accessor for Result(0, v7, v14, v15);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v9 + 8))(v11, v8);
      v18 = type metadata accessor for Result(0, v7, v16, v17);
      return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
    }

    (*(*(v7 - 8) + 32))(a2, v11, v7);
    v20 = type metadata accessor for Result(0, v7, v21, v22);
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
}

uint64_t Promise.invalidate(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for Promise.State(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-v12 - 8];
  v14 = *(v4 + 2);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v4 + 96);
  swift_beginAccess();
  (*(v8 + 16))(v13, &v4[v15], v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v17 = *v13;
    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v18 = a1;
    (*(v8 + 40))(&v4[v15], v10, v7);
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
    v21 = type metadata accessor for Promise.Observer(0, v6, v19, v20);
    if (!sub_1DB50AA00())
    {
    }

    v22 = 0;
    for (i = v17 + 32; ; i += 80)
    {
      v24 = sub_1DB50A9F0();
      sub_1DB50A9B0();
      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = *(v21 - 8);
      (*(v25 + 16))(v29, i, v21);
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_12;
      }

      sub_1DB4B4414(a1, v21);
      (*(v25 + 8))(v29, v21);
      ++v22;
      if (v26 == sub_1DB50AA00())
      {
      }
    }

    sub_1DB50B380();
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_13:
    result = sub_1DB50B580();
    __break(1u);
    return result;
  }

  os_unfair_lock_unlock(v14 + 4);
  return (*(v8 + 8))(v13, v7);
}

void sub_1DB4B4E8C(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v29 - v5;
  v9 = type metadata accessor for Promise.State(0, v3, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v29 - v14);
  v16 = *(v2 + 2);
  os_unfair_lock_lock(v16 + 4);
  v17 = *(*v2 + 96);
  swift_beginAccess();
  (*(v10 + 16))(v15, &v2[v17], v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v15;
    os_unfair_lock_unlock(v16 + 4);
    v25 = type metadata accessor for Promise.Observer(0, v3, v23, v24);
    sub_1DB4B4414(v22, v25);
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v4 + 32))(v6, v15, v3);
    os_unfair_lock_unlock(v16 + 4);
    v28 = type metadata accessor for Promise.Observer(0, v3, v26, v27);
    sub_1DB4B41D8(v6, v28);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v32 = *v15;
    v21 = type metadata accessor for Promise.Observer(0, v3, v19, v20);
    (*(*(v21 - 8) + 16))(v31, v30, v21);
    sub_1DB50AA60();
    sub_1DB50AA10();
    *v12 = v32;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v10 + 40))(&v2[v17], v12, v9);
    swift_endAccess();
    os_unfair_lock_unlock(v16 + 4);
  }
}

uint64_t sub_1DB4B51B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v7[0] = a1;
  v8 = 1;
  sub_1DB4B4E8C(v7);
  v5 = type metadata accessor for Promise.Observer(0, *(v2 + 80), v3, v4);
  return (*(*(v5 - 8) + 8))(v7, v5);
}

uint64_t sub_1DB4B5244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a4 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - v7;
  v9(v6);
  Promise.resolve(_:)(v8, v10, v11, v12);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DB4B534C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a2(a1);
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  v13[5] = a4;
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a8;
  v14[5] = a4;
  v15 = *(a8 + 16);
  swift_retain_n();
  v15(sub_1DB4B69A4, v13, sub_1DB4B69D0, v14, a5, a7, a8);
  swift_unknownObjectRelease();
}

char *Promise.join<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for Promise(0, TupleTypeMetadata2, v9, v10);
  v15 = Promise.__allocating_init()(v11, v12, v13, v14);
  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a1;
  v16[6] = v15;
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = v15;
  v19[3] = &type metadata for SyncTaskScheduler;
  v19[4] = &protocol witness table for SyncTaskScheduler;
  swift_retain_n();
  swift_unknownObjectRetain();
  Promise.then(perform:orCatchError:on:)(sub_1DB4B6334, v16, sub_1DB4B6344, v17, v19);

  __swift_destroy_boxed_opaque_existential_0(v19);
  return v15;
}